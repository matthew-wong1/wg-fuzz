struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<i32>) -> i32 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(arg_2.a)), vec3<bool>(!(!(u_input.c == var_0)), !(!(u_input.b.x >= u_input.b.x)), true));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-arg_2.a), arg_2.b.x, Struct_1(arg_2.a, vec3<bool>(any(var_1.b), var_1.b.x, !all(arg_1))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2264f, arg_2.a, var_1.a)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, 527f, 1591f), vec3<f32>(var_1.a, 636f, var_1.a)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a, -1000f, -783f), vec3<f32>(1580f, 1562f, 1376f))))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(247f, var_1.a), -1500f)), 506f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))));
    let var_4 = -460f;
    return _wgslsmith_mod_i32(-(~_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, 2147483647i), _wgslsmith_add_i32(2147483647i, -1i))), var_0);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> vec3<bool> {
    var var_0 = true;
    let var_1 = select(select(u_input.a, ~(u_input.a << (vec4<u32>(53405u, 65158u, u_input.b.x, 1u) % vec4<u32>(32u))), vec4<bool>(!arg_1.b, true, !arg_0.b.x, false)), vec4<i32>(-2147483647i ^ _wgslsmith_div_i32(u_input.a.x, -2147483647i), -(~2147483647i), ~(-2147483647i), min(func_3(arg_1.b, vec4<bool>(arg_1.c.b.x, arg_0.b.x, true, arg_1.c.b.x), arg_1.c, u_input.a.yzw), ~2892i)), vec4<bool>(all(select(vec3<bool>(arg_1.b, arg_0.b.x, false), arg_0.b, vec3<bool>(false, true, true))), all(select(vec3<bool>(arg_0.b.x, arg_1.c.b.x, false), vec3<bool>(true, false, arg_1.b), arg_0.b)), !arg_0.b.x, u_input.b.x < _wgslsmith_div_u32(u_input.b.x, arg_3))) & u_input.a;
    var_0 = _wgslsmith_mod_i32(countOneBits(u_input.a.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(-u_input.a.wzy, u_input.a.zwz), countOneBits(_wgslsmith_sub_i32(3192i, -26533i)), max(_wgslsmith_dot_vec2_i32(u_input.a.ww, var_1.xw), var_1.x))) < u_input.c;
    var var_2 = _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(740f)), -1207f, any(vec4<bool>(arg_1.c.b.x, false, false, true)))) * 1057f)));
    var var_3 = arg_0.b.x;
    return select(vec3<bool>(false || arg_0.b.x, all(!vec2<bool>(arg_0.b.x, true)) || false, !(!(!arg_1.b))), !(!vec3<bool>(true, arg_0.b.x, true)), arg_1.c.b);
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    var var_0 = Struct_2(arg_0.x, false, Struct_1(arg_0.x, select(!func_2(Struct_1(-465f, vec3<bool>(false, false, true)), Struct_2(arg_0.x, true, Struct_1(293f, vec3<bool>(true, false, false))), arg_0.x, 2119u), vec3<bool>(true, true, true), func_2(Struct_1(-302f, vec3<bool>(true, false, false)), Struct_2(arg_0.x, false, Struct_1(arg_0.x, vec3<bool>(false, true, true))), arg_0.x, 1u))));
    var var_1 = ~20648u;
    let var_2 = ~_wgslsmith_add_i32(~abs(-46959i >> (u_input.b.x % 32u)), -2147483647i);
    var_1 = 1u;
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), true, var_0.c);
    return _wgslsmith_f_op_f32(min(1249f, arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = 0i;
    let var_2 = _wgslsmith_f_op_f32(min(899f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1104f, 1209f) + vec2<f32>(-1324f, 223f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2253f) - 1f), -1472f))));
    var var_3 = Struct_1(585f, !(!func_2(Struct_1(-1017f, vec3<bool>(true, true, true)), Struct_2(var_2, false, Struct_1(var_2, vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(var_2 - var_2), u_input.b.x)));
    var var_4 = Struct_2(570f, var_3.b.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2))) + var_2), func_2(Struct_1(var_3.a, vec3<bool>(var_3.b.x, var_3.b.x, true)), Struct_2(500f, var_3.b.x, Struct_1(var_2, var_3.b)), var_2, _wgslsmith_div_u32(~32964u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, 16764u), u_input.b)))));
    let var_5 = -reverseBits(u_input.a.yyx);
    var var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, var_3.a, var_3.a) - vec3<f32>(-1642f, var_2, var_3.a))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.a, 669f, var_2))) * vec3<f32>(121f, 1002f, 2107f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_4.c.a, -203f, -1345f), vec3<f32>(var_3.a, -608f, 884f))) - vec3<f32>(2033f, -1508f, var_4.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, -335f, 151f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4.c.a, var_4.a, var_2)))), var_3.b.x)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(869f, var_3.a, var_3.b.x)), _wgslsmith_f_op_f32(-var_3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) * 607f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2), var_4.a)))));
    var_3 = var_4.c;
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(_wgslsmith_sub_i32(-1i, func_3(false, vec4<bool>(var_4.c.b.x, false, false, true), Struct_1(779f, vec3<bool>(true, var_3.b.x, false)), u_input.a.xyw)), ~(-u_input.a.x), reverseBits(u_input.a.x)), firstTrailingBit(countOneBits(u_input.b.x << (u_input.b.x % 32u))), vec4<i32>(abs(~u_input.c), u_input.c, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(~u_input.a.x, -u_input.a.x, -var_5.x, _wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.yx))), 2147483647i));
}

