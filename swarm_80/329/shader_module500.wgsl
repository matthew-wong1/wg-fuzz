struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_1;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: i32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(max(1682f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(165f * -1669f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(707f))))) * _wgslsmith_f_op_f32(-1763f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -407f))))));
    let var_1 = _wgslsmith_add_u32(select(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 2700u, u_input.a, u_input.a) | _wgslsmith_div_vec4_u32(vec4<u32>(28427u, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, 57390u, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, 20148u, 18194u)), u_input.a, any(vec4<bool>(true, global1.a, global1.a, !global1.a))), _wgslsmith_add_u32(4294967295u, u_input.a));
    global0 = u_input.c;
    var var_2 = Struct_1(true);
    var var_3 = Struct_1(!any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, var_2.a, true, true), true)));
    return select(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_1, arg_2, 7153i), firstTrailingBit(vec4<i32>(-35000i, u_input.b, -14125i, arg_0))), countOneBits(33158i) << (var_1 % 32u)), -33841i, ~(-3584i)), -firstTrailingBit(firstTrailingBit(vec3<i32>(arg_2, -21843i, arg_1))), vec3<bool>(!var_2.a, !var_2.a, var_2.a));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = select(((~vec4<u32>(arg_1.x, arg_1.x, 37699u, u_input.a) & (vec4<u32>(29674u, 1u, u_input.a, u_input.a) << (vec4<u32>(4294967295u, arg_1.x, arg_1.x, arg_1.x) % vec4<u32>(32u)))) ^ ~(~vec4<u32>(u_input.a, 19944u, u_input.a, arg_1.x))) ^ vec4<u32>(4294967295u, arg_1.x, 1u, arg_1.x), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 0u, 4294967295u, 0u) & _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, 0u, arg_1.x), vec4<u32>(arg_1.x, 1u, 3347u, 0u)), select(vec4<u32>(u_input.a, arg_1.x, 1u, arg_1.x) << (vec4<u32>(arg_1.x, 4294967295u, 47577u, 101858u) % vec4<u32>(32u)), vec4<u32>(4294967295u, 19824u, 1u, 44910u), true)), ~(~select(vec4<u32>(1u, 30325u, 52612u, 78455u), vec4<u32>(20256u, u_input.a, arg_1.x, u_input.a), true))), (0i < u_input.b) && !(90009u != u_input.a));
    let var_1 = func_3(u_input.c, -10134i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-4734i, ~u_input.c), -(~u_input.c)), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.c) | vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(-26520i, u_input.c), -vec2<i32>(u_input.b, u_input.b)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b) << (var_0.yz % vec2<u32>(32u)), vec2<i32>(u_input.c, u_input.b)), global1.a)));
    var var_2 = 1948u | ~abs(countOneBits(58200u) ^ _wgslsmith_div_u32(var_0.x, 8041u));
    let var_3 = vec4<bool>(!(!global1.a != global1.a), false, ((_wgslsmith_clamp_u32(4294967295u, 4294967295u, 71101u) | ~95806u) >= ~abs(4294967295u)) | any(!vec2<bool>(true, global1.a)), global1.a);
    let var_4 = Struct_1(any(var_3));
    return var_4;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: u32) -> Struct_1 {
    var var_0 = 24165u >> (arg_3 % 32u);
    global0 = abs(~(-1i));
    var var_1 = -firstLeadingBit(62401i & (-39198i << (~arg_3 % 32u)));
    let var_2 = Struct_1(0u > (_wgslsmith_div_u32(~50152u, _wgslsmith_div_u32(0u, u_input.a)) & select(1u, 1u, !arg_0.x)));
    global1 = var_2;
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~(~reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(27049i, 2147483647i, -1i, u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.c)))));
    global1 = func_4(!select(select(select(vec2<bool>(global1.a, arg_0.a), vec2<bool>(false, false), vec2<bool>(arg_2.a, false)), vec2<bool>(global1.a, false), false), !(!vec2<bool>(arg_0.a, arg_0.a)), vec2<bool>(true, arg_0.a)), Struct_1(arg_2.a), firstLeadingBit(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(54633u, u_input.a), vec2<u32>(44955u, 4294967295u)))) << (~(min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 1u)) ^ vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_clamp_u32(28285u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 12618u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 24361u)) ^ abs(vec2<u32>(u_input.a, u_input.a))), ~0u));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), -1547f, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))));
    var var_2 = abs(~(~vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(4294967295u, 40472u, 7622u)))));
    let var_3 = ~u_input.a;
    return arg_3;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32) -> StorageBuffer {
    var var_0 = countOneBits(~select(arg_1, ~(9085u << (0u % 32u)), arg_1 >= abs(arg_1)));
    var var_1 = ~48777u;
    let var_2 = func_5(Struct_1(_wgslsmith_mod_u32(abs(21374u), _wgslsmith_mod_u32(u_input.a, 80111u)) < 17283u), _wgslsmith_f_op_f32(-240f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1f)), func_4(select(select(vec2<bool>(true, true), !vec2<bool>(global1.a, arg_0), !vec2<bool>(true, arg_0)), !select(vec2<bool>(true, arg_0), vec2<bool>(false, global1.a), vec2<bool>(true, false)), u_input.a >= _wgslsmith_add_u32(u_input.a, u_input.a)), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(200f, 570f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(766f, -1127f))), ~vec2<u32>(7196u, 18922u)), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_2), vec2<u32>(u_input.a, u_input.a)) & reverseBits(vec2<u32>(4294967295u, arg_2)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 39549u) | vec2<u32>(23091u, 31166u), abs(vec2<u32>(0u, arg_1)))), 0u), Struct_1(false));
    var var_3 = firstLeadingBit(u_input.b);
    global0 = u_input.b;
    return StorageBuffer(-1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-876f, _wgslsmith_f_op_f32(-377f + -350f))), -1022f, -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_i32(1i, ~(-(-2147483647i >> ((u_input.a & 26888u) % 32u))));
    let x = u_input.a;
    s_output = func_1(global1.a, reverseBits(0u), _wgslsmith_sub_u32(u_input.a, 1u));
}

