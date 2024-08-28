struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -141f)));
    var var_1 = Struct_4(-(select(vec4<i32>(u_input.a, -20640i, -1i, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(23907i, u_input.a, arg_0, 1i), vec4<i32>(0i, u_input.a, 0i, u_input.a)), true) ^ select(vec4<i32>(2743i, 36752i, arg_0, arg_0) & vec4<i32>(arg_0, arg_0, arg_0, -2147483647i), -vec4<i32>(-1i, u_input.a, u_input.a, arg_0), u_input.a <= -48358i)), true, 1u, min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 25467u), vec2<u32>(25039u, 4294967295u)), 1u), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u), select(10773u, 31070u, true), _wgslsmith_mod_u32(4294967295u, 72916u), 73705u))));
    var_1 = Struct_4(min(~(-var_1.a), min(_wgslsmith_mod_vec4_i32(var_1.a, var_1.a) ^ (var_1.a << (vec4<u32>(var_1.d, var_1.d, 4294967295u, var_1.c) % vec4<u32>(32u))), vec4<i32>(arg_0, -30371i, var_1.a.x, 17941i) >> (vec4<u32>(var_1.c, var_1.d, 1u, var_1.d) % vec4<u32>(32u)))), true, ~(~(~reverseBits(var_1.d))), abs(0u));
    var_1 = Struct_4(~min(-abs(vec4<i32>(u_input.a, u_input.a, u_input.a, var_1.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, var_1.a.x, arg_0, arg_0), var_1.a)), 1u > var_1.c, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d, 55362u), vec2<u32>(var_1.c, var_1.d) | vec2<u32>(0u, 95587u)), ~abs(8541u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d, var_1.d, 0u) ^ vec3<u32>(var_1.d, 1u, var_1.c), ~vec3<u32>(4294967295u, 32972u, 0u))), vec3<u32>(var_1.d, min(var_1.c, 16211u) >> ((11621u & var_1.c) % 32u), var_1.d)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(4294967295u, var_1.c), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(53349u, var_1.c, var_1.c), vec3<u32>(var_1.c, var_1.d, var_1.c)), reverseBits(var_1.c)), var_1.d), ~abs(abs(33201u)), var_1.c));
    var var_2 = var_1.d;
    return -_wgslsmith_mult_i32(0i, -1i >> (_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_1.c, var_1.c), 51839u, var_1.c ^ var_1.d) % 32u));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(559f * -609f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-366f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-269f, 1499f)) + -1154f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1094f, -131f)))))));
    var var_1 = (min(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i) | vec4<i32>(u_input.a, u_input.a, 56373i, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), vec4<i32>(0i, u_input.a, u_input.a, -2147483647i))), vec4<i32>(_wgslsmith_clamp_i32(-803i, u_input.a, u_input.a), u_input.a, u_input.a, 1i)) & -vec4<i32>(_wgslsmith_div_i32(u_input.a, -2147483647i), func_3(35272i), _wgslsmith_sub_i32(1i, u_input.a), -2147483647i)) & -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, -6456i, 7196i), _wgslsmith_clamp_vec4_i32(~vec4<i32>(37092i, u_input.a, 2147483647i, u_input.a), vec4<i32>(20447i, 2147483647i, u_input.a, -33511i) << (vec4<u32>(4294967295u, 128356u, 49345u, 20813u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-34072i, u_input.a, u_input.a, 24617i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    return Struct_3(Struct_2(select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, true, true)), true), vec2<bool>(true, true)), Struct_1(25435u, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, 802f, var_0.x), vec3<f32>(var_0.x, -633f, var_0.x))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(561f, var_0.x, 945f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(204f - 947f)), vec2<bool>(true, true), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, u_input.a), _wgslsmith_sub_vec2_i32(var_1.xz, vec2<i32>(2144i, u_input.a)), var_1.zy ^ var_1.xx)), Struct_1(abs(abs(4294967295u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, var_0.x, 1628f), vec3<f32>(var_0.x, var_0.x, var_0.x)))), var_0.x, vec2<bool>(true, true), select(-var_1.yy, ~vec2<i32>(var_1.x, u_input.a), select(vec2<bool>(true, true), vec2<bool>(true, false), false))), _wgslsmith_f_op_f32(ceil(1578f)) == var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -644f)), Struct_2(vec2<bool>(false, true), Struct_1(~0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-762f, -879f, -279f))), var_0.x, select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, false)), countOneBits(var_1.xw >> (vec2<u32>(21850u, 4294967295u) % vec2<u32>(32u)))), Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 41645u), vec2<u32>(1u, 41589u)), 1u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, var_0.x, 802f), vec3<f32>(-865f, 1040f, var_0.x))))), _wgslsmith_f_op_f32(-1386f * 940f), vec2<bool>(true, true), abs(firstLeadingBit(var_1.xy))), false | !any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1172f) - var_0.x)));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    var var_0 = firstTrailingBit(1i);
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-521f, 264f))));
    let var_3 = Struct_2(var_1.a.a, Struct_1(_wgslsmith_mod_u32(~abs(0u), abs(var_1.b.b.a)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_1.b.c.b.x)))), -678f, -151f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1274f - 240f) * 1287f))), vec2<bool>(!(!var_1.a.a.x), true || any(arg_0)), vec2<i32>(_wgslsmith_mult_i32(countOneBits(var_1.b.b.e.x), _wgslsmith_mult_i32(1i, var_1.a.b.e.x)), u_input.a)), Struct_1(~(~var_1.a.b.a), vec3<f32>(var_1.b.c.b.x, -1106f, var_1.a.b.b.x), _wgslsmith_f_op_f32(sign(-141f)), !arg_0.wx, vec2<i32>(-var_1.b.b.e.x ^ u_input.a, var_1.a.b.e.x)), func_2().a.b.d.x && true, var_1.b.c.b.x);
    return min(-9910i, var_1.b.c.e.x) & max(15571i, ~_wgslsmith_div_i32(_wgslsmith_add_i32(0i, var_3.b.e.x), ~var_3.c.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(vec3<i32>(u_input.a, reverseBits(reverseBits(_wgslsmith_sub_i32(0i, u_input.a))), func_1(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)))), (-firstLeadingBit(vec3<i32>(-2147483647i, u_input.a, 3902i)) >> ((select(vec3<u32>(71777u, 14047u, 80777u), vec3<u32>(4294967295u, 25104u, 1u), false) >> (vec3<u32>(21171u, 687u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))) | vec3<i32>(u_input.a, -1i, _wgslsmith_div_i32(~u_input.a, -1i)));
    let var_1 = Struct_4(-vec4<i32>(-30079i, var_0.x, var_0.x, u_input.a), true, abs(49774u), ~1u);
    var var_2 = func_2().b;
    var_2 = Struct_2(vec2<bool>(!select(!var_2.c.d.x, u_input.a <= var_0.x, var_2.d), !any(vec3<bool>(var_1.b, var_2.c.d.x, false)) | true), Struct_1(var_2.c.a, var_2.c.b, _wgslsmith_div_f32(var_2.e, _wgslsmith_f_op_f32(-1742f + -411f)), var_2.c.d, vec2<i32>(u_input.a, var_1.a.x)), Struct_1(abs(10373u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.e, -217f, -1728f), var_2.c.b), _wgslsmith_f_op_vec3_f32(-var_2.b.b))), _wgslsmith_f_op_f32(256f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_2.b.b.x))), vec2<bool>(var_1.b, any(var_2.a)), -var_2.c.e), false, var_2.c.c);
    let var_3 = -vec3<i32>(var_0.x, var_1.a.x, reverseBits(var_0.x));
    let var_4 = func_2().a.b;
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.c * var_4.c))) * -756f));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d);
}

