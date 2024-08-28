struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(8991i, i32(-2147483648), 0i, -1i, 45245i, 1i, 4464i, -1i, 0i, 2147483647i, -30509i, i32(-2147483648), -10968i, 0i, -53749i, 1i, 1i, 14310i, 1i);

var<private> global1: array<u32, 20>;

var<private> global2: array<vec4<i32>, 11>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> u32 {
    let var_0 = -1i;
    global2 = array<vec4<i32>, 11>();
    var var_1 = select(select(!arg_0.c, false, false && any(select(vec2<bool>(true, arg_0.c), vec2<bool>(arg_0.c, false), vec2<bool>(false, arg_0.d)))), !arg_0.c, true);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x))), arg_0.b, all(!select(vec4<bool>(false, arg_0.d, true, arg_0.d), vec4<bool>(arg_0.c, false, false, arg_0.c), arg_1.x < -674f)), arg_0.c);
    let var_3 = u_input.c.wy;
    return 42888u | max(~(~global1[_wgslsmith_index_u32(u_input.a << (76662u % 32u), 20u)]), global1[_wgslsmith_index_u32(abs(1u), 20u)]);
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_sub_u32(~_wgslsmith_mult_u32(3933u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.d, global1[_wgslsmith_index_u32(u_input.d, 20u)], u_input.c.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 20u)], 20u)]), vec4<u32>(u_input.a, u_input.d, 54588u, 0u), false), u_input.c)), global1[_wgslsmith_index_u32(~func_3(Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1230f, -2196f), vec2<f32>(-334f, -1352f))), vec3<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(101422u, 20u)], 19u)], 2147483647i, -2147483647i) | vec3<i32>(5260i, global0[_wgslsmith_index_u32(4294967295u, 19u)], 12361i), true, true), vec4<f32>(-153f, _wgslsmith_f_op_f32(f32(-1f) * -299f), 1f, _wgslsmith_f_op_f32(sign(-324f)))), 20u)]);
    global0 = array<i32, 19>();
    var var_1 = ~(_wgslsmith_mult_u32(1u, ~4294967295u ^ u_input.c.x) & ~_wgslsmith_clamp_u32(5393u, ~0u, 42351u));
    var var_2 = vec3<bool>(-790f <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1339f - -210f), _wgslsmith_f_op_f32(select(272f, -1177f, true))) - _wgslsmith_f_op_f32(1002f * -176f)), false, all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))) & true);
    let var_3 = 459f;
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2658f, var_3))))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(359f, _wgslsmith_div_f32(var_3, var_3)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1800f, var_3) + _wgslsmith_div_vec2_f32(vec2<f32>(var_3, 241f), vec2<f32>(var_3, var_3)))))), countOneBits(~(~select(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 0i, u_input.b), vec3<i32>(-1i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 20u)], 19u)], 1i), vec3<bool>(var_2.x, var_2.x, true)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_3)), _wgslsmith_f_op_f32(154f * 555f))) <= -309f, any(select(vec2<bool>(select(var_2.x, false, true), 1u < u_input.a), vec2<bool>(true, true || var_2.x), select(select(vec2<bool>(var_2.x, var_2.x), var_2.yy, vec2<bool>(false, false)), vec2<bool>(var_2.x, var_2.x), select(var_2.yy, var_2.yy, vec2<bool>(true, true))))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = arg_1;
    global2 = array<vec4<i32>, 11>();
    let var_1 = u_input.c.zxy;
    var var_2 = arg_2;
    let var_3 = !func_2().d;
    return (u_input.c.yzy ^ abs(u_input.c.yyy)) | ~(~(~var_1) ^ ~vec3<u32>(1u, 44929u, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    global0 = array<i32, 19>();
    var var_2 = _wgslsmith_dot_vec3_u32(func_4(func_1(1678f), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1139f, -204f), vec2<f32>(425f, 958f), vec2<bool>(false, true))), vec2<f32>(var_1, 471f)), ~vec3<i32>(635i, u_input.b, u_input.b) << ((vec3<u32>(u_input.d, 1u, u_input.a) & u_input.c.xwy) % vec3<u32>(32u)), all(vec3<bool>(true, true, true)), !(var_1 < var_1)), Struct_1(vec2<u32>(0u, u_input.a))), u_input.c.xwy);
    global1 = array<u32, 20>();
    global0 = array<i32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(57504u, _wgslsmith_dot_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(u_input.d, 20u)], global1[_wgslsmith_index_u32(102108u, 20u)]), u_input.c.zz), ~vec2<u32>(0u, 81831u), vec2<bool>(false, false)), vec2<u32>(u_input.a, 0u))));
}

