struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<f32> {
    let var_0 = 22214i;
    let var_1 = Struct_2(var_0, _wgslsmith_f_op_f32(-1915f * -117f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(895f, _wgslsmith_f_op_f32(round(-923f)))), u_input.a.x, Struct_1(any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true))));
    var var_2 = var_1;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2.c * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, 494f)), vec2<f32>(_wgslsmith_f_op_f32(-1271f - 156f), 501f)))), _wgslsmith_f_op_vec2_f32(-var_2.c), vec2<bool>(!(!(!var_2.e.a)), true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = select(!(!vec3<bool>(true, arg_3.a, any(vec3<bool>(true, true, true)))), !select(!(!vec3<bool>(arg_3.a, arg_2.x, true)), vec3<bool>(false, arg_3.a, any(arg_2.xx)), !arg_2), select(arg_2, !vec3<bool>(!arg_2.x, all(vec3<bool>(true, false, true)), any(vec2<bool>(arg_3.a, true))), true));
    let var_1 = -10112i | _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(max(select(u_input.a, u_input.a, false), u_input.a), u_input.a), abs(-(~u_input.a)));
    var var_2 = Struct_1(false);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_2 = arg_0;
    return arg_1.a & 0i;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = true;
    var var_1 = ~(-func_4(Struct_1(arg_0), Struct_2(_wgslsmith_add_i32(-2147483647i, -1i), -1014f, _wgslsmith_f_op_vec2_f32(func_3()), ~1i, Struct_1(true)), vec3<bool>(true, all(vec3<bool>(false, arg_0, arg_0)), arg_0), Struct_1(arg_0)));
    var var_2 = vec3<u32>(4294967295u, reverseBits(_wgslsmith_sub_u32(4294967295u | u_input.b, max(77884u, 0u))), u_input.b ^ u_input.b) ^ _wgslsmith_mod_vec3_u32(max(~(~vec3<u32>(0u, 0u, 16250u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(17427u, u_input.b, 4755u))), select(min(~vec3<u32>(52434u, u_input.b, 47729u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 47644u, 28143u), vec3<u32>(1u, u_input.b, 69987u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(21548u, u_input.b, u_input.b), vec3<u32>(15011u, 130997u, u_input.b)), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, false, arg_0), arg_0)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(830f)) * 901f), _wgslsmith_f_op_f32(-1f));
    var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 135f))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, -587f)), _wgslsmith_div_f32(-115f, -532f)))));
    return Struct_2(_wgslsmith_div_i32(~firstLeadingBit(u_input.a.x), -5150i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - -429f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1400f * 1219f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, _wgslsmith_f_op_f32(-var_3.x)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(351f, var_3.x) + vec2<f32>(var_3.x, -801f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.x, var_3.x), vec2<f32>(892f, var_3.x)))))), func_4(Struct_1(true), Struct_2(-u_input.a.x, _wgslsmith_f_op_f32(sign(var_3.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_3.x), vec2<f32>(1f, 1f)), ~(-1i) ^ _wgslsmith_clamp_i32(47667i, u_input.a.x, 9965i), Struct_1(!arg_0)), vec3<bool>(_wgslsmith_f_op_f32(-var_3.x) == _wgslsmith_div_f32(var_3.x, -624f), arg_0, any(!vec3<bool>(true, arg_0, arg_0))), Struct_1(all(vec3<bool>(true, true, true)))), Struct_1(any(vec3<bool>(arg_0, arg_0, true))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = func_2(any(vec4<bool>(true, true, true, true)));
    var_0 = Struct_2(firstLeadingBit(_wgslsmith_mult_i32(~min(-11054i, -27639i), _wgslsmith_mult_i32(~arg_1, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)))), _wgslsmith_f_op_f32(f32(-1f) * -2355f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(675f, var_0.b) + arg_2), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(119f, arg_2.x))), !vec2<bool>(var_0.e.a, true)))), 2147483647i, var_0.e);
    var_0 = Struct_2(abs(u_input.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), var_0.b), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.c - vec2<f32>(_wgslsmith_f_op_f32(-257f - 1875f), _wgslsmith_f_op_f32(-var_0.b))))), -9581i, Struct_1(!(_wgslsmith_f_op_f32(min(-1343f, arg_2.x)) == _wgslsmith_f_op_f32(var_0.c.x * -2161f))));
    var_0 = Struct_2(reverseBits(firstTrailingBit(~(-arg_1))), var_0.b, _wgslsmith_f_op_vec2_f32(arg_2 + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.c)))), -17238i, Struct_1(!all(!vec4<bool>(var_0.e.a, var_0.e.a, false, var_0.e.a))));
    var var_1 = var_0.e;
    return func_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!all(vec2<bool>(true, true)));
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = func_1(-1054f, ~(-u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 434f)))))));
    var_1 = func_1(_wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-346f)))), ~52153i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, var_2.b) + vec2<f32>(var_2.c.x, var_2.c.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, -1080f)))))).e;
    var_1 = var_0;
    var var_3 = _wgslsmith_f_op_f32(-158f + _wgslsmith_f_op_f32(-var_2.c.x));
    var var_4 = var_2;
    let var_5 = Struct_1(!all(vec4<bool>(var_4.c.x == var_4.c.x, var_4.e.a, true, var_4.e.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c, ~1u, min(_wgslsmith_mult_i32(-1i, ~(2147483647i << (u_input.b % 32u))), i32(-1i) * -41457i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1855f - var_4.b) + _wgslsmith_f_op_f32(ceil(266f))), func_1(_wgslsmith_f_op_f32(select(1600f, -610f, false)), _wgslsmith_mod_i32(var_4.a, -2147483647i), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.c.x, var_4.b)))).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(607f - -1055f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-var_2.c.x)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(1099f + -310f), -120f, _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(min(var_2.b, 286f))))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.c.x * var_2.c.x)), _wgslsmith_mult_i32(-14008i, -1i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(43360u, 1u, 1u, u_input.b), vec4<u32>(4294967295u, u_input.b, u_input.b, 4294967295u)) % 32u), vec2<f32>(_wgslsmith_f_op_f32(1000f + var_4.c.x), var_2.b)).e.a)));
}

