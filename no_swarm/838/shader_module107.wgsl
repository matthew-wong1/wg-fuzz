struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec4<i32> {
    var var_0 = 14391u;
    var var_1 = _wgslsmith_sub_vec4_i32(abs(vec4<i32>(2147483647i, firstLeadingBit(-1i), u_input.d.x, -1i)), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, u_input.d.x), vec4<i32>(-25770i, u_input.d.x, u_input.d.x, -31264i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.d.x, 2147483647i, 2147483647i), vec4<i32>(1i, 2147483647i, 11454i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, 68113i, u_input.d.x)), vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, u_input.d.x) ^ vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)), -(~vec4<i32>(-80711i, u_input.d.x, u_input.d.x, u_input.d.x)), -vec4<i32>(83066i, u_input.d.x, u_input.d.x, u_input.d.x)), ~select(firstTrailingBit(vec4<i32>(u_input.d.x, -1i, -1i, 2147483647i)), ~vec4<i32>(u_input.d.x, 0i, 18955i, 4293i), false)));
    var var_2 = u_input.b;
    var_1 = -vec4<i32>(u_input.d.x, min(42636i, _wgslsmith_mod_i32(var_1.x, 651i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-2147483647i, var_1.x, -16121i, u_input.d.x)), vec4<i32>(1i, var_1.x, u_input.d.x, u_input.d.x)), _wgslsmith_div_i32(u_input.d.x, -u_input.d.x)), 1i);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1270f, 533f, -1165f, -450f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-707f, 292f, -120f, -860f) - vec4<f32>(-1421f, 595f, -1286f, 364f))))), vec3<i32>(-(~var_1.x), 18918i, -826i), vec4<i32>(_wgslsmith_div_i32(1480i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(-15032i, 17213i), u_input.d.x & var_1.x, firstLeadingBit(40501i))), max(abs(-9193i), u_input.d.x), _wgslsmith_sub_i32(0i, var_1.x) ^ -u_input.d.x, var_1.x), ~_wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(53216u, 0u, u_input.b, 0u), vec4<u32>(u_input.b, u_input.c.x, 64723u, 0u)), select(vec4<u32>(u_input.c.x, 25084u, 4294967295u, u_input.e.x), vec4<u32>(6708u, 1u, u_input.c.x, u_input.a), true)));
    return -vec4<i32>(~var_1.x, reverseBits(1i), var_1.x, ~_wgslsmith_sub_i32(var_1.x, 2800i) << (var_3.d.x % 32u));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)))), firstTrailingBit(select(_wgslsmith_mult_vec3_i32(vec3<i32>(-22809i, 20420i, u_input.d.x) & vec3<i32>(-1052i, -18201i, 0i), ~u_input.d), u_input.d, !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), (abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, -1i, -1i), vec4<i32>(u_input.d.x, -21307i, u_input.d.x, u_input.d.x))) >> (~vec4<u32>(u_input.c.x, 88320u, 0u, u_input.b) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_i32(~firstTrailingBit(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)), vec4<i32>(-44109i, u_input.d.x, u_input.d.x, 1i) & func_3()), ~reverseBits(vec4<u32>(0u, u_input.b, 1u, _wgslsmith_mod_u32(u_input.b, 4294967295u))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1059f, _wgslsmith_div_f32(var_0.a.x, var_0.a.x)) + -1039f)), select(select(vec3<bool>(u_input.b <= 6412u, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true)))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), u_input.a > 9571u)), true), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-585f - arg_1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -139f)), var_0.c);
    let var_2 = var_1;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_2.d, _wgslsmith_f_op_f32(315f - _wgslsmith_f_op_f32(-387f * arg_1.x)), var_1.b.x)))), var_1.b, var_2.c, arg_0.x, max(select(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(54543i, 2147483647i), vec2<i32>(var_2.c.c.x, -69932i)), abs(4264i), 3243i, _wgslsmith_div_i32(-1978i, u_input.d.x)), countOneBits(var_1.c.c) << (var_0.d % vec4<u32>(32u)), !(!vec4<bool>(true, var_2.b.x, true, false))), firstLeadingBit(vec4<i32>(var_0.b.x | -306i, -26189i, var_1.e.x, firstTrailingBit(u_input.d.x)))));
    var var_4 = var_1;
    return select(var_1.e.xww, firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(var_3.c.b.x, 0i) | abs(-7584i), var_1.e.x, var_4.c.b.x)), all(!var_2.b.zz));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    let var_0 = 1538f;
    let var_1 = 13641u;
    let var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_2.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.a), _wgslsmith_f_op_vec4_f32(floor(var_2.a)))));
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: vec4<u32>) -> vec3<bool> {
    let var_0 = arg_1;
    var var_1 = func_4(-631f, Struct_2(arg_2, vec3<bool>(true, true, select(true, true, select(true, false, false))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.a.x, arg_1.a.x, -451f, arg_2)))), _wgslsmith_div_vec3_i32(func_2(vec4<f32>(-1303f, arg_2, arg_1.a.x, -1000f), vec4<f32>(1532f, -222f, -907f, arg_2)), vec3<i32>(arg_1.c.x, u_input.d.x, 43779i)), -(vec4<i32>(1i, arg_1.b.x, u_input.d.x, arg_1.b.x) >> (vec4<u32>(8741u, arg_1.d.x, 4294967295u, arg_3.x) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(55457u, 4294967295u, arg_1.d.x, arg_1.d.x), vec4<u32>(arg_1.d.x, 12391u, 5014u, 25255u))), 1177f, firstLeadingBit(~max(vec4<i32>(var_0.b.x, 1i, arg_1.b.x, 0i), var_0.c))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-244f))), 902f, _wgslsmith_f_op_f32(ceil(-2385f))), ~var_0.c.zzy, _wgslsmith_div_vec4_i32(~arg_1.c, select(arg_1.c, var_0.c, vec4<bool>(true, false, true, true)) & arg_1.c), (select(arg_3, vec4<u32>(69739u, var_0.d.x, arg_0, 41503u), true) << (min(arg_3, vec4<u32>(arg_3.x, 4294967295u, 52854u, 0u)) % vec4<u32>(32u))) & arg_1.d));
    var_1 = Struct_2(var_1.a, var_1.b, Struct_1(vec4<f32>(1014f, _wgslsmith_f_op_f32(-2094f * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.x)) - var_0.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -696f), _wgslsmith_f_op_f32(step(1296f, -1852f))))), reverseBits(func_2(_wgslsmith_div_vec4_f32(arg_1.a, vec4<f32>(arg_1.a.x, -948f, 892f, -938f)), _wgslsmith_f_op_vec4_f32(-var_1.c.a))), var_0.c, var_0.d), arg_2, abs(func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -718f), _wgslsmith_f_op_f32(-var_1.a))), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1154f), func_4(var_0.a.x, Struct_2(var_0.a.x, vec3<bool>(var_1.b.x, var_1.b.x, true), var_0, -538f, var_1.c.c), var_0), Struct_1(arg_1.a, vec3<i32>(arg_1.b.x, arg_1.c.x, arg_1.c.x), vec4<i32>(var_0.b.x, u_input.d.x, arg_1.c.x, -2147483647i), arg_3)), Struct_1(_wgslsmith_f_op_vec4_f32(arg_1.a + vec4<f32>(-526f, arg_1.a.x, 272f, -343f)), vec3<i32>(-2147483647i, 2147483647i, 33268i), vec4<i32>(var_0.b.x, var_1.c.c.x, 35435i, arg_1.b.x), vec4<u32>(var_1.c.d.x, 0u, 0u, 31580u) << (var_0.d % vec4<u32>(32u)))).c.c));
    var var_2 = !all(vec4<bool>(var_1.b.x, true, !(!var_1.b.x), select(false, var_0.b.x <= -2147483647i, !var_1.b.x)));
    var_2 = all(!vec4<bool>(var_1.b.x, false, var_1.b.x & false, all(vec2<bool>(var_1.b.x, var_1.b.x))));
    return select(var_1.b, vec3<bool>(!func_4(_wgslsmith_f_op_f32(var_0.a.x - -1000f), func_4(1037f, Struct_2(-476f, var_1.b, var_1.c, var_0.a.x, vec4<i32>(var_1.c.c.x, 2147483647i, arg_1.c.x, 22438i)), arg_1), Struct_1(vec4<f32>(arg_1.a.x, 1600f, var_1.a, arg_1.a.x), arg_1.c.yzz, vec4<i32>(arg_1.c.x, var_1.e.x, var_1.c.c.x, u_input.d.x), arg_1.d)).b.x, all(vec2<bool>(false, var_1.b.x)) || var_1.b.x, true), false);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = !(!(!func_1(firstLeadingBit(arg_2.d.x), Struct_1(vec4<f32>(arg_2.a.x, 1613f, arg_2.a.x, arg_0.d), arg_0.c.c.wwy, vec4<i32>(-1i, arg_0.c.b.x, u_input.d.x, arg_2.c.x), arg_2.d), 1184f, vec4<u32>(arg_0.c.d.x, 47074u, 4294967295u, u_input.a) & vec4<u32>(u_input.c.x, 53661u, 1u, 51419u)).x));
    let var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.a.x + arg_0.c.a.x)), 1420f, arg_0.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.x)))), arg_2.c.wyx << (_wgslsmith_mod_vec3_u32(arg_0.c.d.ywy, ~vec3<u32>(var_1.c.d.x, 1u, 45421u)) % vec3<u32>(32u)), vec4<i32>(~(1i | func_2(vec4<f32>(var_1.d, arg_0.c.a.x, var_1.a, -1810f), var_1.c.a).x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.e.x, arg_2.b.x, arg_2.c.x), u_input.d) & 1i, i32(-1i) * -reverseBits(0i), 2147483647i), arg_0.c.d);
    var var_3 = max(4294967295u, select(_wgslsmith_div_u32(1u, 1u), abs(1u), true) | ~firstTrailingBit(~38059u));
    var_3 = abs(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, arg_2.d.x >> (u_input.e.x % 32u), _wgslsmith_sub_u32(18240u, var_2.d.x)), _wgslsmith_mult_vec3_u32(~arg_2.d.wxz, vec3<u32>(u_input.e.x, arg_2.d.x, 1u)))) ^ reverseBits(func_4(func_4(_wgslsmith_f_op_f32(f32(-1f) * -617f), func_4(var_2.a.x, Struct_2(-1088f, vec3<bool>(arg_1.x, arg_1.x, true), var_1.c, arg_0.c.a.x, var_2.c), arg_2), func_4(-1556f, Struct_2(var_2.a.x, var_1.b, arg_2, arg_0.a, arg_0.e), Struct_1(arg_0.c.a, arg_0.e.ywx, var_1.e, arg_0.c.d)).c).c.a.x, func_4(func_4(688f, Struct_2(arg_0.c.a.x, arg_0.b, Struct_1(var_2.a, u_input.d, vec4<i32>(5662i, -55895i, u_input.d.x, var_1.c.b.x), arg_0.c.d), var_1.a, vec4<i32>(arg_2.b.x, arg_0.c.c.x, arg_2.b.x, arg_0.e.x)), arg_0.c).d, Struct_2(arg_0.a, arg_0.b, arg_0.c, arg_2.a.x, vec4<i32>(u_input.d.x, 17602i, -25606i, u_input.d.x)), func_4(arg_0.d, Struct_2(-1743f, var_1.b, arg_0.c, 309f, var_2.c), arg_2).c), func_4(_wgslsmith_f_op_f32(ceil(277f)), arg_0, func_4(2380f, Struct_2(var_2.a.x, arg_0.b, Struct_1(vec4<f32>(-1633f, arg_0.c.a.x, -1929f, arg_2.a.x), var_2.b, vec4<i32>(arg_2.c.x, var_2.c.x, -2147483647i, arg_2.c.x), vec4<u32>(var_2.d.x, var_2.d.x, u_input.c.x, 12029u)), -385f, vec4<i32>(var_1.c.c.x, var_2.c.x, arg_2.b.x, -21839i)), arg_2).c).c).c.d.x);
    return StorageBuffer(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(arg_2.c.x, 38839i, 14690i)) & firstLeadingBit(vec3<i32>(-1i, -1i, 23017i)), var_2.c.zyw), var_2.c.yzy), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_2(-302f, func_1(1u, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(420f, 939f, -819f, 304f) - vec4<f32>(1000f, -350f, 207f, -123f)), vec3<i32>(u_input.d.x, u_input.d.x, 2949i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 968i), vec4<u32>(3312u, u_input.b, u_input.e.x, u_input.c.x)), _wgslsmith_f_op_f32(-143f - -795f), select(vec4<u32>(39984u, 33103u, 4294967295u, 0u), ~vec4<u32>(4294967295u, 44658u, u_input.a, u_input.c.x), vec4<bool>(false, false, false, true))), func_4(-1000f, func_4(_wgslsmith_f_op_f32(-1396f * -361f), func_4(-1000f, Struct_2(-572f, vec3<bool>(true, true, true), Struct_1(vec4<f32>(520f, -955f, 219f, -1000f), u_input.d, vec4<i32>(u_input.d.x, 1i, u_input.d.x, u_input.d.x), vec4<u32>(u_input.e.x, 8687u, 4294967295u, 121021u)), 528f, vec4<i32>(2080i, 1i, u_input.d.x, u_input.d.x)), Struct_1(vec4<f32>(977f, -960f, 453f, -800f), u_input.d, vec4<i32>(-8450i, -28549i, 30467i, u_input.d.x), vec4<u32>(u_input.b, u_input.a, 72055u, 4294967295u))), Struct_1(vec4<f32>(-1101f, -1607f, 178f, 1158f), vec3<i32>(u_input.d.x, 28741i, -6670i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -29163i), vec4<u32>(1u, u_input.e.x, u_input.c.x, 4294967295u))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1911f, 201f, 197f) * vec4<f32>(871f, 1000f, -1208f, -2391f)), vec3<i32>(92484i, u_input.d.x, u_input.d.x) ^ u_input.d, -vec4<i32>(-20075i, 4620i, u_input.d.x, -2147483647i), ~vec4<u32>(18918u, 13659u, u_input.c.x, u_input.c.x))).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(1099f, Struct_2(613f, vec3<bool>(true, true, true), Struct_1(vec4<f32>(-717f, 759f, -1028f, -873f), u_input.d, vec4<i32>(21328i, u_input.d.x, u_input.d.x, -36564i), vec4<u32>(u_input.a, 0u, u_input.a, 28363u)), 1812f, vec4<i32>(-777i, -2147483647i, 37377i, -1i)), Struct_1(vec4<f32>(-1094f, -951f, -1026f, 488f), vec3<i32>(-1i, 25723i, u_input.d.x), vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, u_input.d.x), vec4<u32>(u_input.c.x, 76998u, u_input.c.x, u_input.a))).a + 619f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1014f)), -1100f))), vec4<i32>(_wgslsmith_mult_i32(47486i, ~(-6054i)), ~_wgslsmith_div_i32(u_input.d.x, 19970i), 1i, firstTrailingBit(u_input.d.x))), select(vec2<bool>(!all(vec2<bool>(true, true)), true), !select(func_1(4294967295u, Struct_1(vec4<f32>(-558f, -817f, -1253f, -580f), u_input.d, vec4<i32>(u_input.d.x, u_input.d.x, -34158i, 1i), vec4<u32>(u_input.a, u_input.e.x, u_input.b, 1u)), -155f, vec4<u32>(u_input.c.x, u_input.a, u_input.c.x, 4718u)).yy, vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), func_1(4294967295u, Struct_1(vec4<f32>(353f, 3476f, 156f, -1080f), u_input.d, vec4<i32>(u_input.d.x, 62975i, u_input.d.x, -1i), vec4<u32>(0u, 0u, u_input.b, u_input.b)), 183f, vec4<u32>(70273u, u_input.c.x, u_input.b, u_input.a)).zy, true), true)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(1443f, _wgslsmith_f_op_f32(sign(-665f)))), 379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -235f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-112f)), _wgslsmith_f_op_f32(min(-316f, 1033f))))), vec3<i32>(-1i) * -u_input.d, firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, u_input.d.x, 0i) & vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), firstLeadingBit(vec4<i32>(80i, -9109i, -14454i, u_input.d.x)))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(4294967295u, 27981u, u_input.a, 4294967295u)))));
}

