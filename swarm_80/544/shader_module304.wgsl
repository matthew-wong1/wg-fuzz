struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 9>;

var<private> global1: array<i32, 8> = array<i32, 8>(2147483647i, 0i, i32(-2147483648), 1i, -61173i, 18888i, 10533i, 34902i);

var<private> global2: array<Struct_2, 17>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> StorageBuffer {
    global0 = array<vec3<u32>, 9>();
    let var_0 = firstLeadingBit(vec4<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.a, select(u_input.a, ~4716u, true), _wgslsmith_div_u32(u_input.a | 34745u, select(5275u, 657u, true))), _wgslsmith_add_u32(0u, ~u_input.a), ~0u));
    global1 = array<i32, 8>();
    global1 = array<i32, 8>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(136f, 1f)));
    return StorageBuffer(-1264f, var_0, vec2<i32>(_wgslsmith_mod_i32(~(~global1[_wgslsmith_index_u32(var_0.x, 8u)]), -14968i << ((u_input.a ^ 0u) % 32u)), ~_wgslsmith_clamp_i32(u_input.b, global1[_wgslsmith_index_u32(var_0.x, 8u)] | u_input.b, -2147483647i)));
}

fn func_1() -> StorageBuffer {
    global2 = array<Struct_2, 17>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 8>();
    global1 = array<i32, 8>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let x = u_input.a;
    s_output = func_1();
}

