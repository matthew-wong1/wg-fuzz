struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(2735u, 62054u, 21218u, 0u, 60023u, 2683u, 42226u, 23176u, 27099u, 46413u, 1u, 1u, 0u, 4294967295u, 25104u, 55806u, 37998u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(~0u, _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(~44587u, 18889u, select(u_input.d, u_input.d, true)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.b.x | u_input.b.x, 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(112146u, 17u)], select(global0[_wgslsmith_index_u32(0u, 17u)], 1u, false)), 17u)], 17u)]), 17u)]));
    global0 = array<u32, 17>();
    var_0 = _wgslsmith_mult_u32(u_input.d, global0[_wgslsmith_index_u32(4294967295u, 17u)]);
    var_0 = _wgslsmith_sub_u32(0u, firstTrailingBit(~countOneBits(~1u)));
    global0 = array<u32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(51137u, 1u), 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-408f, 2019f))))), -1000f, 1f);
}

