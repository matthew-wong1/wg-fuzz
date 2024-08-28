struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(391f, 474f, -134f, 1000f), vec4<f32>(171f, -1660f, 637f, -158f), vec4<f32>(436f, -989f, 361f, -955f), vec4<f32>(1000f, -2129f, -1569f, 1058f), vec4<f32>(980f, 701f, 933f, -1403f), vec4<f32>(1104f, 1000f, 1000f, 776f), vec4<f32>(1071f, -1000f, 529f, -1023f), vec4<f32>(666f, -2384f, -507f, -728f), vec4<f32>(-1090f, -1715f, -268f, -329f), vec4<f32>(-399f, -106f, 1482f, -1278f), vec4<f32>(884f, -766f, -1058f, 307f), vec4<f32>(199f, 1443f, 1206f, 1000f), vec4<f32>(-799f, -1132f, 1003f, -727f), vec4<f32>(494f, 1000f, -414f, -504f), vec4<f32>(-550f, 412f, 1040f, 529f), vec4<f32>(-147f, 284f, -1488f, 1417f), vec4<f32>(-544f, -2773f, -1035f, 1423f), vec4<f32>(-815f, 950f, 1275f, 1827f), vec4<f32>(636f, 641f, -1000f, -1000f), vec4<f32>(1267f, 1307f, 1865f, -1000f), vec4<f32>(-367f, 537f, 607f, -809f), vec4<f32>(-696f, -344f, -2520f, 152f), vec4<f32>(-241f, -522f, -202f, -997f), vec4<f32>(-471f, -1576f, -2531f, -1412f), vec4<f32>(467f, 1297f, -128f, 428f), vec4<f32>(-1073f, -703f, 690f, -472f), vec4<f32>(-806f, 300f, -1642f, 881f), vec4<f32>(348f, 1000f, 196f, -295f), vec4<f32>(450f, -280f, -787f, 992f), vec4<f32>(-658f, -931f, 637f, 948f), vec4<f32>(587f, 656f, -598f, -1260f));

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec3<f32>(643f, -1141f, 580f), vec2<i32>(i32(-2147483648), -16001i), vec4<bool>(true, false, false, false), vec2<i32>(2147483647i, -19314i)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec3<f32>(1000f, 1630f, -322f), vec2<i32>(1i, i32(-2147483648)), vec4<bool>(false, true, true, false), vec2<i32>(1i, -9679i)), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<f32>(-860f, -1346f, 296f), vec2<i32>(24202i, -46260i), vec4<bool>(true, true, false, false), vec2<i32>(0i, 18372i)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec3<f32>(436f, -346f, -452f), vec2<i32>(-8751i, i32(-2147483648)), vec4<bool>(false, false, true, true), vec2<i32>(0i, 1i)), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec3<f32>(-610f, 1134f, -1199f), vec2<i32>(2147483647i, 7068i), vec4<bool>(false, true, true, true), vec2<i32>(28963i, 2147483647i)), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec3<f32>(-312f, 1000f, -893f), vec2<i32>(2147483647i, i32(-2147483648)), vec4<bool>(false, true, false, false), vec2<i32>(19357i, -11882i)), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<f32>(1646f, -1548f, -515f), vec2<i32>(i32(-2147483648), 1i), vec4<bool>(true, false, true, true), vec2<i32>(i32(-2147483648), 48787i)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec3<f32>(1607f, 750f, 841f), vec2<i32>(72129i, 2147483647i), vec4<bool>(true, false, true, true), vec2<i32>(38700i, 0i)), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec3<f32>(-176f, -103f, 331f), vec2<i32>(-8458i, -99542i), vec4<bool>(false, false, false, false), vec2<i32>(1i, -22928i)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec3<f32>(482f, -285f, -1000f), vec2<i32>(41524i, 27824i), vec4<bool>(false, false, false, false), vec2<i32>(8652i, -381i)), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec3<f32>(-599f, 283f, -1004f), vec2<i32>(-17604i, 20947i), vec4<bool>(true, true, true, false), vec2<i32>(2147483647i, 0i)), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec3<f32>(1652f, 2146f, 1294f), vec2<i32>(i32(-2147483648), -15901i), vec4<bool>(true, true, true, false), vec2<i32>(30896i, 1i)), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec3<f32>(1141f, -983f, -326f), vec2<i32>(-55599i, 14851i), vec4<bool>(false, false, false, false), vec2<i32>(0i, -23057i)), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec3<f32>(-872f, -618f, -260f), vec2<i32>(1i, 60144i), vec4<bool>(false, false, true, false), vec2<i32>(i32(-2147483648), -1i)), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec3<f32>(-1169f, 1385f, -904f), vec2<i32>(-1i, -1i), vec4<bool>(true, false, true, false), vec2<i32>(24550i, 2147483647i)), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec3<f32>(1008f, -1000f, 168f), vec2<i32>(-1i, 0i), vec4<bool>(false, false, false, true), vec2<i32>(-42042i, 2147483647i)), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec3<f32>(1956f, 669f, -1012f), vec2<i32>(0i, i32(-2147483648)), vec4<bool>(false, true, false, true), vec2<i32>(15543i, 9338i)), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec3<f32>(324f, -891f, -553f), vec2<i32>(-25385i, -1i), vec4<bool>(false, true, false, false), vec2<i32>(-10666i, -1i)), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<f32>(-485f, -647f, -1124f), vec2<i32>(1i, -1i), vec4<bool>(true, true, true, true), vec2<i32>(0i, 2147483647i)), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec3<f32>(1119f, -370f, 178f), vec2<i32>(13878i, 1i), vec4<bool>(false, false, true, true), vec2<i32>(1i, 1706i)), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<f32>(723f, 753f, -422f), vec2<i32>(2147483647i, i32(-2147483648)), vec4<bool>(true, false, true, true), vec2<i32>(2147483647i, -56097i)), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<f32>(155f, 1502f, -1148f), vec2<i32>(-36546i, -57886i), vec4<bool>(false, false, false, false), vec2<i32>(1i, 28168i)), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec3<f32>(-505f, 384f, 1336f), vec2<i32>(-5591i, 1i), vec4<bool>(false, false, true, true), vec2<i32>(30815i, 1i)), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<f32>(-527f, -555f, 742f), vec2<i32>(16496i, -55245i), vec4<bool>(false, true, true, false), vec2<i32>(-9089i, -26480i)), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec3<f32>(2360f, 1000f, -1206f), vec2<i32>(0i, -27059i), vec4<bool>(false, false, true, true), vec2<i32>(i32(-2147483648), -41313i)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec3<f32>(-1996f, 1495f, -778f), vec2<i32>(0i, 1i), vec4<bool>(false, false, false, false), vec2<i32>(1i, -15965i)), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec3<f32>(-254f, 153f, -1067f), vec2<i32>(i32(-2147483648), -25581i), vec4<bool>(true, false, false, true), vec2<i32>(-3951i, 1i)), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec3<f32>(385f, -482f, 965f), vec2<i32>(0i, 0i), vec4<bool>(false, false, false, true), vec2<i32>(783i, 2147483647i)), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<f32>(195f, -379f, -184f), vec2<i32>(16678i, i32(-2147483648)), vec4<bool>(true, false, false, true), vec2<i32>(-68988i, 2147483647i)), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec3<f32>(-1000f, 443f, 232f), vec2<i32>(-1i, -62186i), vec4<bool>(true, true, false, false), vec2<i32>(14758i, 2147483647i)), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec3<f32>(-837f, 607f, -611f), vec2<i32>(1i, 38307i), vec4<bool>(false, true, false, true), vec2<i32>(-1i, -34322i)), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<f32>(410f, 1393f, -119f), vec2<i32>(-1i, 1i), vec4<bool>(true, false, true, false), vec2<i32>(5683i, -1i)), vec3<bool>(true, false, true)));

var<private> global2: array<f32, 21> = array<f32, 21>(482f, -1000f, 654f, -786f, 603f, 1577f, 530f, 2094f, -722f, 233f, 1000f, -1135f, 973f, 815f, 1524f, 606f, 1000f, 1000f, 846f, -1557f, -968f);

var<private> global3: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(22865u, 1u, 35563u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(90381u, 1u, 4294967295u), vec3<u32>(99875u, 100u, 4294967295u), vec3<u32>(1u, 0u, 69159u), vec3<u32>(26548u, 4294967295u, 4010u), vec3<u32>(0u, 0u, 15476u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(4294967295u, 11041u, 4294967295u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 1u, 60916u), vec3<u32>(61090u, 44092u, 4294967295u), vec3<u32>(55702u, 63240u, 47867u), vec3<u32>(4294967295u, 21214u, 109818u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(38830u, 1u, 1u), vec3<u32>(0u, 0u, 4256u), vec3<u32>(68749u, 41339u, 0u), vec3<u32>(4294967295u, 4294967295u, 34326u), vec3<u32>(68157u, 0u, 4294967295u), vec3<u32>(1u, 0u, 17328u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(72731u, 1u, 1u), vec3<u32>(0u, 0u, 64889u), vec3<u32>(0u, 6168u, 1u), vec3<u32>(57807u, 4294967295u, 32791u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 71276u, 1u));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = !arg_0.x;
    let var_1 = _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.c.x, 21u)], 1f))));
    let var_2 = arg_3.a.c.xxw;
    global1 = array<Struct_2, 32>();
    let var_3 = global1[_wgslsmith_index_u32(u_input.c.x, 32u)];
    return ~(vec4<i32>(-(~arg_3.a.b.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, arg_3.a.b.x, 36872i), vec4<i32>(0i, var_3.a.b.x, 2147483647i, 2147483647i)), ~(-2147483647i), select(_wgslsmith_div_i32(2147483647i, -4939i), _wgslsmith_add_i32(arg_3.a.b.x, u_input.e), all(var_2.xz))) << (vec4<u32>(u_input.c.x, ~_wgslsmith_add_u32(u_input.c.x, 4294967295u), _wgslsmith_div_u32(abs(1u), _wgslsmith_mod_u32(5416u, 4294967295u)), (25550u >> (u_input.c.x % 32u)) & _wgslsmith_sub_u32(4294967295u, 22177u)) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = select(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x), arg_0.c.yxy, arg_0.c.zxw), arg_0.c.yyz), !arg_0.c.zyx, arg_0.c.xxy), select(vec3<bool>(arg_0.c.x, arg_0.c.x, false), select(select(vec3<bool>(arg_0.c.x, false, arg_0.c.x), vec3<bool>(arg_0.c.x, true, arg_0.c.x), vec3<bool>(arg_0.c.x, false, true)), arg_0.c.ywx, any(arg_0.c.wx) || any(arg_0.c.yyx)), arg_0.c.wwy), true);
    let var_1 = arg_0.a.x;
    global2 = array<f32, 21>();
    var var_2 = arg_0.a;
    var var_3 = ~((arg_0.d.x >> (~countOneBits(u_input.c.x) % 32u)) >> (u_input.c.x % 32u));
    return _wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(~(-vec4<i32>(-3582i, 23447i, u_input.e, 20495i)), ~(vec4<i32>(arg_0.d.x, -1i, u_input.d.x, arg_0.b.x) >> (vec4<u32>(u_input.c.x, u_input.c.x, 50218u, 71799u) % vec4<u32>(32u)))), _wgslsmith_div_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(9498i, 2147483647i, arg_0.b.x, u_input.a), vec4<i32>(-16599i, 38718i, u_input.b.x, u_input.d.x)) >> (vec4<u32>(_wgslsmith_add_u32(u_input.c.x, 1u), ~11088u, ~u_input.c.x, _wgslsmith_mult_u32(35045u, u_input.c.x)) % vec4<u32>(32u)), func_1(vec2<bool>(any(var_0), var_0.x), true, select(true, true, true), Struct_2(Struct_1(arg_0.a, u_input.d.xx, arg_0.c, vec2<i32>(52705i, arg_0.d.x)), vec3<bool>(false, arg_0.c.x, var_0.x)))));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: vec2<u32>) -> vec4<u32> {
    global0 = array<vec4<f32>, 31>();
    var var_0 = arg_0.a;
    global3 = array<vec3<u32>, 29>();
    var var_1 = arg_0.a;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(arg_0.a.a))))) + var_1.a), -func_1(vec2<bool>(true, arg_0.a.a.x == arg_0.a.a.x), true, _wgslsmith_f_op_f32(-arg_1) == global2[_wgslsmith_index_u32(u_input.c.x ^ u_input.c.x, 21u)], global1[_wgslsmith_index_u32(abs(arg_3.x), 32u)]).zy, select(!(!var_1.c), select(select(select(arg_0.a.c, vec4<bool>(arg_2, var_0.c.x, arg_0.a.c.x, true), false), var_1.c, select(var_0.c.x, arg_0.b.x, true)), var_0.c, true), !(!(!arg_0.a.c))), _wgslsmith_add_vec2_i32(~abs(vec2<i32>(55456i, 1i)), ~u_input.d.zx));
    return vec4<u32>(arg_3.x, 0u, ~8956u | _wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(35827u, 1u, arg_3.x)), abs(~global3[_wgslsmith_index_u32(1u, 29u)])), _wgslsmith_add_u32(select(arg_3.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, arg_3.x, 97596u, 76118u), vec4<u32>(4294967295u, arg_3.x, 0u, 1u)), arg_3.x), !arg_0.a.c.x), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ((vec4<i32>(-1i, _wgslsmith_div_i32(-4454i, 1i), u_input.e, _wgslsmith_add_i32(17238i, -2147483647i)) ^ ~(vec4<i32>(u_input.b.x, u_input.e, u_input.a, 2147483647i) >> (vec4<u32>(0u, u_input.c.x, u_input.c.x, 0u) % vec4<u32>(32u)))) & vec4<i32>(u_input.d.x, -1i, u_input.a, u_input.d.x)) ^ ~_wgslsmith_clamp_vec4_i32(-func_1(vec2<bool>(true, false), false, false, global1[_wgslsmith_index_u32(55819u, 32u)]), min(firstTrailingBit(vec4<i32>(0i, 1i, u_input.a, u_input.e)), ~vec4<i32>(u_input.d.x, 18077i, 0i, 23768i)), _wgslsmith_sub_vec4_i32(func_1(vec2<bool>(true, true), true, true, global1[_wgslsmith_index_u32(0u, 32u)]), func_2(Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(36072u, 21u)], 159f, 1116f), vec2<i32>(8252i, -2147483647i), vec4<bool>(false, true, true, true), vec2<i32>(u_input.a, 23719i)))));
    let var_1 = ~_wgslsmith_div_vec3_u32(~(global3[_wgslsmith_index_u32(11388u, 29u)] | global3[_wgslsmith_index_u32(u_input.c.x, 29u)]) << (~u_input.c % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(~vec3<u32>(33102u, 27946u, u_input.c.x) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(77830u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 1u, u_input.c.x), global3[_wgslsmith_index_u32(18188u, 29u)]) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(69051u, u_input.c.x, u_input.c.x) << (u_input.c % vec3<u32>(32u)), u_input.c)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(35578u, 1u, 4269u, 17691u) ^ vec4<u32>(var_1.x, 20251u, var_1.x, 4294967295u), _wgslsmith_add_vec4_u32(func_3(Struct_2(Struct_1(vec3<f32>(-662f, global2[_wgslsmith_index_u32(30363u, 21u)], -619f), u_input.d.zy, vec4<bool>(true, false, false, false), var_0.xw), vec3<bool>(false, false, false)), -1471f, true, vec2<u32>(var_1.x, var_1.x)), ~vec4<u32>(var_1.x, 44692u, var_1.x, u_input.c.x))), 21u)]) * 1388f);
    let var_3 = select(!vec3<bool>(true, !(u_input.c.x != var_1.x), true), !vec3<bool>(true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), true)), any(select(vec2<bool>(true, false), vec2<bool>(false, false), false))), !(!vec3<bool>(any(vec3<bool>(false, false, true)), true, true)));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1078f, global2[_wgslsmith_index_u32(var_1.x, 21u)])), _wgslsmith_div_f32(419f, 239f), 1548f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(899f, _wgslsmith_f_op_f32(round(-2648f)), _wgslsmith_f_op_f32(round(-1497f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(748f, global2[_wgslsmith_index_u32(39459u, 21u)], var_2)))), vec3<bool>(35664i < var_0.x, var_3.x | false, any(vec4<bool>(false, false, var_3.x, var_3.x))))), !(!var_3))), ~vec2<i32>(u_input.e, func_2(Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 21u)], global2[_wgslsmith_index_u32(u_input.c.x, 21u)], 672f), vec2<i32>(u_input.a, -1i), vec4<bool>(true, true, true, true), vec2<i32>(var_0.x, -51046i))).x), select(vec4<bool>(all(select(vec4<bool>(false, var_3.x, var_3.x, var_3.x), vec4<bool>(false, var_3.x, false, var_3.x), false)), _wgslsmith_div_f32(1790f, var_2) > _wgslsmith_div_f32(var_2, 269f), var_3.x, any(vec2<bool>(true, var_3.x))), !select(vec4<bool>(true, var_3.x, var_3.x, var_3.x), vec4<bool>(true, var_3.x, true, false), var_3.x), select(vec4<bool>(true, false, true, false), vec4<bool>(select(var_3.x, false, true), select(false, var_3.x, true), select(var_3.x, var_3.x, false), false), select(vec4<bool>(var_3.x, var_3.x, false, false), !vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), var_3.x))), vec2<i32>(u_input.e, u_input.e));
    let var_5 = var_4.c.xx;
    global0 = array<vec4<f32>, 31>();
    var var_6 = global1[_wgslsmith_index_u32(var_1.x, 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(2863u);
}

