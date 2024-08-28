struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -40578i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = vec4<i32>(0i, _wgslsmith_mult_i32(~2147483647i, 1i), ~0i, abs(select(min(-19182i, -2147483647i) >> ((arg_0.x & u_input.a.x) % 32u), _wgslsmith_add_i32(0i, -29236i), any(vec2<bool>(true, true)))));
    return select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(!(!any(vec4<bool>(true, true, false, true))), true, true), vec3<bool>(true, true, true));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_2) -> u32 {
    let var_0 = u_input.a.xyz;
    global0 = ~_wgslsmith_dot_vec3_i32(-(~vec3<i32>(arg_2.c.x, -33249i, arg_2.c.x)), arg_2.c.yzz) | _wgslsmith_dot_vec3_i32(firstLeadingBit((vec3<i32>(arg_2.c.x, arg_2.e, -4757i) << (var_0 % vec3<u32>(32u))) ^ vec3<i32>(arg_2.c.x, arg_2.c.x, arg_2.c.x)), min(~(-arg_2.c.zxz), _wgslsmith_sub_vec3_i32(select(arg_2.c.xwy, vec3<i32>(arg_2.e, -21037i, -2147483647i), arg_0), vec3<i32>(2147483647i, -29856i, arg_2.c.x))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.a.b, _wgslsmith_f_op_f32(arg_1.x + arg_1.x))));
    let var_2 = arg_2;
    var var_3 = Struct_2(arg_2.a, arg_2.a.c, var_2.c, u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1960i, ~var_2.e), var_2.c.x & arg_2.e));
    return ~arg_2.a.c & firstTrailingBit(~(~u_input.a.x) ^ u_input.a.x);
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: f32) -> i32 {
    global0 = i32(-1i) * -_wgslsmith_mult_i32(-2147483647i, ~reverseBits(0i));
    global0 = 1i;
    var var_0 = ~vec4<u32>(func_4(func_3(max(u_input.a.xw, vec2<u32>(33724u, arg_1.x)), Struct_1(u_input.a.yx, -576f, arg_1.x, 1u, arg_1.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, 455f, -861f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1549f, arg_2, -396f) * vec3<f32>(arg_0, arg_2, arg_0)))), Struct_2(Struct_1(arg_1.yx, -180f, 4294967295u, 94135u, 25765u), 4294967295u, _wgslsmith_div_vec4_i32(vec4<i32>(-53545i, -15482i, -2147483647i, 1i), vec4<i32>(37620i, -44379i, 1i, 1i)), reverseBits(arg_1.x), countOneBits(2147483647i))), 10036u, select(1u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~arg_1.x < (0u >> (0u % 32u))), 1u);
    let var_1 = vec4<i32>(countOneBits(firstTrailingBit(_wgslsmith_mod_i32(1i, countOneBits(2147483647i)))), _wgslsmith_div_i32(abs(i32(-1i) * -1i), ~abs(1i)) ^ (_wgslsmith_div_i32(1i, -16175i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -27626i, 37704i, 1i), vec4<i32>(-22534i, 2147483647i, 7552i, -63436i))), -4183i, -50229i);
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.x, 7971u), vec2<u32>(3598u, var_0.x)), var_0.wy), _wgslsmith_f_op_f32(arg_0 * -1657f), firstTrailingBit(~(arg_1.x | 0u)), 38136u, 36072u), ~(~func_4(vec3<bool>(true, true, true), vec3<f32>(-233f, arg_2, 364f), Struct_2(Struct_1(vec2<u32>(var_0.x, var_0.x), -1035f, 61608u, 1u, arg_1.x), arg_1.x, vec4<i32>(-8195i, var_1.x, var_1.x, var_1.x), 4294967295u, 1i))), vec4<i32>(var_1.x, _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(2147483647i, -2147483647i, 2147483647i, var_1.x)), var_1), var_1.x, -25715i), min(0u, 0u), min(firstTrailingBit(countOneBits(var_1.x)), var_1.x) << (var_0.x % 32u));
    return _wgslsmith_mod_i32(var_2.e, -43837i);
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_3(arg_0, vec2<u32>(func_4(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(445f, -1997f, 1575f)))), Struct_2(arg_0, ~1u, vec4<i32>(51438i, arg_1, arg_1, 2147483647i), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), countOneBits(-1i))), firstTrailingBit(min(arg_0.e, 1u)) | 70122u), arg_0, ~countOneBits(u_input.a.yzz), Struct_2(arg_0, _wgslsmith_add_u32(~4294967295u, _wgslsmith_div_u32(u_input.a.x, 58980u)), ~abs(abs(vec4<i32>(arg_1, arg_1, -1i, -31088i))), _wgslsmith_mod_u32(~_wgslsmith_add_u32(29659u, 99924u), arg_0.c), arg_1));
    return Struct_2(Struct_1(select(~(var_0.b << (vec2<u32>(arg_0.a.x, 75569u) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(~var_0.d.yx, max(arg_0.a, vec2<u32>(69501u, u_input.a.x))), vec2<bool>(true, any(vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(var_0.e.a.b - _wgslsmith_f_op_f32(-var_0.e.a.b)), firstTrailingBit(~4294967295u), _wgslsmith_clamp_u32(var_0.c.d << (_wgslsmith_sub_u32(arg_0.c, 1u) % 32u), 15570u, 0u), ~(~(var_0.a.e >> (var_0.c.a.x % 32u)))), _wgslsmith_mod_u32(122974u, 70856u), vec4<i32>(-62862i, arg_1, firstTrailingBit(firstTrailingBit(-1445i) ^ _wgslsmith_mult_i32(11257i, 43208i)), -64481i), ~select(~1u, ~(~u_input.a.x), false), 47892i);
}

fn func_1() -> Struct_3 {
    let var_0 = func_5(Struct_1(~_wgslsmith_sub_vec2_u32(~u_input.a.wx, u_input.a.zw), _wgslsmith_f_op_f32(-1130f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(253f - -2057f) * _wgslsmith_f_op_f32(1748f + -1000f))), _wgslsmith_clamp_u32(~u_input.a.x, 1u, countOneBits(u_input.a.x)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(max(u_input.a.x, 1u), u_input.a.x >> (u_input.a.x % 32u), ~56071u), ~7833u), u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_add_i32(func_2(-1175f, vec3<u32>(61601u, u_input.a.x, 4294967295u), _wgslsmith_f_op_f32(-1112f + 1174f)), i32(-1i) * -2147483647i), -_wgslsmith_add_i32(~(-15739i), ~(-1i))));
    let var_1 = firstTrailingBit(_wgslsmith_clamp_u32(select(~(~u_input.a.x), 29988u, !(var_0.e >= 13342i)), firstTrailingBit(~u_input.a.x & 0u), 1u));
    global0 = _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_mod_vec3_i32(select(~var_0.c.zxw, vec3<i32>(var_0.c.x, -1i, var_0.e), func_3(vec2<u32>(0u, u_input.a.x), Struct_1(vec2<u32>(1u, var_1), 671f, 4294967295u, 0u, 1u))), vec3<i32>(_wgslsmith_sub_i32(-2147483647i, var_0.e), -var_0.e, _wgslsmith_add_i32(35566i, -2147483647i)))), var_0.c.wwz);
    let var_2 = 1i;
    global0 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~var_0.c, _wgslsmith_mult_vec4_i32(vec4<i32>(var_2, var_0.c.x, -39826i, 5447i) | vec4<i32>(var_2, -29951i, 0i, -2147483647i), -var_0.c)), func_5(Struct_1(~vec2<u32>(1u, 4294967295u), _wgslsmith_f_op_f32(-286f - -464f), 4294967295u, 1u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 1u, u_input.a.x, 1u))), _wgslsmith_div_i32(firstLeadingBit(50854i), var_0.c.x)).e), i32(-1i) * -(~(2147483647i | var_2)));
    return Struct_3(func_5(var_0.a, var_0.c.x).a, firstTrailingBit(countOneBits(abs(~vec2<u32>(u_input.a.x, 0u)))), Struct_1(vec2<u32>(u_input.a.x, var_1), _wgslsmith_f_op_f32(-1246f + _wgslsmith_f_op_f32(f32(-1f) * -1002f)), func_5(func_5(var_0.a, var_0.c.x).a, var_2).a.c, min(1u, u_input.a.x), 1u), vec3<u32>(u_input.a.x | (~var_0.b >> ((13699u >> (u_input.a.x % 32u)) % 32u)), min(52840u, var_1), var_0.b), func_5(var_0.a, ~46027i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0i;
    var var_0 = func_1();
    let var_1 = Struct_1(select(vec2<u32>(_wgslsmith_mod_u32(48039u, 17713u), _wgslsmith_clamp_u32(23366u, 4294967295u, 42744u)), _wgslsmith_mult_vec2_u32(u_input.a.zy | vec2<u32>(var_0.e.d, 4294967295u), vec2<u32>(var_0.a.a.x, var_0.b.x)), select(false, true, false) && any(vec2<bool>(false, true))) ^ ~u_input.a.zx, _wgslsmith_f_op_f32(max(var_0.e.a.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.b, var_0.a.b)))), firstLeadingBit(~(~46996u)), var_0.c.e, ~(firstLeadingBit(0u) | ~u_input.a.x));
    var_0 = Struct_3(var_1, ~abs(~(~var_0.a.a)), func_1().a, abs(max(abs(vec3<u32>(u_input.a.x, var_0.d.x, 4294967295u) << (vec3<u32>(1u, 26435u, var_1.c) % vec3<u32>(32u))), firstTrailingBit(u_input.a.xyy))), var_0.e);
    var_0 = Struct_3(Struct_1(vec2<u32>(select(~var_1.c, 4294967295u, true), max(u_input.a.x, ~1u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - -617f), _wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_mod_u32(4294967295u, firstTrailingBit(min(9615u, 2420u))), reverseBits(4294967295u), var_1.c), vec2<u32>(var_0.a.a.x, _wgslsmith_add_u32(u_input.a.x, var_0.d.x)), Struct_1(~(var_1.a ^ var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -399f)), countOneBits(~(~var_0.d.x)), _wgslsmith_div_u32(var_1.e, 1u), 16790u), ~vec3<u32>(var_1.e, firstLeadingBit(0u | u_input.a.x), ~(~28767u)), func_5(Struct_1(~vec2<u32>(var_0.e.b, 81565u) << (vec2<u32>(20822u, 51167u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(var_0.e.a.b - var_0.c.b), true)), firstTrailingBit(11304u) >> ((4294967295u ^ var_1.a.x) % 32u), (1u | u_input.a.x) << (~36260u % 32u), ~var_0.a.a.x | _wgslsmith_dot_vec2_u32(u_input.a.xz, var_1.a)), -17391i));
    var_0 = func_1();
    var_0 = func_1();
    var var_2 = Struct_2(var_1, 23902u, var_0.e.c, 1u, abs(~func_2(var_0.a.b, u_input.a.wzz, 533f)) << (0u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_sub_u32(~42275u & u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a ^ u_input.a, vec4<u32>(22800u, var_2.a.e, 3764u, var_1.d))), ~func_4(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, var_1.b, var_2.a.b)), Struct_2(var_2.a, var_0.d.x, vec4<i32>(-1i, var_0.e.e, 41493i, -31620i), u_input.a.x, 0i)), abs(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_1.a, vec2<u32>(var_1.c, var_1.e)), vec2<u32>(4294967295u, u_input.a.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_5(Struct_1(var_2.a.a, var_2.a.b, 83739u, var_1.d, 12624u), -2147483647i).a.b, _wgslsmith_f_op_f32(f32(-1f) * -803f), var_2.a.b)), _wgslsmith_mult_u32(var_0.c.c, 21235u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_5(var_2.a, -37903i).a.b), _wgslsmith_f_op_f32(395f - 746f)))), 0i);
}

