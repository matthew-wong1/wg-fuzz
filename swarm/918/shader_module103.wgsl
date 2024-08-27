struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: u32, arg_3: vec2<u32>) -> u32 {
    var var_0 = -1021f;
    var_0 = _wgslsmith_f_op_f32(min(-1077f, 331f));
    var var_1 = Struct_2(arg_0);
    var_0 = -519f;
    let var_2 = 841f;
    return arg_2;
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = u_input.a >> ((func_3(true, vec2<u32>(abs(11111u), 122300u), ~select(23442u, 8630u, true), max(~vec2<u32>(0u, 1u), ~vec2<u32>(4294967295u, 4294967295u))) | (~select(51956u, 0u, true) >> (_wgslsmith_div_u32(~31229u, 1u) % 32u))) % 32u);
    var var_1 = select(_wgslsmith_mult_vec3_i32(~(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, u_input.c.x, var_0), vec3<i32>(0i, u_input.a, -2147483647i))), vec3<i32>(var_0, ~_wgslsmith_mod_i32(3641i, -63529i), _wgslsmith_clamp_i32(firstLeadingBit(var_0), firstLeadingBit(-1i), var_0))), min(~(~vec3<i32>(-2147483647i, var_0, u_input.c.x)), vec3<i32>(var_0, firstTrailingBit(_wgslsmith_add_i32(0i, var_0)), var_0)), select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), true), vec3<bool>(u_input.b.x <= 21459i, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), true), true));
    var_1 = vec3<i32>(~firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c.x, u_input.b.x), ~var_0)), u_input.a, _wgslsmith_div_i32(var_1.x, select(var_1.x, var_1.x, false)));
    let var_2 = Struct_1(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, false, true)), true), true), true), vec4<i32>(1i, firstTrailingBit(var_0), max(firstTrailingBit(-var_0), _wgslsmith_div_i32(var_0, 26951i)), ~var_0), ~var_0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1660f), _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-217f, 189f)))), true)), false);
    let var_3 = var_2;
    return -25787i;
}

fn func_1(arg_0: f32, arg_1: u32) -> f32 {
    var var_0 = u_input.c.x;
    var_0 = _wgslsmith_div_i32((28217i ^ -(-59086i << (arg_1 % 32u))) & select(func_2(_wgslsmith_f_op_f32(-538f + arg_0)), _wgslsmith_mult_i32(~u_input.c.x, 44661i), false), -38045i);
    let var_1 = -537f;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, arg_0, arg_0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_1, var_1) - vec3<f32>(var_1, 2198f, arg_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -948f, -1441f) - vec3<f32>(-3315f, var_1, var_1))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1015f, _wgslsmith_f_op_f32(min(-364f, arg_0)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1415f, arg_0) + vec3<f32>(arg_0, 258f, var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, var_1, var_1)))))), !(!select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), true))));
    var var_3 = Struct_1(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) >= _wgslsmith_f_op_f32(-1391f - _wgslsmith_f_op_f32(f32(-1f) * -1053f)), true), abs(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.c.x, 2147483647i, -1i))) << (vec4<u32>(arg_1 & arg_1, arg_1, ~14711u, ~_wgslsmith_sub_u32(32855u, arg_1)) % vec4<u32>(32u)), u_input.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)), all(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, all(vec4<bool>(true, true, false, true)))));
    return 377f;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    let var_0 = abs(~(vec2<i32>(-1i) * -(~vec2<i32>(22288i, 0i))));
    let var_1 = Struct_2(any(select(!select(vec3<bool>(arg_1.a, arg_2.a.x, false), vec3<bool>(arg_1.a, arg_1.a, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), arg_2.a.x)));
    let var_2 = false;
    let var_3 = Struct_1(arg_2.a, -abs(_wgslsmith_mult_vec4_i32(select(arg_2.b, vec4<i32>(1945i, arg_2.c, 0i, -1i), true), arg_2.b)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, u_input.b.x) & max(-1i, 2147483647i), -7381i | arg_2.c) ^ -(~2147483647i), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -762f), _wgslsmith_f_op_f32(-arg_0)), any(vec2<bool>(any(select(vec3<bool>(false, false, var_1.a), vec3<bool>(var_1.a, true, var_1.a), arg_2.a.x)), var_2)));
    let var_4 = -(~min(vec2<i32>(-7751i, ~var_0.x), var_3.b.zy | select(u_input.c, var_0, arg_2.a)));
    return -10223i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(firstLeadingBit(~(-1i)), _wgslsmith_mod_i32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(390f, 15008u))), Struct_2(all(vec2<bool>(true, false))), Struct_1(vec2<bool>(true, false), max(vec4<i32>(u_input.b.x, -1i, u_input.c.x, -10456i), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 21503i)), ~81550i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(399f, -1000f)), all(vec3<bool>(true, true, false)))), u_input.c.x), !((0i & u_input.b.x) < (u_input.a ^ 1i)) & all(vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -573f)));
    var_0 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(-18345i, _wgslsmith_div_i32(firstLeadingBit(u_input.c.x), -(~1i)), u_input.b.x), u_input.c.x);
    var var_2 = vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 - var_1)))) <= _wgslsmith_f_op_f32(-var_1));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1023f), _wgslsmith_f_op_f32(abs(-1568f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-438f - var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1346f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1093f), _wgslsmith_f_op_f32(-var_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-936f - -1649f)));
    var var_4 = countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(~u_input.c.x, 2147483647i), 32397i, min(u_input.c.x, func_4(var_1, Struct_2(var_2.x), Struct_1(vec2<bool>(var_2.x, var_2.x), vec4<i32>(u_input.c.x, u_input.b.x, u_input.a, u_input.b.x), 1i, vec2<f32>(var_3.x, var_1), true))), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c.x, u_input.b.x, -30261i), vec3<i32>(u_input.a, 0i, u_input.a))), firstLeadingBit(select(select(vec4<i32>(-23447i, -7651i, u_input.a, u_input.c.x), vec4<i32>(2147483647i, u_input.a, u_input.a, -84548i), vec4<bool>(var_2.x, var_2.x, false, false)), countOneBits(vec4<i32>(-1i, -38260i, -1956i, u_input.a)), false))));
    var_2 = vec2<bool>(true, false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(1u, 1u)) & reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 11748u), vec2<u32>(1u, 4294967295u)), ~0u)), var_3.xw);
}

