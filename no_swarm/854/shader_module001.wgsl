struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 12> = array<f32, 12>(-344f, 596f, -1181f, 166f, 1198f, 305f, 1214f, 205f, -381f, 1029f, -226f, 1222f);

var<private> global2: array<Struct_1, 21>;

var<private> global3: array<Struct_1, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> StorageBuffer {
    global3 = array<Struct_1, 8>();
    let var_0 = -_wgslsmith_sub_i32(u_input.b, _wgslsmith_mult_i32(global0.a, u_input.b));
    global3 = array<Struct_1, 8>();
    let var_1 = ~reverseBits(firstLeadingBit(34123i) >> (u_input.a.x % 32u));
    global2 = array<Struct_1, 21>();
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(ceil(-602f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(763f * 1000f) + _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.d.x, 12u)]))))), u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-903f, -936f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-959f, global0.d), 135f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)] - 502f))) - vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(min(global0.c.x, u_input.a.x), 12u)]), global0.b.x, global0.b.x)), min(0u, 16330u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-19438i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(global0.b)))), vec2<u32>(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(4294967295u, 1u, global0.c.x, global0.c.x), u_input.a), vec4<u32>(_wgslsmith_mod_u32(49698u, global0.c.x), global0.c.x, global0.c.x, global0.c.x >> (u_input.d.x % 32u))), 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + global0.b.x)) - _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(4294967295u, 12u)]))), global1[_wgslsmith_index_u32(1u, 12u)]), select(global1[_wgslsmith_index_u32(abs(~21334u), 12u)] == -862f, u_input.b <= 0i, global0.e));
    let var_0 = Struct_1(14746i, global0.b, vec2<u32>(1u, 1u ^ _wgslsmith_mod_u32(select(u_input.a.x, u_input.d.x, global0.e), 26360u)), global1[_wgslsmith_index_u32(global0.c.x, 12u)], 891f != global0.d);
    var var_1 = Struct_1(-(~(-8695i)), _wgslsmith_f_op_vec2_f32(-var_0.b), ~u_input.d, global1[_wgslsmith_index_u32(min(~((global0.c.x << (var_0.c.x % 32u)) ^ 1u), _wgslsmith_mod_u32(global0.c.x, ~_wgslsmith_div_u32(var_0.c.x, 0u))), 12u)], 103111u >= u_input.a.x);
    global3 = array<Struct_1, 8>();
    let var_2 = global0.e;
    let x = u_input.a;
    s_output = func_1();
}

