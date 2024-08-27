struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    return any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), true)) & false;
}

fn func_2() -> u32 {
    global0 = _wgslsmith_sub_u32(~select(max(select(u_input.b, u_input.a.x, true), _wgslsmith_div_u32(13262u, u_input.b)), 4294967295u, !func_3()), min(_wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.xwy), ~0u), 18328u), ~abs(firstTrailingBit(1u))));
    var var_0 = Struct_2(Struct_1(_wgslsmith_add_i32(-1i, u_input.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -245f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-728f + -624f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(840f)))), -325f))));
    var var_1 = _wgslsmith_mod_u32(u_input.a.x, ~_wgslsmith_div_u32(u_input.a.x, _wgslsmith_div_u32(0u, ~16556u)));
    var var_2 = _wgslsmith_div_i32(-1i, select(-1i, abs(_wgslsmith_add_i32(u_input.d.x, -2147483647i)), !(var_0.b > -1402f) && false));
    var_1 = 26125u;
    return _wgslsmith_mod_u32(firstTrailingBit(~u_input.b), firstLeadingBit(45948u) | _wgslsmith_mult_u32(~(~38928u), _wgslsmith_mult_u32(abs(u_input.b), abs(u_input.b))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    global0 = (~func_2() | u_input.a.x) & 28608u;
    let var_0 = 14455u;
    global0 = u_input.a.x ^ 0u;
    let var_1 = Struct_2(Struct_1(~u_input.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -1074f), _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1000f)))))))));
    global0 = ~9476u | _wgslsmith_clamp_u32(max(var_0, ~1u), _wgslsmith_mult_u32(1u, countOneBits(_wgslsmith_mult_u32(var_0, 0u))), _wgslsmith_dot_vec2_u32(vec2<u32>(~var_0, countOneBits(4294967295u)), vec2<u32>(4294967295u, 1u)));
    return Struct_2(Struct_1(-1i), var_1.b);
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_2) -> vec2<bool> {
    global0 = 1u;
    let var_0 = -2147483647i;
    let var_1 = Struct_1(_wgslsmith_mult_i32(-13680i, u_input.c.x));
    global0 = u_input.b;
    var var_2 = reverseBits(firstTrailingBit(u_input.a.zw));
    return !vec2<bool>(func_3(), func_3());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))), vec2<bool>(true, false), func_4(~_wgslsmith_mod_vec3_u32(u_input.a.wyz, max(u_input.a.zwy, vec3<u32>(u_input.a.x, u_input.b, u_input.a.x))), -29482i, func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))))));
    global0 = min(~select(12135u, 6815u ^ ~u_input.a.x, !var_0.x), _wgslsmith_div_u32(55188u, u_input.a.x));
    global0 = select(~(~abs(u_input.b >> (u_input.a.x % 32u))), (u_input.a.x ^ 89414u) ^ 1u, any(vec3<bool>(var_0.x, var_0.x, func_4(vec3<u32>(u_input.b, 45609u, 25577u), -u_input.d.x, func_1(vec4<f32>(-1632f, 1086f, -1736f, -1232f))).x)));
    let var_1 = abs(~(~vec4<u32>(abs(21611u), _wgslsmith_mult_u32(17210u, 15984u), firstLeadingBit(u_input.b), ~u_input.b)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))), 278f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-199f * 174f) + _wgslsmith_f_op_f32(f32(-1f) * -2171f)) * 189f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-628f)), _wgslsmith_f_op_f32(-var_2.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x))) + vec2<f32>(var_2.x, -1223f)), vec2<u32>(4294967295u, u_input.b));
}

