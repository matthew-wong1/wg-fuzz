struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<u32, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> vec4<bool> {
    var var_0 = Struct_2(all(arg_0));
    global1 = array<u32, 16>();
    let var_1 = Struct_1(select(vec3<bool>(~u_input.b.x < 46878u, true, all(select(arg_0, arg_0, global0.x))), vec3<bool>(any(!arg_0), global0.x, var_0.a), true));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1528f * _wgslsmith_f_op_f32(floor(-1129f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-805f)), -489f))) * _wgslsmith_f_op_f32(max(857f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-223f - -1000f)))))));
    var var_3 = Struct_1(select(select(vec3<bool>(true, true, var_0.a), select(select(var_1.a, var_1.a, false), vec3<bool>(true, arg_0.x, false), !var_1.a.x), vec3<bool>(false, any(arg_0), true)), select(!vec3<bool>(global0.x, global0.x, true), var_1.a, !all(vec4<bool>(var_1.a.x, global0.x, arg_0.x, var_1.a.x))), var_1.a));
    return !select(!select(!vec4<bool>(var_0.a, false, true, arg_0.x), vec4<bool>(var_0.a, global0.x, global0.x, true), vec4<bool>(var_1.a.x, global0.x, global0.x, global0.x)), vec4<bool>(false, any(select(vec4<bool>(var_3.a.x, var_1.a.x, true, var_0.a), vec4<bool>(true, var_1.a.x, var_0.a, arg_0.x), false)), true, true), vec4<bool>(false, true, true, var_0.a));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(!arg_2.a.x);
    var var_1 = arg_2;
    global1 = array<u32, 16>();
    return Struct_2(all(select(select(func_3(vec2<bool>(true, var_0.a)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, arg_1.a), arg_2.a.x), func_3(vec2<bool>(false, arg_1.a))), vec4<bool>(arg_2.a.x || arg_2.a.x, any(var_1.a), true, all(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_1.a, arg_2.a.x))), global0.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(vec3<i32>(29634i, _wgslsmith_mod_i32(reverseBits(select(u_input.a, u_input.a, false)), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, 39922i, 301i), vec3<i32>(-2147483647i, -44283i, u_input.a) | vec3<i32>(u_input.a, -5513i, u_input.a))), select(abs(u_input.a), -(~2147483647i), global0.x | all(vec4<bool>(global0.x, true, global0.x, global0.x)))), Struct_2(false), Struct_1(select(select(select(vec3<bool>(global0.x, false, true), vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, global0.x, false)), vec3<bool>(true, true, true), !vec3<bool>(false, global0.x, global0.x)), !(!vec3<bool>(global0.x, true, true)), vec3<bool>(-43048i > u_input.a, global0.x | global0.x, any(vec3<bool>(false, global0.x, false))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(434f - -284f));
    var var_2 = u_input.a;
    global1 = array<u32, 16>();
    let var_3 = Struct_2(!(~(~18475u) <= ~countOneBits(u_input.b.x)));
    return Struct_1(vec3<bool>(any(select(vec4<bool>(var_3.a, true, true, var_3.a), vec4<bool>(true, var_0.a, false, true), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)] < u_input.b.x)), var_0.a, !var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(1498f)), _wgslsmith_f_op_f32(799f - -987f), _wgslsmith_div_f32(-2539f, 144f)) * vec3<f32>(_wgslsmith_div_f32(143f, -175f), 499f, 1644f))))));
    global0 = vec2<bool>(true, all(!(!select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x)))));
    global1 = array<u32, 16>();
    let var_1 = u_input.b.x;
    let var_2 = func_1();
    global0 = !(!func_1().a.xy);
    global0 = func_1().a.yz;
    var var_3 = vec3<bool>(all(func_3(vec2<bool>(false, u_input.a == 1i))), u_input.b.x >= (~_wgslsmith_div_u32(81377u, var_1) | _wgslsmith_clamp_u32(u_input.b.x >> (var_1 % 32u), 0u ^ u_input.b.x, global1[_wgslsmith_index_u32(max(1u, 25360u), 16u)])), var_2.a.x);
    var var_4 = !(!func_1().a.x && global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1122f, var_0.x, -278f) - vec4<f32>(var_0.x, -467f, 1000f, 3339f)), vec4<f32>(1000f, 804f, -319f, 2165f), var_3.x))))), 47445u);
}

