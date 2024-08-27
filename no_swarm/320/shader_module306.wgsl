struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    var var_0 = -min(u_input.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(2147483647i, -2147483647i, -1i, u_input.a.x)), -vec4<i32>(-65112i, u_input.c.x, u_input.b, -11445i)), firstLeadingBit(~vec4<i32>(u_input.b, u_input.a.x, -26045i, 1i))));
    let var_1 = !(!(!arg_1.b.x) && all(!arg_3.e));
    let var_2 = 0i;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(arg_3.c.a - _wgslsmith_f_op_vec3_f32(-arg_1.c.a)), firstLeadingBit(vec2<u32>(1805u, 18556u)) | vec2<u32>(~u_input.d, ~arg_1.c.b.x), _wgslsmith_f_op_f32(arg_1.a.c * _wgslsmith_f_op_f32(round(arg_3.c.a.x))), abs(_wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(1u, arg_3.a.d), u_input.d << (1u % 32u)))), u_input.a, 81037i);
    var_0 = 1i;
    return -9899i;
}

fn func_2(arg_0: Struct_3) -> bool {
    let var_0 = vec2<i32>(-_wgslsmith_sub_i32(u_input.b, select(u_input.b, u_input.a.x, true) << (19519u % 32u)), ~abs(func_3(_wgslsmith_f_op_vec2_f32(arg_0.c.a.xz - vec2<f32>(arg_0.a.c, 1049f)), Struct_3(Struct_1(vec3<f32>(arg_0.a.c, arg_0.a.c, arg_0.a.a.x), vec2<u32>(127813u, 1u), arg_0.c.c, u_input.d), vec4<bool>(arg_0.e.x, arg_0.b.x, true, true), arg_0.a, arg_0.d, vec3<bool>(true, false, true)), arg_0, Struct_3(arg_0.a, arg_0.b, arg_0.c, arg_0.d, arg_0.e))));
    var var_1 = 41067u;
    var_1 = 4294967295u;
    var_1 = firstTrailingBit(arg_0.c.b.x) | countOneBits(max(arg_0.a.b.x, firstLeadingBit(1u)) | u_input.e.x);
    let var_2 = _wgslsmith_add_vec4_u32(select(~select(vec4<u32>(20364u, 23506u, u_input.e.x, arg_0.d.x), arg_0.d, arg_0.b), countOneBits(arg_0.d), !(arg_0.c.a.x < arg_0.c.c)), _wgslsmith_mod_vec4_u32(max(arg_0.d, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, u_input.d, arg_0.a.d, 1446u), vec4<u32>(arg_0.a.d, arg_0.a.b.x, u_input.d, 39256u))), arg_0.d)) ^ (min(arg_0.d, vec4<u32>(arg_0.d.x, abs(arg_0.c.b.x), _wgslsmith_div_u32(arg_0.d.x, u_input.e.x), reverseBits(u_input.d))) << (arg_0.d % vec4<u32>(32u)));
    return true;
}

fn func_4(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1413f))));
    let var_1 = ~firstTrailingBit(~u_input.d);
    var var_2 = vec2<f32>(-488f, var_0);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-560f, 1385f, var_2.x)), vec3<f32>(1221f, var_0, var_2.x))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1842f + 2238f), 138f, _wgslsmith_f_op_f32(790f * -572f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-978f, -415f, var_2.x), _wgslsmith_div_vec3_f32(vec3<f32>(165f, 1780f, var_0), vec3<f32>(1559f, 1264f, var_2.x)))), vec3<bool>(any(vec4<bool>(false, false, arg_1, false)), arg_1, var_1 == var_1))))), vec2<u32>(_wgslsmith_add_u32(countOneBits(u_input.d), 8740u), firstTrailingBit(~var_1)), var_0, min(4294967295u, _wgslsmith_clamp_u32(30308u, ~4294967295u, 4294967295u)));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-166f, var_2.x, _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_clamp_vec2_u32(var_3.b, max(u_input.e, vec2<u32>(var_3.b.x, 11595u)), countOneBits(var_3.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -1840f)))), _wgslsmith_div_u32(~countOneBits(var_1), abs(u_input.e.x))), u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_0, arg_0, u_input.c.x, 18905i), -vec4<i32>(arg_0, 5771i, u_input.b, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 77629i, u_input.b, arg_0), vec4<i32>(6853i, arg_0, arg_0, -15864i), vec4<i32>(arg_0, arg_0, u_input.b, arg_0))), abs(~vec4<i32>(-79039i, arg_0, u_input.a.x, u_input.b))) | _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(0i, arg_0), u_input.c.x, u_input.a.x, u_input.b), vec4<i32>(u_input.b >> (var_3.d % 32u), -u_input.c.x, 2147483647i, arg_0)));
    return var_4.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_add_u32(arg_2.d, _wgslsmith_add_u32(~arg_0.a.d & 1u, ~_wgslsmith_div_u32(14277u, 12462u)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1246f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1968f)), _wgslsmith_f_op_f32(arg_2.c - arg_2.c))));
    let var_2 = abs(reverseBits(~vec2<u32>(u_input.d, abs(1u))));
    var var_3 = reverseBits(vec4<u32>(_wgslsmith_div_u32(arg_2.d, arg_3), min(~(~13771u), var_2.x), 0u, var_0));
    var_3 = vec4<u32>(14020u | _wgslsmith_sub_u32(var_0, ~arg_3), _wgslsmith_add_u32(abs(~arg_0.a.d), 1u), 38720u, ~4294967295u) << (firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, arg_2.b.x, var_0), ~vec4<u32>(var_3.x, var_0, var_0, arg_2.d)), _wgslsmith_sub_u32(59589u, 56868u), arg_2.d, u_input.d)) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1448f * arg_2.c)));
}

fn func_1() -> vec4<u32> {
    var var_0 = 62145i;
    var_0 = -_wgslsmith_sub_i32(u_input.a.x, 1i) | (-2147483647i ^ u_input.b);
    let var_1 = vec2<f32>(371f, _wgslsmith_f_op_f32(func_5(Struct_2(func_4(u_input.b, func_2(Struct_3(Struct_1(vec3<f32>(-197f, 1896f, 775f), vec2<u32>(u_input.d, u_input.e.x), 262f, 18219u), vec4<bool>(true, false, true, true), Struct_1(vec3<f32>(-1022f, 398f, 1000f), u_input.e, -1000f, u_input.d), vec4<u32>(u_input.d, u_input.e.x, 16815u, 11643u), vec3<bool>(true, true, true)))), u_input.a, ~2147483647i), vec2<i32>(u_input.b, 54142i), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(-656f)), 793f, 1000f), vec2<u32>(4294967295u | u_input.e.x, 4294967295u), 1000f, u_input.d), _wgslsmith_dot_vec3_u32(abs(countOneBits(vec3<u32>(1u, u_input.d, u_input.e.x))), vec3<u32>(u_input.e.x, u_input.d, 4294967295u)))));
    var var_2 = -_wgslsmith_clamp_vec3_i32(reverseBits(countOneBits(u_input.a) ^ u_input.a), _wgslsmith_div_vec3_i32(u_input.a, _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.a) << (abs(vec3<u32>(4294967295u, 0u, 0u)) % vec3<u32>(32u))), vec3<i32>(~u_input.c.x, u_input.b, _wgslsmith_mult_i32(~6530i, u_input.c.x)));
    var var_3 = Struct_2(func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.c.x, -11405i, u_input.c.x & var_2.x), vec3<i32>(u_input.b, -2276i, -1i)), select(_wgslsmith_f_op_f32(var_1.x - var_1.x) < _wgslsmith_f_op_f32(floor(828f)), true, false)), u_input.a, -(var_2.x | firstTrailingBit(-56292i & var_2.x)));
    return vec4<u32>(~firstLeadingBit(var_3.a.b.x), var_3.a.b.x, countOneBits(~u_input.d), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstTrailingBit(func_1());
    var var_1 = firstTrailingBit(-u_input.a.x);
    var var_2 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(508f + _wgslsmith_f_op_f32(f32(-1f) * -815f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(752f, -509f) * _wgslsmith_f_op_f32(1823f - 1818f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1442f * -1254f), _wgslsmith_f_op_f32(-865f * 931f)))), ~(~_wgslsmith_mod_vec2_u32(u_input.e, u_input.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(101f)) + -644f)), _wgslsmith_add_u32(1u, func_1().x)), vec4<bool>(!func_2(Struct_3(Struct_1(vec3<f32>(-266f, 1000f, -400f), vec2<u32>(u_input.d, u_input.d), -832f, 0u), vec4<bool>(true, true, true, false), Struct_1(vec3<f32>(382f, 1036f, -969f), vec2<u32>(1u, 90038u), -1991f, var_0.x), vec4<u32>(var_0.x, 4294967295u, var_0.x, 1u), vec3<bool>(false, true, true))), true, any(vec4<bool>(true, true, true, true)), true), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-999f, -961f, -692f))), vec2<u32>(_wgslsmith_clamp_u32(abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, 56673u, u_input.e.x), vec4<u32>(var_0.x, 92256u, var_0.x, var_0.x)), _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(4294967295u, u_input.d, var_0.x, var_0.x))), ~1u), _wgslsmith_f_op_f32(max(-518f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1582f)))))), u_input.d), _wgslsmith_mult_vec4_u32(var_0 >> (~var_0 % vec4<u32>(32u)), firstTrailingBit(~vec4<u32>(25871u, u_input.d, u_input.d, var_0.x))) << (vec4<u32>(min(u_input.d, 70159u), firstLeadingBit(abs(var_0.x)), 0u, ~(~1u)) % vec4<u32>(32u)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false));
    let var_3 = Struct_3(var_2.c, vec4<bool>(true, var_0.x >= firstTrailingBit(_wgslsmith_sub_u32(u_input.e.x, 4294967295u)), true & var_2.b.x, var_2.b.x), var_2.a, var_0, vec3<bool>(var_2.b.x | true, !var_2.e.x, false));
    var_2 = Struct_3(func_4(_wgslsmith_add_i32(~min(u_input.c.x, u_input.b), countOneBits(i32(-1i) * -51000i)), true || ((false || var_3.b.x) & false)), vec4<bool>(var_2.b.x, func_2(var_3), !(!var_3.b.x & select(var_3.b.x, var_2.e.x, var_3.e.x)), select(var_3.e.x, any(var_3.b.zxx), true)), Struct_1(var_3.c.a, ~select(firstLeadingBit(u_input.e), abs(vec2<u32>(var_0.x, var_0.x)), var_3.e.zy), var_3.a.c, min(_wgslsmith_mod_u32(var_0.x, u_input.d) ^ ~4294967295u, 40397u)), var_2.d, !(!var_2.b.xyz));
    var_1 = u_input.b;
    var_1 = countOneBits(u_input.c.x);
    var var_4 = Struct_2(func_4(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.a.x)) << (var_3.c.b % vec2<u32>(32u)), u_input.c), var_2.e.x), u_input.a, _wgslsmith_mult_i32(countOneBits(u_input.c.x), u_input.a.x));
    let var_5 = Struct_2(func_4(firstTrailingBit(-firstTrailingBit(-19796i)), _wgslsmith_f_op_f32(-var_3.c.c) == _wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(var_3.c.a, var_0.zz, -403f, var_0.x), vec3<i32>(-1i, 19444i, var_4.c), u_input.a.x), var_4.b.yy, func_4(-2147483647i, false), u_input.d))), u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(1188i, _wgslsmith_sub_i32(var_4.b.x, 0i)), ~(-abs(vec2<i32>(var_4.b.x, u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(~abs(countOneBits(vec4<i32>(u_input.b, u_input.a.x, var_5.b.x, var_4.b.x))), -(~(~vec4<i32>(u_input.b, var_4.c, 12481i, u_input.b)))), _wgslsmith_f_op_vec3_f32(-var_4.a.a), _wgslsmith_f_op_f32(-var_3.c.a.x), u_input.a);
}

