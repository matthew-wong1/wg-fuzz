struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = 1263f;
    let var_1 = Struct_2(_wgslsmith_add_u32(arg_0.a, 4294967295u), !arg_0.b, firstTrailingBit(vec3<i32>(arg_0.c.x, arg_0.c.x ^ 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.x, -1i, arg_0.c.x), vec3<i32>(arg_0.c.x, arg_0.c.x, -27301i)))) ^ min(~arg_0.c, arg_0.c));
    let var_2 = var_1.a;
    let var_3 = var_1.c;
    let var_4 = vec4<f32>(var_0, _wgslsmith_f_op_f32(sign(-501f)), -720f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-145f - 635f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2007f, var_0))) - _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(-1040f, 463f)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -124f))) * 986f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_4.x)), _wgslsmith_f_op_f32(-var_0)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> i32 {
    var var_0 = vec4<bool>(select(select(arg_1.c.x > arg_0.x, !arg_1.b.x, arg_1.b.x) && false, false, true), all(select(vec3<bool>(false, arg_1.b.x, arg_1.b.x), vec3<bool>(arg_1.b.x, false, arg_1.b.x), true)) && all(!(!vec3<bool>(false, true, arg_1.b.x))), _wgslsmith_f_op_f32(func_3(arg_1)) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(247f + -792f) * -1000f))), all(select(!(!vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, false)), !(!vec4<bool>(arg_1.b.x, true, arg_1.b.x, false)), ~4294967295u != _wgslsmith_mult_u32(arg_1.a, 4294967295u))));
    var var_1 = vec2<f32>(518f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(529f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2027f * 1143f))))));
    let var_2 = 4294967295u;
    var_0 = select(!(!select(!vec4<bool>(false, false, arg_1.b.x, arg_1.b.x), vec4<bool>(arg_1.b.x, var_0.x, arg_1.b.x, var_0.x), !vec4<bool>(false, true, arg_1.b.x, false))), vec4<bool>(true, true, true, true), arg_1.b.x);
    let var_3 = Struct_4(Struct_1(true, 4294967295u, vec3<u32>(~max(1u, 4294967295u), ~firstLeadingBit(0u), var_2), true, !(!select(vec3<bool>(true, true, var_0.x), var_0.xzx, var_0.x))), ~firstTrailingBit(select(firstTrailingBit(vec4<i32>(-2147483647i, -17235i, arg_1.c.x, arg_0.x)), vec4<i32>(2147483647i, -2147483647i, arg_1.c.x, -2147483647i), false)), -30700i, !select(select(vec2<bool>(true, var_0.x), select(arg_1.b, vec2<bool>(false, true), true), select(vec2<bool>(false, var_0.x), vec2<bool>(true, true), vec2<bool>(false, false))), select(arg_1.b, select(arg_1.b, vec2<bool>(true, arg_1.b.x), arg_1.b), !arg_1.b.x), vec2<bool>(!arg_1.b.x, select(var_0.x, false, arg_1.b.x))), Struct_2(53496u, vec2<bool>(arg_1.a > ~42703u, (var_2 >> (u_input.a % 32u)) == (0u | var_2)), ~(~reverseBits(vec3<i32>(-1i, arg_0.x, -7922i)))));
    return _wgslsmith_add_i32(min(_wgslsmith_mult_i32(arg_1.c.x, -_wgslsmith_div_i32(var_3.c, -13417i)), select(~countOneBits(var_3.b.x), ~0i, false & !arg_1.b.x)), 2147483647i);
}

fn func_4(arg_0: vec3<i32>) -> f32 {
    var var_0 = -233f;
    var var_1 = Struct_5(Struct_2(firstTrailingBit(u_input.a), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(false, false, true, false)), true), true), vec3<i32>(arg_0.x, select(_wgslsmith_mod_i32(-40473i, arg_0.x), 44583i, true), func_2(arg_0, Struct_2(0u, vec2<bool>(true, true), vec3<i32>(arg_0.x, 2147483647i, 2147483647i))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1125f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-289f, 188f))), -1123f)));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> Struct_4 {
    var var_0 = _wgslsmith_add_u32(~(~min(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 22543u), vec2<u32>(u_input.a, 81510u)))), 4294967295u);
    var var_1 = Struct_5(arg_2.b);
    var var_2 = abs(4294967295u);
    return Struct_4(Struct_1(false & arg_0.e.b.x, countOneBits(u_input.a), abs(~max(vec3<u32>(4294967295u, 20751u, 9149u), vec3<u32>(arg_2.a, 105415u, 17657u))), true, select(select(!vec3<bool>(false, true, var_1.a.b.x), select(vec3<bool>(true, arg_2.b.b.x, arg_0.e.b.x), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), !var_1.a.b.x), select(select(vec3<bool>(arg_2.e.b.x, true, true), vec3<bool>(true, true, true), vec3<bool>(arg_2.d.b.x, false, true)), vec3<bool>(arg_2.b.b.x, false, true), arg_2.d.b.x || true), true)), ~(~abs(vec4<i32>(-2147483647i, -1i, var_1.a.c.x, -2147483647i)) ^ ((vec4<i32>(arg_2.b.c.x, 0i, arg_2.e.c.x, arg_0.b.c.x) >> (vec4<u32>(u_input.a, 0u, arg_2.b.a, arg_0.d.a) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_i32(vec4<i32>(-47052i, arg_2.e.c.x, -2147483647i, arg_2.d.c.x), vec4<i32>(6327i, arg_2.e.c.x, 0i, 60814i)))), var_1.a.c.x, arg_0.d.b, Struct_2(firstTrailingBit(1u), select(arg_2.d.b, vec2<bool>(true, arg_2.e.b.x), arg_2.e.b), firstTrailingBit(countOneBits(var_1.a.c))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> vec2<bool> {
    var var_0 = arg_0.e;
    let var_1 = func_5(arg_0, _wgslsmith_f_op_f32(func_4(max(vec3<i32>(34370i, func_2(vec3<i32>(-9728i, var_0.c.x, arg_2.x), Struct_2(arg_0.a, vec2<bool>(false, arg_0.d.b.x), vec3<i32>(2147483647i, 2147483647i, arg_3.x))), var_0.c.x ^ arg_0.b.c.x), _wgslsmith_clamp_vec3_i32(~var_0.c, firstTrailingBit(arg_0.b.c), vec3<i32>(-48286i, 0i, -29396i))))), arg_0);
    let var_2 = ~var_1.e.a;
    var var_3 = func_5(Struct_3(1u, var_1.e, vec2<i32>(-47781i, firstLeadingBit(arg_3.x)) & min(~var_1.e.c.zx, ~vec2<i32>(var_1.e.c.x, arg_0.b.c.x)), func_5(Struct_3(_wgslsmith_div_u32(var_2, var_0.a), var_1.e, vec2<i32>(arg_2.x, arg_3.x), func_5(arg_0, 267f, Struct_3(arg_0.a, Struct_2(37102u, vec2<bool>(true, true), vec3<i32>(1710i, 6687i, var_1.c)), vec2<i32>(arg_0.b.c.x, arg_3.x), Struct_2(4294967295u, var_1.d, vec3<i32>(29931i, 22659i, var_0.c.x)), arg_0.e)).e, var_1.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1915f - 454f) * _wgslsmith_f_op_f32(func_4(var_0.c))), arg_0).e, var_1.e), _wgslsmith_f_op_f32(-1f), arg_0).a;
    let var_4 = 0i;
    return vec2<bool>(arg_0.b.b.x, any(vec4<bool>(var_0.b.x, true, var_0.b.x, var_1.a.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(all(select(select(vec2<bool>(true, true), func_1(Struct_3(u_input.a, Struct_2(13416u, vec2<bool>(false, false), vec3<i32>(-8254i, -3851i, 44360i)), vec2<i32>(1i, -2147483647i), Struct_2(u_input.a, vec2<bool>(false, true), vec3<i32>(-15054i, -84445i, 0i)), Struct_2(u_input.a, vec2<bool>(true, true), vec3<i32>(-2147483647i, 0i, 28392i))), vec2<i32>(27579i, -2147483647i), vec3<i32>(-1i, 3180i, 30525i), vec2<i32>(1i, 37614i)), true), !func_1(Struct_3(41510u, Struct_2(u_input.a, vec2<bool>(true, true), vec3<i32>(11493i, 32389i, 26242i)), vec2<i32>(69905i, 1i), Struct_2(4294967295u, vec2<bool>(false, false), vec3<i32>(-1i, 48378i, 11040i)), Struct_2(u_input.a, vec2<bool>(true, false), vec3<i32>(14967i, -1i, -2147483647i))), vec2<i32>(2147483647i, -2836i), vec3<i32>(28134i, 465i, 2147483647i), vec2<i32>(21712i, 2147483647i)), true)), true);
    var var_1 = vec4<u32>(~u_input.a, countOneBits(~(~33924u)), _wgslsmith_mult_u32(115767u, 0u), firstTrailingBit(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(12614u, u_input.a, 868u)), firstLeadingBit(vec3<u32>(0u, u_input.a, 25326u)) | (vec3<u32>(0u, 78936u, u_input.a) >> (vec3<u32>(1u, 1u, 19963u) % vec3<u32>(32u))))));
    let var_2 = Struct_4(func_5(Struct_3(countOneBits(~41406u), Struct_2(~var_1.x, !var_0, ~vec3<i32>(67244i, -2147483647i, -2147483647i)), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(0i, -1057i)), vec2<i32>(0i, 0i)), func_5(Struct_3(4294967295u, Struct_2(u_input.a, var_0, vec3<i32>(-24877i, 84138i, -53059i)), vec2<i32>(20625i, -23138i), Struct_2(4294967295u, vec2<bool>(var_0.x, false), vec3<i32>(-11933i, -15799i, 2147483647i)), Struct_2(4294967295u, vec2<bool>(var_0.x, true), vec3<i32>(1i, -1i, -51071i))), 1077f, Struct_3(var_1.x, Struct_2(1u, vec2<bool>(true, var_0.x), vec3<i32>(33576i, 1i, 0i)), vec2<i32>(0i, -77307i), Struct_2(var_1.x, vec2<bool>(true, var_0.x), vec3<i32>(-2147483647i, 31829i, 1i)), Struct_2(u_input.a, var_0, vec3<i32>(-43108i, 2147483647i, 1i)))).e, Struct_2(61168u, vec2<bool>(false, var_0.x), -vec3<i32>(-21190i, -10513i, -1i))), _wgslsmith_f_op_f32(510f * -355f), Struct_3(var_1.x, Struct_2(~28794u, select(var_0, vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x)), vec3<i32>(1i, 1i, 1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(0i, -51110i)), func_5(Struct_3(87618u, Struct_2(92441u, var_0, vec3<i32>(-54404i, -23155i, 20191i)), vec2<i32>(2147483647i, 1i), Struct_2(2730u, vec2<bool>(var_0.x, true), vec3<i32>(-2147483647i, -29953i, -2147483647i)), Struct_2(var_1.x, vec2<bool>(var_0.x, true), vec3<i32>(0i, 2147483647i, 1i))), _wgslsmith_f_op_f32(356f + -2492f), Struct_3(var_1.x, Struct_2(4294967295u, vec2<bool>(var_0.x, var_0.x), vec3<i32>(1i, 78474i, -1i)), vec2<i32>(12519i, 0i), Struct_2(u_input.a, vec2<bool>(var_0.x, var_0.x), vec3<i32>(8574i, -62896i, 2147483647i)), Struct_2(0u, var_0, vec3<i32>(31485i, 1i, 2147483647i)))).e, Struct_2(1u, vec2<bool>(true, true), abs(vec3<i32>(-1i, -2147483647i, 0i))))).a, vec4<i32>(-32487i, _wgslsmith_mod_i32(_wgslsmith_div_i32(i32(-1i) * -2147483647i, func_2(vec3<i32>(19084i, 0i, -54236i), Struct_2(11347u, var_0, vec3<i32>(0i, 0i, -21312i)))), _wgslsmith_div_i32(firstLeadingBit(2147483647i), -10924i << (1u % 32u))), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, abs(24744i)), reverseBits(vec2<i32>(0i, 1i)) << (_wgslsmith_add_vec2_u32(vec2<u32>(747u, var_1.x), vec2<u32>(104936u, 4294967295u)) % vec2<u32>(32u)))), -30500i, var_0, func_5(Struct_3(~reverseBits(0u), Struct_2(countOneBits(u_input.a), func_1(Struct_3(var_1.x, Struct_2(u_input.a, vec2<bool>(false, false), vec3<i32>(-1i, 2147483647i, -14622i)), vec2<i32>(-2147483647i, 14772i), Struct_2(50121u, vec2<bool>(true, var_0.x), vec3<i32>(-6803i, -1i, 35244i)), Struct_2(u_input.a, var_0, vec3<i32>(0i, 2147483647i, -33537i))), vec2<i32>(-36569i, -43154i), vec3<i32>(0i, -2147483647i, 2147483647i), vec2<i32>(0i, 25856i)), vec3<i32>(1i, -7425i, -24200i)), select(~vec2<i32>(-6150i, -18973i), vec2<i32>(1423i, -11368i), true), Struct_2(abs(19801u), vec2<bool>(false, true), min(vec3<i32>(-1i, -20243i, -49948i), vec3<i32>(32766i, -1i, 1i))), Struct_2(~var_1.x, vec2<bool>(false, true), ~vec3<i32>(-1i, -51208i, 0i))), _wgslsmith_f_op_f32(f32(-1f) * -411f), Struct_3(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(18983u, 4294967295u, u_input.a, u_input.a), vec4<u32>(0u, 1u, u_input.a, 1u)), ~vec4<u32>(4294967295u, 32121u, u_input.a, 4294967295u)), func_5(Struct_3(14881u, Struct_2(var_1.x, vec2<bool>(false, var_0.x), vec3<i32>(44087i, 0i, -38184i)), vec2<i32>(-7398i, -14103i), Struct_2(u_input.a, vec2<bool>(var_0.x, var_0.x), vec3<i32>(-1i, -49038i, -2147483647i)), Struct_2(var_1.x, var_0, vec3<i32>(0i, 0i, 35664i))), 410f, Struct_3(u_input.a, Struct_2(u_input.a, var_0, vec3<i32>(25349i, -2147483647i, 27165i)), vec2<i32>(-2147483647i, -1i), Struct_2(55449u, vec2<bool>(var_0.x, false), vec3<i32>(-32694i, 19981i, -417i)), Struct_2(0u, var_0, vec3<i32>(2147483647i, 37678i, 38991i)))).e, -_wgslsmith_add_vec2_i32(vec2<i32>(1i, 13887i), vec2<i32>(-2147483647i, -8683i)), func_5(Struct_3(1u, Struct_2(4294967295u, var_0, vec3<i32>(0i, 0i, -1i)), vec2<i32>(-1i, 56508i), Struct_2(23019u, vec2<bool>(false, true), vec3<i32>(-1i, 10246i, 1i)), Struct_2(0u, vec2<bool>(var_0.x, false), vec3<i32>(2147483647i, 38722i, -24817i))), -1777f, Struct_3(1u, Struct_2(var_1.x, var_0, vec3<i32>(-1i, 42331i, 1i)), vec2<i32>(0i, -2147483647i), Struct_2(u_input.a, var_0, vec3<i32>(11292i, -27740i, -50511i)), Struct_2(38473u, var_0, vec3<i32>(2147483647i, 17538i, -2147483647i)))).e, Struct_2(func_5(Struct_3(0u, Struct_2(var_1.x, vec2<bool>(var_0.x, false), vec3<i32>(15960i, 21897i, -31210i)), vec2<i32>(-2352i, 2147483647i), Struct_2(var_1.x, vec2<bool>(var_0.x, false), vec3<i32>(-1i, 1i, -19777i)), Struct_2(u_input.a, vec2<bool>(false, var_0.x), vec3<i32>(-7891i, 12255i, 28879i))), -2250f, Struct_3(82772u, Struct_2(72310u, var_0, vec3<i32>(7172i, -3318i, 1i)), vec2<i32>(2147483647i, 1i), Struct_2(u_input.a, var_0, vec3<i32>(-47224i, 2153i, 0i)), Struct_2(18882u, vec2<bool>(false, false), vec3<i32>(-1i, 1i, 1i)))).e.a, vec2<bool>(var_0.x, var_0.x), ~vec3<i32>(-2147483647i, 48732i, -2147483647i)))).e);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2283f, _wgslsmith_f_op_f32(f32(-1f) * -1790f))));
    let var_4 = Struct_4(Struct_1(!var_0.x, _wgslsmith_add_u32(4294967295u, var_2.e.a), var_1.zwy, var_2.d.x, vec3<bool>(all(vec4<bool>(true, var_2.a.a, var_2.d.x, false)), false, !var_2.a.d)), select(~(~firstTrailingBit(vec4<i32>(-1i, 2147483647i, var_2.c, 47406i))), -select(vec4<i32>(var_2.c, 2147483647i, var_2.c, 2147483647i), ~vec4<i32>(39433i, var_2.b.x, 0i, 29315i), true), select(!(!vec4<bool>(var_0.x, var_2.d.x, var_0.x, var_0.x)), select(select(vec4<bool>(var_2.d.x, false, true, var_0.x), vec4<bool>(var_2.a.e.x, false, var_2.e.b.x, var_2.a.a), vec4<bool>(var_2.d.x, false, var_0.x, false)), select(vec4<bool>(var_2.e.b.x, var_0.x, var_2.d.x, var_2.a.d), vec4<bool>(false, var_0.x, var_2.e.b.x, true), vec4<bool>(var_2.a.d, true, false, false)), false), false)), _wgslsmith_dot_vec2_i32(var_2.b.zx << (firstLeadingBit(vec2<u32>(83102u, 8734u)) % vec2<u32>(32u)), var_2.e.c.xz), func_1(Struct_3(1u, var_2.e, var_2.b.yy, func_5(Struct_3(0u, var_2.e, vec2<i32>(var_2.c, var_2.b.x), var_2.e, var_2.e), _wgslsmith_f_op_f32(-346f + -1414f), Struct_3(1u, Struct_2(7059u, var_2.a.e.yy, vec3<i32>(var_2.b.x, var_2.e.c.x, 0i)), var_2.b.zw, var_2.e, Struct_2(1u, vec2<bool>(true, false), vec3<i32>(53997i, 36108i, 2147483647i)))).e, var_2.e), var_2.e.c.yy, ~(-_wgslsmith_sub_vec3_i32(var_2.e.c, var_2.b.wzz)), vec2<i32>(firstTrailingBit(-var_2.c), abs(_wgslsmith_sub_i32(var_2.b.x, var_2.b.x)))), var_2.e);
    let var_5 = abs(_wgslsmith_mod_i32(func_2(firstTrailingBit(-var_2.b.yxw), Struct_2(_wgslsmith_mod_u32(var_4.e.a, var_2.e.a), var_2.e.b, vec3<i32>(var_2.e.c.x, -2147483647i, var_4.e.c.x))), var_2.c));
    var var_6 = var_4.a;
    var_3 = -814f;
    let var_7 = 26529u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(firstTrailingBit(var_2.a.c), vec3<u32>(114139u, 1u, var_4.e.a)), var_4.a.c), max(-2147483647i, ~firstLeadingBit(var_2.e.c.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-681f + 170f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1857f + -693f))), -1939f));
}

