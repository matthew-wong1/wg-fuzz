struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = select(vec4<bool>(false, true, true, arg_0), !(!select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), !vec4<bool>(arg_0, true, arg_0, arg_0))), select(vec4<bool>(arg_0, all(!vec2<bool>(arg_0, arg_0)), select(true, true, false), false), !select(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, true, true, arg_0), vec4<bool>(arg_0, false, true, arg_0)), !vec4<bool>(arg_0, arg_0, true, arg_0), arg_0), select(vec4<bool>(!arg_0, true, arg_0 || false, all(vec4<bool>(false, arg_0, true, false))), !(!vec4<bool>(arg_0, true, arg_0, true)), !select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, false)))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.b, 149f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-780f, -344f))))), -178f);
    var var_2 = arg_2.c;
    var var_3 = 0u;
    var var_4 = ~firstTrailingBit(1i);
    return vec4<u32>(firstTrailingBit(arg_1.a), arg_1.a, min(1605u, ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_1.a, u_input.d, 0u), vec3<u32>(arg_2.c.a, u_input.b, arg_1.a), true), vec3<u32>(var_2.a, 8275u, u_input.d) & vec3<u32>(arg_1.a, arg_2.c.a, var_2.a))), abs(arg_2.b));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<bool>) -> f32 {
    var var_0 = Struct_1(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b, 79419u), 90032u | arg_0.x)) << (~47583u % 32u), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b)))))), arg_1.c);
    let var_1 = Struct_2(-5464i, arg_0.x, Struct_1(~(~(~u_input.d)), _wgslsmith_f_op_f32(f32(-1f) * -465f), u_input.a));
    var_0 = Struct_1(arg_1.a, var_1.c.b, 1i);
    var_0 = Struct_1(func_3(false, Struct_1(~0u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.b - var_0.b))), 2147483647i), Struct_2(_wgslsmith_sub_i32(-21956i, 34003i), ~(~arg_1.a), Struct_1(~arg_1.a, 1582f, -var_1.a))).x, 565f, u_input.a);
    var_0 = var_1.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(arg_1.b + -1000f)));
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_2(1i, u_input.b, Struct_1(0u, _wgslsmith_f_op_f32(func_4(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 30909u, u_input.b, u_input.b), func_3(true, Struct_1(4294967295u, 481f, -24229i), Struct_2(741i, u_input.b, Struct_1(4294967295u, -1336f, -2147483647i)))), Struct_1(abs(u_input.d), _wgslsmith_f_op_f32(f32(-1f) * -571f), 2147483647i), vec2<f32>(_wgslsmith_f_op_f32(-1359f - -1038f), _wgslsmith_div_f32(1000f, 646f)), select(vec2<bool>(false, true), vec2<bool>(true, true), true))), select(u_input.c.x, u_input.c.x, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))))));
    var_0 = Struct_2(-_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(abs(u_input.c.zxw), u_input.c.xyx), ~(-vec3<i32>(u_input.a, u_input.c.x, 34012i))), 54204u, var_0.c);
    var_0 = Struct_2(2147483647i, 0u ^ var_0.c.a, Struct_1(u_input.d, var_0.c.b, select(-2147483647i, ~_wgslsmith_mod_i32(0i, -10119i), !all(vec4<bool>(true, true, false, false)))));
    var_0 = Struct_2(2147483647i, firstLeadingBit(~var_0.b), Struct_1(_wgslsmith_div_u32(u_input.d, ~countOneBits(22088u)), _wgslsmith_f_op_f32(step(var_0.c.b, var_0.c.b)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-24844i, -1i, -52890i, -28203i), u_input.c), u_input.c), ~u_input.c.x)));
    let var_1 = Struct_1(func_3(false, Struct_1(848u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1627f)), _wgslsmith_f_op_f32(abs(-433f))), reverseBits(-var_0.c.c)), Struct_2(-(~0i), ~u_input.b, var_0.c)).x, _wgslsmith_f_op_f32(sign(var_0.c.b)), ~(-1i));
    return vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.b), _wgslsmith_f_op_f32(step(-201f, _wgslsmith_f_op_f32(-1492f - _wgslsmith_f_op_f32(abs(-1001f))))), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1026f * _wgslsmith_f_op_f32(-var_1.b)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_2()), vec4<f32>(_wgslsmith_div_f32(-336f, -1539f), -1000f, -700f, 1252f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(968f, -689f, 1143f, 1846f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(142f, 582f, 742f, -281f) + vec4<f32>(799f, 1069f, -681f, 1905f)))))));
    let var_1 = vec3<u32>(1u, ~reverseBits(~(arg_1.x ^ u_input.d)), 25177u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-320f)), _wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 1168f)));
    var var_3 = select(vec3<bool>(false, all(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), any(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), false))), vec3<bool>(true, _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(abs(-312f)))) != _wgslsmith_f_op_f32(f32(-1f) * -1000f), true), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, arg_0.x != 56406u), vec3<bool>(true, true, true)));
    var var_4 = ~(~var_1.x);
    return var_0.xyy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(~_wgslsmith_dot_vec3_u32(vec3<u32>(38186u, u_input.b, 1u), vec3<u32>(u_input.d, u_input.b, 4294967295u) >> (vec3<u32>(1038u, 4294967295u, 0u) % vec3<u32>(32u))) < u_input.d);
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-218f, -351f, -1571f) - vec3<f32>(1661f, 620f, -1882f))) + _wgslsmith_f_op_vec3_f32(func_1(firstTrailingBit(vec2<u32>(50061u, u_input.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.d, 0u), vec3<u32>(u_input.d, u_input.b, u_input.d), vec3<u32>(43036u, u_input.d, u_input.b)), u_input.c.x >> (23147u % 32u)))))));
    var var_2 = vec3<i32>(28699i, -u_input.c.x, u_input.a) & max(vec3<i32>(u_input.c.x, ~u_input.a, 3392i), ~vec3<i32>(firstTrailingBit(-2147483647i), u_input.c.x, u_input.c.x));
    var var_3 = vec4<f32>(1491f, _wgslsmith_f_op_f32(f32(-1f) * -2730f), _wgslsmith_f_op_vec4_f32(func_2()).x, var_1.x);
    var var_4 = false;
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_vec4_f32(func_2()).x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1(vec2<u32>(4294967295u, u_input.b), vec3<u32>(u_input.d, 4294967295u, u_input.d), var_2.x)).x)), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), -1178f), _wgslsmith_f_op_f32(-1f));
    let var_6 = select(_wgslsmith_dot_vec4_i32(u_input.c, abs(-vec4<i32>(var_2.x, var_2.x, var_2.x, u_input.c.x))) | (u_input.a | 0i), -var_2.x, any(vec3<bool>(true & any(vec3<bool>(true, false, true)), !any(vec3<bool>(false, true, true)), u_input.b > u_input.d)));
    var var_7 = Struct_1(~u_input.d, var_3.x, var_6);
    let x = u_input.a;
    s_output = StorageBuffer(select(~firstTrailingBit(~vec4<u32>(4294967295u, 1u, 59017u, 51844u)), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 1u, 63213u, 13568u), vec4<u32>(46830u, 2514u, var_7.a, var_7.a)), true), _wgslsmith_add_u32(0u, func_3(true, Struct_1(select(u_input.d, 40398u, false), var_1.x, var_7.c), Struct_2(-var_6, 4294967295u, Struct_1(u_input.b, -200f, 42730i))).x));
}

