struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_2(-1000f);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), var_0.a)) - _wgslsmith_f_op_f32(var_0.a - var_0.a)));
    let var_2 = vec4<u32>(u_input.a, 97639u, firstLeadingBit(0u), abs(23190u));
    return vec3<f32>(-1065f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(433f))))), 115f);
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> vec4<f32> {
    let var_0 = 16778u | u_input.a;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-704f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -534f)) - _wgslsmith_f_op_vec3_f32(func_3())) * vec3<f32>(-2646f, arg_0, arg_0)), arg_1.x, vec4<f32>(2059f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3()).x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-120f + _wgslsmith_f_op_f32(step(409f, arg_0)))))));
    var var_2 = countOneBits(~_wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a, var_0), vec4<u32>(u_input.a, 28339u, 54978u, 74577u)), abs(vec4<u32>(var_0, u_input.a, 91090u, u_input.a)), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, u_input.a, 4294967295u, u_input.a), vec4<u32>(var_0, 9733u, 6577u, var_0), vec4<u32>(21118u, 4294967295u, 8862u, u_input.a)), vec4<u32>(var_0, var_0, var_0, 4294967295u))));
    let var_3 = var_1.c.xx;
    let var_4 = !arg_1;
    return vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-702f)))), 154f, _wgslsmith_f_op_f32(157f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.x)) - var_3.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(403f)) + _wgslsmith_f_op_vec3_f32(func_3()).x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(167f - 804f), _wgslsmith_div_f32(-1000f, -1318f), false)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1051f, _wgslsmith_f_op_f32(min(-1887f, -1369f)), 1219f)))), false, _wgslsmith_f_op_vec4_f32(arg_0 + vec4<f32>(var_0, 232f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -670f)), 1807f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: u32) -> i32 {
    var var_0 = -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(-1i, 2147483647i, 1i)), vec3<i32>(1i, 1i, 1i)), vec3<i32>(16212i, 0i, -52446i));
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(-135f, vec4<bool>(true, false, false, false)))))), ~(_wgslsmith_mult_vec2_u32(vec2<u32>(15015u, arg_3), select(arg_0, vec2<u32>(arg_3, arg_3), vec2<bool>(false, true))) & ~(arg_0 >> (arg_0 % vec2<u32>(32u)))), -2147483647i, _wgslsmith_clamp_vec4_i32(-select(abs(vec4<i32>(41817i, 0i, 290i, -39317i)), vec4<i32>(1i, 1i, 1i, 1i), false), abs(max(vec4<i32>(2147483647i, 9497i, 2147483647i, 43675i) >> (vec4<u32>(54408u, u_input.a, arg_0.x, u_input.a) % vec4<u32>(32u)), abs(vec4<i32>(34865i, 36449i, -5867i, 1855i)))), -select(vec4<i32>(-35660i, -1i, 0i, -1i), -vec4<i32>(1i, 1i, 2147483647i, 2147483647i), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true))));
    var var_2 = !var_1.b;
    let var_3 = _wgslsmith_f_op_f32(-arg_1.a);
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-558f)) - _wgslsmith_f_op_f32(var_1.c.x + 150f)), 1000f, _wgslsmith_f_op_vec3_f32(func_3()).x))), any(vec4<bool>(var_1.b & false, select(true, var_1.b, true && var_1.b), false, any(vec4<bool>(true, var_1.b, false, true)))), _wgslsmith_f_op_vec4_f32(select(var_1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-456f, 1069f, 192f, var_1.a.x), _wgslsmith_f_op_vec4_f32(-var_1.c)) * vec4<f32>(-502f, arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -516f), arg_1.a)), !(!(!vec4<bool>(var_1.b, var_1.b, var_1.b, true))))));
    return i32(-1i) * -40971i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(floor(320f)))), _wgslsmith_f_op_f32(min(1585f, _wgslsmith_f_op_f32(165f - -1501f))))) - -1561f));
    var var_2 = -_wgslsmith_dot_vec3_i32(vec3<i32>(-25512i, 0i, select(1i, ~0i, true)), vec3<i32>(-74674i, func_1(vec2<u32>(u_input.a, u_input.a), Struct_2(-2198f), ~vec3<u32>(u_input.a, 8621u, u_input.a), ~u_input.a), abs(~(-1i))));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(671f, 994f))))) >= -741f;
    let var_3 = var_1.a;
    var var_4 = !(!select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(false, false, false), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1831f))), !vec4<bool>(var_4.x, var_4.x, false, false))).yx));
}

