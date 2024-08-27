struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(1u, 1u, 26802u);

var<private> global1: array<i32, 19> = array<i32, 19>(-42488i, -4818i, 7451i, -1i, -1i, -34241i, -1i, -1i, 1i, -38380i, 62888i, 0i, i32(-2147483648), -13526i, 1i, -1i, 0i, 2147483647i, -1i);

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(-603f, -690f, -292f), vec3<u32>(1u, 4294967295u, 20658u), vec3<bool>(true, false, true)), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-418f, 1688f, -568f), vec3<u32>(4294967295u, 63804u, 73250u), vec3<bool>(true, true, true)), Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(-1397f, -652f, 1244f), vec3<u32>(4294967295u, 1u, 1u), vec3<bool>(true, false, false)), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(278f, 175f, -880f), vec3<u32>(19140u, 4294967295u, 45646u), vec3<bool>(true, false, false)), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(1000f, -977f, -1000f), vec3<u32>(0u, 0u, 1u), vec3<bool>(false, true, false)), Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(-1000f, 119f, 2032f), vec3<u32>(1u, 1u, 13382u), vec3<bool>(false, false, false)), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(818f, 1144f, -324f), vec3<u32>(4294967295u, 0u, 1u), vec3<bool>(true, false, true)), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(-885f, 186f, 1511f), vec3<u32>(0u, 0u, 4294967295u), vec3<bool>(false, true, true)), Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(-446f, -256f, 1000f), vec3<u32>(87406u, 4294967295u, 1u), vec3<bool>(true, false, true)), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(1190f, 1201f, 1000f), vec3<u32>(1u, 23783u, 4294967295u), vec3<bool>(false, false, false)), Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(1792f, 1177f, -874f), vec3<u32>(60942u, 4448u, 29710u), vec3<bool>(false, true, false)), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(1820f, -1968f, -1012f), vec3<u32>(0u, 76635u, 1u), vec3<bool>(false, false, true)), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(-983f, 451f, 718f), vec3<u32>(0u, 1u, 29756u), vec3<bool>(true, true, false)), Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(459f, -121f, 451f), vec3<u32>(47332u, 1u, 21274u), vec3<bool>(true, true, true)), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(547f, -362f, -633f), vec3<u32>(48192u, 72349u, 0u), vec3<bool>(false, true, true)), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(2534f, 1985f, -1269f), vec3<u32>(1u, 0u, 0u), vec3<bool>(false, false, false)), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(962f, -1000f, 1309f), vec3<u32>(4294967295u, 58969u, 1u), vec3<bool>(true, true, true)), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(1915f, 666f, -1000f), vec3<u32>(50224u, 1u, 110059u), vec3<bool>(false, false, false)), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-324f, -1889f, 1163f), vec3<u32>(4294967295u, 1u, 0u), vec3<bool>(true, true, true)), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(1000f, 239f, 1099f), vec3<u32>(1u, 0u, 1u), vec3<bool>(true, false, false)), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(1004f, -760f, 446f), vec3<u32>(39653u, 11357u, 21200u), vec3<bool>(true, true, false)), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-323f, 1022f, 1253f), vec3<u32>(1u, 0u, 1u), vec3<bool>(false, false, false)));

var<private> global3: Struct_1 = Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-1000f, 595f, 1000f), vec3<u32>(0u, 1u, 1u), vec3<bool>(false, false, true));

var<private> global4: array<vec2<i32>, 14>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_2);
    var var_1 = 4294967295u;
    let var_2 = select(global3.a.ww, vec2<bool>(all(global3.a), false), false || ((global0[_wgslsmith_index_u32(arg_1 | 37475u, 3u)] >> (global3.c.x % 32u)) <= 1u));
    var var_3 = global2[_wgslsmith_index_u32(~global3.c.x, 22u)];
    var_3 = global2[_wgslsmith_index_u32(39864u, 22u)];
    return _wgslsmith_dot_vec4_i32(~(~abs(~vec4<i32>(u_input.b, u_input.a.x, -2147483647i, -1i))), select(vec4<i32>(_wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(global3.c.x, 14u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.c.x, 3u)], 14u)] << (vec2<u32>(61164u, 44690u) % vec2<u32>(32u))), -2147483647i, 28320i, 1i), firstLeadingBit(~(~u_input.a)), true));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(firstLeadingBit(2147483647i), func_3(global3.b.x, 14221u, _wgslsmith_f_op_f32(select(global3.b.x, _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(global3.b.x, -644f)), !any(global3.d)))));
    global0 = array<u32, 3>();
    global1 = array<i32, 19>();
    var var_1 = global3.b.x;
    let var_2 = ~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(abs(select(vec4<u32>(global3.c.x, 1u, 0u, 0u), vec4<u32>(34071u, 0u, 102392u, global3.c.x), global3.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 60180u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)]) | vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], 3u)], global3.c.x, global0[_wgslsmith_index_u32(45765u, 3u)], global0[_wgslsmith_index_u32(global3.c.x, 3u)]), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global3.c.x, 3u)], 1u, 1u))), ~min(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, 33525u, global3.c.x), vec4<u32>(60187u, 4294967295u, 0u, 45869u)), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.c.x, 3u)], 3u)], 3u)], 61411u, global3.c.x, global3.c.x)));
    return global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 3u)], 22u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    global1 = array<i32, 19>();
    let var_0 = Struct_1(global3.a, arg_0.b, ~(~(~(global3.c >> (vec3<u32>(global0[_wgslsmith_index_u32(arg_0.c.x, 3u)], arg_0.c.x, 27701u) % vec3<u32>(32u))))), vec3<bool>(true, true, select(!(global3.c.x == global0[_wgslsmith_index_u32(14701u, 3u)]), global3.d.x, false)));
    let var_1 = func_2();
    let var_2 = func_2();
    let var_3 = ~global1[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(~min(arg_0.c.x, arg_0.c.x), 45879u)), 19u)];
    return (~(select(var_2.c.x, 0u, true) >> (arg_0.c.x % 32u)) >> ((var_0.c.x & var_1.c.x) % 32u)) >> (_wgslsmith_div_u32(~(~21699u) | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.c.x, var_2.c.x, arg_0.c.x), ~vec4<u32>(var_1.c.x, global0[_wgslsmith_index_u32(96430u, 3u)], arg_0.c.x, 13177u)), 1u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 22>();
    global3 = Struct_1(vec4<bool>(all(vec4<bool>(global3.d.x || global3.d.x, global3.b.x < global3.b.x, global3.d.x, global3.d.x)), global3.a.x, false, global3.d.x), _wgslsmith_f_op_vec3_f32(global3.b - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.b.x, 418f, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global3.b.x)), _wgslsmith_f_op_f32(ceil(global3.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1211f)))), global3.c, global3.a.yyx);
    var var_0 = ~(vec4<u32>(96601u, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 3u)], 85578u), 3u)], 98823u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.c.yx, vec2<u32>(global3.c.x, 1u)), 3u)], 3u)]), ~func_1(Struct_1(global3.a, vec3<f32>(global3.b.x, -301f, -1113f), vec3<u32>(global3.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53697u, 3u)], 3u)], global3.c.x), vec3<bool>(global3.d.x, false, true)), vec4<i32>(-23201i, 2706i, 1i, u_input.b)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(131851u, 3u)], 3u)], 73096u, global3.c.x, 4294967295u), vec4<u32>(1u, global3.c.x, 25505u, global3.c.x)))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13308u, 3u)], 3u)], 1u, _wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)]), 21896u), ~vec4<u32>(24690u, 7678u, 1u, 77491u)) % vec4<u32>(32u)));
    let var_1 = select(select(global3.d.zx, !global3.a.zy, global3.a.x), vec2<bool>(true, true), global3.a.x);
    let var_2 = global3.b.yz;
    let var_3 = global3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1442f, 365f, 1304f, var_2.x))))), select(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 10766u, 4705u), vec4<u32>(var_0.x, 4294967295u, global3.c.x, 5355u)) >> (~(vec4<u32>(global3.c.x, 0u, 13762u, global0[_wgslsmith_index_u32(var_0.x, 3u)]) ^ vec4<u32>(global0[_wgslsmith_index_u32(17472u, 3u)], 1u, 0u, global0[_wgslsmith_index_u32(2791u, 3u)])) % vec4<u32>(32u)), vec4<u32>(0u, ~_wgslsmith_clamp_u32(4294967295u, 64769u, global3.c.x), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.c.x ^ global0[_wgslsmith_index_u32(1u, 3u)], 1u), 3u)], min(4294967295u, global0[_wgslsmith_index_u32(25486u, 3u)]) ^ _wgslsmith_add_u32(30864u, 37898u)), true));
}

