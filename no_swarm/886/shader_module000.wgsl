struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: f32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<u32, 30>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: vec4<bool>, arg_3: f32) -> vec2<u32> {
    var var_0 = 40858u;
    global0 = !vec3<bool>(!(!(arg_3 > -346f)), all(arg_2.xxz), arg_1);
    let var_1 = Struct_2(vec2<i32>(1i, u_input.b >> (~abs(global1[_wgslsmith_index_u32(2688u, 30u)]) % 32u)), global0.zz, Struct_1(reverseBits(countOneBits(~vec2<u32>(global1[_wgslsmith_index_u32(61005u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)]))), _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(12463i, -1i, u_input.a), vec3<i32>(36256i, u_input.b, 0i)), vec3<i32>(u_input.b, i32(-1i) * -3808i, countOneBits(u_input.a))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-961f, 227f), vec2<f32>(arg_3, -542f))))))), Struct_1(firstLeadingBit(vec2<u32>(global1[_wgslsmith_index_u32(12345u ^ global1[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(51344u, 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], 30u)]), 30u)])), u_input.c.x, _wgslsmith_div_vec2_f32(vec2<f32>(arg_3, _wgslsmith_f_op_f32(sign(arg_3))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_3), vec2<f32>(arg_3, -880f))))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - arg_3) + _wgslsmith_f_op_f32(sign(arg_3))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2621f * arg_3) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1271f + arg_3))))));
    var_0 = ~42502u;
    var_0 = min(~reverseBits(_wgslsmith_add_u32(~var_1.d.a.x, ~global1[_wgslsmith_index_u32(var_1.c.a.x, 30u)])), 31570u);
    return select(vec2<u32>(max(select(_wgslsmith_mult_u32(var_1.c.a.x, 1u), global1[_wgslsmith_index_u32(var_1.d.a.x, 30u)], all(arg_2)), var_1.c.a.x), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.a.x, var_1.c.a.x, global1[_wgslsmith_index_u32(0u, 30u)], var_1.c.a.x), vec4<u32>(var_1.d.a.x, var_1.c.a.x, global1[_wgslsmith_index_u32(var_1.c.a.x, 30u)], var_1.c.a.x)) >> (var_1.d.a.x % 32u), 30u)]), ~var_1.d.a, !select(vec2<bool>(all(arg_2.yww), true), select(!vec2<bool>(arg_0.x, false), !vec2<bool>(var_1.b.x, arg_2.x), arg_2.wy), vec2<bool>(all(vec2<bool>(arg_1, true)), arg_0.x)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: i32) -> bool {
    let var_0 = Struct_3(Struct_2(arg_2.a.a, !vec2<bool>(true, 197f > arg_0.x), Struct_1(func_3(select(vec3<bool>(true, true, arg_2.a.b.x), vec3<bool>(false, false, true), arg_1.x), true, vec4<bool>(true, arg_2.a.b.x, global0.x, false), _wgslsmith_f_op_f32(-812f * -465f)), _wgslsmith_add_i32(arg_3 ^ -7596i, arg_3), _wgslsmith_div_vec2_f32(arg_2.a.e, _wgslsmith_f_op_vec2_f32(vec2<f32>(-789f, 550f) + arg_0))), Struct_1(arg_2.a.c.a, _wgslsmith_mult_i32(1i, 41269i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.x, arg_0.x))) * vec2<f32>(929f, arg_0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(149f, arg_0.x) + arg_0)));
    var var_1 = reverseBits(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60249u, 30u)], 30u)], 30u)], 8569u), arg_2.a.d.a), global1[_wgslsmith_index_u32(4294967295u, 30u)], ~min(var_0.a.d.a.x, abs(arg_2.a.c.a.x))));
    var var_2 = firstLeadingBit(1i);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + arg_2.a.d.c.x) * _wgslsmith_f_op_f32(step(-3169f, 1133f)))), _wgslsmith_f_op_f32(var_0.a.c.c.x + 175f), _wgslsmith_f_op_f32(max(770f, _wgslsmith_f_op_f32(f32(-1f) * -402f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.c.c.x, 787f, arg_2.a.e.x, 556f), vec4<f32>(1104f, arg_0.x, 918f, arg_2.a.d.c.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.d.c.x, var_0.a.c.c.x, 103f, -1000f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.c.c.x, arg_0.x, 1376f, arg_0.x), vec4<f32>(891f, 1030f, 626f, 355f), vec4<bool>(true, false, var_0.a.b.x, false)))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 1000f, arg_0.x) * vec4<f32>(-632f, arg_2.a.d.c.x, 1733f, arg_0.x)))))), select(select(select(vec4<bool>(var_0.a.b.x, false, false, false), !vec4<bool>(true, true, true, var_0.a.b.x), !global0.x), select(select(vec4<bool>(true, true, global0.x, arg_2.a.b.x), vec4<bool>(arg_2.a.b.x, global0.x, false, global0.x), arg_1.x), vec4<bool>(true, true, false, true), any(vec4<bool>(false, var_0.a.b.x, global0.x, false))), arg_2.a.b.x), select(select(!vec4<bool>(true, false, arg_1.x, true), vec4<bool>(false, true, arg_2.a.b.x, true), !vec4<bool>(false, true, var_0.a.b.x, true)), select(select(vec4<bool>(false, false, true, arg_2.a.b.x), vec4<bool>(true, arg_2.a.b.x, arg_1.x, global0.x), true), vec4<bool>(arg_2.a.b.x, false, true, true), any(vec4<bool>(true, arg_2.a.b.x, false, arg_2.a.b.x))), !vec4<bool>(global0.x, arg_1.x, false, var_0.a.b.x)), !arg_1.x | ((true == global0.x) && true))));
    global0 = vec3<bool>(arg_2.a.b.x, any(!vec4<bool>(global0.x, false, true, any(vec2<bool>(false, false)))), true);
    return (min(abs(var_1.x), arg_2.a.c.a.x) & ~38183u) > arg_2.a.d.a.x;
}

fn func_1() -> vec3<bool> {
    global0 = !select(vec3<bool>(true, true, true), select(!vec3<bool>(global0.x, true, global0.x), vec3<bool>(any(vec2<bool>(global0.x, global0.x)), true, false), vec3<bool>(func_2(vec2<f32>(-1476f, -1627f), vec2<bool>(global0.x, global0.x), Struct_3(Struct_2(u_input.c, global0.zy, Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], 1u), -4950i, vec2<f32>(-843f, 1000f)), Struct_1(vec2<u32>(21866u, 26753u), u_input.d, vec2<f32>(449f, 811f)), vec2<f32>(-1812f, -826f))), -16774i), true, global0.x | true)), true);
    let var_0 = Struct_1(~(~(~vec2<u32>(global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49102u, 30u)], 30u)]))), ~_wgslsmith_div_i32(_wgslsmith_div_i32(1i, 1i), -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-974f, -469f))))))));
    let var_1 = Struct_4(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.x, 30u)], 30u)], Struct_3(Struct_2(vec2<i32>(~(-2147483647i), var_0.b), select(global0.xy, global0.xy, select(global0.x, global0.x, true)), Struct_1(countOneBits(var_0.a), -29729i, vec2<f32>(var_0.c.x, var_0.c.x)), Struct_1(var_0.a << (var_0.a % vec2<u32>(32u)), 1i, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-474f, var_0.c.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c - vec2<f32>(var_0.c.x, var_0.c.x)) * var_0.c))), 417f, abs(~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(0u, 30u)] & 4294967295u, var_0.a.x)), -44694i);
    global0 = !(!select(!select(vec3<bool>(true, false, true), vec3<bool>(false, var_1.b.a.b.x, false), global0.x), select(vec3<bool>(true, true, true), select(vec3<bool>(true, global0.x, var_1.b.a.b.x), vec3<bool>(global0.x, true, global0.x), false), true), vec3<bool>(true, true, !global0.x)));
    var var_2 = ~_wgslsmith_mod_u32(var_1.a ^ 31599u, min(firstTrailingBit(1u), ~0u));
    return !(!select(select(select(vec3<bool>(var_1.b.a.b.x, global0.x, var_1.b.a.b.x), vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, true, var_1.b.a.b.x)), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, var_1.b.a.b.x, true), false), true), vec3<bool>(false, global0.x, true), vec3<bool>(var_1.b.a.b.x, var_0.b != var_1.b.a.d.b, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !func_1();
    global0 = !vec3<bool>(!(any(vec4<bool>(true, global0.x, global0.x, true)) || true), global0.x, select(true, true, any(!vec3<bool>(global0.x, global0.x, global0.x))));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1084f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(445f))))), -2276f, _wgslsmith_f_op_f32(-791f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(186f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(697f)) - _wgslsmith_f_op_f32(trunc(-477f)))))));
    let var_1 = _wgslsmith_f_op_f32(var_0.x + var_0.x);
    let var_2 = all(!vec3<bool>(global0.x, any(select(vec4<bool>(false, true, false, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), global0.x)), any(!vec4<bool>(false, true, global0.x, false))));
    global0 = vec3<bool>(true, all(select(vec2<bool>(false || var_2, true), select(global0.zx, func_1().yy, vec2<bool>(var_2, var_2)), select(vec2<bool>(false, var_2), global0.xz, global0.xy))), global0.x);
    let var_3 = ~vec4<u32>(~countOneBits(~23870u), 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22069u, 30u)], 30u)], 4294967295u), ~(~vec3<u32>(4294967295u, 4294967295u, 40204u))), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)], 30u)]);
    let var_4 = countOneBits(var_3.xzw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), max(abs(_wgslsmith_dot_vec2_i32(min(vec2<i32>(44757i, -55991i), u_input.c), countOneBits(u_input.c))), ~_wgslsmith_mult_i32(min(u_input.c.x, u_input.a), 0i)), 223f, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0.x, -298f, true)))), -236f));
}

