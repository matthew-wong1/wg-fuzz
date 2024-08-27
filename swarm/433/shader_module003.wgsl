struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(594f, -1000f, 2037f, -367f), vec4<f32>(229f, -450f, 1064f, 1541f), vec4<f32>(577f, 172f, -1696f, 355f), vec4<f32>(-263f, -453f, 1819f, 1420f), vec4<f32>(-1272f, 476f, -930f, 923f), vec4<f32>(751f, -593f, -750f, 816f), vec4<f32>(1298f, 2772f, 1646f, -776f), vec4<f32>(1000f, -2154f, 631f, 801f), vec4<f32>(-212f, 504f, -1550f, 1224f));

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<f32>(-771f, -462f, 2356f, 1573f), vec4<bool>(false, true, true, false), 1u, vec4<i32>(1i, 39564i, 2147483647i, i32(-2147483648))), Struct_1(vec4<f32>(-627f, -335f, 1799f, -1194f), vec4<bool>(true, false, false, false), 92979u, vec4<i32>(-22566i, i32(-2147483648), i32(-2147483648), -3401i)), Struct_1(vec4<f32>(-553f, -774f, -1000f, 915f), vec4<bool>(false, true, true, false), 19761u, vec4<i32>(i32(-2147483648), -24314i, 3855i, -1i)), Struct_1(vec4<f32>(324f, 313f, -1000f, 1000f), vec4<bool>(false, false, false, false), 93527u, vec4<i32>(8716i, -15846i, 2147483647i, 1i)), Struct_1(vec4<f32>(-485f, -126f, 198f, -1154f), vec4<bool>(true, false, true, true), 0u, vec4<i32>(1i, 39975i, -31901i, i32(-2147483648))), Struct_1(vec4<f32>(242f, -1513f, 586f, 598f), vec4<bool>(false, true, true, false), 4294967295u, vec4<i32>(-11250i, i32(-2147483648), i32(-2147483648), -40777i)), Struct_1(vec4<f32>(-471f, -1173f, -684f, -521f), vec4<bool>(false, true, false, false), 29778u, vec4<i32>(2147483647i, 1i, 62801i, 18887i)), Struct_1(vec4<f32>(122f, -290f, 548f, -221f), vec4<bool>(false, false, false, false), 4294967295u, vec4<i32>(-1i, -1i, 24367i, -1i)), Struct_1(vec4<f32>(494f, 206f, -269f, 355f), vec4<bool>(true, true, false, true), 9209u, vec4<i32>(815i, -79492i, 1i, -10353i)), Struct_1(vec4<f32>(3425f, -443f, -384f, 418f), vec4<bool>(true, true, true, false), 64383u, vec4<i32>(3552i, 1i, -1i, i32(-2147483648))), Struct_1(vec4<f32>(1082f, 386f, -597f, -229f), vec4<bool>(true, true, true, false), 1u, vec4<i32>(23889i, i32(-2147483648), -3464i, -43112i)), Struct_1(vec4<f32>(890f, -1894f, 291f, 1000f), vec4<bool>(true, false, true, true), 49462u, vec4<i32>(-45560i, 2147483647i, 26302i, 46691i)), Struct_1(vec4<f32>(454f, 119f, -438f, 1000f), vec4<bool>(false, false, true, true), 1u, vec4<i32>(25218i, 1i, i32(-2147483648), 7418i)), Struct_1(vec4<f32>(1747f, -224f, 951f, 820f), vec4<bool>(true, true, true, true), 32315u, vec4<i32>(36455i, 1i, 19532i, 0i)), Struct_1(vec4<f32>(-2038f, 657f, -590f, 200f), vec4<bool>(true, false, true, true), 0u, vec4<i32>(2147483647i, 9420i, i32(-2147483648), 1i)), Struct_1(vec4<f32>(-105f, -1323f, -652f, 796f), vec4<bool>(true, false, true, false), 0u, vec4<i32>(14304i, 0i, 15459i, 22608i)), Struct_1(vec4<f32>(959f, -1104f, -1294f, 1764f), vec4<bool>(true, true, false, false), 4294967295u, vec4<i32>(-32309i, 30071i, -18053i, 2147483647i)), Struct_1(vec4<f32>(244f, 502f, 333f, 1074f), vec4<bool>(true, true, true, false), 4294967295u, vec4<i32>(i32(-2147483648), -22092i, -44371i, -97667i)), Struct_1(vec4<f32>(733f, 347f, 408f, 120f), vec4<bool>(true, false, true, true), 41413u, vec4<i32>(-35680i, -14398i, 19070i, -3321i)), Struct_1(vec4<f32>(-359f, -1000f, 1000f, 1080f), vec4<bool>(false, true, true, true), 30706u, vec4<i32>(-1i, 5631i, 1i, 3792i)), Struct_1(vec4<f32>(143f, 646f, -203f, -679f), vec4<bool>(false, false, false, true), 0u, vec4<i32>(2147483647i, -1i, -38598i, -29883i)), Struct_1(vec4<f32>(363f, -701f, -830f, 155f), vec4<bool>(false, false, false, false), 27108u, vec4<i32>(23340i, -1i, 6849i, -40024i)), Struct_1(vec4<f32>(288f, -1000f, 1000f, -2498f), vec4<bool>(true, true, true, false), 2322u, vec4<i32>(0i, 29696i, -1i, 0i)));

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<f32>(1531f, 585f, -1533f, -211f), vec4<bool>(false, true, true, false), 30395u, vec4<i32>(-1i, -1i, 0i, 1i)), Struct_1(vec4<f32>(1000f, -1216f, -1000f, -1256f), vec4<bool>(true, true, false, false), 4294967295u, vec4<i32>(-167i, -7809i, i32(-2147483648), 19072i)), Struct_1(vec4<f32>(272f, -453f, 933f, -1014f), vec4<bool>(true, false, true, false), 4294967295u, vec4<i32>(51663i, 2147483647i, 0i, -19369i)), Struct_1(vec4<f32>(-758f, -1714f, 2059f, -281f), vec4<bool>(false, true, false, false), 4294967295u, vec4<i32>(i32(-2147483648), -30987i, 2147483647i, i32(-2147483648))), Struct_1(vec4<f32>(-1121f, -489f, 553f, 121f), vec4<bool>(false, true, true, false), 25740u, vec4<i32>(0i, -29692i, -1i, i32(-2147483648))), Struct_1(vec4<f32>(-1110f, -195f, -1023f, 1000f), vec4<bool>(false, true, true, true), 17780u, vec4<i32>(1i, -37991i, 0i, 2147483647i)), Struct_1(vec4<f32>(166f, 1000f, 1243f, 576f), vec4<bool>(false, true, false, false), 4294967295u, vec4<i32>(32562i, -32429i, 3505i, 1i)), Struct_1(vec4<f32>(1507f, 1000f, 1830f, -2026f), vec4<bool>(false, false, true, true), 57092u, vec4<i32>(i32(-2147483648), 13840i, -53375i, -4040i)), Struct_1(vec4<f32>(-1000f, -1000f, 1631f, -193f), vec4<bool>(true, false, true, false), 0u, vec4<i32>(-25205i, -1i, 2147483647i, -1i)), Struct_1(vec4<f32>(-1518f, -1321f, -429f, -1000f), vec4<bool>(false, true, false, true), 144865u, vec4<i32>(16133i, 1i, i32(-2147483648), 2147483647i)), Struct_1(vec4<f32>(1293f, -1171f, 656f, 1839f), vec4<bool>(false, true, false, true), 0u, vec4<i32>(-31297i, 1i, 1i, 2147483647i)), Struct_1(vec4<f32>(1000f, -2490f, 1000f, 539f), vec4<bool>(true, true, false, false), 1u, vec4<i32>(-10919i, -8619i, -36385i, 12870i)), Struct_1(vec4<f32>(-921f, -2045f, 1000f, -1950f), vec4<bool>(true, true, true, true), 10912u, vec4<i32>(i32(-2147483648), 0i, 53320i, 26735i)), Struct_1(vec4<f32>(435f, -1102f, -1137f, -278f), vec4<bool>(false, false, true, false), 4294967295u, vec4<i32>(0i, 2147483647i, -21637i, 1i)), Struct_1(vec4<f32>(-942f, -938f, 1063f, 1000f), vec4<bool>(false, true, false, false), 4294967295u, vec4<i32>(-4443i, 2147483647i, 2147483647i, -59505i)), Struct_1(vec4<f32>(1000f, -229f, 1000f, -836f), vec4<bool>(false, false, true, true), 135067u, vec4<i32>(2147483647i, -1i, -1i, 1i)), Struct_1(vec4<f32>(-1734f, -1695f, 610f, -1000f), vec4<bool>(true, false, true, true), 4294967295u, vec4<i32>(-10508i, -20025i, 16259i, 13297i)), Struct_1(vec4<f32>(-178f, 769f, 988f, 2896f), vec4<bool>(false, true, true, false), 1u, vec4<i32>(8432i, 22509i, 54115i, 1i)), Struct_1(vec4<f32>(670f, -2858f, 2150f, 462f), vec4<bool>(false, true, false, false), 0u, vec4<i32>(0i, 4250i, 46411i, -1220i)), Struct_1(vec4<f32>(475f, -751f, -1000f, -268f), vec4<bool>(true, true, true, false), 1u, vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 2147483647i)), Struct_1(vec4<f32>(904f, 505f, -160f, -962f), vec4<bool>(false, false, true, true), 1u, vec4<i32>(i32(-2147483648), -43898i, -5392i, i32(-2147483648))), Struct_1(vec4<f32>(756f, 398f, -983f, -174f), vec4<bool>(false, true, false, true), 29274u, vec4<i32>(-85348i, 0i, -9860i, 2147483647i)), Struct_1(vec4<f32>(-884f, -591f, -1250f, 190f), vec4<bool>(true, true, false, true), 4294967295u, vec4<i32>(-9210i, 120i, -5375i, 0i)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = func_3();
    let var_1 = arg_2.b.x;
    var var_2 = arg_1;
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    return -327f;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> Struct_1 {
    global0 = array<vec4<f32>, 9>();
    var var_0 = arg_1;
    let var_1 = Struct_1(vec4<f32>(arg_1, _wgslsmith_f_op_f32(abs(1856f)), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(arg_0.c, 23u)], Struct_1(vec4<f32>(arg_1, arg_1, arg_1, arg_0.a.x), arg_0.b, 4294967295u, vec4<i32>(arg_0.d.x, arg_0.d.x, 1i, 17645i)), 2147483647i)) * _wgslsmith_f_op_f32(-arg_0.a.x)))), select(!vec4<bool>(true, arg_0.b.x, !arg_0.b.x, !arg_0.b.x), arg_0.b, vec4<bool>(select(true, any(arg_0.b), false), ~u_input.b.x != ~(-2147483647i), false, all(arg_0.b))), arg_0.c, vec4<i32>(firstLeadingBit(38504i), reverseBits(-1i), u_input.b.x, _wgslsmith_dot_vec4_i32(arg_0.d, ~arg_0.d) >> (1u % 32u)));
    var_0 = 739f;
    let var_2 = !(var_1.d.x >= countOneBits(~(~u_input.b.x)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 23>();
    global2 = array<Struct_1, 23>();
    let var_0 = vec4<i32>(~2147483647i, 2147483647i, 1i, ~2147483647i);
    let var_1 = func_1(global1[_wgslsmith_index_u32(12291u, 23u)], -969f, false);
    let var_2 = var_1.b.xw;
    var var_3 = firstLeadingBit(~u_input.a);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1165f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - 3339f) * _wgslsmith_f_op_f32(step(-2199f, 2008f)))))), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.a.x)), _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x)))), var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-399f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a.x - -1866f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(744f, _wgslsmith_f_op_f32(-var_4.x), var_1.a.x <= -1306f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(258f)) - var_1.a.x)))), ~_wgslsmith_div_u32(12461u, ~1u), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(2222u, u_input.a, 1u), ~vec3<u32>(42940u, u_input.a, u_input.a)), var_1.c, _wgslsmith_mult_u32(var_1.c, ~32327u)) | vec3<u32>(37879u, u_input.a, 21486u), func_1(func_1(func_1(func_1(Struct_1(vec4<f32>(var_4.x, -180f, var_4.x, var_1.a.x), vec4<bool>(false, var_1.b.x, var_2.x, var_2.x), u_input.a, var_1.d), -1300f, var_1.b.x), _wgslsmith_f_op_f32(-1049f * -1078f), var_0.x >= -35269i), 2314f, true), _wgslsmith_f_op_f32(995f + -1187f), var_1.b.x).d, -1i);
}

