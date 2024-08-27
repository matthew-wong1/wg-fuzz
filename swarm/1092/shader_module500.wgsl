struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(0u, 57780u, 4294967295u, 39719u, 25583u, 48229u, 4294967295u, 84415u, 65988u, 4294967295u);

var<private> global1: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_add_i32(~(-2147483647i), -abs(-4351i));
    var var_1 = vec3<f32>(arg_1.c.x, global1.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -734f) - global1.a.c.x));
    var var_2 = -(~select(vec4<i32>(var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(3851i, u_input.b, var_0), vec3<i32>(var_0, var_0, -35427i)), 1i, u_input.e), vec4<i32>(~(-2147483647i), var_0 & -1i, -u_input.b, _wgslsmith_div_i32(u_input.b, var_0)), global1.b && true));
    var var_3 = Struct_3(global1.a, ~min(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(33566u, 43599u, global0[_wgslsmith_index_u32(30348u, 10u)]), 10u)], u_input.d) == 4294967295u);
    var var_4 = _wgslsmith_mod_i32(-1i, ~(~var_0));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), -158f));
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    global0 = array<u32, 10>();
    global1 = Struct_3(global1.a, false);
    return Struct_3(Struct_1(vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(firstLeadingBit(arg_0.x), 4294967295u)), 85783u, _wgslsmith_f_op_vec2_f32(func_3(select(select(vec2<bool>(true, false), vec2<bool>(global1.b, true), false), select(vec2<bool>(true, true), vec2<bool>(global1.b, false), vec2<bool>(false, global1.b)), vec2<bool>(true, true)), global1.a))), any(!vec3<bool>(all(vec4<bool>(false, global1.b, global1.b, true)), all(vec4<bool>(true, false, global1.b, true)), !global1.b)));
}

fn func_1() -> u32 {
    global1 = func_2(~(~u_input.c));
    let var_0 = reverseBits(u_input.e);
    global0 = array<u32, 10>();
    let var_1 = Struct_2(func_2(_wgslsmith_clamp_vec3_u32(u_input.a.xxz, vec3<u32>(0u, global1.a.a.x, u_input.a.x) | (u_input.a.zyy | u_input.c), ~u_input.a.zzy)).a, Struct_1(~(~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 19565u)), _wgslsmith_add_u32(global1.a.b, ~(~global0[_wgslsmith_index_u32(u_input.a.x, 10u)])), vec2<f32>(-131f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.c.x - 937f)))), select(~vec4<i32>(reverseBits(u_input.b), ~var_0, _wgslsmith_div_i32(-24937i, 2147483647i), u_input.e), ~vec4<i32>(_wgslsmith_div_i32(-61874i, u_input.e), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(u_input.b, -1i)), _wgslsmith_div_i32(u_input.e, -22533i)), !(!(!vec4<bool>(global1.b, global1.b, false, global1.b)))), func_2(_wgslsmith_add_vec3_u32(min(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8516u, 10u)], 10u)], 0u, 29783u), u_input.a.wxz), u_input.a.zxx)).a, func_2(vec3<u32>(_wgslsmith_div_u32(max(u_input.c.x, 1u), u_input.d), _wgslsmith_dot_vec3_u32(u_input.c, ~vec3<u32>(u_input.d, 4294967295u, u_input.d)), 27388u)).a);
    let var_2 = !select(vec3<bool>(!(u_input.e > 46888i), var_1.e.c.x == -361f, (var_1.c.x >> (u_input.d % 32u)) > -u_input.e), !(!vec3<bool>(global1.b, global1.b, false)), false);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(global1.a, !global1.b);
    var var_0 = _wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(global1.a.b, global1.a.a.x, 0u, u_input.d))), vec4<u32>(30504u, 3837u, ~(~_wgslsmith_mult_u32(u_input.c.x, 1u)), 1u));
    global0 = array<u32, 10>();
    var var_1 = var_0.ywz;
    global0 = array<u32, 10>();
    var_1 = vec3<u32>(func_1(), firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.b, global1.a.b, 0u, 0u), u_input.a) ^ 1u, 1u)), ~reverseBits(~u_input.a.x) | _wgslsmith_mult_u32(1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_add_u32(_wgslsmith_clamp_u32(~var_1.x, global1.a.a.x, _wgslsmith_sub_u32(~var_1.x, ~global0[_wgslsmith_index_u32(36640u, 10u)])), u_input.a.x), firstLeadingBit(vec3<i32>(-3181i, -_wgslsmith_dot_vec2_i32(vec2<i32>(5057i, 0i), vec2<i32>(u_input.e, 0i)), 0i)));
}

