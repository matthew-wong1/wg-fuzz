struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<u32>(36221u, 1u), vec2<f32>(1472f, -425f), vec3<i32>(-28981i, -22984i, i32(-2147483648)), vec3<f32>(1000f, -501f, -357f), 747f), Struct_1(vec2<u32>(0u, 80722u), vec2<f32>(-2399f, 1004f), vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec3<f32>(1148f, 747f, 1049f), -703f), Struct_1(vec2<u32>(0u, 76897u), vec2<f32>(-922f, 1238f), vec3<i32>(-1i, 2147483647i, -39355i), vec3<f32>(-487f, 1969f, -1169f), 1612f), Struct_1(vec2<u32>(1u, 80935u), vec2<f32>(1431f, -1081f), vec3<i32>(1i, 13683i, 2147483647i), vec3<f32>(496f, 1884f, 126f), -793f), Struct_1(vec2<u32>(34546u, 0u), vec2<f32>(802f, -1044f), vec3<i32>(0i, 24218i, -18220i), vec3<f32>(913f, 2993f, -1151f), 1104f), Struct_1(vec2<u32>(19502u, 0u), vec2<f32>(-1004f, -1633f), vec3<i32>(-47034i, -24963i, 1i), vec3<f32>(171f, -1394f, -212f), -1765f), Struct_1(vec2<u32>(422u, 1u), vec2<f32>(572f, 521f), vec3<i32>(13529i, 0i, i32(-2147483648)), vec3<f32>(112f, -587f, 755f), -1174f), Struct_1(vec2<u32>(4294967295u, 113214u), vec2<f32>(-230f, -1864f), vec3<i32>(22658i, -1i, 696i), vec3<f32>(-1000f, -1355f, 1540f), -447f), Struct_1(vec2<u32>(72416u, 67007u), vec2<f32>(377f, -100f), vec3<i32>(-1i, 1i, 2147483647i), vec3<f32>(-144f, -239f, -1522f), 1000f), Struct_1(vec2<u32>(73696u, 4294967295u), vec2<f32>(-135f, 263f), vec3<i32>(i32(-2147483648), 13288i, 11768i), vec3<f32>(-1000f, -387f, 443f), -1488f), Struct_1(vec2<u32>(0u, 33142u), vec2<f32>(-1432f, -222f), vec3<i32>(-66121i, 1i, 9177i), vec3<f32>(-846f, -184f, -654f), 212f), Struct_1(vec2<u32>(1u, 1u), vec2<f32>(-1179f, 1092f), vec3<i32>(0i, i32(-2147483648), 27754i), vec3<f32>(346f, 304f, 732f), -326f), Struct_1(vec2<u32>(32885u, 48915u), vec2<f32>(-1174f, 1247f), vec3<i32>(-9524i, 0i, -1i), vec3<f32>(-491f, 1040f, -580f), 1000f), Struct_1(vec2<u32>(23417u, 4294967295u), vec2<f32>(136f, 260f), vec3<i32>(-8195i, 1i, -31846i), vec3<f32>(-1332f, 1191f, -1005f), -342f), Struct_1(vec2<u32>(1u, 0u), vec2<f32>(1899f, -1078f), vec3<i32>(4743i, 2147483647i, -1i), vec3<f32>(-426f, 470f, -568f), -907f), Struct_1(vec2<u32>(4294967295u, 22344u), vec2<f32>(1000f, 966f), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<f32>(459f, 732f, -653f), -2215f), Struct_1(vec2<u32>(22502u, 0u), vec2<f32>(-1038f, 1390f), vec3<i32>(-20461i, -6818i, 2147483647i), vec3<f32>(-401f, 1000f, -574f), 1049f), Struct_1(vec2<u32>(14173u, 40111u), vec2<f32>(-590f, 102f), vec3<i32>(-39731i, -1i, 31592i), vec3<f32>(1099f, -490f, -1000f), 569f), Struct_1(vec2<u32>(4294967295u, 18483u), vec2<f32>(-547f, 417f), vec3<i32>(-53188i, -12931i, -31104i), vec3<f32>(-881f, 2258f, -522f), 161f), Struct_1(vec2<u32>(19315u, 13631u), vec2<f32>(105f, -281f), vec3<i32>(1i, i32(-2147483648), 41325i), vec3<f32>(1000f, 964f, 636f), 198f), Struct_1(vec2<u32>(5075u, 27184u), vec2<f32>(451f, -1933f), vec3<i32>(2026i, -5828i, 11645i), vec3<f32>(-1000f, 819f, 744f), 717f), Struct_1(vec2<u32>(0u, 58463u), vec2<f32>(1000f, -192f), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<f32>(1632f, -1051f, 404f), 645f), Struct_1(vec2<u32>(4294967295u, 6657u), vec2<f32>(-575f, -706f), vec3<i32>(-1i, 2129i, 2147483647i), vec3<f32>(783f, 1000f, -101f), 885f), Struct_1(vec2<u32>(0u, 68689u), vec2<f32>(1993f, -1000f), vec3<i32>(0i, 1097i, i32(-2147483648)), vec3<f32>(843f, 1114f, 1012f), 454f), Struct_1(vec2<u32>(57813u, 38094u), vec2<f32>(226f, 492f), vec3<i32>(-1i, 1i, 0i), vec3<f32>(1000f, 1000f, 951f), -332f));

var<private> global1: Struct_1 = Struct_1(vec2<u32>(48535u, 0u), vec2<f32>(582f, -1830f), vec3<i32>(1i, 2147483647i, 0i), vec3<f32>(1309f, 491f, 1024f), 729f);

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<u32>(31535u, 8895u), vec2<f32>(-1875f, -989f), vec3<i32>(-1i, -55696i, -14462i), vec3<f32>(-1397f, -940f, -202f), 950f), Struct_1(vec2<u32>(32179u, 0u), vec2<f32>(-1547f, -2103f), vec3<i32>(-67630i, i32(-2147483648), -1i), vec3<f32>(610f, 1191f, -466f), -209f), Struct_1(vec2<u32>(34999u, 30787u), vec2<f32>(742f, 270f), vec3<i32>(-48288i, -23699i, 10916i), vec3<f32>(-1075f, -502f, -842f), -1778f), Struct_1(vec2<u32>(1u, 4294967295u), vec2<f32>(439f, 456f), vec3<i32>(-26915i, 63567i, -62232i), vec3<f32>(-681f, 580f, -630f), 1342f), Struct_1(vec2<u32>(1u, 76168u), vec2<f32>(1000f, -129f), vec3<i32>(8026i, 2147483647i, 1i), vec3<f32>(-971f, 1109f, 1000f), 322f), Struct_1(vec2<u32>(78633u, 2164u), vec2<f32>(-597f, -949f), vec3<i32>(-22440i, 0i, 64234i), vec3<f32>(-1514f, 457f, -954f), -902f), Struct_1(vec2<u32>(4294967295u, 3096u), vec2<f32>(634f, 1612f), vec3<i32>(0i, 0i, 0i), vec3<f32>(-645f, -706f, -466f), -530f), Struct_1(vec2<u32>(105589u, 4294967295u), vec2<f32>(535f, -1000f), vec3<i32>(-23645i, -19743i, 36086i), vec3<f32>(528f, -139f, 275f), -1695f), Struct_1(vec2<u32>(4294967295u, 0u), vec2<f32>(484f, 498f), vec3<i32>(0i, -23287i, 2147483647i), vec3<f32>(-276f, 532f, 1000f), -676f), Struct_1(vec2<u32>(45500u, 0u), vec2<f32>(-357f, 433f), vec3<i32>(68386i, -58941i, 6365i), vec3<f32>(1045f, -217f, -1246f), -257f), Struct_1(vec2<u32>(0u, 32021u), vec2<f32>(-605f, 682f), vec3<i32>(2147483647i, -14291i, i32(-2147483648)), vec3<f32>(-608f, -154f, -331f), -1000f), Struct_1(vec2<u32>(0u, 13977u), vec2<f32>(-102f, 537f), vec3<i32>(1i, 15624i, -51183i), vec3<f32>(827f, -1381f, -217f), -131f), Struct_1(vec2<u32>(7031u, 59749u), vec2<f32>(-604f, 1326f), vec3<i32>(-56605i, -1i, -65434i), vec3<f32>(542f, -997f, -655f), 471f), Struct_1(vec2<u32>(0u, 4294967295u), vec2<f32>(-295f, -862f), vec3<i32>(-2078i, -10144i, 2147483647i), vec3<f32>(-295f, -301f, 1000f), 428f), Struct_1(vec2<u32>(1u, 4294967295u), vec2<f32>(-665f, 1038f), vec3<i32>(-6919i, i32(-2147483648), 0i), vec3<f32>(886f, 1000f, -901f), -773f), Struct_1(vec2<u32>(0u, 7304u), vec2<f32>(1000f, -389f), vec3<i32>(-46524i, 40266i, 1i), vec3<f32>(-1756f, -1087f, -1669f), 1228f), Struct_1(vec2<u32>(0u, 51515u), vec2<f32>(687f, -358f), vec3<i32>(-21973i, 59289i, 1i), vec3<f32>(1000f, -1490f, -113f), 332f), Struct_1(vec2<u32>(1764u, 1895u), vec2<f32>(-1819f, 831f), vec3<i32>(1i, 36498i, 1230i), vec3<f32>(1542f, -485f, -1234f), 592f), Struct_1(vec2<u32>(0u, 45908u), vec2<f32>(1312f, 695f), vec3<i32>(i32(-2147483648), 11443i, 37948i), vec3<f32>(-868f, -151f, -242f), -1191f), Struct_1(vec2<u32>(22835u, 18964u), vec2<f32>(1603f, 1090f), vec3<i32>(-31528i, 35691i, 33479i), vec3<f32>(-146f, -1484f, 988f), -346f), Struct_1(vec2<u32>(12372u, 4294967295u), vec2<f32>(750f, -260f), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<f32>(-837f, 1481f, 1640f), -739f), Struct_1(vec2<u32>(1u, 0u), vec2<f32>(-955f, 324f), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<f32>(855f, -564f, 1103f), -1000f), Struct_1(vec2<u32>(4294967295u, 20054u), vec2<f32>(-1000f, -223f), vec3<i32>(1i, -1i, -3081i), vec3<f32>(1000f, -417f, -828f), 1688f), Struct_1(vec2<u32>(0u, 39474u), vec2<f32>(676f, -1192f), vec3<i32>(1i, i32(-2147483648), -49162i), vec3<f32>(-531f, 173f, -506f), 1362f));

var<private> global4: array<Struct_1, 32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> bool {
    return global2.x;
}

fn func_2() -> Struct_1 {
    var var_0 = select(global1.a, vec2<u32>(abs(global1.a.x), ~4294967295u), func_3(4294967295u));
    var var_1 = global3[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(1u, 4294967295u)), 24u)];
    var var_2 = u_input.a;
    let var_3 = !(!(!select(!vec2<bool>(global2.x, global2.x), !global2.yy, global2.xx)));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.d - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(-347f * -744f), 1864f))));
    return global3[_wgslsmith_index_u32(var_0.x, 24u)];
}

fn func_1() -> StorageBuffer {
    global3 = array<Struct_1, 24>();
    global4 = array<Struct_1, 32>();
    var var_0 = global2.x;
    let var_1 = func_2();
    var var_2 = select(!vec4<bool>(true, false, true, !(!global2.x)), vec4<bool>(true, !((global2.x && true) || true), _wgslsmith_add_u32(~u_input.e, 4465u) < max(_wgslsmith_mult_u32(0u, var_1.a.x), ~1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1249f) * 571f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.e)))), select(vec4<bool>(global2.x, true, all(vec4<bool>(true, global2.x, global2.x, false)) && true, 782f == var_1.d.x), select(!(!vec4<bool>(global2.x, global2.x, global2.x, true)), select(vec4<bool>(true, global2.x, true, global2.x), !vec4<bool>(true, global2.x, false, global2.x), !vec4<bool>(global2.x, false, global2.x, true)), global2.x), true));
    return StorageBuffer(_wgslsmith_f_op_f32(global1.b.x - -621f), vec3<u32>(abs(firstTrailingBit(global1.a.x)), ~1u, _wgslsmith_mod_u32(u_input.e >> (func_2().a.x % 32u), 35347u)), func_2().d, _wgslsmith_add_u32(var_1.a.x, _wgslsmith_mult_u32(~min(var_1.a.x, u_input.e), 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(~global1.a.x, 0u | global1.a.x, 59311u, reverseBits(4294967295u))), (vec4<u32>(global1.a.x, global1.a.x, 4294967295u, global1.a.x) & (vec4<u32>(global1.a.x, global1.a.x, global1.a.x, u_input.e) & vec4<u32>(46127u, u_input.e, 4294967295u, 4294967295u))) | select(~vec4<u32>(43071u, 4294967295u, 23168u, 30020u), vec4<u32>(u_input.e, u_input.e, global1.a.x, global1.a.x), true)), _wgslsmith_sub_u32(~u_input.e, _wgslsmith_dot_vec2_u32(global1.a, ~vec2<u32>(global1.a.x, global1.a.x))));
    let x = u_input.a;
    s_output = func_1();
}

