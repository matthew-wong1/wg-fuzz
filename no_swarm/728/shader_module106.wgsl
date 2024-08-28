struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(3091u, 75397u, 4294967295u), vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 0u, 0u), vec3<u32>(16144u, 66226u, 7808u), vec3<u32>(4294967295u, 15553u, 7734u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 1u, 69706u), vec3<u32>(1u, 0u, 29416u), vec3<u32>(103733u, 30115u, 615u), vec3<u32>(18992u, 1u, 57002u), vec3<u32>(15288u, 4294967295u, 327u), vec3<u32>(1u, 59965u, 858u), vec3<u32>(7631u, 18361u, 5169u), vec3<u32>(4294967295u, 16195u, 19018u), vec3<u32>(4294967295u, 1u, 30940u), vec3<u32>(13595u, 82381u, 52609u), vec3<u32>(4294967295u, 4294967295u, 56418u), vec3<u32>(11000u, 76803u, 51207u), vec3<u32>(4294967295u, 46071u, 0u), vec3<u32>(43424u, 13349u, 4294967295u), vec3<u32>(1u, 71608u, 4294967295u), vec3<u32>(87940u, 0u, 1u), vec3<u32>(4653u, 4294967295u, 10944u), vec3<u32>(0u, 12505u, 2294u), vec3<u32>(1u, 1u, 0u), vec3<u32>(59741u, 4294967295u, 0u), vec3<u32>(4294967295u, 49168u, 4294967295u), vec3<u32>(0u, 4294967295u, 49935u), vec3<u32>(0u, 4294967295u, 4294967295u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_1(select(vec3<bool>(true, true, true), !vec3<bool>(false, any(vec4<bool>(true, false, true, false)), any(vec3<bool>(true, true, false))), true), 4294967295u, _wgslsmith_add_vec3_i32(vec3<i32>(~1i, firstLeadingBit(u_input.a), arg_0), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a, arg_0, 3422i), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, arg_0, -2147483647i), vec3<i32>(u_input.a, 12937i, arg_0))) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, 1u), global0[_wgslsmith_index_u32(0u, 29u)]), vec3<u32>(4294967295u, 1u, 4294967295u)) % vec3<u32>(32u))), 1u, true);
    var var_1 = Struct_2(Struct_1(!var_0.a, firstLeadingBit(var_0.d), firstTrailingBit(var_0.c), _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(~41758u, 0u, 16485u)), select(false || var_0.a.x, var_0.e, true)), Struct_1(!select(select(vec3<bool>(false, false, true), var_0.a, false), var_0.a, true), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, var_0.d, 32579u, 4294967295u) | ~vec4<u32>(1u, var_0.d, var_0.d, 4294967295u), vec4<u32>(61418u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, 4294967295u), vec2<u32>(91251u, var_0.b)), abs(30609u), 1u)), _wgslsmith_mult_vec3_i32(min(vec3<i32>(arg_0, arg_0, var_0.c.x), var_0.c), firstLeadingBit(_wgslsmith_div_vec3_i32(var_0.c, vec3<i32>(1429i, -5889i, 4785i)))), 1u, 1u <= ~(~var_0.b)), Struct_1(vec3<bool>(true, any(vec3<bool>(false, true, var_0.e)), var_0.e != false), firstLeadingBit(4294967295u), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(7256i, 0i, u_input.a), ~vec3<i32>(u_input.a, var_0.c.x, var_0.c.x)), firstTrailingBit(-var_0.c)), ~_wgslsmith_sub_u32(~54729u, min(1u, var_0.d)), var_0.a.x));
    global0 = array<vec3<u32>, 29>();
    global0 = array<vec3<u32>, 29>();
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1037f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-567f)))), 1f))));
    return any(select(var_1.b.a, select(!(!vec3<bool>(false, var_1.c.e, var_0.a.x)), !vec3<bool>(var_1.b.a.x, false, var_1.c.e), var_2 <= -747f), var_1.a.e));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    var var_0 = Struct_3(-1000f, _wgslsmith_f_op_f32(max(-818f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))), Struct_1(select(vec3<bool>(true, true, func_3(-5589i)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), true), reverseBits(_wgslsmith_add_u32(18896u << (0u % 32u), ~31800u)), reverseBits(~_wgslsmith_add_vec3_i32(vec3<i32>(9705i, -60837i, 93287i), vec3<i32>(0i, u_input.a, u_input.a))), reverseBits(~8575u), all(vec3<bool>(true, true, true))), Struct_1(vec3<bool>(true, true, true), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(967u, 7819u)), ~vec2<u32>(11444u, 18091u)), 31595u), -_wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, 0i, u_input.a), -vec3<i32>(u_input.a, -1i, u_input.a)), ~1u, true));
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -1279f) - _wgslsmith_f_op_f32(var_0.a - var_0.b)) - 823f) != _wgslsmith_f_op_f32(round(-988f)), (all(!vec4<bool>(var_0.c.e, var_0.d.e, var_0.d.e, false)) & true) && all(vec2<bool>(true, true)), any(vec2<bool>(all(!vec4<bool>(var_0.c.a.x, false, var_0.d.a.x, var_0.c.e)), var_0.c.e)));
    let var_2 = !(!select(vec4<bool>(0u >= var_0.d.d, u_input.a < u_input.a, var_0.c.b <= var_0.d.d, true), select(vec4<bool>(var_1.x, true, var_0.d.a.x, var_0.c.a.x), vec4<bool>(false, false, true, false), var_1.x), select(vec4<bool>(false, var_1.x, var_0.d.e, false), select(vec4<bool>(false, true, var_0.c.a.x, true), vec4<bool>(false, var_1.x, false, false), true), vec4<bool>(true, true, var_0.c.a.x, var_1.x))));
    global0 = array<vec3<u32>, 29>();
    var var_3 = arg_0;
    return vec3<bool>(var_2.x, ((true & all(var_2.zxw)) && var_2.x) | true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(338f + _wgslsmith_f_op_f32(arg_0 * var_0.b))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<f32>) -> vec3<bool> {
    global0 = array<vec3<u32>, 29>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1794f * _wgslsmith_f_op_f32(max(arg_2.a, 400f))) - -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.b + arg_3.x))) - -259f)) < 541f;
    global0 = array<vec3<u32>, 29>();
    let var_1 = arg_2.d;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(floor(arg_2.a)), arg_2.b), _wgslsmith_f_op_vec3_f32(floor(arg_3))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a), 215f, _wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(arg_2.b - arg_2.b)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.x * arg_2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2025f)) + _wgslsmith_f_op_f32(f32(-1f) * -949f)), arg_3.x) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(693f, arg_3.x, arg_3.x) + arg_3))))));
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b + var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -308f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-127f, -1262f, false)), _wgslsmith_f_op_f32(round(946f)))) - -191f));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -114f);
    var var_2 = Struct_1(select(!select(func_1(-4541i, Struct_2(Struct_1(vec3<bool>(false, false, false), 0u, vec3<i32>(u_input.a, u_input.a, 2147483647i), 1u, false), Struct_1(vec3<bool>(true, true, true), 0u, vec3<i32>(37858i, 2147483647i, u_input.a), 69856u, false), Struct_1(vec3<bool>(true, true, true), 0u, vec3<i32>(u_input.a, 74669i, 3118i), 4294967295u, true)), Struct_3(var_1, var_1, Struct_1(vec3<bool>(false, false, true), 17952u, vec3<i32>(u_input.a, 44767i, 0i), 1u, true), Struct_1(vec3<bool>(false, false, true), 79464u, vec3<i32>(u_input.a, u_input.a, u_input.a), 15299u, true)), vec3<f32>(var_1, var_1, var_1)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), true), !(!func_1(-1i, Struct_2(Struct_1(vec3<bool>(false, false, false), 64780u, vec3<i32>(21790i, -37951i, 2147483647i), 1u, true), Struct_1(vec3<bool>(true, true, true), 90520u, vec3<i32>(u_input.a, u_input.a, u_input.a), 4294967295u, true), Struct_1(vec3<bool>(true, true, true), 43956u, vec3<i32>(-77207i, -15167i, u_input.a), 39772u, true)), Struct_3(-646f, 1712f, Struct_1(vec3<bool>(true, false, false), 40558u, vec3<i32>(u_input.a, -9592i, -2147483647i), 96793u, false), Struct_1(vec3<bool>(true, false, false), 87497u, vec3<i32>(1i, 22874i, u_input.a), 4294967295u, false)), vec3<f32>(var_1, -548f, var_1))), func_3(_wgslsmith_div_i32(~(-2147483647i), _wgslsmith_div_i32(-35899i, u_input.a)))), 26129u, _wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(-1i), -28653i, abs(-20832i)), _wgslsmith_div_vec3_i32(~vec3<i32>(1i, 0i, -1361i), vec3<i32>(1i, -2147483647i, u_input.a))) | countOneBits(vec3<i32>(2147483647i, 1i, u_input.a)), _wgslsmith_sub_u32(~firstTrailingBit(4294967295u) >> (4294967295u % 32u), 0u), !all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)))));
    var_0 = var_1;
    let var_3 = true;
    global0 = array<vec3<u32>, 29>();
    var_2 = Struct_1(!vec3<bool>(true, var_2.a.x, _wgslsmith_f_op_f32(max(var_1, var_1)) < _wgslsmith_f_op_f32(var_1 + var_1)), ~89469u, abs(vec3<i32>(0i ^ u_input.a, min(abs(var_2.c.x), u_input.a ^ u_input.a), countOneBits(u_input.a))), countOneBits(var_2.d), -491f <= var_1);
    global0 = array<vec3<u32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, var_2.b, vec4<u32>(var_2.b, 9488u, var_2.d, var_2.d), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1, var_1, -1200f))) + vec3<f32>(var_1, var_1, 1827f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1239f, var_1, -1000f)))))));
}

