struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(false, false, false, true, false, false, false, false, true, true, false, false, true, true, true, false, true, true, true, false, true, true, true, false, false, true, true, true, true, false);

var<private> global1: array<vec4<u32>, 31>;

var<private> global2: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(i32(-2147483648), -5153i), vec2<i32>(-21164i, i32(-2147483648)), vec2<i32>(-1040i, 6488i), vec2<i32>(1i, 28258i), vec2<i32>(-28505i, 0i), vec2<i32>(29490i, -4190i), vec2<i32>(-23406i, -37239i), vec2<i32>(-1i, -30611i), vec2<i32>(16536i, 13188i), vec2<i32>(0i, 75519i), vec2<i32>(2147483647i, -3818i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1i, -1i), vec2<i32>(28190i, 19338i), vec2<i32>(1i, -1i), vec2<i32>(0i, -1i), vec2<i32>(3363i, -5672i), vec2<i32>(-13583i, 22913i), vec2<i32>(-1i, -38630i), vec2<i32>(0i, 81966i));

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<bool>(false, false), vec2<f32>(2403f, 385f), 165f, vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec2<bool>(false, false), vec2<f32>(837f, 802f), -314f, vec2<i32>(53027i, 4157i)), Struct_1(vec2<bool>(true, true), vec2<f32>(300f, 182f), -1389f, vec2<i32>(-7412i, 0i)), Struct_1(vec2<bool>(false, true), vec2<f32>(-942f, 742f), -273f, vec2<i32>(18105i, 39906i)), Struct_1(vec2<bool>(false, false), vec2<f32>(1111f, 286f), 1302f, vec2<i32>(12723i, 2147483647i)), Struct_1(vec2<bool>(true, true), vec2<f32>(926f, -1338f), -532f, vec2<i32>(-9886i, 61123i)), Struct_1(vec2<bool>(true, true), vec2<f32>(730f, 938f), -1000f, vec2<i32>(3708i, -33705i)), Struct_1(vec2<bool>(false, true), vec2<f32>(1379f, 117f), -272f, vec2<i32>(-1i, -4806i)), Struct_1(vec2<bool>(false, false), vec2<f32>(-471f, 833f), -1200f, vec2<i32>(18614i, 1i)), Struct_1(vec2<bool>(false, true), vec2<f32>(835f, -545f), -832f, vec2<i32>(1i, i32(-2147483648))), Struct_1(vec2<bool>(false, true), vec2<f32>(1000f, -876f), 634f, vec2<i32>(955i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), vec2<f32>(352f, -543f), 452f, vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec2<bool>(false, true), vec2<f32>(-875f, 1054f), 788f, vec2<i32>(51188i, 0i)), Struct_1(vec2<bool>(true, true), vec2<f32>(-1000f, -878f), -740f, vec2<i32>(-3843i, 98273i)), Struct_1(vec2<bool>(false, true), vec2<f32>(-1262f, 167f), 684f, vec2<i32>(1i, -34265i)), Struct_1(vec2<bool>(false, false), vec2<f32>(1226f, -548f), 201f, vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec2<bool>(false, true), vec2<f32>(359f, -1606f), -1000f, vec2<i32>(59393i, -23100i)), Struct_1(vec2<bool>(true, false), vec2<f32>(584f, -259f), 1759f, vec2<i32>(0i, -4741i)), Struct_1(vec2<bool>(true, true), vec2<f32>(676f, 133f), -244f, vec2<i32>(0i, 23401i)), Struct_1(vec2<bool>(false, false), vec2<f32>(107f, 1339f), 1564f, vec2<i32>(-4823i, 11085i)), Struct_1(vec2<bool>(true, false), vec2<f32>(-169f, 772f), -161f, vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec2<bool>(true, true), vec2<f32>(1002f, 748f), 367f, vec2<i32>(7910i, -3666i)), Struct_1(vec2<bool>(true, false), vec2<f32>(-1000f, -1854f), 1000f, vec2<i32>(10378i, -23061i)), Struct_1(vec2<bool>(true, false), vec2<f32>(753f, -397f), 410f, vec2<i32>(1i, i32(-2147483648))));

var<private> global4: array<vec2<u32>, 13>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = arg_0.x;
    var var_1 = arg_2.b.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, arg_0.x, -285f) * vec4<f32>(-112f, arg_0.x, 691f, arg_1.b.x)) - vec4<f32>(arg_0.x, arg_1.c, 1137f, arg_2.b.x)), vec4<f32>(-1095f, arg_1.c, _wgslsmith_f_op_f32(min(-1037f, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -155f)))), vec4<f32>(_wgslsmith_f_op_f32(-224f * _wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-981f + arg_1.c)), arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c, 989f, -1000f, arg_0.x), vec4<f32>(-1575f, var_0, arg_2.c, -426f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1214f, 759f, arg_2.b.x), vec4<f32>(407f, var_0, arg_1.b.x, 634f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-425f, arg_1.c, arg_0.x, 2200f))))), vec4<bool>(true, global0[_wgslsmith_index_u32(28854u, 30u)] & true, arg_1.a.x, arg_1.a.x || arg_1.a.x)));
    var var_3 = arg_1;
    var var_4 = 4294967295u;
    return ~countOneBits(arg_2.d.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(!vec2<bool>(true, any(vec4<bool>(global0[_wgslsmith_index_u32(15802u, 30u)], false, true, global0[_wgslsmith_index_u32(0u, 30u)]))), arg_1.b, _wgslsmith_f_op_f32(sign(arg_1.c)), -vec2<i32>(~arg_0.x ^ func_3(vec3<f32>(-472f, -681f, 2510f), arg_1, arg_1), _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.x, 9809i, u_input.a, -2147483647i), vec4<i32>(arg_1.d.x, arg_1.d.x, arg_0.x, arg_0.x))));
    global1 = array<vec4<u32>, 31>();
    global1 = array<vec4<u32>, 31>();
    var var_1 = arg_1;
    return vec3<bool>(false, !var_1.a.x, !any(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(36283u, 2242u), 30u)], var_1.c != arg_1.c, true, var_1.a.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global2 = array<vec2<i32>, 20>();
    var var_0 = !(!(!vec4<bool>(true, arg_1.a.x, all(vec4<bool>(false, arg_0.x, true, true)), true)));
    global2 = array<vec2<i32>, 20>();
    var var_1 = 731f;
    global1 = array<vec4<u32>, 31>();
    return global3[_wgslsmith_index_u32(1u, 24u)];
}

fn func_1() -> u32 {
    global3 = array<Struct_1, 24>();
    global0 = array<bool, 30>();
    global3 = array<Struct_1, 24>();
    let var_0 = func_4(func_2(~countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, 36224i))), global3[_wgslsmith_index_u32(1u, 24u)]), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(647f, 668f)), vec2<f32>(_wgslsmith_f_op_f32(928f - 1000f), _wgslsmith_f_op_f32(min(1544f, 273f))))), 412f, vec2<i32>(_wgslsmith_div_i32(-u_input.a, u_input.a), u_input.a ^ 32615i)), any(!vec2<bool>(u_input.a == 15408i, select(global0[_wgslsmith_index_u32(1735u, 30u)], false, true))));
    global3 = array<Struct_1, 24>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 996f;
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(0u, ~_wgslsmith_sub_u32(4294967295u, 15524u)) << (1u % 32u), 0u << (~func_1() % 32u));
    var var_2 = !global0[_wgslsmith_index_u32(abs(~(~_wgslsmith_sub_u32(38390u, var_1.x))), 30u)];
    var var_3 = 46283u;
    var var_4 = firstLeadingBit(abs(vec2<i32>(u_input.a, u_input.a) >> (global4[_wgslsmith_index_u32(~(~var_1.x), 13u)] % vec2<u32>(32u))));
    let var_5 = Struct_1(!select(func_4(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(9552u, 30u)], true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(var_1.x, 30u)]), global0[_wgslsmith_index_u32(4294967295u, 30u)]), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 30u)], true), vec2<f32>(var_0, 537f), var_0, global2[_wgslsmith_index_u32(var_1.x, 20u)]), false).a, !vec2<bool>(global0[_wgslsmith_index_u32(69146u, 30u)], true), select(!vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 30u)], global0[_wgslsmith_index_u32(12013u, 30u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(41174u, 30u)], global0[_wgslsmith_index_u32(var_1.x, 30u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 30u)], global0[_wgslsmith_index_u32(var_1.x, 30u)]), global0[_wgslsmith_index_u32(var_1.x, 30u)]), func_2(vec4<i32>(-32945i, 1i, -2147483647i, u_input.a), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 30u)], false), vec2<f32>(722f, var_0), var_0, vec2<i32>(-6507i, -1i))).yx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, 181f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1761f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1188f, -1177f))))), 542f, reverseBits(global2[_wgslsmith_index_u32(~abs(_wgslsmith_add_u32(4294967295u, var_1.x)), 20u)]));
    global1 = array<vec4<u32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

