struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_2,
    d: vec4<u32>,
    e: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(336f, 2244f, 760f, -1000f), 0u, false, vec3<i32>(2147483647i, -459i, i32(-2147483648)), 75981u);

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec4<f32>(-827f, 1000f, 314f, -1424f), 0u, false, vec3<i32>(i32(-2147483648), -1i, 0i), 23150u), true, Struct_1(vec4<f32>(430f, -2964f, 1937f, -616f), 4294967295u, true, vec3<i32>(0i, -35085i, -51102i), 7463u)), Struct_2(Struct_1(vec4<f32>(386f, -557f, 1169f, -767f), 9121u, true, vec3<i32>(i32(-2147483648), -1i, -1i), 102398u), true, Struct_1(vec4<f32>(-1000f, -420f, -802f, -1322f), 36269u, true, vec3<i32>(0i, 0i, i32(-2147483648)), 1u)), Struct_2(Struct_1(vec4<f32>(-793f, 1197f, 167f, 309f), 11707u, true, vec3<i32>(-11289i, 2147483647i, i32(-2147483648)), 59470u), true, Struct_1(vec4<f32>(-840f, 1066f, 1916f, 1063f), 0u, false, vec3<i32>(0i, i32(-2147483648), 12739i), 1u)), Struct_2(Struct_1(vec4<f32>(-1679f, -176f, -238f, 171f), 71654u, false, vec3<i32>(14070i, 26198i, -1i), 0u), false, Struct_1(vec4<f32>(1570f, -531f, -965f, 792f), 0u, true, vec3<i32>(-6793i, i32(-2147483648), i32(-2147483648)), 47818u)), Struct_2(Struct_1(vec4<f32>(384f, 2066f, -785f, -420f), 4294967295u, true, vec3<i32>(11579i, 0i, 7736i), 26815u), false, Struct_1(vec4<f32>(1516f, 1000f, -1004f, 262f), 24072u, true, vec3<i32>(-10418i, -87170i, 0i), 1u)), Struct_2(Struct_1(vec4<f32>(-1044f, -935f, -294f, 1774f), 4294967295u, true, vec3<i32>(2147483647i, i32(-2147483648), -25311i), 4294967295u), true, Struct_1(vec4<f32>(1977f, 2079f, 606f, 1073f), 4294967295u, false, vec3<i32>(1i, 59218i, 2147483647i), 1u)), Struct_2(Struct_1(vec4<f32>(-1196f, 527f, -1308f, 1616f), 4294967295u, false, vec3<i32>(18830i, 2147483647i, 1i), 0u), true, Struct_1(vec4<f32>(-1000f, -807f, 734f, -1168f), 43873u, false, vec3<i32>(i32(-2147483648), 2147483647i, 0i), 0u)), Struct_2(Struct_1(vec4<f32>(892f, 2160f, -808f, -1000f), 0u, false, vec3<i32>(-25515i, -5762i, 23415i), 0u), false, Struct_1(vec4<f32>(-831f, -772f, -213f, -342f), 2341u, false, vec3<i32>(-21222i, 0i, 1i), 100763u)), Struct_2(Struct_1(vec4<f32>(-1204f, -611f, -1111f, 1000f), 1u, false, vec3<i32>(76080i, -78000i, i32(-2147483648)), 15901u), true, Struct_1(vec4<f32>(-1000f, 1771f, 729f, -875f), 20740u, true, vec3<i32>(12834i, 2147483647i, 17403i), 4294967295u)), Struct_2(Struct_1(vec4<f32>(-813f, -533f, 723f, -532f), 4294967295u, true, vec3<i32>(-490i, 5774i, i32(-2147483648)), 1u), false, Struct_1(vec4<f32>(-709f, 202f, 790f, -1000f), 1850u, true, vec3<i32>(-20428i, -62374i, 2147483647i), 0u)), Struct_2(Struct_1(vec4<f32>(1969f, 951f, 814f, -1295f), 16813u, false, vec3<i32>(-1i, -10113i, 2147483647i), 17384u), true, Struct_1(vec4<f32>(-1581f, 561f, 1421f, 206f), 4294967295u, true, vec3<i32>(56203i, 18403i, -24584i), 27418u)), Struct_2(Struct_1(vec4<f32>(838f, 347f, 960f, -990f), 30444u, true, vec3<i32>(i32(-2147483648), -22205i, i32(-2147483648)), 38871u), false, Struct_1(vec4<f32>(-341f, 1000f, 909f, -1292f), 36225u, true, vec3<i32>(37496i, -25417i, 13184i), 8627u)), Struct_2(Struct_1(vec4<f32>(1000f, -272f, -362f, 345f), 4294967295u, false, vec3<i32>(-54347i, -1i, 37001i), 1163u), false, Struct_1(vec4<f32>(854f, 1874f, -722f, -588f), 10132u, false, vec3<i32>(-1i, -21450i, -1i), 71598u)), Struct_2(Struct_1(vec4<f32>(162f, -1309f, 396f, 234f), 7509u, true, vec3<i32>(-71274i, 1i, 0i), 0u), false, Struct_1(vec4<f32>(553f, -954f, 2177f, 122f), 4294967295u, false, vec3<i32>(0i, -1i, -52778i), 11805u)), Struct_2(Struct_1(vec4<f32>(-160f, 326f, 842f, 571f), 16553u, false, vec3<i32>(8118i, 14745i, i32(-2147483648)), 39392u), true, Struct_1(vec4<f32>(-996f, 513f, 328f, 779f), 0u, false, vec3<i32>(-1i, 1i, i32(-2147483648)), 0u)), Struct_2(Struct_1(vec4<f32>(1000f, -609f, -252f, 112f), 0u, true, vec3<i32>(44477i, 22125i, 31977i), 1u), false, Struct_1(vec4<f32>(-1000f, -862f, -1085f, 145f), 0u, true, vec3<i32>(43549i, -33507i, -32528i), 36508u)), Struct_2(Struct_1(vec4<f32>(729f, -199f, -223f, -204f), 34493u, false, vec3<i32>(59562i, 1i, -15141i), 4294967295u), false, Struct_1(vec4<f32>(1439f, 1342f, -1124f, -1961f), 0u, true, vec3<i32>(1i, 40574i, 2147483647i), 4294967295u)), Struct_2(Struct_1(vec4<f32>(-1365f, 221f, -745f, -1000f), 4294967295u, false, vec3<i32>(2147483647i, i32(-2147483648), 0i), 0u), false, Struct_1(vec4<f32>(1052f, 554f, -887f, 458f), 41549u, true, vec3<i32>(55392i, -1i, -13039i), 0u)), Struct_2(Struct_1(vec4<f32>(995f, -470f, -959f, 120f), 4294967295u, false, vec3<i32>(-40257i, 0i, 2147483647i), 0u), false, Struct_1(vec4<f32>(176f, -765f, 641f, 1000f), 25265u, false, vec3<i32>(-46210i, 26141i, -14327i), 4294967295u)), Struct_2(Struct_1(vec4<f32>(-972f, 1333f, 507f, 238f), 77281u, false, vec3<i32>(2147483647i, -1i, 51646i), 1u), true, Struct_1(vec4<f32>(-149f, -1040f, -764f, -1000f), 0u, false, vec3<i32>(-25516i, 28656i, 17443i), 40726u)), Struct_2(Struct_1(vec4<f32>(287f, -759f, 282f, 902f), 42778u, true, vec3<i32>(33529i, i32(-2147483648), i32(-2147483648)), 15574u), true, Struct_1(vec4<f32>(1152f, 1000f, -2864f, 765f), 22665u, true, vec3<i32>(i32(-2147483648), 0i, 0i), 48338u)), Struct_2(Struct_1(vec4<f32>(-211f, 1007f, 926f, -1212f), 0u, true, vec3<i32>(1i, i32(-2147483648), 29583i), 1u), true, Struct_1(vec4<f32>(-2161f, 102f, -1522f, 1485f), 26977u, false, vec3<i32>(0i, -22561i, 37648i), 1u)), Struct_2(Struct_1(vec4<f32>(2111f, 166f, 583f, -724f), 66888u, true, vec3<i32>(-28225i, 12901i, 28634i), 0u), true, Struct_1(vec4<f32>(-1381f, 1887f, -976f, 781f), 48266u, false, vec3<i32>(1i, 1i, 1i), 30086u)), Struct_2(Struct_1(vec4<f32>(-709f, -259f, 1000f, -281f), 1u, true, vec3<i32>(0i, 2147483647i, 1i), 23509u), false, Struct_1(vec4<f32>(383f, 387f, -1499f, -1335f), 97359u, true, vec3<i32>(i32(-2147483648), 0i, 25506i), 1u)));

var<private> global2: vec3<u32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4) -> vec3<i32> {
    var var_0 = _wgslsmith_mult_i32(global0.d.x, global0.d.x);
    var var_1 = ~global0.e;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.c.a.x * global0.a.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_0.b.a.a.x)))))));
    var_0 = ~arg_0.b.a.d.x;
    var_0 = -1i;
    return _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a.x, abs(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, arg_0.b.a.d.x, global0.d.x), vec4<i32>(u_input.b.x, 1i, 9712i, 1i), vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, global0.d.x)), -vec4<i32>(2147483647i, 14826i, u_input.b.x, u_input.c.x))), -_wgslsmith_mult_i32(13210i, -13470i)), u_input.b);
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_4(global0.d.zx, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -2011f, global0.a.x, global0.a.x) - vec4<f32>(-1013f, global0.a.x, global0.a.x, global0.a.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.e, 4294967295u, 1u), vec3<u32>(1u, 99511u, 7751u)) >> (abs(25299u) % 32u), true, func_3(Struct_4(global0.d.yy, Struct_2(Struct_1(vec4<f32>(global0.a.x, -1305f, global0.a.x, global0.a.x), 0u, global0.c, u_input.a, global2.x), global0.c, Struct_1(global0.a, 4294967295u, global0.c, vec3<i32>(global0.d.x, 0i, 8526i), global0.e)))), _wgslsmith_sub_u32(1u, global0.b) | _wgslsmith_div_u32(25928u, global0.b)), all(vec2<bool>(global0.a.x <= 1000f, !global0.c)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), 2145f, _wgslsmith_f_op_f32(f32(-1f) * -589f), _wgslsmith_f_op_f32(ceil(global0.a.x))), ~18773u, global0.c, vec3<i32>(_wgslsmith_mult_i32(global0.d.x, global0.d.x), _wgslsmith_clamp_i32(u_input.c.x, u_input.b.x, u_input.c.x), -2147483647i), ~global2.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -288f) + _wgslsmith_f_op_f32(var_0.b.a.a.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a.x, -830f), _wgslsmith_f_op_f32(trunc(-2151f)))))));
    global2 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(83310u, global2.x, 102147u), vec3<u32>(4294967295u, 1u, global0.b) ^ vec3<u32>(101328u, 83609u, global2.x)), 1u | _wgslsmith_mult_u32(var_0.b.c.e, global0.b), 0u), vec3<u32>(var_0.b.a.e, var_0.b.c.b, ~global0.e ^ (23356u & global2.x))) & min(~vec3<u32>(global2.x, global0.b, 4294967295u), ~vec3<u32>(96558u, 0u, global0.b << (global0.e % 32u)));
    return vec2<bool>(var_0.b.a.c, !var_0.b.b && (true & !var_0.b.b));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_div_u32(global0.b, _wgslsmith_mod_u32(47649u, arg_2.e)), 16124u), 24u)];
    var var_1 = _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_mod_i32(-18739i, 911i), var_0.c.d.x);
    var var_2 = func_2();
    var var_3 = Struct_1(vec4<f32>(arg_2.a.x, 725f, 1315f, 396f), arg_2.b, global0.c, ~_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(arg_2.d, u_input.a), u_input.b), (arg_2.e & _wgslsmith_div_u32(13234u, global2.x)) & 4294967295u);
    var_1 = u_input.c.x;
    return arg_2;
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: i32) -> vec3<u32> {
    var var_0 = global0.a.x;
    global2 = ~(_wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_1.a.b, global2.x, global0.e) | vec3<u32>(global2.x, global0.e, global0.e), vec3<u32>(global0.b, global0.b, global0.b), global0.c | global0.c), vec3<u32>(arg_1.a.e, global0.b, global0.e) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(606u, 79199u, global0.b), vec3<u32>(global2.x, 0u, 1u))) | ((vec3<u32>(21882u, global2.x, 19144u) ^ vec3<u32>(5982u, global2.x, 4294967295u)) ^ countOneBits(select(vec3<u32>(28197u, global0.b, global0.e), vec3<u32>(global2.x, 0u, 3817u), vec3<bool>(false, arg_1.a.c, true)))));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a.a.x)))));
    global0 = arg_1.a;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -889f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * arg_1.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    return ~abs(select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 27943u, global0.e), vec3<u32>(global0.b, global2.x, 48169u), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2.x, global0.b, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(0u, 0u, arg_1.a.e))), ~vec3<u32>(67984u, arg_1.a.b, 7543u), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, true, false), select(vec3<bool>(global0.c, true, arg_1.a.c), vec3<bool>(false, arg_0, true), global0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    global1 = array<Struct_2, 24>();
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-global0.a.x)))), 663f, _wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x))), global0.a.x), min(80320u, 4294967295u), !(global0.c && (!global0.c != global0.c)), _wgslsmith_clamp_vec3_i32(u_input.a, max(~(~global0.d), firstLeadingBit(u_input.a)), vec3<i32>(global0.d.x, 27755i, global0.d.x)), ~(~1u) ^ _wgslsmith_mult_u32(global0.b, 2663u));
    global2 = select(func_4(global0.c | true, Struct_5(func_1(-14527i, _wgslsmith_f_op_vec4_f32(round(global0.a)), Struct_1(vec4<f32>(global0.a.x, global0.a.x, -211f, global0.a.x), global2.x, false, u_input.a, global2.x)), ~vec4<i32>(global0.d.x, -2147483647i, 3945i, u_input.c.x) ^ (vec4<i32>(-1i, 49832i, u_input.b.x, u_input.b.x) << (vec4<u32>(84446u, 14773u, global0.e, global2.x) % vec4<u32>(32u)))), -_wgslsmith_mult_i32(u_input.b.x, 1i)), ~vec3<u32>(_wgslsmith_mult_u32(max(4294967295u, global2.x), global2.x), global0.e, _wgslsmith_mod_u32(49110u, global2.x) | firstTrailingBit(1u)), !(!vec3<bool>(global0.c != global0.c, all(vec3<bool>(true, false, global0.c)), global0.c & false)));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(global0.a.x, global0.a.x)), -2028f, global0.a.x, _wgslsmith_f_op_f32(-global0.a.x)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a.x, -1329f, global0.a.x, global0.a.x))))), 1u, false, _wgslsmith_add_vec3_i32(vec3<i32>(global0.d.x | (i32(-1i) * -18478i), 2147483647i, u_input.c.x), global0.d ^ global0.d), global0.b);
    let var_1 = Struct_3(!(!(!all(vec2<bool>(true, false)))), abs(~(~vec2<u32>(global2.x, global2.x))), global1[_wgslsmith_index_u32(~global2.x, 24u)], select(firstTrailingBit(~select(vec4<u32>(global2.x, 90780u, global2.x, global2.x), vec4<u32>(global2.x, global0.e, global2.x, 0u), vec4<bool>(false, false, global0.c, global0.c))), ~(~(~vec4<u32>(4294967295u, 1u, 682u, global2.x))), true), ~u_input.b.x ^ -1i);
    global2 = ~abs(vec3<u32>(44644u, ~var_1.b.x, 33871u)) ^ (vec3<u32>(~select(4294967295u, 1u, true), (var_1.b.x >> (global2.x % 32u)) ^ _wgslsmith_div_u32(global0.b, var_1.c.a.b), _wgslsmith_mod_u32(reverseBits(34308u), global0.b)) ^ ~firstTrailingBit(~vec3<u32>(var_1.b.x, 1u, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_1.c.c.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -320f, var_1.c.a.a.x, 157f) + global0.a) + var_1.c.c.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(global0.a, global0.a)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.a.a.x - _wgslsmith_f_op_f32(global0.a.x * -640f)), _wgslsmith_f_op_f32(trunc(var_1.c.c.a.x))))), _wgslsmith_f_op_f32(1f - var_1.c.a.a.x));
}

