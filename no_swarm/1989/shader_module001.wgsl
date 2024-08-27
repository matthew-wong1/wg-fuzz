struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 23> = array<Struct_5, 23>(Struct_5(-169f, Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(0u, 10369u), vec2<i32>(9485i, -1i)), -872f, vec4<bool>(true, true, true, false), vec3<i32>(34478i, 2147483647i, -30290i)), Struct_5(302f, Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(31166u, 1u), vec2<i32>(-1i, 0i)), 1231f, vec4<bool>(true, true, true, true), vec3<i32>(18983i, -1i, 18989i)), Struct_5(954f, Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(0u, 4294967295u), vec2<i32>(-4262i, 0i)), -684f, vec4<bool>(false, false, true, true), vec3<i32>(1i, -1i, 55011i)), Struct_5(1309f, Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(4294967295u, 640u), vec2<i32>(2147483647i, -1i)), 737f, vec4<bool>(true, true, true, true), vec3<i32>(0i, 29060i, 1i)), Struct_5(-1150f, Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(0u, 10004u), vec2<i32>(25501i, i32(-2147483648))), -560f, vec4<bool>(true, true, true, false), vec3<i32>(-23604i, -13959i, 0i)), Struct_5(-416f, Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(0u, 0u), vec2<i32>(0i, 0i)), -1010f, vec4<bool>(true, true, false, true), vec3<i32>(2147483647i, -41880i, 18939i)), Struct_5(218f, Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(0u, 0u), vec2<i32>(1i, 0i)), 1217f, vec4<bool>(false, true, true, true), vec3<i32>(25426i, 2147483647i, 1i)), Struct_5(-1000f, Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(1u, 56544u), vec2<i32>(-1i, 2147483647i)), 1368f, vec4<bool>(false, true, false, true), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i)), Struct_5(-177f, Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(4294967295u, 0u), vec2<i32>(-1i, 1i)), 1000f, vec4<bool>(true, true, false, false), vec3<i32>(-18332i, -1i, -27646i)), Struct_5(-1000f, Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(31456u, 105217u), vec2<i32>(3353i, i32(-2147483648))), -248f, vec4<bool>(false, false, false, true), vec3<i32>(-20797i, 2147483647i, -13568i)), Struct_5(-1029f, Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(1u, 4294967295u), vec2<i32>(i32(-2147483648), -3752i)), -1076f, vec4<bool>(true, false, true, true), vec3<i32>(1i, 1i, 2147483647i)), Struct_5(1938f, Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(60677u, 0u), vec2<i32>(-13252i, 10351i)), 1324f, vec4<bool>(true, false, true, false), vec3<i32>(i32(-2147483648), -19153i, 1i)), Struct_5(-1156f, Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(10499u, 71826u), vec2<i32>(i32(-2147483648), 1i)), 1521f, vec4<bool>(true, false, false, true), vec3<i32>(i32(-2147483648), -1i, 1i)), Struct_5(-3177f, Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(4294967295u, 27607u), vec2<i32>(2147483647i, 2147483647i)), -834f, vec4<bool>(true, false, false, false), vec3<i32>(-68739i, 14788i, -29133i)), Struct_5(441f, Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(47227u, 0u), vec2<i32>(0i, 42858i)), 793f, vec4<bool>(true, true, false, true), vec3<i32>(4111i, -12736i, 15479i)), Struct_5(2015f, Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(0u, 1u), vec2<i32>(895i, 1i)), -378f, vec4<bool>(true, true, false, false), vec3<i32>(1i, 0i, 32268i)), Struct_5(159f, Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(112614u, 50806u), vec2<i32>(5288i, -51855i)), -614f, vec4<bool>(true, false, false, false), vec3<i32>(2147483647i, -41351i, -14598i)), Struct_5(-922f, Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(0u, 4294967295u), vec2<i32>(i32(-2147483648), -59283i)), 669f, vec4<bool>(false, true, false, true), vec3<i32>(2147483647i, 12877i, -10238i)), Struct_5(-1353f, Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(39310u, 28203u), vec2<i32>(55312i, 15376i)), -198f, vec4<bool>(false, true, true, true), vec3<i32>(1i, 0i, 48i)), Struct_5(-110f, Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(0u, 4294967295u), vec2<i32>(1i, 1i)), 733f, vec4<bool>(true, true, false, true), vec3<i32>(0i, 0i, -1470i)), Struct_5(215f, Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(28055u, 33789u), vec2<i32>(-65524i, -1i)), -252f, vec4<bool>(true, true, true, true), vec3<i32>(40073i, -18624i, -37286i)), Struct_5(-749f, Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(30058u, 39318u), vec2<i32>(i32(-2147483648), -14706i)), 976f, vec4<bool>(true, true, false, true), vec3<i32>(5667i, 0i, -42380i)), Struct_5(862f, Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(1u, 4294967295u), vec2<i32>(13837i, 0i)), 198f, vec4<bool>(true, false, false, false), vec3<i32>(-8794i, -17275i, -1i)));

var<private> global1: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(0u, vec2<f32>(-798f, -902f), 67231u, vec3<u32>(53744u, 101785u, 12474u), vec3<bool>(true, false, false)), Struct_4(13777u, vec2<f32>(-664f, -384f), 4615u, vec3<u32>(1u, 25151u, 4294967295u), vec3<bool>(true, true, false)), Struct_4(1299u, vec2<f32>(1000f, 761f), 11719u, vec3<u32>(1u, 1u, 4294967295u), vec3<bool>(false, true, true)), Struct_4(30173u, vec2<f32>(-1569f, 149f), 68665u, vec3<u32>(42815u, 101313u, 4294967295u), vec3<bool>(true, true, false)), Struct_4(4294967295u, vec2<f32>(-1067f, -513f), 12442u, vec3<u32>(0u, 0u, 47745u), vec3<bool>(true, false, false)), Struct_4(0u, vec2<f32>(-1366f, 1000f), 4294967295u, vec3<u32>(93691u, 1286u, 25212u), vec3<bool>(false, true, true)), Struct_4(4294967295u, vec2<f32>(-1164f, 2871f), 47087u, vec3<u32>(4294967295u, 0u, 4294967295u), vec3<bool>(true, false, true)), Struct_4(14595u, vec2<f32>(-258f, -349f), 37662u, vec3<u32>(0u, 1u, 15491u), vec3<bool>(true, false, false)), Struct_4(2204u, vec2<f32>(-1000f, -489f), 20159u, vec3<u32>(57979u, 1u, 27909u), vec3<bool>(false, true, true)), Struct_4(1u, vec2<f32>(1000f, -2998f), 1u, vec3<u32>(10043u, 53189u, 4294967295u), vec3<bool>(false, false, true)), Struct_4(0u, vec2<f32>(354f, -1562f), 1u, vec3<u32>(4294967295u, 40860u, 4294967295u), vec3<bool>(false, true, false)), Struct_4(1u, vec2<f32>(387f, -1000f), 4250u, vec3<u32>(73037u, 34380u, 21561u), vec3<bool>(true, true, true)), Struct_4(66257u, vec2<f32>(1000f, 2097f), 0u, vec3<u32>(0u, 1u, 68503u), vec3<bool>(true, false, false)), Struct_4(1u, vec2<f32>(-1000f, -377f), 4294967295u, vec3<u32>(4294967295u, 1u, 72402u), vec3<bool>(false, true, false)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, -426f, 1067f) * vec4<f32>(-531f, 308f, -266f, -590f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-567f, 454f, -514f, 631f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1755f, 243f, -217f, 1327f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(902f, -1265f, -402f, -1601f))))))));
    var var_1 = var_0.x;
    let var_2 = ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a, 14404u, arg_2.a.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d.b.x, arg_2.a.b.x), vec2<u32>(arg_1.d.b.x, u_input.b))), vec4<u32>(min(arg_1.a, arg_1.d.b.x), min(118876u, u_input.a), _wgslsmith_mult_u32(u_input.b, arg_1.d.b.x), ~u_input.b), vec4<u32>(0u, ~67374u, 85193u, firstTrailingBit(u_input.c.x))));
    var var_3 = reverseBits(~arg_2.c | ~(~arg_1.d.b.x));
    global0 = array<Struct_5, 23>();
    return max(2147483647i & u_input.e, abs(2147483647i));
}

fn func_2(arg_0: u32, arg_1: Struct_4) -> i32 {
    let var_0 = ~_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.e, u_input.d.x), func_3(true, Struct_2(arg_1.c, arg_1.e.xy, 2147483647i, Struct_1(vec4<bool>(arg_1.e.x, arg_1.e.x, true, arg_1.e.x), u_input.c, u_input.d.yz)), Struct_3(Struct_1(vec4<bool>(arg_1.e.x, arg_1.e.x, false, false), vec2<u32>(u_input.a, 48140u), vec2<i32>(-1i, u_input.e)), vec4<bool>(false, true, false, arg_1.e.x), arg_1.c, vec3<u32>(arg_1.c, 4294967295u, arg_1.d.x), vec4<bool>(arg_1.e.x, false, false, false))) ^ 1i);
    let var_1 = _wgslsmith_mod_vec3_i32(u_input.d, select(_wgslsmith_clamp_vec3_i32(vec3<i32>(26466i, func_3(false, Struct_2(arg_1.c, arg_1.e.yy, u_input.e, Struct_1(vec4<bool>(arg_1.e.x, false, arg_1.e.x, arg_1.e.x), arg_1.d.zz, vec2<i32>(40607i, u_input.d.x))), Struct_3(Struct_1(vec4<bool>(false, false, arg_1.e.x, arg_1.e.x), vec2<u32>(arg_1.a, u_input.c.x), u_input.d.zx), vec4<bool>(arg_1.e.x, true, arg_1.e.x, true), 4294967295u, arg_1.d, vec4<bool>(arg_1.e.x, true, arg_1.e.x, false))), u_input.d.x), vec3<i32>(0i & var_0, 2147483647i, ~4008i), abs(vec3<i32>(-1i, var_0, u_input.d.x))), u_input.d, true));
    global0 = array<Struct_5, 23>();
    global0 = array<Struct_5, 23>();
    global0 = array<Struct_5, 23>();
    return _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(reverseBits(_wgslsmith_div_i32(1i, var_1.x)), -(u_input.d.x ^ 1i)), var_1.x), 0i, -max(_wgslsmith_dot_vec2_i32(vec2<i32>(-24860i, var_1.x), vec2<i32>(2147483647i, -2147483647i)), min(firstLeadingBit(80421i), var_0)));
}

fn func_1(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: bool) -> Struct_3 {
    global0 = array<Struct_5, 23>();
    var var_0 = Struct_2(_wgslsmith_div_u32(u_input.b, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.c.x), _wgslsmith_sub_vec2_u32(vec2<u32>(29201u, 1u), vec2<u32>(1u, u_input.b))), (arg_0.b.b.x ^ 401u) | ~96066u)), vec2<bool>(true, any(arg_0.b.a)), _wgslsmith_mod_i32(_wgslsmith_div_i32(func_2(~arg_0.b.b.x, Struct_4(22093u, vec2<f32>(-1000f, arg_0.a), 56755u, vec3<u32>(41661u, u_input.c.x, 4294967295u), arg_0.d.zzz)), ~arg_0.b.c.x), -arg_1.x), Struct_1(arg_0.b.a, ~(~vec2<u32>(31659u, arg_0.b.b.x)), arg_1.xx));
    let var_1 = var_0.d.c.x;
    let var_2 = Struct_4(~u_input.c.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-361f)) + arg_0.c), -138f), ~1u, ~(~_wgslsmith_mod_vec3_u32(select(vec3<u32>(4294967295u, arg_0.b.b.x, u_input.b), vec3<u32>(var_0.a, 27239u, u_input.c.x), false), vec3<u32>(u_input.b, var_0.a, 0u) << (vec3<u32>(u_input.a, 50800u, 0u) % vec3<u32>(32u)))), select(select(select(vec3<bool>(var_0.d.a.x, false, arg_2), !var_0.d.a.yyy, any(arg_0.b.a.xyx)), vec3<bool>(select(false, arg_2, true), arg_0.a >= 1000f, arg_2), arg_0.b.a.wyz), var_0.d.a.xxw, all(arg_0.b.a.wwx)));
    var var_3 = ~reverseBits(arg_0.e.x);
    return Struct_3(var_0.d, !vec4<bool>(false, !(!arg_0.b.a.x), all(select(vec2<bool>(true, false), vec2<bool>(false, var_0.b.x), false)), true), select(_wgslsmith_dot_vec2_u32(var_0.d.b, vec2<u32>(var_0.a, arg_0.b.b.x) << (var_2.d.yx % vec2<u32>(32u))), var_0.d.b.x, any(select(select(var_2.e.xy, vec2<bool>(true, false), arg_0.b.a.yz), select(var_0.b, vec2<bool>(false, true), var_2.e.x), var_0.d.a.x))), vec3<u32>(u_input.b, ~_wgslsmith_dot_vec2_u32(u_input.c, abs(vec2<u32>(var_0.d.b.x, var_2.d.x))), ~19449u), !select(vec4<bool>(arg_0.d.x, false, false, false), arg_0.b.a, false));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_4, arg_3: i32) -> Struct_3 {
    global1 = array<Struct_4, 14>();
    let var_0 = global0[_wgslsmith_index_u32(1u, 23u)];
    var var_1 = global0[_wgslsmith_index_u32(26745u, 23u)];
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_1(Struct_5(409f, Struct_1(vec4<bool>(var_0.d.x, false, var_1.b.a.x, true), abs(vec2<u32>(16249u, 4294967295u)), vec2<i32>(arg_1, arg_3)), _wgslsmith_f_op_f32(ceil(var_1.a)), !(!var_1.b.a), -_wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(var_0.b.c.x, u_input.e, -5075i))), ~vec4<i32>(-1i, max(arg_0.a.c.x, arg_3), var_0.e.x, 2147483647i | u_input.d.x), all(!vec3<bool>(true, var_1.d.x, false))).c, _wgslsmith_mod_u32(func_1(Struct_5(_wgslsmith_div_f32(318f, var_1.a), func_1(Struct_5(arg_2.b.x, arg_0.a, var_1.c, var_0.d, u_input.d), vec4<i32>(-8702i, -36313i, arg_0.a.c.x, arg_1), arg_2.e.x).a, _wgslsmith_f_op_f32(sign(-1000f)), !vec4<bool>(true, false, var_0.d.x, arg_2.e.x), select(vec3<i32>(2147483647i, -2147483647i, -1i), vec3<i32>(-1i, arg_3, 15134i), var_0.d.zxx)), abs(vec4<i32>(0i, -15071i, arg_3, -1i) & vec4<i32>(-4838i, var_0.e.x, -5408i, arg_1)), arg_2.e.x | arg_2.e.x).d.x, var_1.b.b.x)), 23u)];
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-307f + -1169f), -255f), _wgslsmith_f_op_f32(-1448f * 873f)));
    return Struct_3(Struct_1(var_0.b.a, ~select(firstTrailingBit(vec2<u32>(arg_2.d.x, 1u)), countOneBits(var_1.b.b), select(var_1.b.a.wy, vec2<bool>(var_1.d.x, var_0.b.a.x), false)), firstLeadingBit(vec2<i32>(~60979i, var_1.b.c.x))), !select(arg_0.e, !vec4<bool>(arg_2.e.x, true, false, true), var_1.b.a.x), _wgslsmith_dot_vec3_u32(arg_2.d, max(~vec3<u32>(arg_0.d.x, arg_2.a, 4294967295u), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0.d, arg_0.d, vec3<u32>(4294967295u, 41606u, 0u)), select(vec3<u32>(u_input.c.x, var_1.b.b.x, 116459u), vec3<u32>(arg_0.a.b.x, 75666u, 64151u), var_1.b.a.wyy)))), ~arg_2.d << (min(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 9433u, var_0.b.b.x), ~vec3<u32>(8060u, u_input.c.x, var_1.b.b.x), ~vec3<u32>(arg_2.a, 0u, var_1.b.b.x)), arg_2.d) % vec3<u32>(32u)), vec4<bool>(false, false & all(vec2<bool>(true, false)), !var_1.b.a.x, arg_0.a.a.x || false));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: Struct_3) -> u32 {
    global1 = array<Struct_4, 14>();
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(742f))))), arg_3.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(502f)))), vec4<bool>(select(arg_3.a.a.x, arg_3.e.x | true, all(!vec4<bool>(arg_3.a.a.x, arg_3.e.x, true, false))), !any(vec2<bool>(true, arg_1.x)), !(true & arg_1.x), arg_3.b.x), abs(-u_input.d));
    global0 = array<Struct_5, 23>();
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_5(u_input.c, select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), countOneBits(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)) | ~u_input.d, func_4(func_1(Struct_5(-1407f, Struct_1(vec4<bool>(false, false, true, false), u_input.c, vec2<i32>(u_input.e, u_input.e)), 352f, vec4<bool>(true, false, true, false), u_input.d), vec4<i32>(u_input.d.x, u_input.d.x, u_input.e, u_input.d.x), true), 0i, Struct_4(u_input.a, vec2<f32>(-1704f, -585f), u_input.a, vec3<u32>(u_input.b, 1u, u_input.c.x), vec3<bool>(true, false, true)), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.e, -21127i, 22504i)))) & _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 4294967295u | u_input.c.x), firstLeadingBit(u_input.a) ^ u_input.b), func_4(Struct_3(func_1(global0[_wgslsmith_index_u32(1u, 23u)], vec4<i32>(u_input.e, u_input.e, -13099i, -54845i), true).a, !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), false), 1u, ~func_1(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], vec4<i32>(-18619i, u_input.d.x, u_input.d.x, 27218i), false).d, func_4(Struct_3(Struct_1(vec4<bool>(false, false, false, false), u_input.c, vec2<i32>(u_input.d.x, u_input.d.x)), vec4<bool>(true, true, true, true), 4294967295u, vec3<u32>(30318u, u_input.b, 4294967295u), vec4<bool>(true, true, true, true)), 1i, global1[_wgslsmith_index_u32(1u, 14u)], -58276i).e), max(-2147483647i, -68008i), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.c.x, u_input.a)), 4294967295u), 14u)], _wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, -26590i), -6449i, u_input.d.x) & ~select(-1i, u_input.d.x, false)).a.a.yz, firstTrailingBit(max(u_input.d.x, -23530i)) >> (u_input.c.x % 32u), Struct_1(select(vec4<bool>(select(true, true, true), all(vec2<bool>(false, true)), true, true), vec4<bool>(true, true, true, true), func_4(Struct_3(Struct_1(vec4<bool>(false, true, false, true), u_input.c, vec2<i32>(-53260i, 1i)), vec4<bool>(true, true, true, true), 118072u, vec3<u32>(u_input.b, u_input.b, u_input.a), vec4<bool>(true, false, true, true)), u_input.e, global1[_wgslsmith_index_u32(u_input.c.x, 14u)], ~(-19596i)).b), vec2<u32>(10195u, u_input.a), -u_input.d.xz));
    let var_1 = ~firstLeadingBit(min(_wgslsmith_mult_i32(35179i, 24734i), -7857i) >> (0u % 32u));
    var var_2 = max(1i, 39199i);
    var var_3 = !select(vec3<bool>(true, true, true), var_0.d.a.ywz, var_0.d.a.x || ((true | var_0.b.x) && (27779u != u_input.a)));
    var var_4 = select(func_1(global0[_wgslsmith_index_u32(1u, 23u)], abs(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.d.xy, var_0.d.c), firstLeadingBit(var_0.d.c.x), firstLeadingBit(u_input.e), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c, var_1, 49655i, 21051i), vec4<i32>(-1i, 13997i, 2147483647i, var_0.d.c.x)))), var_0.d.a.x).e, !(!vec4<bool>(true, true, var_0.b.x, false)), (func_1(global0[_wgslsmith_index_u32(1u, 23u)], vec4<i32>(var_1, -8423i, 35704i, var_0.d.c.x), true).e.x & var_3.x) == func_1(global0[_wgslsmith_index_u32(72827u, 23u)], -vec4<i32>(var_1, 2056i, -2147483647i, -2147483647i), all(var_0.d.a.yxz) && true).b.x);
    var var_5 = true;
    let var_6 = vec3<i32>(~1i, var_1, i32(-1i) * -1i);
    let x = u_input.a;
    s_output = StorageBuffer(1001f, _wgslsmith_add_vec2_i32(-vec2<i32>(var_0.d.c.x, -29057i), -(~func_1(global0[_wgslsmith_index_u32(1u, 23u)], vec4<i32>(-1i, var_1, var_6.x, var_6.x), false).a.c)), u_input.b, firstTrailingBit(~abs(vec4<i32>(var_6.x, -2147483647i, -56484i, var_0.d.c.x))));
}

