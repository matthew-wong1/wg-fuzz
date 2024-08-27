struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true));

var<private> global3: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    global0 = Struct_1(!all(select(vec2<bool>(global0.a, global1.a), select(vec2<bool>(global0.a, true), vec2<bool>(global1.a, global1.a), vec2<bool>(global0.a, global0.a)), !vec2<bool>(global1.a, global0.a))));
    return any(select(vec3<bool>(global0.a, global1.a, true), !(!vec3<bool>(global0.a, global1.a, global1.a)), vec3<bool>(true, false, global0.a & (-54403i < u_input.b.x))));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), _wgslsmith_add_i32(1i, -(u_input.a.x & -2147483647i)));
    let var_1 = global2[_wgslsmith_index_u32(select(142u, ~1u, !global1.a), 18u)];
    let var_2 = Struct_1(any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, global0.a, var_1.a), select(true, false, true)), vec4<bool>(var_1.a, global1.a, false, any(vec3<bool>(var_1.a, false, global1.a))), !vec4<bool>(global1.a, true, var_1.a, false))));
    global1 = global2[_wgslsmith_index_u32(~reverseBits(1u), 18u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(352f, 662f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1154f, -173f))) + vec2<f32>(-1297f, 583f)), func_3()))))));
    return var_3.x;
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(-238f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(128f)))), _wgslsmith_f_op_f32(func_2()), global1.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(784f))))));
    global2 = array<Struct_1, 18>();
    var var_1 = arg_0;
    let var_2 = select(!select(select(vec3<bool>(true, false, global0.a), vec3<bool>(global1.a, false, global0.a), select(vec3<bool>(var_1.a, arg_0.a, arg_0.a), vec3<bool>(false, false, true), true)), select(!vec3<bool>(global1.a, global1.a, false), !vec3<bool>(arg_0.a, true, false), true), vec3<bool>(!global1.a, var_1.a, true)), !select(select(vec3<bool>(global0.a, global0.a, var_1.a), !vec3<bool>(false, true, global0.a), select(vec3<bool>(global0.a, true, global1.a), vec3<bool>(false, global1.a, arg_0.a), false)), select(vec3<bool>(false, true, arg_0.a), !vec3<bool>(var_1.a, global0.a, var_1.a), true), vec3<bool>(true, any(vec3<bool>(global0.a, false, true)), u_input.a.x >= 6102i)), select(select(vec3<bool>(all(vec3<bool>(global0.a, var_1.a, global0.a)), any(vec3<bool>(arg_0.a, global1.a, false)), 26899i > u_input.b.x), !select(vec3<bool>(true, global1.a, arg_0.a), vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(false, global1.a, global0.a)), !(!global0.a)), !vec3<bool>(global0.a, !var_1.a, any(vec2<bool>(global1.a, global1.a))), var_1.a));
    global1 = arg_0;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(func_1(global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 17769u, 24207u), vec3<u32>(1u, 4294967295u, 4294967295u))), 18u)]), _wgslsmith_div_u32(~(~0u), ~10559u)), 18u)];
    global3 = !all(vec4<bool>(!global0.a || all(vec3<bool>(false, false, false)), 4664i > max(u_input.a.x, u_input.a.x), true, firstLeadingBit(u_input.a.x) >= ~14164i));
    global0 = global2[_wgslsmith_index_u32(abs(~reverseBits(0u)), 18u)];
    var var_1 = global2[_wgslsmith_index_u32(min(25187u, _wgslsmith_dot_vec2_u32(~select(vec2<u32>(1u, 4294967295u), ~vec2<u32>(46197u, 1u), true), vec2<u32>(27030u, 60124u))), 18u)];
    let var_2 = Struct_1(!(!all(!vec3<bool>(var_1.a, global1.a, var_0.a))));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(abs(718f)), -213f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1189f, var_2.a))) * -925f)), -1i, _wgslsmith_sub_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 1u), max(abs(vec4<u32>(51186u, 1u, 51898u, 26471u)), vec4<u32>(20114u, 0u, 4294967295u, 6219u)), select(!vec4<bool>(true, var_1.a, global0.a, false), !vec4<bool>(global0.a, true, false, false), true)), vec4<u32>(func_1(global2[_wgslsmith_index_u32(firstLeadingBit(7021u), 18u)]), ~(~61346u), 1u | _wgslsmith_dot_vec4_u32(vec4<u32>(6649u, 0u, 1u, 0u), vec4<u32>(165449u, 22910u, 23004u, 4294967295u)), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_div_u32(4294967295u, 30139u), _wgslsmith_add_u32(0u, 1u)))));
}

