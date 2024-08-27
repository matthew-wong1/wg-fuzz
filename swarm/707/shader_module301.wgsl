struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-364f, 219f, -220f), vec3<f32>(-3352f, 1079f, -776f), vec3<f32>(835f, 311f, -1000f), vec3<f32>(2293f, -383f, 1000f), vec3<f32>(1290f, 1383f, -219f), vec3<f32>(437f, 339f, 146f), vec3<f32>(-227f, 637f, 342f), vec3<f32>(826f, 2887f, -1000f), vec3<f32>(1408f, -538f, -2227f), vec3<f32>(1956f, 196f, 863f), vec3<f32>(826f, 130f, -2046f), vec3<f32>(-458f, -489f, -777f), vec3<f32>(-539f, 2224f, -893f));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = u_input.a;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-716f + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1290f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(174f)))));
    let var_2 = select(select(vec2<bool>(all(vec3<bool>(true, true, true)), false | any(vec3<bool>(true, true, false))), vec2<bool>(false, true), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, true, true)))), !vec2<bool>(-2147483647i == _wgslsmith_clamp_i32(-1i, -2147483647i, 2147483647i), !(45281u < u_input.a)), any(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))));
    let var_3 = -334f;
    global1 = array<vec3<f32>, 13>();
    return var_2.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_f32(min(-193f, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(sign(418f)))));
    global0 = 358f;
    var var_0 = Struct_2(_wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, arg_1.x), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a), arg_1.xz)), vec2<u32>(countOneBits(1u), 12955u) & reverseBits(~arg_1.zx)), arg_3, true, !select(select(!vec4<bool>(arg_2, true, arg_3.a, arg_3.a), !vec4<bool>(arg_2, arg_3.a, true, false), select(vec4<bool>(arg_3.a, false, arg_3.a, arg_2), vec4<bool>(arg_3.a, true, arg_2, arg_3.a), false)), select(vec4<bool>(arg_2, false, arg_2, true), select(vec4<bool>(true, false, true, arg_3.a), vec4<bool>(false, false, arg_3.a, arg_2), true), vec4<bool>(true, true, true, true)), select(!vec4<bool>(false, arg_2, arg_3.a, arg_2), select(vec4<bool>(arg_3.a, arg_3.a, true, true), vec4<bool>(false, arg_2, arg_3.a, true), false), select(vec4<bool>(false, false, arg_3.a, true), vec4<bool>(false, false, arg_2, arg_3.a), false))));
    var var_1 = arg_0.x;
    var var_2 = ~arg_1.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x);
}

fn func_2(arg_0: Struct_2) -> f32 {
    global1 = array<vec3<f32>, 13>();
    let var_0 = arg_0.d.yz;
    let var_1 = Struct_1(all(vec3<bool>(true, true, all(!vec3<bool>(false, false, arg_0.b.a)))));
    global1 = array<vec3<f32>, 13>();
    let var_2 = vec3<bool>(true, true, !(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2873i, 28545i), vec3<i32>(2147483647i, 1i, -12760i)) >= -11144i));
    return _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 0u, arg_0.a.x), vec4<u32>(0u, arg_0.a.x, 62800u, 4294967295u)) >> (_wgslsmith_clamp_u32(0u, u_input.a, arg_0.a.x) % 32u), 13u)])), _wgslsmith_div_vec3_u32(firstTrailingBit(firstTrailingBit(vec3<u32>(u_input.a, 32627u, 4294967295u))), ~_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, u_input.a, 4294967295u), vec3<u32>(arg_0.a.x, 10159u, 4294967295u) | vec3<u32>(arg_0.a.x, arg_0.a.x, u_input.a))), (func_3() | (true != var_0.x)) && all(var_2), arg_0.b));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(false & !arg_0.x);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1135f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-929f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(244f + -151f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1874f, -827f) + _wgslsmith_f_op_f32(func_2(Struct_2(vec2<u32>(u_input.a, u_input.a), Struct_1(true), arg_0.x, arg_0)))))), 208f);
    global1 = array<vec3<f32>, 13>();
    global1 = array<vec3<f32>, 13>();
    var var_2 = vec4<u32>(~abs(firstTrailingBit(u_input.a)), _wgslsmith_dot_vec4_u32(~vec4<u32>(2919u, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), 4813u), firstTrailingBit(vec4<u32>(~u_input.a, u_input.a, u_input.a, 4294967295u | u_input.a))), abs(u_input.a), select(firstTrailingBit(1u), u_input.a, any(select(arg_0, arg_0, false)) && false));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i << (~u_input.a % 32u);
    let var_1 = -19889i;
    var var_2 = func_1(!select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, var_1 >= 15171i, true)));
    var var_3 = func_1(vec4<bool>(var_2.a, false, func_1(!(!vec4<bool>(var_2.a, var_2.a, var_2.a, false))).a, u_input.a != firstTrailingBit(u_input.a)));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -513f) * _wgslsmith_f_op_f32(func_2(Struct_2(vec2<u32>(17297u, u_input.a), Struct_1(false), var_3.a, select(vec4<bool>(true, var_3.a, true, true), vec4<bool>(true, true, true, true), false))))), 656f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-227f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(312f + -2671f) + _wgslsmith_f_op_f32(max(-1255f, 1000f)))) * 648f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(2147483647i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, var_1 >> (u_input.a % 32u)), -_wgslsmith_div_i32(33552i, -2147483647i))));
}

