struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: Struct_2,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_4) -> i32 {
    let var_0 = Struct_4(vec3<bool>(!all(arg_3.a), false, _wgslsmith_f_op_f32(914f - arg_3.e) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(714f, 658f))))), vec4<bool>(any(arg_3.a), true, true, select(true, (arg_2.x && arg_2.x) && all(vec4<bool>(arg_2.x, false, true, arg_3.a.x)), arg_2.x)), Struct_2(arg_3.c.a, arg_3.c.b, arg_3.a.x), min(vec2<i32>(~(-arg_3.d.x), -1i), vec2<i32>(select(-77501i << (arg_1 % 32u), arg_3.c.a.b, true), arg_3.c.a.a)), arg_0.x);
    let var_1 = vec3<bool>(all(var_0.b.yzx), !arg_3.c.c, !select(select(true, arg_2.x, true), !(!arg_3.c.c), true));
    return 0i;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>) -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_add_i32(-39446i, 1i), -2147483647i, -2147483647i, func_3(vec2<f32>(-1030f, _wgslsmith_f_op_f32(trunc(arg_1.x))), 1u, select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), any(vec3<bool>(false, true, false))), Struct_4(vec3<bool>(false, false, true), vec4<bool>(true, false, false, false), Struct_2(Struct_1(u_input.a, 54377i, u_input.a, u_input.a), arg_1.zx, false), vec2<i32>(arg_0.x, u_input.a), _wgslsmith_f_op_f32(-arg_1.x)))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-999f * -641f)), arg_1.x, true)), -130f), !select(true, any(vec2<bool>(false, false)), true && all(vec2<bool>(false, false))));
    let var_1 = var_0.c;
    var var_2 = Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(var_0.b, arg_1.xx)))) + _wgslsmith_f_op_vec2_f32(var_0.b * _wgslsmith_div_vec2_f32(var_0.b, var_0.b)))), var_0.c);
    var_0 = Struct_2(Struct_1(-18800i & (~arg_0.x >> (min(1u, 25279u) % 32u)), abs(abs(var_2.a.c)), -reverseBits(21812i), _wgslsmith_mult_i32(arg_0.x, var_0.a.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b)), select(var_0.c, !var_0.c, !var_0.c));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.b.x))), var_2.b.x)));
    return var_0.b.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) - _wgslsmith_f_op_f32(func_4(vec3<i32>(-abs(arg_3.x), 13400i, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_0)), 0u, select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), Struct_4(vec3<bool>(true, true, false), vec4<bool>(true, true, true, false), Struct_2(arg_1, vec2<f32>(1415f, arg_2), true), vec2<i32>(-37447i, 59395i), arg_2))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(232f, _wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(sign(arg_0))), vec3<f32>(-151f, _wgslsmith_f_op_f32(f32(-1f) * -1161f), arg_0))))));
    var_0 = arg_2;
    var_0 = 1278f;
    var var_1 = Struct_4(vec3<bool>(true, !((16222i <= u_input.a) | false), all(vec4<bool>(all(vec4<bool>(false, false, true, false)), true, true, true))), !vec4<bool>(!all(vec3<bool>(true, true, false)), all(vec2<bool>(true, false)) || all(vec2<bool>(true, false)), any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), (u_input.a | 1i) < 0i), Struct_2(Struct_1(abs(arg_1.b) | _wgslsmith_clamp_i32(-26726i, arg_1.b, arg_1.a), -1i, func_3(vec2<f32>(2095f, arg_2), 24761u, vec3<bool>(false, true, false), Struct_4(vec3<bool>(true, false, true), vec4<bool>(true, true, true, false), Struct_2(arg_1, vec2<f32>(arg_2, 796f), false), arg_3.xy, -793f)) << (0u % 32u), max(-38810i, arg_3.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), vec2<f32>(-708f, arg_0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-431f, 304f)))), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)))), arg_3.yy, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1033f)) * _wgslsmith_f_op_f32(max(339f, arg_2)))))));
    var var_2 = arg_2;
    return Struct_1(-1i, -29911i, -3069i, abs(-(~(-arg_1.d))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> u32 {
    let var_0 = -213f;
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), 111f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-642f, arg_1.b.x)) + -521f))));
    var var_2 = vec3<bool>(arg_1.c, all(vec4<bool>(false, false, !arg_1.c, false)), !(~(arg_0.x & arg_1.a.c) > 79086i));
    var var_3 = _wgslsmith_div_f32(arg_1.b.x, -788f);
    var var_4 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(func_2(-339f, Struct_1(-2147483647i, u_input.a, arg_1.a.d, 30888i), arg_1.b.x, vec3<i32>(-12465i, 1i, arg_0.x)).d, ~1i, _wgslsmith_sub_i32(arg_1.a.b, arg_1.a.a)), ~(-vec3<i32>(arg_3.a, 1i, -1i))), ~vec3<i32>(~(-2147483647i), -54859i, 2147483647i), _wgslsmith_mod_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-27701i, 71290i, -15226i), vec3<i32>(arg_0.x, 26417i, arg_0.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(0i, arg_0.x)), 4179i, ~u_input.a))));
    return ~(~min(_wgslsmith_dot_vec4_u32(vec4<u32>(38759u, 0u, 0u, 1u), vec4<u32>(4294967295u, 1u, 24226u, 4294967295u)), min(23332u, 1u)) ^ ~firstTrailingBit(4294967295u));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = ~(~(_wgslsmith_mod_i32(-arg_0.d, -arg_0.b) << (min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(42518u, 1u, 18484u)), 1u) % 32u)));
    let var_1 = Struct_3(_wgslsmith_clamp_u32(4294967295u | func_5(vec2<i32>(arg_0.b, u_input.a) << (vec2<u32>(1u, 76820u) % vec2<u32>(32u)), Struct_2(arg_0, vec2<f32>(1068f, 119f), false), false, func_2(773f, arg_0, 931f, vec3<i32>(u_input.a, u_input.a, arg_0.c))), 4796u, ~0u), -2147483647i, max(~(~_wgslsmith_div_vec2_i32(vec2<i32>(1i, arg_0.a), vec2<i32>(u_input.a, u_input.a))), firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(1i, -1665i), ~vec2<i32>(arg_0.c, -46655i)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1275f, 526f)) + vec2<f32>(-1000f, 730f))))));
    let var_2 = Struct_2(Struct_1(~_wgslsmith_div_i32(var_1.c.x, arg_0.a) ^ _wgslsmith_sub_i32(var_1.c.x >> (var_1.a % 32u), var_1.c.x), 2147483647i, -(~_wgslsmith_div_i32(47392i, -110i)), ~(-(~3039i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.d), _wgslsmith_f_op_vec2_f32(var_1.d - vec2<f32>(var_1.d.x, var_1.d.x)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.d.x, 1972f), var_1.d, true)))), !any(vec3<bool>(false, false, true))))), all(!vec3<bool>(true, true, arg_0.d <= u_input.a)));
    var_0 = func_3(vec2<f32>(_wgslsmith_f_op_f32(ceil(-501f)), var_2.b.x), 0u, select(select(!select(vec3<bool>(var_2.c, true, var_2.c), vec3<bool>(var_2.c, var_2.c, true), vec3<bool>(false, var_2.c, true)), vec3<bool>(false, select(true, var_2.c, var_2.c), true), true), vec3<bool>(true, !all(vec4<bool>(false, var_2.c, var_2.c, false)), true), false), Struct_4(vec3<bool>(all(vec2<bool>(false, var_2.c)), !var_2.c, all(select(vec2<bool>(var_2.c, var_2.c), vec2<bool>(false, true), false))), !vec4<bool>(false, true, any(vec3<bool>(var_2.c, false, var_2.c)), var_2.c), Struct_2(func_2(2448f, func_2(1342f, Struct_1(-1i, var_2.a.c, -1i, 5059i), var_1.d.x, vec3<i32>(-33138i, -9412i, 1i)), var_1.d.x, vec3<i32>(-1i, u_input.a, 1i)), var_1.d, var_2.c), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_1.c.x, 0i, -2656i), vec4<i32>(13824i, -1i, var_2.a.c, var_1.b)), var_2.a.a & arg_0.c), vec2<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, 1i))), _wgslsmith_f_op_f32(trunc(-375f))));
    var var_3 = var_2.b;
    return var_1.c.x;
}

fn func_6(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_4) -> Struct_1 {
    let var_0 = vec2<f32>(arg_2.e, arg_2.e);
    let var_1 = !(var_0.x > 1000f);
    var var_2 = Struct_4(arg_2.b.yyw, arg_2.b, Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.b.x) + _wgslsmith_f_op_f32(trunc(1530f))), arg_2.c.a, _wgslsmith_div_f32(arg_2.c.b.x, var_0.x), firstLeadingBit(arg_0)), vec2<f32>(-323f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.e + -426f)))), _wgslsmith_f_op_f32(-arg_2.c.b.x) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - arg_2.e), 1f))), (-vec2<i32>(arg_0.x, u_input.a) << (abs(vec2<u32>(1u, 1u)) % vec2<u32>(32u))) & arg_2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-717f, arg_2.c.b.x), _wgslsmith_f_op_f32(f32(-1f) * -877f), arg_2.c.c)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.x)))))));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c.b)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_2.c.b - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -984f), 394f)), var_2.c.b, all(select(arg_2.a, arg_2.a, true)))));
    var_2 = Struct_4(vec3<bool>(true, any(vec2<bool>(var_2.c.c, true)), any(var_2.b.zx)), select(select(select(select(vec4<bool>(var_1, var_2.a.x, arg_2.a.x, false), vec4<bool>(true, arg_2.c.c, false, var_1), false), select(vec4<bool>(false, arg_2.c.c, true, true), var_2.b, vec4<bool>(arg_2.c.c, true, false, false)), arg_2.a.x), !(!vec4<bool>(true, var_1, var_1, var_2.b.x)), select(!arg_2.b, select(vec4<bool>(true, false, arg_2.a.x, var_2.a.x), arg_2.b, true), vec4<bool>(true, true, var_1, false))), select(var_2.b, !(!vec4<bool>(var_1, true, var_2.b.x, var_1)), select(arg_2.b, select(var_2.b, vec4<bool>(false, false, var_2.b.x, var_1), vec4<bool>(arg_2.a.x, true, arg_2.a.x, arg_2.a.x)), var_1)), !var_2.b), Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.b.x)), var_2.c.a, var_3.x, -arg_0), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_div_f32(-1319f, var_0.x))), var_0.x), any(select(!vec4<bool>(true, var_2.b.x, true, true), var_2.b, true))), var_2.d, -663f);
    return var_2.c.a;
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_4(!vec3<bool>(any(vec4<bool>(false, arg_1, arg_1, arg_1)) & any(vec4<bool>(arg_1, false, arg_1, true)), all(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), true)), true), vec4<bool>(select(!all(vec2<bool>(true, true)), arg_1, true), true, !select(true, true, any(vec3<bool>(arg_1, true, true))), true), Struct_2(arg_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2329f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -461f), 583f))), true), vec2<i32>(~(-374i), -reverseBits(~(-6687i))), -2155f);
    let var_1 = var_0.a.x;
    var var_2 = var_0.c;
    var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(~var_0.d, _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.c, arg_0.d), _wgslsmith_sub_vec2_i32(arg_2.xz, vec2<i32>(var_0.d.x, -12609i)), _wgslsmith_mod_vec2_i32(var_0.d, arg_2.zz))), _wgslsmith_div_i32(func_1(Struct_1(0i, arg_2.x, -2147483647i, u_input.a)), -(i32(-1i) * -2147483647i)), -var_0.c.a.d, _wgslsmith_clamp_i32(~1i, _wgslsmith_add_i32(arg_0.c, u_input.a) & min(var_2.a.a, 2147483647i), var_2.a.b)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_0.c.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e, 350f) - var_0.c.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.b, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1855f, -1000f))))), any(!(!var_0.b.zy)))), !any(!var_0.b.yy));
    let var_3 = var_0.d & _wgslsmith_mod_vec2_i32(arg_2.yz, -vec2<i32>(1i, var_0.c.a.c | -5790i));
    return Struct_3(~_wgslsmith_mod_u32(func_5(arg_2.yz, Struct_2(var_0.c.a, var_0.c.b, false), true, Struct_1(u_input.a, var_0.c.a.b, var_3.x, var_2.a.d)) ^ ~4294967295u, ~abs(30682u)), -31342i, -(var_3 >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(12447u, 12264u), vec2<u32>(1u, 1u), vec2<u32>(43932u, 54117u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(372f, var_2.b.x), var_0.c.b, any(vec3<bool>(var_2.c, var_0.b.x, var_0.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var_0 = ~(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(44490u, 1u, 0u)), vec3<u32>(_wgslsmith_clamp_u32(1u, 1u, 4294967295u), 22022u << (0u % 32u), abs(4294967295u))));
    var var_1 = func_7(func_6(vec3<i32>(_wgslsmith_mult_i32(func_1(Struct_1(u_input.a, -42243i, -76968i, u_input.a)), _wgslsmith_clamp_i32(-2147483647i, 0i, -1i)), u_input.a ^ (u_input.a ^ 12924i), _wgslsmith_mult_i32(-u_input.a, u_input.a)), _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, u_input.a), -1i), Struct_4(vec3<bool>(any(vec4<bool>(false, false, true, true)), true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)), Struct_2(func_2(946f, Struct_1(u_input.a, 72841i, 2147483647i, u_input.a), -373f, vec3<i32>(u_input.a, -24682i, u_input.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(2137f, -1902f) + vec2<f32>(-1314f, 1744f)), true), -(~vec2<i32>(-13693i, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1643f) - -390f))), any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(false, false, false, true), true)) || true, ~abs(-(~vec4<i32>(u_input.a, -2147483647i, u_input.a, 1i))));
    let var_2 = (abs(select(var_1.c, vec2<i32>(0i, u_input.a), false) | vec2<i32>(-1i, var_1.c.x)) & select(vec2<i32>(1i, func_2(-179f, Struct_1(u_input.a, 22895i, u_input.a, u_input.a), var_1.d.x, vec3<i32>(u_input.a, 8064i, u_input.a)).a), -(var_1.c ^ vec2<i32>(-1i, var_1.b)), all(vec4<bool>(true, false, false, true)))) ^ _wgslsmith_mult_vec2_i32(var_1.c, vec2<i32>(_wgslsmith_mult_i32(func_3(vec2<f32>(-749f, 1200f), var_1.a, vec3<bool>(false, true, true), Struct_4(vec3<bool>(true, false, false), vec4<bool>(true, false, false, true), Struct_2(Struct_1(var_1.c.x, var_1.b, var_1.b, var_1.b), vec2<f32>(-1000f, var_1.d.x), true), vec2<i32>(4110i, -2147483647i), -248f)), u_input.a), min(var_1.b, min(u_input.a, -2147483647i))));
    let var_3 = Struct_4(!vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), false, !all(vec3<bool>(false, false, true))), vec4<bool>(true, true == (true == any(vec3<bool>(false, true, true))), !all(vec4<bool>(false, true, true, true)), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)))), Struct_2(func_6(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(-31518i, u_input.a, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(-18120i, var_2.x, 1i), vec3<i32>(var_1.b, -2147483647i, -2147483647i))), 2147483647i, Struct_4(vec3<bool>(true, true, false), vec4<bool>(false, true, false, false), Struct_2(Struct_1(0i, u_input.a, 2147483647i, 1i), vec2<f32>(1227f, var_1.d.x), true), -var_2, 209f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2901f, _wgslsmith_f_op_f32(sign(var_1.d.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.d.x, -1000f))))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_1.a, 24205u), vec2<u32>(var_1.a, var_1.a), vec2<bool>(false, false)), vec2<u32>(var_1.a, 33674u)) > _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a, 12243u, 4294967295u, 41121u), vec4<u32>(var_1.a, var_1.a, 38229u, var_1.a), vec4<u32>(var_1.a, var_1.a, var_1.a, var_1.a)), ~vec4<u32>(var_1.a, 1u, var_1.a, var_1.a))), vec2<i32>(-1i) * -abs(reverseBits(vec2<i32>(-25856i, u_input.a))), func_7(Struct_1(1i, ~(-20173i), var_1.c.x, -func_7(Struct_1(var_2.x, u_input.a, -1240i, 10441i), false, vec4<i32>(-1i, u_input.a, 2147483647i, var_1.c.x)).c.x), true, countOneBits(abs(vec4<i32>(u_input.a, 1i, 0i, 1i)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 13705i, 0i, u_input.a), vec4<i32>(var_2.x, 0i, u_input.a, var_1.c.x), vec4<i32>(-1i, u_input.a, -2147483647i, u_input.a)))).d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(~vec2<u32>(59077u, var_1.a), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.a, var_1.a), vec2<u32>(var_1.a, 4294967295u))) & ~vec2<u32>(110394u, 9766u)));
}

