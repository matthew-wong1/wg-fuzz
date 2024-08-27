struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: bool) -> u32 {
    let var_0 = Struct_3(arg_1.a);
    let var_1 = -arg_1.a.a.a.ywx;
    let var_2 = firstTrailingBit(firstLeadingBit(~(-(var_0.a.a.a.ww & var_1.zz))));
    let var_3 = vec4<u32>(arg_0 ^ arg_0, arg_1.a.a.b & reverseBits(arg_0), ~arg_0, _wgslsmith_mod_u32(17192u, arg_0));
    var var_4 = select(vec3<bool>(any(!(!vec2<bool>(arg_2, arg_2))), true & select(arg_2 && false, arg_2, true), !(~var_1.x >= _wgslsmith_div_i32(-1i, 8662i))), select(vec3<bool>(arg_2 | true, !(arg_2 && arg_2), arg_2), select(!vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, !arg_2, all(vec2<bool>(arg_2, false))), vec3<bool>(arg_2, arg_2, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(arg_2, true, arg_2), !arg_2))), select(select(!(!vec3<bool>(true, true, arg_2)), vec3<bool>(u_input.c.x == 4294967295u, true, true), vec3<bool>(any(vec3<bool>(false, arg_2, false)), var_0.a.a.b <= 1u, any(vec3<bool>(arg_2, arg_2, true)))), vec3<bool>(true, true, true), select(vec3<bool>(arg_2, u_input.b < u_input.d.x, arg_2), select(!vec3<bool>(false, arg_2, true), vec3<bool>(false, false, true), select(vec3<bool>(true, arg_2, true), vec3<bool>(false, true, false), false)), !(!vec3<bool>(false, arg_2, true)))));
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) & ~select(var_3.wx, u_input.c.yy, true), var_3.xw), var_3.x, u_input.c.x >> ((1u ^ _wgslsmith_sub_u32(arg_1.a.a.b & 4294967295u, ~79520u)) % 32u));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = vec4<u32>(0u, 77334u, _wgslsmith_mult_u32(func_3(u_input.c.x, Struct_3(Struct_2(Struct_1(vec4<i32>(-12562i, u_input.b, u_input.d.x, 0i), arg_1))), 1u >= _wgslsmith_add_u32(4629u, arg_1)), firstTrailingBit(u_input.a)), 1u);
    var_0 = select(vec4<u32>(0u, 8938u, firstTrailingBit(0u) | u_input.a, ~max(var_0.x, u_input.c.x)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(~var_0.zwz, u_input.c), _wgslsmith_dot_vec2_u32(reverseBits(var_0.zw), ~vec2<u32>(var_0.x, 4093u)), ~u_input.a << (~1u % 32u), ~var_0.x), arg_0);
    let var_1 = -225f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(822f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-317f, var_1))) + 1000f));
    var_0 = ~(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, arg_1), vec4<u32>(u_input.c.x, var_0.x, var_0.x, arg_1)), vec4<u32>(arg_1, 36030u, arg_1, 1u))) << (min(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 1u, var_0.x, u_input.c.x), vec4<u32>(arg_1, 4294967295u, 4294967295u, 1u), vec4<u32>(62596u, 50384u, 50565u, var_0.x)) & (vec4<u32>(4294967295u, var_0.x, arg_1, 51893u) ^ vec4<u32>(16206u, u_input.c.x, u_input.a, arg_1))), firstLeadingBit(firstTrailingBit(vec4<u32>(0u, 4294967295u, arg_1, 1u)))) % vec4<u32>(32u));
    return Struct_2(Struct_1(select(-(vec4<i32>(u_input.d.x, u_input.d.x, u_input.b, -2147483647i) << (vec4<u32>(1u, arg_1, 27640u, u_input.c.x) % vec4<u32>(32u))), countOneBits(-vec4<i32>(u_input.b, u_input.b, u_input.b, 0i)), !(!vec4<bool>(arg_0, arg_2.x, arg_0, true))), ~_wgslsmith_mult_u32(u_input.a, 0u)));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    let var_0 = func_2(any(vec3<bool>(true, true, true)), ~u_input.c.x, select(select(vec2<bool>(true, any(vec2<bool>(true, false))), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, !all(vec2<bool>(false, false))), any(vec3<bool>(true, true, true))));
    var var_1 = abs(vec2<i32>(u_input.b << (func_2(any(vec3<bool>(false, true, false)), firstTrailingBit(1u), vec2<bool>(true, false)).a.b % 32u), 0i));
    var_1 = min(vec2<i32>(_wgslsmith_div_i32(-var_1.x, _wgslsmith_clamp_i32(u_input.b << (arg_0.a.b % 32u), var_0.a.a.x, abs(-1i))), func_2(false, arg_0.a.b, vec2<bool>(false, false)).a.a.x), vec2<i32>(2147483647i, var_1.x));
    let var_2 = Struct_5(Struct_3(func_2(any(vec4<bool>(true, false, true, false)), _wgslsmith_sub_u32(4294967295u, 1277u) << (u_input.a % 32u), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(702f * -1200f) - _wgslsmith_f_op_f32(f32(-1f) * -1112f))))));
    var var_3 = arg_0.a;
    return Struct_3(func_2(false, _wgslsmith_add_u32(countOneBits(1u), 1u), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), true)));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(-func_2(true, ~arg_0.x, vec2<bool>(false, true)).a.a.x, -43344i), _wgslsmith_dot_vec2_i32(u_input.d, _wgslsmith_add_vec2_i32(select(vec2<i32>(32036i, 2147483647i), _wgslsmith_div_vec2_i32(u_input.d, vec2<i32>(1i, -13298i)), vec2<bool>(true, true)), ~(~arg_1.a.a.a.wx))), firstTrailingBit(-(~(~u_input.b))), arg_1.a.a.a.x);
    let var_1 = Struct_2(Struct_1(vec4<i32>(arg_1.a.a.a.x, -10963i, -35932i, _wgslsmith_add_i32(u_input.d.x, countOneBits(var_0.x))), select(func_3(34476u, arg_1, true), reverseBits(_wgslsmith_add_u32(u_input.c.x, arg_1.a.a.b)), any(vec3<bool>(true, true, true)))));
    let var_2 = any(vec4<bool>(true, true, false, all(vec4<bool>(false, true, true, false)))) == any(vec4<bool>(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, true, false)), all(vec4<bool>(true, false, false, true)), select(true, true, all(vec4<bool>(true, true, true, true)))));
    var var_3 = Struct_2(var_1.a);
    var_3 = arg_1.a;
    return Struct_2(arg_1.a.a);
}

fn func_1() -> f32 {
    let var_0 = Struct_5(Struct_3(func_5(vec4<u32>(u_input.a, ~u_input.a, max(u_input.c.x, u_input.a), u_input.a), func_4(func_2(true, 5987u, vec2<bool>(true, false))))), 1f);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(f32(-1f) * -528f))), -155f, var_0.b);
    let var_2 = var_1.x;
    var var_3 = _wgslsmith_f_op_f32(-var_0.b);
    let var_4 = vec4<u32>(30036u, 4294967295u & ~u_input.c.x, _wgslsmith_sub_u32(~0u, 4294967295u), _wgslsmith_mod_u32(1u, ~var_0.a.a.a.b) | 0u);
    return _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1713f)), var_2)));
}

fn func_6(arg_0: vec3<f32>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * arg_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(arg_0.x * 942f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -535f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x))), true)) + _wgslsmith_f_op_f32(f32(-1f) * -844f));
    let var_2 = 1772f;
    return Struct_5(func_4(Struct_2(Struct_1(~vec4<i32>(-2147483647i, u_input.b, 2147483647i, u_input.d.x), firstLeadingBit(u_input.c.x)))), 829f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(743f, 1275f)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(step(-495f, 394f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-837f, 428f, 1312f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -444f, 255f) * vec3<f32>(1326f, -2126f, -1000f)))))));
    var var_1 = select(vec4<u32>(func_4(func_4(func_6(vec3<f32>(865f, -726f, var_0.b)).a.a).a).a.a.b, var_0.a.a.a.b, ~var_0.a.a.a.b, _wgslsmith_mod_u32(1u, select(_wgslsmith_mult_u32(58749u, var_0.a.a.a.b), ~4294967295u, true))), firstLeadingBit(vec4<u32>(1u, 0u, ~var_0.a.a.a.b, u_input.a) & ((vec4<u32>(u_input.c.x, var_0.a.a.a.b, u_input.c.x, 35112u) << (vec4<u32>(var_0.a.a.a.b, 12559u, 62172u, var_0.a.a.a.b) % vec4<u32>(32u))) ^ abs(vec4<u32>(86242u, 1u, 73628u, var_0.a.a.a.b)))), true);
    var var_2 = Struct_3(func_2(!(u_input.b <= ~u_input.d.x), 1502u, !vec2<bool>(true, var_0.a.a.a.a.x < 0i)));
    var var_3 = Struct_3(Struct_2(Struct_1(var_0.a.a.a.a, 1u >> (min(15934u, 0u) % 32u))));
    var var_4 = func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1279f, -1101f, var_0.b), vec3<f32>(-267f, var_0.b, -349f), vec3<bool>(true, true, true))) + vec3<f32>(1017f, -1561f, var_0.b)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, -472f, var_0.b), vec3<f32>(var_0.b, -708f, 446f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1288f, -1117f, var_0.b)))))));
    var var_5 = 307f;
    let var_6 = var_4.b;
    var var_7 = var_2.a.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a.a.a.x, ~var_3.a.a.a.x, min(~(~countOneBits(vec3<u32>(var_0.a.a.a.b, u_input.a, var_4.a.a.a.b))), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u | u_input.a, abs(82978u), 4294967295u), (u_input.c ^ vec3<u32>(var_1.x, var_4.a.a.a.b, var_4.a.a.a.b)) >> (_wgslsmith_div_vec3_u32(var_1.wxx, u_input.c) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.b + var_0.b), _wgslsmith_f_op_f32(var_4.b + var_0.b), 505f, var_0.b)), vec4<f32>(-444f, 1183f, var_4.b, _wgslsmith_div_f32(-933f, var_0.b)))));
}

