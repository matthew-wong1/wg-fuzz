struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 30>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    global0 = array<vec4<bool>, 30>();
    return u_input.b;
}

fn func_3() -> f32 {
    let var_0 = 40201u;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1137f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-829f + -558f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(809f * -291f)))) + -689f));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_1 * var_1)))));
    var var_3 = Struct_1(false);
    var_2 = var_1;
    return var_2.x;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> bool {
    let var_0 = min(-firstTrailingBit(select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, -26901i), vec2<i32>(-2147483647i, u_input.b)), vec2<i32>(u_input.b, u_input.b), vec2<bool>(true, true))), -vec2<i32>(-22571i, 2147483647i));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 1093f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, arg_1)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1039f), -1000f))));
    let var_2 = _wgslsmith_sub_u32(4294967295u, 0u);
    var var_3 = !arg_2.a;
    global0 = array<vec4<bool>, 30>();
    return false;
}

fn func_2() -> f32 {
    let var_0 = Struct_1(func_4(true == (_wgslsmith_f_op_f32(-563f + 1000f) == _wgslsmith_f_op_f32(func_3())), 2204f, Struct_1(true)));
    global0 = array<vec4<bool>, 30>();
    let var_1 = 912f;
    var var_2 = vec4<bool>(false, false, false, all(!vec4<bool>(false, var_0.a, any(vec3<bool>(var_0.a, var_0.a, var_0.a)), true)));
    var var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(~select(~u_input.a, _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(1u, u_input.a.x), u_input.a), var_0.a), select(min(vec2<u32>(14198u, 12275u), vec2<u32>(u_input.a.x, u_input.a.x)) & vec2<u32>(93746u, u_input.a.x), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(64760u, u_input.a.x), u_input.a, u_input.a)), var_0.a)), 4098u, 74633u & select(23376u, u_input.a.x, var_2.x), u_input.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(abs(u_input.b) ^ ~18969i, _wgslsmith_add_i32(-1i, u_input.b), 10459i), select(vec3<i32>(countOneBits(-1i), max(-2147483647i, u_input.b << (21423u % 32u)), -22177i), vec3<i32>(u_input.b, 2147483647i, _wgslsmith_sub_i32(1i | u_input.b, func_1(vec2<bool>(false, true)))), false), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(~0i, u_input.b, u_input.b), countOneBits(firstLeadingBit(vec3<i32>(1044i, u_input.b, u_input.b)))), vec3<i32>(u_input.b, 32171i, u_input.b)));
    global0 = array<vec4<bool>, 30>();
    let var_1 = Struct_1(!all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))));
    let var_2 = _wgslsmith_add_u32(~31555u, ~firstTrailingBit(abs(_wgslsmith_mod_u32(u_input.a.x, 0u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-775f, -525f, 461f, -860f)) + vec4<f32>(652f, -1191f, -1433f, 758f))))), vec4<f32>(_wgslsmith_f_op_f32(1567f - _wgslsmith_f_op_f32(-588f - -643f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(657f, _wgslsmith_f_op_f32(f32(-1f) * -216f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-304f)) * 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1344f, 1379f)))) + 1172f)), !select(!vec4<bool>(var_1.a, var_1.a, true, var_1.a), !select(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(var_2, 30u)], var_1.a), !global0[_wgslsmith_index_u32(23577u, 30u)])));
    let var_4 = Struct_1(!any(vec2<bool>(true, true)));
    var var_5 = _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(278f - var_3.x)))));
    var var_6 = Struct_1(var_1.a);
    var var_7 = Struct_1(var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(~(-u_input.b)), 10453i, 2147483647i, 0i), vec4<u32>(~(~_wgslsmith_clamp_u32(var_2, var_2, 38909u)), ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 43020u, u_input.a.x));
}

