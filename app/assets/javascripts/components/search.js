<Autocomplete
  getItemValue={(item) => item.label}
  items={[
    { label: 'apple' },
    { label: 'banana' },
    { label: 'pear' }
  ]}
  renderItem={(item, isHighlighted) =>
    <div style={{ background: isHighlighted ? 'lightgray' : 'white' }}>
      {item.label}
    </div>
  }
  value={value}
  onChange={(e) => value = e.target.value}
  onSelect={(val) => value = val}
/>
