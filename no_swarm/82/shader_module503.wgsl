struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false));

var<private> global1: array<Struct_1, 13>;

var<private> global2: f32 = -918f;

var<private> global3: f32 = 1044f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> u32 {
    return _wgslsmith_div_u32(u_input.d, 1143u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_div_f32(705f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1864f)));
    let var_0 = global1[_wgslsmith_index_u32(1u, 13u)];
    let var_1 = -(u_input.e.x & -2147483647i) | 1278i;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~func_1(), _wgslsmith_mult_u32(u_input.d, u_input.d), firstLeadingBit(10378u), u_input.d));
}

