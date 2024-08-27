struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<bool>,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(1000f, 1038f, -911f, 600f), false, vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), 4294967295u);

var<private> global1: bool = false;

var<private> global2: array<f32, 2>;

var<private> global3: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(51524u, 1u, 22064u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(60227u, 68006u, 24286u), vec3<u32>(80400u, 0u, 11303u), vec3<u32>(4294967295u, 39085u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(34477u, 0u, 49544u), vec3<u32>(4294967295u, 49728u, 23264u), vec3<u32>(88444u, 43489u, 1u), vec3<u32>(2972u, 33562u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1u, 31545u, 1u), vec3<u32>(83342u, 4294967295u, 0u), vec3<u32>(0u, 27411u, 4294967295u), vec3<u32>(10166u, 4294967295u, 1u), vec3<u32>(101214u, 101466u, 1154u), vec3<u32>(0u, 20247u, 5920u), vec3<u32>(1u, 33004u, 68665u));

var<private> global4: array<vec4<u32>, 23>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    let var_0 = -638f;
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(-1276f))) - _wgslsmith_f_op_vec3_f32(max(global0.a.wyw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(1u, 2u)], var_0, -2136f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, var_0, -325f)))))));
    let var_2 = all(!select(vec2<bool>(true, true), vec2<bool>(!global0.b, any(global0.d.yww)), true));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1284f, var_1.x, var_0, 2267f) * global0.a))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(var_0, -554f, var_1.x, global2[_wgslsmith_index_u32(4294967295u, 2u)])), vec4<f32>(-1674f, global0.a.x, 343f, global2[_wgslsmith_index_u32(66684u, 2u)]))), _wgslsmith_f_op_vec4_f32(step(global0.a, global0.a)))), all(select(vec3<bool>(false || var_2, true, !global0.c.x), vec3<bool>(!global0.b, false, u_input.b.x >= global0.e), var_2)), vec4<bool>(var_2, all(!(!vec4<bool>(false, true, var_2, true))), select(true, true, var_2), global0.b), !global0.d, global0.e);
    let var_4 = var_3.c.yzy;
    return -u_input.a.x;
}

fn func_2(arg_0: i32, arg_1: bool) -> vec3<f32> {
    global3 = array<vec3<u32>, 18>();
    let var_0 = -vec3<i32>(1i, func_3(), i32(-1i) * -abs(arg_0));
    global3 = array<vec3<u32>, 18>();
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(select(vec4<i32>(0i, 0i, 0i, 1i), vec4<i32>(1i, u_input.a.x, 1i, var_0.x), vec4<bool>(false, arg_1, false, global0.d.x)), ~vec4<i32>(u_input.a.x, u_input.a.x, arg_0, var_0.x)), -(vec4<i32>(u_input.a.x, var_0.x, 80768i, u_input.a.x) << (select(vec4<u32>(global0.e, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(1u, 1u, 4294967295u, global0.e), global0.d.x) % vec4<u32>(32u)))), abs(~arg_0));
    global4 = array<vec4<u32>, 23>();
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), -879f, _wgslsmith_f_op_f32(-2222f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1129f + global0.a.x))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_3, 29072i), _wgslsmith_dot_vec2_i32(~select(u_input.a, u_input.a, global0.d.x), vec2<i32>(arg_3, arg_3))), !(!arg_0.d.x) || true));
    global2 = array<f32, 2>();
    var var_1 = firstLeadingBit(max(u_input.b, reverseBits(u_input.b)));
    let var_2 = arg_1;
    global4 = array<vec4<u32>, 23>();
    return _wgslsmith_add_u32(~(_wgslsmith_sub_u32(~var_1.x, _wgslsmith_div_u32(1u, 31525u)) >> (_wgslsmith_sub_u32(44227u, _wgslsmith_dot_vec3_u32(vec3<u32>(74405u, var_1.x, arg_0.e), vec3<u32>(var_2.e, 4294967295u, var_1.x))) % 32u)), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(global0.e, min(1u, ~u_input.b.x), 1u, u_input.b.x);
    var_0 = vec4<u32>(4294967295u, _wgslsmith_sub_u32(func_1(Struct_1(global0.a, true && global0.d.x, vec4<bool>(true, true, true, global0.b), select(global0.c, global0.d, global0.d.x), countOneBits(u_input.b.x)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1309f, global0.a.x, global0.a.x, global0.a.x) - vec4<f32>(218f, 686f, global2[_wgslsmith_index_u32(var_0.x, 2u)], global0.a.x)), global0.c.x, global0.c, vec4<bool>(global0.b, global0.b, false, global0.d.x), 11557u), u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 31418u), ~(~vec2<u32>(1u, var_0.x)))), abs(~(min(46007u, var_0.x) | 4294967295u)), _wgslsmith_mod_u32(~(~(~1u)), u_input.b.x));
    var var_1 = vec2<u32>(u_input.b.x | _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), _wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(global0.e, 91883u)));
    let var_2 = vec3<u32>(_wgslsmith_add_u32(var_0.x, ~1u), u_input.b.x, var_0.x);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(select(global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-119f, -335f, global2[_wgslsmith_index_u32(var_0.x, 2u)], global0.a.x)), select(global0.d, global0.d, all(vec3<bool>(global0.c.x, true, false)))))), all(select(!select(global0.c, global0.d, global0.d.x), global0.c, false)), vec4<bool>(any(!select(vec2<bool>(global0.c.x, false), global0.d.zy, true)), u_input.b.x >= select(var_0.x, global0.e, 64423u != u_input.b.x), any(!select(global0.d.wyx, global0.d.zyx, global0.b)), !(!(17046u <= var_0.x))), global0.d, ~_wgslsmith_sub_u32(~_wgslsmith_mod_u32(1u, var_2.x), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.ww))))));
}

