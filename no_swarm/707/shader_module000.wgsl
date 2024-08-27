struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(2077f, 139f, 689f), vec3<f32>(-1326f, 1000f, -943f), vec3<f32>(-542f, -2401f, -922f), vec3<f32>(470f, -1866f, -572f));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_2) -> bool {
    global0 = arg_3;
    return countOneBits(u_input.b) >= -2147483647i;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(vec4<bool>(true, !func_3(Struct_1(vec4<bool>(true, false, true, false), global0.a), ~global0.b.xy, true, Struct_2(-594f, vec4<u32>(u_input.a, global0.b.x, 11764u, 1u))), false, true), _wgslsmith_div_f32(global0.a, 2446f));
    return 0i;
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> vec2<bool> {
    global0 = arg_2;
    let var_0 = arg_1.x;
    global0 = arg_2;
    global0 = Struct_2(_wgslsmith_f_op_f32(min(575f, _wgslsmith_f_op_f32(-global0.a))), ~(~(~vec4<u32>(46797u, 4294967295u, 6591u, arg_2.b.x))) ^ vec4<u32>(~_wgslsmith_sub_u32(27434u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b.x, arg_2.b.x, global0.b.x), global0.b.xxz), arg_2.b.x, firstTrailingBit(arg_2.b.x)));
    var var_1 = global1[_wgslsmith_index_u32(~33846u, 4u)];
    return select(select(vec2<bool>(false || (-29590i == var_0), true), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, all(vec3<bool>(true, false, true))), false), false), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, global0.b.x > 4294967295u, false)), !(!(global0.b.x >= arg_2.b.x))));
}

fn func_1() -> u32 {
    var var_0 = !func_4(global0.a, vec3<i32>(_wgslsmith_sub_i32(abs(u_input.b), firstLeadingBit(-4657i)), func_2(), i32(-1i) * -1i), Struct_2(_wgslsmith_f_op_f32(ceil(-573f)), countOneBits(vec4<u32>(u_input.c, global0.b.x, 4294967295u, global0.b.x)) ^ ~vec4<u32>(u_input.c, 4294967295u, global0.b.x, 27488u)), 1477f);
    let var_1 = _wgslsmith_f_op_f32(max(132f, -1000f));
    let var_2 = ~u_input.c;
    global1 = array<vec3<f32>, 4>();
    global0 = Struct_2(-242f, max(vec4<u32>(_wgslsmith_sub_u32(~u_input.c, ~1u), 0u, 1u ^ ~u_input.a, 4294967295u), global0.b));
    return min(abs(_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(u_input.a, var_2), _wgslsmith_mult_u32(global0.b.x, var_2)), _wgslsmith_mod_u32(global0.b.x, _wgslsmith_clamp_u32(var_2, 0u, 6427u)))), min(_wgslsmith_clamp_u32(~1u, 4347u, 1u), var_2 | _wgslsmith_dot_vec3_u32(firstLeadingBit(global0.b.yxw), vec3<u32>(u_input.c, global0.b.x, 44736u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, -374f))), countOneBits(~(~(~global0.b))));
    let var_1 = vec4<bool>(!(func_1() == _wgslsmith_add_u32(4294967295u, var_0.b.x)) || false, func_4(-778f, vec3<i32>(u_input.b, u_input.b, ~u_input.b | u_input.b), var_0, -360f).x, any(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(5170i < u_input.b, all(vec4<bool>(false, true, false, false)), false), !(1u < u_input.c))), func_3(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_mod_vec2_u32(select(vec2<u32>(36365u, 3382u), vec2<u32>(u_input.c, 61029u), true), var_0.b.xy), any(vec2<bool>(true, true)), var_0) || (min(select(u_input.a, 20751u, true), ~global0.b.x) <= ~var_0.b.x));
    var var_2 = -1841f;
    var var_3 = -673f;
    let var_4 = 0i > ~u_input.b;
    global0 = Struct_2(var_0.a, _wgslsmith_div_vec4_u32(var_0.b, firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 61862u, 4294967295u, 4294967295u), var_0.b, var_0.b))) << (global0.b % vec4<u32>(32u)));
    let var_5 = Struct_1(!(!select(!var_1, var_1, global0.a != var_0.a)), global0.a);
    let var_6 = Struct_2(-1000f, _wgslsmith_clamp_vec4_u32(var_0.b, vec4<u32>(max(4507u, 1u << (var_0.b.x % 32u)), var_0.b.x, ~67914u ^ max(global0.b.x, 0u), ~u_input.a & max(u_input.c, 1u)), ~var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(43990u, var_6.b.x, ~_wgslsmith_clamp_u32(1u, var_6.b.x, 21524u), 1u), vec4<u32>(~min(_wgslsmith_add_u32(u_input.c, 4115u), 1u), var_0.b.x, 1u, var_0.b.x));
}

