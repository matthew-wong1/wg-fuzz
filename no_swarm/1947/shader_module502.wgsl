struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1836f, -1241f) * _wgslsmith_f_op_f32(abs(425f))))), _wgslsmith_f_op_f32(ceil(1563f)), -809f);
    global0 = array<vec2<bool>, 4>();
    let var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 4u)];
    let var_2 = ~firstLeadingBit(~(~vec4<u32>(1u, 27849u, u_input.a, 4294967295u)));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -189f)))) + var_0.x), vec2<i32>(u_input.b.x, ~u_input.b.x | 1i), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, -801f, var_0.x))))))));
    return Struct_2(i32(-1i) * -40119i, 0i, select(~abs(~4294967295u), ~_wgslsmith_add_u32(1u, 12514u), !(min(u_input.b.x, 6535i) != u_input.b.x)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> Struct_3 {
    var var_0 = _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(arg_2, arg_2));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -644f), _wgslsmith_f_op_f32(f32(-1f) * -319f)))), u_input.b, arg_0.c);
    global0 = array<vec2<bool>, 4>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, -225f))));
    var var_3 = false;
    return Struct_3(_wgslsmith_f_op_f32(arg_0.a + -656f), ~(-reverseBits(vec2<i32>(arg_0.b.x, arg_1.b)) & _wgslsmith_div_vec2_i32(vec2<i32>(-89159i, 9512i), ~vec2<i32>(25158i, -2147483647i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c + _wgslsmith_f_op_vec3_f32(arg_0.c - var_1.c)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c - vec3<f32>(arg_0.a, var_1.c.x, -1205f))))));
}

fn func_1() -> u32 {
    global0 = array<vec2<bool>, 4>();
    global0 = array<vec2<bool>, 4>();
    let var_0 = select(vec2<u32>(max(_wgslsmith_div_u32(u_input.a, _wgslsmith_sub_u32(u_input.a, 0u)), 32535u), 1u), ~(vec2<u32>(u_input.a, ~0u) ^ vec2<u32>(u_input.a, ~u_input.a)), global0[_wgslsmith_index_u32(~1u, 4u)]);
    var var_1 = func_3(Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-169f - -608f)))), vec2<i32>(~firstLeadingBit(14741i), u_input.b.x >> (4294967295u % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1473f, -384f, -1210f) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(669f, 832f, -754f)))) - vec3<f32>(-478f, 540f, _wgslsmith_f_op_f32(f32(-1f) * -477f)))), func_2(), var_0.x);
    let var_2 = 2147483647i;
    return max(var_0.x, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = true == !all(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 1u), 4u)]);
    let var_2 = vec4<bool>(true, var_1, !(!all(vec4<bool>(true, true, true, var_1))), var_1);
    var var_3 = !(min(u_input.a, 14436u) < u_input.a);
    let var_4 = 1i;
    var var_5 = ~_wgslsmith_add_vec4_u32(select(~(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 107049u) % vec4<u32>(32u))), abs(vec4<u32>(0u, u_input.a, 1u, 0u) | vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)), select(true, var_1 && false, false)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, 28025u, u_input.a) | vec4<u32>(1u, 91171u, 0u, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(751u, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, 19417u))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, 1i), vec3<i32>(43594i, 56412i, -32925i)), abs(_wgslsmith_sub_i32(38186i, u_input.b.x)))), -887f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-349f - -1491f))), _wgslsmith_f_op_f32(abs(-875f))) + _wgslsmith_div_f32(-372f, 491f)));
}

