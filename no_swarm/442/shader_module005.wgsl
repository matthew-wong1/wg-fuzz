struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(~(~arg_0.x), arg_3.b, _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~min(vec4<u32>(arg_1.x, arg_0.x, 5782u, arg_0.x), vec4<u32>(4294967295u, arg_3.c.x, arg_2.x, arg_3.a)), arg_3.c), abs(~arg_3.c) ^ abs(~vec4<u32>(arg_2.x, arg_0.x, 16592u, arg_0.x))));
    let var_1 = _wgslsmith_f_op_f32(188f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)) - var_0.b)));
    var var_2 = Struct_1(_wgslsmith_add_u32(arg_0.x, 15903u), _wgslsmith_f_op_f32(abs(-674f)), ~(~select(arg_3.c, countOneBits(vec4<u32>(5868u, 37966u, var_0.c.x, var_0.a)), vec4<bool>(true, true, true, true))));
    let var_3 = countOneBits(u_input.a);
    var var_4 = Struct_1(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(174f, -1644f)) - _wgslsmith_div_f32(653f, -1450f)) + _wgslsmith_f_op_f32(var_0.b * _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(round(arg_3.b))))), countOneBits(vec4<u32>(~var_0.a, ~arg_0.x ^ _wgslsmith_div_u32(130u, 84031u), var_0.c.x, reverseBits(arg_0.x))));
    return _wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, 0u, 41836u, 0u)), _wgslsmith_add_vec4_u32(~var_4.c, _wgslsmith_div_vec4_u32(var_4.c, vec4<u32>(4294967295u, arg_2.x, arg_3.a, var_0.c.x)))), vec4<u32>(var_4.c.x, _wgslsmith_sub_u32(1u, firstTrailingBit(arg_3.a & arg_1.x)), 1u, ~(~_wgslsmith_clamp_u32(13933u, 2304u, arg_0.x))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(~(~0u), arg_2.b, func_3(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, arg_0), 1u), arg_0), vec2<u32>(arg_0, ~56807u), firstLeadingBit(select(vec3<u32>(arg_0, 40782u, arg_0), ~arg_2.c.xxw, true)), arg_1));
    var var_1 = vec4<f32>(arg_2.b, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b))) + _wgslsmith_f_op_f32(trunc(-2611f)))), arg_1.b);
    var var_2 = select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true))), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true))), vec4<bool>(true, _wgslsmith_mod_i32(-22991i, _wgslsmith_mod_i32(u_input.a, 2147483647i)) >= u_input.a, _wgslsmith_f_op_f32(-var_0.b) == arg_1.b, _wgslsmith_mult_u32(reverseBits(arg_2.c.x), 1u) < arg_1.c.x), select(select(vec4<bool>(all(vec2<bool>(false, false)), true, true, u_input.a > -1i), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(false, false, false, false), true)), vec4<bool>(true, false, true, true), any(vec3<bool>(true, true, true))));
    var var_3 = 17669i ^ _wgslsmith_add_i32(u_input.a, -1728i);
    let var_4 = arg_2;
    return 4294967295u;
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(983f, 357f) + vec2<f32>(455f, -1083f))) * vec2<f32>(-290f, _wgslsmith_f_op_f32(2335f + -1441f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1887f, _wgslsmith_f_op_f32(f32(-1f) * -608f)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1302f, -113f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(728f, -767f) + vec2<f32>(194f, -170f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1331f, -882f)) + vec2<f32>(879f, 278f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-541f, 234f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-710f, -406f))))));
    return Struct_1(1u, 274f, vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(2880u, 18110u) | vec2<u32>(arg_1, arg_1), vec2<u32>(4535u, arg_1))), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_1, 59683u), vec2<u32>(arg_1, 1u)), vec2<u32>(~arg_1, 1u)), _wgslsmith_clamp_u32(14963u, ~_wgslsmith_mult_u32(arg_1, 45878u), _wgslsmith_div_u32(_wgslsmith_div_u32(57241u, 22756u), ~8697u)), 0u));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: bool) -> u32 {
    let var_0 = func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(~(-12915i << (0u % 32u)), 0i, min(u_input.a, 1i) >> (57879u % 32u), max(arg_2.x, u_input.a) & (arg_2.x & arg_1.x)), firstTrailingBit(-(~vec4<i32>(arg_2.x, -15244i, u_input.a, arg_1.x)))), countOneBits(_wgslsmith_div_u32(~1u, ~func_2(72090u, Struct_1(25385u, -1000f, vec4<u32>(48612u, 31903u, 31155u, 1u)), Struct_1(4294967295u, 1592f, vec4<u32>(24541u, 33544u, 7908u, 8874u))))), ~firstLeadingBit(vec3<i32>(1i, arg_2.x ^ u_input.a, 26354i)));
    var var_1 = func_4(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-50643i, arg_2.x, -12212i, arg_1.x), ~vec4<i32>(-71480i, u_input.a, 34451i, arg_1.x)) | ~vec4<i32>(30158i, u_input.a, -7466i, arg_2.x)), _wgslsmith_sub_u32(0u, abs(var_0.a)), select(arg_2, ~(~vec3<i32>(-1i, arg_2.x, 1533i) | arg_2), arg_0.x));
    var var_2 = _wgslsmith_f_op_f32(var_1.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.b)), var_0.b));
    var_2 = _wgslsmith_f_op_f32(trunc(var_0.b));
    var var_3 = vec4<i32>(arg_1.x ^ _wgslsmith_mod_i32(arg_1.x, firstTrailingBit(max(arg_2.x, arg_1.x))), max(-2147483647i, _wgslsmith_mult_i32(select(0i, arg_1.x, arg_0.x) & (arg_2.x << (0u % 32u)), 0i)), ~13821i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(select(~vec4<i32>(2147483647i, 19572i, arg_1.x, arg_1.x), firstLeadingBit(vec4<i32>(arg_1.x, arg_1.x, u_input.a, arg_2.x)), true), _wgslsmith_add_vec4_i32(vec4<i32>(arg_2.x, arg_1.x, u_input.a, 1i), ~vec4<i32>(21223i, -6297i, u_input.a, -45298i))), _wgslsmith_sub_i32(countOneBits(~(-64367i)), min(abs(arg_1.x), ~u_input.a))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(-1219i);
    var_0 = ~(-(~reverseBits(u_input.a)) >> (13441u % 32u));
    var_0 = u_input.a;
    var_0 = 0i;
    var var_1 = Struct_1(firstTrailingBit(abs(~min(77940u, 50986u))), 457f, ~_wgslsmith_sub_vec4_u32(vec4<u32>(~53662u, _wgslsmith_mod_u32(39938u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 60868u), vec4<u32>(18754u, 49396u, 17774u, 4294967295u)), func_1(vec2<bool>(false, true), vec2<i32>(16131i, u_input.a), vec3<i32>(-45800i, -18549i, u_input.a), true)), vec4<u32>(~0u, ~0u, ~23450u, 9118u)));
    var_1 = func_4(~abs(-vec4<i32>(u_input.a, 12839i, u_input.a, -2147483647i) << (vec4<u32>(1u, var_1.a, var_1.a, var_1.a) % vec4<u32>(32u))), min(_wgslsmith_mult_u32(var_1.c.x, var_1.a), 4237u), abs(~min(vec3<i32>(-1i, u_input.a, -1i), firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)))));
    var_0 = i32(-1i) * -_wgslsmith_mult_i32(-2147483647i, u_input.a);
    var_0 = _wgslsmith_dot_vec4_i32(-min(vec4<i32>(firstLeadingBit(58083i), firstTrailingBit(u_input.a), 1i, -2147483647i), vec4<i32>(0i, u_input.a, ~u_input.a, _wgslsmith_sub_i32(-2147483647i, u_input.a))), select(-_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 3842i, u_input.a, u_input.a), vec4<i32>(u_input.a, 0i, u_input.a, 6845i)), vec4<i32>(-42424i, -18030i, u_input.a, 2147483647i)), vec4<i32>(-_wgslsmith_clamp_i32(u_input.a, -2147483647i, u_input.a), (u_input.a & 1i) << (1u % 32u), ~_wgslsmith_add_i32(1i, 0i), select(-10678i, -1i, var_1.a > var_1.a)), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, vec4<u32>(func_3(func_3(var_1.c.yx, var_1.c.zy, var_1.c.xwx, Struct_1(var_1.a, 1001f, vec4<u32>(4294967295u, 45033u, var_1.c.x, var_1.c.x))).wz, var_1.c.zy, ~vec3<u32>(var_1.c.x, 47241u, var_1.a), Struct_1(var_1.c.x, var_1.b, vec4<u32>(var_1.a, var_1.a, 39276u, var_1.c.x))).x, ~_wgslsmith_div_u32(var_1.c.x, var_1.a), _wgslsmith_mod_u32(_wgslsmith_add_u32(var_1.a, var_1.c.x), var_1.a << (var_1.c.x % 32u)), ~var_1.c.x ^ var_1.a) ^ vec4<u32>(51083u, countOneBits(var_1.a), firstLeadingBit(var_1.c.x) & var_1.c.x, ~var_1.c.x << (~55921u % 32u)));
}

