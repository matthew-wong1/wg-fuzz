struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = -_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(-18379i, -1i, 1i), vec3<i32>(0i, 2147483647i, 1i), vec3<i32>(-31460i, -64357i, -1i)), select(min(-vec3<i32>(4139i, 0i, 34904i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-19485i, -2147483647i, 0i), vec3<i32>(-24116i, -1i, -55539i), vec3<i32>(40028i, -5130i, -2147483647i))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-78200i, -35239i), vec2<i32>(-18416i, -2147483647i)), _wgslsmith_mult_i32(-3291i, 1i), 2147483647i), true && (arg_2.x == arg_2.x)));
    var var_1 = _wgslsmith_add_u32(firstTrailingBit(~min(u_input.a, u_input.a) >> (~min(u_input.a, 4294967295u) % 32u)), max(_wgslsmith_add_u32(~(4294967295u >> (u_input.a % 32u)), reverseBits(49074u)), _wgslsmith_add_u32(max(u_input.a, firstLeadingBit(0u)), _wgslsmith_div_u32(1u, 1u) & u_input.a)));
    global0 = vec2<bool>(!(global0.x != (false || arg_3.a.x)), arg_0.a.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 933f) + arg_2.x);
    let var_3 = u_input.a;
    return _wgslsmith_f_op_f32(-var_2);
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_3(func_2(Struct_1(vec4<bool>(true, true, global0.x, arg_1))), Struct_2(Struct_1(vec4<bool>(global0.x, false, arg_1, true))), vec4<f32>(-1000f, 2591f, -1436f, 1162f), Struct_1(vec4<bool>(arg_0.x, arg_1, false, true)))), _wgslsmith_f_op_f32(-1367f - _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(floor(-736f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(330f, 1000f, -2267f) * vec3<f32>(-1101f, 337f, 2021f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-720f, -254f, 583f), vec3<f32>(259f, 1454f, 1000f))))), !vec3<bool>(true, !arg_1, !global0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(143f, -645f, global0.x)), 2583f, _wgslsmith_f_op_f32(-545f - -1215f)))));
    var var_1 = vec2<u32>(_wgslsmith_div_u32(0u, 39883u), 4294967295u) & vec2<u32>(_wgslsmith_add_u32(~(~44000u), ~(u_input.a >> (0u % 32u))), arg_2.x & _wgslsmith_mod_u32(_wgslsmith_sub_u32(66421u, u_input.a), 1u));
    let var_2 = 52603u;
    var var_3 = Struct_2(Struct_1(vec4<bool>(arg_1, false, true, arg_0.x)));
    let var_4 = true;
    return select(vec2<bool>(any(vec2<bool>(arg_0.x, !var_3.a.a.x)), true), vec2<bool>(select(!var_3.a.a.x, var_3.a.a.x, false), all(select(!vec4<bool>(true, var_4, true, true), select(vec4<bool>(true, var_4, false, arg_1), var_3.a.a, vec4<bool>(global0.x, true, false, var_4)), false))), all(!arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec2<bool>(true, true), func_1(vec2<bool>(all(vec4<bool>(global0.x, global0.x, global0.x, false)), true), (reverseBits(1u) <= max(u_input.a, 62843u)) | global0.x, ~vec4<u32>(~1u, _wgslsmith_clamp_u32(u_input.a, 4294967295u, 66260u), min(u_input.a, 34237u), u_input.a)), global0.x);
    var var_0 = func_2(func_2(Struct_1(select(vec4<bool>(true, global0.x, true, global0.x), !vec4<bool>(global0.x, global0.x, global0.x, true), false & global0.x))));
    var var_1 = var_0.a.wx;
    let var_2 = vec4<u32>(50904u, 0u, ~u_input.a << (38781u % 32u), u_input.a);
    let var_3 = func_2(Struct_1(!var_0.a));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + -1807f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(var_3, Struct_2(Struct_1(var_0.a)), vec4<f32>(-810f, -1117f, -225f, -959f), var_3)), _wgslsmith_f_op_f32(trunc(156f))))), all(select(vec4<bool>(false, true, var_0.a.x, var_1.x), vec4<bool>(false, var_0.a.x, global0.x, var_1.x), vec4<bool>(false, global0.x, true, true))))), 156f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~_wgslsmith_sub_i32(199i, 27389i) ^ _wgslsmith_dot_vec3_i32(select(vec3<i32>(18451i, 17525i, -2147483647i), vec3<i32>(2147483647i, -1182i, 2147483647i), false), -vec3<i32>(-1i, 81521i, -24644i)), -28837i), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_3, Struct_2(var_3), vec4<f32>(_wgslsmith_f_op_f32(1121f + 1532f), 962f, 2181f, _wgslsmith_f_op_f32(select(-677f, var_4.x, false))), func_2(func_2(var_3)))) + var_4.x));
}

