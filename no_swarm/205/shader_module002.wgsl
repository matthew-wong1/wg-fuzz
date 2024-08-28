struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: i32) -> i32 {
    let var_0 = arg_3;
    var var_1 = Struct_5(Struct_4(Struct_1(-2205f, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-893f, arg_1.a))), firstTrailingBit(vec3<i32>(arg_0.x, -11482i, 0i)) & (vec3<i32>(6753i, -1i, -65177i) >> (vec3<u32>(u_input.b, u_input.c.x, 1021u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-345f - arg_1.a), min(abs(arg_1.c.yz), arg_1.c.xy)), _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-784f - arg_1.d)) < 1956f, Struct_2(true, _wgslsmith_add_i32(~(-42886i), arg_2.x << (u_input.b % 32u)), Struct_1(_wgslsmith_f_op_f32(exp2(arg_1.a)), arg_1.b, arg_1.c, _wgslsmith_f_op_f32(step(arg_1.d, arg_1.a)), select(u_input.d, vec2<i32>(arg_0.x, -2147483647i), vec2<bool>(false, false))), arg_1)));
    return arg_2.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4) -> Struct_3 {
    var var_0 = Struct_2(true, -21208i, arg_1.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.c.d.d, arg_1.a.b.x), _wgslsmith_f_op_f32(floor(-1796f))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-902f, _wgslsmith_f_op_f32(floor(arg_1.a.a))))), countOneBits(vec3<i32>(-1i) * -vec3<i32>(9373i, -2147483647i, arg_1.a.e.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1234f))), u_input.d));
    var var_1 = true;
    var var_2 = Struct_2(true, func_3(~vec4<i32>(u_input.d.x, -2147483647i, -41672i, 28726i), var_0.d, _wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, arg_1.c.c.e.x, -35062i), firstTrailingBit(vec3<i32>(71469i, 18571i, arg_1.a.e.x))), min(abs(-37584i), -1i)) >> (~arg_0.a % 32u), Struct_1(-692f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.d, _wgslsmith_f_op_f32(433f * arg_1.a.a))), reverseBits(var_0.d.c), -389f, arg_1.a.c.zy), arg_1.c.c);
    var_2 = Struct_2(arg_1.b & true, i32(-1i) * -2147483647i, arg_1.c.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(483f, -717f))))), var_0.d.b, vec3<i32>(u_input.d.x, max(0i, ~arg_1.a.e.x), _wgslsmith_add_i32(-28710i | var_0.c.e.x, ~var_2.d.c.x)), arg_1.a.a, -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, var_0.c.e.x, -1i), var_0.d.c), var_2.b)));
    var var_3 = arg_1.c.c;
    return arg_0;
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(164f, -2407f), vec2<f32>(-439f, -595f), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1625f, -328f))))), vec3<i32>(0i, -1i, 0i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(440f - 1582f))), _wgslsmith_div_f32(-827f, _wgslsmith_f_op_f32(655f - 161f))), vec2<i32>(u_input.e, reverseBits(32911i))), -355f != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -429f))), Struct_2(true, _wgslsmith_mult_i32(1i, u_input.e), Struct_1(-1000f, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1496f), 538f), countOneBits(vec3<i32>(u_input.d.x, 2147483647i, 1i)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(2281f + -567f))), vec2<i32>(u_input.d.x, u_input.e)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2128f)) * -1245f), _wgslsmith_f_op_vec2_f32(vec2<f32>(262f, -547f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(141f, 803f) + vec2<f32>(829f, -904f))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, -51i), vec3<i32>(u_input.e, -2147483647i, u_input.d.x)), _wgslsmith_f_op_f32(round(-856f)), -vec2<i32>(14347i, u_input.d.x))));
    var var_1 = reverseBits(min(vec2<u32>(u_input.b, select(arg_0.a << (1u % 32u), 17856u, !var_0.b)), vec2<u32>(~(~u_input.a), arg_0.a)));
    let var_2 = u_input.d.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(var_0.c.d.b + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0.a.b)) * var_0.a.b) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(541f, _wgslsmith_f_op_f32(-650f - var_0.c.d.a))))));
    let var_4 = select(u_input.c.xx, u_input.c.xx, !(!var_0.b));
    return var_0.c;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_2(~(_wgslsmith_sub_u32(3736u, u_input.b) >> (_wgslsmith_mod_u32(33864u, 3075u) % 32u)) <= ~_wgslsmith_dot_vec3_u32(vec3<u32>(4362u, u_input.a, u_input.a) | u_input.c, u_input.c), -2147483647i, arg_1.d, Struct_1(_wgslsmith_f_op_f32(select(arg_2.x, 338f, !all(vec4<bool>(false, arg_1.a, arg_1.a, arg_1.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.yz) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.c.b) + arg_1.c.b)), arg_1.c.c, -649f, ~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(-13496i, -1i)) >> (~u_input.c.yx % vec2<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.c.a * 564f)))) + _wgslsmith_f_op_f32(ceil(func_4(func_2(Struct_3(4294967295u), Struct_4(Struct_1(var_0.c.d, var_0.c.b, vec3<i32>(var_0.c.e.x, -14683i, u_input.d.x), arg_1.c.a, arg_1.c.e), true, Struct_2(true, 63453i, Struct_1(1217f, arg_1.d.b, arg_1.d.c, 2163f, arg_1.d.e), var_0.c)))).d.a))) + -752f);
    let var_2 = firstLeadingBit(select(var_0.c.e, u_input.d, true));
    var var_3 = max(abs(-vec4<i32>(reverseBits(-12945i), 0i, -35i, arg_1.d.e.x)), vec4<i32>(u_input.e, -abs(u_input.d.x), max(i32(-1i) * -1i, select(-2147483647i, -15651i, false)), -(i32(-1i) * -5809i)) << (min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 24321u, 43544u, 4294967295u), reverseBits(vec4<u32>(u_input.a, 0u, 1u, 1u)), vec4<u32>(1u, 46863u, u_input.c.x, 1u)), select(abs(vec4<u32>(u_input.b, 0u, u_input.a, 1u)), vec4<u32>(u_input.a, u_input.b, u_input.a, 1854u), var_0.a && true)) % vec4<u32>(32u)));
    var_3 = ~vec4<i32>(u_input.d.x, var_2.x, _wgslsmith_dot_vec3_i32(var_0.c.c & var_3.zzy, -firstLeadingBit(vec3<i32>(-1i, 2147483647i, var_2.x))), u_input.e);
    return var_0.c;
}

fn func_6(arg_0: Struct_4) -> Struct_2 {
    let var_0 = ~u_input.c;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.c.b.x, arg_0.c.c.b.x, -756f, arg_0.c.d.a) - vec4<f32>(-653f, arg_0.c.c.a, -334f, -157f)) * vec4<f32>(arg_0.a.b.x, -1000f, arg_0.c.c.b.x, 694f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_0.a.d, arg_0.c.d.d)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -137f), arg_0.c.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.d)))))));
    let var_3 = Struct_2(arg_0.c.a, _wgslsmith_mult_i32(abs(-5704i), firstTrailingBit(_wgslsmith_mod_i32(arg_0.c.d.e.x >> (4294967295u % 32u), ~0i))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_0.c.d.b.x)), _wgslsmith_f_op_f32(-arg_0.c.c.d), any(vec4<bool>(true, arg_0.b, arg_0.c.a, arg_0.c.a)))) * 584f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-985f)), _wgslsmith_f_op_f32(trunc(-143f)))), func_4(Struct_3(_wgslsmith_div_u32(var_0.x, 4294967295u))).d.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(306f, _wgslsmith_f_op_f32(f32(-1f) * -2168f))))), vec2<i32>(-2147483647i, -1i)), func_4(Struct_3(u_input.b)).c);
    let var_4 = vec3<u32>(u_input.a, 1u, u_input.c.x) & vec3<u32>(~45985u, var_0.x, ~(u_input.b ^ 94181u));
    return arg_0.c;
}

fn func_1() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(step(-1035f, _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2108f)), _wgslsmith_f_op_f32(f32(-1f) * -1645f)))));
    var var_1 = func_6(Struct_4(func_5(u_input.d, func_4(func_2(Struct_3(4294967295u), Struct_4(Struct_1(232f, vec2<f32>(1000f, 710f), vec3<i32>(u_input.d.x, u_input.e, 10546i), var_0, u_input.d), false, Struct_2(true, 2147483647i, Struct_1(var_0, vec2<f32>(-322f, var_0), vec3<i32>(u_input.e, -1i, -1i), -1000f, vec2<i32>(u_input.d.x, 3682i)), Struct_1(var_0, vec2<f32>(var_0, var_0), vec3<i32>(u_input.e, u_input.e, 0i), var_0, vec2<i32>(u_input.e, 39006i)))))), vec3<f32>(-198f, func_4(Struct_3(u_input.a)).d.d, -684f)), !(u_input.a <= (u_input.a | u_input.b)), func_4(Struct_3(_wgslsmith_mod_u32(67712u, 42000u)))));
    var var_2 = Struct_4(var_1.c, var_1.a, Struct_2(func_6(Struct_4(Struct_1(429f, var_1.c.b, var_1.d.c, var_1.d.a, vec2<i32>(u_input.e, u_input.e)), false || var_1.a, func_4(Struct_3(u_input.b)))).a, u_input.d.x, Struct_1(-851f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, -476f), vec2<f32>(-728f, -1433f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(280f, -2017f))), vec3<i32>(i32(-1i) * -3817i, var_1.b, select(-59137i, u_input.e, var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0), var_1.d.c.xz), func_4(Struct_3(4294967295u)).c));
    var_2 = Struct_4(var_2.a, func_4(Struct_3(_wgslsmith_clamp_u32(~u_input.a, 0u, 18568u))).a, Struct_2(false, u_input.e, func_4(func_2(func_2(Struct_3(2418u), Struct_4(var_2.a, false, Struct_2(var_1.a, -2147483647i, var_2.a, Struct_1(var_0, vec2<f32>(715f, var_1.c.d), var_1.c.c, 602f, vec2<i32>(2147483647i, -10050i))))), Struct_4(var_2.a, true, var_2.c))).c, func_6(Struct_4(func_6(Struct_4(Struct_1(1526f, vec2<f32>(704f, -1053f), var_1.c.c, var_0, vec2<i32>(-37354i, var_2.c.b)), var_2.b, var_2.c)).d, false, var_2.c)).c));
    var_1 = var_2.c;
    return ~_wgslsmith_mult_vec3_u32(~abs(vec3<u32>(u_input.a, u_input.a, 1u)), ~(~(u_input.c & vec3<u32>(728u, u_input.a, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec3<u32>(1u, firstLeadingBit(u_input.b) << (~u_input.a % 32u), ~abs(1u))) ^ min(countOneBits(abs(u_input.c) << (~vec3<u32>(29363u, 4294967295u, 19948u) % vec3<u32>(32u))), ~vec3<u32>(firstTrailingBit(41723u), _wgslsmith_clamp_u32(68475u, 67344u, 12931u), 0u));
    var_0 = ~u_input.c;
    var var_1 = vec2<bool>(true, true);
    let var_2 = var_1.x;
    var_0 = u_input.c;
    var_0 = func_1();
    var var_3 = ~59057u;
    let x = u_input.a;
    s_output = StorageBuffer(1i, abs(_wgslsmith_mod_vec2_u32(firstTrailingBit(~var_0.xz), ~_wgslsmith_mult_vec2_u32(u_input.c.zz, vec2<u32>(u_input.b, 28575u)))), vec2<i32>(func_6(Struct_4(Struct_1(-1244f, vec2<f32>(955f, -1071f), vec3<i32>(-12808i, u_input.d.x, 1344i), -896f, vec2<i32>(u_input.e, u_input.d.x)), select(var_1.x, true, var_1.x), Struct_2(false, u_input.d.x, Struct_1(1071f, vec2<f32>(-608f, 557f), vec3<i32>(2147483647i, -2147483647i, u_input.e), -184f, vec2<i32>(u_input.e, u_input.d.x)), Struct_1(977f, vec2<f32>(-870f, -1332f), vec3<i32>(6944i, u_input.e, u_input.e), -1662f, vec2<i32>(u_input.d.x, u_input.d.x))))).c.c.x, u_input.e));
}

