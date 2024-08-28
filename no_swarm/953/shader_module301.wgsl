struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-575f, -512f, -191f, -884f), vec4<f32>(-299f, 2103f, 503f, -1080f), vec4<f32>(-1383f, -2331f, 1281f, -679f), vec4<f32>(650f, 768f, 477f, 733f), vec4<f32>(1000f, 161f, 1687f, 650f), vec4<f32>(-912f, 2244f, 453f, 1000f), vec4<f32>(-100f, -1559f, -1740f, 1000f));

var<private> global1: array<vec3<bool>, 31>;

var<private> global2: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(-615f, -839f, 705f, 314f), vec4<f32>(-547f, -157f, -1000f, -173f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> vec3<bool> {
    return !vec3<bool>(all(vec3<bool>(true, true, arg_0.a.e.x)), arg_1, true == !(arg_3.c < arg_3.c));
}

fn func_2() -> bool {
    global2 = array<vec4<f32>, 2>();
    let var_0 = Struct_2(Struct_1(u_input.b.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1007f + -1069f) - _wgslsmith_f_op_f32(select(2349f, 329f, true)))), vec4<i32>(firstTrailingBit(8468i), ~(u_input.a.x << (1u % 32u)), min(u_input.a.x, -23584i), (i32(-1i) * -21533i) | max(u_input.a.x, 20325i)), select(func_3(Struct_2(Struct_1(0u, false, 1414f, vec4<i32>(1i, 26211i, 48970i, u_input.a.x), vec3<bool>(false, true, true))), true, 43773i, Struct_1(u_input.b.x, false, 907f, vec4<i32>(u_input.a.x, u_input.a.x, 42071i, -89234i), vec3<bool>(false, false, true))), select(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], select(global1[_wgslsmith_index_u32(1u, 31u)], vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(u_input.b.x, 31u)]), any(vec2<bool>(true, true))), vec3<bool>(true, true, true))));
    global2 = array<vec4<f32>, 2>();
    global2 = array<vec4<f32>, 2>();
    var var_1 = var_0.a.b;
    return any(!func_3(Struct_2(Struct_1(1u, false, var_0.a.c, var_0.a.d, vec3<bool>(false, true, true))), true, _wgslsmith_div_i32(var_0.a.d.x, u_input.a.x), Struct_1(51401u, true, -167f, vec4<i32>(var_0.a.d.x, 3233i, u_input.a.x, u_input.a.x), var_0.a.e))) && any(vec4<bool>(true, all(vec2<bool>(var_0.a.e.x, true)), any(vec2<bool>(true, true)), var_0.a.e.x));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_u32(4294967295u, u_input.b.x >> ((u_input.b.x << (u_input.b.x % 32u)) % 32u)), false, _wgslsmith_f_op_f32(select(-1012f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1087f)), func_2())), -vec4<i32>(0i, 36358i, 1i, u_input.a.x) | countOneBits(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i))), vec3<bool>(true, any(vec4<bool>(false, true, true, true)), all(global1[_wgslsmith_index_u32(u_input.b.x, 31u)]))));
    let var_1 = var_0.a.d.wwx;
    var var_2 = _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(~(~0u), 2u)] * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(var_0.a.a, 2u)])))) - vec4<f32>(2805f, _wgslsmith_f_op_f32(sign(var_0.a.c)), _wgslsmith_f_op_f32(-var_0.a.c), _wgslsmith_f_op_f32(f32(-1f) * -759f))));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1620f, -1113f, 715f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.c, var_0.a.c, var_0.a.c, var_0.a.c))), all(select(vec2<bool>(var_0.a.b, false), vec2<bool>(true, var_0.a.b), var_0.a.e.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, 302f, 1000f, 371f)))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-899f * var_2.x), _wgslsmith_f_op_f32(ceil(-885f))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-var_0.a.c))), var_0.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), -968f))))));
    var var_4 = -424f;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(~12641u, true, 1209f, vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(u_input.a.xy), abs(u_input.a.xy)), 2147483647i, ~max(u_input.a.x, 4917i), 1i), select(vec3<bool>(true, true, all(vec4<bool>(true, false, false, true))), !(!global1[_wgslsmith_index_u32(163u, 31u)]), vec3<bool>(select(true, true, true), true, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -687f) + var_0.a.c)), 233f, _wgslsmith_f_op_f32(-var_0.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.c, _wgslsmith_f_op_f32(trunc(-1246f))))))));
    let var_2 = true;
    let var_3 = !var_0.a.e.yz;
    var_0 = Struct_2(func_1());
    var var_4 = func_3(Struct_2(func_1()), all(!(!vec3<bool>(var_2, var_3.x, var_0.a.b))) || !(var_1.x >= var_0.a.c), 42448i, func_1()).x;
    let var_5 = Struct_1(_wgslsmith_mod_u32(~(var_0.a.a >> (u_input.b.x % 32u)) | var_0.a.a, u_input.b.x), !var_3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(698f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(487f + -1620f)))))), vec4<i32>(var_0.a.d.x, 1i, u_input.a.x, u_input.a.x), func_1().e);
    var var_6 = var_0.a;
    let var_7 = ~vec3<u32>(4294967295u, var_6.a, ~48354u);
    let x = u_input.a;
    s_output = StorageBuffer(-2103i, 21134u, ~0u, u_input.a.x, ~20322u);
}

