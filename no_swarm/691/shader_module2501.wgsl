struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(vec4<f32>(1131f, -645f, 449f, -798f), -523f, vec4<u32>(42294u, 29484u, 1u, 999u), vec2<bool>(false, true)), vec4<u32>(41020u, 4294967295u, 4294967295u, 3940u), 15292i), Struct_2(Struct_1(vec4<f32>(-1535f, 1010f, -888f, -219f), 400f, vec4<u32>(15878u, 24993u, 0u, 94752u), vec2<bool>(false, true)), vec4<u32>(125752u, 0u, 0u, 39612u), 12567i), Struct_2(Struct_1(vec4<f32>(-1257f, 807f, 2754f, -497f), 1000f, vec4<u32>(1u, 4294967295u, 4294967295u, 64359u), vec2<bool>(true, true)), vec4<u32>(0u, 60663u, 1u, 0u), -20102i), Struct_2(Struct_1(vec4<f32>(-694f, 1162f, 1116f, -2409f), 846f, vec4<u32>(12895u, 24698u, 49283u, 22826u), vec2<bool>(true, false)), vec4<u32>(0u, 18378u, 4294967295u, 1u), 5897i), Struct_2(Struct_1(vec4<f32>(386f, -676f, 259f, -995f), -1000f, vec4<u32>(87961u, 20150u, 0u, 20153u), vec2<bool>(false, false)), vec4<u32>(0u, 0u, 4294967295u, 1u), -22766i), Struct_2(Struct_1(vec4<f32>(-758f, -575f, 101f, -2293f), -1135f, vec4<u32>(0u, 2962u, 0u, 7241u), vec2<bool>(true, false)), vec4<u32>(4294967295u, 1u, 1u, 0u), 1i), Struct_2(Struct_1(vec4<f32>(265f, 1000f, -643f, 1810f), -1188f, vec4<u32>(54916u, 4294967295u, 0u, 4294967295u), vec2<bool>(true, false)), vec4<u32>(1u, 0u, 1u, 1u), -35345i), Struct_2(Struct_1(vec4<f32>(253f, -153f, -778f, 520f), 499f, vec4<u32>(23922u, 24985u, 0u, 7379u), vec2<bool>(false, false)), vec4<u32>(4294967295u, 0u, 34186u, 28246u), 1i), Struct_2(Struct_1(vec4<f32>(115f, 979f, 591f, 1467f), 1000f, vec4<u32>(10185u, 63u, 42943u, 26971u), vec2<bool>(true, false)), vec4<u32>(42248u, 4294967295u, 0u, 4294967295u), i32(-2147483648)), Struct_2(Struct_1(vec4<f32>(1543f, -172f, -417f, -1536f), 593f, vec4<u32>(27148u, 51681u, 0u, 4294967295u), vec2<bool>(false, true)), vec4<u32>(71464u, 0u, 84083u, 1u), i32(-2147483648)), Struct_2(Struct_1(vec4<f32>(-734f, -971f, 111f, -193f), 1000f, vec4<u32>(0u, 0u, 60725u, 0u), vec2<bool>(true, true)), vec4<u32>(4294967295u, 1u, 66738u, 8424u), 32586i), Struct_2(Struct_1(vec4<f32>(-1189f, -2311f, -942f, -241f), -155f, vec4<u32>(35372u, 579u, 511u, 18972u), vec2<bool>(false, false)), vec4<u32>(71405u, 61095u, 0u, 0u), 0i), Struct_2(Struct_1(vec4<f32>(786f, 876f, -407f, -187f), 960f, vec4<u32>(13770u, 12283u, 0u, 1u), vec2<bool>(true, false)), vec4<u32>(0u, 4294967295u, 0u, 6502u), 12508i), Struct_2(Struct_1(vec4<f32>(-372f, -591f, 907f, 1383f), -1226f, vec4<u32>(4294967295u, 44403u, 0u, 0u), vec2<bool>(true, true)), vec4<u32>(4294967295u, 63284u, 87461u, 0u), -13019i), Struct_2(Struct_1(vec4<f32>(1247f, 217f, -1000f, -521f), 1319f, vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec2<bool>(true, false)), vec4<u32>(16862u, 67379u, 23313u, 4294967295u), -21093i), Struct_2(Struct_1(vec4<f32>(1000f, 336f, 644f, 519f), -394f, vec4<u32>(0u, 1u, 32478u, 43322u), vec2<bool>(true, true)), vec4<u32>(1u, 59768u, 43843u, 1u), 60441i), Struct_2(Struct_1(vec4<f32>(402f, -1387f, 357f, -161f), 1089f, vec4<u32>(4294967295u, 1u, 62579u, 0u), vec2<bool>(true, true)), vec4<u32>(21148u, 0u, 47910u, 20420u), -9833i), Struct_2(Struct_1(vec4<f32>(-1621f, -826f, 1140f, -870f), 375f, vec4<u32>(58868u, 28450u, 4294967295u, 12351u), vec2<bool>(false, false)), vec4<u32>(1u, 37186u, 1u, 8532u), i32(-2147483648)), Struct_2(Struct_1(vec4<f32>(-922f, -993f, -131f, 143f), -640f, vec4<u32>(0u, 0u, 1u, 4294967295u), vec2<bool>(false, false)), vec4<u32>(1u, 4294967295u, 46181u, 1u), i32(-2147483648)), Struct_2(Struct_1(vec4<f32>(-1000f, -215f, -1344f, 487f), -612f, vec4<u32>(13191u, 0u, 1u, 16326u), vec2<bool>(false, false)), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), 2147483647i), Struct_2(Struct_1(vec4<f32>(-360f, -1000f, 1618f, -1487f), 1300f, vec4<u32>(1u, 4294967295u, 4294967295u, 84760u), vec2<bool>(false, true)), vec4<u32>(50428u, 1u, 80048u, 0u), 573i), Struct_2(Struct_1(vec4<f32>(-1196f, -2436f, 597f, 1638f), -1010f, vec4<u32>(4294967295u, 0u, 90182u, 4294967295u), vec2<bool>(false, false)), vec4<u32>(0u, 4294967295u, 1u, 33556u), 22987i), Struct_2(Struct_1(vec4<f32>(-991f, 1906f, 1963f, 979f), -1031f, vec4<u32>(4294967295u, 39063u, 41227u, 5449u), vec2<bool>(false, false)), vec4<u32>(1u, 29950u, 1u, 4294967295u), 0i), Struct_2(Struct_1(vec4<f32>(212f, -467f, -407f, -1982f), -1000f, vec4<u32>(1u, 35360u, 4294967295u, 0u), vec2<bool>(false, true)), vec4<u32>(1u, 31759u, 16743u, 4294967295u), 13569i), Struct_2(Struct_1(vec4<f32>(-1433f, -771f, 1000f, -763f), 550f, vec4<u32>(51384u, 4294967295u, 1u, 9107u), vec2<bool>(true, false)), vec4<u32>(1u, 4294967295u, 24352u, 1u), 0i), Struct_2(Struct_1(vec4<f32>(1000f, -2237f, -103f, -124f), 1270f, vec4<u32>(1u, 50196u, 14284u, 0u), vec2<bool>(true, false)), vec4<u32>(1u, 29288u, 4294967295u, 0u), -8503i), Struct_2(Struct_1(vec4<f32>(1036f, -513f, 1514f, 1449f), -229f, vec4<u32>(0u, 1u, 0u, 46893u), vec2<bool>(false, true)), vec4<u32>(1u, 1u, 4294967295u, 8042u), -1i), Struct_2(Struct_1(vec4<f32>(911f, -453f, -1631f, -202f), -1121f, vec4<u32>(35098u, 1u, 1317u, 0u), vec2<bool>(false, false)), vec4<u32>(0u, 1u, 1u, 4294967295u), 0i), Struct_2(Struct_1(vec4<f32>(758f, 317f, 1409f, -1754f), -790f, vec4<u32>(24481u, 43048u, 0u, 35003u), vec2<bool>(true, true)), vec4<u32>(75802u, 1u, 87094u, 0u), 2147483647i));

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<f32>(-1437f, -1406f, -1260f, 110f), -1367f, vec4<u32>(1u, 33547u, 28734u, 0u), vec2<bool>(false, true)), vec4<u32>(4294967295u, 1u, 1u, 10069u), 11016i), 4294967295u, Struct_1(vec4<f32>(-1172f, -221f, 1030f, 1295f), -1673f, vec4<u32>(7961u, 7303u, 28311u, 4294967295u), vec2<bool>(false, true)), vec2<u32>(55672u, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> f32 {
    var var_0 = all(vec4<bool>(min(reverseBits(510i), u_input.b) == -61455i, !global1.a.a.d.x, true, true));
    global1 = Struct_3(global1.a, ~(~4294967295u), global1.c, vec2<u32>(3469u, ~(~_wgslsmith_sub_u32(global1.c.c.x, 111637u))));
    var_0 = global1.a.a.d.x;
    global0 = array<Struct_2, 29>();
    let var_1 = _wgslsmith_f_op_f32(-global1.c.b);
    return _wgslsmith_f_op_f32(var_1 - -431f);
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    global1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(249f, global1.a.a.b, global1.a.a.b, global1.c.b) * global1.c.a))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0, global1.a.b), vec4<u32>(global1.d.x, 4294967295u, 0u, arg_0.x)), vec2<bool>(true, true)), global1.c.c, _wgslsmith_sub_i32(-3597i, global1.a.c)), _wgslsmith_dot_vec3_u32(~vec3<u32>(firstTrailingBit(0u), _wgslsmith_mod_u32(global1.b, 4294967295u), global1.b), global1.c.c.zzz), Struct_1(global1.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a.a.x)), ~global1.c.c << (~(vec4<u32>(global1.c.c.x, global1.d.x, global1.b, 4294967295u) | vec4<u32>(1u, global1.a.a.c.x, global1.c.c.x, 77193u)) % vec4<u32>(32u)), vec2<bool>(global1.a.a.d.x, true)), ~(~(~countOneBits(vec2<u32>(4294967295u, 2160u)))));
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(global1.a.a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(890f, 794f, global1.a.a.a.x, global1.a.a.a.x)), !vec4<bool>(global1.c.d.x, global1.a.a.d.x, global1.c.d.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.b)), firstTrailingBit(global1.a.a.c), vec2<bool>(-1i >= global1.a.c, any(vec4<bool>(global1.c.d.x, global1.c.d.x, true, true)))), ~vec4<u32>(~u_input.a, countOneBits(arg_0.x), 48292u, min(1u, 30987u)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b, global1.a.c, 7989i), vec3<i32>(u_input.b, global1.a.c, global1.a.c), vec3<bool>(global1.a.a.d.x, global1.a.a.d.x, global1.a.a.d.x)), vec3<i32>(-34626i, -1i, global1.a.c)) >> (_wgslsmith_sub_u32(arg_0.x, select(u_input.a, 4294967295u, global1.c.d.x)) % 32u)), min(~arg_0.x, _wgslsmith_mult_u32(global1.d.x, u_input.a & arg_0.x) << (~(~97276u) % 32u)), Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a.a.a), global1.a.a.b, global1.c.c >> (~arg_0 % vec4<u32>(32u)), vec2<bool>(!global1.a.a.d.x, false)), global1.d ^ max(arg_0.yy, arg_0.zw));
    let var_1 = _wgslsmith_dot_vec4_u32(global1.c.c, vec4<u32>(_wgslsmith_dot_vec2_u32(global1.a.a.c.zy, vec2<u32>(arg_0.x, 110376u)), 47496u, ~_wgslsmith_dot_vec2_u32(arg_0.xy, global1.c.c.yz), 4294967295u)) >> (7099u % 32u);
    global0 = array<Struct_2, 29>();
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.c.b))))));
    return ~select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, ~37812u, 4294967295u), vec3<u32>(~64821u, reverseBits(var_0.d.x), ~global1.a.b.x)), 1253u, false);
}

fn func_4(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_2(global1.a.a, global1.a.a.c, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.b, -2147483647i, global1.a.c, 11762i) & vec4<i32>(23045i, u_input.b, u_input.b, global1.a.c)), vec4<i32>(-8671i, ~(-2116i), u_input.b, 2147483647i >> (0u % 32u))), max(vec4<i32>(u_input.b, ~global1.a.c, abs(u_input.b), 29309i), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(2147483647i, -1i, u_input.b, global1.a.c)), ~vec4<i32>(u_input.b, global1.a.c, global1.a.c, global1.a.c)))));
    let var_1 = 664f;
    global0 = array<Struct_2, 29>();
    global1 = Struct_3(Struct_2(var_0.a, _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(0u, 25165u, 1u, 34258u), var_0.b, var_0.a.d.x), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(arg_0, 29525u, u_input.a, u_input.a)), vec4<u32>(33158u, 4989u, u_input.a, arg_0) | vec4<u32>(global1.d.x, var_0.b.x, 1u, global1.a.a.c.x)), vec4<u32>(abs(global1.b), select(u_input.a, 71891u, global1.c.d.x), func_2(var_0.b), ~var_0.b.x)), var_0.c), _wgslsmith_clamp_u32(4294967295u, 4294967295u, countOneBits(~_wgslsmith_add_u32(0u, 15872u))), var_0.a, vec2<u32>(0u, func_2(~(~global1.a.b))));
    var var_2 = var_0.a;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1, var_0.a.a.x, var_1, var_2.a.x), vec4<f32>(250f, 376f, var_0.a.a.x, var_0.a.a.x))) * vec4<f32>(463f, -1079f, _wgslsmith_div_f32(var_1, global1.a.a.b), _wgslsmith_f_op_f32(ceil(var_1)))) - var_0.a.a), var_2.a.x, var_0.a.c, !vec2<bool>(global1.a.c >= global1.a.c, select(any(vec3<bool>(false, true, var_0.a.d.x)), var_0.a.c.x >= arg_0, true)));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<u32>) -> i32 {
    global1 = Struct_3(Struct_2(func_4(func_2(global1.a.b)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(4294967295u, global1.b, 517u, 0u), global1.a.a.c, false), ~global1.c.c, abs(global1.c.c)), global1.c.c, vec4<u32>(min(u_input.a, 4294967295u), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(24062u, 1491u, u_input.a), global1.c.c.xzy), ~25697u)), _wgslsmith_add_i32(-40106i, -1i)), ~785u, global1.a.a, _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, func_4(arg_2.x).c.x), _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 28286u), vec2<u32>(u_input.a, arg_2.x) >> (vec2<u32>(arg_2.x, 51547u) % vec2<u32>(32u))) | vec2<u32>(~0u, func_4(1u).c.x)));
    var var_0 = -1000f;
    var var_1 = vec3<u32>(4294967295u, 0u, 0u);
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    return reverseBits(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1.a.a, _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(global1.a.a.c.x, 1u, 0u, 1u)), global1.a.b), vec4<u32>(u_input.a, (global1.b ^ 4294967295u) << (_wgslsmith_dot_vec4_u32(global1.c.c, vec4<u32>(1u, global1.d.x, u_input.a, 1u)) % 32u), 0u, 4678u)), -1i);
    global1 = Struct_3(Struct_2(global1.a.a, var_0.a.c, _wgslsmith_add_i32(-_wgslsmith_div_i32(global1.a.c, var_0.c), var_0.c)), select(4294967295u, ~0u, all(select(var_0.a.d, vec2<bool>(false, false), global1.c.d.x))) ^ 23234u, global1.a.a, select(firstLeadingBit(select(var_0.b.yw, var_0.b.xw, global1.a.c >= global1.a.c)), vec2<u32>(1u, u_input.a), global1.c.d.x));
    var_0 = Struct_2(var_0.a, global1.a.a.c, ~func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(10291i, u_input.b) << (global1.c.c.xy % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.c, var_0.c), vec2<i32>(-2147483647i, 2343i))), !any(vec2<bool>(var_0.a.d.x, global1.a.a.d.x)), var_0.b.zy));
    var var_1 = select(select(!select(vec4<bool>(var_0.a.d.x, var_0.a.d.x, false, global1.c.d.x), select(vec4<bool>(false, var_0.a.d.x, false, global1.c.d.x), vec4<bool>(false, global1.a.a.d.x, global1.a.a.d.x, false), false), select(vec4<bool>(true, global1.a.a.d.x, false, var_0.a.d.x), vec4<bool>(var_0.a.d.x, false, global1.a.a.d.x, false), global1.a.a.d.x)), select(select(vec4<bool>(var_0.a.d.x, var_0.a.d.x, global1.a.a.d.x, global1.c.d.x), select(vec4<bool>(true, var_0.a.d.x, true, global1.c.d.x), vec4<bool>(global1.a.a.d.x, false, true, true), global1.a.a.d.x), true), select(!vec4<bool>(var_0.a.d.x, false, var_0.a.d.x, false), select(vec4<bool>(true, global1.c.d.x, true, global1.c.d.x), vec4<bool>(false, var_0.a.d.x, global1.a.a.d.x, false), vec4<bool>(global1.a.a.d.x, false, true, var_0.a.d.x)), select(vec4<bool>(var_0.a.d.x, global1.c.d.x, true, global1.a.a.d.x), vec4<bool>(true, true, false, var_0.a.d.x), vec4<bool>(var_0.a.d.x, var_0.a.d.x, false, global1.a.a.d.x))), vec4<bool>(true, !global1.c.d.x, all(vec4<bool>(global1.c.d.x, false, global1.a.a.d.x, var_0.a.d.x)), global1.a.a.d.x)), vec4<bool>(global1.c.d.x, var_0.a.d.x, all(vec2<bool>(true, true)), select(true, global1.c.d.x || false, var_0.a.d.x))), vec4<bool>(any(!(!vec4<bool>(true, true, var_0.a.d.x, global1.a.a.d.x))), var_0.a.d.x, false, true), vec4<bool>(any(vec4<bool>(12934i >= u_input.b, func_4(u_input.a).d.x, any(vec4<bool>(var_0.a.d.x, var_0.a.d.x, global1.c.d.x, var_0.a.d.x)), true)), !var_0.a.d.x, !(!any(vec4<bool>(false, true, global1.c.d.x, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1306f + 1070f), _wgslsmith_f_op_f32(select(global1.c.b, global1.a.a.b, var_0.a.d.x))) >= global1.c.b));
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.b, var_0.a.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.a.b)), -441f))), vec2<f32>(_wgslsmith_div_f32(-728f, 353f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a.b) * global1.a.a.b))), _wgslsmith_div_f32(403f, -1000f), vec4<u32>(0u, _wgslsmith_mod_u32(abs(53423u), _wgslsmith_mult_u32(63170u, 0u | u_input.a)), ~(7284u & ~var_0.b.x), var_0.b.x & ~(0u | u_input.a)));
}

