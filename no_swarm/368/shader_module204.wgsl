struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: vec3<bool>,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(4294967295u, Struct_2(Struct_1(vec2<f32>(951f, -580f), vec2<bool>(false, false), 23486u, vec2<f32>(-1000f, -1367f)), -50325i, Struct_1(vec2<f32>(496f, -1473f), vec2<bool>(true, false), 69731u, vec2<f32>(-799f, 915f)), vec4<f32>(584f, 242f, 1000f, -605f)), Struct_1(vec2<f32>(-1219f, -503f), vec2<bool>(true, true), 0u, vec2<f32>(138f, -957f)), vec3<bool>(false, false, true), -571f), Struct_3(0u, Struct_2(Struct_1(vec2<f32>(1830f, 483f), vec2<bool>(true, true), 4294967295u, vec2<f32>(289f, 1569f)), 15948i, Struct_1(vec2<f32>(593f, -1611f), vec2<bool>(true, true), 4294967295u, vec2<f32>(1170f, 418f)), vec4<f32>(-662f, 593f, 932f, -724f)), Struct_1(vec2<f32>(347f, 1000f), vec2<bool>(false, false), 7386u, vec2<f32>(-1129f, 1000f)), vec3<bool>(true, true, true), -1000f), Struct_3(0u, Struct_2(Struct_1(vec2<f32>(657f, 806f), vec2<bool>(true, true), 4294967295u, vec2<f32>(146f, 492f)), -30582i, Struct_1(vec2<f32>(-203f, 2033f), vec2<bool>(true, true), 0u, vec2<f32>(-266f, 283f)), vec4<f32>(319f, -1270f, -973f, -498f)), Struct_1(vec2<f32>(887f, -1067f), vec2<bool>(false, true), 4294967295u, vec2<f32>(-338f, 1091f)), vec3<bool>(true, false, false), 1161f), Struct_3(13076u, Struct_2(Struct_1(vec2<f32>(-1110f, 610f), vec2<bool>(false, true), 40550u, vec2<f32>(253f, -1160f)), -9557i, Struct_1(vec2<f32>(124f, -465f), vec2<bool>(true, true), 35114u, vec2<f32>(1827f, 210f)), vec4<f32>(-176f, 1522f, 1356f, -2050f)), Struct_1(vec2<f32>(936f, 674f), vec2<bool>(false, false), 35627u, vec2<f32>(-1517f, 1050f)), vec3<bool>(false, true, true), -218f), Struct_3(1u, Struct_2(Struct_1(vec2<f32>(-321f, -915f), vec2<bool>(false, true), 1u, vec2<f32>(1314f, -1679f)), 5218i, Struct_1(vec2<f32>(-805f, 596f), vec2<bool>(true, false), 0u, vec2<f32>(212f, -449f)), vec4<f32>(-275f, 725f, -819f, -640f)), Struct_1(vec2<f32>(467f, -522f), vec2<bool>(false, true), 0u, vec2<f32>(-273f, 1092f)), vec3<bool>(false, true, false), 1051f), Struct_3(1u, Struct_2(Struct_1(vec2<f32>(653f, -791f), vec2<bool>(false, false), 1u, vec2<f32>(-954f, -582f)), 2147483647i, Struct_1(vec2<f32>(786f, -2142f), vec2<bool>(true, true), 94316u, vec2<f32>(1571f, 1166f)), vec4<f32>(927f, 1000f, 1927f, -103f)), Struct_1(vec2<f32>(718f, 970f), vec2<bool>(false, false), 4294967295u, vec2<f32>(1153f, 1000f)), vec3<bool>(false, false, true), -1249f), Struct_3(0u, Struct_2(Struct_1(vec2<f32>(1236f, -1000f), vec2<bool>(true, true), 0u, vec2<f32>(1314f, -485f)), -22981i, Struct_1(vec2<f32>(557f, 350f), vec2<bool>(false, false), 0u, vec2<f32>(335f, 2041f)), vec4<f32>(-1207f, -1431f, 1876f, 264f)), Struct_1(vec2<f32>(-515f, 1145f), vec2<bool>(true, false), 88914u, vec2<f32>(-1139f, -2012f)), vec3<bool>(false, true, false), 508f), Struct_3(4294967295u, Struct_2(Struct_1(vec2<f32>(-2019f, -341f), vec2<bool>(false, false), 0u, vec2<f32>(-1086f, 1634f)), -8346i, Struct_1(vec2<f32>(931f, 1948f), vec2<bool>(true, true), 2043u, vec2<f32>(-1380f, -150f)), vec4<f32>(2022f, -567f, -1644f, -332f)), Struct_1(vec2<f32>(2197f, 944f), vec2<bool>(true, false), 4294967295u, vec2<f32>(2041f, 1365f)), vec3<bool>(true, true, true), 694f), Struct_3(0u, Struct_2(Struct_1(vec2<f32>(803f, 169f), vec2<bool>(false, false), 1u, vec2<f32>(-1000f, -444f)), 9905i, Struct_1(vec2<f32>(918f, -1330f), vec2<bool>(false, false), 1u, vec2<f32>(1537f, 242f)), vec4<f32>(581f, 774f, 129f, -545f)), Struct_1(vec2<f32>(233f, -1179f), vec2<bool>(false, true), 99883u, vec2<f32>(-2536f, -400f)), vec3<bool>(true, false, true), 240f), Struct_3(0u, Struct_2(Struct_1(vec2<f32>(-992f, -1225f), vec2<bool>(true, false), 0u, vec2<f32>(688f, 1000f)), -1i, Struct_1(vec2<f32>(-918f, 526f), vec2<bool>(true, false), 1u, vec2<f32>(502f, 155f)), vec4<f32>(-1128f, -292f, 538f, -1040f)), Struct_1(vec2<f32>(-1007f, 637f), vec2<bool>(true, false), 25194u, vec2<f32>(-1000f, -2156f)), vec3<bool>(false, true, false), -918f), Struct_3(35938u, Struct_2(Struct_1(vec2<f32>(-127f, 574f), vec2<bool>(true, true), 65006u, vec2<f32>(139f, 288f)), -11500i, Struct_1(vec2<f32>(-1000f, 2792f), vec2<bool>(true, true), 1u, vec2<f32>(-118f, -1496f)), vec4<f32>(-1000f, -1584f, 795f, -1383f)), Struct_1(vec2<f32>(-640f, 141f), vec2<bool>(true, false), 63621u, vec2<f32>(497f, 1544f)), vec3<bool>(true, false, false), -2607f), Struct_3(22084u, Struct_2(Struct_1(vec2<f32>(-1000f, 1297f), vec2<bool>(true, false), 0u, vec2<f32>(-1000f, -759f)), 51903i, Struct_1(vec2<f32>(645f, 447f), vec2<bool>(false, true), 29791u, vec2<f32>(-673f, 304f)), vec4<f32>(1393f, 934f, 462f, -303f)), Struct_1(vec2<f32>(387f, 896f), vec2<bool>(true, false), 1u, vec2<f32>(-976f, -1127f)), vec3<bool>(true, true, true), -273f), Struct_3(0u, Struct_2(Struct_1(vec2<f32>(1372f, 407f), vec2<bool>(false, false), 4294967295u, vec2<f32>(-2124f, 2118f)), 0i, Struct_1(vec2<f32>(-536f, 529f), vec2<bool>(false, false), 0u, vec2<f32>(-2425f, 3211f)), vec4<f32>(1000f, -727f, -599f, 820f)), Struct_1(vec2<f32>(389f, 1235f), vec2<bool>(true, false), 6038u, vec2<f32>(287f, 314f)), vec3<bool>(true, true, true), -1000f), Struct_3(40031u, Struct_2(Struct_1(vec2<f32>(-379f, -134f), vec2<bool>(true, true), 8741u, vec2<f32>(-890f, -253f)), 42783i, Struct_1(vec2<f32>(102f, -562f), vec2<bool>(true, true), 20806u, vec2<f32>(1355f, 577f)), vec4<f32>(-544f, 902f, -360f, -2041f)), Struct_1(vec2<f32>(1159f, 2072f), vec2<bool>(false, true), 48488u, vec2<f32>(-1071f, 693f)), vec3<bool>(false, false, true), 1762f));

var<private> global1: Struct_3;

var<private> global2: array<u32, 26> = array<u32, 26>(24089u, 31710u, 19391u, 72228u, 39632u, 81u, 4294967295u, 9236u, 41905u, 42567u, 0u, 1u, 63736u, 1u, 0u, 99522u, 40575u, 4294967295u, 4294967295u, 51544u, 69442u, 0u, 71020u, 1u, 0u, 32310u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec4<f32>) -> vec4<bool> {
    var var_0 = Struct_4(~_wgslsmith_mod_i32(-global1.b.b & _wgslsmith_mod_i32(0i, global1.b.b), 1i), arg_1.b);
    global2 = array<u32, 26>();
    global2 = array<u32, 26>();
    var var_1 = select(any(select(select(vec2<bool>(arg_1.b.c.b.x, false), !vec2<bool>(arg_1.b.c.b.x, false), vec2<bool>(arg_1.b.c.b.x, false)), global1.b.a.b, true)), arg_1.b.b <= min(~_wgslsmith_add_i32(99489i, arg_1.b.b), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.a), vec2<i32>(var_0.a, -32778i)) ^ arg_1.b.b), false && global1.b.c.b.x);
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_add_u32(~4294967295u, ~global2[_wgslsmith_index_u32(global1.c.c, 26u)]), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(1u, 26u)], 28366u), vec2<u32>(var_0.b.c.c, global1.b.a.c)), vec2<u32>(4294967295u, 1u)) | 18157u), 14u)];
    return !select(select(!(!vec4<bool>(false, true, arg_1.b.a.b.x, true)), vec4<bool>(all(vec4<bool>(false, var_0.b.c.b.x, true, false)), var_0.b.a.b.x, global1.d.x || true, any(vec3<bool>(global1.c.b.x, false, true))), global1.d.x), !vec4<bool>(var_0.b.a.b.x, true, !var_0.b.c.b.x, select(false, arg_1.b.c.b.x, false)), !vec4<bool>(!var_0.b.c.b.x, any(vec3<bool>(true, arg_1.b.c.b.x, global1.b.c.b.x)), true, global1.c.b.x));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> i32 {
    global2 = array<u32, 26>();
    global0 = array<Struct_3, 14>();
    global2 = array<u32, 26>();
    let var_0 = -(~select(global1.b.b, _wgslsmith_mult_i32(arg_0.b.b, _wgslsmith_sub_i32(-28769i, arg_0.b.b)), global1.d.x));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1423f)))))))), -1600f, _wgslsmith_div_f32(arg_0.e, -193f));
    return ~(-36204i);
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = firstLeadingBit(abs(global1.b.b));
    let var_1 = Struct_4(-1i, Struct_2(global1.c, max(_wgslsmith_dot_vec2_i32(vec2<i32>(12840i, var_0), vec2<i32>(var_0, -2147483647i)), abs(0i)) | abs(59863i), global1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global1.b.d - global1.b.d), vec4<f32>(241f, global1.c.d.x, 210f, arg_2.c.a.x))))));
    global0 = array<Struct_3, 14>();
    let var_2 = Struct_4(-reverseBits(var_0) & -func_4(Struct_3(4294967295u, Struct_2(Struct_1(global1.c.d, global1.c.b, 4294967295u, vec2<f32>(global1.b.a.d.x, global1.c.d.x)), var_1.a, global1.b.a, global1.b.d), global1.b.a, arg_0.ywx, 229f), func_3(-1862f, Struct_4(global1.b.b, Struct_2(Struct_1(vec2<f32>(global1.c.d.x, 1000f), vec2<bool>(arg_0.x, arg_2.a.b.x), 4294967295u, vec2<f32>(-1000f, -103f)), var_0, global1.b.a, var_1.b.d)), vec4<f32>(var_1.b.a.d.x, global1.c.a.x, global1.c.d.x, -175f))), Struct_2(var_1.b.a, global1.b.b, global1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_2.d * arg_2.d))))));
    var var_3 = global1.b.c.a;
    return var_1.b.a;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec2<i32>, arg_3: i32) -> f32 {
    var var_0 = 4294967295u;
    let var_1 = Struct_2(func_2(!select(!vec4<bool>(arg_0.a.b.x, false, arg_0.c.b.x, true), !vec4<bool>(global1.b.a.b.x, arg_0.a.b.x, true, false), true), ~countOneBits(arg_0.c.c), global1.b), arg_0.b, func_2(func_3(_wgslsmith_f_op_f32(-1255f - 610f), Struct_4(reverseBits(arg_0.b), Struct_2(global1.b.a, arg_0.b, Struct_1(vec2<f32>(arg_1.b.x, -106f), arg_0.c.b, 0u, global1.c.d), vec4<f32>(arg_1.b.x, -762f, arg_0.a.d.x, global1.b.c.d.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1858f, -1091f, arg_0.c.d.x, arg_1.b.x))), u_input.a, arg_0), arg_0.d);
    var var_2 = Struct_3(var_1.a.c, global1.b, arg_0.a, !func_3(_wgslsmith_f_op_f32(trunc(1240f)), Struct_4(~arg_1.a, var_1), vec4<f32>(-1265f, _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(trunc(-395f)), 1590f)).xxy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(274f, _wgslsmith_f_op_f32(max(562f, 1156f)), true))));
    var var_3 = _wgslsmith_add_vec2_i32(arg_2, arg_2) ^ arg_2;
    var var_4 = var_2.b.a;
    return _wgslsmith_f_op_f32(func_2(vec4<bool>(all(!vec4<bool>(true, false, global1.d.x, arg_0.c.b.x)), true, func_2(select(vec4<bool>(arg_0.a.b.x, var_4.b.x, var_4.b.x, global1.b.a.b.x), vec4<bool>(true, false, arg_0.c.b.x, var_2.d.x), vec4<bool>(global1.c.b.x, arg_0.c.b.x, var_4.b.x, true)), 23746u, var_1).b.x, -15782i >= (arg_0.b << (42386u % 32u))), abs(min(u_input.a >> (var_1.a.c % 32u), min(u_input.a, global2[_wgslsmith_index_u32(15880u, 26u)]))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(426f, var_4.d.x) * vec2<f32>(var_2.e, 378f)), !vec2<bool>(true, var_1.a.b.x), 676u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_4.d.x, 103f), var_4.d, vec2<bool>(var_2.c.b.x, true)))), abs(-1i), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.a.d.x, 937f))), select(var_1.a.b, var_2.c.b, false), ~47334u, _wgslsmith_f_op_vec2_f32(round(arg_1.b))), vec4<f32>(arg_0.c.d.x, arg_1.b.x, _wgslsmith_f_op_f32(304f - -534f), var_2.b.d.x))).a.x * var_4.a.x);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_5) -> Struct_4 {
    let var_0 = -1130f;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -198f);
    global0 = array<Struct_3, 14>();
    let var_2 = ~countOneBits(~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(arg_2.c, 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)]), vec2<u32>(arg_2.c, global1.c.c)), ~vec2<u32>(35630u, 3308u)));
    global2 = array<u32, 26>();
    return Struct_4(func_4(Struct_3(11253u, Struct_2(func_2(arg_0, 0u, Struct_2(Struct_1(vec2<f32>(-1394f, var_0), vec2<bool>(global1.b.a.b.x, arg_0.x), var_2.x, global1.c.a), global1.b.b, Struct_1(vec2<f32>(arg_3.b.x, 858f), vec2<bool>(true, false), var_2.x, vec2<f32>(296f, 565f)), vec4<f32>(var_0, arg_3.b.x, arg_2.d.x, 464f))), select(-5156i, 2147483647i, arg_0.x), Struct_1(vec2<f32>(var_0, 776f), arg_2.b, global2[_wgslsmith_index_u32(u_input.a, 26u)], arg_2.d), vec4<f32>(arg_2.a.x, -1047f, -2795f, -1972f)), func_2(!arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(2462u, 26u)], arg_2.c), var_2), Struct_2(arg_2, -60086i, Struct_1(vec2<f32>(-800f, 296f), arg_2.b, global2[_wgslsmith_index_u32(6894u, 26u)], vec2<f32>(912f, global1.e)), global1.b.d)), func_3(-1801f, Struct_4(arg_3.a, global1.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, arg_3.b.x, -159f, 827f) * global1.b.d)).xyw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(313f)) * 560f)), arg_0), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<bool>(!global1.c.b.x, _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(global1.b.c.a, global1.b.a.b, global2[_wgslsmith_index_u32(u_input.a, 26u)], vec2<f32>(925f, global1.b.d.x)), global1.b.b, Struct_1(vec2<f32>(global1.b.d.x, 680f), vec2<bool>(global1.b.a.b.x, global1.d.x), u_input.a, global1.b.a.d), vec4<f32>(global1.b.c.a.x, global1.c.a.x, global1.e, -1640f)), Struct_5(4166i, global1.c.d), vec2<i32>(global1.b.b, global1.b.b) | vec2<i32>(-2147483647i, global1.b.b), ~(-2147483647i))) < _wgslsmith_f_op_f32(global1.b.d.x + _wgslsmith_f_op_f32(-1523f * global1.e)), ~u_input.a != ~u_input.a, global1.b.c.b.x), select(vec3<bool>((global1.b.b >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 26u)] % 32u)) != firstLeadingBit(global1.b.b), abs(-1i) != firstTrailingBit(2147483647i), global1.b.a.c > 1u), vec3<bool>(true, global1.d.x, false), false), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.e, global1.b.a.d.x)))), func_3(328f, Struct_4(global1.b.b, global1.b), global1.b.d).xx, _wgslsmith_mult_u32(_wgslsmith_sub_u32(~global1.a, 4294967295u), firstTrailingBit(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(54056u, 29600u), 26u)])), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-330f, -1083f) * global1.b.d.xz), _wgslsmith_f_op_vec2_f32(exp2(global1.c.d)))))), Struct_5(11556i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global1.b.c.d)))))));
    global0 = array<Struct_3, 14>();
    let var_1 = false;
    global1 = global0[_wgslsmith_index_u32(abs(countOneBits(global1.c.c)), 14u)];
    global1 = Struct_3(var_0.b.a.c, global1.b, func_5(vec4<bool>(func_2(func_3(-1428f, Struct_4(var_0.a, global1.b), global1.b.d), _wgslsmith_add_u32(u_input.a, 4294967295u), Struct_2(var_0.b.c, 2147483647i, Struct_1(vec2<f32>(var_0.b.d.x, -1311f), global1.c.b, global2[_wgslsmith_index_u32(global1.b.a.c, 26u)], var_0.b.a.a), global1.b.d)).b.x, true, func_5(vec4<bool>(true, false, true, global1.c.b.x), vec3<bool>(var_1, var_0.b.a.b.x, var_0.b.c.b.x), global1.c, Struct_5(15802i, var_0.b.a.a)).b.b != global1.b.b, !var_0.b.c.b.x), global1.d, Struct_1(var_0.b.c.a, !func_2(vec4<bool>(var_1, false, var_0.b.c.b.x, false), 60857u, var_0.b).b, ~(global2[_wgslsmith_index_u32(1u, 26u)] ^ 41899u), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.d.x, -1420f) - var_0.b.d.zx)), Struct_5(-8068i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-979f, global1.e), vec2<f32>(-826f, global1.e), vec2<bool>(true, var_1))), vec2<f32>(1553f, global1.e)))).b.c, vec3<bool>(any(vec4<bool>(var_0.b.c.b.x, global1.d.x | global1.b.c.b.x, select(false, true, true), select(false, false, global1.c.b.x))), var_0.b.a.b.x, var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-893f - _wgslsmith_f_op_f32(func_1(global1.b, Struct_5(-17975i, vec2<f32>(-1000f, var_0.b.a.d.x)), vec2<i32>(global1.b.b, global1.b.b), global1.b.b))), _wgslsmith_f_op_f32(exp2(var_0.b.c.d.x))))));
    global2 = array<u32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_mod_i32(0i, -2147483647i)), 2147483647i, -569f);
}

