struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: i32 = -69250i;

var<private> global2: array<u32, 11> = array<u32, 11>(34013u, 1u, 51909u, 49445u, 12421u, 10183u, 4294967295u, 13792u, 4294967295u, 9883u, 42010u);

var<private> global3: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec3<i32>(i32(-2147483648), 39776i, 9666i), vec4<u32>(54812u, 86484u, 1u, 34135u)), Struct_3(vec3<i32>(15804i, -56944i, -14042i), vec4<u32>(4294967295u, 0u, 4294967295u, 31472u)), Struct_3(vec3<i32>(-27158i, 1i, 14274i), vec4<u32>(13777u, 31968u, 70180u, 3762u)), Struct_3(vec3<i32>(0i, 1i, 1i), vec4<u32>(1u, 1u, 0u, 1u)), Struct_3(vec3<i32>(-1i, 35382i, -48136i), vec4<u32>(20442u, 0u, 1u, 39643u)), Struct_3(vec3<i32>(-1i, -1i, -1i), vec4<u32>(1u, 0u, 43017u, 4294967295u)), Struct_3(vec3<i32>(-7395i, 1i, 82513i), vec4<u32>(7754u, 890u, 1u, 99628u)), Struct_3(vec3<i32>(-36864i, -1i, 1813i), vec4<u32>(39404u, 4294967295u, 0u, 0u)), Struct_3(vec3<i32>(i32(-2147483648), -7830i, i32(-2147483648)), vec4<u32>(1u, 7746u, 29372u, 1u)), Struct_3(vec3<i32>(0i, -14819i, -8030i), vec4<u32>(11526u, 2127u, 0u, 0u)), Struct_3(vec3<i32>(2147483647i, -6968i, 12056i), vec4<u32>(4294967295u, 13508u, 8051u, 81991u)), Struct_3(vec3<i32>(-1i, 5429i, 2147483647i), vec4<u32>(4195u, 52955u, 4294967295u, 30118u)), Struct_3(vec3<i32>(0i, 1i, 2147483647i), vec4<u32>(40350u, 8020u, 4294967295u, 0u)), Struct_3(vec3<i32>(-1i, 0i, -55652i), vec4<u32>(50008u, 1u, 3879u, 0u)), Struct_3(vec3<i32>(3364i, 2147483647i, -1i), vec4<u32>(4294967295u, 1u, 1u, 0u)), Struct_3(vec3<i32>(i32(-2147483648), 41539i, 21893i), vec4<u32>(0u, 0u, 1u, 74535u)), Struct_3(vec3<i32>(2147483647i, -33454i, 0i), vec4<u32>(51551u, 1u, 4294967295u, 4294967295u)), Struct_3(vec3<i32>(-16511i, 2147483647i, 0i), vec4<u32>(15582u, 4294967295u, 4294967295u, 1u)), Struct_3(vec3<i32>(-40289i, 2324i, -4613i), vec4<u32>(53174u, 7767u, 41299u, 13605u)), Struct_3(vec3<i32>(i32(-2147483648), 495i, 708i), vec4<u32>(0u, 0u, 32915u, 73273u)), Struct_3(vec3<i32>(i32(-2147483648), -44076i, -11510i), vec4<u32>(0u, 14326u, 102493u, 44267u)), Struct_3(vec3<i32>(0i, i32(-2147483648), -1i), vec4<u32>(4294967295u, 50232u, 23005u, 0u)));

var<private> global4: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec3<i32>(i32(-2147483648), 3434i, 2147483647i), vec4<u32>(1u, 1u, 4294967295u, 0u)), Struct_3(vec3<i32>(-32397i, 2147483647i, 0i), vec4<u32>(0u, 62924u, 60032u, 63570u)), Struct_3(vec3<i32>(-1i, 431i, -27924i), vec4<u32>(24707u, 10132u, 64250u, 29776u)), Struct_3(vec3<i32>(-47531i, 14879i, 25104i), vec4<u32>(1u, 60871u, 4294967295u, 1u)), Struct_3(vec3<i32>(9568i, -1i, i32(-2147483648)), vec4<u32>(1u, 11545u, 19248u, 23366u)), Struct_3(vec3<i32>(50713i, -1i, -12482i), vec4<u32>(1u, 79195u, 43206u, 1u)), Struct_3(vec3<i32>(0i, 2147483647i, 0i), vec4<u32>(1u, 0u, 77233u, 4294967295u)), Struct_3(vec3<i32>(-1i, 2147483647i, 41895i), vec4<u32>(1u, 1u, 0u, 42339u)), Struct_3(vec3<i32>(17200i, 2147483647i, 1i), vec4<u32>(0u, 40185u, 55896u, 0u)), Struct_3(vec3<i32>(1i, 0i, -14661i), vec4<u32>(0u, 39597u, 1u, 59704u)), Struct_3(vec3<i32>(18714i, 10332i, -31777i), vec4<u32>(34337u, 68222u, 32068u, 5442u)), Struct_3(vec3<i32>(0i, 26768i, -48366i), vec4<u32>(34384u, 4294967295u, 1u, 4294967295u)), Struct_3(vec3<i32>(-1i, -1i, 1i), vec4<u32>(1u, 10846u, 4294967295u, 38478u)), Struct_3(vec3<i32>(-21430i, 8771i, -20636i), vec4<u32>(36049u, 1u, 4294967295u, 190u)), Struct_3(vec3<i32>(-34873i, -20718i, 1i), vec4<u32>(43558u, 1u, 50225u, 3142u)), Struct_3(vec3<i32>(-38682i, -1i, 2147483647i), vec4<u32>(0u, 45044u, 0u, 42798u)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec4<bool> {
    let var_0 = arg_0.a.b.x;
    var var_1 = ~arg_0.b;
    let var_2 = arg_0.a;
    let var_3 = var_2;
    global4 = array<Struct_3, 16>();
    return select(var_2.b, !(!select(arg_0.a.b, vec4<bool>(arg_0.a.b.x, var_0, true, var_3.b.x), vec4<bool>(arg_0.a.b.x, arg_1, var_2.b.x, true))), select(select(vec4<bool>(true, select(arg_0.a.b.x, false, var_2.b.x), any(vec3<bool>(arg_1, var_2.b.x, false)), !arg_1), select(vec4<bool>(true, true, true, false), arg_0.a.b, !arg_0.a.b), vec4<bool>(arg_1, var_3.b.x, select(arg_0.a.b.x, false, var_2.b.x), var_3.b.x)), select(!(!var_2.b), select(vec4<bool>(false, var_3.b.x, arg_1, arg_1), select(vec4<bool>(true, false, arg_1, var_2.b.x), var_2.b, var_3.b), any(var_2.b)), false), vec4<bool>(var_2.b.x, select(false, any(var_2.b.yy), var_1.x <= 71727u), var_3.b.x, var_3.b.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3) -> i32 {
    var var_0 = Struct_3(vec3<i32>(1i, firstLeadingBit(1i), -2147483647i), arg_1.b);
    let var_1 = all(func_3(Struct_2(Struct_1(~vec3<i32>(arg_1.a.x, arg_1.a.x, -12409i), vec4<bool>(true, true, true, true), firstTrailingBit(30442i), global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(69257u, 11u)], 23u)]), _wgslsmith_mult_vec3_u32(arg_1.b.ywx, _wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4394u, 11u)], 11u)], 11u)], 21516u, var_0.b.x), vec3<u32>(68u, global2[_wgslsmith_index_u32(13266u, 11u)], 0u))), global0[_wgslsmith_index_u32(arg_1.b.x, 23u)]), false));
    let var_2 = Struct_1(-var_0.a, !(!select(!vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(false, false, var_1, true), select(vec4<bool>(false, var_1, true, false), vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(true, true, true, var_1)))), i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(~reverseBits(53522u), 11u)]), 23u)] + global0[_wgslsmith_index_u32(select(2122u, 0u, ~var_0.b.x == arg_1.b.x), 23u)]));
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(340f, 992f)) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 23u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_0.b.x, 23u)])) + _wgslsmith_f_op_f32(trunc(-1348f)))))));
    var_0 = global4[_wgslsmith_index_u32(~(~countOneBits(0u)), 16u)];
    return abs(u_input.a.x);
}

fn func_1() -> Struct_1 {
    let var_0 = all(vec3<bool>(true, ~firstTrailingBit(u_input.b.x) >= ~u_input.b.x, true));
    global1 = -37862i;
    let var_1 = _wgslsmith_div_i32(u_input.a.x, reverseBits(-select(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), var_0)));
    var var_2 = Struct_1(select(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 329i, -51121i, u_input.a.x), vec4<i32>(var_1, 25522i, var_1, 28937i)), -1i, ~(~2147483647i)), u_input.a.zxx, select(!vec3<bool>(true, true, var_0), select(vec3<bool>(true, true, var_0), select(vec3<bool>(var_0, var_0, false), vec3<bool>(true, var_0, true), false), any(vec3<bool>(true, true, true))), all(!vec3<bool>(var_0, var_0, false)))), vec4<bool>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 23u)]) >= _wgslsmith_f_op_f32(-295f + _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(21936u, 23u)]))), true, false, !(!var_0) == false), _wgslsmith_mult_i32(max(1i, var_1), func_2(reverseBits(u_input.a), global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~1u, 11u)], 16u)])), global0[_wgslsmith_index_u32(1109u, 23u)]);
    let var_3 = Struct_2(Struct_1(~var_2.a << (_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(5462u, 4294967295u, u_input.c), vec3<u32>(global2[_wgslsmith_index_u32(0u, 11u)], u_input.c, u_input.b.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 11u)], 47643u), vec3<u32>(74601u, 0u, u_input.b.x))) % vec3<u32>(32u)), !vec4<bool>(any(var_2.b.zxw), true, all(vec3<bool>(var_2.b.x, true, var_2.b.x)), select(var_0, true, var_2.b.x)), u_input.a.x & _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-2147483647i, 18670i)), u_input.a.ww), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(abs(4294967295u), 23u)]))), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(u_input.c, 11u)], 25149u, 0u), vec3<u32>(25167u, u_input.b.x, u_input.b.x) ^ vec3<u32>(1u, global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(u_input.c, 11u)]), ~vec3<u32>(0u, 41717u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(130504u, 11u)], 11u)], 11u)])), ~firstTrailingBit(vec3<u32>(0u, 3831u, u_input.b.x)), ~(~vec3<u32>(u_input.c, global2[_wgslsmith_index_u32(u_input.b.x, 11u)], 1u))) >> (vec3<u32>(66227u, u_input.c, 4294967295u) % vec3<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(40664u, 16770u)), 23u)], -1499f)), var_2.d));
    return var_3.a;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    global2 = array<u32, 11>();
    let var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(1000f)));
    let var_1 = -1i;
    global1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0), -760f, arg_1.d, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 23u)], arg_1.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-828f, -670f, var_0, var_0), vec4<f32>(-201f, arg_0, arg_2.c, arg_0))))))));
    return func_1();
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(25883u, 23u)]), -1164f, _wgslsmith_f_op_f32(724f - arg_3.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_2, arg_3.d)), vec3<bool>(arg_3.b.x & arg_3.b.x, !arg_3.b.x, arg_0.x <= 0i)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(23236u, 23u)], 529f), _wgslsmith_f_op_f32(1762f - -621f), global0[_wgslsmith_index_u32(0u, 23u)])) - vec3<f32>(216f, -676f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~4294967295u, 11u)], 23u)]))));
    let var_1 = Struct_2(arg_3, ~abs(~abs(vec3<u32>(u_input.b.x, global2[_wgslsmith_index_u32(73421u, 11u)], 0u))), var_0.x);
    let var_2 = arg_3;
    var var_3 = global2[_wgslsmith_index_u32(var_1.b.x, 11u)];
    var_3 = 4294967295u;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1935f - var_2.d))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(961f, 1000f)), _wgslsmith_f_op_f32(floor(var_2.d)), all(var_1.a.b.yx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2023f) + global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1 & global2[_wgslsmith_index_u32(1u, 11u)], 11u)], 23u)]))), 703f);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_3, 16>();
    let var_0 = global3[_wgslsmith_index_u32(u_input.c, 22u)];
    let x = u_input.a;
    s_output = func_5(-u_input.a.wwx, _wgslsmith_dot_vec4_u32(var_0.b, _wgslsmith_div_vec4_u32(var_0.b, vec4<u32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 4294967295u), 11u)], 0u >> (var_0.b.x % 32u), 0u << (0u % 32u), ~5u))), -548f, func_4(global0[_wgslsmith_index_u32(~firstTrailingBit(var_0.b.x) << (1u % 32u), 23u)], func_1(), Struct_2(func_1(), _wgslsmith_div_vec3_u32(~var_0.b.yyw, select(var_0.b.xxy, var_0.b.zzz, vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-154f + 1000f) * _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 23u)])))), Struct_2(func_1(), _wgslsmith_add_vec3_u32(select(var_0.b.zyw, vec3<u32>(var_0.b.x, 4294967295u, 8055u), false), vec3<u32>(var_0.b.x, 24346u, var_0.b.x) | var_0.b.yzy), global0[_wgslsmith_index_u32(var_0.b.x, 23u)])));
}

