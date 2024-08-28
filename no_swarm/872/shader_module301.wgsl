struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<f32>(-696f, -447f, -212f), false, vec3<i32>(0i, 28952i, -28051i)), Struct_1(vec3<f32>(684f, -311f, -820f), false, vec3<i32>(1i, -24456i, 12125i)), Struct_1(vec3<f32>(-1212f, -3341f, -785f), true, vec3<i32>(i32(-2147483648), 0i, 2147483647i)), Struct_1(vec3<f32>(-1715f, 1000f, -1927f), true, vec3<i32>(36846i, 2147483647i, 25141i)));

var<private> global2: array<bool, 22>;

var<private> global3: array<i32, 15> = array<i32, 15>(-63001i, -26008i, 2147483647i, 1i, -1i, 0i, 1i, 26872i, 2147483647i, 30965i, -30597i, -1i, 45660i, 1i, 26467i);

var<private> global4: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<f32>(721f, 2171f, 160f), true, vec3<i32>(-1i, i32(-2147483648), 17112i)), Struct_1(vec3<f32>(-1482f, -1124f, 1998f), true, vec3<i32>(2147483647i, -209i, 20566i)), Struct_1(vec3<f32>(578f, 1914f, -805f), true, vec3<i32>(2147483647i, -64369i, 0i)), Struct_1(vec3<f32>(-394f, 417f, -1676f), false, vec3<i32>(-6214i, -4933i, 63677i)), Struct_1(vec3<f32>(1003f, -314f, 706f), true, vec3<i32>(-13187i, -30330i, -35633i)), Struct_1(vec3<f32>(259f, -565f, 995f), false, vec3<i32>(i32(-2147483648), 3394i, -2613i)), Struct_1(vec3<f32>(-390f, 1429f, -1018f), false, vec3<i32>(56308i, 1i, 5692i)), Struct_1(vec3<f32>(-526f, -938f, -1581f), true, vec3<i32>(1i, -1i, 2147483647i)), Struct_1(vec3<f32>(712f, 479f, -1107f), true, vec3<i32>(1i, 14956i, 41740i)), Struct_1(vec3<f32>(-330f, -985f, -1534f), false, vec3<i32>(1i, 0i, 1i)), Struct_1(vec3<f32>(315f, -574f, 672f), false, vec3<i32>(0i, 29488i, -1i)), Struct_1(vec3<f32>(-1850f, 640f, -612f), true, vec3<i32>(-10362i, -17853i, 22538i)), Struct_1(vec3<f32>(-1132f, -2101f, 363f), false, vec3<i32>(4750i, 0i, 1i)), Struct_1(vec3<f32>(-1823f, -1878f, 710f), false, vec3<i32>(6567i, 5135i, 12881i)), Struct_1(vec3<f32>(-829f, 1509f, 1000f), true, vec3<i32>(22373i, -12767i, i32(-2147483648))), Struct_1(vec3<f32>(1073f, 400f, 186f), true, vec3<i32>(27898i, -1i, 16450i)), Struct_1(vec3<f32>(-149f, -520f, -1303f), false, vec3<i32>(31924i, -1i, 2147483647i)), Struct_1(vec3<f32>(-1827f, -839f, -1000f), true, vec3<i32>(-1i, 45773i, 31313i)), Struct_1(vec3<f32>(-206f, -1456f, -1338f), true, vec3<i32>(2147483647i, -44795i, i32(-2147483648))), Struct_1(vec3<f32>(-401f, 1249f, -1116f), false, vec3<i32>(-4671i, 27285i, 0i)), Struct_1(vec3<f32>(-210f, 565f, 235f), false, vec3<i32>(-46565i, 26482i, 2147483647i)), Struct_1(vec3<f32>(1641f, 3426f, 761f), true, vec3<i32>(-1i, 16975i, -22684i)), Struct_1(vec3<f32>(-862f, -541f, -541f), false, vec3<i32>(-11161i, i32(-2147483648), -15843i)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn func_3() -> u32 {
    global2 = array<bool, 22>();
    var var_0 = -11012i;
    let var_1 = ~abs(_wgslsmith_sub_vec3_u32(min(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(1u, u_input.a, 58376u), vec3<u32>(u_input.a, 0u, 32041u)), vec3<u32>(u_input.a, 30092u, u_input.a)), ~(~vec3<u32>(4294967295u, u_input.a, u_input.a))));
    global2 = array<bool, 22>();
    var var_2 = global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, var_1.x), 23u)];
    return var_1.x;
}

fn func_2() -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 4u)];
    var var_1 = global4[_wgslsmith_index_u32(func_3(), 23u)];
    global0 = array<i32, 22>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -313f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.x - -1385f))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: vec2<u32>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(countOneBits(8455u | abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_3.x, arg_3.x), vec3<u32>(arg_3.x, u_input.a, 4294967295u)))) >> (109831u % 32u), 4u)];
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - arg_0.a.x) + arg_0.a.x)), _wgslsmith_div_f32(var_0.a.x, 1328f));
    var var_2 = global4[_wgslsmith_index_u32(arg_3.x, 23u)];
    return 50196u;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> bool {
    global4 = array<Struct_1, 23>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1314f, -2632f))), 1827f), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1576f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -524f))), _wgslsmith_f_op_f32(-1230f + _wgslsmith_div_f32(1028f, 684f)))));
    var var_1 = !select(vec3<bool>(!select(global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(u_input.a, 22u)], true), any(vec2<bool>(true, true)), func_4(func_1(global1[_wgslsmith_index_u32(u_input.a, 4u)], true, vec3<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 22u)]), vec2<u32>(77061u, 60902u)), vec4<bool>(true, false, true, true), Struct_1(var_0, global2[_wgslsmith_index_u32(u_input.a, 22u)], u_input.b))), select(!vec3<bool>(global2[_wgslsmith_index_u32(41873u, 22u)], true, global2[_wgslsmith_index_u32(u_input.a, 22u)]), vec3<bool>(func_4(8192u, vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 22u)], global2[_wgslsmith_index_u32(23633u, 22u)], false, true), global4[_wgslsmith_index_u32(3443u, 23u)]), !global2[_wgslsmith_index_u32(u_input.a, 22u)], false), vec3<bool>(all(vec3<bool>(false, global2[_wgslsmith_index_u32(24034u, 22u)], global2[_wgslsmith_index_u32(31225u, 22u)])), true, global2[_wgslsmith_index_u32(1u, 22u)])), !global2[_wgslsmith_index_u32(~u_input.a >> (~u_input.a % 32u), 22u)]);
    let var_2 = vec3<i32>(-1i) * -vec3<i32>(-4522i, _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(37442u, 22u)]) & -global0[_wgslsmith_index_u32(69355u, 22u)], ~(~global3[_wgslsmith_index_u32(u_input.a, 15u)]));
    global1 = array<Struct_1, 4>();
    global2 = array<bool, 22>();
    global2 = array<bool, 22>();
    var var_3 = Struct_1(vec3<f32>(1729f, var_0.x, -1000f), all(select(var_1.zz, select(select(vec2<bool>(false, true), var_1.zz, var_1.yx), select(vec2<bool>(false, true), vec2<bool>(var_1.x, true), true), all(vec3<bool>(true, var_1.x, global2[_wgslsmith_index_u32(1u, 22u)]))), select(var_1.xx, var_1.zy, var_1.x))), ~(~(vec3<i32>(var_2.x, -12318i, 1i) | u_input.b) | abs(~u_input.b)));
    let var_4 = 1u;
    var var_5 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, -944f, 14987i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(274f, 1000f, var_3.a.x, -1171f)))), vec4<f32>(_wgslsmith_f_op_f32(var_3.a.x - var_0.x), _wgslsmith_div_f32(var_3.a.x, 505f), var_0.x, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(floor(var_0.x))))));
}

