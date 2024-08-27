struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(528f, 156f);

var<private> global1: array<bool, 19>;

var<private> global2: Struct_1;

var<private> global3: u32 = 4294967295u;

var<private> global4: Struct_1 = Struct_1(vec4<f32>(-621f, 1618f, 520f, -199f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = -_wgslsmith_mod_i32(4489i, 21550i);
    global4 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1071f, -884f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global2.a.x)), -654f, arg_2.e)) * -709f), 1128f, global0.x));
    var var_1 = var_0;
    var var_2 = abs(u_input.e.x) | (-(~_wgslsmith_div_i32(u_input.e.x, 19652i)) ^ var_0);
    global3 = arg_1.d.x;
    return max(~countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_2.d, vec2<u32>(u_input.b.x, 0u), arg_1.d), vec2<u32>(u_input.c, arg_2.d.x))), _wgslsmith_mod_u32(25628u, 4294967295u));
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-global2.a)), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global4.a.x * -777f), _wgslsmith_f_op_f32(global4.a.x * 818f), global0.x, _wgslsmith_f_op_f32(min(-815f, 518f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-427f, -188f, 453f, global2.a.x) + global2.a)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global4.a, vec4<f32>(-702f, -1774f, -672f, global4.a.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.a * vec4<f32>(global2.a.x, global0.x, global4.a.x, global0.x)), _wgslsmith_f_op_vec4_f32(-global4.a)))), ~(~(~(~vec2<u32>(78778u, 33373u)))), global1[_wgslsmith_index_u32(min(86134u, u_input.c), 19u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_0.c.a))), global4.a, all(vec3<bool>(true, true, true)))) * global4.a));
    var var_2 = !var_0.e;
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, 654f, _wgslsmith_f_op_f32(abs(519f)), -1183f)));
    let var_3 = -u_input.e;
    return vec3<bool>(!global1[_wgslsmith_index_u32(~func_3(Struct_1(var_0.c.a), Struct_2(var_0.b, var_0.a, Struct_1(vec4<f32>(var_0.a.a.x, -492f, 587f, global0.x)), u_input.a, false), Struct_2(Struct_1(var_1.a), var_1, var_0.c, vec2<u32>(42770u, u_input.c), var_0.e)), 19u)], select(false, !any(vec4<bool>(var_0.e, global1[_wgslsmith_index_u32(u_input.c, 19u)], false, true)), false), u_input.e.x <= var_3.x);
}

fn func_1(arg_0: bool) -> vec2<bool> {
    let var_0 = 1u;
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a)));
    var var_1 = u_input.e.x;
    global1 = array<bool, 19>();
    global1 = array<bool, 19>();
    return vec2<bool>(any(select(func_2(), !(!vec3<bool>(arg_0, true, false)), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(trunc(global4.a.x)) > global4.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.a.yy - global4.a.xz) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-208f, global0.x) + global2.a.zw));
    var var_0 = select(!select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], false), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 19u)], global1[_wgslsmith_index_u32(48642u, 19u)]), vec2<bool>(false, false), !vec2<bool>(global1[_wgslsmith_index_u32(53185u, 19u)], false)), any(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 19u)], global1[_wgslsmith_index_u32(31200u, 19u)], false, global1[_wgslsmith_index_u32(39971u, 19u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 19u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global1[_wgslsmith_index_u32(1u, 19u)])))), select(!(!func_1(global1[_wgslsmith_index_u32(u_input.d, 19u)])), func_2().yy, vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 27387u, 0u), vec3<u32>(u_input.a.x, 42456u, u_input.c)), 19u)] == false, global1[_wgslsmith_index_u32(~(~8528u), 19u)])), all(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 19u)], false, false, global1[_wgslsmith_index_u32(4294967295u, 19u)]), global1[_wgslsmith_index_u32(u_input.a.x, 19u)]))));
    let var_1 = false | func_2().x;
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.a.x, global4.a.x)) * _wgslsmith_f_op_f32(select(-933f, global4.a.x, var_0.x)))), global4.a.x, global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(541f, 690f)) * global0.x) - global4.a.x)));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2.a.x, _wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a.x)))) + -1240f)));
    let x = u_input.a;
    s_output = StorageBuffer(83132u, 24747u);
}

