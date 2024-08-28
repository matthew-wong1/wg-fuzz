struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1 = Struct_1(-1i, false, -1951f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(1i, false, _wgslsmith_f_op_f32(abs(-1104f)));
    let var_1 = Struct_1(1929i, true, _wgslsmith_f_op_f32(-var_0.c));
    global1 = var_1;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global1.c, -490f)), _wgslsmith_f_op_f32(step(539f, -1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1576f))));
    var var_3 = Struct_1(-2147483647i, true, var_1.c);
    return ~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(max(~vec2<u32>(30841u, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, 48035u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(1u, 0u))), max(36133u, u_input.a)));
}

fn func_2() -> vec3<f32> {
    let var_0 = func_3();
    global1 = Struct_1(2147483647i & global1.a, all(vec2<bool>(_wgslsmith_f_op_f32(global1.c - global1.c) != global1.c, 4294967295u > _wgslsmith_add_u32(u_input.a, 1u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + 1055f)))))));
    global1 = Struct_1(_wgslsmith_mult_i32(u_input.b, 52584i), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(round(global1.c)))));
    let var_1 = Struct_1(~select(-12414i ^ global1.a, u_input.b, true), true, global1.c);
    global1 = Struct_1(reverseBits((1i | _wgslsmith_add_i32(global1.a, -24907i)) << (~(~4294967295u) % 32u)), true != any(!(!vec4<bool>(false, true, false, var_1.b))), -1428f);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1124f, 111f) * vec3<f32>(global1.c, -997f, global1.c)), _wgslsmith_div_vec3_f32(vec3<f32>(-256f, var_1.c, global1.c), vec3<f32>(var_1.c, global1.c, 695f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-498f, 180f, global1.c)), vec3<f32>(-1507f, global1.c, var_1.c))))));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = vec4<i32>(global1.a, countOneBits(1i), reverseBits(22172i), ~2147483647i);
    global0 = global1.b;
    global0 = true;
    global1 = Struct_1(u_input.d, all(!vec3<bool>(arg_2, global1.b, global1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) - _wgslsmith_f_op_f32(-822f - arg_0)), true)) - -1781f));
    var var_1 = u_input.a;
    return Struct_1(_wgslsmith_add_i32(-var_0.x, min(var_0.x ^ (2147483647i << (u_input.a % 32u)), -37296i)), firstLeadingBit(41742i) == var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-193f, arg_1.x))))));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = func_4(994f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, global1.c, global1.c) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-239f, global1.c, -646f)))), _wgslsmith_f_op_vec3_f32(func_2()))))), all(select(!vec3<bool>(true, true, global1.b), vec3<bool>(global1.b, false, !global1.b), global1.b)));
    var var_1 = ~_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, u_input.a), max(u_input.a ^ 1u, ~u_input.a) ^ u_input.a);
    var_0 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~(~vec2<i32>(var_0.a, global1.a)), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, 56110i), vec2<i32>(global1.a, -69278i)), vec2<i32>(var_0.a, arg_0) & vec2<i32>(arg_0, u_input.b))), -(~vec2<i32>(-1i, global1.a) | abs(vec2<i32>(-40289i, global1.a)))), global1.a <= abs(arg_0), _wgslsmith_f_op_f32(-global1.c));
    var var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1328f))), vec3<f32>(global1.c, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1506f)) + global1.c)), !(false | select(any(vec2<bool>(false, global1.b)), true, true))).b;
    var_1 = 64334u;
    return select(vec4<bool>(true, any(!(!vec2<bool>(global1.b, false))), any(select(select(vec3<bool>(var_0.b, false, true), vec3<bool>(var_0.b, false, var_0.b), global1.b), select(vec3<bool>(global1.b, true, global1.b), vec3<bool>(global1.b, true, global1.b), vec3<bool>(var_0.b, false, true)), !vec3<bool>(global1.b, global1.b, false))), _wgslsmith_f_op_f32(func_4(var_0.c, vec3<f32>(global1.c, global1.c, global1.c), true).c - -477f) >= _wgslsmith_f_op_f32(719f * _wgslsmith_f_op_f32(sign(-961f)))), !select(vec4<bool>(!var_0.b, false, !global1.b, global1.b), select(select(vec4<bool>(var_0.b, var_0.b, global1.b, false), vec4<bool>(var_0.b, var_0.b, true, false), var_0.b), select(vec4<bool>(var_0.b, var_0.b, false, global1.b), vec4<bool>(true, false, true, true), var_0.b), !global1.b), !(!vec4<bool>(false, var_0.b, true, var_0.b))), !vec4<bool>(false, !(!var_0.b), var_0.b, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(335f)))), 1095f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-286f)))))));
    var var_1 = Struct_1(~2645i, any(select(func_1(2147483647i), !vec4<bool>(false, true, global1.b, global1.b), false)) || global1.b, -169f);
    global1 = Struct_1(2147483647i, select(any(vec3<bool>(false, true, !global1.b)), true, true), 478f);
    let var_2 = global1.c;
    var_1 = func_4(_wgslsmith_div_f32(559f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.x, 640f)), _wgslsmith_f_op_f32(-1000f + -387f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1816f * -1951f) + var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(f32(-1f) * -826f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -251f) - 1f)), global1.c, var_0.x), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 24381u) | vec2<u32>(u_input.a, 1u), reverseBits(vec2<u32>(u_input.a, 1u))) | func_3());
}

