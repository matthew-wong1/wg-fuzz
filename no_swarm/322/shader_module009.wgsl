struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: f32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_3(arg_3, _wgslsmith_mod_i32(select(_wgslsmith_mod_i32(-arg_2.x, -1i), _wgslsmith_add_i32(1i, -22493i), arg_0.b), arg_2.x), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(16337i, arg_2.x), firstTrailingBit(38773i), 66383i, 11399i), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 5100i, 46597i, arg_2.x), vec4<i32>(arg_2.x, arg_2.x, -10283i, 4533i)) & -vec4<i32>(2199i, -57890i, arg_2.x, arg_2.x)) >> (vec4<u32>(_wgslsmith_sub_u32(select(u_input.a.x, arg_3.d.a.x, true), ~arg_0.a.x), 19872u, 1u, 2041u) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(2113f * arg_1);
    var var_2 = vec3<f32>(-1428f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-611f - var_1) * _wgslsmith_f_op_f32(floor(-1063f)))))), _wgslsmith_f_op_f32(-1000f * arg_1));
    let var_3 = Struct_3(Struct_2(1200f, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-arg_1))), Struct_1(arg_3.d.a << (arg_3.d.a % vec4<u32>(32u)), arg_3.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1866f - -732f) + -1609f), var_0.a.d.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e + arg_3.b) - -1109f)), select(vec3<bool>(false, arg_3.d.b, all(vec4<bool>(arg_0.b, false, var_0.a.e.x, arg_0.b))), select(select(vec3<bool>(arg_3.d.b, true, var_0.a.d.b), arg_3.e, var_0.a.d.b), vec3<bool>(arg_0.b, arg_0.b, true), arg_3.e), any(!vec4<bool>(var_0.a.e.x, arg_0.b, false, arg_3.d.b)))), ~_wgslsmith_add_i32(1i, arg_2.x) ^ -1i, vec4<i32>(firstTrailingBit(-10545i), -_wgslsmith_sub_i32(-1i, -var_0.c.x), var_0.b, 6914i));
    var_2 = arg_3.d.d.zyz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1591f, arg_0.e, true)));
}

fn func_2() -> bool {
    let var_0 = !(_wgslsmith_div_f32(-559f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-506f - 1023f))) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(31782u, u_input.a.x, u_input.a.x, u_input.a.x), false, 1711f, vec4<f32>(-2045f, 1000f, 2066f, -777f), -251f), -283f, vec3<i32>(-2147483647i, 25285i, 0i), Struct_2(220f, 219f, -1000f, Struct_1(u_input.a, true, -540f, vec4<f32>(-1000f, 172f, -224f, 1275f), -463f), vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(round(-740f)))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(793f + 289f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var var_2 = Struct_1(u_input.a, var_0, 342f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(251f, 738f), _wgslsmith_f_op_f32(f32(-1f) * -821f), all(vec3<bool>(false, true, true))))), 389f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1148f * -585f)))), 467f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1495f))));
    var var_3 = -2147483647i;
    var var_4 = vec4<f32>(-1656f, var_2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x - -992f)))) + _wgslsmith_f_op_f32(756f * var_2.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) + -290f), var_2.d.x)) + -419f));
    return var_2.e <= var_2.c;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<f32>, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(vec4<u32>(30854u, firstLeadingBit(0u), _wgslsmith_sub_u32(u_input.a.x, select(abs(4294967295u), ~u_input.a.x, all(vec4<bool>(false, arg_3, arg_0, arg_0)))), ~select(1u, ~56480u, u_input.a.x < u_input.a.x)), arg_0, -687f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, 1000f, 538f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, 666f, arg_2.x) * vec4<f32>(1014f, arg_2.x, arg_2.x, 550f)), !vec4<bool>(false, arg_3, arg_0, true))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(674f, arg_2.x, -509f, arg_2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -133f)))))), -239f);
    let var_1 = ~_wgslsmith_add_vec3_u32(firstLeadingBit(var_0.a.yyy), u_input.a.zww) | vec3<u32>(0u, var_0.a.x, var_0.a.x);
    var var_2 = -_wgslsmith_mult_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, arg_1, 348i), vec3<i32>(arg_1, arg_1, arg_1)), min(vec3<i32>(1i, arg_1, arg_1) | vec3<i32>(arg_1, -1776i, arg_1), max(vec3<i32>(-16217i, arg_1, -2147483647i), vec3<i32>(-2147483647i, arg_1, 0i)))) ^ firstLeadingBit(~vec3<i32>(_wgslsmith_mult_i32(26099i, 0i), 4856i, arg_1 | arg_1));
    let var_3 = 1u;
    var var_4 = var_0.b | any(!vec2<bool>(arg_3, false));
    return Struct_1(var_0.a, select((max(var_3, var_0.a.x) & var_0.a.x) <= 23304u, arg_3, ~_wgslsmith_mult_i32(-1i, var_2.x) < arg_1), var_0.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) - _wgslsmith_f_op_vec4_f32(trunc(var_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-172f + _wgslsmith_f_op_f32(-578f - _wgslsmith_f_op_f32(-arg_2.x))) * 978f));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = select(vec4<bool>(any(select(select(vec4<bool>(arg_2.b, false, arg_2.b, true), vec4<bool>(arg_2.b, false, false, arg_2.b), vec4<bool>(false, arg_2.b, true, arg_2.b)), select(vec4<bool>(true, false, arg_2.b, false), vec4<bool>(arg_2.b, false, true, arg_2.b), vec4<bool>(true, arg_2.b, arg_2.b, false)), true)), false, !arg_2.b, false), !(!select(vec4<bool>(arg_2.b, true, arg_2.b, arg_2.b), select(vec4<bool>(arg_2.b, true, true, arg_2.b), vec4<bool>(false, false, arg_2.b, arg_2.b), vec4<bool>(true, false, true, true)), arg_2.b || true)), vec4<bool>(true, func_4(true, ~1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(193f, arg_2.d.x, arg_2.c)), !arg_2.b).b, false, !(!any(vec2<bool>(arg_2.b, arg_2.b)))));
    var var_1 = 74213i;
    var_0 = select(vec4<bool>(true, var_0.x, var_0.x, ~(4294967295u | arg_2.a.x) == 1467u), !select(!select(vec4<bool>(var_0.x, var_0.x, true, arg_2.b), vec4<bool>(arg_2.b, arg_2.b, true, var_0.x), vec4<bool>(arg_2.b, true, true, false)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, arg_2.b), true), vec4<bool>(arg_2.b, arg_2.b, false, false), !vec4<bool>(arg_2.b, true, var_0.x, true)), select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, true), !vec4<bool>(var_0.x, true, var_0.x, false))), var_0.x);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-arg_2.e), -1000f, -344f);
    var var_3 = arg_0;
    return Struct_1(u_input.a, false, _wgslsmith_f_op_f32(abs(-644f)), _wgslsmith_f_op_vec4_f32(-arg_2.d), arg_2.e);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<f32>) -> vec3<f32> {
    let var_0 = true;
    let var_1 = select(!select(select(!vec2<bool>(arg_1.b, false), select(vec2<bool>(var_0, var_0), vec2<bool>(false, false), vec2<bool>(true, arg_1.b)), !vec2<bool>(arg_1.b, true)), select(vec2<bool>(true, true), vec2<bool>(false, arg_1.b), vec2<bool>(true, true)), func_2()), vec2<bool>(!all(select(vec3<bool>(arg_1.b, var_0, true), vec3<bool>(var_0, false, false), false)), arg_1.b), !(!select(vec2<bool>(var_0, var_0), vec2<bool>(arg_1.b, var_0), arg_1.b)));
    var var_2 = -firstTrailingBit(-arg_0.x);
    var var_3 = 1u;
    var var_4 = vec3<u32>(~(~52773u), 24604u, _wgslsmith_dot_vec3_u32(vec3<u32>(max(_wgslsmith_mod_u32(56273u, 1u), 12188u | u_input.a.x), firstTrailingBit(0u), ~(~1u)), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, arg_1.a.x), vec3<u32>(u_input.a.x, 84690u, 4294967295u)), ~u_input.a.x, abs(arg_1.a.x)), ~(~vec3<u32>(arg_1.a.x, 56647u, 437u)))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.d.yzz)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_1.d.yyz, arg_3)) * arg_1.d.xxx))));
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-440f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(562f, _wgslsmith_f_op_f32(-399f - 111f), true))), _wgslsmith_f_op_f32(-1f)));
    let var_1 = abs(~(~abs(firstLeadingBit(u_input.a.x))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - -870f), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -469f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(abs(var_0.x))), var_0.x)));
    let var_2 = u_input.a.x;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_6(vec2<i32>(12155i, -17115i), func_5(-vec4<i32>(1i, 1i, 1i, 1i), ~(-vec3<i32>(9769i, -413i, 2147483647i)), func_4(func_2(), _wgslsmith_dot_vec4_i32(vec4<i32>(20933i, 2147483647i, 2147483647i, -26543i), vec4<i32>(2147483647i, -2147483647i, -1i, 928i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-503f, var_0.x, var_0.x) + vec3<f32>(1510f, -1239f, var_0.x)), false), u_input.a.ww), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(759f, _wgslsmith_f_op_f32(exp2(var_0.x)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-577f, -645f, _wgslsmith_f_op_f32(var_0.x - 1341f)))))));
    return !vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x))) <= _wgslsmith_div_f32(func_5(vec4<i32>(2147483647i, 4597i, -1i, -2147483647i), vec3<i32>(57354i, 40223i, 68637i), Struct_1(vec4<u32>(1u, 73185u, 25367u, 25768u), false, var_0.x, vec4<f32>(142f, var_0.x, 324f, -1569f), var_0.x), vec2<u32>(17061u, 28756u)).d.x, _wgslsmith_f_op_f32(step(-422f, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) != _wgslsmith_f_op_f32(func_4(false, 1i, vec3<f32>(448f, var_0.x, var_0.x), true).c - 453f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(true, false, any(vec2<bool>(false, true)) || true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(false, true, false)), all(select(vec2<bool>(false, true), func_1(), true)));
    var var_1 = Struct_2(func_4(false, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), -_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -7489i), vec2<i32>(-45903i, -2147483647i))), vec3<f32>(_wgslsmith_f_op_f32(-183f + _wgslsmith_f_op_f32(-172f - 1129f)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-1849f - -629f)), -791f), true).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(~vec4<i32>(1i, 1i, 0i, -38660i), vec3<i32>(-9862i, 1i, -1i), Struct_1(u_input.a, var_0.x, -2020f, vec4<f32>(291f, 1148f, -381f, 347f), -1148f), _wgslsmith_div_vec2_u32(u_input.a.xw, u_input.a.xx)).c)), _wgslsmith_div_f32(-1533f, func_4(true && var_0.x, 0i, vec3<f32>(_wgslsmith_f_op_f32(select(-1631f, 1193f, true)), -940f, _wgslsmith_f_op_f32(trunc(756f))), true).d.x), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.a.x, ~13311u, min(u_input.a.x, u_input.a.x)), ~countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a), (u_input.a.x ^ ~u_input.a.x) == (_wgslsmith_mult_u32(u_input.a.x, 111519u) | _wgslsmith_add_u32(1u, u_input.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1589f * -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(705f, -586f, -186f, 1105f))), 481f), !vec3<bool>(var_0.x, var_0.x, var_0.x));
    var var_2 = vec3<u32>(func_5(vec4<i32>(1i, -21459i, abs(2147483647i), 1i), vec3<i32>(firstLeadingBit(-62931i), _wgslsmith_clamp_i32(-1i, -20555i, 4615i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -42635i), vec3<i32>(-12893i, -1i, -19741i))), func_4(false && var_0.x, -22941i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-763f, -726f, var_1.c)), true), u_input.a.yx).a.x, var_1.d.a.x, ~(~var_1.d.a.x)) << (vec3<u32>(~_wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x), var_1.d.a.x, var_1.d.a.x) % vec3<u32>(32u));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(floor(-210f)), 1f, _wgslsmith_f_op_f32(-138f + 356f), var_1.d, !(!select(var_1.e, var_1.e, false))), i32(-1i) * -1i, abs(reverseBits(vec4<i32>(-2822i, _wgslsmith_div_i32(-1i, 2147483647i), ~(-2147483647i), firstTrailingBit(0i)))));
    var_0 = select(vec3<bool>(true, false, true), vec3<bool>(true, var_0.x, any(vec4<bool>(true, true, all(var_0.zy), true))), !(var_3.a.d.b && any(vec2<bool>(false, var_1.d.b))));
    var var_4 = vec3<u32>(_wgslsmith_mult_u32(9340u >> (countOneBits(12811u) % 32u), var_2.x), min(~(~50481u), var_2.x), _wgslsmith_mod_u32(countOneBits(_wgslsmith_div_u32(var_1.d.a.x, var_3.a.d.a.x)), _wgslsmith_dot_vec3_u32(var_3.a.d.a.wzw, vec3<u32>(0u, u_input.a.x, 4294967295u)))) ^ vec3<u32>(var_2.x, 4294967295u, 9152u ^ var_1.d.a.x);
    var var_5 = 15485i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.d.d.zw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.a.d.e, -219f), var_1.d.d.wz)) * vec2<f32>(-1000f, var_3.a.a)))), var_3.c.yxz);
}

