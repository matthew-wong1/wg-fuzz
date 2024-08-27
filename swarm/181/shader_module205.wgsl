struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(423f, -14166i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - -862f), _wgslsmith_f_op_f32(step(arg_0.c.x, arg_1.c.x)))));
    var var_1 = !vec2<bool>(all(vec2<bool>(true, true)), true);
    var_1 = vec2<bool>(true, true);
    var var_2 = vec2<u32>(_wgslsmith_add_u32(1u, ~1u), ~(~_wgslsmith_mod_u32(min(10257u, 1u), _wgslsmith_clamp_u32(u_input.c.x, 895u, 4294967295u))));
    let var_3 = var_0.a;
    return all(vec4<bool>(select(-1i, var_0.b, true) == 41050i, var_1.x, var_1.x, var_1.x));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(-362f)), _wgslsmith_mult_i32(-_wgslsmith_mod_i32(countOneBits(arg_2.b), u_input.b & -1i), arg_0.x), arg_2.c);
    return 1626f;
}

fn func_1() -> i32 {
    var var_0 = ~firstTrailingBit(~76653u);
    var var_1 = true;
    var_1 = select(true, func_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -133f))), -firstLeadingBit(-1i), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-279f, 2025f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-847f, -1000f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(326f * 335f)), _wgslsmith_div_i32(-2147483647i, 2415i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(437f, 1063f) * vec2<f32>(1720f, 1251f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2477f, 1120f)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -187f) + -1060f), -_wgslsmith_mod_i32(2147483647i, 44827i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-579f, 1235f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2401f, 430f))))), select(1u > _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(6810u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 52817u, 4294967295u)), vec3<u32>(u_input.c.x, u_input.c.x, 0u)), any(vec3<bool>(true, true, true)), !(_wgslsmith_f_op_f32(f32(-1f) * -541f) != _wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.d.x, u_input.d.x, u_input.b), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), Struct_1(134f, 1i, vec2<f32>(-1000f, 1386f)))))));
    var_0 = ~(~(~firstTrailingBit(~u_input.c.x)));
    var var_2 = Struct_1(169f, ~u_input.a >> (4294967295u % 32u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-238f, _wgslsmith_f_op_f32(trunc(-691f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(198f, 361f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-354f, -245f), vec2<f32>(752f, -314f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1555f, 107f)))), vec2<bool>(true, false))), true)));
    return var_2.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(-347f, _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_sub_i32(17112i, -arg_2.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(574f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.c.x), 1356f)))));
    var var_1 = _wgslsmith_clamp_u32(~0u, countOneBits(_wgslsmith_add_u32(u_input.c.x, 37197u << (~u_input.c.x % 32u))), _wgslsmith_div_u32(firstTrailingBit(u_input.c.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 0u), u_input.c) % 32u)), ~(~countOneBits(u_input.c.x))));
    var_1 = u_input.c.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(161f)), 0i, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, -1000f) - vec2<f32>(-535f, _wgslsmith_f_op_f32(-2280f - -1754f))), vec2<f32>(2249f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - -1518f)))));
    var var_3 = arg_1;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -798f;
    let var_1 = u_input.c.x ^ ~firstTrailingBit(_wgslsmith_mult_u32(u_input.c.x & u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x)));
    var var_2 = Struct_1(938f, ~u_input.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))), var_0));
    var_2 = Struct_1(_wgslsmith_f_op_f32(round(var_2.a)), _wgslsmith_dot_vec3_i32(u_input.d.zwz, -u_input.d.wzz), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(738f, 1155f), _wgslsmith_f_op_f32(trunc(1486f))), var_2.c) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, var_0)), vec2<f32>(var_0, var_0)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, -1000f)) + _wgslsmith_f_op_vec2_f32(-var_2.c)))));
    var_2 = func_4(Struct_1(744f, func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.c, vec2<f32>(-334f, 834f)) * var_2.c))), Struct_1(125f, func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-667f, -116f), vec2<f32>(var_2.c.x, var_2.c.x)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) * _wgslsmith_f_op_f32(var_0 - 164f))), -firstLeadingBit(abs(-18080i)), var_2.c), select(vec4<bool>(false, true, !(-597f < var_0), false), !select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))), false));
    var var_3 = false;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1707f + var_2.c.x));
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(582f))), _wgslsmith_sub_i32(-1i, -u_input.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-830f - var_2.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_4 - 1000f)))), _wgslsmith_f_op_vec2_f32(-func_4(Struct_1(var_4, 1i, var_2.c), Struct_1(var_4, -2147483647i, var_2.c), Struct_1(-514f, var_2.b, var_2.c), vec4<bool>(true, true, true, true)).c), select(vec2<bool>(true, true), vec2<bool>(u_input.a == -29764i, true), vec2<bool>(true, all(vec4<bool>(false, false, false, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-1i)), var_2.b, ~max(u_input.c, u_input.c));
}

