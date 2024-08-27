struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true));

var<private> global2: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(-24443i, -1i, 1i, 2147483647i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -6946i), vec4<i32>(-14243i, -1i, 7390i, 0i), vec4<i32>(-17557i, 2147483647i, -5998i, -40621i), vec4<i32>(0i, 3406i, -45610i, -56925i), vec4<i32>(-35441i, -26023i, -36950i, 1i), vec4<i32>(-44443i, i32(-2147483648), 1i, -22174i), vec4<i32>(1298i, 0i, 37576i, 11615i), vec4<i32>(i32(-2147483648), 2147483647i, 1i, -14659i), vec4<i32>(-40445i, 12693i, 5411i, 1i), vec4<i32>(2147483647i, -22629i, 1i, 24055i), vec4<i32>(-17181i, 2147483647i, -16712i, -7934i), vec4<i32>(-31312i, 56375i, i32(-2147483648), 2147483647i), vec4<i32>(-4992i, 5757i, 12700i, i32(-2147483648)), vec4<i32>(2147483647i, 49966i, -1114i, -52813i), vec4<i32>(0i, -13440i, i32(-2147483648), 28325i), vec4<i32>(-1i, -8679i, 2147483647i, 2147483647i), vec4<i32>(i32(-2147483648), -28212i, 0i, i32(-2147483648)), vec4<i32>(34608i, 4340i, 33511i, -9849i), vec4<i32>(50447i, 1i, -3738i, 0i), vec4<i32>(-1i, -19553i, 40255i, i32(-2147483648)), vec4<i32>(0i, -159i, 11021i, -4080i), vec4<i32>(i32(-2147483648), -1i, 37785i, 1i), vec4<i32>(2147483647i, -11214i, -1i, 2147483647i), vec4<i32>(-17606i, 105358i, -48562i, -1i), vec4<i32>(-16595i, 0i, 55314i, -3700i), vec4<i32>(-32299i, 70005i, 30205i, 36834i), vec4<i32>(-1i, 16166i, -23001i, -35789i), vec4<i32>(2147483647i, i32(-2147483648), 1i, 22687i), vec4<i32>(-9369i, 36950i, 32673i, -1i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<i32>) -> u32 {
    var var_0 = arg_0.c;
    var_0 = arg_0.c;
    var var_1 = arg_0;
    var var_2 = true;
    global1 = array<vec4<bool>, 8>();
    return var_1.e;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = vec4<bool>(true, true, 286u < ~func_3(Struct_2(vec2<f32>(-816f, 749f), vec3<u32>(arg_0, 0u, arg_0), Struct_1(vec2<i32>(-16046i, 1i)), vec2<bool>(true, false), u_input.c), ~global2[_wgslsmith_index_u32(u_input.d, 30u)], -vec3<i32>(u_input.b, u_input.b, 2147483647i)), any(select(select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(33730u, arg_0), vec2<u32>(1u, 0u)), 8u)], select(global1[_wgslsmith_index_u32(arg_0, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], vec4<bool>(true, false, true, false)), global1[_wgslsmith_index_u32(~0u, 8u)]), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(25314u, 8u)], vec4<bool>(true, false, false, true)))));
    var_0 = vec4<bool>(var_0.x, !(!all(!vec2<bool>(var_0.x, false))), true, false);
    var var_1 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(select(~(-20242i), u_input.b, true), 2147483647i), vec2<i32>(u_input.b << (4294967295u % 32u), ~u_input.b) << (vec2<u32>(u_input.d, u_input.c) % vec2<u32>(32u))));
    var var_2 = global1[_wgslsmith_index_u32(~(~(~4294967295u)), 8u)];
    global2 = array<vec4<i32>, 30>();
    return Struct_2(vec2<f32>(1f, 1f), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 33269u, arg_0, 4294967295u), vec4<u32>(arg_0, arg_0, u_input.c, arg_0)) << (abs(u_input.d) % 32u), _wgslsmith_mult_u32(~25851u, 1u), arg_0), Struct_1(vec2<i32>(-1i, -33931i)), vec2<bool>(true, true), ~_wgslsmith_mult_u32(~23811u | (u_input.c << (arg_0 % 32u)), arg_0));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1354f, arg_2) - vec2<f32>(arg_2, arg_2))))), _wgslsmith_div_vec3_u32(min(abs(abs(arg_0)), vec3<u32>(arg_0.x, 23511u, 1u) ^ arg_0), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, 1u, 1u), ~arg_0, _wgslsmith_mod_vec3_u32(~arg_0, vec3<u32>(arg_0.x, 30476u, arg_0.x)))), Struct_1(arg_1.a), select(vec2<bool>(true, true), vec2<bool>(true, true), true), 62911u);
    let var_1 = func_2(~41630u);
    let var_2 = Struct_2(_wgslsmith_div_vec2_f32(var_0.a, _wgslsmith_f_op_vec2_f32(sign(var_1.a))), _wgslsmith_mult_vec3_u32(~vec3<u32>(45353u, 0u, arg_0.x | 4294967295u), ~vec3<u32>(_wgslsmith_sub_u32(20008u, 0u), ~var_0.e, ~19668u)), var_0.c, vec2<bool>(false & (_wgslsmith_f_op_f32(f32(-1f) * -905f) < _wgslsmith_f_op_f32(-1669f * arg_2)), all(vec3<bool>(true, true, true))), var_1.e << ((var_1.b.x ^ _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_1.e, 0u, 62374u, u_input.c), vec4<u32>(0u, 54668u, var_0.e, u_input.d), false), vec4<u32>(4294967295u, 59580u, arg_0.x, 85213u))) % 32u));
    global1 = array<vec4<bool>, 8>();
    global1 = array<vec4<bool>, 8>();
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(countOneBits(vec3<i32>(abs(u_input.b), u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-27382i, 28482i, -1i)))) | vec3<i32>(func_1(reverseBits(vec3<u32>(u_input.a, 41058u, 95099u)), Struct_1(vec2<i32>(1i, 8112i)), _wgslsmith_div_f32(-300f, 1319f)), 1i, 2147483647i), ~(~(~vec3<i32>(u_input.b, u_input.b, 1i))), vec3<bool>(all(vec2<bool>(any(vec4<bool>(false, false, false, false)), false)), select(true, false, all(vec2<bool>(true, true))), true));
    var var_1 = select(var_0.x, -2147483647i, (~_wgslsmith_dot_vec4_u32(vec4<u32>(51163u, 4294967295u, 0u, 24838u), vec4<u32>(47965u, 0u, 0u, 70107u)) << (1u % 32u)) == max(func_3(func_2(u_input.c), global2[_wgslsmith_index_u32(~8697u, 30u)], var_0), reverseBits(20716u)));
    let var_2 = Struct_1(var_0.zx);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>((-10300i & _wgslsmith_dot_vec4_i32(vec4<i32>(15378i, 25470i, u_input.b, var_2.a.x), global2[_wgslsmith_index_u32(u_input.a, 30u)])) & 32642i, _wgslsmith_mult_i32(-8868i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.x, var_0.x, u_input.b), var_0)) | var_2.a.x, _wgslsmith_div_i32(var_2.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-29975i, u_input.b, 7885i, var_0.x), vec4<i32>(var_0.x, 2147483647i, 48484i, var_0.x))) << (~19956u % 32u), -37795i | abs(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1878f - _wgslsmith_f_op_f32(abs(521f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(945f - -275f))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(186f - 1000f), _wgslsmith_f_op_f32(max(-1344f, 669f))), _wgslsmith_f_op_f32(step(675f, _wgslsmith_f_op_f32(f32(-1f) * -1393f)))))));
}

