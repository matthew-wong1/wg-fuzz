struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: f32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(vec2<i32>(50545i, 51866i), Struct_2(vec2<i32>(0i, -67780i), 1u, true, Struct_1(vec4<f32>(-1000f, -729f, 633f, -338f), vec3<bool>(false, false, true), vec4<bool>(true, true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), 1292f, vec3<u32>(51495u, 0u, 59403u)), Struct_3(vec2<i32>(2147483647i, 0i), Struct_2(vec2<i32>(1i, -17457i), 0u, true, Struct_1(vec4<f32>(1089f, -1094f, 314f, 1339f), vec3<bool>(false, true, false), vec4<bool>(true, false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), 601f, vec3<u32>(4294967295u, 13896u, 56159u)), Struct_3(vec2<i32>(40107i, 0i), Struct_2(vec2<i32>(69896i, -1i), 4294967295u, true, Struct_1(vec4<f32>(1049f, 690f, 627f, -1000f), vec3<bool>(true, false, false), vec4<bool>(false, true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), 745f, vec3<u32>(1u, 1u, 4294967295u)), Struct_3(vec2<i32>(-51427i, 38671i), Struct_2(vec2<i32>(-14786i, 2147483647i), 6262u, false, Struct_1(vec4<f32>(1588f, 1127f, 234f, -1931f), vec3<bool>(false, true, true), vec4<bool>(true, true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), 656f, vec3<u32>(4294967295u, 1u, 38382u)), Struct_3(vec2<i32>(2147483647i, 0i), Struct_2(vec2<i32>(41730i, 1i), 67110u, true, Struct_1(vec4<f32>(-1346f, 254f, 817f, -740f), vec3<bool>(true, true, false), vec4<bool>(true, true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), 1417f, vec3<u32>(2515u, 1u, 4294967295u)), Struct_3(vec2<i32>(6966i, -15379i), Struct_2(vec2<i32>(11754i, 29884i), 4294967295u, false, Struct_1(vec4<f32>(-138f, 717f, -1021f, 595f), vec3<bool>(false, true, true), vec4<bool>(true, false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), 830f, vec3<u32>(1u, 1u, 0u)), Struct_3(vec2<i32>(-43559i, -1i), Struct_2(vec2<i32>(-23195i, 0i), 55853u, true, Struct_1(vec4<f32>(883f, -1280f, 512f, 570f), vec3<bool>(true, false, false), vec4<bool>(false, false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), 1000f, vec3<u32>(0u, 1u, 27594u)), Struct_3(vec2<i32>(-7019i, 2147483647i), Struct_2(vec2<i32>(-1i, 2147483647i), 0u, false, Struct_1(vec4<f32>(-1524f, 244f, -826f, -545f), vec3<bool>(true, false, false), vec4<bool>(false, true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), -1000f, vec3<u32>(0u, 8826u, 29262u)), Struct_3(vec2<i32>(-1i, -1i), Struct_2(vec2<i32>(2147483647i, 0i), 0u, false, Struct_1(vec4<f32>(-1339f, 332f, -1000f, -1000f), vec3<bool>(false, true, false), vec4<bool>(true, false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), -532f, vec3<u32>(14152u, 4294967295u, 1u)), Struct_3(vec2<i32>(-42576i, 2147483647i), Struct_2(vec2<i32>(0i, 21295i), 87731u, true, Struct_1(vec4<f32>(-796f, 1772f, -371f, -191f), vec3<bool>(false, true, false), vec4<bool>(false, true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), 696f, vec3<u32>(12825u, 1u, 0u)), Struct_3(vec2<i32>(6169i, -1i), Struct_2(vec2<i32>(42732i, 47378i), 1u, false, Struct_1(vec4<f32>(-1723f, -1274f, -472f, -449f), vec3<bool>(true, false, true), vec4<bool>(false, true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), -1481f, vec3<u32>(6725u, 0u, 12210u)), Struct_3(vec2<i32>(-1i, 1i), Struct_2(vec2<i32>(-33202i, 52530i), 1u, true, Struct_1(vec4<f32>(1000f, -1780f, 524f, -1032f), vec3<bool>(true, true, true), vec4<bool>(true, true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), -998f, vec3<u32>(4294967295u, 1u, 56679u)), Struct_3(vec2<i32>(13529i, 2147483647i), Struct_2(vec2<i32>(4960i, 1i), 116344u, false, Struct_1(vec4<f32>(553f, 1674f, 1538f, -1089f), vec3<bool>(false, true, true), vec4<bool>(false, false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), -219f, vec3<u32>(4294967295u, 10617u, 0u)), Struct_3(vec2<i32>(2147483647i, -3389i), Struct_2(vec2<i32>(44964i, 29996i), 0u, true, Struct_1(vec4<f32>(-240f, 987f, 229f, -1514f), vec3<bool>(false, false, false), vec4<bool>(false, false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), 395f, vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_3(vec2<i32>(17554i, -15025i), Struct_2(vec2<i32>(i32(-2147483648), 0i), 31770u, false, Struct_1(vec4<f32>(145f, -224f, -862f, 470f), vec3<bool>(true, true, true), vec4<bool>(true, true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), -703f, vec3<u32>(36115u, 0u, 4294967295u)), Struct_3(vec2<i32>(30940i, -9261i), Struct_2(vec2<i32>(i32(-2147483648), 33294i), 99039u, false, Struct_1(vec4<f32>(-718f, 752f, -1000f, 1728f), vec3<bool>(true, true, false), vec4<bool>(true, false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), 219f, vec3<u32>(10535u, 12236u, 4294967295u)), Struct_3(vec2<i32>(-14555i, 2147483647i), Struct_2(vec2<i32>(256i, -1i), 1u, true, Struct_1(vec4<f32>(667f, -280f, -247f, 738f), vec3<bool>(true, true, true), vec4<bool>(true, false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), 1262f, vec3<u32>(19939u, 1u, 4294967295u)), Struct_3(vec2<i32>(-1i, 2147483647i), Struct_2(vec2<i32>(1i, 2147483647i), 4294967295u, true, Struct_1(vec4<f32>(150f, 833f, -562f, 248f), vec3<bool>(false, true, false), vec4<bool>(true, false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), -364f, vec3<u32>(4294967295u, 4294967295u, 26119u)), Struct_3(vec2<i32>(190i, 2147483647i), Struct_2(vec2<i32>(41154i, -2845i), 26299u, true, Struct_1(vec4<f32>(-197f, 177f, -131f, -448f), vec3<bool>(true, false, true), vec4<bool>(true, true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), -612f, vec3<u32>(1u, 4294967295u, 40867u)), Struct_3(vec2<i32>(2147483647i, 1i), Struct_2(vec2<i32>(-18864i, -1393i), 1u, true, Struct_1(vec4<f32>(-1065f, -879f, 577f, -504f), vec3<bool>(true, false, true), vec4<bool>(true, true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), 353f, vec3<u32>(47151u, 19561u, 0u)), Struct_3(vec2<i32>(72722i, 2147483647i), Struct_2(vec2<i32>(118i, 22702i), 0u, false, Struct_1(vec4<f32>(-206f, 315f, 746f, -626f), vec3<bool>(false, true, false), vec4<bool>(false, true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), 638f, vec3<u32>(0u, 84444u, 1u)), Struct_3(vec2<i32>(-31598i, 0i), Struct_2(vec2<i32>(2147483647i, -15286i), 4294967295u, false, Struct_1(vec4<f32>(-1293f, 733f, 1324f, 1385f), vec3<bool>(false, true, false), vec4<bool>(true, true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), -1041f, vec3<u32>(76190u, 0u, 31382u)), Struct_3(vec2<i32>(2147483647i, i32(-2147483648)), Struct_2(vec2<i32>(0i, i32(-2147483648)), 0u, true, Struct_1(vec4<f32>(-1399f, -940f, 296f, -690f), vec3<bool>(true, true, true), vec4<bool>(true, false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), -336f, vec3<u32>(0u, 4294967295u, 78625u)), Struct_3(vec2<i32>(-4848i, 48485i), Struct_2(vec2<i32>(i32(-2147483648), 1i), 1u, false, Struct_1(vec4<f32>(1716f, 485f, -391f, 210f), vec3<bool>(true, true, true), vec4<bool>(true, true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), -111f, vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_3(vec2<i32>(49993i, i32(-2147483648)), Struct_2(vec2<i32>(-30337i, 0i), 29356u, true, Struct_1(vec4<f32>(472f, 434f, -350f, 1000f), vec3<bool>(false, false, false), vec4<bool>(true, false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), 265f, vec3<u32>(1u, 39316u, 6197u)), Struct_3(vec2<i32>(1i, 51862i), Struct_2(vec2<i32>(-1i, 0i), 25632u, true, Struct_1(vec4<f32>(600f, 652f, -209f, -587f), vec3<bool>(true, true, true), vec4<bool>(true, false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), -621f, vec3<u32>(19435u, 97789u, 4294967295u)));

var<private> global1: vec4<i32> = vec4<i32>(0i, 2147483647i, 2875i, -1i);

var<private> global2: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(-563f, 1407f), vec2<f32>(-790f, 374f), vec2<f32>(634f, 1034f), vec2<f32>(359f, 3133f), vec2<f32>(-737f, -291f), vec2<f32>(-129f, 245f), vec2<f32>(577f, -334f), vec2<f32>(-580f, -2154f), vec2<f32>(-351f, 674f), vec2<f32>(-570f, -235f), vec2<f32>(1636f, -509f), vec2<f32>(361f, -595f), vec2<f32>(-451f, 702f), vec2<f32>(-117f, 696f), vec2<f32>(694f, 149f), vec2<f32>(465f, 1257f), vec2<f32>(-329f, -1224f), vec2<f32>(-155f, -892f), vec2<f32>(-2883f, -920f), vec2<f32>(332f, -203f), vec2<f32>(693f, 1204f), vec2<f32>(310f, 142f), vec2<f32>(-600f, 169f), vec2<f32>(816f, 1188f), vec2<f32>(-1428f, 972f), vec2<f32>(1214f, -2423f));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_3(countOneBits(~vec2<i32>(_wgslsmith_mod_i32(-53043i, 2147483647i), 58114i)), Struct_2(max(~global1.zw << (firstLeadingBit(vec2<u32>(0u, 0u)) % vec2<u32>(32u)), ~global1.zx >> (u_input.b.wx % vec2<u32>(32u))), _wgslsmith_sub_u32(u_input.b.x, ~u_input.b.x), all(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1973f, 656f, -346f, -719f) * vec4<f32>(-651f, -426f, 419f, 1903f))), vec3<bool>(true, false, false), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(any(vec4<bool>(true, true, false, true)), true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(875f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-782f, 148f))))), -716f), u_input.b.zzy);
    global0 = array<Struct_3, 26>();
    let var_1 = min(firstLeadingBit(select(u_input.b, max(vec4<u32>(13694u, 34814u, 1u, 36033u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, var_0.d.x)), select(vec4<bool>(var_0.b.c, var_0.b.d.d.x, false, var_0.b.d.d.x), var_0.b.d.c, vec4<bool>(var_0.b.c, false, var_0.b.d.d.x, var_0.b.d.c.x)))) ^ firstLeadingBit(u_input.b), vec4<u32>(0u, var_0.d.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.b.wz, u_input.b.xw), ~97758u), var_0.d.x));
    global2 = array<vec2<f32>, 26>();
    global2 = array<vec2<f32>, 26>();
    return ~vec4<i32>(u_input.a, global1.x ^ ~17984i, 0i, countOneBits(-var_0.b.a.x));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: bool) -> f32 {
    var var_0 = u_input.c;
    global1 = ~max(_wgslsmith_mult_vec4_i32(abs(func_3()), firstLeadingBit(vec4<i32>(global1.x, u_input.a, u_input.a, 2147483647i) ^ vec4<i32>(-3985i, -1i, u_input.a, u_input.c))), firstLeadingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, -1i, 3122i, u_input.c), vec4<i32>(6853i, 4071i, global1.x, -1831i))));
    let var_1 = u_input.b.x;
    global0 = array<Struct_3, 26>();
    let var_2 = u_input.b;
    return arg_0;
}

fn func_1() -> vec2<i32> {
    let var_0 = vec2<bool>(true | (~(-21356i) < _wgslsmith_div_i32(-u_input.a, ~u_input.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(450f, -812f), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), true)))) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -443f))));
    var var_1 = Struct_2(~global1.xx, u_input.b.x, !var_0.x, Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1549f, -494f, -201f, 1407f) + vec4<f32>(-1460f, 1263f, 105f, -1110f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-721f, -1000f, -923f, -395f) * vec4<f32>(1000f, -2026f, -538f, -647f)), !vec4<bool>(var_0.x, var_0.x, false, var_0.x))), !select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, false), var_0.x), u_input.b.x == u_input.b.x), select(!vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, true, true, any(vec3<bool>(true, var_0.x, true))), vec4<bool>(true, any(vec2<bool>(false, var_0.x)), var_0.x, u_input.b.x > u_input.b.x)), !(!vec3<bool>(var_0.x, var_0.x, var_0.x)), select(select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, false, true)), vec3<bool>(true, var_0.x, var_0.x), var_0.x), !(!vec3<bool>(var_0.x, false, var_0.x)), !(!vec3<bool>(var_0.x, var_0.x, var_0.x)))));
    let var_2 = -abs(_wgslsmith_div_i32(-1i, global1.x));
    var var_3 = !var_1.d.e;
    global2 = array<vec2<f32>, 26>();
    return abs(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 26>();
    global2 = array<vec2<f32>, 26>();
    let var_0 = Struct_2(_wgslsmith_add_vec2_i32(countOneBits(~vec2<i32>(17538i, 1i)), func_1()), u_input.b.x, ~u_input.b.x == _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(384f, -711f, 603f, 1033f) - _wgslsmith_div_vec4_f32(vec4<f32>(746f, 718f, -595f, -483f), vec4<f32>(-1948f, -239f, -610f, -1686f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(109f, 141f, 528f, -440f)))), vec4<bool>(false, true, true, true))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), select(vec4<bool>(68561u != u_input.b.x, all(vec2<bool>(false, true)), true, any(vec2<bool>(false, false))), vec4<bool>(true, true, all(vec4<bool>(false, false, false, false)), select(true, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, true, false, false)), true, true))));
    global2 = array<vec2<f32>, 26>();
    global1 = (~(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, -6004i, global1.x), vec4<i32>(u_input.a, var_0.a.x, u_input.a, u_input.c), vec4<i32>(var_0.a.x, -10177i, var_0.a.x, global1.x)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(74147u, 4294967295u, var_0.b, 1u), vec4<u32>(u_input.b.x, 21377u, 35694u, var_0.b), u_input.b) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(~u_input.b, u_input.b) % vec4<u32>(32u))) >> (countOneBits(vec4<u32>(min(~4294967295u, ~22494u), (var_0.b & 0u) | 45354u, abs(u_input.b.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xy) % 32u), _wgslsmith_mult_u32(1u, 1u))) % vec4<u32>(32u));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(min(_wgslsmith_add_u32(~4294967295u, select(4294967295u, 5417u, true)), var_0.b), 4294967295u, _wgslsmith_sub_u32(1u, ~(4294967295u >> (0u % 32u)))), max(countOneBits(vec3<u32>(0u, 86221u, 4294967295u) >> (u_input.b.wzw % vec3<u32>(32u))), ~min(vec3<u32>(57730u, 100937u, 76652u), u_input.b.xww)) << (u_input.b.wwz % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(-var_0.d.a.x);
    global1 = reverseBits(firstTrailingBit(~max(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, -2147483647i, var_0.a.x, 43663i), vec4<i32>(-62831i, u_input.c, global1.x, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.x, -1i, u_input.c, 2147483647i), vec4<i32>(13383i, 23012i, global1.x, -1i)))));
    global0 = array<Struct_3, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0.a.x, global1.x, _wgslsmith_mod_i32(~17896i, select(u_input.a, u_input.c, false)) & var_0.a.x), var_0.d.a.x, ~(~_wgslsmith_mod_u32(~u_input.b.x, u_input.b.x)), ~(~(~vec2<u32>(var_0.b, u_input.b.x) | vec2<u32>(4294967295u, 4294967295u))));
}

