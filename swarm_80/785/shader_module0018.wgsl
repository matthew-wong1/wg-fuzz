struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec4<i32>) -> bool {
    var var_0 = Struct_1(true);
    global1 = Struct_1(false);
    global0 = select(select(!vec3<bool>(any(global0.zx), true, arg_1.x == u_input.a), vec3<bool>(global0.x, true, global0.x), !vec3<bool>(all(vec2<bool>(true, false)), true, true)), !select(!(!vec3<bool>(global1.a, true, global0.x)), vec3<bool>(true, select(var_0.a, true, false), true), select(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, false, true), vec3<bool>(var_0.a, var_0.a, true)), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global1.a, false), false), !vec3<bool>(global0.x, false, true))), vec3<bool>(!select(global1.a, true, true), true, any(global0.zx)));
    global1 = Struct_1(all(vec2<bool>(any(select(vec4<bool>(true, var_0.a, true, global0.x), vec4<bool>(true, var_0.a, false, global1.a), vec4<bool>(false, global1.a, var_0.a, global0.x))), global1.a)));
    var var_1 = Struct_1(global1.a);
    return false;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> vec2<u32> {
    global1 = Struct_1(all(!vec4<bool>(true, global1.a, true, !global0.x)));
    let var_0 = Struct_1(func_3(vec3<u32>(arg_1, 34816u, 27946u) >> ((abs(vec3<u32>(u_input.a, 0u, u_input.a)) | vec3<u32>(arg_1, arg_1, 4294967295u)) % vec3<u32>(32u)), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 4294967295u), vec2<u32>(u_input.a, 1u)), _wgslsmith_mod_u32(~u_input.a, 120775u), min(~1u, ~1u), 0u), vec4<i32>(u_input.b, ~u_input.b, -44016i & select(24039i, u_input.b, global0.x), ~u_input.b)));
    let var_1 = Struct_1(!(all(!vec3<bool>(global0.x, true, false)) && !(!var_0.a)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -342f) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-503f)))), _wgslsmith_div_f32(775f, _wgslsmith_f_op_f32(-arg_0.x))));
    let var_3 = ~(~select(4294967295u ^ arg_1, u_input.a >> (1u % 32u), true));
    return select(firstLeadingBit(vec2<u32>(1u, _wgslsmith_mult_u32(arg_1, 75735u))) ^ vec2<u32>(27839u, _wgslsmith_clamp_u32(min(30899u, arg_1), arg_1, 70542u)), ~(~firstTrailingBit(max(vec2<u32>(arg_1, 29054u), vec2<u32>(1u, 4294967295u)))), global0.zx);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(u_input.b > 2147483647i);
    var var_1 = ~abs(~arg_2);
    var var_2 = select(global0.xx, vec2<bool>(!all(global0.zy), !var_0.a), vec2<bool>(arg_0, !(true & (u_input.b <= u_input.b))));
    return Struct_1(true);
}

fn func_1() -> u32 {
    global1 = Struct_1(select(~max(-4193i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-65480i, -2147483647i, 1i), ~vec3<i32>(u_input.b, -1i, u_input.b)), global1.a) > u_input.b);
    global0 = !(!select(select(!vec3<bool>(false, global0.x, global0.x), !vec3<bool>(global0.x, false, false), global1.a && global0.x), vec3<bool>(false, global1.a, false), true));
    global1 = func_4(any(!(!vec3<bool>(true, global0.x, global1.a))), 48688u, ~func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(838f, 200f)), u_input.a), Struct_1(global1.a));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 158f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-521f)))), _wgslsmith_f_op_f32(-796f * _wgslsmith_f_op_f32(sign(-1000f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 1000f, -731f, -1340f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(703f, -329f, -683f, -1146f)))), any(!vec2<bool>(global0.x, global0.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 922f, -204f, 1017f)))))));
    let var_1 = func_4(-163f <= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -914f)))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, ~14714u), select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), ~vec2<u32>(50667u, 4294967295u)), reverseBits(~vec2<u32>(u_input.a, 1u)), global0.xx)), ~min(abs(~vec2<u32>(4294967295u, u_input.a)), select(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(4027u, 1u) ^ vec2<u32>(u_input.a, 0u), false != global1.a)), Struct_1(false));
    return firstLeadingBit(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec3<bool>(true, true, false), !(!select(!vec3<bool>(global0.x, global0.x, global1.a), !vec3<bool>(false, global0.x, false), !vec3<bool>(false, global1.a, false))), vec3<bool>(global0.x, true, true));
    global1 = Struct_1(true);
    let var_0 = Struct_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(func_1());
}

