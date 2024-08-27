struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(1i, -1i, -19687i, 1i, 34003i, 2147483647i, 2147483647i, i32(-2147483648), -43890i, 4052i, -189i, 1i, -1i, -5306i, -1i, i32(-2147483648), 0i, -1i, 0i, -47259i, -22721i, 58792i, -25042i, -1808i);

var<private> global1: array<i32, 2> = array<i32, 2>(-30794i, 1i);

var<private> global2: Struct_1 = Struct_1(true, vec2<f32>(274f, 1000f));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = vec3<bool>(arg_0, global2.a, !arg_0);
    var var_1 = u_input.d.xwz;
    let var_2 = vec2<i32>(-select(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.c), 2u)], 24335i, true) ^ firstTrailingBit(-1i), var_1.x);
    return -697f;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<bool>) -> i32 {
    var var_0 = Struct_3(vec3<u32>(_wgslsmith_add_u32(~u_input.c, u_input.e.x), 15134u, ~select(u_input.c, 1u, true) | ~_wgslsmith_add_u32(u_input.e.x, 76212u)), Struct_1(!global2.a, _wgslsmith_f_op_vec2_f32(select(arg_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.b.x, arg_1.b.x)))), select(!vec2<bool>(global2.a, arg_1.a), vec2<bool>(false, true), !vec2<bool>(arg_2.x, arg_2.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global2.b.x, _wgslsmith_f_op_f32(231f * 589f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(1464f >= arg_1.b.x)))))));
    var var_1 = Struct_4(abs(u_input.d.xw), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(634f, var_0.b.b.x, _wgslsmith_f_op_f32(floor(-1438f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.b.x, 944f, arg_1.b.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c, var_0.c, -1000f), vec3<f32>(1301f, -765f, -209f), vec3<bool>(false, arg_2.x, arg_0))), true))), var_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -36602i, -6375i, ~(-2147483647i)), u_input.d)));
    let var_2 = 1i << ((firstLeadingBit(~var_0.a.x) & var_0.a.x) % 32u);
    var_1 = Struct_4(vec2<i32>(_wgslsmith_mult_i32(min(var_1.a.x, global0[_wgslsmith_index_u32(var_0.a.x, 24u)]), _wgslsmith_dot_vec3_i32(u_input.d.xzx, vec3<i32>(var_1.a.x, var_1.b.c, global1[_wgslsmith_index_u32(1u, 2u)]))), firstLeadingBit(-global0[_wgslsmith_index_u32(0u, 24u)])) >> (vec2<u32>(0u, u_input.c) % vec2<u32>(32u)), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1647f, var_1.b.b.b.x, 841f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.x, 741f, var_1.b.a.x)), _wgslsmith_f_op_vec3_f32(max(var_1.b.a, vec3<f32>(-815f, -1636f, var_1.b.a.x)))))), var_0.b, -global0[_wgslsmith_index_u32(~var_0.a.x >> (~u_input.c % 32u), 24u)]));
    var_1 = Struct_4(vec2<i32>(-1i) * -select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -47331i), var_1.a), vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(15729u, 2u)]), 1i < global0[_wgslsmith_index_u32(24523u, 24u)]), Struct_2(vec3<f32>(arg_1.b.x, -1000f, _wgslsmith_f_op_f32(min(var_0.b.b.x, var_1.b.a.x))), arg_1, _wgslsmith_dot_vec3_i32(u_input.d.wxx, vec3<i32>(-48529i, var_2, -20246i) | vec3<i32>(-1652i, u_input.d.x, 2147483647i))));
    return ~((i32(-1i) * -min(-2147483647i, 2147483647i)) & max(~global1[_wgslsmith_index_u32(var_0.a.x, 2u)], var_1.a.x));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(min(func_2(global2.a, arg_0.b, vec2<bool>(false, arg_0.b.a), vec2<bool>(global2.a, global2.a)), arg_0.c >> (u_input.c % 32u)), 0i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(26520u, 2u)], 1i, global0[_wgslsmith_index_u32(49028u, 24u)], -2147483647i), arg_2), min(0i, global0[_wgslsmith_index_u32(u_input.e.x, 24u)]))), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(4294967295u, 24u)], _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0[_wgslsmith_index_u32(76084u, 24u)]), vec2<i32>(arg_0.c, global0[_wgslsmith_index_u32(u_input.c, 24u)])), global0[_wgslsmith_index_u32(5013u, 24u)])), arg_0.c), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(-arg_2.zwy, -vec3<i32>(u_input.b, -47647i, global1[_wgslsmith_index_u32(u_input.c, 2u)])), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.x, arg_0.c, u_input.b), arg_2.yzw) & u_input.d.xyy), vec3<i32>(_wgslsmith_clamp_i32(49168i, -7174i, -2147483647i), -9516i, _wgslsmith_clamp_i32(2147483647i, global0[_wgslsmith_index_u32(u_input.e.x, 24u)], arg_0.c)) & vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(86330u, 1u), 2u)], -global1[_wgslsmith_index_u32(u_input.e.x, 2u)], -36675i)), arg_2.xzy | abs(vec3<i32>(arg_0.c, -2147483647i, u_input.a) | vec3<i32>(-2147483647i, -12375i, u_input.d.x)));
    let var_1 = vec3<bool>(arg_0.b.a, !(!(!arg_0.b.a | true)), all(!select(select(vec2<bool>(true, arg_0.b.a), vec2<bool>(global2.a, false), vec2<bool>(true, false)), select(vec2<bool>(global2.a, arg_0.b.a), vec2<bool>(false, arg_0.b.a), vec2<bool>(true, arg_0.b.a)), all(vec3<bool>(true, arg_0.b.a, true)))));
    var var_2 = arg_0.c | -44990i;
    global0 = array<i32, 24>();
    var var_3 = Struct_4(vec2<i32>(2147483647i, u_input.a) >> (_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(u_input.e.yx), abs(u_input.e.xx)), vec2<u32>(abs(4294967295u), 60026u >> (1u % 32u))) % vec2<u32>(32u)), Struct_2(vec3<f32>(380f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-707f * global2.b.x), 1331f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_0.b, arg_2.x));
    return var_3.b.b;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-479f - arg_1.c), _wgslsmith_f_op_f32(f32(-1f) * -1731f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, 517f)) * _wgslsmith_div_vec2_f32(arg_1.b.b, arg_3.b.b))))));
    var var_1 = true | arg_1.b.a;
    global2 = Struct_1(arg_2.b.a, arg_1.b.b);
    let var_2 = Struct_4(_wgslsmith_mod_vec2_i32(~u_input.d.xy, vec2<i32>(reverseBits(-1i), -1i)) ^ ~(-u_input.d.xx ^ vec2<i32>(global1[_wgslsmith_index_u32(arg_1.a.x, 2u)], global1[_wgslsmith_index_u32(arg_1.a.x, 2u)])), arg_2);
    global2 = Struct_1(var_2.b.b.a, _wgslsmith_f_op_vec2_f32(func_1(Struct_2(_wgslsmith_f_op_vec3_f32(var_2.b.a - vec3<f32>(-1176f, -813f, arg_2.b.b.x)), func_1(var_2.b, vec4<f32>(-492f, 1160f, var_0.x, var_0.x), vec4<i32>(-1i, 7630i, var_2.a.x, var_2.b.c)), -arg_2.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-301f, arg_2.a.x, var_0.x, global2.b.x) + vec4<f32>(global2.b.x, var_2.b.b.b.x, global2.b.x, arg_1.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1177f, var_0.x, 302f, arg_1.c))), vec4<i32>(_wgslsmith_div_i32(u_input.a, var_2.b.c), countOneBits(1i), -arg_2.c, global0[_wgslsmith_index_u32(u_input.e.x, 24u)] >> (arg_3.a.x % 32u))).b - var_2.b.b.b));
    return _wgslsmith_mult_u32(select(_wgslsmith_div_u32(~u_input.c, 1u), min(firstLeadingBit(_wgslsmith_dot_vec2_u32(arg_3.a.zx, vec2<u32>(1u, 0u))), ~4294967295u << (~arg_1.a.x % 32u)), true), select(abs(_wgslsmith_div_u32(~arg_0.x, 21431u)), arg_3.a.x, global2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(-global2.b));
    var var_0 = -1000f;
    let var_1 = _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(func_4(u_input.e, Struct_3(u_input.e.zyx, func_1(Struct_2(vec3<f32>(-575f, 358f, global2.b.x), Struct_1(global2.a, global2.b), u_input.d.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, -535f, global2.b.x, 1524f) - vec4<f32>(790f, global2.b.x, global2.b.x, 100f)), select(vec4<i32>(global0[_wgslsmith_index_u32(0u, 24u)], u_input.d.x, -2147483647i, -29178i), vec4<i32>(global0[_wgslsmith_index_u32(24442u, 24u)], 0i, -40363i, u_input.b), global2.a)), global2.b.x), Struct_2(vec3<f32>(-248f, global2.b.x, 2487f), func_1(Struct_2(vec3<f32>(global2.b.x, -500f, global2.b.x), Struct_1(false, global2.b), global0[_wgslsmith_index_u32(46270u, 24u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-323f, -653f, global2.b.x, global2.b.x)), -vec4<i32>(-2147483647i, -13356i, -2147483647i, global0[_wgslsmith_index_u32(u_input.c, 24u)])), firstLeadingBit(global1[_wgslsmith_index_u32(u_input.c, 2u)])), Struct_3(_wgslsmith_add_vec3_u32(~u_input.e.wyw, vec3<u32>(u_input.c, u_input.c, u_input.c)), Struct_1(all(vec3<bool>(false, false, true)), global2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.b.x))))), 24u)], 41126i);
    let var_2 = u_input.d.yy;
    global1 = array<i32, 2>();
    var var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-global2.b.x), global2.b.x, global2.b.x), func_1(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1355f, -1283f, 1147f)) + vec3<f32>(292f, global2.b.x, -304f)), func_1(Struct_2(vec3<f32>(global2.b.x, 856f, 951f), Struct_1(false, global2.b), var_2.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.b.x, 2068f, -167f, global2.b.x), vec4<f32>(-1584f, global2.b.x, 126f, global2.b.x))), min(u_input.d, vec4<i32>(global1[_wgslsmith_index_u32(30787u, 2u)], -8876i, -71615i, 2147483647i))), _wgslsmith_dot_vec2_i32(abs(u_input.d.wx), vec2<i32>(u_input.a, -59870i))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.b.x)) - _wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(-global2.b.x), 1309f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(864f - -1000f) - _wgslsmith_f_op_f32(global2.b.x - global2.b.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1, var_2.x, u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, var_2.x), vec2<i32>(28819i, u_input.a))), vec4<i32>(-3090i << (u_input.e.x % 32u), 17744i << (u_input.c % 32u), -47920i, -23647i))), ~firstTrailingBit(_wgslsmith_add_i32(~(-7353i), 1i)));
    global1 = array<i32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global2.b.x * global2.b.x), _wgslsmith_f_op_f32(abs(global2.b.x)), _wgslsmith_div_f32(global2.b.x, -1000f), var_3.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.b.x, global2.b.x, -1904f, var_3.a.x)), vec4<bool>(any(vec2<bool>(var_3.b.a, var_3.b.a)), !global2.a, false, true))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.b.b.x, 1059f, _wgslsmith_f_op_f32(-304f - global2.b.x), _wgslsmith_f_op_f32(var_3.b.b.x + 379f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2187f, -1000f, 794f, -235f))), all(select(vec2<bool>(false, false), vec2<bool>(var_3.b.a, global2.a), vec2<bool>(global2.a, global2.a)))))));
}

