struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(1855f, vec4<bool>(true, false, true, true), vec2<i32>(-1i, 2147483647i)), Struct_1(-113f, vec4<bool>(true, false, true, false), vec2<i32>(2147483647i, -22072i)), Struct_1(155f, vec4<bool>(true, true, false, true), vec2<i32>(-12125i, 2147483647i)), Struct_1(1263f, vec4<bool>(true, true, true, false), vec2<i32>(290i, -1i)));

var<private> global1: u32;

var<private> global2: array<f32, 3> = array<f32, 3>(442f, -810f, 1000f);

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<bool>) -> vec4<bool> {
    global1 = 71787u;
    let var_0 = _wgslsmith_sub_u32(~5038u, _wgslsmith_div_u32(u_input.d.x ^ ~min(23626u, 2487u), 1u));
    let var_1 = ~0i;
    global0 = array<Struct_1, 4>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0, 3u)])), !vec4<bool>(true, true, any(select(vec4<bool>(global3.x, arg_0.x, true, arg_0.x), vec4<bool>(true, global3.x, false, false), true)), !global3.x), -_wgslsmith_div_vec2_i32(~firstLeadingBit(vec2<i32>(-2147483647i, -2147483647i)), firstTrailingBit(~vec2<i32>(var_1, u_input.a))));
    return vec4<bool>(var_1 == 1i, !global3.x, u_input.b.x != (_wgslsmith_add_u32(u_input.d.x, 0u) & u_input.e), var_2.b.x);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: vec3<i32>) -> i32 {
    let var_0 = countOneBits(u_input.d);
    let var_1 = true;
    let var_2 = all(vec3<bool>(all(vec2<bool>(global3.x, !arg_2)), abs(u_input.a) < arg_0, global3.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-593f, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, 44936u), 3u)], _wgslsmith_f_op_f32(-102f - global2[_wgslsmith_index_u32(var_0.x, 3u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(833f, 330f, global2[_wgslsmith_index_u32(u_input.d.x, 3u)]) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1949f, global2[_wgslsmith_index_u32(31468u, 3u)], 290f) * vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(var_0.x, 3u)], 1107f))), true)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-577f, -145f, 118f)))) - vec3<f32>(_wgslsmith_f_op_f32(997f * global2[_wgslsmith_index_u32(u_input.e, 3u)]), 335f, 738f))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(trunc(-723f)), select(select(vec4<bool>(all(global3.xw), true, !arg_2, true), vec4<bool>(arg_1, any(vec4<bool>(var_1, arg_2, global3.x, arg_1)), true, var_1), select(vec4<bool>(false, global3.x, arg_2, false), func_2(vec3<bool>(global3.x, var_1, false)), true)), select(select(func_2(vec3<bool>(arg_1, false, arg_2)), !vec4<bool>(global3.x, global3.x, global3.x, global3.x), true), vec4<bool>(u_input.a != arg_0, false, all(vec3<bool>(var_1, false, false)), any(vec3<bool>(var_2, var_1, true))), any(!vec3<bool>(var_2, arg_1, true))), arg_1), -_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.a), arg_3.zz));
    return max(arg_0, max(1i, _wgslsmith_add_i32(25532i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, u_input.a), _wgslsmith_sub_vec2_i32(arg_3.xy, var_4.c)))));
}

fn func_1(arg_0: vec3<u32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.e & _wgslsmith_div_u32(27542u, 4294967295u), 3u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~u_input.c.x, 3u)] + global2[_wgslsmith_index_u32(62803u, 3u)]))), 805f), select(func_2(global3.ywx), vec4<bool>(all(vec4<bool>(global3.x, true, true, global3.x)), global3.x, !global3.x, arg_0.x > 1u), global3.x), vec2<i32>(86113i >> (~_wgslsmith_mod_u32(arg_0.x, u_input.b.x) % 32u), max(_wgslsmith_div_i32(1i, ~u_input.a), func_3(i32(-1i) * -15975i, !global3.x, global3.x, max(vec3<i32>(17379i, 0i, 2147483647i), vec3<i32>(-1i, u_input.a, 2147483647i))))));
    global2 = array<f32, 3>();
    global1 = arg_0.x;
    global2 = array<f32, 3>();
    let var_1 = Struct_3(var_0);
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!(!(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 3u)] - global2[_wgslsmith_index_u32(7465u, 3u)]) >= 1000f)), func_1(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.d.x), vec3<u32>(35146u, u_input.d.x, u_input.b.x), vec3<u32>(u_input.c.x, 8243u, 12534u)))), global3.x);
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(~(~(u_input.e | 1u)), 4u)]);
    let var_2 = -1145f;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(397f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_2, var_2, global3.x)), var_2))), vec4<bool>(all(!vec2<bool>(var_1.a.b.x, false)), any(var_1.a.b), var_1.a.b.x, select(false, true, all(global3.yyw))), var_1.a.c));
    global1 = firstTrailingBit(firstTrailingBit(u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(abs(u_input.d), _wgslsmith_add_vec4_u32(~u_input.d, ~u_input.d)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.b.x, u_input.e, _wgslsmith_div_u32(1u, u_input.d.x), firstLeadingBit(1u)), u_input.d, countOneBits(u_input.d))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(290f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(525f + var_3.a.a))))))));
}

