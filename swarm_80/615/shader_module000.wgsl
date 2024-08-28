struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
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

var<private> global0: array<i32, 17> = array<i32, 17>(67187i, 1i, 28980i, 0i, 0i, 1488i, 0i, -1i, 6325i, -8222i, 22641i, 40707i, 0i, 1i, 0i, 2147483647i, -55336i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = arg_0;
    global0 = array<i32, 17>();
    let var_1 = !vec2<bool>(any(arg_3.e.zy), true);
    var var_2 = _wgslsmith_dot_vec2_u32(arg_2.a.b.wz, arg_0.e.b.yz) & arg_0.a.b.x;
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c.x * arg_1.e.a.x) + _wgslsmith_f_op_f32(select(-176f, 1000f, false))), 1121f, _wgslsmith_f_op_f32(arg_0.e.c.x + -817f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.a.x * var_0.e.c.x), arg_1.e.c.x, var_0.c))));
    return arg_1.d.c.x;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(819f)), 1907f, _wgslsmith_f_op_f32(-1448f * -522f), _wgslsmith_f_op_f32(sign(-737f))))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-405f)))))), vec4<u32>(0u, max(~(~0u), arg_0.x), 20988u, max(_wgslsmith_mult_u32(~arg_0.x, countOneBits(arg_0.x)), ~(~arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0)) + _wgslsmith_f_op_vec4_f32(-var_0))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + _wgslsmith_f_op_f32(step(368f, -1256f))), 408f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 429f) * var_0.x), var_0.x)), vec3<i32>(70636i, 0i, u_input.c), !vec4<bool>(any(select(vec4<bool>(arg_1.x, true, arg_1.x, true), vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true))), true, (u_input.b | u_input.c) >= max(0i, global0[_wgslsmith_index_u32(29519u, 17u)]), true));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -687f);
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    return arg_0.x;
}

fn func_1(arg_0: bool) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-383f, _wgslsmith_f_op_f32(1000f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(step(961f, 1000f)), _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec3<f32>(-151f, -705f, 794f), vec4<u32>(40699u, 1u, 4294967295u, 12300u), vec4<f32>(502f, -654f, 2070f, -897f), vec3<i32>(u_input.a.x, u_input.c, 73396i), vec4<bool>(arg_0, arg_0, arg_0, false)), arg_0, -887f, Struct_1(vec3<f32>(-556f, -872f, -1074f), vec4<u32>(72636u, 0u, 0u, 0u), vec4<f32>(-169f, 430f, -2575f, -519f), vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(47499u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<bool>(arg_0, false, true, arg_0)), Struct_1(vec3<f32>(-1144f, 1065f, -218f), vec4<u32>(4294967295u, 6327u, 16099u, 1u), vec4<f32>(-448f, -373f, 212f, -580f), vec3<i32>(u_input.a.x, -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<bool>(false, true, arg_0, arg_0))), Struct_2(Struct_1(vec3<f32>(-156f, 140f, 504f), vec4<u32>(6026u, 0u, 7431u, 17241u), vec4<f32>(-378f, 346f, 1016f, -229f), vec3<i32>(u_input.b, -25805i, global0[_wgslsmith_index_u32(20733u, 17u)]), vec4<bool>(true, arg_0, arg_0, arg_0)), false, -1951f, Struct_1(vec3<f32>(128f, -716f, 879f), vec4<u32>(39906u, 73297u, 8086u, 4294967295u), vec4<f32>(901f, 336f, -374f, -842f), u_input.a.xxy, vec4<bool>(arg_0, false, false, false)), Struct_1(vec3<f32>(2438f, 1627f, 2110f), vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec4<f32>(1000f, -253f, 432f, -256f), vec3<i32>(1333i, u_input.a.x, -2520i), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), Struct_2(Struct_1(vec3<f32>(-1706f, 289f, 1049f), vec4<u32>(4294967295u, 0u, 3060u, 5932u), vec4<f32>(454f, -254f, 631f, 653f), vec3<i32>(0i, u_input.c, 1i), vec4<bool>(true, true, arg_0, false)), true, 441f, Struct_1(vec3<f32>(-1845f, -595f, -409f), vec4<u32>(0u, 26269u, 4294967295u, 1u), vec4<f32>(-308f, 934f, 235f, 2101f), u_input.a.yxy, vec4<bool>(arg_0, false, true, arg_0)), Struct_1(vec3<f32>(1000f, 819f, 2705f), vec4<u32>(0u, 6517u, 1u, 1u), vec4<f32>(581f, -572f, -1295f, -2057f), vec3<i32>(57860i, u_input.a.x, u_input.a.x), vec4<bool>(true, arg_0, arg_0, arg_0))), Struct_1(vec3<f32>(-222f, -875f, -349f), vec4<u32>(54793u, 28842u, 0u, 4294967295u), vec4<f32>(1000f, -2646f, 1276f, -697f), vec3<i32>(23305i, global0[_wgslsmith_index_u32(12871u, 17u)], global0[_wgslsmith_index_u32(43462u, 17u)]), vec4<bool>(false, false, arg_0, true))))), vec3<bool>(true, any(vec4<bool>(arg_0, true, true, true)), true))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-627f + 119f), _wgslsmith_f_op_f32(min(-1737f, -721f)), _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec3<f32>(-233f, 1294f, 1635f), vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<f32>(204f, 805f, -247f, 642f), u_input.a.xwx, vec4<bool>(arg_0, true, arg_0, arg_0)), false, -1175f, Struct_1(vec3<f32>(-290f, 167f, -616f), vec4<u32>(52403u, 0u, 12586u, 1829u), vec4<f32>(-1087f, -377f, 1172f, 797f), vec3<i32>(1004i, global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)]), vec4<bool>(arg_0, false, true, arg_0)), Struct_1(vec3<f32>(-1003f, -982f, 809f), vec4<u32>(1u, 1u, 1u, 40151u), vec4<f32>(-811f, -1320f, -325f, -158f), u_input.a.yzw, vec4<bool>(false, false, false, arg_0))), Struct_2(Struct_1(vec3<f32>(-539f, -2031f, 347f), vec4<u32>(0u, 1u, 695u, 11787u), vec4<f32>(-668f, 961f, -210f, 1035f), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(96033u, 17u)], u_input.a.x), vec4<bool>(true, arg_0, arg_0, false)), arg_0, 1000f, Struct_1(vec3<f32>(-2175f, -241f, -679f), vec4<u32>(87515u, 4294967295u, 2485u, 50460u), vec4<f32>(-620f, -736f, 486f, -477f), u_input.a.zzz, vec4<bool>(false, arg_0, true, false)), Struct_1(vec3<f32>(-457f, 308f, -257f), vec4<u32>(45808u, 1u, 0u, 1u), vec4<f32>(-611f, 363f, -131f, -283f), u_input.a.zyy, vec4<bool>(arg_0, false, true, arg_0))), Struct_2(Struct_1(vec3<f32>(1276f, 1300f, -128f), vec4<u32>(0u, 4294967295u, 48635u, 4294967295u), vec4<f32>(1000f, 1142f, -1805f, -400f), u_input.a.yxx, vec4<bool>(true, false, arg_0, arg_0)), arg_0, -633f, Struct_1(vec3<f32>(789f, 388f, -2216f), vec4<u32>(20585u, 0u, 4294967295u, 0u), vec4<f32>(1041f, 1000f, 684f, -718f), u_input.a.zyy, vec4<bool>(true, false, false, arg_0)), Struct_1(vec3<f32>(-205f, 972f, -564f), vec4<u32>(0u, 32756u, 0u, 0u), vec4<f32>(1728f, -1372f, -1084f, -246f), u_input.a.zzx, vec4<bool>(false, false, arg_0, arg_0))), Struct_1(vec3<f32>(-952f, -772f, -1181f), vec4<u32>(4294967295u, 0u, 7608u, 37949u), vec4<f32>(-1650f, -1148f, -994f, 649f), u_input.a.wyz, vec4<bool>(false, true, arg_0, false))))))), vec3<bool>(any(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, true), false)), any(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(false, true, arg_0, arg_0))), arg_0 || !arg_0))), vec4<u32>(1u, 1u, 1u, 1u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -988f) - _wgslsmith_f_op_f32(abs(-1051f)))), _wgslsmith_f_op_f32(-342f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(438f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-900f - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(606f + 392f))), _wgslsmith_f_op_f32(trunc(329f))), -vec3<i32>(global0[_wgslsmith_index_u32(func_3(vec3<u32>(1u, 1u, 1u), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0)), global0[_wgslsmith_index_u32(~0u, 17u)]), 17u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(16700u, 0u, 100343u), min(vec3<u32>(88882u, 47744u, 1u), vec3<u32>(72928u, 43156u, 1u))), 17u)], 0i), vec4<bool>(true, arg_0, !(!arg_0), all(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(arg_0, true)), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), arg_0), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false);
    let var_1 = max(55546u, 0u);
    let var_2 = -1270f;
    var var_3 = vec3<bool>(var_0.e.x, true, any(!select(vec3<bool>(var_0.e.x, false, true), vec3<bool>(false, false, var_0.e.x), true)));
    var var_4 = min(abs(var_0.b.wxw), firstTrailingBit(select(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.x, 28492u, 42872u), vec3<u32>(219u, var_0.b.x, var_0.b.x)) >> ((var_0.b.wzz >> (var_0.b.wwy % vec3<u32>(32u))) % vec3<u32>(32u)), var_0.b.yyy, true)));
    let var_5 = ~(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_1, 17u)], -24276i), vec3<i32>(u_input.c, u_input.c, global0[_wgslsmith_index_u32(4294967295u, 17u)])) << (vec3<u32>(32270u, var_4.x, var_1) % vec3<u32>(32u)), -vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 17u)], 54088i)) << (abs(var_0.b.yyw) % vec3<u32>(32u)));
    var_3 = !vec3<bool>(true, select(var_0.e.x, var_2 < 1f, -var_0.d.x > _wgslsmith_dot_vec4_i32(vec4<i32>(var_5.x, -1i, var_5.x, u_input.b), u_input.a)), all(!select(vec4<bool>(var_0.e.x, true, false, var_3.x), var_0.e, var_0.e)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_add_vec3_u32(countOneBits(var_0.b.zwx), firstLeadingBit(vec3<u32>(1u, var_0.b.x, var_0.b.x)))));
}

