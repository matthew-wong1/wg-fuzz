struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-1232f, 1096f, -503f, 1269f, 986f, 194f, 280f, -1858f, 881f, -1304f, -643f, 180f, -1385f, -1289f, -226f, 640f, -813f, -1000f, 1342f, -636f, 1284f, 472f, 297f, 526f, 652f, 611f, -584f, -413f, 119f);

var<private> global1: array<f32, 12>;

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(307f, 1214i, -169f, 34916i, vec3<f32>(-952f, 380f, 1000f)), vec4<i32>(1i, -1072i, 0i, i32(-2147483648)), vec2<bool>(false, true)), Struct_2(Struct_1(221f, 2147483647i, 330f, i32(-2147483648), vec3<f32>(-1000f, 579f, -560f)), vec4<i32>(6064i, i32(-2147483648), -9588i, -34482i), vec2<bool>(true, false)), Struct_2(Struct_1(-617f, i32(-2147483648), -1221f, 2147483647i, vec3<f32>(912f, -1584f, -280f)), vec4<i32>(69677i, 0i, -40640i, 14131i), vec2<bool>(true, false)), Struct_2(Struct_1(-375f, -2677i, -591f, 11848i, vec3<f32>(-1000f, -2058f, 1000f)), vec4<i32>(-1i, 7965i, 68269i, 1i), vec2<bool>(false, false)), Struct_2(Struct_1(-291f, -1i, -580f, i32(-2147483648), vec3<f32>(-561f, -155f, 1135f)), vec4<i32>(19671i, i32(-2147483648), 2147483647i, 1i), vec2<bool>(true, false)), Struct_2(Struct_1(-553f, 15147i, -1002f, -77718i, vec3<f32>(1000f, -755f, -706f)), vec4<i32>(2147483647i, -10021i, i32(-2147483648), 1i), vec2<bool>(true, false)), Struct_2(Struct_1(-768f, 2147483647i, 1389f, -1i, vec3<f32>(2054f, -360f, 2309f)), vec4<i32>(64127i, -4657i, 0i, -88139i), vec2<bool>(true, false)), Struct_2(Struct_1(668f, -70007i, 263f, -52648i, vec3<f32>(1000f, 153f, 540f)), vec4<i32>(-8185i, -63430i, 1076i, 2147483647i), vec2<bool>(true, false)), Struct_2(Struct_1(-1000f, -50781i, 405f, -11851i, vec3<f32>(900f, 579f, -704f)), vec4<i32>(27038i, 25890i, -3038i, 0i), vec2<bool>(true, true)), Struct_2(Struct_1(717f, -1i, -1420f, i32(-2147483648), vec3<f32>(-1000f, 215f, -831f)), vec4<i32>(27821i, 81446i, -66018i, 2147483647i), vec2<bool>(true, false)), Struct_2(Struct_1(1940f, 29854i, -313f, 1i, vec3<f32>(683f, -213f, -1000f)), vec4<i32>(13630i, 25800i, i32(-2147483648), -23385i), vec2<bool>(true, false)), Struct_2(Struct_1(-397f, 17901i, -648f, -1259i, vec3<f32>(-1429f, 646f, -2926f)), vec4<i32>(-1i, 2147483647i, 23624i, i32(-2147483648)), vec2<bool>(false, true)), Struct_2(Struct_1(151f, 1i, 1109f, 1i, vec3<f32>(770f, 291f, -242f)), vec4<i32>(5414i, 2147483647i, 2147483647i, 39834i), vec2<bool>(false, false)), Struct_2(Struct_1(-710f, -33347i, -329f, -38177i, vec3<f32>(-1324f, 1588f, 810f)), vec4<i32>(1i, 27958i, 1i, 2147483647i), vec2<bool>(false, true)), Struct_2(Struct_1(1433f, i32(-2147483648), 1299f, -43706i, vec3<f32>(1000f, 531f, 468f)), vec4<i32>(2147483647i, 24010i, -1i, 37224i), vec2<bool>(true, false)), Struct_2(Struct_1(237f, 0i, -324f, 0i, vec3<f32>(-727f, 225f, -1011f)), vec4<i32>(4612i, 21330i, 2147483647i, i32(-2147483648)), vec2<bool>(false, true)), Struct_2(Struct_1(444f, 48008i, -1232f, 22615i, vec3<f32>(-2490f, 509f, -401f)), vec4<i32>(1i, 29232i, 1i, -37773i), vec2<bool>(false, true)), Struct_2(Struct_1(-1041f, 49749i, 749f, 0i, vec3<f32>(587f, 1012f, 117f)), vec4<i32>(38364i, 27716i, 1i, -32095i), vec2<bool>(true, false)), Struct_2(Struct_1(497f, 2147483647i, -178f, -25906i, vec3<f32>(-991f, -110f, 731f)), vec4<i32>(-55134i, 0i, 20726i, -77866i), vec2<bool>(true, true)), Struct_2(Struct_1(-1000f, -29056i, 142f, 0i, vec3<f32>(541f, -211f, 1601f)), vec4<i32>(i32(-2147483648), 0i, -38178i, 0i), vec2<bool>(true, true)), Struct_2(Struct_1(-575f, -64922i, -1164f, -41528i, vec3<f32>(-2795f, 268f, 1079f)), vec4<i32>(69298i, -16733i, 12193i, 1i), vec2<bool>(true, true)), Struct_2(Struct_1(-434f, 46820i, -814f, 29714i, vec3<f32>(911f, -485f, -1627f)), vec4<i32>(2147483647i, -24376i, 20822i, 0i), vec2<bool>(true, true)), Struct_2(Struct_1(-2091f, i32(-2147483648), 355f, 2147483647i, vec3<f32>(-1000f, -1589f, -975f)), vec4<i32>(21262i, 2147483647i, -27766i, i32(-2147483648)), vec2<bool>(false, false)), Struct_2(Struct_1(-1344f, 1i, 2250f, -1i, vec3<f32>(721f, 490f, -2221f)), vec4<i32>(2147483647i, 0i, -1i, 40006i), vec2<bool>(true, false)), Struct_2(Struct_1(-140f, -30279i, -1546f, -39781i, vec3<f32>(-1000f, 1000f, 1002f)), vec4<i32>(9389i, 13648i, 1i, -1i), vec2<bool>(false, false)), Struct_2(Struct_1(1158f, -1929i, -1273f, -19707i, vec3<f32>(-130f, 418f, 321f)), vec4<i32>(-1i, 0i, 2147483647i, -1i), vec2<bool>(false, false)));

var<private> global3: vec4<bool>;

var<private> global4: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(32593i, -29129i, -18781i, 1i), vec4<i32>(17070i, -56130i, -40160i, 2468i), vec4<i32>(-47385i, 248i, -6680i, i32(-2147483648)), vec4<i32>(35386i, -1i, 3799i, 1419i), vec4<i32>(-60496i, -53545i, -14697i, -30183i), vec4<i32>(13039i, -1682i, 64842i, -21965i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(2147483647i, i32(-2147483648), 31931i, 8680i), vec4<i32>(1i, -4128i, 1i, -1306i), vec4<i32>(34461i, i32(-2147483648), -1i, 61310i), vec4<i32>(-48575i, i32(-2147483648), 24906i, 0i), vec4<i32>(19048i, 2147483647i, 0i, -22826i), vec4<i32>(-45624i, 21735i, 30172i, -48570i), vec4<i32>(0i, 1i, 1i, 27836i), vec4<i32>(-83539i, 49090i, 40856i, 0i), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -4280i), vec4<i32>(0i, 1i, -67358i, -70952i), vec4<i32>(0i, 39842i, 1i, -13648i), vec4<i32>(2147483647i, -1i, 0i, -47129i), vec4<i32>(16848i, 0i, 0i, 2147483647i), vec4<i32>(58726i, 2147483647i, 91802i, 1i), vec4<i32>(2147483647i, 51546i, 0i, 3956i), vec4<i32>(29921i, 1i, 53003i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, -23350i, -15501i), vec4<i32>(9393i, -6732i, 12347i, -25570i), vec4<i32>(1576i, i32(-2147483648), -23038i, -29333i), vec4<i32>(11806i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<i32>(-52366i, 29381i, i32(-2147483648), -1953i), vec4<i32>(2147483647i, -66777i, -66905i, 1i));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: bool, arg_3: i32) -> bool {
    let var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(arg_1.a, 29u)])), -321f))) != -2733f);
    var var_1 = _wgslsmith_dot_vec2_u32(max(~(~vec2<u32>(arg_1.a, 79659u)), min(min(countOneBits(vec2<u32>(4294967295u, 5503u)), vec2<u32>(79823u, arg_1.a)), vec2<u32>(~arg_1.a, ~arg_1.a))), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.a, 0u), vec2<u32>(17701u, arg_1.a)) << (_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(4795u, 0u)), min(vec2<u32>(0u, arg_1.a), vec2<u32>(0u, arg_1.a)), firstTrailingBit(vec2<u32>(5254u, 4294967295u))) % vec2<u32>(32u))));
    let var_2 = true;
    var var_3 = arg_1.d;
    let var_4 = !(!(select(4294967295u > arg_1.a, true, true) | var_2));
    return countOneBits(-21085i) > (arg_3 ^ abs(1i));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-249f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1, 29u)] * -1166f)) * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 29u)], 928f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(arg_1, 29u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a - -385f))))));
    let var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(countOneBits(~71499u), ~arg_1), 26u)];
    let var_2 = false;
    global3 = !vec4<bool>(func_3(Struct_3(Struct_1(global0[_wgslsmith_index_u32(1u, 29u)], arg_2.d, var_1.a.a, var_1.a.b, vec3<f32>(global1[_wgslsmith_index_u32(29654u, 12u)], global1[_wgslsmith_index_u32(arg_1, 12u)], global0[_wgslsmith_index_u32(24994u, 29u)])), global0[_wgslsmith_index_u32(arg_1, 29u)], Struct_1(global1[_wgslsmith_index_u32(arg_1, 12u)], var_1.a.b, -371f, -31547i, vec3<f32>(143f, -741f, global0[_wgslsmith_index_u32(arg_1, 29u)])), global2[_wgslsmith_index_u32(arg_1, 26u)]), Struct_4(0u, vec4<i32>(u_input.b, var_1.a.d, 2147483647i, -8977i), u_input.a, var_1.a), !var_2, _wgslsmith_div_i32(arg_2.d, -10152i)) || func_3(Struct_3(arg_2, global0[_wgslsmith_index_u32(1u, 29u)], var_1.a, Struct_2(Struct_1(617f, var_1.b.x, -1267f, -28647i, vec3<f32>(global0[_wgslsmith_index_u32(arg_1, 29u)], 115f, global0[_wgslsmith_index_u32(4294967295u, 29u)])), var_1.b, global3.xy)), Struct_4(arg_1, vec4<i32>(-36852i, u_input.b, u_input.b, var_1.a.d), vec4<i32>(-24986i, 12204i, 69508i, u_input.b), Struct_1(global1[_wgslsmith_index_u32(arg_1, 12u)], 0i, global1[_wgslsmith_index_u32(13663u, 12u)], -56801i, vec3<f32>(-709f, 1000f, global1[_wgslsmith_index_u32(4294967295u, 12u)]))), var_2, 1i), false, global3.x, !(var_2 || func_3(Struct_3(Struct_1(global0[_wgslsmith_index_u32(arg_1, 29u)], -2147483647i, var_1.a.e.x, -33685i, vec3<f32>(var_1.a.a, global1[_wgslsmith_index_u32(92710u, 12u)], global1[_wgslsmith_index_u32(arg_1, 12u)])), global1[_wgslsmith_index_u32(arg_1, 12u)], var_1.a, Struct_2(var_1.a, vec4<i32>(arg_2.b, -935i, 20812i, u_input.b), vec2<bool>(global3.x, var_1.c.x))), Struct_4(2670u, global4[_wgslsmith_index_u32(4294967295u, 29u)], var_1.b, var_1.a), false, u_input.a.x)));
    global3 = vec4<bool>(any(global3.xzz), !(_wgslsmith_f_op_f32(trunc(-1329f)) > _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1, 29u)])), global3.x, true);
    return var_1.a;
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(vec3<bool>(global3.x, select(true, _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 29u)])) != _wgslsmith_f_op_f32(round(-1598f)), true), global3.x), _wgslsmith_add_u32(countOneBits(0u), 97753u), Struct_1(_wgslsmith_f_op_f32(ceil(-758f)), 1i | u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(200f, global0[_wgslsmith_index_u32(38570u, 29u)]))))), firstLeadingBit(u_input.b), _wgslsmith_div_vec3_f32(vec3<f32>(-194f, 1225f, global0[_wgslsmith_index_u32(1u, 29u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(367f, global1[_wgslsmith_index_u32(2191u, 12u)], global1[_wgslsmith_index_u32(13594u, 12u)]) + vec3<f32>(-378f, 102f, -677f))))));
    let var_1 = vec3<u32>(1u, ~_wgslsmith_mod_u32(0u, ~65004u >> (~4294967295u % 32u)), 1u);
    global0 = array<f32, 29>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.e.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(60872u, 12u)] * var_0.a))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.x, 29u)] - global1[_wgslsmith_index_u32(1u, 12u)])), global0[_wgslsmith_index_u32(55039u << (var_1.x % 32u), 29u)]), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1395f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.x, 12u)] - var_0.a), global3.x && true)), 213f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(min(283f, global1[_wgslsmith_index_u32(69450u, 12u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 29u)]))))), any(vec4<bool>(global3.x || true, all(vec2<bool>(global3.x, true)), global3.x, false)))));
    let var_3 = global3.x;
    return global2[_wgslsmith_index_u32(~(~max(17816u, ~_wgslsmith_sub_u32(var_1.x, var_1.x))), 26u)];
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1408f, arg_0.a.a), arg_0.a.e.xz, true)))), arg_0.a.e.zz) * _wgslsmith_f_op_vec2_f32(sign(arg_0.a.e.zz)));
    let var_1 = Struct_4(~(~4294967295u), vec4<i32>(_wgslsmith_dot_vec2_i32(min(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.a.d, -29371i), vec2<i32>(-1i, -1i)), u_input.a.wx ^ vec2<i32>(u_input.a.x, 0i)), -abs(u_input.a.yy)), u_input.a.x, _wgslsmith_div_i32(arg_0.a.d, func_2(select(global3.wwy, vec3<bool>(global3.x, true, arg_0.c.x), global3.wwz), arg_1, func_1().a).d), func_1().b.x), global4[_wgslsmith_index_u32(max(arg_1, arg_2.x), 29u)], arg_0.a);
    let var_2 = vec4<bool>(false, arg_0.c.x, !arg_0.c.x, true);
    var var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(-21826i, reverseBits(-15758i), abs(41573i)) | var_1.b.yww, _wgslsmith_mult_vec3_i32(var_1.b.yzz, arg_0.b.wyw)) << (vec3<u32>(countOneBits(abs(0u >> (arg_1 % 32u))), var_1.a, arg_2.x) % vec3<u32>(32u));
    let var_4 = Struct_2(arg_0.a, vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(countOneBits(arg_0.b.yw)), vec2<i32>(func_2(var_2.xzy, 0u, arg_0.a).d, var_3.x)), ~countOneBits(var_1.c.x) & _wgslsmith_mult_i32(i32(-1i) * -73790i, _wgslsmith_add_i32(var_1.c.x, u_input.a.x)), 0i, 28460i), var_2.wz);
    return _wgslsmith_mod_vec4_i32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(arg_1, 4294967295u, 40476u, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(49549u, var_1.a, 4294967295u, arg_2.x), vec4<u32>(61342u, 45798u, arg_1, arg_2.x), select(vec4<u32>(44290u, 62749u, 1u, arg_2.x), vec4<u32>(47882u, var_1.a, arg_1, 0u), arg_0.c.x))), vec4<u32>(select(~1u, ~68769u, true), _wgslsmith_sub_u32(4294967295u, ~arg_1), ~1u & var_1.a, arg_1)), 29u)], vec4<i32>(firstTrailingBit(firstTrailingBit(1i)), _wgslsmith_clamp_i32(-var_3.x, ~u_input.a.x, -var_3.x), ~(-1i), -1i << ((arg_2.x ^ 63979u) % 32u)) ^ _wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, var_1.c.x, 1i, 31067i), -global4[_wgslsmith_index_u32(1u, 29u)]));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_3, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 29u)], arg_2.d.a.e.x, 401f, 860f) * vec4<f32>(-1000f, arg_1.d.a, 1000f, global0[_wgslsmith_index_u32(arg_1.a, 29u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-926f, global0[_wgslsmith_index_u32(arg_1.a, 29u)], arg_1.d.e.x, global1[_wgslsmith_index_u32(arg_1.a, 12u)]), vec4<f32>(global0[_wgslsmith_index_u32(4468u, 29u)], -482f, arg_1.d.e.x, -1394f), vec4<bool>(true, true, arg_0.x, arg_3)))))), select(select(!vec4<bool>(false, arg_2.d.c.x, true, arg_0.x), select(vec4<bool>(arg_3, arg_0.x, arg_3, true), vec4<bool>(false, true, arg_3, false), true), false), select(select(vec4<bool>(global3.x, arg_3, global3.x, true), vec4<bool>(global3.x, global3.x, true, true), arg_0.x), !vec4<bool>(global3.x, arg_3, global3.x, false), vec4<bool>(arg_3, true, global3.x, true)), vec4<bool>(true, arg_2.d.a.c != global0[_wgslsmith_index_u32(arg_1.a, 29u)], any(global3.zz), false)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.d.c, 1141f, -1000f, arg_1.d.c))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1().a.e.x, _wgslsmith_f_op_f32(min(-434f, 630f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(18944u, 12u)] * 920f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.a, 29u)]))), !(!select(vec4<bool>(true, global3.x, global3.x, arg_3), vec4<bool>(true, true, arg_2.d.c.x, true), vec4<bool>(arg_0.x, global3.x, arg_0.x, false))))));
    var var_1 = -vec3<i32>(u_input.b, 26257i, firstLeadingBit(~arg_1.b.x));
    global3 = vec4<bool>(!(!arg_3), !(u_input.b <= (arg_2.d.b.x | arg_2.a.b)) && !(true && !arg_2.d.c.x), arg_0.x, !(true & all(select(vec2<bool>(arg_0.x, global3.x), vec2<bool>(arg_0.x, true), arg_3))));
    global4 = array<vec4<i32>, 29>();
    var_1 = vec3<i32>(reverseBits(select(arg_2.d.a.d, arg_2.a.b, true) ^ arg_1.d.d), 1i, -(_wgslsmith_clamp_i32(arg_2.a.d, 1i, var_1.x ^ 33644i) ^ _wgslsmith_add_i32(u_input.a.x, min(var_1.x, arg_1.b.x))));
    return _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a ^ _wgslsmith_mult_u32(1u, arg_1.a), 11207u), vec2<u32>(_wgslsmith_mod_u32(countOneBits(30393u), arg_1.a), _wgslsmith_mod_u32(arg_1.a, arg_1.a << (3754u % 32u)))), ~arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(global3.yyy, !select(global3.yzx, select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(false, true, true), vec3<bool>(global3.x, false, global3.x)), !vec3<bool>(true, true, global3.x)), global3.x), Struct_4(~1u, func_4(func_1(), ~(~12260u), vec2<u32>(1u, 1u)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.a.x, 30405i), vec4<i32>(-2147483647i, u_input.a.x, u_input.b, -35207i)), -vec4<i32>(43421i, 0i, u_input.a.x, u_input.a.x), select(vec4<bool>(true, true, true, true), !vec4<bool>(global3.x, global3.x, global3.x, global3.x), true)), Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1149u), vec2<u32>(4294967295u, 30315u)), 29u)] - _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(77570u, 12u)]))), firstLeadingBit(-2147483647i), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 29u)] * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 12u)] * global1[_wgslsmith_index_u32(4294967295u, 12u)])), _wgslsmith_div_i32(u_input.b, ~u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-816f, -1666f, 1159f)))))), Struct_3(func_1().a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~0u, 29u)]))), Struct_1(1000f, -3967i, 2319f, u_input.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(265f, -135f, -1985f), vec3<f32>(-386f, -1317f, global1[_wgslsmith_index_u32(9744u, 12u)]), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(31312u, 29u)], 1641f, global1[_wgslsmith_index_u32(33742u, 12u)]) - vec3<f32>(1151f, -1000f, 3604f)), global3.x))), global2[_wgslsmith_index_u32(abs(~0u), 26u)]), global3.x);
    let var_1 = global3.zy;
    var var_2 = Struct_3(func_1().a, global1[_wgslsmith_index_u32(~37288u, 12u)], Struct_1(221f, ~abs(-4189i), global1[_wgslsmith_index_u32(select(func_5(select(vec3<bool>(false, false, false), global3.zxz, var_1.x), Struct_4(0u, vec4<i32>(u_input.a.x, 26601i, u_input.a.x, -38631i), vec4<i32>(-1121i, u_input.a.x, 6776i, u_input.b), Struct_1(-1780f, u_input.b, global0[_wgslsmith_index_u32(71465u, 29u)], 38222i, vec3<f32>(-927f, global0[_wgslsmith_index_u32(4102u, 29u)], global1[_wgslsmith_index_u32(30183u, 12u)]))), Struct_3(Struct_1(global1[_wgslsmith_index_u32(27098u, 12u)], -22706i, 574f, 1i, vec3<f32>(1151f, -251f, -1060f)), 838f, Struct_1(521f, 1i, -1000f, u_input.a.x, vec3<f32>(521f, 1577f, global1[_wgslsmith_index_u32(0u, 12u)])), Struct_2(Struct_1(global0[_wgslsmith_index_u32(9122u, 29u)], 2147483647i, global0[_wgslsmith_index_u32(1u, 29u)], u_input.a.x, vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(49113u, 29u)], 1601f)), u_input.a, global3.zz)), all(global3.xxy)), 15235u, false), 12u)], u_input.a.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2(global3.zwy, 74846u, Struct_1(-1540f, u_input.a.x, global1[_wgslsmith_index_u32(7706u, 12u)], 2147483647i, vec3<f32>(global0[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(50231u, 12u)], -319f))).e * _wgslsmith_f_op_vec3_f32(-vec3<f32>(792f, global0[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(1u, 12u)])))))), Struct_2(func_1().a, min(global4[_wgslsmith_index_u32(7421u, 29u)] | ~global4[_wgslsmith_index_u32(0u, 29u)], ~vec4<i32>(13022i, u_input.b, u_input.a.x, 9779i)), vec2<bool>(2147483647i > u_input.b, any(vec3<bool>(true, true, false)))));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(42224u >> (((16979u ^ firstTrailingBit(10783u)) << (_wgslsmith_clamp_u32(~4748u, _wgslsmith_div_u32(1u, 32307u), abs(0u)) % 32u)) % 32u), _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, 1u), 0u), 1u), 26u)];
    var var_4 = var_3.b.x;
    global3 = vec4<bool>(any(var_2.d.c), false, any(select(!vec4<bool>(global3.x, true, false, global3.x), vec4<bool>(true, var_3.c.x, any(vec3<bool>(false, false, true)), global3.x), true)), all(select(select(select(vec3<bool>(var_2.d.c.x, var_2.d.c.x, var_1.x), global3.zzz, global3.wxw), vec3<bool>(false, true, true), select(global3.wzw, vec3<bool>(var_1.x, var_2.d.c.x, var_3.c.x), var_3.c.x)), vec3<bool>(global3.x, true, !var_1.x), !var_3.c.x)));
    let var_5 = vec4<bool>(all(select(vec2<bool>(var_1.x, var_3.c.x), !vec2<bool>(false, var_2.d.c.x), var_2.d.c)) & var_2.d.c.x, -1000f <= var_3.a.c, true, var_1.x);
    var_4 = var_2.d.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_i32(~abs(vec4<i32>(60458i, u_input.a.x, var_3.a.d, 11355i) | vec4<i32>(-1i, -38521i, 44636i, u_input.b)), ~(~var_3.b)), abs(max(~1u, 34184u)));
}

