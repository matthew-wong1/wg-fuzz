struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-521f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -407f) + _wgslsmith_f_op_f32(1000f + -238f))), 1598f)));
    let var_2 = ~u_input.a;
    var var_3 = arg_0;
    var var_4 = ~abs(~(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, var_0.a, u_input.a.x, 14608u), vec4<u32>(var_0.a, 1u, arg_0.a, 66094u)) ^ _wgslsmith_add_vec4_u32(var_2, u_input.a)));
    return !(!all(!(!vec4<bool>(var_3.c.x, var_3.c.x, arg_0.c.x, arg_0.c.x))));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = select(select(!(!(!vec3<bool>(true, arg_2.c.x, false))), vec3<bool>(false, false, true), -arg_2.b >= -60890i), vec3<bool>(arg_2.a == 4294967295u, !func_2(arg_2), true), select(false || arg_2.c.x, true, _wgslsmith_add_u32(8856u, arg_2.a) <= 29097u));
    let var_1 = arg_2;
    let var_2 = var_1;
    let var_3 = arg_2;
    let var_4 = -13914i;
    return var_3.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<bool>) -> u32 {
    var var_0 = select(!select(!arg_2, select(!vec3<bool>(arg_2.x, arg_2.x, true), arg_2, vec3<bool>(arg_2.x, true, true)), !(!arg_2)), select(select(arg_2, vec3<bool>(!arg_2.x, !arg_2.x, arg_0.c.x), true), arg_2, false), select(select(!(!vec3<bool>(true, true, arg_0.c.x)), select(vec3<bool>(true, true, arg_0.c.x), vec3<bool>(arg_2.x, true, true), select(arg_2, vec3<bool>(true, arg_0.c.x, false), false)), arg_2), vec3<bool>(arg_2.x, true, false), true));
    let var_1 = arg_0;
    var_0 = vec3<bool>(true, false, var_0.x);
    var var_2 = -201f;
    var var_3 = ~_wgslsmith_add_i32(arg_0.b, arg_1.x);
    return _wgslsmith_mult_u32(~(countOneBits(min(arg_0.a, 4294967295u)) ^ 26042u), 52085u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_u32(~(vec3<u32>(0u, 4294967295u, 58001u) ^ ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(~(~4294967295u), 4294967295u, func_1(-259f, vec4<u32>(2446u, u_input.a.x, u_input.a.x, 0u) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), Struct_1(30098u, 0i, vec2<bool>(false, false))))) & vec3<u32>(abs(countOneBits(func_3(Struct_1(0u, 2147483647i, vec2<bool>(false, true)), vec3<i32>(-2147483647i, 2147483647i, -16450i), vec3<bool>(true, false, false)))), 1u, 2523u);
    let var_1 = -(~0i);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(335f, 1399f))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(2213f, -363f), vec2<f32>(-410f, 1809f)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-615f, 1242f) + vec2<f32>(-686f, -1206f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-484f, 961f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1736f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(126f - -339f) - -405f))));
    var_2 = vec2<f32>(1248f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_2.x), var_2.x) - _wgslsmith_f_op_f32(-var_2.x)));
    var var_3 = select(~_wgslsmith_sub_vec2_i32(abs(firstLeadingBit(vec2<i32>(42520i, var_1))), vec2<i32>(var_1 & -7334i, -var_1)), ~((_wgslsmith_sub_vec2_i32(vec2<i32>(26191i, var_1), vec2<i32>(0i, var_1)) << (var_0.yz % vec2<u32>(32u))) >> (vec2<u32>(u_input.a.x ^ var_0.x, _wgslsmith_div_u32(var_0.x, 1u)) % vec2<u32>(32u))), !select(vec2<bool>(true, all(vec2<bool>(false, true))), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))));
    var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, 3637i), vec3<i32>(-32017i, var_3.x, -2147483647i))), ~(-2147483647i)), reverseBits(-select(~vec2<i32>(1i, var_3.x), select(vec2<i32>(var_1, var_3.x), vec2<i32>(-7514i, var_3.x), vec2<bool>(false, false)), vec2<bool>(true, true))));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, -1366f, var_2.x))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 1000f, var_2.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-221f, 721f, -263f)))), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1104f)))), var_2.x, _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(-212f - _wgslsmith_f_op_f32(step(-830f, var_2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(951f, var_4.x, 1945f) + var_4)), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_div_f32(var_2.x, -743f), 2369f)) * var_4), ~(~67170u));
}

