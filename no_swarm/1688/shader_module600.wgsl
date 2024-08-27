struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: bool,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(21047i, -54221i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(2147483647i, -4374i), vec2<i32>(-4854i, 2147483647i), vec2<i32>(-8529i, 2086i), vec2<i32>(58380i, 1i), vec2<i32>(0i, 16292i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-58248i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(19821i, 1i), vec2<i32>(2147483647i, 11484i));

var<private> global1: vec3<f32> = vec3<f32>(-241f, -710f, 1275f);

var<private> global2: Struct_5;

var<private> global3: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false, vec4<f32>(-159f, -976f, 1521f, 153f), vec3<u32>(56062u, 11636u, 1u)), false), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false, vec4<f32>(-1335f, 1367f, -175f, 829f), vec3<u32>(3814u, 4294967295u, 0u)), true)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false, vec4<f32>(2078f, -1024f, 1021f, -598f), vec3<u32>(1u, 39779u, 50545u)), false), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), false, vec4<f32>(484f, -1023f, -795f, 188f), vec3<u32>(9023u, 1u, 1u)), false)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), false, vec4<f32>(1150f, 414f, 1614f, -1410f), vec3<u32>(0u, 1u, 1u)), true), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), false, vec4<f32>(-1000f, -249f, -1249f, -622f), vec3<u32>(0u, 0u, 5020u)), false)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), true, vec4<f32>(-1903f, 109f, -918f, 1068f), vec3<u32>(48136u, 0u, 0u)), true), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false, vec4<f32>(614f, 866f, 1000f, -705f), vec3<u32>(4294967295u, 1u, 58336u)), false)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true, vec4<f32>(115f, -2377f, -566f, 2176f), vec3<u32>(1u, 1u, 62649u)), true), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false, vec4<f32>(-565f, 469f, -1000f, 312f), vec3<u32>(4294967295u, 1u, 1u)), true)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false, vec4<f32>(-926f, -186f, -525f, -389f), vec3<u32>(1u, 0u, 0u)), false), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false, vec4<f32>(1067f, -747f, 439f, -572f), vec3<u32>(0u, 1u, 3799u)), false)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true, vec4<f32>(192f, -466f, 1838f, -1004f), vec3<u32>(44795u, 43146u, 67460u)), true), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true, vec4<f32>(104f, 121f, -318f, 103f), vec3<u32>(50176u, 19724u, 2094u)), true)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false, vec4<f32>(1085f, -196f, 768f, -1467f), vec3<u32>(0u, 49375u, 4294967295u)), true), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false, vec4<f32>(-1080f, 366f, 1306f, -675f), vec3<u32>(20830u, 41139u, 0u)), false)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true, vec4<f32>(-1000f, 1557f, -670f, -444f), vec3<u32>(0u, 33634u, 1u)), false), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), true, vec4<f32>(220f, -2110f, -181f, 777f), vec3<u32>(0u, 1u, 29301u)), true)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true, vec4<f32>(-1334f, 701f, -1314f, 591f), vec3<u32>(1u, 3951u, 28830u)), false), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false, vec4<f32>(617f, -1237f, 515f, -1321f), vec3<u32>(57733u, 0u, 13667u)), false)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false, vec4<f32>(-1316f, 517f, -375f, -1417f), vec3<u32>(1u, 1u, 4294967295u)), true), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false, vec4<f32>(-683f, 312f, -402f, -101f), vec3<u32>(12679u, 0u, 112963u)), false)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true, vec4<f32>(1000f, -1980f, -1000f, 573f), vec3<u32>(24772u, 108983u, 1u)), true), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), false, vec4<f32>(989f, -276f, 2021f, 280f), vec3<u32>(115971u, 0u, 58938u)), true)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false, vec4<f32>(1474f, -2094f, -273f, 382f), vec3<u32>(103365u, 1u, 4294967295u)), true), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false, vec4<f32>(-306f, -255f, -989f, -408f), vec3<u32>(1u, 1u, 0u)), false)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false, vec4<f32>(963f, 1000f, 1291f, 437f), vec3<u32>(1u, 11005u, 79737u)), false), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true, vec4<f32>(1000f, -638f, -385f, -2876f), vec3<u32>(1u, 1u, 0u)), true)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true, vec4<f32>(517f, 1000f, 468f, 1157f), vec3<u32>(0u, 0u, 4294967295u)), false), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true, vec4<f32>(2259f, 1542f, -1000f, 1053f), vec3<u32>(0u, 80467u, 1996u)), true)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true, vec4<f32>(2045f, 1745f, 437f, 700f), vec3<u32>(30141u, 7515u, 20637u)), false), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), false, vec4<f32>(-947f, 931f, 1954f, -1867f), vec3<u32>(1u, 33661u, 85737u)), false)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true, vec4<f32>(131f, -931f, -1439f, -1236f), vec3<u32>(4294967295u, 76163u, 19648u)), false), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false, vec4<f32>(429f, 911f, 752f, 457f), vec3<u32>(106449u, 86902u, 0u)), true)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true, vec4<f32>(-876f, -178f, 1249f, -282f), vec3<u32>(0u, 0u, 1u)), false), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false, vec4<f32>(451f, -1508f, 1097f, -143f), vec3<u32>(25545u, 44306u, 1u)), false)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false, vec4<f32>(1000f, -959f, -823f, 169f), vec3<u32>(54340u, 3481u, 28566u)), true), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true, vec4<f32>(-602f, -1642f, -282f, 1786f), vec3<u32>(4294967295u, 12341u, 0u)), true)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false, vec4<f32>(1000f, -442f, 283f, 665f), vec3<u32>(15777u, 50829u, 6039u)), false), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true, vec4<f32>(-1211f, -254f, 969f, -563f), vec3<u32>(0u, 6062u, 41068u)), true)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true, vec4<f32>(491f, -1000f, 1431f, 804f), vec3<u32>(13065u, 2267u, 16791u)), true), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false, vec4<f32>(1000f, 1000f, -1937f, 1151f), vec3<u32>(85633u, 53302u, 7865u)), true)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false, vec4<f32>(531f, 156f, -1006f, -995f), vec3<u32>(1u, 4294967295u, 4294967295u)), false), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true, vec4<f32>(-601f, 109f, 854f, 691f), vec3<u32>(9142u, 50919u, 11716u)), true)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true, vec4<f32>(-345f, 361f, 758f, 626f), vec3<u32>(66149u, 4294967295u, 32407u)), false), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true, vec4<f32>(-2245f, 1000f, -321f, -2053f), vec3<u32>(33143u, 22898u, 71479u)), true)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), true, vec4<f32>(1139f, 280f, 752f, 529f), vec3<u32>(3007u, 0u, 4294967295u)), true), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true, vec4<f32>(-1805f, 105f, 676f, 955f), vec3<u32>(4294967295u, 5107u, 1u)), false)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true, vec4<f32>(-651f, 554f, 495f, -857f), vec3<u32>(4294967295u, 13381u, 173u)), false), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false, vec4<f32>(-1000f, -950f, 2165f, 1089f), vec3<u32>(0u, 2438u, 5187u)), true)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false, vec4<f32>(-620f, 439f, -505f, 210f), vec3<u32>(4088u, 25197u, 94514u)), true), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true, vec4<f32>(1216f, 669f, -1011f, -2167f), vec3<u32>(80388u, 52548u, 1u)), true)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false, vec4<f32>(1000f, -408f, -310f, 1476f), vec3<u32>(0u, 0u, 4294967295u)), true), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false, vec4<f32>(400f, -833f, 1000f, 1366f), vec3<u32>(55682u, 15819u, 27176u)), true)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false, vec4<f32>(1198f, 682f, -1000f, 213f), vec3<u32>(0u, 12827u, 0u)), false), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true, vec4<f32>(-1074f, -288f, -246f, -320f), vec3<u32>(45707u, 35255u, 4294967295u)), false)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true, vec4<f32>(-306f, -276f, -1160f, -1732f), vec3<u32>(4596u, 56366u, 12125u)), false), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true, vec4<f32>(-456f, -648f, 1525f, -1555f), vec3<u32>(30246u, 11161u, 1023u)), false)));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(vec4<bool>(true, all(vec3<bool>(true, global2.b.b, false)), true, global2.b.b), arg_2.a, arg_2.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.b.a.d - vec4<f32>(global2.b.a.d.x, 759f, global2.b.a.d.x, arg_2.d.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(809f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.b.a.d.x))), -1627f)), firstLeadingBit(abs(_wgslsmith_div_vec3_u32(arg_2.e, ~vec3<u32>(arg_2.e.x, 1u, global2.b.a.e.x)))));
    var_0 = Struct_1(var_0.a, vec4<bool>(global2.a, arg_2.c, true, any(arg_2.a.zz)), true || arg_2.b.x, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1354f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(179f, global2.b.a.d.x)), _wgslsmith_f_op_f32(step(global1.x, var_0.d.x)))) + global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(global1.x + -1000f)) - global2.b.a.d.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(-var_0.d.x))))), global2.b.a.e);
    var var_1 = global2.b;
    let var_2 = countOneBits(u_input.a.x) < arg_0;
    let var_3 = Struct_4(global2.b.a.d.xxy, max(vec2<u32>(abs(var_0.e.x), 0u) << (vec2<u32>(max(20851u, var_0.e.x), 22544u) % vec2<u32>(32u)), reverseBits(~select(vec2<u32>(global2.b.a.e.x, arg_2.e.x), arg_2.e.xy, global2.a))), abs(vec2<i32>(-(~(-26176i)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, u_input.b.x, arg_0), vec3<i32>(1245i, -62504i, 1i)) >> (51413u % 32u))));
    return vec4<bool>(var_1.a.d.x > arg_2.d.x, var_1.b, _wgslsmith_f_op_f32(-global1.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -475f), _wgslsmith_f_op_f32(global2.b.a.d.x - global1.x)))), global2.a);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_4 {
    global3 = array<Struct_3, 29>();
    global0 = array<vec2<i32>, 12>();
    global1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.a.d.x)))), global1.x, -645f);
    global2 = Struct_5(!any(select(select(global2.b.a.a.zzy, vec3<bool>(true, arg_2.a.a.a.x, arg_2.b.b), arg_0.a.wwy), global2.b.a.a.zwz, !arg_0.b.x)), Struct_2(Struct_1(!select(vec4<bool>(false, false, global2.b.b, arg_0.a.x), arg_2.a.a.a, arg_2.a.a.a), select(vec4<bool>(global2.a, arg_0.c, arg_0.b.x, true), func_3(-55226i, arg_0.d.x, Struct_1(arg_2.b.a.a, vec4<bool>(false, false, false, false), global2.b.a.c, arg_0.d, global2.b.a.e)), global2.a), -48235i > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.b.x), vec2<i32>(u_input.a.x, -2147483647i)), global2.b.a.d, min(arg_0.e, vec3<u32>(arg_0.e.x, 66153u, global2.b.a.e.x))), true));
    global2 = Struct_5(arg_2.a.a.b.x, global2.b);
    return Struct_4(arg_1.xzz, ~(~vec2<u32>(arg_2.a.a.e.x & arg_2.b.a.e.x, global2.b.a.e.x)), -select(u_input.c, vec2<i32>(u_input.a.x, u_input.c.x), false) & _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, -61485i) & u_input.a.yw, _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(u_input.c.x, u_input.a.x), vec2<i32>(u_input.c.x, u_input.b.x))), ~select(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(-1i, -61972i), global2.b.a.a.zz)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_4) -> vec3<f32> {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1178f, _wgslsmith_f_op_f32(-global2.b.a.d.x), 1348f) * arg_3.a))));
    global3 = array<Struct_3, 29>();
    let var_0 = arg_0.wwx;
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(abs(var_0.x), ~u_input.b.x, -1i, ~_wgslsmith_div_i32(var_0.x | u_input.c.x, -2147483647i)), vec4<i32>(arg_3.c.x, _wgslsmith_sub_i32(1i, arg_0.x), 1i, u_input.a.x));
    let var_2 = ~(~52284u);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_3.a)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.b.a.d.x, arg_1.x, arg_3.a.x)))), _wgslsmith_f_op_vec3_f32(arg_3.a * global2.b.a.d.zyz)) - arg_3.a);
}

fn func_1() -> Struct_2 {
    global1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_4(u_input.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -370f), -957f)), global2.b.a.d.x, func_2(Struct_1(global2.b.a.a, select(vec4<bool>(global2.b.b, global2.a, true, false), vec4<bool>(global2.a, true, false, true), false), select(true, global2.a, false), vec4<f32>(-214f, global1.x, 761f, 924f), global2.b.a.e ^ vec3<u32>(4294967295u, global2.b.a.e.x, global2.b.a.e.x)), _wgslsmith_div_vec4_f32(global2.b.a.d, vec4<f32>(global1.x, 611f, global1.x, 2353f)), global3[_wgslsmith_index_u32(global2.b.a.e.x, 29u)]))), _wgslsmith_f_op_vec3_f32(sign(global2.b.a.d.xzy))));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1932f), func_2(global2.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b.a.d * global2.b.a.d) - _wgslsmith_f_op_vec4_f32(global2.b.a.d - global2.b.a.d)) - global2.b.a.d), global3[_wgslsmith_index_u32(min(global2.b.a.e.x, global2.b.a.e.x), 29u)]).a.x);
    global0 = array<vec2<i32>, 12>();
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1931f) - global1.x) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.a.d.x + _wgslsmith_f_op_f32(1648f - global2.b.a.d.x)))));
    let var_1 = global3[_wgslsmith_index_u32(global2.b.a.e.x & min(4294967295u, 1u), 29u)];
    return Struct_2(Struct_1(select(global2.b.a.b, vec4<bool>(true, var_1.a.b, true, !var_1.b.a.a.x), func_3(abs(u_input.b.x), _wgslsmith_f_op_f32(global1.x * global2.b.a.d.x), Struct_1(vec4<bool>(true, false, true, var_1.b.b), global2.b.a.a, true, var_1.a.a.d, var_1.b.a.e))), vec4<bool>(global2.b.a.b.x, any(var_1.a.a.a.xwz), firstLeadingBit(65771u) >= (var_1.b.a.e.x & 1u), !var_1.b.b && true), var_1.b.a.c, global2.b.a.d, ~(~_wgslsmith_sub_vec3_u32(var_1.a.a.e, vec3<u32>(global2.b.a.e.x, 1u, 28531u)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 12>();
    var var_0 = func_1();
    global0 = array<vec2<i32>, 12>();
    var_0 = func_1();
    var var_1 = Struct_5(func_3(u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1256f)), global1.x)), Struct_1(!select(vec4<bool>(true, true, global2.b.a.b.x, global2.a), vec4<bool>(true, var_0.a.b.x, true, var_0.b), var_0.a.c), !select(vec4<bool>(var_0.a.b.x, false, true, false), vec4<bool>(var_0.a.b.x, true, true, true), true), all(!vec2<bool>(global2.a, true)), _wgslsmith_f_op_vec4_f32(-func_1().a.d), countOneBits(firstLeadingBit(global2.b.a.e)))).x, Struct_2(Struct_1(func_3(u_input.b.x & u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1551f), global2.b.a), !(!var_0.a.b), var_0.a.d.x <= _wgslsmith_f_op_f32(step(-1698f, 1353f)), _wgslsmith_f_op_vec4_f32(-global2.b.a.d), firstLeadingBit(global2.b.a.e) ^ vec3<u32>(var_0.a.e.x, 0u, var_0.a.e.x)), false || var_0.a.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(abs(-vec2<i32>(2147483647i, -36716i)), global0[_wgslsmith_index_u32(global2.b.a.e.x, 12u)]), -vec4<i32>(_wgslsmith_div_i32(-u_input.a.x, firstTrailingBit(u_input.a.x)), _wgslsmith_dot_vec2_i32(u_input.c ^ global0[_wgslsmith_index_u32(var_0.a.e.x, 12u)], global0[_wgslsmith_index_u32(min(global2.b.a.e.x, 0u), 12u)]), -u_input.a.x, u_input.a.x));
}

