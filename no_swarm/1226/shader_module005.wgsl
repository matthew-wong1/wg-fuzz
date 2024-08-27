struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: u32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_4) -> bool {
    var var_0 = arg_2;
    var_0 = arg_2;
    let var_1 = arg_0;
    var var_2 = ~(_wgslsmith_mult_vec4_u32(arg_3.e, _wgslsmith_clamp_vec4_u32(~arg_3.e, _wgslsmith_sub_vec4_u32(arg_3.e, vec4<u32>(arg_1.x, 3003u, 8676u, 40067u)), _wgslsmith_div_vec4_u32(arg_3.e, vec4<u32>(4294967295u, arg_3.d, 27602u, arg_1.x)))) >> (arg_3.e % vec4<u32>(32u)));
    var var_3 = 3964i;
    return var_1 || var_1;
}

fn func_3(arg_0: bool, arg_1: bool) -> i32 {
    var var_0 = Struct_4(~u_input.a, min(1u, _wgslsmith_mod_u32(max(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), _wgslsmith_div_u32(u_input.a, 35270u)), _wgslsmith_div_u32(4294967295u, u_input.a) ^ ~u_input.a)), Struct_1(max(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(76359u, u_input.a), ~vec2<u32>(102634u, u_input.a)) ^ (max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a)) ^ vec2<u32>(1u, u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(284f, 1324f, 1132f, 169f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1374f, 543f, -991f, 177f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-608f, 1987f))))), _wgslsmith_add_u32(1u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(63665u, 1u), vec2<u32>(1u, 4294967295u)))), vec4<u32>(~(_wgslsmith_mult_u32(u_input.a, u_input.a) ^ ~u_input.a), _wgslsmith_mult_u32(firstLeadingBit(min(1u, 11438u)), _wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1325u, u_input.a, 110909u), vec4<u32>(u_input.a, 4294967295u, 95269u, u_input.a)))), u_input.a, 1u));
    var var_1 = vec4<i32>(~u_input.b, 0i, u_input.b, -_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b, u_input.b), ~u_input.b));
    var_0 = Struct_4(reverseBits(abs(58209u)), ~1u, Struct_1(select(~(var_0.e.yx << (vec2<u32>(var_0.b, 4294967295u) % vec2<u32>(32u))), max(~vec2<u32>(u_input.a, 4294967295u), var_0.e.yz), arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-657f, -1381f, var_0.c.c, -505f))), var_0.c.c), ~(~_wgslsmith_mod_u32(firstTrailingBit(u_input.a), 0u)), var_0.e);
    let var_2 = ~(-2147483647i);
    var var_3 = Struct_2(firstLeadingBit(_wgslsmith_clamp_i32(-12794i, 9749i, 20773i)));
    return ~firstLeadingBit(reverseBits(_wgslsmith_div_i32(967i, var_3.a)) >> (u_input.a % 32u));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: i32) -> Struct_5 {
    var var_0 = ~_wgslsmith_mod_u32(abs(_wgslsmith_clamp_u32(1u, ~u_input.a, u_input.a ^ 30797u)), ~u_input.a);
    let var_1 = vec2<bool>(func_2(true, firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(19867u, 78965u, u_input.a), vec3<u32>(13237u, u_input.a, 1u), vec3<u32>(67291u, 41649u, 19817u)) | _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, 0u, 11935u))), Struct_2((u_input.b >> (u_input.a % 32u)) ^ 5632i), Struct_4(~(~28772u), u_input.a, Struct_1(vec2<u32>(44631u, u_input.a) & vec2<u32>(1u, 25796u), vec4<f32>(746f, -932f, -920f, 346f), arg_0.x), abs(~u_input.a), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 20908u, 47081u), vec4<u32>(u_input.a, 0u, 33805u, 24071u)))), 59773u <= u_input.a);
    var_0 = ~u_input.a;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-216f, arg_0.x, true)) * _wgslsmith_div_f32(arg_0.x, arg_0.x))))), arg_0.x, arg_0.x);
    let var_3 = vec4<u32>(~(~abs(u_input.a)), u_input.a, 10595u, u_input.a);
    return Struct_5(firstLeadingBit(abs(vec4<i32>(reverseBits(-4845i), func_3(true, false), -arg_2, ~u_input.b))), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -425f)), max(vec4<u32>(var_3.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(25863u, u_input.a, 25412u), var_3.zyx), 78124u, 4294967295u), vec4<u32>(firstLeadingBit(60532u), firstLeadingBit(4973u), var_3.x, 1u) & ~(~var_3)));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x));
    var_0 = -934f;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -910f), -818f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-594f, 1149f) + -2217f), _wgslsmith_f_op_f32(-1000f + -1312f), _wgslsmith_f_op_f32(sign(-421f)))));
    let var_1 = u_input.b;
    let var_2 = Struct_5(countOneBits(-firstTrailingBit(vec4<i32>(-23336i, 9488i, var_1, u_input.b) | vec4<i32>(u_input.b, u_input.b, -2147483647i, var_1))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x * -485f), _wgslsmith_f_op_f32(var_0.x + var_0.x)) - vec2<f32>(381f, var_0.x)))), ~(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) & ~(~vec4<u32>(0u, u_input.a, 1u, 2321u))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(1276f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(round(var_2.b.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1139f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1582f, 474f))) * _wgslsmith_f_op_f32(exp2(var_2.b.x))));
    let var_4 = Struct_3(Struct_2(~u_input.b), _wgslsmith_sub_i32(min(_wgslsmith_mult_i32(reverseBits(u_input.b), ~u_input.b), -(~2147483647i)), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(var_3, true, -1346i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))))), false);
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec3<i32>(-1i | var_2.a.x, 1i, 68519i & var_4.b), var_2.a.wwz, vec3<bool>(func_2(func_2(false, var_2.c.zxx, Struct_2(var_1), Struct_4(u_input.a, u_input.a, Struct_1(vec2<u32>(53176u, u_input.a), var_3, -374f), 30567u, vec4<u32>(10044u, u_input.a, 7062u, 4294967295u))), var_2.c.wxz ^ vec3<u32>(var_2.c.x, 5360u, 51067u), var_4.a, Struct_4(1542u, var_2.c.x, Struct_1(var_2.c.wz, var_3, var_3.x), 20307u, vec4<u32>(9883u, 51170u, 30366u, var_2.c.x))), !(var_4.c > var_2.b.x), select(false, true, var_4.d) | (false == var_4.d))), -1370f, var_3.xwx, var_3.zyx, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1(vec4<f32>(1426f, var_2.b.x, var_2.b.x, var_3.x), var_4.d, u_input.b).b.x, _wgslsmith_f_op_f32(var_4.c + var_0.x), -426f, 1788f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -879f), -1265f, 1864f, _wgslsmith_f_op_f32(var_4.c * -1392f)))));
}

