struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21>;

var<private> global1: array<f32, 9> = array<f32, 9>(274f, -637f, 1343f, -1000f, 1656f, -1530f, -583f, -1142f, -705f);

var<private> global2: array<Struct_5, 3>;

var<private> global3: array<Struct_2, 32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: i32) -> vec2<f32> {
    let var_0 = u_input.d;
    var var_1 = ~arg_1;
    var var_2 = -_wgslsmith_sub_i32(33395i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 22740i | var_0.x), var_0.yy));
    global1 = array<f32, 9>();
    var_1 = firstLeadingBit(1i);
    return vec2<f32>(global1[_wgslsmith_index_u32(~1u ^ ~(~(~u_input.c.x)), 9u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 9u)])));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    global1 = array<f32, 9>();
    global3 = array<Struct_2, 32>();
    global1 = array<f32, 9>();
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(max(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], _wgslsmith_f_op_vec2_f32(func_3(false, ~2147483647i)))));
    let var_1 = global2[_wgslsmith_index_u32(~(u_input.c.x ^ ~20556u), 3u)];
    return reverseBits(35587u);
}

fn func_4(arg_0: vec2<i32>) -> Struct_5 {
    global0 = array<vec2<f32>, 21>();
    global0 = array<vec2<f32>, 21>();
    global3 = array<Struct_2, 32>();
    let var_0 = u_input.c.x >> (4294967295u % 32u);
    var var_1 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0, 9u)]) < 600f;
    return Struct_5(-32617i, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_0, 9u)], -163f, global1[_wgslsmith_index_u32(u_input.c.x, 9u)], global1[_wgslsmith_index_u32(1u, 9u)]), vec4<f32>(-2281f, global1[_wgslsmith_index_u32(u_input.c.x, 9u)], global1[_wgslsmith_index_u32(0u, 9u)], -927f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], 1599f, 355f, global1[_wgslsmith_index_u32(2817u, 9u)]) - vec4<f32>(global1[_wgslsmith_index_u32(33316u, 9u)], global1[_wgslsmith_index_u32(var_0, 9u)], global1[_wgslsmith_index_u32(u_input.c.x, 9u)], 1310f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(var_0, 9u)], global1[_wgslsmith_index_u32(21168u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], -1570f))))), vec4<i32>(~_wgslsmith_div_i32(u_input.d.x, 0i), (-2147483647i & u_input.d.x) | 1i, _wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(arg_0.x, -35160i))), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(arg_0.x, arg_0.x)), ~arg_0))), Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(var_0 != u_input.c.x, true)), Struct_2(abs(u_input.d), vec4<u32>(min(33565u, u_input.c.x), var_0, var_0, u_input.c.x), global0[_wgslsmith_index_u32(var_0, 21u)], ~(-2147483647i), vec3<f32>(-770f, global1[_wgslsmith_index_u32(u_input.c.x, 9u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 9u)] - -820f)))));
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> Struct_3 {
    global0 = array<vec2<f32>, 21>();
    global3 = array<Struct_2, 32>();
    let var_0 = ~(-2147483647i);
    let var_1 = 1i >> (~u_input.c.x % 32u);
    var var_2 = func_4(max(u_input.b >> (vec2<u32>(func_2(global1[_wgslsmith_index_u32(66678u, 9u)], vec4<bool>(false, false, true, false)), u_input.c.x) % vec2<u32>(32u)), ~(-vec2<i32>(-2147483647i, -17800i)) >> (~vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c.x & 24786u, 9u)];
    let var_1 = !select(vec2<bool>(true, (u_input.d.x == u_input.b.x) | true), vec2<bool>(true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)));
    global3 = array<Struct_2, 32>();
    global3 = array<Struct_2, 32>();
    var var_2 = func_1(Struct_4(global0[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-857f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(u_input.c.x, 9u)]) - 877f), var_1.x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1142f - 774f)), global1[_wgslsmith_index_u32(u_input.c.x, 9u)]))));
    global2 = array<Struct_5, 3>();
    var var_3 = Struct_2(var_2.b.a, vec4<u32>(var_2.b.b.x, _wgslsmith_div_u32(firstLeadingBit(~0u), 4294967295u), u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, func_2(func_4(var_2.b.a.xw).b.b.x, !vec4<bool>(false, var_2.a.x, false, false)))), var_2.b.c, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, ~(-40704i), -1000i), vec3<i32>(var_2.b.a.x, select(u_input.b.x ^ var_2.b.d, 65110i, true), 5302i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(80049u, 9u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 9u)]), var_1.x)), global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(var_2.b.b.xzw, var_2.b.b.xwz), 8638u), 9u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2772f, var_2.b.e.x)) * _wgslsmith_f_op_f32(step(1000f, var_2.b.e.x))))));
    global0 = array<vec2<f32>, 21>();
    var var_4 = Struct_4(vec2<f32>(global1[_wgslsmith_index_u32(~var_3.b.x >> (_wgslsmith_mod_u32(var_2.b.b.x, 56099u) % 32u), 9u)], -2955f));
    let x = u_input.a;
    s_output = StorageBuffer(~0u, vec4<u32>(33396u, ~(~var_3.b.x >> (~u_input.c.x % 32u)), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_3.b.wx, vec2<u32>(4294967295u, u_input.c.x)), ~65743u), 4294967295u), var_3.a.zyw, firstTrailingBit(~vec2<u32>(18934u, 1u)));
}

