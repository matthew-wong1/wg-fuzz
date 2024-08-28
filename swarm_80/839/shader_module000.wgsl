struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 453f;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: i32) -> i32 {
    let var_0 = arg_1.c;
    let var_1 = max(_wgslsmith_sub_vec2_u32(vec2<u32>(abs(_wgslsmith_mult_u32(1u, arg_2.x)), countOneBits(0u)), ~abs(~vec2<u32>(46374u, 4294967295u))), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_2.x, arg_2.x), _wgslsmith_mod_u32(arg_2.x, u_input.a)), 41503u), countOneBits(53442u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-arg_0.e.b);
    let var_3 = _wgslsmith_f_op_vec4_f32(min(var_2, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -432f, 1456f, arg_0.c.b.x)) - _wgslsmith_f_op_vec4_f32(-arg_0.e.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(213f, -279f, 1000f, -1326f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_0.b)))))));
    let var_4 = -1099f;
    return -16349i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> bool {
    let var_0 = arg_1.d;
    var var_1 = arg_0;
    var var_2 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(arg_1.a.b.xyw << ((_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 4294967295u)) >> (vec3<u32>(u_input.a, u_input.a, 50046u) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(min(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.b, arg_1.a.b.x, 1i), vec3<i32>(1i, -19414i, 4153i)), ~vec3<i32>(-1i, var_1.b.x, arg_1.b)))), ~_wgslsmith_sub_i32(arg_0.b.x, ~0i & func_3(arg_0, arg_0, vec3<u32>(u_input.a, u_input.a, 42648u), arg_0.b.x)), ~(~1i));
    let var_3 = !var_1.a.x;
    var var_4 = arg_1;
    return false;
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -590f), _wgslsmith_f_op_f32(min(1f, -1139f)), any(vec4<bool>(true, true, true, false)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(594f, 493f))), _wgslsmith_f_op_f32(-120f + _wgslsmith_f_op_f32(max(176f, 765f))), true && func_2(Struct_2(vec4<bool>(false, true, false, false), vec4<i32>(u_input.b, u_input.b, 12379i, -2147483647i), Struct_1(vec3<f32>(844f, -778f, 1000f), vec4<f32>(830f, -631f, -199f, 1000f), vec2<f32>(-421f, 1173f), vec4<f32>(-1608f, -456f, -660f, 1550f)), false, Struct_1(vec3<f32>(-1000f, 718f, -754f), vec4<f32>(-1520f, 1591f, -1446f, 468f), vec2<f32>(-2180f, 1454f), vec4<f32>(-606f, 2105f, -309f, -1000f))), Struct_3(Struct_2(vec4<bool>(false, false, true, true), vec4<i32>(2147483647i, 78793i, 16979i, u_input.b), Struct_1(vec3<f32>(117f, -790f, -292f), vec4<f32>(2855f, -1538f, -442f, -453f), vec2<f32>(180f, 2028f), vec4<f32>(-145f, -706f, 645f, 683f)), true, Struct_1(vec3<f32>(484f, 638f, 1264f), vec4<f32>(1010f, 507f, 1310f, 2131f), vec2<f32>(1055f, -1441f), vec4<f32>(-296f, 656f, -2265f, 1055f))), 0i, -734f, Struct_1(vec3<f32>(240f, -1760f, -545f), vec4<f32>(-1059f, 203f, -498f, -1152f), vec2<f32>(-551f, -172f), vec4<f32>(260f, 257f, -701f, 1382f)), Struct_1(vec3<f32>(-215f, 634f, -337f), vec4<f32>(-1043f, -1087f, 1000f, -391f), vec2<f32>(221f, 202f), vec4<f32>(-1288f, -898f, -1220f, -638f))), false, -314f)))));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -730f)))), -1000f));
    global0 = _wgslsmith_f_op_f32(-308f - _wgslsmith_f_op_f32(-1000f * -431f));
    let var_0 = vec4<i32>(-(~(~3364i)), ~(-((u_input.b >> (53967u % 32u)) & -2147483647i)), _wgslsmith_sub_i32(u_input.b, u_input.b), ~abs(~max(u_input.b, u_input.b)));
    let var_1 = Struct_2(vec4<bool>(true && any(vec2<bool>(true, true)), false, !(false & select(true, true, false)), true && func_2(Struct_2(vec4<bool>(false, true, true, false), var_0, Struct_1(vec3<f32>(221f, -1674f, -645f), vec4<f32>(-142f, -811f, 1058f, 1433f), vec2<f32>(340f, 222f), vec4<f32>(2806f, 339f, -1012f, 322f)), true, Struct_1(vec3<f32>(1040f, -182f, -403f), vec4<f32>(593f, 1031f, 185f, 923f), vec2<f32>(1741f, -590f), vec4<f32>(733f, -1070f, 1134f, 627f))), Struct_3(Struct_2(vec4<bool>(true, true, false, false), vec4<i32>(var_0.x, 2147483647i, var_0.x, u_input.b), Struct_1(vec3<f32>(-393f, 1042f, -2610f), vec4<f32>(-422f, 196f, 1000f, 418f), vec2<f32>(-437f, -1000f), vec4<f32>(-401f, 222f, -589f, -365f)), false, Struct_1(vec3<f32>(-900f, 1888f, 1928f), vec4<f32>(-163f, -717f, -422f, 763f), vec2<f32>(903f, 836f), vec4<f32>(512f, -815f, -1914f, 671f))), var_0.x, 1074f, Struct_1(vec3<f32>(-1144f, -179f, -654f), vec4<f32>(-821f, -1348f, 848f, -1521f), vec2<f32>(-855f, 661f), vec4<f32>(138f, 867f, -1000f, 399f)), Struct_1(vec3<f32>(-375f, -974f, -2477f), vec4<f32>(-1255f, -746f, -1126f, 807f), vec2<f32>(-784f, 1000f), vec4<f32>(-1000f, -501f, 461f, -703f))), select(false, true, false), 968f)), var_0 ^ select(var_0 & select(var_0, vec4<i32>(2147483647i, -2147483647i, u_input.b, -1i), vec4<bool>(false, false, false, false)), var_0, vec4<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, false, false)), u_input.a < u_input.a, true)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(317f, 2566f, -1682f), vec3<f32>(163f, -1974f, -264f), vec3<bool>(true, false, false))) - _wgslsmith_div_vec3_f32(vec3<f32>(904f, 736f, 409f), vec3<f32>(928f, -1000f, 1077f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1987f, -188f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1375f), _wgslsmith_f_op_f32(f32(-1f) * -916f)), -979f, _wgslsmith_f_op_f32(f32(-1f) * -2031f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-338f, -520f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1464f, -1672f), vec2<f32>(-917f, 965f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-174f, -1000f, 438f, 1000f)))))))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, func_2(Struct_2(vec4<bool>(false, false, true, false), vec4<i32>(-19022i, var_0.x, 42416i, 1i), Struct_1(vec3<f32>(-303f, 634f, -407f), vec4<f32>(1782f, 632f, 606f, 395f), vec2<f32>(960f, 152f), vec4<f32>(-992f, -932f, 790f, -916f)), false, Struct_1(vec3<f32>(-1719f, -171f, -1038f), vec4<f32>(1433f, -1000f, -255f, -2751f), vec2<f32>(585f, -1000f), vec4<f32>(-152f, 419f, 1606f, -260f))), Struct_3(Struct_2(vec4<bool>(false, false, true, true), vec4<i32>(0i, var_0.x, 1i, u_input.b), Struct_1(vec3<f32>(468f, -1154f, 1498f), vec4<f32>(1967f, -446f, -302f, -1000f), vec2<f32>(-195f, -975f), vec4<f32>(318f, 990f, -1175f, 2072f)), false, Struct_1(vec3<f32>(966f, 329f, 1411f), vec4<f32>(-2238f, -807f, 110f, -943f), vec2<f32>(-1000f, 395f), vec4<f32>(711f, -481f, -690f, -1174f))), var_0.x, 283f, Struct_1(vec3<f32>(-103f, -508f, 1019f), vec4<f32>(340f, -539f, -1242f, -526f), vec2<f32>(-685f, -1019f), vec4<f32>(668f, -388f, -1304f, 300f)), Struct_1(vec3<f32>(-523f, 1000f, -142f), vec4<f32>(-180f, -1340f, -1299f, 304f), vec2<f32>(197f, 522f), vec4<f32>(-137f, 1542f, -1074f, -1540f))), true, 414f), func_2(Struct_2(vec4<bool>(true, false, true, true), var_0, Struct_1(vec3<f32>(1000f, -1497f, 593f), vec4<f32>(-565f, -551f, -1000f, -1434f), vec2<f32>(-1278f, -162f), vec4<f32>(149f, 626f, 463f, -490f)), true, Struct_1(vec3<f32>(738f, 910f, -550f), vec4<f32>(826f, 483f, -344f, -468f), vec2<f32>(1419f, -513f), vec4<f32>(718f, -604f, -706f, -1292f))), Struct_3(Struct_2(vec4<bool>(true, false, true, false), vec4<i32>(u_input.b, 2147483647i, 38436i, 46530i), Struct_1(vec3<f32>(-1100f, -1248f, -583f), vec4<f32>(375f, -1352f, -102f, 123f), vec2<f32>(631f, -504f), vec4<f32>(989f, 672f, -891f, -1464f)), false, Struct_1(vec3<f32>(-453f, -538f, 742f), vec4<f32>(283f, -1000f, 1040f, 936f), vec2<f32>(717f, -294f), vec4<f32>(-107f, 2136f, -1583f, 477f))), 6699i, 1000f, Struct_1(vec3<f32>(817f, 417f, 1049f), vec4<f32>(-157f, -2956f, -1923f, 705f), vec2<f32>(-1000f, 1000f), vec4<f32>(454f, 226f, -801f, 1775f)), Struct_1(vec3<f32>(-341f, 225f, -387f), vec4<f32>(-1000f, 2972f, 1000f, 139f), vec2<f32>(-1286f, -693f), vec4<f32>(217f, 417f, -413f, -403f))), true, 2411f)), u_input.b >= ~36281i)), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1225f, -596f, 2835f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-135f, 1199f, 857f) * vec3<f32>(1006f, -289f, -2237f))), vec3<f32>(_wgslsmith_f_op_f32(482f * 1618f), 1f, _wgslsmith_f_op_f32(-1349f - 1000f)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-903f, 499f, -964f, 1786f), vec4<f32>(-613f, 2259f, -787f, 1272f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 662f, -251f, 211f), vec4<f32>(831f, -1028f, -455f, -1110f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1544f, 467f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(346f, -135f)), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1000f) - vec2<f32>(584f, -1340f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1436f, _wgslsmith_f_op_f32(f32(-1f) * -644f), _wgslsmith_div_f32(1772f, -1216f), _wgslsmith_f_op_f32(floor(-1210f)))))));
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(select(vec2<bool>(any(vec4<bool>(true, true, true, false)), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    var var_1 = func_1();
    let var_2 = func_1();
    var var_3 = Struct_3(Struct_2(!select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, var_0), vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, false, var_0, false)), !var_0), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 6894i, u_input.b, 25231i), -vec4<i32>(1i, 2147483647i, u_input.b, u_input.b)), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -410f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.d.x))), var_2), 2147483647i ^ _wgslsmith_div_i32(u_input.b ^ -2554i, 2147483647i), _wgslsmith_f_op_f32(-var_1.b.x), var_2, func_1());
    let var_4 = vec2<f32>(-1067f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) - var_1.b.x))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), -1331f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1324f, 1f)), -139f)));
    let var_5 = vec2<u32>(u_input.a, u_input.a);
    var var_6 = vec4<u32>(18268u >> (u_input.a % 32u), var_5.x | u_input.a, ~(~(u_input.a & var_5.x) ^ u_input.a), 18769u);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, countOneBits(vec3<u32>(84381u, 45814u, 4294967295u)));
}

