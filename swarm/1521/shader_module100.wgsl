struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: bool,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2055f;

var<private> global1: array<Struct_2, 31>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    global1 = array<Struct_2, 31>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(917f + _wgslsmith_f_op_f32(115f * _wgslsmith_f_op_f32(max(-976f, -403f))))))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(trunc(arg_1));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1201f)))), _wgslsmith_f_op_f32(sign(arg_3.x))));
    var var_1 = min(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_2.x, _wgslsmith_sub_i32(-1i, 40353i)), min(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 0i, u_input.a), vec3<i32>(55988i, -11838i, u_input.d)), reverseBits(vec3<i32>(-2147483647i, u_input.a, arg_2.x))), vec3<i32>(firstTrailingBit(31913i), arg_2.x, _wgslsmith_add_i32(-29654i, u_input.b)))));
    var_0 = _wgslsmith_f_op_f32(-arg_1);
    var_1 = 0i;
    return !select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), true), any(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, 105f < arg_0, all(vec4<bool>(true, true, false, false)), any(vec4<bool>(true, true, true, false))), vec4<bool>(false, true, true, all(vec3<bool>(false, false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)))), false);
}

fn func_2(arg_0: i32) -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-752f + -384f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(405f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1733f + -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1711f))));
    let var_0 = Struct_2(u_input.c.x, Struct_1(0u, -_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -17906i, -57662i), vec3<i32>(u_input.e, 2147483647i, 1i)) >> (~(~vec3<u32>(u_input.c.x, u_input.c.x, 20553u)) % vec3<u32>(32u)), true, _wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_0, -45538i, arg_0), -vec3<i32>(-75874i, arg_0, 0i), -vec3<i32>(arg_0, 2147483647i, -41928i)), ~(_wgslsmith_sub_vec2_i32(vec2<i32>(-11734i, 33403i), vec2<i32>(u_input.a, 0i)) & (vec2<i32>(arg_0, 25751i) << (vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u))))));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1472f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-732f)) - -852f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -285f, true)))));
    let var_1 = var_0.b;
    global0 = _wgslsmith_div_f32(2097f, 1215f);
    return select(vec4<bool>(!(!any(vec3<bool>(var_1.c, true, true))), !var_1.c, select(true, true, all(!vec4<bool>(var_0.b.c, var_1.c, true, true))), any(vec3<bool>(true, true, true))), select(func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(9203u, var_0.b, vec4<i32>(-57221i, arg_0, 2147483647i, arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-746f - 829f)), -(~vec2<i32>(var_1.b.x, 0i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 427f, -853f, -1191f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1288f, -1441f, 181f, 940f) - vec4<f32>(-1000f, 296f, 128f, 1023f)))), !vec4<bool>(all(vec3<bool>(false, true, false)), all(vec4<bool>(var_0.b.c, var_0.b.c, var_0.b.c, var_1.c)), all(vec2<bool>(false, true)), all(vec3<bool>(false, true, false))), all(vec2<bool>(select(var_0.b.c, false, var_1.c), !var_0.b.c))), var_0.b.c);
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> f32 {
    var var_0 = !select(vec4<bool>(false, true, false, true), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, false)), true, false, u_input.a == 2147483647i), true));
    var var_1 = arg_1 != -927f;
    var_0 = select(!select(vec4<bool>(any(var_0.wx), var_0.x, any(vec3<bool>(true, true, true)), true || var_0.x), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, var_0.x, false, var_0.x), false), select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), var_0.x), vec4<bool>(var_0.x, var_0.x, true, false)), var_0.x), select(vec4<bool>(var_0.x, true, (arg_1 >= -1404f) || true, true), vec4<bool>(true, var_0.x, false, any(var_0.wwy)), vec4<bool>(true, var_0.x, !(var_0.x || false), true)), !select(func_2(u_input.a & -7081i), !(!vec4<bool>(true, true, true, var_0.x)), select(false, true, !var_0.x)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1445f);
    var_0 = !func_4(_wgslsmith_f_op_f32(max(424f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(510f * arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1182f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(-arg_1))), arg_0.zy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, -644f, arg_1, -1011f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1719f, arg_1, -804f, arg_1))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -1000f, arg_1) - vec4<f32>(-612f, arg_1, arg_1, -183f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f) * arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 31>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1244f)) + _wgslsmith_f_op_f32(func_1(vec3<i32>(43296i, -1i, -11466i), 323f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2031f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-276f)) * 702f))));
    var var_0 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, u_input.c.x, u_input.c.x), 123563u, u_input.c.x), ~(~(~countOneBits(vec3<i32>(1i, 11467i, -51428i)))), true, firstTrailingBit(vec3<i32>(-_wgslsmith_div_i32(u_input.a, -1i), abs(min(-49702i, u_input.e)), abs(firstLeadingBit(u_input.e)))), firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-13759i, u_input.a, u_input.d)), vec3<i32>(u_input.a, u_input.d, u_input.e)), ~(u_input.b ^ -2147483647i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1174f, 791f, 241f, 1736f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-763f, 464f, -1000f, -630f)))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(781f)), 181f, -780f, _wgslsmith_f_op_f32(636f + -446f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    global0 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(-1020f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x * 919f)))), 1354f, 726f), _wgslsmith_mult_vec3_u32(u_input.c, abs(select(u_input.c, vec3<u32>(12353u, var_0.a, var_0.a), false))) & _wgslsmith_mult_vec3_u32(u_input.c, _wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(4294967295u, 4294967295u, 1u)) << ((vec3<u32>(var_0.a, u_input.c.x, 40719u) << (u_input.c % vec3<u32>(32u))) % vec3<u32>(32u))));
}

