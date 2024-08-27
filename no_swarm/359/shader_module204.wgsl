struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec2<u32>(1u, 1u), Struct_1(-723f, vec4<f32>(-313f, -392f, 328f, 1017f))), Struct_2(vec2<u32>(1971u, 18122u), Struct_1(1034f, vec4<f32>(804f, -345f, 257f, 376f))), Struct_2(vec2<u32>(8877u, 35522u), Struct_1(-1000f, vec4<f32>(-2727f, -321f, -1465f, -290f))), Struct_2(vec2<u32>(33662u, 0u), Struct_1(-1000f, vec4<f32>(1000f, -735f, 1000f, 237f))), Struct_2(vec2<u32>(12138u, 31184u), Struct_1(-369f, vec4<f32>(404f, -166f, 879f, -982f))), Struct_2(vec2<u32>(1u, 1u), Struct_1(-730f, vec4<f32>(1262f, 115f, 831f, 2413f))), Struct_2(vec2<u32>(25009u, 0u), Struct_1(-1019f, vec4<f32>(1067f, -1224f, -802f, -1375f))), Struct_2(vec2<u32>(940u, 0u), Struct_1(-449f, vec4<f32>(-1000f, -1000f, -218f, -1898f))), Struct_2(vec2<u32>(0u, 46332u), Struct_1(714f, vec4<f32>(-201f, 1250f, -1000f, -509f))), Struct_2(vec2<u32>(0u, 30017u), Struct_1(-1069f, vec4<f32>(2222f, -1756f, 152f, -829f))), Struct_2(vec2<u32>(76u, 1u), Struct_1(364f, vec4<f32>(593f, -410f, -1134f, 587f))), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(603f, vec4<f32>(-150f, 314f, 1943f, 1000f))), Struct_2(vec2<u32>(4312u, 93164u), Struct_1(1372f, vec4<f32>(1463f, -826f, -588f, 1215f))), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(-1353f, vec4<f32>(-1000f, 1000f, 1000f, -521f))), Struct_2(vec2<u32>(4294967295u, 0u), Struct_1(-665f, vec4<f32>(552f, -1000f, 673f, -144f))), Struct_2(vec2<u32>(1u, 19778u), Struct_1(-2108f, vec4<f32>(-187f, 894f, -764f, 418f))), Struct_2(vec2<u32>(0u, 1u), Struct_1(-613f, vec4<f32>(-1061f, -1360f, 287f, 2860f))), Struct_2(vec2<u32>(46482u, 0u), Struct_1(-1000f, vec4<f32>(321f, -1272f, -384f, 1000f))), Struct_2(vec2<u32>(4294967295u, 72350u), Struct_1(-743f, vec4<f32>(933f, 381f, 1536f, -426f))), Struct_2(vec2<u32>(74674u, 35945u), Struct_1(-463f, vec4<f32>(-236f, 144f, 859f, -1000f))), Struct_2(vec2<u32>(4294967295u, 71634u), Struct_1(2115f, vec4<f32>(-210f, -543f, 1085f, 690f))), Struct_2(vec2<u32>(6247u, 1u), Struct_1(-426f, vec4<f32>(255f, 915f, -608f, -1000f))), Struct_2(vec2<u32>(38610u, 11938u), Struct_1(-909f, vec4<f32>(-538f, -438f, -656f, 242f))), Struct_2(vec2<u32>(59995u, 0u), Struct_1(418f, vec4<f32>(1717f, -683f, -324f, 576f))), Struct_2(vec2<u32>(7972u, 46872u), Struct_1(615f, vec4<f32>(602f, -1560f, 462f, 961f))));

var<private> global1: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(1i, -1i, 20210i), vec3<i32>(-11690i, i32(-2147483648), -1i), vec3<i32>(1i, -19156i, 0i), vec3<i32>(1i, i32(-2147483648), 13774i), vec3<i32>(7005i, -1i, -15412i), vec3<i32>(18090i, -32113i, 0i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(39397i, -27968i, 2147483647i), vec3<i32>(-20163i, 0i, 2147483647i), vec3<i32>(-982i, -1i, -5241i), vec3<i32>(2147483647i, 0i, i32(-2147483648)));

var<private> global2: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(false, vec4<f32>(-1000f, -1454f, -1698f, 695f), vec3<i32>(1i, 66873i, 22880i), vec4<f32>(-360f, 3545f, 721f, 1868f)), Struct_3(true, vec4<f32>(-455f, 532f, -614f, -667f), vec3<i32>(0i, -25139i, -1i), vec4<f32>(1842f, -1895f, -776f, 153f)), Struct_3(true, vec4<f32>(-1085f, -416f, 858f, 2158f), vec3<i32>(-17238i, 0i, -27256i), vec4<f32>(977f, -709f, -940f, 917f)), Struct_3(false, vec4<f32>(-182f, 1132f, -1254f, 215f), vec3<i32>(-1i, 0i, 2147483647i), vec4<f32>(363f, 612f, 645f, 444f)), Struct_3(false, vec4<f32>(-1563f, 1951f, 141f, 257f), vec3<i32>(46796i, 1i, -45709i), vec4<f32>(1506f, -865f, -347f, -202f)), Struct_3(true, vec4<f32>(1316f, -328f, 1269f, 1900f), vec3<i32>(1i, 5568i, -33130i), vec4<f32>(-146f, -834f, 940f, -1653f)), Struct_3(true, vec4<f32>(-792f, 396f, -729f, 642f), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec4<f32>(-689f, -439f, 1127f, -1058f)), Struct_3(false, vec4<f32>(-828f, 1000f, 1000f, 1056f), vec3<i32>(12977i, -1i, i32(-2147483648)), vec4<f32>(1005f, -141f, 1590f, 380f)), Struct_3(true, vec4<f32>(2190f, 938f, -1000f, -295f), vec3<i32>(-1i, -1i, 43569i), vec4<f32>(1278f, 433f, -1626f, -2040f)), Struct_3(true, vec4<f32>(-867f, 2733f, -1681f, -1000f), vec3<i32>(-1851i, 0i, 29701i), vec4<f32>(-1000f, 176f, -801f, 1128f)), Struct_3(false, vec4<f32>(-1000f, 891f, -1000f, -1538f), vec3<i32>(-1i, -20253i, -6362i), vec4<f32>(-359f, -408f, 783f, 1549f)), Struct_3(true, vec4<f32>(-964f, -1655f, -983f, -761f), vec3<i32>(0i, -1i, -77037i), vec4<f32>(1821f, -182f, -561f, 937f)), Struct_3(false, vec4<f32>(-154f, -451f, 169f, -172f), vec3<i32>(i32(-2147483648), 2147483647i, -29603i), vec4<f32>(1346f, 968f, 833f, 180f)), Struct_3(false, vec4<f32>(1059f, 1686f, 305f, -120f), vec3<i32>(1i, 2147483647i, 942i), vec4<f32>(-1107f, -942f, 1052f, 879f)), Struct_3(false, vec4<f32>(897f, 554f, 888f, -516f), vec3<i32>(-15178i, -24116i, -14042i), vec4<f32>(-842f, 862f, 354f, -117f)), Struct_3(false, vec4<f32>(-775f, 616f, -946f, 420f), vec3<i32>(-1i, 1i, -32599i), vec4<f32>(-727f, -211f, 854f, -696f)), Struct_3(true, vec4<f32>(271f, -832f, -1200f, -625f), vec3<i32>(-22555i, 0i, -40946i), vec4<f32>(2096f, -1000f, -369f, -440f)));

var<private> global3: array<Struct_2, 28>;

var<private> global4: array<u32, 4>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> u32 {
    let var_0 = arg_0;
    global2 = array<Struct_3, 17>();
    let var_1 = global2[_wgslsmith_index_u32(7355u, 17u)];
    global4 = array<u32, 4>();
    let var_2 = ~abs(_wgslsmith_dot_vec2_u32(~(~u_input.b.wz), u_input.b.zw));
    return _wgslsmith_mult_u32(abs(1u), var_2);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> Struct_3 {
    var var_0 = arg_1.a.x;
    var var_1 = (i32(-1i) * -_wgslsmith_dot_vec2_i32(~u_input.a.yy, u_input.a.zx)) < ~(-(42533i >> (arg_2 % 32u)));
    let var_2 = Struct_2(max(~abs(vec2<u32>(arg_2, u_input.b.x)), abs(vec2<u32>(~u_input.b.x, _wgslsmith_mod_u32(73290u, arg_2)))), arg_1.b);
    global1 = array<vec3<i32>, 11>();
    let var_3 = ~(u_input.a.x | -2147483647i) > -_wgslsmith_add_i32(u_input.a.x, 0i);
    return Struct_3(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.b.b))))), reverseBits(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.a.x, -1i, u_input.a.x)), u_input.a, select(global1[_wgslsmith_index_u32(func_2(Struct_1(arg_0.b.x, vec4<f32>(arg_0.b.x, 772f, 1534f, -928f)), var_2.b.b.zzx, var_3), 11u)], vec3<i32>(u_input.a.x, u_input.a.x, -64651i), all(vec2<bool>(var_3, var_3))))), var_2.b.b);
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1068f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-199f, arg_2, _wgslsmith_f_op_f32(abs(arg_1.b.x)), _wgslsmith_f_op_f32(-264f - arg_1.b.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1830f, arg_1.d.x, arg_1.d.x, 2334f))))) - _wgslsmith_f_op_vec4_f32(min(arg_1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, 749f, 393f, 349f) * _wgslsmith_div_vec4_f32(vec4<f32>(1313f, arg_2, arg_2, -2264f), arg_1.d))))));
    var var_1 = global2[_wgslsmith_index_u32(30138u >> (~firstTrailingBit(u_input.b.x) % 32u), 17u)];
    let var_2 = select(select(!select(vec4<bool>(var_1.a, false, var_1.a, arg_1.a), !vec4<bool>(false, true, arg_1.a, false), vec4<bool>(true, arg_1.a, var_1.a, false)), !select(vec4<bool>(false, false, var_1.a, true), !vec4<bool>(var_1.a, false, false, false), !vec4<bool>(var_1.a, true, true, false)), vec4<bool>(all(!vec2<bool>(var_1.a, false)), true, true, arg_1.a)), vec4<bool>(false, false, any(vec4<bool>(arg_1.a, arg_1.a, -215f >= arg_2, true)), arg_1.a), !select(vec4<bool>(all(vec4<bool>(false, true, arg_1.a, false)), !arg_1.a, var_1.b.x != -527f, any(vec2<bool>(arg_1.a, false))), select(select(vec4<bool>(var_1.a, true, var_1.a, true), vec4<bool>(true, arg_1.a, arg_1.a, var_1.a), vec4<bool>(false, arg_1.a, true, arg_1.a)), !vec4<bool>(var_1.a, var_1.a, false, false), all(vec2<bool>(true, var_1.a))), select(!vec4<bool>(arg_1.a, true, var_1.a, false), select(vec4<bool>(var_1.a, arg_1.a, var_1.a, true), vec4<bool>(false, true, arg_1.a, true), vec4<bool>(true, var_1.a, arg_1.a, var_1.a)), vec4<bool>(arg_1.a, var_1.a, var_1.a, false))));
    var_1 = func_1(Struct_1(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a, arg_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -291f), -1276f)))), Struct_2(reverseBits(countOneBits(u_input.b.xw)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.d.x)) + _wgslsmith_f_op_f32(step(arg_2, -468f))), vec4<f32>(_wgslsmith_f_op_f32(abs(-841f)), _wgslsmith_f_op_f32(trunc(-2575f)), arg_2, _wgslsmith_f_op_f32(sign(-215f))))), 1u);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b.x, 1416f))) + var_0.b.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, 798f, 866f, -507f) + vec4<f32>(var_0.b.x, arg_1.b.x, 1071f, var_0.a))))));
    return ~(~1u & u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~(0u & u_input.b.x)));
    global2 = array<Struct_3, 17>();
    var var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b.zxy, vec3<u32>(~4294967295u, func_3(0i, func_1(Struct_1(478f, vec4<f32>(-1156f, 547f, 1000f, 1539f)), global0[_wgslsmith_index_u32(1u, 25u)], var_0), 1601f), 3723u)), 1833u, 8620u ^ ~(~(~u_input.b.x)), _wgslsmith_add_u32(1819u, ~_wgslsmith_dot_vec3_u32(u_input.b.zxz, u_input.b.wxy)) & _wgslsmith_div_u32(min(~79398u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(24798u, 4u)], 4u)] << (u_input.b.x % 32u)), 4294967295u));
    let var_2 = !select(vec2<bool>(true, any(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(true, true, true))), true), true);
    global2 = array<Struct_3, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2405f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-743f)) * -755f)))), 1i, vec4<u32>(global4[_wgslsmith_index_u32(20430u, 4u)], global4[_wgslsmith_index_u32(min(~select(4294967295u, global4[_wgslsmith_index_u32(1u, 4u)], var_2.x), ~(u_input.b.x | 26759u)), 4u)], 54165u, 4294967295u), vec2<u32>(global4[_wgslsmith_index_u32(~var_1.x, 4u)], global4[_wgslsmith_index_u32(4294967295u, 4u)]), min(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x ^ u_input.b.x, ~32305u, ~var_1.x), vec3<u32>(35412u, var_0, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(8041u, 4u)] << (var_0 % 32u), 4u)])), var_1.wxx));
}

