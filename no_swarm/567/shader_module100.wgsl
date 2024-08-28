struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(false, vec3<bool>(false, false, true)), Struct_1(true, vec3<bool>(false, false, true)), Struct_1(false, vec3<bool>(false, false, true)), Struct_1(false, vec3<bool>(true, false, false)), Struct_1(false, vec3<bool>(false, true, true)), Struct_1(false, vec3<bool>(false, true, true)), Struct_1(true, vec3<bool>(false, false, true)), Struct_1(true, vec3<bool>(false, true, false)), Struct_1(false, vec3<bool>(false, false, false)), Struct_1(false, vec3<bool>(true, true, true)), Struct_1(false, vec3<bool>(true, true, false)), Struct_1(false, vec3<bool>(true, false, false)), Struct_1(true, vec3<bool>(true, false, true)), Struct_1(true, vec3<bool>(true, true, false)), Struct_1(false, vec3<bool>(true, false, false)), Struct_1(false, vec3<bool>(true, true, true)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    global0 = array<Struct_1, 16>();
    let var_0 = Struct_3(arg_0.b.xx, vec4<bool>(71224u > (_wgslsmith_clamp_u32(arg_0.b.x, 1u, arg_0.b.x) << (_wgslsmith_sub_u32(arg_0.b.x, 4294967295u) % 32u)), !arg_2.b.x, true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.c))) > arg_0.a.x), Struct_1(false, select(select(vec3<bool>(false, true, arg_1.b.x), vec3<bool>(arg_1.a, arg_1.a, false), select(vec3<bool>(arg_2.b.x, false, arg_1.b.x), vec3<bool>(true, false, true), arg_1.b)), select(!vec3<bool>(false, arg_1.b.x, false), vec3<bool>(arg_2.a, true, false), select(arg_2.b, arg_2.b, arg_2.a)), !vec3<bool>(false, true, arg_1.b.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.a.x, arg_0.c))) * arg_0.a))));
    let var_2 = ~0u;
    let var_3 = true;
    return vec3<u32>(_wgslsmith_add_u32(arg_0.b.x, var_0.a.x), arg_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.a.x, select(var_0.a.x, arg_0.b.x, var_3), arg_0.b.x), _wgslsmith_add_vec4_u32(arg_0.b, vec4<u32>(max(4294967295u, 0u), var_2 ^ 4294967295u, _wgslsmith_add_u32(arg_0.b.x, var_0.a.x), _wgslsmith_sub_u32(arg_0.b.x, arg_0.b.x)))));
}

fn func_2(arg_0: Struct_1) -> bool {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    var var_0 = u_input.a;
    let var_1 = ~(~(vec3<u32>(1u, min(4294967295u, 0u), 0u) >> (_wgslsmith_clamp_vec3_u32(func_3(Struct_2(vec2<f32>(-518f, -1507f), vec4<u32>(1u, 46802u, 0u, 0u), -1073f, vec2<i32>(u_input.a, u_input.a)), Struct_1(false, vec3<bool>(true, arg_0.a, arg_0.b.x)), global0[_wgslsmith_index_u32(18609u, 16u)]), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u))));
    global0 = array<Struct_1, 16>();
    return any(vec4<bool>(true, arg_0.b.x | any(arg_0.b.yx), !arg_0.b.x, false)) & (301f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(435f)))));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_2 {
    let var_0 = select(vec2<bool>(func_2(Struct_1(false, vec3<bool>(true, arg_1, false))), true), select(!vec2<bool>(arg_1, arg_1), !vec2<bool>(all(vec3<bool>(false, true, arg_1)), all(vec2<bool>(arg_1, true))), vec2<bool>(all(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, true), vec2<bool>(false, true))), 2884f >= _wgslsmith_f_op_f32(floor(727f)))), true);
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(ceil(268f))))) + _wgslsmith_f_op_f32(-arg_0)));
    global0 = array<Struct_1, 16>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(select(-547f, 1000f, true)), var_2)))), abs(~(~vec4<u32>(13843u, 1u, 1u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(step(-851f, -724f))))), vec2<i32>(i32(-1i) * -24187i, ~2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(step(-107f, _wgslsmith_f_op_f32(min(310f, -933f)))), any(vec3<bool>(true, true, true)) != true);
    var var_1 = vec4<bool>(!any(vec3<bool>(true, false, all(vec3<bool>(false, false, true)))), !(!(0u >= ~var_0.b.x)), false, false);
    var var_2 = Struct_1(all(!(!vec4<bool>(var_1.x, true, var_1.x, var_1.x))), var_1.yxy);
    var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f + var_0.c))) - -564f)), var_2.b.x);
    var_2 = global0[_wgslsmith_index_u32(max(var_0.b.x, 4294967295u), 16u)];
    var var_3 = 0i;
    let var_4 = _wgslsmith_div_i32(u_input.a & 27151i, -min(-5983i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_0.d.x, 2147483647i), ~24258i, -8487i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.yy, _wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.b.x, var_0.b.x, 0u) ^ var_0.b.xzx, var_0.b.yyy) | var_0.b.yxz);
}

