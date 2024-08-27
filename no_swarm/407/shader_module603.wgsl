struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 17> = array<f32, 17>(-2030f, -1196f, -260f, 1042f, 2049f, 260f, 1326f, -1000f, 826f, 1000f, 2071f, -293f, -2163f, 1041f, 1578f, 178f, 1253f);

var<private> global2: array<Struct_1, 25>;

var<private> global3: vec2<bool>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> f32 {
    let var_0 = min(_wgslsmith_add_vec3_u32(vec3<u32>(select(_wgslsmith_sub_u32(0u, u_input.c), 40934u, false), 32978u, u_input.a.x), abs(u_input.a.yww)), u_input.a.yww);
    global1 = array<f32, 17>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-485f, _wgslsmith_f_op_f32(-122f + -450f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.x;
    let var_1 = abs(_wgslsmith_div_vec3_u32((vec3<u32>(1u, u_input.c, 37976u) >> (u_input.a.wwx % vec3<u32>(32u))) & max(vec3<u32>(0u, 55009u, 19508u), u_input.a.zxz), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.b | 1u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~1u, 17u)])))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1080f)), _wgslsmith_f_op_f32(floor(-108f)))));
    let var_3 = u_input.d.zw;
    global2 = array<Struct_1, 25>();
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_2(vec2<u32>(25064u, var_1.x), u_input.a.x, select(vec4<bool>(false, true, global3.x, global3.x), vec4<bool>(false, global3.x, true, global0.x), global3.x)), -firstLeadingBit(-1i))))), 16861u);
}

