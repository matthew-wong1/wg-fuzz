struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false));

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec4<f32>(-260f, -1139f, -578f, 1040f), Struct_1(vec3<i32>(-14667i, 15903i, 18251i), vec4<bool>(true, false, true, true), 2147483647i, 20145i, 43848u), Struct_1(vec3<i32>(-12185i, 2147483647i, i32(-2147483648)), vec4<bool>(true, false, true, true), 16772i, 11048i, 9553u)), Struct_2(vec4<f32>(-545f, 197f, 157f, 1038f), Struct_1(vec3<i32>(318i, 0i, i32(-2147483648)), vec4<bool>(false, true, true, true), -1366i, 1i, 1u), Struct_1(vec3<i32>(709i, 23802i, -80747i), vec4<bool>(true, false, true, false), 1i, -40217i, 4294967295u)), Struct_2(vec4<f32>(724f, 477f, 2072f, 456f), Struct_1(vec3<i32>(-6119i, 0i, -38820i), vec4<bool>(true, true, false, false), -16882i, 2147483647i, 72050u), Struct_1(vec3<i32>(1i, 895i, 1i), vec4<bool>(false, true, true, false), 2147483647i, -35746i, 59583u)), Struct_2(vec4<f32>(1000f, 256f, -1000f, 329f), Struct_1(vec3<i32>(-26388i, 2147483647i, -1i), vec4<bool>(false, false, true, true), i32(-2147483648), 86146i, 60438u), Struct_1(vec3<i32>(1i, -1i, 1i), vec4<bool>(false, false, true, false), -1i, -13691i, 70316u)), Struct_2(vec4<f32>(616f, 1142f, -388f, 1084f), Struct_1(vec3<i32>(4055i, -3160i, i32(-2147483648)), vec4<bool>(false, false, true, false), 20144i, 11538i, 13454u), Struct_1(vec3<i32>(22336i, i32(-2147483648), -2678i), vec4<bool>(true, true, true, true), -1i, i32(-2147483648), 4294967295u)), Struct_2(vec4<f32>(-635f, 1558f, 1690f, -1102f), Struct_1(vec3<i32>(1i, 36879i, 6110i), vec4<bool>(true, false, true, true), 1i, -14924i, 0u), Struct_1(vec3<i32>(17601i, 1i, 0i), vec4<bool>(false, true, true, false), 12696i, 0i, 21622u)), Struct_2(vec4<f32>(813f, -1528f, 426f, -1373f), Struct_1(vec3<i32>(-1i, 1i, -25711i), vec4<bool>(false, true, true, true), 2147483647i, -19306i, 9962u), Struct_1(vec3<i32>(1i, 15997i, -1i), vec4<bool>(true, false, true, true), i32(-2147483648), 8353i, 46929u)), Struct_2(vec4<f32>(485f, -635f, -382f, -362f), Struct_1(vec3<i32>(1i, i32(-2147483648), -37566i), vec4<bool>(false, false, true, false), i32(-2147483648), -1i, 0u), Struct_1(vec3<i32>(-32621i, 1i, 14591i), vec4<bool>(false, true, false, false), 1i, -76276i, 51829u)), Struct_2(vec4<f32>(-375f, -169f, 256f, 163f), Struct_1(vec3<i32>(i32(-2147483648), 1i, -41537i), vec4<bool>(false, false, false, false), -17278i, 13132i, 0u), Struct_1(vec3<i32>(23205i, -18898i, 16289i), vec4<bool>(false, true, false, false), 27738i, 1i, 0u)), Struct_2(vec4<f32>(868f, 707f, -2336f, 3057f), Struct_1(vec3<i32>(1196i, -1i, 4401i), vec4<bool>(false, true, true, true), 1i, 2147483647i, 0u), Struct_1(vec3<i32>(-1i, -1i, 0i), vec4<bool>(false, false, true, true), 2147483647i, i32(-2147483648), 28493u)), Struct_2(vec4<f32>(1064f, 459f, 2165f, -256f), Struct_1(vec3<i32>(2147483647i, 235i, -4043i), vec4<bool>(true, true, true, false), -16195i, -21059i, 52730u), Struct_1(vec3<i32>(-14038i, i32(-2147483648), 2972i), vec4<bool>(true, true, false, true), 73319i, 2147483647i, 0u)), Struct_2(vec4<f32>(-595f, -773f, -1772f, -1305f), Struct_1(vec3<i32>(66020i, i32(-2147483648), 16560i), vec4<bool>(false, false, false, false), -1i, -11531i, 0u), Struct_1(vec3<i32>(1i, 2147483647i, 1i), vec4<bool>(false, true, false, false), 1i, -35152i, 1u)), Struct_2(vec4<f32>(-379f, 3218f, 982f, -1465f), Struct_1(vec3<i32>(-1i, 0i, -16897i), vec4<bool>(false, false, true, false), 0i, -5814i, 51853u), Struct_1(vec3<i32>(0i, -9019i, -1i), vec4<bool>(false, false, true, true), 18122i, -7612i, 1u)), Struct_2(vec4<f32>(-482f, -501f, 1176f, 800f), Struct_1(vec3<i32>(-68679i, i32(-2147483648), 8583i), vec4<bool>(true, true, false, false), 41635i, -1i, 0u), Struct_1(vec3<i32>(-75722i, 2147483647i, 0i), vec4<bool>(false, true, false, false), 4073i, 6933i, 0u)), Struct_2(vec4<f32>(-1542f, -382f, -1445f, -437f), Struct_1(vec3<i32>(i32(-2147483648), -41087i, 0i), vec4<bool>(false, true, true, false), 46587i, 0i, 4294967295u), Struct_1(vec3<i32>(2147483647i, 5381i, 22941i), vec4<bool>(true, false, false, false), 0i, 17767i, 0u)), Struct_2(vec4<f32>(1437f, -1000f, 1512f, -818f), Struct_1(vec3<i32>(i32(-2147483648), 0i, 30762i), vec4<bool>(false, true, false, true), -22586i, -17868i, 75993u), Struct_1(vec3<i32>(47375i, -1i, 15602i), vec4<bool>(true, false, false, true), -69574i, 64154i, 46838u)), Struct_2(vec4<f32>(-1000f, -396f, -1101f, -638f), Struct_1(vec3<i32>(14925i, -1383i, 0i), vec4<bool>(false, true, false, true), -1i, -376i, 1u), Struct_1(vec3<i32>(8045i, 34367i, i32(-2147483648)), vec4<bool>(true, true, true, false), -1i, i32(-2147483648), 59864u)), Struct_2(vec4<f32>(1973f, -756f, -832f, 1196f), Struct_1(vec3<i32>(0i, -43972i, 2147483647i), vec4<bool>(true, true, true, true), 2147483647i, -51095i, 22284u), Struct_1(vec3<i32>(1i, 850i, -3304i), vec4<bool>(true, true, false, false), 1i, 2147483647i, 1u)), Struct_2(vec4<f32>(-1026f, 102f, -214f, 210f), Struct_1(vec3<i32>(i32(-2147483648), -27381i, -1i), vec4<bool>(true, false, true, true), -14409i, 0i, 17890u), Struct_1(vec3<i32>(1i, 26427i, i32(-2147483648)), vec4<bool>(false, false, true, false), -7979i, i32(-2147483648), 4294967295u)), Struct_2(vec4<f32>(509f, -697f, 876f, 1187f), Struct_1(vec3<i32>(0i, 35375i, -45503i), vec4<bool>(true, false, true, true), 2410i, 12443i, 0u), Struct_1(vec3<i32>(-21777i, -2745i, 21278i), vec4<bool>(false, false, false, false), i32(-2147483648), 2147483647i, 4294967295u)), Struct_2(vec4<f32>(-739f, 543f, 1416f, 229f), Struct_1(vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec4<bool>(true, false, true, false), -1i, 13606i, 44034u), Struct_1(vec3<i32>(-25665i, 2147483647i, 11817i), vec4<bool>(true, false, true, false), 34157i, -42880i, 63798u)));

var<private> global3: array<i32, 3> = array<i32, 3>(8315i, 28i, 1i);

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    global1 = array<vec4<bool>, 12>();
    global1 = array<vec4<bool>, 12>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~countOneBits(global4.e), ~_wgslsmith_mod_u32(29851u, 1u)), 21u)];
    global4 = var_0.c;
    let var_1 = Struct_1(select(var_0.c.a, vec3<i32>(1i << (_wgslsmith_mod_u32(var_0.b.e, 4294967295u) % 32u), -2147483647i, select(_wgslsmith_mult_i32(48509i, var_0.c.c), 0i, false && global4.b.x)), !select(!var_0.c.b.xyy, select(vec3<bool>(true, true, arg_0), vec3<bool>(var_0.c.b.x, arg_0, false), global4.b.x), !vec3<bool>(arg_0, false, false))), select(var_0.c.b, vec4<bool>(all(!global4.b.zw), var_0.c.b.x, !global4.b.x, max(global4.e, global4.e) == global4.e), !vec4<bool>(var_0.a.x < -181f, any(vec2<bool>(true, false)), any(global1[_wgslsmith_index_u32(4294967295u, 12u)]), all(var_0.c.b.zy))), _wgslsmith_add_i32(40612i, global3[_wgslsmith_index_u32(41882u, 3u)]), u_input.a.x | _wgslsmith_dot_vec4_i32(-vec4<i32>(global3[_wgslsmith_index_u32(global4.e, 3u)], -9395i, u_input.b, var_0.b.c), vec4<i32>(global4.d, firstLeadingBit(-1i), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-36316i, 0i, 46097i, -4526i), vec4<i32>(u_input.a.x, global3[_wgslsmith_index_u32(global4.e, 3u)], -1i, global3[_wgslsmith_index_u32(global4.e, 3u)])))), _wgslsmith_dot_vec4_u32(vec4<u32>(~(~1u), var_0.c.e & _wgslsmith_dot_vec2_u32(vec2<u32>(45251u, 24893u), vec2<u32>(83898u, 0u)), abs(_wgslsmith_div_u32(0u, 96457u)), ~(~13273u)), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1u, 0u), _wgslsmith_mod_u32(global4.e, 4294967295u), abs(108u), _wgslsmith_mod_u32(global4.e, 10065u)), ~vec4<u32>(4294967295u, 31286u, 69960u, 27665u) >> (~vec4<u32>(706u, var_0.c.e, 10665u, 15437u) % vec4<u32>(32u)))));
    return _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(0u, ~4294967295u), global4.e), ~(~select(countOneBits(vec2<u32>(var_0.c.e, var_0.c.e)), vec2<u32>(1u, 23698u), vec2<bool>(arg_0, true))));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    var var_0 = select(_wgslsmith_mod_i32(arg_0.x, ~(i32(-1i) * -11934i)) & 13636i, -2147483647i, global4.b.x);
    global2 = array<Struct_2, 21>();
    global3 = array<i32, 3>();
    let var_1 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(13496u, global4.e) | (vec2<u32>(global4.e, global4.e) << (vec2<u32>(global4.e, 43095u) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global4.e, global4.e), vec2<u32>(global4.e, global4.e)), func_3(global4.b.x))), vec2<u32>(~(global4.e | global4.e), ~_wgslsmith_sub_u32(global4.e, 4294967295u)));
    let var_2 = i32(-1i) * -7385i;
    return any(global4.b.wx);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(0u, ~(~arg_1.b.e) ^ 4294967295u), 4294967295u, 42444u, 63114u);
    global4 = Struct_1(select(vec3<i32>(-(2777i & u_input.b), u_input.a.x, arg_1.c.d), vec3<i32>(global4.c, 0i, abs(27205i)), all(arg_0.b.yw)), vec4<bool>(false, false, all(vec3<bool>(any(vec2<bool>(false, false)), false != arg_1.c.b.x, true)), true), 0i, _wgslsmith_mult_i32(-select(global3[_wgslsmith_index_u32(var_0.x, 3u)], _wgslsmith_dot_vec3_i32(vec3<i32>(-32543i, -28701i, arg_0.a.x), global4.a), global4.b.x), i32(-1i) * -8301i), 1u);
    var var_1 = arg_1.c;
    let var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_1.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-149f, arg_2.x, arg_3.x, 404f), vec4<f32>(arg_3.x, arg_2.x, -550f, arg_2.x))) - vec4<f32>(-1172f, arg_3.x, _wgslsmith_f_op_f32(413f - arg_2.x), -738f))), Struct_1(-_wgslsmith_mult_vec3_i32(vec3<i32>(-25969i, -2147483647i, -65949i), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.c, -64301i, 39807i), vec3<i32>(12513i, 61236i, 0i))), select(vec4<bool>(arg_0.b.x, any(global4.b.yzx), true, arg_0.c <= -53012i), vec4<bool>(arg_0.b.x, arg_0.b.x, any(vec4<bool>(var_1.b.x, true, var_1.b.x, false)), arg_0.b.x), any(global4.b.xzz)), global4.c, ~var_1.c, 4294967295u), Struct_1(countOneBits(vec3<i32>(34341i, select(2147483647i, global3[_wgslsmith_index_u32(1u, 3u)], true), ~arg_1.c.c)), !select(select(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(global4.e, 12u)], vec4<bool>(global4.b.x, arg_1.b.b.x, var_1.b.x, global4.b.x)), !global1[_wgslsmith_index_u32(0u, 12u)], select(vec4<bool>(arg_0.b.x, true, arg_0.b.x, true), var_1.b, var_1.b.x)), -_wgslsmith_div_i32(var_1.d, -1i), global3[_wgslsmith_index_u32(39631u, 3u)], 0u));
    global3 = array<i32, 3>();
    return Struct_2(var_2.a, arg_0, arg_1.b);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> Struct_2 {
    global3 = array<i32, 3>();
    global1 = array<vec4<bool>, 12>();
    global0 = arg_1.c.e;
    var var_0 = func_4(arg_1.b, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a.x)), -620f, _wgslsmith_f_op_f32(f32(-1f) * -1038f), _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x))), arg_0.b, Struct_1(u_input.a, vec4<bool>(true, func_2(vec3<i32>(u_input.b, 18564i, 0i)), func_2(vec3<i32>(51797i, 26744i, global3[_wgslsmith_index_u32(0u, 3u)])), true), global3[_wgslsmith_index_u32(~1u, 3u)], 0i, 19548u)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(518f, arg_1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0.a.x))))))), arg_1.a.zz);
    let var_1 = global2[_wgslsmith_index_u32(117u, 21u)];
    return func_4(func_4(Struct_1(vec3<i32>(reverseBits(13021i), arg_3, u_input.b ^ -1i), vec4<bool>(arg_0.b.b.x | false, arg_0.a.x != var_0.a.x, true, any(vec4<bool>(false, arg_1.b.b.x, arg_0.c.b.x, true))), -2147483647i, arg_2, _wgslsmith_add_u32(arg_1.b.e, 77710u) << (~29756u % 32u)), arg_0, vec3<f32>(700f, _wgslsmith_f_op_f32(-arg_0.a.x), var_0.a.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -573f)), _wgslsmith_f_op_vec2_f32(trunc(arg_1.a.zx)))).c, func_4(arg_1.c, arg_0, var_0.a.xzx, vec2<f32>(_wgslsmith_div_f32(-928f, _wgslsmith_f_op_f32(f32(-1f) * -185f)), var_0.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x - arg_1.a.x), _wgslsmith_f_op_f32(809f - arg_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(step(var_1.a.x, var_1.a.x))), arg_0.a.x)), var_1.a.yw);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_2) -> f32 {
    global3 = array<i32, 3>();
    global1 = array<vec4<bool>, 12>();
    return arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_5(any(!global4.b.xz), func_1(global2[_wgslsmith_index_u32(select(4294967295u, (16769u | global4.e) & ~global4.e, !global4.b.x), 21u)], global2[_wgslsmith_index_u32(0u, 21u)], ~global4.d, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, global4.e << (36564u % 32u)) | 1u, 3u)]), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1000f, -1236f, 363f), _wgslsmith_div_vec4_f32(vec4<f32>(-1022f, 670f, -189f, 1000f), vec4<f32>(1534f, -1000f, -1037f, -842f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(-853f, 1648f, -137f, -733f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-438f, 739f, 340f, -635f) * vec4<f32>(-946f, 2125f, -1501f, -1591f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-273f, 896f, -439f, -312f), vec4<f32>(-226f, -172f, -511f, -896f), vec4<bool>(true, global4.b.x, global4.b.x, global4.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1479f, -561f, 683f, 1000f) * vec4<f32>(1356f, -1114f, -241f, -2520f)))), all(func_4(func_4(Struct_1(u_input.a, global4.b, global4.a.x, -2147483647i, global4.e), global2[_wgslsmith_index_u32(global4.e, 21u)], vec3<f32>(-254f, 2201f, 233f), vec2<f32>(-655f, 1292f)).c, global2[_wgslsmith_index_u32(countOneBits(72566u), 21u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-847f, -442f, 703f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -755f), vec2<f32>(-231f, -734f))).b.b.wx))), Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(853f, -820f, 920f, -2155f)), _wgslsmith_div_vec4_f32(vec4<f32>(227f, 118f, -811f, 459f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-481f, -1028f, 1277f, -190f))))), func_4(Struct_1(func_4(Struct_1(global4.a, vec4<bool>(global4.b.x, global4.b.x, global4.b.x, global4.b.x), global3[_wgslsmith_index_u32(global4.e, 3u)], -1i, 21239u), Struct_2(vec4<f32>(466f, 637f, 373f, -2268f), Struct_1(vec3<i32>(3854i, global3[_wgslsmith_index_u32(global4.e, 3u)], u_input.a.x), vec4<bool>(true, global4.b.x, true, global4.b.x), u_input.a.x, global4.c, global4.e), Struct_1(u_input.a, global4.b, -1i, -27150i, global4.e)), vec3<f32>(-1000f, 644f, -678f), vec2<f32>(-268f, 1541f)).c.a, !vec4<bool>(global4.b.x, global4.b.x, global4.b.x, false), 1i, global4.d, global4.e), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1030f, -673f, -489f, -592f) * vec4<f32>(1941f, 166f, -1961f, -283f)), func_4(Struct_1(vec3<i32>(0i, 0i, 23545i), global1[_wgslsmith_index_u32(global4.e, 12u)], u_input.a.x, global4.d, 0u), Struct_2(vec4<f32>(-1666f, -654f, 207f, 1525f), Struct_1(global4.a, vec4<bool>(false, global4.b.x, global4.b.x, true), 1i, global4.c, global4.e), Struct_1(global4.a, vec4<bool>(global4.b.x, false, true, global4.b.x), -1i, 9515i, global4.e)), vec3<f32>(961f, -1000f, 332f), vec2<f32>(-1246f, -170f)).b, func_4(Struct_1(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 12u)], 1i, global4.c, 1u), Struct_2(vec4<f32>(709f, -1000f, 188f, -929f), Struct_1(u_input.a, global4.b, global3[_wgslsmith_index_u32(20836u, 3u)], -2147483647i, 2900u), Struct_1(global4.a, global4.b, 2147483647i, global4.a.x, 68552u)), vec3<f32>(1511f, -1092f, -745f), vec2<f32>(-1324f, -2758f)).b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(276f, -160f, 649f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(161f, 1000f, -435f))), vec2<f32>(1f, _wgslsmith_f_op_f32(select(-484f, 135f, true)))).b, func_1(Struct_2(vec4<f32>(859f, 195f, -110f, 114f), Struct_1(vec3<i32>(u_input.b, global3[_wgslsmith_index_u32(global4.e, 3u)], 1i), vec4<bool>(true, true, true, global4.b.x), u_input.b, u_input.b, 37299u), Struct_1(global4.a, vec4<bool>(false, global4.b.x, global4.b.x, global4.b.x), 0i, -26414i, 1u)), global2[_wgslsmith_index_u32(func_1(Struct_2(vec4<f32>(1000f, -602f, 1262f, 1737f), Struct_1(vec3<i32>(-1i, global4.a.x, 0i), global4.b, 8734i, -2147483647i, 1u), Struct_1(global4.a, global4.b, -57264i, global4.d, global4.e)), Struct_2(vec4<f32>(883f, -286f, 1257f, -1037f), Struct_1(u_input.a, global1[_wgslsmith_index_u32(global4.e, 12u)], u_input.a.x, global3[_wgslsmith_index_u32(global4.e, 3u)], 28279u), Struct_1(vec3<i32>(-1i, u_input.a.x, global3[_wgslsmith_index_u32(1u, 3u)]), global4.b, global3[_wgslsmith_index_u32(82427u, 3u)], global4.a.x, global4.e)), i32(-1i) * -23357i, global3[_wgslsmith_index_u32(global4.e, 3u)] >> (global4.e % 32u)).c.e, 21u)], abs(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(10837u, 3u)], 0i)), firstTrailingBit(-15842i)).b)));
    global1 = array<vec4<bool>, 12>();
    global3 = array<i32, 3>();
    global1 = array<vec4<bool>, 12>();
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2312f)))), _wgslsmith_f_op_f32(f32(-1f) * -670f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -636f), -969f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_0)) + -468f)), func_4(func_1(func_4(Struct_1(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 12u)], u_input.b, 0i, 4294967295u), Struct_2(vec4<f32>(770f, var_0, 1110f, var_0), Struct_1(global4.a, global4.b, global3[_wgslsmith_index_u32(4294967295u, 3u)], global3[_wgslsmith_index_u32(0u, 3u)], global4.e), Struct_1(u_input.a, global1[_wgslsmith_index_u32(global4.e, 12u)], 1i, 0i, global4.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-357f, 1477f, var_0)), vec2<f32>(-181f, var_0)), func_4(Struct_1(global4.a, vec4<bool>(global4.b.x, false, true, false), -1i, global4.c, 4294967295u), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(9424u, 25319u), 21u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, -767f), vec2<f32>(var_0, -1811f), global4.b.wz))), u_input.a.x, _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(global4.e, 3u)], u_input.a.x, abs(u_input.b))).c, func_1(global2[_wgslsmith_index_u32(func_4(func_1(global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(global4.e, 21u)], 17592i, -13721i).b, global2[_wgslsmith_index_u32(81611u, 21u)], vec3<f32>(474f, 1253f, -957f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1134f))).c.e, 21u)], Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -1390f, var_0)), Struct_1(u_input.a, vec4<bool>(true, global4.b.x, false, true), global4.a.x, 57321i, 1u), Struct_1(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 12u)], 7815i, 0i, 44188u)), u_input.a.x, func_1(func_1(Struct_2(vec4<f32>(542f, 687f, 631f, 2359f), Struct_1(vec3<i32>(global3[_wgslsmith_index_u32(global4.e, 3u)], u_input.b, 1i), vec4<bool>(false, global4.b.x, false, false), global3[_wgslsmith_index_u32(global4.e, 3u)], -31741i, 4294967295u), Struct_1(vec3<i32>(global3[_wgslsmith_index_u32(global4.e, 3u)], global3[_wgslsmith_index_u32(global4.e, 3u)], -2147483647i), global1[_wgslsmith_index_u32(0u, 12u)], u_input.a.x, -2147483647i, global4.e)), Struct_2(vec4<f32>(-1989f, var_0, -578f, -1000f), Struct_1(vec3<i32>(u_input.a.x, 1i, 0i), global4.b, -28193i, -1i, global4.e), Struct_1(u_input.a, global1[_wgslsmith_index_u32(54875u, 12u)], -61591i, 2147483647i, global4.e)), 17025i, global3[_wgslsmith_index_u32(global4.e, 3u)]), func_4(Struct_1(vec3<i32>(global4.c, 1i, global4.d), vec4<bool>(true, true, true, global4.b.x), u_input.b, 36359i, global4.e), Struct_2(vec4<f32>(1915f, var_0, var_0, var_0), Struct_1(vec3<i32>(0i, global4.c, -77232i), global4.b, u_input.a.x, global3[_wgslsmith_index_u32(global4.e, 3u)], 79500u), Struct_1(global4.a, vec4<bool>(global4.b.x, true, false, true), global4.c, global4.d, global4.e)), vec3<f32>(var_0, -338f, var_0), vec2<f32>(-1077f, var_0)), ~13821i, i32(-1i) * -30266i).b.a.x), vec3<f32>(var_0, _wgslsmith_f_op_f32(round(-1239f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, -493f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(921f, var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(160f, -1635f) - vec2<f32>(829f, var_0))), true))).b, func_1(func_1(Struct_2(vec4<f32>(1665f, -382f, var_0, -1112f), Struct_1(global4.a, global4.b, 1i, global3[_wgslsmith_index_u32(20728u, 3u)], 4294967295u), Struct_1(vec3<i32>(6989i, 61094i, global4.d), vec4<bool>(global4.b.x, false, true, global4.b.x), global3[_wgslsmith_index_u32(0u, 3u)], 2147483647i, global4.e)), Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(-510f, -284f, var_0, var_0), vec4<f32>(-401f, -1000f, var_0, 566f)), Struct_1(u_input.a, global1[_wgslsmith_index_u32(global4.e, 12u)], 2147483647i, 2147483647i, global4.e), Struct_1(vec3<i32>(1i, global4.a.x, global4.c), vec4<bool>(global4.b.x, global4.b.x, true, global4.b.x), 20539i, u_input.b, global4.e)), -2147483647i, global4.c), func_4(func_1(func_4(Struct_1(u_input.a, vec4<bool>(global4.b.x, true, global4.b.x, global4.b.x), u_input.b, 16111i, global4.e), Struct_2(vec4<f32>(var_0, var_0, 266f, -249f), Struct_1(vec3<i32>(-2147483647i, -2147483647i, global4.a.x), vec4<bool>(global4.b.x, true, true, global4.b.x), 2147483647i, u_input.a.x, global4.e), Struct_1(vec3<i32>(u_input.a.x, 3997i, 38624i), vec4<bool>(false, true, false, false), global3[_wgslsmith_index_u32(54930u, 3u)], global4.c, global4.e)), vec3<f32>(1000f, -1236f, var_0), vec2<f32>(var_0, var_0)), Struct_2(vec4<f32>(var_0, -2682f, -1148f, var_0), Struct_1(u_input.a, global4.b, 1i, global4.c, global4.e), Struct_1(u_input.a, vec4<bool>(false, global4.b.x, global4.b.x, global4.b.x), 0i, 2147483647i, global4.e)), _wgslsmith_add_i32(1i, u_input.b), _wgslsmith_sub_i32(1i, global4.d)).b, func_4(Struct_1(global4.a, global1[_wgslsmith_index_u32(global4.e, 12u)], -1i, -36823i, global4.e), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global4.e, 84546u), 21u)], _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, var_0, var_0))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, 630f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_0, -345f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(452f, var_0, var_0) * vec3<f32>(var_0, -1016f, 2580f))), vec2<f32>(1371f, _wgslsmith_f_op_f32(step(var_0, -554f)))), global4.d, -global3[_wgslsmith_index_u32(global4.e, 3u)]).b);
    let var_2 = _wgslsmith_clamp_i32(func_4(Struct_1(min(vec3<i32>(u_input.b, -7176i, 36015i), var_1.b.a << (vec3<u32>(global4.e, var_1.b.e, global4.e) % vec3<u32>(32u))), select(vec4<bool>(global4.b.x, false, var_1.c.b.x, global4.b.x), vec4<bool>(false, var_1.c.b.x, global4.b.x, var_1.c.b.x), true), -(~(-2147483647i)), -1i, min(25089u, var_1.b.e)), func_4(Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 4991i, global3[_wgslsmith_index_u32(1u, 3u)]), global4.a), func_4(var_1.c, Struct_2(vec4<f32>(243f, 1000f, var_1.a.x, var_0), var_1.c, var_1.c), var_1.a.wyx, var_1.a.wy).c.b, -1i, reverseBits(global4.c), 1u), func_4(Struct_1(u_input.a, global4.b, 2147483647i, 5288i, var_1.c.e), Struct_2(vec4<f32>(var_1.a.x, -1303f, var_0, var_1.a.x), Struct_1(var_1.c.a, global4.b, global3[_wgslsmith_index_u32(19090u, 3u)], -3082i, 1u), Struct_1(vec3<i32>(-12007i, -23765i, -26661i), vec4<bool>(var_1.b.b.x, false, global4.b.x, true), var_1.c.a.x, var_1.c.c, 0u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1195f, var_0, var_0)), var_1.a.xy), vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x + -690f), _wgslsmith_div_f32(258f, 494f), _wgslsmith_f_op_f32(sign(-759f))), _wgslsmith_f_op_vec2_f32(step(var_1.a.yy, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.a.x, var_0)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.a.ywz), _wgslsmith_div_vec3_f32(func_4(var_1.c, global2[_wgslsmith_index_u32(global4.e, 21u)], var_1.a.zxw, vec2<f32>(var_0, var_0)).a.zyx, var_1.a.wwz), vec3<bool>(true, 4294967295u != global4.e, var_1.b.b.x))), vec2<f32>(_wgslsmith_f_op_f32(func_5(global4.b.x, func_4(Struct_1(global4.a, global4.b, 35372i, u_input.b, var_1.c.e), Struct_2(vec4<f32>(-348f, -350f, -834f, var_0), var_1.c, var_1.b), vec3<f32>(var_1.a.x, 236f, var_1.a.x), vec2<f32>(var_0, var_0)), _wgslsmith_div_vec4_f32(var_1.a, vec4<f32>(-993f, 856f, var_1.a.x, var_0)), func_4(var_1.b, global2[_wgslsmith_index_u32(1u, 21u)], var_1.a.zyx, var_1.a.yy))), _wgslsmith_f_op_f32(min(-1052f, _wgslsmith_f_op_f32(453f + var_0))))).c.c, _wgslsmith_add_i32(var_1.c.a.x, var_1.c.c), reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b, 13136i, -25778i), u_input.a), ~u_input.a)));
    var var_3 = var_1.c;
    var var_4 = func_4(var_1.b, global2[_wgslsmith_index_u32(20996u, 21u)], var_1.a.yzw, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(2135f + var_1.a.x))), var_0) + _wgslsmith_f_op_vec2_f32(-var_1.a.zx)));
    let var_5 = any(vec4<bool>(!global4.b.x, var_4.c.e != var_4.b.e, true, select(global3[_wgslsmith_index_u32(var_1.c.e, 3u)] & 1i, i32(-1i) * -1i, true) >= _wgslsmith_mod_i32(~(-35195i), 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(select(global4.a, vec3<i32>(var_2, func_1(global2[_wgslsmith_index_u32(4294967295u, 21u)], Struct_2(var_1.a, Struct_1(vec3<i32>(global3[_wgslsmith_index_u32(1u, 3u)], global4.a.x, var_1.c.c), vec4<bool>(var_5, true, true, false), global3[_wgslsmith_index_u32(var_3.e, 3u)], 0i, 0u), Struct_1(vec3<i32>(-7168i, var_1.c.c, u_input.a.x), global4.b, -6270i, -1i, var_3.e)), global4.d, -26584i).b.d, 0i) | vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c, global3[_wgslsmith_index_u32(19518u, 3u)], 0i, 1i), vec4<i32>(1i, 1i, var_1.b.c, -5646i)), func_4(Struct_1(vec3<i32>(var_4.c.c, 2147483647i, var_4.c.c), var_1.b.b, global3[_wgslsmith_index_u32(var_3.e, 3u)], 10102i, global4.e), Struct_2(vec4<f32>(var_1.a.x, -1000f, var_0, -778f), var_4.b, Struct_1(var_3.a, vec4<bool>(var_4.c.b.x, false, var_4.b.b.x, false), var_1.b.a.x, var_4.b.d, 4294967295u)), var_4.a.wwx, var_1.a.xy).c.d, global4.a.x), (func_2(var_4.b.a) && true) & all(!vec3<bool>(false, true, var_1.c.b.x))));
}

