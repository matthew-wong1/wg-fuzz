struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: u32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(0i, 2147483647i, 77988i, 0i, 49843i, -38971i, i32(-2147483648), 0i, -1i, i32(-2147483648), i32(-2147483648), 41700i, 2147483647i, 70957i, 45793i, -7524i, 13416i);

var<private> global1: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(458f, 161f, -1783f, -1231f), vec4<f32>(1555f, -424f, 238f, -450f), vec4<f32>(879f, 1458f, 183f, 467f), vec4<f32>(431f, 1000f, 938f, -2160f), vec4<f32>(308f, -1157f, 806f, -610f), vec4<f32>(622f, 1000f, 1511f, 953f), vec4<f32>(1000f, -1000f, -358f, 1054f), vec4<f32>(-1979f, -671f, -1617f, 2038f), vec4<f32>(1695f, 931f, 1000f, 459f), vec4<f32>(-919f, 1080f, 850f, 379f), vec4<f32>(-1000f, 430f, -378f, -1345f), vec4<f32>(-155f, -1881f, 1134f, -2101f), vec4<f32>(675f, -734f, -251f, -1640f), vec4<f32>(813f, 962f, 519f, 294f), vec4<f32>(-1618f, -2344f, -905f, 369f), vec4<f32>(-815f, 165f, 495f, -1619f), vec4<f32>(-1018f, -103f, -142f, -1538f), vec4<f32>(-2186f, 1422f, -2134f, -145f), vec4<f32>(-815f, 1357f, -249f, 1132f), vec4<f32>(681f, 142f, 126f, 231f), vec4<f32>(-1470f, 1000f, 310f, 872f));

var<private> global2: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec4<f32>(-591f, 1130f, -1567f, -1504f), -1470f, false, 117680u, vec3<f32>(534f, -1305f, -1888f)), Struct_2(vec4<f32>(-1261f, -1024f, -428f, -841f), -695f, false, 17661u, vec3<f32>(-305f, -1275f, -949f)), Struct_2(vec4<f32>(-373f, -723f, -281f, -912f), -1000f, true, 44714u, vec3<f32>(204f, 539f, -2833f)), Struct_2(vec4<f32>(967f, -1261f, -400f, 643f), -2712f, true, 30542u, vec3<f32>(398f, 1000f, -347f)), Struct_2(vec4<f32>(930f, -245f, 480f, -1000f), -1272f, false, 36968u, vec3<f32>(-680f, 1000f, -882f)), Struct_2(vec4<f32>(2410f, -582f, -1762f, 391f), 178f, true, 1u, vec3<f32>(-838f, -2270f, 1360f)), Struct_2(vec4<f32>(1848f, -375f, -424f, 385f), 551f, true, 21194u, vec3<f32>(792f, 756f, -491f)), Struct_2(vec4<f32>(-2322f, -1676f, -1000f, -1149f), -1356f, true, 0u, vec3<f32>(276f, -934f, -161f)), Struct_2(vec4<f32>(170f, -337f, 1661f, -1285f), 613f, false, 4294967295u, vec3<f32>(1041f, 1139f, 141f)), Struct_2(vec4<f32>(-638f, 321f, -1477f, -1438f), -1762f, false, 6595u, vec3<f32>(-1480f, -665f, -1305f)), Struct_2(vec4<f32>(373f, -346f, -1391f, -1000f), 1000f, false, 4294967295u, vec3<f32>(488f, -598f, 1000f)), Struct_2(vec4<f32>(673f, 733f, -676f, 251f), -1000f, true, 16326u, vec3<f32>(1194f, -1305f, 100f)), Struct_2(vec4<f32>(-985f, 791f, 1546f, -1836f), -1687f, true, 4294967295u, vec3<f32>(389f, -244f, -1703f)), Struct_2(vec4<f32>(-910f, 463f, -1000f, 1194f), 557f, false, 0u, vec3<f32>(505f, -1000f, -151f)), Struct_2(vec4<f32>(825f, -215f, -1593f, -118f), -744f, false, 1u, vec3<f32>(-1773f, -103f, -1031f)), Struct_2(vec4<f32>(789f, 229f, 887f, 144f), 755f, true, 4294967295u, vec3<f32>(-1300f, 561f, 1041f)), Struct_2(vec4<f32>(242f, -631f, -204f, -1416f), 1052f, false, 49967u, vec3<f32>(1000f, -502f, -117f)), Struct_2(vec4<f32>(315f, 326f, -139f, 212f), 758f, false, 1u, vec3<f32>(2000f, 443f, 261f)), Struct_2(vec4<f32>(525f, 382f, -318f, 1479f), -258f, false, 40477u, vec3<f32>(1045f, 379f, 617f)), Struct_2(vec4<f32>(290f, 2452f, -1126f, 272f), -856f, true, 0u, vec3<f32>(-1718f, 391f, -320f)), Struct_2(vec4<f32>(140f, 844f, -484f, 570f), -320f, true, 40485u, vec3<f32>(1000f, 715f, -1593f)), Struct_2(vec4<f32>(-896f, 1142f, 492f, -1227f), -292f, true, 1u, vec3<f32>(-817f, 937f, 657f)), Struct_2(vec4<f32>(565f, 274f, -764f, 1445f), 1963f, true, 0u, vec3<f32>(1497f, 352f, 230f)), Struct_2(vec4<f32>(1256f, -1146f, 1000f, 776f), -121f, true, 1u, vec3<f32>(-161f, -607f, 1300f)), Struct_2(vec4<f32>(2468f, -972f, -2849f, 1069f), 1218f, false, 22095u, vec3<f32>(1103f, -1000f, -554f)), Struct_2(vec4<f32>(1099f, -502f, -1096f, 620f), -549f, true, 88411u, vec3<f32>(-662f, 193f, 2022f)), Struct_2(vec4<f32>(1000f, -548f, 1921f, -2228f), -421f, true, 1u, vec3<f32>(-1969f, 1417f, 855f)), Struct_2(vec4<f32>(955f, 1205f, -542f, -1000f), 1782f, true, 0u, vec3<f32>(-1000f, 750f, -963f)), Struct_2(vec4<f32>(3388f, 1860f, 1031f, -1210f), -1000f, false, 30786u, vec3<f32>(-1477f, 277f, 529f)), Struct_2(vec4<f32>(125f, -1776f, 597f, -725f), 356f, true, 33993u, vec3<f32>(-542f, 208f, -1148f)), Struct_2(vec4<f32>(-401f, 332f, 120f, 570f), 2072f, false, 0u, vec3<f32>(143f, -266f, 417f)));

var<private> global3: u32;

var<private> global4: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<u32>) -> vec2<bool> {
    var var_0 = min(u_input.b.x, u_input.b.x);
    let var_1 = true;
    global0 = array<i32, 17>();
    var var_2 = countOneBits(u_input.b);
    global3 = 54415u << (((~1u & u_input.c.x) & 1u) % 32u);
    return !(!vec2<bool>(all(select(vec3<bool>(var_1, var_1, true), vec3<bool>(true, true, global4.x), vec3<bool>(true, global4.x, true))), var_1));
}

fn func_2(arg_0: f32) -> vec3<i32> {
    global2 = array<Struct_2, 31>();
    global4 = select(select(vec2<bool>(all(!vec4<bool>(true, true, global4.x, true)), global4.x), vec2<bool>(global4.x & true, !global4.x), select(vec2<bool>(true, true), select(select(vec2<bool>(global4.x, false), vec2<bool>(false, true), true), vec2<bool>(false, global4.x), global4.x), all(select(vec2<bool>(global4.x, global4.x), vec2<bool>(global4.x, global4.x), vec2<bool>(global4.x, global4.x))))), !vec2<bool>(any(!vec4<bool>(global4.x, true, false, true)), all(!vec4<bool>(global4.x, true, global4.x, global4.x))), func_3(countOneBits(u_input.c >> (abs(vec2<u32>(62229u, 1u)) % vec2<u32>(32u)))));
    var var_0 = ~vec4<u32>(27693u, 4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 4294967295u, u_input.c.x, u_input.c.x)), ~vec4<u32>(1u, 31566u, u_input.c.x, 38301u)), firstLeadingBit(1u & u_input.c.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 93319u, 27339u, u_input.c.x), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 50010u) ^ vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)));
    global3 = abs(~24531u);
    var var_1 = var_0.x ^ _wgslsmith_dot_vec2_u32(u_input.c, abs(vec2<u32>(var_0.x, max(0u, 29865u))));
    return _wgslsmith_mod_vec3_i32(-_wgslsmith_add_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 39251i, global0[_wgslsmith_index_u32(var_0.x, 17u)]), vec3<i32>(u_input.b.x, u_input.a, -1i))), u_input.b.zww), abs(_wgslsmith_mod_vec3_i32(max(min(vec3<i32>(global0[_wgslsmith_index_u32(9006u, 17u)], -2147483647i, global0[_wgslsmith_index_u32(19289u, 17u)]), u_input.b.wyy), select(u_input.b.xzw, u_input.b.xxz, vec3<bool>(global4.x, true, global4.x))), ~(~vec3<i32>(-18702i, global0[_wgslsmith_index_u32(4294967295u, 17u)], 1i)))));
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<i32>) -> f32 {
    let var_0 = vec3<bool>(_wgslsmith_sub_i32(~global0[_wgslsmith_index_u32(4294967295u, 17u)], u_input.b.x) >= select(_wgslsmith_dot_vec3_i32(-arg_1, -arg_2), max(0i, -arg_2.x), global4.x), true, arg_0);
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(sign(global1[_wgslsmith_index_u32(0u, 21u)])), -1195f, var_0.x, (firstTrailingBit(4294967295u) >> ((u_input.c.x >> (u_input.c.x % 32u)) % 32u)) & reverseBits(_wgslsmith_sub_u32(u_input.c.x, 1u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-820f - 488f), _wgslsmith_f_op_f32(abs(-515f)), _wgslsmith_f_op_f32(round(851f))) - vec3<f32>(_wgslsmith_f_op_f32(-1042f - 1361f), _wgslsmith_f_op_f32(trunc(-1783f)), _wgslsmith_f_op_f32(floor(-239f))))), vec2<i32>(min(global0[_wgslsmith_index_u32(select(4294967295u, 0u, true), 17u)], ~2147483647i) << (_wgslsmith_sub_u32(4294967295u, ~18014u) % 32u), 0i), arg_2.yx, ~select(arg_1, (vec3<i32>(-19321i, global0[_wgslsmith_index_u32(u_input.c.x, 17u)], 0i) >> (vec3<u32>(0u, u_input.c.x, u_input.c.x) % vec3<u32>(32u))) ^ arg_2, -16905i != arg_1.x));
    var var_2 = var_1.a;
    global3 = _wgslsmith_div_u32(1u, countOneBits(var_2.d));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_1.a.e.zy * _wgslsmith_f_op_vec2_f32(select(var_1.a.e.zz, _wgslsmith_div_vec2_f32(vec2<f32>(var_2.a.x, 917f), var_1.a.a.xw), vec2<bool>(arg_0, var_2.c)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_2.a.zw)))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(var_3.x * var_2.b)))), 790f))));
}

fn func_1(arg_0: bool, arg_1: u32) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(round(-541f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(355f * -579f) - -958f), firstLeadingBit(-(~u_input.b.wyz)), _wgslsmith_div_vec3_i32(u_input.b.zxw, ~func_2(-1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(~91185u, 21u)] + _wgslsmith_f_op_vec4_f32(vec4<f32>(-699f, 1717f, 1000f, -224f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -2093f, 637f, -860f) + global1[_wgslsmith_index_u32(u_input.c.x, 21u)]))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1032f)), _wgslsmith_f_op_f32(f32(-1f) * -894f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1050f + 1139f))), -1543f)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a, 376f, var_0.a, var_0.b.x), vec4<f32>(-521f, var_0.b.x, 1000f, var_0.b.x)))))), -2401f, !all(select(vec4<bool>(false, global4.x, global4.x, false), vec4<bool>(arg_0, false, global4.x, false), arg_0)), _wgslsmith_mod_u32(abs(~u_input.c.x), reverseBits(_wgslsmith_div_u32(u_input.c.x, 39615u))), vec3<f32>(var_0.a, 670f, _wgslsmith_div_f32(-1183f, _wgslsmith_f_op_f32(var_0.b.x + -645f)))), u_input.b.xx, select(_wgslsmith_add_vec2_i32(select(u_input.b.xw, u_input.b.zx, vec2<bool>(true, false)), countOneBits(u_input.b.wx)), vec2<i32>(reverseBits(u_input.d), max(u_input.d, u_input.b.x)), select(select(vec2<bool>(global4.x, arg_0), vec2<bool>(true, arg_0), true), !vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0))) & firstLeadingBit(~(~vec2<i32>(1i, u_input.d))), abs(vec3<i32>(global0[_wgslsmith_index_u32(12784u, 17u)] & u_input.d, global0[_wgslsmith_index_u32(~33625u, 17u)], ~global0[_wgslsmith_index_u32(u_input.c.x, 17u)]) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, arg_1), abs(vec3<u32>(1u, arg_1, 17474u))) % vec3<u32>(32u))));
    let var_2 = max(vec2<u32>(u_input.c.x | _wgslsmith_mult_u32(25944u << (u_input.c.x % 32u), ~1u), 51113u), u_input.c);
    var var_3 = var_2.x;
    let var_4 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(79743u, 17212u), ~vec2<u32>(var_2.x, 4294967295u)) << (vec2<u32>(arg_1, 85783u) % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_u32(~u_input.c, var_2 << (u_input.c % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_u32(var_2, vec2<u32>(0u, firstLeadingBit(122664u)), var_2));
    return vec2<bool>(global4.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(1000f));
    global4 = !(!vec2<bool>(global4.x, global4.x));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1227f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1676f * 502f)))));
    let var_2 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]) >> ((u_input.c.x | u_input.c.x) % 32u), ~(-18602i ^ global0[_wgslsmith_index_u32(u_input.c.x, 17u)])), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.xw, vec2<i32>(-1i & global0[_wgslsmith_index_u32(u_input.c.x, 17u)], ~global0[_wgslsmith_index_u32(0u, 17u)])), abs(-(u_input.b.xx ^ u_input.b.zx))), ~u_input.b.wy);
    var var_3 = select(vec4<u32>(~(~u_input.c.x) ^ 4294967295u, max(72415u, reverseBits(firstLeadingBit(u_input.c.x))), ~1u, _wgslsmith_add_u32(~51760u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(23492u, u_input.c.x, 0u)), ~vec3<u32>(37552u, 1u, 7596u)))), ~max(firstLeadingBit(vec4<u32>(0u, u_input.c.x, 70036u, 1u) ^ vec4<u32>(u_input.c.x, 0u, 16023u, 34169u)), vec4<u32>(u_input.c.x, min(u_input.c.x, 44169u), ~61069u, 159555u >> (0u % 32u))), all(select(vec2<bool>(true, global4.x), vec2<bool>(any(vec2<bool>(true, global4.x)), true), func_1(u_input.c.x < 95580u, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(855f, 604f, var_1.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2101f, var_1.x, -939f))))))));
}

