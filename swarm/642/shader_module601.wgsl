struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = arg_0;
    var var_1 = select(vec3<u32>(countOneBits(var_0.a), 4294967295u, ~u_input.e.x & ~14080u) ^ vec3<u32>(abs(u_input.e.x | 1u), var_0.a >> (_wgslsmith_div_u32(58444u, arg_0.a) % 32u), ~(~0u)), reverseBits(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(13691u, var_0.a, 4294967295u)), ~(~vec3<u32>(arg_0.b, 54807u, var_0.b)))), vec3<bool>(all(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))), false, !(true | any(vec4<bool>(true, false, false, true)))));
    var_1 = vec3<u32>((u_input.a >> (0u % 32u)) & ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, u_input.e.x, var_1.x, 0u), vec4<u32>(36271u, u_input.b, 4294967295u, 1u)), _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 22498u, 0u, 1u), vec4<u32>(24964u, var_0.b, arg_0.b, var_1.x)), arg_0.b), ~u_input.e.x) << (vec3<u32>(~4159u, ~10570u << (_wgslsmith_mod_u32(u_input.b, var_0.b) % 32u), 0u) % vec3<u32>(32u));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, arg_0.c.x, 293f) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(157f, -946f, -600f))))))), vec3<f32>(-716f, _wgslsmith_f_op_f32(floor(var_0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.d - -1872f), _wgslsmith_f_op_f32(arg_0.c.x * 1141f), all(vec4<bool>(true, true, false, false)))) + -200f)));
    var var_3 = countOneBits(_wgslsmith_mult_i32(u_input.c, ~u_input.d));
    return -reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-1i, u_input.c, u_input.c), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-197i, 2147483647i, -43209i), vec3<i32>(u_input.d, u_input.c, -34796i), vec3<i32>(22991i, u_input.c, 6281i))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: u32) -> vec2<f32> {
    let var_0 = Struct_1(arg_0.a, ~(~1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, -536f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-545f, arg_0.d)))), -919f);
    let var_1 = var_0;
    var var_2 = var_0;
    let var_3 = countOneBits(_wgslsmith_sub_vec3_i32(-_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(56018i, arg_2.x, arg_2.x), vec3<i32>(23649i, -32479i, u_input.c)), func_3(Struct_1(var_0.b, 1u, arg_0.c, arg_0.d))), arg_2));
    var var_4 = arg_1.x;
    return _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.d)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_0.d))))))));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = Struct_1(4294967295u, countOneBits(arg_0), _wgslsmith_f_op_vec2_f32(func_2(Struct_1(_wgslsmith_div_u32(arg_0, max(arg_0, 48331u)), ~1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1788f, 740f)), _wgslsmith_f_op_f32(sign(1000f))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, any(vec4<bool>(false, true, true, false)), any(vec4<bool>(false, false, true, false)))), -min(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 0i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<i32>(1i, u_input.d, -2147483647i)), _wgslsmith_clamp_u32(u_input.e.x, 140907u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-146f))));
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(43421u, arg_0), u_input.e, vec2<bool>(true, true)), reverseBits(u_input.e)) ^ u_input.a, 1u, vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(4351u, _wgslsmith_mod_u32(4294967295u, u_input.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(765f, -1626f)), _wgslsmith_f_op_f32(round(-643f))), vec3<bool>(all(vec3<bool>(false, false, true)), true, true), -vec3<i32>(u_input.d, u_input.c, u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, arg_0), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.e)))).x, 1000f), -427f);
    var var_2 = Struct_1(arg_0, 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.d, 791f), vec2<f32>(661f, var_0.d))))), var_0.c.x);
    var_2 = Struct_1(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 1u, var_2.a, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a, var_1.a, 1u, 4294967295u), vec4<u32>(42824u, arg_0, 28505u, arg_0)))), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 0u, var_0.a, 64405u) ^ vec4<u32>(1u, arg_0, var_0.a, 67024u)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(var_2.b, 4294967295u, 4064u, 34847u), vec4<u32>(1u, var_1.a, arg_0, var_0.b) >> (vec4<u32>(var_1.a, var_2.b, 1u, 0u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(arg_0, var_0.a, 4294967295u, 4294967295u)), vec4<u32>(var_1.b, var_1.a, 1u, var_1.a)) << (vec4<u32>(firstTrailingBit(28621u), ~var_1.a, _wgslsmith_sub_u32(21474u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 61571u), vec2<u32>(46752u, arg_0))) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.c - vec2<f32>(var_2.c.x, 1308f)), _wgslsmith_f_op_vec2_f32(select(var_2.c, vec2<f32>(var_1.c.x, -177f), true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, 140f))))), _wgslsmith_f_op_f32(trunc(1320f)));
    let var_3 = vec2<u32>(_wgslsmith_mult_u32(abs(~0u), ~firstTrailingBit(u_input.e.x)), ~(4294967295u ^ ~var_0.b));
    return firstTrailingBit(var_2.a);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !select(select(vec3<bool>(true, all(vec4<bool>(false, false, true, true)), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), arg_0.c.x != 1063f), !any(vec2<bool>(true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, u_input.c < u_input.d, true), select(true, true, true)), vec3<bool>(false, all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), all(vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)) * -614f) + arg_0.c.x);
    var var_2 = 601f;
    let var_3 = vec2<bool>(all(var_0.yz), var_0.x);
    let var_4 = abs(vec2<u32>(_wgslsmith_div_u32(countOneBits(firstTrailingBit(u_input.a)), ~23518u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(58168u, u_input.b), u_input.e), ~u_input.e >> (~u_input.e % vec2<u32>(32u)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.e.x, u_input.a, 61303u, u_input.a), vec4<u32>(10819u, 84070u, 0u, 4294967295u) | vec4<u32>(u_input.e.x, 33608u, u_input.a, u_input.e.x)), vec4<u32>(u_input.b, u_input.e.x, u_input.a >> (0u % 32u), u_input.e.x ^ u_input.b)), _wgslsmith_div_u32(u_input.b, func_1(0u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -2261f), vec2<f32>(-584f, 393f)), vec2<f32>(-744f, -690f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-503f))))))));
    var var_1 = 9872u;
    var_1 = abs(~var_0.b);
    var var_2 = var_0.c.x;
    var var_3 = 1u;
    let var_4 = Struct_1(var_0.a, func_1(u_input.a), _wgslsmith_f_op_vec2_f32(-var_0.c), _wgslsmith_f_op_f32(-var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(-629f, _wgslsmith_mult_vec4_u32(~vec4<u32>(29658u << (var_0.a % 32u), select(u_input.a, 3309u, false), 4294967295u, var_4.b), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(1u, 0u, 22319u, var_4.a)), ~vec4<u32>(11691u, 4294967295u, u_input.a, 23830u))));
}

