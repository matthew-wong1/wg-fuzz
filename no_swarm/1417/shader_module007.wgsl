struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 17>;

var<private> global1: array<bool, 4>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> f32 {
    var var_0 = Struct_3(Struct_1(vec2<i32>(_wgslsmith_add_i32(-2147483647i, u_input.e.x), max(-2147483647i | u_input.e.x, -15498i)), select(1i, ~u_input.e.x, !global1[_wgslsmith_index_u32(arg_0.x, 4u)]), -1000f));
    return -1073f;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global1 = array<bool, 4>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.b.wzw, -1i)), -179f)))));
    let var_1 = Struct_4(-19589i, !select(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 4u)], false, global1[_wgslsmith_index_u32(u_input.a, 4u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], false, false, global1[_wgslsmith_index_u32(u_input.a, 4u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], false)), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 4u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(u_input.c.x, 4u)], true, global1[_wgslsmith_index_u32(u_input.d.x, 4u)]), false), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], false, false, false), vec4<bool>(true, global1[_wgslsmith_index_u32(60189u, 4u)], false, true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(1u, 4u)])), !vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(1u, 4u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], global1[_wgslsmith_index_u32(62599u, 4u)], true, false), !vec4<bool>(false, false, global1[_wgslsmith_index_u32(92559u, 4u)], global1[_wgslsmith_index_u32(u_input.d.x, 4u)]), !vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(u_input.b.x, 4u)]))));
    let var_2 = 4294967295u;
    var var_3 = -818f;
    return Struct_1(u_input.e.yz, _wgslsmith_div_i32(~firstLeadingBit(u_input.e.x), _wgslsmith_dot_vec2_i32(u_input.e.xw, select(firstLeadingBit(u_input.e.zz), -vec2<i32>(var_1.a, u_input.e.x), var_1.b.zy))), _wgslsmith_f_op_f32(-1f));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(func_1(-_wgslsmith_dot_vec2_i32(~u_input.e.zw, u_input.e.yw)));
    let var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 17u)];
    let var_2 = ~u_input.b.x;
    var_0 = Struct_2(var_0.a);
    var var_3 = _wgslsmith_mult_u32(~(~u_input.d.x), countOneBits(~(~u_input.d.x)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(_wgslsmith_mod_i32(min(0i, _wgslsmith_dot_vec3_i32(u_input.e.wwz, u_input.e.zyy)), -2147483647i)));
    var_0 = Struct_2(var_0.a);
    global1 = array<bool, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c))))), ~(~u_input.c.xyx), u_input.c.x);
}

