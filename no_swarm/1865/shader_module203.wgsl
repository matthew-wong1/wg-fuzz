struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<u32> {
    var var_0 = min(_wgslsmith_sub_u32(reverseBits(1u), reverseBits(~(~u_input.a))), reverseBits(~(~(~u_input.e))));
    let var_1 = arg_1;
    var var_2 = ~(~select(_wgslsmith_div_vec3_u32(u_input.d >> (u_input.d % vec3<u32>(32u)), vec3<u32>(u_input.a, u_input.a, u_input.a)), select(u_input.d, ~u_input.d, vec3<bool>(true, true, true)), var_1 < _wgslsmith_f_op_f32(abs(arg_1))));
    var var_3 = firstTrailingBit(vec3<u32>(37636u, 0u, 17112u)) << (firstLeadingBit(firstLeadingBit(min(vec3<u32>(0u, 13392u, var_2.x), u_input.d)) | _wgslsmith_mult_vec3_u32(u_input.d, ~u_input.d)) % vec3<u32>(32u));
    var var_4 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.b.x, 1i, _wgslsmith_dot_vec2_i32(arg_0.b, vec2<i32>(u_input.c, arg_0.b.x))), vec3<i32>(u_input.b.x, u_input.b.x, countOneBits(u_input.b.x))), vec3<i32>(-(~arg_0.b.x), ~arg_0.b.x, -10097i)), _wgslsmith_dot_vec3_i32(~abs(min(vec3<i32>(13463i, arg_0.b.x, 2147483647i), vec3<i32>(-1i, u_input.b.x, arg_0.b.x))), vec3<i32>(_wgslsmith_mod_i32(-28922i, arg_0.b.x), select(arg_0.b.x, arg_0.b.x, true), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.x, -18817i), u_input.b)) << ((~u_input.d | countOneBits(u_input.d)) % vec3<u32>(32u))));
    return firstTrailingBit(~_wgslsmith_mod_vec3_u32(abs(select(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 59982u, 3944u), true)), ~u_input.d));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = !select(select(vec2<bool>(!arg_2, arg_2), !select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2)), arg_2), !(!select(vec2<bool>(false, true), vec2<bool>(true, arg_2), arg_2)), select(!select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2), true), select(select(vec2<bool>(arg_2, true), vec2<bool>(true, true), vec2<bool>(arg_2, false)), !vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2)), select(true, all(vec4<bool>(arg_2, true, false, arg_2)), true)));
    let var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d, _wgslsmith_div_vec3_u32(u_input.d, u_input.d ^ ~vec3<u32>(u_input.e, u_input.d.x, u_input.a))), _wgslsmith_sub_vec3_u32(reverseBits(~func_3(Struct_1(vec4<f32>(arg_3.c, arg_0.c, arg_0.c, arg_3.c), vec2<i32>(u_input.c, 1i), arg_3.c), -859f)), ~(_wgslsmith_add_vec3_u32(vec3<u32>(43755u, 4294967295u, 1u), vec3<u32>(u_input.d.x, 4294967295u, u_input.e)) ^ _wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 4294967295u, 70176u)))));
    let var_2 = _wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(ceil(-1218f)));
    var var_3 = _wgslsmith_sub_vec4_i32(-firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(13253i, arg_0.b.x, arg_1.x, u_input.c) >> (vec4<u32>(var_1.x, u_input.e, 4294967295u, 14442u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.b.x, arg_3.b.x, u_input.c, -1i), vec4<i32>(-5467i, 1i, u_input.b.x, -38253i), vec4<i32>(u_input.c, -2147483647i, -25562i, 0i)))), ~(vec4<i32>(arg_3.b.x, u_input.b.x, arg_0.b.x | arg_1.x, -arg_1.x) << (~(~vec4<u32>(u_input.a, var_1.x, 36663u, var_1.x)) % vec4<u32>(32u))));
    let var_4 = 13411i;
    return vec3<bool>(!any(!vec4<bool>(true, arg_2, true, var_0.x)) && all(!select(vec3<bool>(false, var_0.x, false), vec3<bool>(false, arg_2, true), vec3<bool>(var_0.x, true, true))), true, arg_2);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: i32) -> f32 {
    var var_0 = -899f;
    let var_1 = select(!select(func_2(Struct_1(vec4<f32>(-343f, 780f, 1818f, -215f), u_input.b, 1000f), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, -18547i), u_input.b), true, Struct_1(vec4<f32>(1000f, -990f, -1002f, 511f), vec2<i32>(arg_2, u_input.c), -986f)), vec3<bool>(true, true, true), true), select(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)), select(vec3<bool>(select(true, true, true), true, true), vec3<bool>(false, true, any(vec4<bool>(false, false, false, true))), true), vec3<bool>(any(vec4<bool>(true, true, true, false)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), false)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), func_2(Struct_1(vec4<f32>(1782f, 1575f, -748f, 2571f), u_input.b, 112f), u_input.b, false, Struct_1(vec4<f32>(2556f, -447f, -1505f, -736f), vec2<i32>(0i, u_input.b.x), 829f)), true), true));
    let var_2 = arg_0.zy;
    var_0 = -125f;
    var_0 = _wgslsmith_f_op_f32(abs(-2489f));
    return _wgslsmith_f_op_f32(f32(-1f) * -668f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-662f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-340f, 823f))), _wgslsmith_f_op_f32(-1150f * 1580f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(426f + 871f)))), vec2<i32>(_wgslsmith_mult_i32(~u_input.c & u_input.b.x, -2147483647i), 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1302f, _wgslsmith_f_op_f32(sign(-317f)))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(840f + -106f)))));
    var var_1 = min(~15806u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e, u_input.a, u_input.a, u_input.d.x), ~(~vec4<u32>(1u, u_input.a, 15202u, u_input.d.x))));
    var_1 = _wgslsmith_mult_u32(u_input.d.x, ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(32804u, 0u, u_input.e))), _wgslsmith_div_u32(4294967295u, abs(4294967295u))));
    var var_2 = 718f;
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(1314f + _wgslsmith_f_op_f32(2219f * 1000f))), _wgslsmith_f_op_f32(func_1(u_input.d, u_input.e, var_0.b.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), 967f))));
    let var_3 = vec2<u32>(1u, 39693u) | u_input.d.yx;
    var var_4 = select(!vec4<bool>(false, true, _wgslsmith_f_op_f32(step(var_0.c, 475f)) >= -908f, all(vec2<bool>(false, false))), select(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), true), vec4<bool>(false, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true))), !all(vec2<bool>(false, false)), func_2(var_0, u_input.b, any(vec4<bool>(true, false, false, false)), Struct_1(var_0.a, vec2<i32>(0i, u_input.b.x), var_0.c)).x), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true)))), !select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, true, true), true), vec4<bool>(u_input.e == var_3.x, true, true, false)));
    let var_5 = ~var_3.x;
    let var_6 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(_wgslsmith_sub_vec2_i32(u_input.b, _wgslsmith_div_vec2_i32(vec2<i32>(var_0.b.x, -2192i), vec2<i32>(18190i, var_0.b.x))), vec2<i32>(i32(-1i) * -1i, countOneBits(var_0.b.x)), !var_4.ww)), u_input.a, -2133f);
}

