struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> f32 {
    global0 = ~(~(vec4<u32>(_wgslsmith_div_u32(arg_0.e.x, 4294967295u), firstLeadingBit(126334u), _wgslsmith_mod_u32(62044u, arg_0.e.x), ~23644u) << (~max(vec4<u32>(31244u, 4294967295u, 27303u, 4294967295u), vec4<u32>(4294967295u, arg_0.e.x, arg_0.e.x, arg_0.e.x)) % vec4<u32>(32u))));
    let var_0 = abs(countOneBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3, arg_3, 1748i, -7947i), vec4<i32>(arg_3, -18007i, arg_3, arg_3)) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.e.x, arg_1, 4294967295u, 82157u), vec4<u32>(4232u, u_input.b, 1u, u_input.c.x)) ^ vec4<u32>(arg_1, arg_2.e.x, global0.x, u_input.a.x)) % vec4<u32>(32u))));
    let var_1 = !(!select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(false, false), all(vec3<bool>(true, true, false))), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_2 = -1764f;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, arg_2.d))))), 951f));
    return 767f;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    global0 = vec4<u32>(max(global0.x, global0.x) | min(1u, global0.x), firstTrailingBit(u_input.d), ~8518u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(global0.x, u_input.b), arg_0.e.x), 0u) << ((~1u | ~min(global0.x, arg_0.e.x)) % 32u));
    var var_0 = Struct_2(arg_0, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(806f, arg_0.b, _wgslsmith_f_op_f32(sign(arg_0.d)), _wgslsmith_f_op_f32(-arg_0.d)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.c + arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-362f, _wgslsmith_f_op_f32(arg_0.a.x - arg_0.b)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(arg_0.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.a.x, -2586f, arg_0.d, -1000f))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, arg_0.d, 308f, 786f) * arg_0.c))), true)), arg_0.a.x, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(99049u, arg_0.e.x, 24043u, 1u), vec4<u32>(arg_0.e.x, 0u, 48017u, global0.x)), ~(~1u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.c.x) + _wgslsmith_f_op_f32(f32(-1f) * -165f))) * _wgslsmith_f_op_f32(f32(-1f) * -635f)));
    var var_2 = arg_0;
    let var_3 = Struct_2(arg_0, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1078f, _wgslsmith_f_op_f32(var_1 + -1674f), -1218f, _wgslsmith_f_op_f32(sign(1247f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-433f, _wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(sign(var_1)), _wgslsmith_f_op_f32(-1312f - var_1), _wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.d)) - _wgslsmith_f_op_f32(-var_2.d)), true == any(vec3<bool>(true, false, false)))), min(firstLeadingBit(~global0.xx), global0.xx)));
    return abs(var_3.b.e.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_1.x;
    var var_1 = 0u;
    global0 = vec4<u32>(~_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global0.x, arg_3.e.x, 36233u), vec4<u32>(arg_1.x, 4294967295u, arg_3.e.x, 14296u), vec4<u32>(1u, var_0, arg_3.e.x, 30731u)), vec4<u32>(1u, u_input.b, var_0, 61608u)), countOneBits(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_2, arg_2, arg_3.c.x) - arg_3.a), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, -1079f, arg_2, arg_2)), arg_2, vec2<u32>(var_0, 39502u)), _wgslsmith_add_i32(~arg_0.x, reverseBits(-43637i)))), 1u, firstLeadingBit(4294967295u));
    global0 = vec4<u32>(~(~arg_1.x), 41396u, arg_1.x, 0u);
    var_1 = 1u;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-116f)) + _wgslsmith_f_op_f32(floor(arg_3.c.x))), _wgslsmith_div_f32(-615f, 383f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_2)))), _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-662f * -640f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(max(arg_3.a, arg_3.a)), arg_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1220f, arg_2, 1108f)), _wgslsmith_f_op_f32(262f + arg_3.a.x), u_input.a.yz), ~min(58477u, 0u), arg_3, arg_0.x)) + -511f), vec4<f32>(arg_2, -430f, -2431f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.d)))), _wgslsmith_f_op_f32(step(-1597f, 1041f)), ~(~max(u_input.c | vec2<u32>(u_input.a.x, arg_1.x), vec2<u32>(30856u, 35325u))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = u_input.d;
    global0 = vec4<u32>(var_0, _wgslsmith_mult_u32(~4294967295u, abs(1u)) | _wgslsmith_div_u32(~(~u_input.b), global0.x), 4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.e.x, global0.x), u_input.a.zx), ~(~4294967295u)) & _wgslsmith_sub_u32(abs(24027u | arg_1.e.x), 4294967295u));
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -arg_0, -vec4<i32>(33408i, ~arg_0.x & arg_0.x, ~arg_0.x, _wgslsmith_dot_vec4_i32(arg_0, arg_0) | -arg_0.x));
    global0 = vec4<u32>(global0.x, _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_sub_u32(global0.x | u_input.a.x, global0.x)), ~u_input.d, (_wgslsmith_dot_vec2_u32(firstLeadingBit(global0.zw), select(vec2<u32>(arg_1.e.x, u_input.d), vec2<u32>(4294967295u, 84073u), vec2<bool>(true, false))) | (countOneBits(40954u) << (arg_1.e.x % 32u))) & ~min(u_input.a.x, 69219u));
    var var_2 = -2147483647i;
    return _wgslsmith_sub_i32(0i, firstTrailingBit(arg_0.x));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<f32>) -> StorageBuffer {
    let var_0 = -1i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(func_2(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(arg_0.x, 7398i, -2147483647i, -37718i)), _wgslsmith_div_vec4_i32(vec4<i32>(var_0, 1i, arg_0.x, -21381i), vec4<i32>(-27587i, var_0, 0i, arg_0.x)), vec4<i32>(-2147483647i, 27760i, -1i, arg_2.x) | vec4<i32>(-8583i, -2147483647i, arg_2.x, 3226i)), _wgslsmith_div_vec2_u32(vec2<u32>(77391u, 3769u) & vec2<u32>(u_input.a.x, global0.x), _wgslsmith_add_vec2_u32(vec2<u32>(arg_1.e.x, u_input.b), u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.d))), func_2(~vec4<i32>(1i, arg_0.x, var_0, 22986i), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 77216u), arg_1.e, vec2<u32>(arg_1.e.x, global0.x)), 242f, Struct_1(arg_1.c, -285f, arg_1.a, -559f, vec2<u32>(4294967295u, 27853u)))).d)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -102f) + -151f));
    global0 = ~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(arg_1.e.x, u_input.c.x, 12144u, 4294967295u) ^ vec4<u32>(u_input.c.x, 19175u, 37279u, u_input.c.x)), ~(~vec4<u32>(44115u, global0.x, u_input.c.x, arg_1.e.x))) << (_wgslsmith_add_vec4_u32(reverseBits(~select(vec4<u32>(arg_1.e.x, u_input.c.x, 46975u, arg_1.e.x), vec4<u32>(global0.x, 81276u, u_input.a.x, 6138u), vec4<bool>(true, true, true, true))), vec4<u32>(global0.x, 84806u, ~global0.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, global0.x), 61601u))) % vec4<u32>(32u));
    let var_2 = select(_wgslsmith_sub_vec4_i32(vec4<i32>(~2147483647i, 2147483647i, firstTrailingBit(var_0), arg_2.x) ^ ~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_0, arg_0.x, -47842i), vec4<i32>(arg_0.x, var_0, 2147483647i, 2147483647i)), abs(select(vec4<i32>(28890i, var_0, -34961i, arg_0.x), vec4<i32>(var_0, 3758i, 2147483647i, arg_0.x), true) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(27340i, 26523i, -72i, 1i), vec4<i32>(var_0, var_0, arg_0.x, -16893i), vec4<i32>(1721i, arg_0.x, arg_2.x, 2147483647i)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, max(-1i, 3842i), select(var_0, _wgslsmith_mod_i32(-48459i, arg_2.x), any(vec2<bool>(false, false))), arg_2.x), ~abs(~vec4<i32>(0i, arg_0.x, arg_2.x, var_0)), vec4<i32>(i32(-1i) * -770i, firstTrailingBit(-65511i), -2147483647i, max(-2147483647i, _wgslsmith_add_i32(var_0, 27531i)))), false);
    var var_3 = u_input.a.x;
    return StorageBuffer(arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(global0.x, ~_wgslsmith_clamp_u32(u_input.b, select(global0.x, abs(global0.x), all(vec2<bool>(true, false))), u_input.b));
    global0 = abs(~(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 1u, 46398u, 1u), vec4<u32>(var_0.x, var_0.x, u_input.b, 4294967295u)), vec4<u32>(global0.x, global0.x, var_0.x, 4294967295u), vec4<bool>(true, true, false, true))));
    var var_1 = 0i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f)))));
    let var_3 = max(var_0.x, ~_wgslsmith_mult_u32(~4294967295u, countOneBits(~40136u)));
    var_1 = 1i;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1124f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<f32>(1244f, 1411f, -1000f, -1031f), 567f, vec4<f32>(-1088f, -346f, -383f, -714f), 1230f, vec2<u32>(global0.x, var_3)), _wgslsmith_dot_vec2_u32(vec2<u32>(11161u, u_input.b), global0.xx), Struct_1(vec4<f32>(-1827f, 815f, 1933f, -1036f), 741f, vec4<f32>(350f, 1746f, -1000f, -1230f), -454f, vec2<u32>(global0.x, u_input.a.x)), 2147483647i)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(125f, -287f))))));
    let x = u_input.a;
    s_output = func_5(vec2<i32>(func_4(-vec4<i32>(1i, 1i, 1i, 1i), func_2(vec4<i32>(0i, -66532i, -22820i, 1i) >> (vec4<u32>(32798u, u_input.a.x, u_input.d, 0u) % vec4<u32>(32u)), u_input.a.xx, _wgslsmith_f_op_f32(sign(591f)), Struct_1(vec4<f32>(-1242f, 1036f, -190f, -627f), 913f, vec4<f32>(1184f, 833f, 2445f, -265f), 316f, vec2<u32>(4294967295u, var_0.x)))), -1i), func_2(select(~(~vec4<i32>(-3781i, 74474i, -68606i, 0i)), firstLeadingBit(vec4<i32>(0i, -2147483647i, -37193i, -54763i)), vec4<bool>(all(vec3<bool>(true, false, false)), true, true, true)), vec2<u32>(1u & (4294967295u ^ var_3), 90831u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(774f, -169f)), _wgslsmith_f_op_f32(abs(1582f)))) - -1629f), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1256f, -430f, -1329f, -579f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(select(-172f, 925f, false))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1074f, -337f, 271f, -1350f))), _wgslsmith_div_vec4_f32(vec4<f32>(-227f, -102f, 936f, -353f), vec4<f32>(-729f, -816f, -1032f, 1242f)))), _wgslsmith_f_op_f32(f32(-1f) * -1278f), _wgslsmith_mult_vec2_u32(vec2<u32>(2392u, 91982u) ^ u_input.c, countOneBits(global0.xx)))), ~(~abs(min(vec2<i32>(-44566i, 0i), vec2<i32>(-34i, -2147483647i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1297f, -746f))), vec2<f32>(_wgslsmith_f_op_f32(-1385f * -1237f), _wgslsmith_f_op_f32(min(-1000f, 449f))))));
}

