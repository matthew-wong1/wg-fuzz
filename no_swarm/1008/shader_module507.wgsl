struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_div_i32(2147483647i, -reverseBits(~_wgslsmith_mod_i32(2147483647i, 1i)));
    return reverseBits(-3822i);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(1716u, vec4<u32>(u_input.c, u_input.b, 21517u, ~(~(12046u | u_input.c))));
    global0 = !(!(!select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, false), true))));
    var var_1 = vec4<bool>(!(any(select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), true)) && true), false, global0.x, all(!vec4<bool>(u_input.b < u_input.b, true, !global0.x, select(true, global0.x, global0.x))));
    let var_2 = min(firstTrailingBit(1i << (_wgslsmith_sub_u32(1u, u_input.b) % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), abs(-vec2<i32>(-1i, 0i))));
    let var_3 = ~var_0.a;
    return 1000f;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: f32, arg_3: bool) -> vec4<f32> {
    global0 = select(select(select(select(!vec2<bool>(true, arg_3), vec2<bool>(true, false), true & arg_3), vec2<bool>(arg_3, arg_0 > 38604i), select(vec2<bool>(arg_3, global0.x), select(vec2<bool>(true, false), vec2<bool>(false, global0.x), vec2<bool>(arg_3, global0.x)), global0.x)), !(!(!vec2<bool>(arg_3, true))), !(!(!vec2<bool>(global0.x, false)))), !select(vec2<bool>(arg_3, all(vec2<bool>(global0.x, arg_3))), !select(vec2<bool>(true, arg_3), vec2<bool>(false, global0.x), true), _wgslsmith_f_op_f32(func_3()) >= _wgslsmith_f_op_f32(-arg_2)), vec2<bool>(true || (arg_3 && false), global0.x));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2));
    var var_1 = Struct_1(~_wgslsmith_div_u32(u_input.b, ~(~4294967295u)), ~(~vec4<u32>(arg_1.x, 1u, u_input.c, _wgslsmith_mod_u32(u_input.b, arg_1.x))));
    var var_2 = ~(-1i);
    var var_3 = -arg_0;
    return vec4<f32>(-2205f, _wgslsmith_f_op_f32(1746f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1407f) + 1482f), arg_2, true))), _wgslsmith_f_op_f32(-arg_2), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(199f, 872f, -917f, -640f), vec4<f32>(-830f, 1266f, 296f, -320f), global0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(~8487i, u_input.a.zy, _wgslsmith_f_op_f32(max(-281f, -956f)), !global0.x)))));
    var_0 = -max(max(2147483647i, ~_wgslsmith_clamp_i32(10600i, 0i, 9114i)), _wgslsmith_dot_vec3_i32(reverseBits(countOneBits(vec3<i32>(3747i, -1i, 56944i))), vec3<i32>(max(-1755i, 3439i), 1i, -7893i)));
    var_0 = ~(~43638i);
    var_0 = min(~(-32962i), firstTrailingBit(min(-2147483647i, max(-70459i, 32281i)))) << (reverseBits(64348u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~(~abs(i32(-1i) * -32030i)), ~vec3<i32>(2147483647i, -1i, func_1()), 38218u, ~vec4<u32>(firstLeadingBit(4294967295u), u_input.b, 79478u, max(select(1u, u_input.a.x, true), _wgslsmith_mod_u32(u_input.a.x, u_input.b))));
}

