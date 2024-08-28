struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(true, false, false, false, true, false, true, true, false);

var<private> global1: array<vec2<bool>, 17>;

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 17040u, 1u, 4294967295u);

var<private> global3: array<vec2<i32>, 12>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    let var_0 = vec3<i32>(-1i) * -(~(~(~vec3<i32>(0i, u_input.b.x, 0i))));
    global3 = array<vec2<i32>, 12>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(241f + -2265f) * -1299f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1393f)) + -974f)), -723f));
    var var_2 = select(all(!select(select(arg_0, vec4<bool>(arg_0.x, false, arg_0.x, true), false), !vec4<bool>(false, arg_0.x, true, false), !arg_0)), arg_0.x, ~(u_input.a.x >> (4294967295u % 32u)) > u_input.a.x);
    global1 = array<vec2<bool>, 17>();
    return arg_0.x;
}

fn func_2(arg_0: i32) -> Struct_5 {
    var var_0 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~(~global2.xwz), _wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, u_input.a.x, global2.x), countOneBits(vec3<u32>(u_input.a.x, 47391u, u_input.a.x)))), global2.xzz), select(vec3<bool>(global0[_wgslsmith_index_u32(max(~u_input.a.x, u_input.a.x), 9u)], func_3(!vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 9u)], false, true, true)), true), !vec3<bool>(!global0[_wgslsmith_index_u32(59905u, 9u)], false, global0[_wgslsmith_index_u32(~1u, 9u)]), vec3<bool>(true || all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(global2.x, 9u)])), func_3(vec4<bool>(true, global0[_wgslsmith_index_u32(53650u, 9u)], global0[_wgslsmith_index_u32(40239u, 9u)], false)) && true, all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 9u)], true, false, global0[_wgslsmith_index_u32(u_input.a.x, 9u)])))));
    var var_1 = 1i;
    var var_2 = abs(-vec3<i32>(~u_input.b.x, 0i, _wgslsmith_mod_i32(u_input.b.x, arg_0))) & u_input.b;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1106f)))), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(2147483647i, var_2.x, -4286i), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-10999i, var_2.x, arg_0), vec3<i32>(arg_0, -2750i, -1i), u_input.b)), vec3<i32>(reverseBits(-66411i), ~(-50308i), ~_wgslsmith_mod_i32(-19008i, var_2.x))));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(895f - -155f), var_3.a) - var_3.a), reverseBits(~(-var_3.b.yz)), ~vec4<u32>(var_0.a.x, max(firstTrailingBit(global2.x), var_0.a.x ^ 1u), u_input.a.x, _wgslsmith_add_u32(~u_input.a.x, countOneBits(0u))));
    return Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(509f, var_4.a) * vec2<f32>(var_4.a, var_4.a)), vec2<f32>(_wgslsmith_div_f32(var_3.a, -244f), _wgslsmith_f_op_f32(f32(-1f) * -544f)), select(vec2<bool>(var_0.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec2<bool>(true, false), var_0.b.yx)))), Struct_4(_wgslsmith_div_f32(-197f, var_3.a), ~_wgslsmith_div_vec2_i32(vec2<i32>(24176i, arg_0), vec2<i32>(-1i, 1i)), vec4<u32>(u_input.a.x, 20639u, var_0.a.x, 302u)));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: i32, arg_3: vec3<bool>) -> i32 {
    var var_0 = -(-2147483647i ^ -(arg_1.x >> (0u % 32u)));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(826f, _wgslsmith_f_op_f32(exp2(arg_0.a.x)))), global3[_wgslsmith_index_u32(~(~max(~0u, max(u_input.a.x, 78299u))), 12u)], arg_0.b.c);
    var var_2 = u_input.a.x | 13684u;
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.b.a, var_1.a, -143f), vec3<f32>(-1243f, var_1.a, 560f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -1426f, -107f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2371f, var_1.a, -185f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.a)), _wgslsmith_f_op_f32(abs(1929f)), var_1.a) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - 688f)), _wgslsmith_f_op_f32(arg_0.a.x + 265f), _wgslsmith_div_f32(arg_0.b.a, 1816f))), true));
    global2 = countOneBits(~firstLeadingBit(vec4<u32>(global2.x, firstTrailingBit(25260u), ~57183u, global2.x ^ global2.x)));
    return ~arg_1.x;
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_3) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a - arg_2.a)), _wgslsmith_f_op_f32(504f + 883f)))));
    global3 = array<vec2<i32>, 12>();
    return ~u_input.a;
}

fn func_1(arg_0: u32) -> f32 {
    global3 = array<vec2<i32>, 12>();
    global2 = ~_wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(arg_0), ~_wgslsmith_mod_u32(42405u, 1u), global2.x, reverseBits(arg_0 << (arg_0 % 32u))), ~vec4<u32>(u_input.a.x, 1u, ~arg_0, global2.x));
    global3 = array<vec2<i32>, 12>();
    var var_0 = 1i << (_wgslsmith_div_u32(max(global2.x << (arg_0 % 32u), _wgslsmith_div_u32(u_input.a.x, 68481u)) | 51981u, 1u) % 32u);
    var var_1 = _wgslsmith_add_vec2_u32(max(global2.zx, ~(~u_input.a)), func_5(func_4(func_2(u_input.b.x), ~global3[_wgslsmith_index_u32(arg_0, 12u)], _wgslsmith_clamp_i32(-12452i, u_input.b.x, -2147483647i), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], false, true)), -(vec3<i32>(u_input.b.x, -70004i, u_input.b.x) ^ u_input.b), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -127f), min(u_input.b, vec3<i32>(-2147483647i, u_input.b.x, 0i))))) & (~(~_wgslsmith_sub_vec2_u32(global2.xz, u_input.a)) >> (func_2(2147483647i).b.c.zy % vec2<u32>(32u)));
    return -1209f;
}

fn func_6(arg_0: f32, arg_1: Struct_1) -> Struct_4 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1770f, -568f))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), 884f), global0[_wgslsmith_index_u32(20039u, 9u)])))), Struct_4(-1000f, _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(u_input.b.x, 2147483647i)), vec2<i32>(-15327i >> (arg_1.a.x % 32u), u_input.b.x)), ~vec4<u32>(~global2.x, 19412u, 0u, _wgslsmith_mult_u32(1u, arg_1.a.x))));
    var var_1 = Struct_4(var_0.b.a, vec2<i32>(-(_wgslsmith_dot_vec4_i32(vec4<i32>(-26436i, var_0.b.b.x, u_input.b.x, u_input.b.x), vec4<i32>(var_0.b.b.x, 2147483647i, 25326i, -47023i)) | -var_0.b.b.x), firstTrailingBit(~1i) << (_wgslsmith_dot_vec4_u32(var_0.b.c & var_0.b.c, var_0.b.c << (vec4<u32>(arg_1.a.x, arg_1.a.x, 20854u, 14419u) % vec4<u32>(32u))) % 32u)), ~firstTrailingBit(~(~var_0.b.c)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(-360f, _wgslsmith_f_op_f32(-var_1.a)));
    var_1 = var_0.b;
    var var_3 = ~0u;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2366f;
    let var_1 = func_6(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), global2.zw))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1127f - -645f)))), (all(global1[_wgslsmith_index_u32(global2.x, 17u)]) || global0[_wgslsmith_index_u32(u_input.a.x ^ 369u, 9u)]) & all(select(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(25918u, 17u)], vec2<bool>(false, true))))), Struct_1(global2.yzx, vec3<bool>(all(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], true, false)) | true, !global0[_wgslsmith_index_u32(u_input.a.x, 9u)] || all(global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), false)));
    let var_2 = i32(-1i) * -2147483647i;
    let var_3 = select(true & (813f < _wgslsmith_f_op_f32(var_1.a - -1092f)), !global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)] || (_wgslsmith_f_op_f32(310f * 1173f) <= _wgslsmith_f_op_f32(-var_1.a))) && (_wgslsmith_f_op_f32(sign(2206f)) == -1059f);
    global0 = array<bool, 9>();
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-547f, var_1.a, var_1.a, var_1.a)) + vec4<f32>(var_1.a, var_1.a, 1210f, var_1.a)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1399f, var_1.a, -1000f, var_1.a))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-436f, 915f, var_1.a, var_1.a))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<f32>(var_1.a, var_1.a, 1709f, var_1.a)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_1.a, var_1.a, -289f) - vec4<f32>(140f, 780f, var_1.a, -1353f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, -1136f, -1000f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1756f, -276f, var_1.a, var_1.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-_wgslsmith_mod_i32(~(-1i), var_2), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-1i, var_1.b.x, u_input.b.x, u_input.b.x)), vec4<i32>(0i, -29115i, -2147483647i, 1i)), min(var_1.b.x << (1u % 32u), -1i), -1i)), -(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.b.x, var_2, var_1.b.x, var_2), vec4<i32>(u_input.b.x, var_1.b.x, u_input.b.x, 8854i), vec4<i32>(var_1.b.x, u_input.b.x, var_1.b.x, u_input.b.x))) << (_wgslsmith_mod_vec4_u32(abs(var_1.c), ~var_1.c) % vec4<u32>(32u))));
}

