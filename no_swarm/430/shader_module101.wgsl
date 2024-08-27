struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: array<vec3<i32>, 16>;

var<private> global2: bool;

var<private> global3: array<vec2<bool>, 31>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    var var_0 = -(~(30858i | firstTrailingBit(u_input.d)));
    global2 = global0[_wgslsmith_index_u32(4294967295u, 9u)];
    global2 = global0[_wgslsmith_index_u32(u_input.b.x, 9u)];
    let var_1 = vec2<i32>(u_input.d, ~0i);
    global0 = array<bool, 9>();
    return reverseBits(1i) ^ _wgslsmith_mult_i32(var_1.x, ~_wgslsmith_add_i32(select(u_input.d, -4330i, true), var_1.x));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    global2 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1199f, -1050f) + _wgslsmith_f_op_vec2_f32(trunc(arg_0.b.xz))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x) - _wgslsmith_f_op_vec2_f32(arg_0.b.yz - var_0.b.wz)))));
    global3 = array<vec2<bool>, 31>();
    let var_2 = func_3();
    return _wgslsmith_f_op_f32(arg_0.b.x + 1397f);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = firstTrailingBit(firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(u_input.d, -u_input.d), u_input.d)));
    let var_1 = Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2, -658f, -1198f, -1442f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, _wgslsmith_f_op_f32(300f * -2587f), 1356f, -1044f)))));
    var var_2 = Struct_1((77914u >> (~u_input.a % 32u)) & _wgslsmith_sub_u32(67698u, arg_0), vec4<f32>(-1091f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(962f * 1000f)))), var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2 - var_1.b.x))))));
    var var_3 = var_1;
    return Struct_1(0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(arg_2 - var_3.b.x), _wgslsmith_f_op_f32(-352f + var_3.b.x), 1998f, _wgslsmith_div_f32(-1557f, -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) + _wgslsmith_f_op_vec4_f32(var_1.b - vec4<f32>(var_2.b.x, var_1.b.x, var_1.b.x, var_1.b.x))), vec4<bool>(true, true, false, any(global3[_wgslsmith_index_u32(var_2.a, 31u)]))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    return Struct_1(arg_0.a | ~_wgslsmith_mod_u32(u_input.a >> (12510u % 32u), ~arg_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_1.b, vec4<f32>(arg_0.b.x, 663f, arg_1.b.x, arg_0.b.x), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.a, 9u)], false, false))), arg_0.b), vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(arg_1.b.x + -642f), arg_1.b.x), !select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(arg_0.a, 9u)], global0[_wgslsmith_index_u32(67165u, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a, 9u)], false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], true, false, true))))));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = func_5(func_4(firstLeadingBit(u_input.b.x), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(1u, vec4<f32>(-370f, -410f, -1280f, -205f)))) * _wgslsmith_f_op_f32(f32(-1f) * -472f)))), func_4(u_input.c, (~4294967295u & u_input.c) >= _wgslsmith_sub_u32(~u_input.c, abs(8355u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1004f)) - -1274f) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, -1199f), _wgslsmith_div_f32(-330f, 1533f))))));
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    var var_1 = Struct_1(abs(abs(~var_0.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(func_4(~0u, global0[_wgslsmith_index_u32(var_0.a, 9u)], var_0.b.x).b, func_4(~var_0.a, !global0[_wgslsmith_index_u32(31289u, 9u)], _wgslsmith_div_f32(var_0.b.x, 330f)).b)), _wgslsmith_f_op_vec4_f32(round(var_0.b)), vec4<bool>(global0[_wgslsmith_index_u32(1u, 9u)] && all(vec4<bool>(global0[_wgslsmith_index_u32(34236u, 9u)], false, true, global0[_wgslsmith_index_u32(var_0.a, 9u)])), true, true, true))));
    var_1 = func_5(var_0, Struct_1(0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, var_1.b.x, -1911f, -649f), var_1.b, vec4<bool>(true, false, false, arg_0)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(false | all(vec3<bool>(false, global0[_wgslsmith_index_u32(~u_input.a, 9u)], global0[_wgslsmith_index_u32(1u, 9u)])));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-878f + 532f) * _wgslsmith_f_op_f32(select(502f, 1813f, var_0)))), 204f));
    var var_2 = firstLeadingBit(~u_input.b);
    global2 = false;
    var_1 = 950f;
    global2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_0), _wgslsmith_dot_vec4_i32(min(vec4<i32>(-2147483647i, u_input.d, 1i, u_input.d), ~vec4<i32>(-1i, -1i, 2147483647i, -2147483647i)) >> (_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(var_2.x, 470u, u_input.b.x, 26206u)), select(vec4<u32>(u_input.a, var_2.x, u_input.a, 0u), vec4<u32>(u_input.b.x, 1u, 0u, 31006u), var_0)) % vec4<u32>(32u)), vec4<i32>(-28662i, -2147483647i, i32(-1i) * -u_input.d, func_3())));
}

