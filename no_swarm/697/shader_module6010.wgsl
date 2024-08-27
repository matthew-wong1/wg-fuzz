struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(15469i, -8420i);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = select(_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(global0.x, 23115i) ^ _wgslsmith_div_vec2_i32(u_input.c.xx, vec2<i32>(1i, 16972i))), vec2<i32>(0i, _wgslsmith_add_i32(u_input.b, u_input.c.x)) ^ u_input.c.yy), u_input.c.yy, vec2<bool>(arg_0.b, false));
    global0 = vec2<i32>(-1i) * -u_input.c.xz;
    let var_0 = Struct_1(false, any(select(select(vec2<bool>(arg_0.b, arg_1.a), vec2<bool>(false, true), vec2<bool>(arg_1.a, false)), !vec2<bool>(true, arg_0.b), !vec2<bool>(arg_0.a, arg_1.b))) || any(select(!vec3<bool>(arg_0.b, false, false), vec3<bool>(arg_0.a, arg_0.a, false), !vec3<bool>(arg_0.a, false, true))), 4294967295u);
    return _wgslsmith_sub_i32(global0.x, 2147483647i);
}

fn func_2() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1703f - 1f));
    let var_1 = u_input.c.x;
    global0 = countOneBits(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), u_input.c.zw, vec2<i32>(var_1, 11860i)) << (countOneBits(vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u)), u_input.c.wy)) | vec2<i32>(2147483647i, func_3(Struct_1(all(vec2<bool>(true, true)), all(vec3<bool>(false, true, true)), ~u_input.a), Struct_1(-773f <= var_0, true, 1u)));
    var var_2 = var_1;
    var var_3 = -2147483647i;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-837f - -436f), true)))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(global0.x <= u_input.b, false, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.d, 31570u, 1u, 0u)), ~vec4<u32>(0u, u_input.a, u_input.d, 48745u)), u_input.d), vec2<u32>(_wgslsmith_add_u32(u_input.a << (1u % 32u), ~55142u), _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.d, 1u, u_input.a, u_input.a), vec4<u32>(u_input.d, 70604u, 8474u, u_input.d)), vec4<u32>(u_input.d, 1u, u_input.a, u_input.d)))));
    return Struct_1(true, any(vec3<bool>(true, true, true)), _wgslsmith_dot_vec3_u32(~(vec3<u32>(var_0.c, var_0.c, u_input.a) >> (vec3<u32>(var_0.c, 51327u, 1u) % vec3<u32>(32u))) << (~firstLeadingBit(vec3<u32>(u_input.a, 39282u, u_input.d)) % vec3<u32>(32u)), select(vec3<u32>(firstTrailingBit(var_0.c), _wgslsmith_clamp_u32(u_input.a, var_0.c, u_input.a), 4294967295u), vec3<u32>(0u, abs(var_0.c), ~9527u), any(vec3<bool>(var_0.a, false, true)))));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global0 = u_input.c.xx;
    let var_0 = arg_1;
    let var_1 = all(vec2<bool>(var_0.a, !(!arg_1.b))) | !(!all(!vec3<bool>(arg_1.b, true, arg_1.a)));
    var var_2 = !vec3<bool>(true, var_0.a == !var_1, true);
    global0 = ~(-u_input.c.yx);
    return func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1561f, _wgslsmith_f_op_f32(f32(-1f) * -1511f)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = select(arg_2.x <= _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.x, arg_1), vec2<i32>(1i, arg_2.x))), u_input.c.yx), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))) == arg_3);
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(370f, -348f) * vec2<f32>(arg_3, arg_3)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, 215f) * vec2<f32>(arg_3, arg_3))))))));
    var var_2 = Struct_1(false, any(vec3<bool>(false, all(vec4<bool>(true, true, true, true)), false)), ~(~(arg_0.x ^ arg_0.x) >> (arg_0.x % 32u)));
    let var_3 = Struct_1(!((true || var_2.a) & true) & true, any(!vec3<bool>(select(false, false, false), false, true || var_2.b)), u_input.a);
    return func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1074f, 154f))))))), func_4(_wgslsmith_f_op_vec2_f32(func_2())));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1.b;
    let var_1 = arg_1;
    let var_2 = 1i;
    let var_3 = vec3<f32>(-364f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-391f * -562f), -524f) - _wgslsmith_f_op_f32(ceil(-234f))), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(434f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-191f + 872f) - 1374f))));
    let var_4 = arg_0;
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(Struct_1(all(vec4<bool>(true, false, false, false)), any(vec3<bool>(true, false, false)), ~1u), func_1(vec3<u32>(0u, 67442u, 1u), _wgslsmith_dot_vec3_i32(u_input.c.yzx, vec3<i32>(2147483647i, 2147483647i, u_input.c.x)), vec2<i32>(2147483647i, u_input.b) & u_input.c.ww, _wgslsmith_f_op_f32(ceil(999f))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1327f)), _wgslsmith_f_op_f32(-769f + _wgslsmith_f_op_f32(1091f - 1228f)), true))));
    let var_1 = select(select(select(vec3<bool>(all(vec2<bool>(false, false)), true, false), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), any(vec3<bool>(false, false, true))), vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), true, _wgslsmith_f_op_f32(f32(-1f) * -623f) < _wgslsmith_f_op_f32(abs(var_0))), true), !vec3<bool>(true, true, func_1(vec3<u32>(u_input.a, 65746u, u_input.a), 546i, u_input.c.xx, var_0).b), !(!(!any(vec3<bool>(true, true, false)))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, -408f, var_1.x)) + _wgslsmith_f_op_f32(var_0 + var_0)), -418f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(Struct_1(var_1.x, var_1.x, u_input.d), Struct_1(true, false, 1u))) + _wgslsmith_f_op_f32(var_0 - var_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(281f, -732f, _wgslsmith_f_op_f32(f32(-1f) * -223f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(398f, 1557f, -143f), vec3<f32>(var_0, var_0, 1183f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0, -1529f, 1547f), vec3<f32>(var_0, 1140f, var_0))), vec3<f32>(306f, var_0, 1f))));
    let var_3 = global0.x;
    var var_4 = Struct_1(func_1(_wgslsmith_div_vec3_u32(vec3<u32>(select(u_input.d, 0u, var_1.x), u_input.a & u_input.a, 16366u), ~(vec3<u32>(u_input.a, 12366u, u_input.d) ^ vec3<u32>(0u, u_input.a, 4294967295u))), 26926i, vec2<i32>(0i, -52049i), var_2.x).a, var_1.x, 38483u);
    let var_5 = Struct_1(~(~func_4(vec2<f32>(var_0, var_2.x)).c) > 4294967295u, func_1(~vec3<u32>(u_input.d, 1u, ~31138u), _wgslsmith_dot_vec4_i32((u_input.c | u_input.c) ^ -vec4<i32>(u_input.c.x, u_input.c.x, -17088i, u_input.c.x), -(vec4<i32>(u_input.b, global0.x, u_input.b, 1i) >> (vec4<u32>(0u, 56333u, 0u, 1u) % vec4<u32>(32u)))), u_input.c.yx, var_0).b, var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~(~vec2<u32>(reverseBits(4294967295u), _wgslsmith_clamp_u32(0u, var_4.c, var_5.c))));
}

