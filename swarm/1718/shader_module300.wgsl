struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1244f, 1259f)), 1535f, all(vec3<bool>(true, false, true)))), _wgslsmith_div_f32(-290f, _wgslsmith_f_op_f32(f32(-1f) * -926f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-118f)), -419f, any(vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_f32(sign(1268f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1322f, 202f, -926f, 1581f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-675f, -254f, 347f, 701f)))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1226f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-476f)) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1000f)), -622f, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1510f * _wgslsmith_f_op_f32(sign(-137f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-589f - -2873f)))))));
    var var_2 = ~abs(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(39995u, 4294967295u, u_input.a, arg_0.x), select(vec4<u32>(146646u, u_input.c, u_input.a, 8541u), vec4<u32>(u_input.c, arg_0.x, u_input.a, u_input.a), vec4<bool>(false, false, true, true))), ~(~4294967295u), ~0u, ~(~arg_0.x)));
    var_0 = any(vec4<bool>(any(vec3<bool>(true, true, true)) | select(true, false, true), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false))), ~u_input.c > reverseBits(var_2.x), true)) | (~arg_0.x > arg_0.x);
    let var_3 = Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(56585u, var_2.x, arg_0.x, var_2.x), vec4<u32>(u_input.b.x, var_2.x, 1u, 4294967295u)), ~vec4<u32>(1u, 4294967295u, 1u, var_2.x), true), ~select(vec4<u32>(41090u, 20203u, 0u, 29212u), vec4<u32>(u_input.a, 6726u, arg_0.x, 23078u), vec4<bool>(true, true, false, true))), vec4<u32>(~74187u, abs(u_input.c) & ~u_input.a, ~(~arg_0.x), 147254u), vec4<u32>(_wgslsmith_mod_u32(max(5977u, 0u), u_input.c), ~select(u_input.c, 76047u, true), max(4294967295u << (var_2.x % 32u), abs(u_input.b.x)), ~arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))) + 833f), vec3<u32>(countOneBits(_wgslsmith_sub_u32(8891u, u_input.c)) ^ reverseBits(reverseBits(var_2.x)), 27191u, 1u));
    return _wgslsmith_add_u32(_wgslsmith_mult_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.c.x, var_2.x, arg_0.x), vec3<u32>(4294967295u, 14825u, var_3.c.x)) | ~u_input.b.x), 1u), ~_wgslsmith_dot_vec2_u32(~var_2.ww, ~var_3.c.yy) & firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, var_2.x, 0u, 0u), var_3.a), 33658u)));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: bool) -> vec3<u32> {
    var var_0 = arg_2;
    var var_1 = Struct_1(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(7220u, arg_0, 14326u, var_0.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.c.x, 36050u, 1u), var_0.a))) << (~min(arg_2.a, min(vec4<u32>(arg_2.c.x, u_input.c, 0u, arg_0), vec4<u32>(2956u, arg_0, arg_2.a.x, arg_1.x))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_0.b)) * var_0.b))), ~arg_1);
    let var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-165f, 453f))) + _wgslsmith_f_op_f32(var_1.b * arg_2.b));
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1311f, 667f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-241f, var_2.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, arg_2.b), vec2<f32>(-160f, var_2.b)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-483f, var_2.b), vec2<f32>(var_0.b, 174f), vec2<bool>(true, true))))))));
    return countOneBits(vec3<u32>(u_input.c, ~24530u, arg_1.x ^ ~var_2.c.x) | ~(~var_0.c));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(0u << (max(0u ^ u_input.c, select(0u, 89568u, true)) % 32u), 0u), _wgslsmith_clamp_u32(arg_1.a.x, 1u, abs(arg_1.c.x)));
    let var_1 = arg_1;
    let var_2 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(8960u, 4294967295u, var_1.a.x), arg_1.a.wyx), ~(~var_1.a.yxy)) & func_4(func_3(vec3<u32>(4294967295u, u_input.b.x, 4294967295u) & _wgslsmith_add_vec3_u32(var_1.a.wwz, arg_1.c)), abs(arg_1.c), arg_1, false);
    let var_3 = -_wgslsmith_div_i32(_wgslsmith_mod_i32(-43555i, 14016i) << (arg_1.a.x % 32u), reverseBits(24920i));
    let var_4 = var_1;
    return var_3 == var_3;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = select(!vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), true, false, true), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true), true), !vec4<bool>(false, func_2(vec2<f32>(arg_2.b, arg_2.b), Struct_1(vec4<u32>(1u, arg_2.c.x, 4294967295u, 32658u), arg_2.b, arg_2.a.ywy)), func_2(vec2<f32>(-1482f, 188f), Struct_1(vec4<u32>(30565u, arg_2.a.x, u_input.a, 0u), -1316f, arg_2.a.wwy)), arg_2.b != 146f), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true))), !vec4<bool>((u_input.b.x | u_input.b.x) >= 1u, true, true, !select(false, false, true)));
    var_0 = !(!(!vec4<bool>(true, true, true && var_0.x, var_0.x)));
    return ~(_wgslsmith_div_u32(103020u << (u_input.c % 32u), select(u_input.b.x, 53645u, true) & u_input.b.x) ^ ~(~u_input.c));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = !(!vec4<bool>(var_0.x, all(vec2<bool>(var_0.x, false)), false, var_0.x));
    let var_2 = vec3<f32>(1744f, arg_0.b, _wgslsmith_f_op_f32(-arg_0.b));
    var var_3 = Struct_1(firstLeadingBit(~abs(arg_0.a) & vec4<u32>(1u, _wgslsmith_mod_u32(arg_0.a.x, 15856u), 75035u, arg_0.c.x | 4294967295u)), arg_0.b, ~arg_0.c);
    var var_4 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    var_0 = ~(firstTrailingBit(1i) | 0i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1607f))), _wgslsmith_f_op_f32(round(-1000f))))) + -839f);
    var_0 = i32(-1i) * -_wgslsmith_div_i32(2147483647i, 1i >> (~u_input.b.x % 32u));
    let var_2 = func_5(Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 33647u, 1u, ~u_input.a), vec4<u32>(~u_input.b.x, abs(47908u), ~27889u, u_input.a), vec4<u32>(_wgslsmith_add_u32(94155u, u_input.a), ~u_input.c, 63847u ^ u_input.a, _wgslsmith_div_u32(4294967295u, u_input.b.x))), var_1, _wgslsmith_add_vec3_u32(vec3<u32>(~u_input.b.x, u_input.a >> (1u % 32u), 4294967295u), vec3<u32>(func_1(-17212i, 2147483647i, Struct_1(vec4<u32>(u_input.c, 0u, u_input.c, 0u), -1847f, vec3<u32>(1u, u_input.a, u_input.a))), u_input.c, 4294967295u))), firstTrailingBit(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -1i, -2147483647i), max(vec3<i32>(-34540i, 2985i, 1i), vec3<i32>(-20316i, -56520i, -500i))))));
    var_0 = 1i;
    let var_3 = ~_wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, 54517u), 1u), _wgslsmith_mult_u32(1u, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_u32(9710u, var_3)), var_1, i32(-1i) * -35163i, 4294967295u);
}

