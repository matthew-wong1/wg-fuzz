struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<i32>(-1i, 2691i), vec4<f32>(-213f, 711f, -591f, 719f), -9828i), Struct_1(vec2<i32>(1145i, -54086i), vec4<f32>(538f, 304f, -665f, -2600f), -1i), Struct_1(vec2<i32>(2147483647i, 26427i), vec4<f32>(-255f, 529f, 1243f, -1077f), -59496i), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<f32>(-126f, 866f, -491f, 1000f), 2147483647i), Struct_1(vec2<i32>(71377i, 1i), vec4<f32>(-574f, -1000f, 962f, -207f), 2147483647i), Struct_1(vec2<i32>(-13145i, i32(-2147483648)), vec4<f32>(217f, 493f, -258f, -280f), -22884i), Struct_1(vec2<i32>(2147483647i, -52619i), vec4<f32>(2918f, -1409f, -2288f, -436f), -26329i), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<f32>(-242f, -1000f, -520f, 1140f), i32(-2147483648)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec4<f32>(875f, -682f, 1734f, -1712f), -19050i), Struct_1(vec2<i32>(-1i, 1078i), vec4<f32>(-651f, -1457f, -2195f, 1000f), 2147483647i), Struct_1(vec2<i32>(i32(-2147483648), -39738i), vec4<f32>(-1912f, -988f, 146f, 1504f), 15133i), Struct_1(vec2<i32>(i32(-2147483648), 3133i), vec4<f32>(393f, 124f, 192f, -137f), 1i), Struct_1(vec2<i32>(-17650i, -3982i), vec4<f32>(812f, -752f, 580f, 2706f), -22830i), Struct_1(vec2<i32>(1i, 15010i), vec4<f32>(-1758f, -633f, -983f, 346f), -7018i), Struct_1(vec2<i32>(i32(-2147483648), -34369i), vec4<f32>(-1239f, -310f, 1183f, -182f), 2147483647i), Struct_1(vec2<i32>(2147483647i, 0i), vec4<f32>(434f, -524f, 168f, -1748f), 20405i), Struct_1(vec2<i32>(-25127i, -61325i), vec4<f32>(149f, -521f, -413f, 377f), -4048i), Struct_1(vec2<i32>(2147483647i, -22075i), vec4<f32>(360f, 169f, -1011f, -569f), -56791i), Struct_1(vec2<i32>(1i, 0i), vec4<f32>(203f, -1000f, -1898f, -593f), 21535i), Struct_1(vec2<i32>(1i, 2888i), vec4<f32>(1000f, -2142f, 1000f, -128f), -12692i), Struct_1(vec2<i32>(-1i, 1i), vec4<f32>(-1294f, -1174f, -1113f, 807f), -28599i), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec4<f32>(718f, -579f, -138f, 788f), 5444i), Struct_1(vec2<i32>(-1i, -24128i), vec4<f32>(900f, -2642f, -1137f, -389f), -5779i), Struct_1(vec2<i32>(1i, 16308i), vec4<f32>(-890f, -674f, -238f, -1751f), 2147483647i), Struct_1(vec2<i32>(-1i, 0i), vec4<f32>(1504f, -1971f, 440f, -853f), -11686i), Struct_1(vec2<i32>(-1i, -1i), vec4<f32>(-245f, -1968f, 855f, -746f), 2147483647i), Struct_1(vec2<i32>(2925i, -4964i), vec4<f32>(149f, -129f, -1245f, 314f), 2147483647i), Struct_1(vec2<i32>(1i, -42857i), vec4<f32>(502f, -931f, 413f, 338f), -19832i), Struct_1(vec2<i32>(0i, -15443i), vec4<f32>(665f, -798f, 886f, -2576f), -1i), Struct_1(vec2<i32>(47257i, i32(-2147483648)), vec4<f32>(1662f, -460f, -263f, -251f), 20332i));

var<private> global1: array<bool, 25> = array<bool, 25>(false, false, true, true, false, true, true, false, true, true, false, true, true, true, false, true, true, true, false, true, true, false, true, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    global0 = array<Struct_1, 30>();
    let var_0 = Struct_4(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.b, u_input.b >> (50280u % 32u)), u_input.a, u_input.b, countOneBits(u_input.a)), vec4<u32>(firstTrailingBit(select(u_input.a, 92543u, global1[_wgslsmith_index_u32(u_input.a, 25u)])), u_input.a, u_input.a, 18481u)), Struct_1(_wgslsmith_div_vec2_i32(abs(max(vec2<i32>(-1i, 2147483647i), vec2<i32>(-2147483647i, 2147483647i))), ~firstTrailingBit(vec2<i32>(0i, -2147483647i))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(837f - -371f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f)), 783f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1042f - 190f))), _wgslsmith_dot_vec4_i32(min(vec4<i32>(-2147483647i, -1i, 20143i, -37544i), vec4<i32>(0i, -19348i, 2147483647i, 2147483647i)), ~(~vec4<i32>(2147483647i, 59817i, -2147483647i, -1i)))));
    var var_1 = 0u;
    global0 = array<Struct_1, 30>();
    let var_2 = var_0.b;
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    global0 = array<Struct_1, 30>();
    let var_0 = Struct_2(true, ~min(_wgslsmith_add_u32(u_input.a, u_input.a), ~u_input.b) >> (~_wgslsmith_add_u32(1u, arg_2.x) % 32u), !vec3<bool>(true, select(global1[_wgslsmith_index_u32(u_input.b, 25u)], global1[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(17554u, 25u)]) | func_3(), global1[_wgslsmith_index_u32(select(~1u, 21879u, true), 25u)]), Struct_1(abs(vec2<i32>(arg_1.a.x, arg_1.a.x) | vec2<i32>(4630i, -7085i)), arg_1.b, arg_1.c));
    var var_1 = -_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-65556i, arg_1.c, ~(-50752i), 4369i), -abs(vec4<i32>(var_0.d.a.x, 2147483647i, arg_1.c, 32168i))), vec4<i32>(1i, ~(~arg_1.a.x), var_0.d.c, countOneBits(arg_1.a.x) >> (_wgslsmith_sub_u32(1u, 0u) % 32u)));
    var var_2 = vec2<u32>(~(~0u), 1u);
    let var_3 = true;
    return reverseBits(arg_2.x);
}

fn func_1() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2333f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-199f * -953f)))));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(401f, _wgslsmith_f_op_f32(f32(-1f) * -913f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1123f)), -437f))))));
    let var_1 = Struct_4(vec4<u32>(~(~u_input.b), func_2(vec2<bool>(true, true), Struct_1(vec2<i32>(-16142i, -34563i), vec4<f32>(794f, -569f, 971f, 210f), 0i), vec4<u32>(60295u, 4294967295u, u_input.a, 1u)), ~u_input.a, 77760u) | (firstTrailingBit(countOneBits(vec4<u32>(u_input.b, 0u, 0u, 79999u))) & ~min(vec4<u32>(u_input.a, 57590u, 4294967295u, u_input.a), vec4<u32>(4294967295u, u_input.b, 4294967295u, 23325u))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 104565u), 30u)]);
    var var_2 = !select(vec3<bool>(!all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 25u)], false, false, global1[_wgslsmith_index_u32(var_1.a.x, 25u)])), !(!global1[_wgslsmith_index_u32(u_input.a, 25u)]), global1[_wgslsmith_index_u32(min(~var_1.a.x, abs(var_1.a.x)), 25u)]), !vec3<bool>(all(vec4<bool>(true, global1[_wgslsmith_index_u32(var_1.a.x, 25u)], true, global1[_wgslsmith_index_u32(var_1.a.x, 25u)])), true, false), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))));
    var var_3 = Struct_3(var_1.b.b.wwz);
    return ~(~var_1.a.ywy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 11317i;
    let var_1 = firstLeadingBit(abs(func_1()));
    var_0 = min(-22383i, _wgslsmith_div_i32(i32(-1i) * -38290i, -firstTrailingBit(-2147483647i)) << (101529u % 32u));
    global0 = array<Struct_1, 30>();
    var var_2 = false;
    var var_3 = -269f;
    var_2 = global1[_wgslsmith_index_u32(var_1.x, 25u)];
    let var_4 = Struct_2(all(vec2<bool>(!(!global1[_wgslsmith_index_u32(u_input.a, 25u)]), 115811u != _wgslsmith_mult_u32(var_1.x, 33361u))), ~var_1.x, vec3<bool>(~u_input.a > u_input.b, ~_wgslsmith_div_u32(4294967295u, var_1.x) <= 3533u, true), global0[_wgslsmith_index_u32(~reverseBits(3336u), 30u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec3<u32>(4294967295u, 1u, 1u)));
}

