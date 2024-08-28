struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(-814f, -1283f), vec2<f32>(944f, -1284f), vec2<f32>(716f, -353f), vec2<f32>(702f, 1445f), vec2<f32>(440f, 321f), vec2<f32>(-781f, 166f), vec2<f32>(-1000f, -1000f), vec2<f32>(-242f, -1059f), vec2<f32>(-1410f, -170f), vec2<f32>(-1417f, 2253f), vec2<f32>(-1026f, 1417f), vec2<f32>(-518f, 766f), vec2<f32>(659f, 560f), vec2<f32>(-592f, 638f), vec2<f32>(822f, 1018f), vec2<f32>(804f, -818f), vec2<f32>(-509f, -341f), vec2<f32>(-113f, 779f), vec2<f32>(-1043f, 226f), vec2<f32>(1496f, -690f), vec2<f32>(-532f, -1044f), vec2<f32>(1000f, -931f), vec2<f32>(-933f, -367f), vec2<f32>(1265f, -429f), vec2<f32>(1000f, 638f), vec2<f32>(358f, -1523f));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<bool> {
    global0 = array<vec2<f32>, 26>();
    global0 = array<vec2<f32>, 26>();
    var var_0 = all(vec3<bool>(true, !all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, any(vec4<bool>(true, false, true, true)), true))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(724f * 2522f), _wgslsmith_f_op_f32(f32(-1f) * -1929f))) * _wgslsmith_f_op_f32(abs(-656f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1635f * 689f), -364f))), all(vec2<bool>(any(vec3<bool>(true, true, true)), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1468f - -795f)), _wgslsmith_f_op_f32(-933f - -2808f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-546f + _wgslsmith_f_op_f32(floor(-530f)))), -1554f)));
    var var_2 = Struct_2(_wgslsmith_add_vec2_i32(-(~abs(vec2<i32>(1i, u_input.a))), abs(firstLeadingBit(vec2<i32>(-52157i, u_input.a))) & -vec2<i32>(-1i, u_input.a)), -850f, Struct_1(vec3<bool>(true, true, true)));
    return select(var_2.c.a, vec3<bool>(true, var_2.c.a.x, false), any(vec3<bool>(select(var_2.c.a.x, all(vec4<bool>(var_2.c.a.x, var_2.c.a.x, false, true)), var_2.c.a.x), any(select(vec3<bool>(false, false, var_2.c.a.x), var_2.c.a, vec3<bool>(var_2.c.a.x, true, false))), !(!var_2.c.a.x))));
}

fn func_2(arg_0: bool, arg_1: bool) -> vec2<bool> {
    let var_0 = vec2<bool>(all(select(vec4<bool>(any(vec2<bool>(arg_1, false)), false, all(vec4<bool>(arg_1, true, true, false)), true), !vec4<bool>(arg_1, arg_0, false, arg_0), arg_0)), all(func_3()));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -393f);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(var_1 * var_1));
    var_2 = Struct_3(var_2.a);
    let var_3 = Struct_3(-241f);
    return !(!(!(!var_0)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global0 = array<vec2<f32>, 26>();
    let var_0 = !all(vec4<bool>(all(vec4<bool>(true, true, true, true)), false, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), false));
    global0 = array<vec2<f32>, 26>();
    let var_1 = ~vec3<i32>(21304i, _wgslsmith_div_i32(-arg_0.x >> (1u % 32u), 0i), u_input.a);
    var var_2 = func_2(true, true & var_0);
    return Struct_1(!vec3<bool>(func_3().x && (u_input.a == var_1.x), true, all(func_2(false, var_2.x))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -1266f, -728f, 2315f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-916f, arg_0.b, 1643f, 957f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(284f, -390f, arg_0.b, -1409f) + vec4<f32>(-453f, arg_0.b, -1953f, arg_0.b)))))));
    let var_1 = select(vec3<i32>(-41529i, min(_wgslsmith_mult_i32(u_input.a, arg_0.a.x) << (43203u % 32u), ~(-44208i)), 1i), -(-vec3<i32>(u_input.a, arg_0.a.x, arg_0.a.x) & vec3<i32>(21982i, 27678i, _wgslsmith_div_i32(16635i, -24320i))), arg_0.c.a.x);
    let var_2 = firstLeadingBit(~(countOneBits(countOneBits(vec4<i32>(arg_0.a.x, arg_0.a.x, 5033i, u_input.a))) | max(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, u_input.a, 43593i, var_1.x), vec4<i32>(30001i, 2147483647i, arg_0.a.x, var_1.x)), ~vec4<i32>(24760i, 0i, arg_0.a.x, -2147483647i))));
    global0 = array<vec2<f32>, 26>();
    let var_3 = !(!(!arg_1.a.zz));
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-704f, _wgslsmith_f_op_f32(floor(arg_0.b))))), _wgslsmith_f_op_f32(ceil(113f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-524f, -114f))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3) -> f32 {
    global0 = array<vec2<f32>, 26>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 66814u), vec2<u32>(1u, 1u)), 26u)])) + vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a, arg_0.x))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0), arg_0))));
    let var_1 = -countOneBits(min(~vec4<i32>(2147483647i, u_input.a, u_input.a, 1i), vec4<i32>(-1i, abs(1i), u_input.a, u_input.a)));
    let var_2 = ~_wgslsmith_add_u32(0u, select(abs(20334u), 1u, all(vec2<bool>(false, false))) >> (0u % 32u));
    var var_3 = _wgslsmith_f_op_f32(select(var_0.x, 469f, false));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -962f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(~vec2<i32>(u_input.a, -1i), _wgslsmith_f_op_f32(trunc(173f)), func_1(vec2<i32>(u_input.a, -1i))), Struct_1(func_3()))))), Struct_3(_wgslsmith_f_op_f32(428f * -609f))));
    let var_1 = reverseBits(firstTrailingBit(_wgslsmith_div_u32(~_wgslsmith_div_u32(4294967295u, 40290u), 1u)));
    var var_2 = func_1(~vec2<i32>(i32(-1i) * -u_input.a, 12245i | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))));
    global0 = array<vec2<f32>, 26>();
    var var_3 = -u_input.a;
    var_0 = 1985f;
    var var_4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1373f * -786f)), -1122f) * -952f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_4.a))), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-747f, var_4.a), global0[_wgslsmith_index_u32(4294967295u, 26u)])), Struct_3(var_4.a))), var_4.a))), ~(-countOneBits(-u_input.a)));
}

