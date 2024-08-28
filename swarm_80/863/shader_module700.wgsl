struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
    c: Struct_3,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: vec2<i32> = vec2<i32>(-1i, i32(-2147483648));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(!(false & all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(317f, 926f))), _wgslsmith_div_vec2_f32(vec2<f32>(1772f, 193f), vec2<f32>(683f, -799f)))))), ~(~vec2<u32>(1u, 1u ^ u_input.a)), u_input.a, global0.x);
    global0 = _wgslsmith_mod_vec2_i32(-(vec2<i32>(-1i) * -(vec2<i32>(-27027i, -17987i) ^ vec2<i32>(var_0.e, 0i))), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(global0.x, global0.x, var_0.e, var_0.e)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, var_0.e, 0i, global0.x), vec4<i32>(-2147483647i, global0.x, 2147483647i, -52883i))), select(vec4<i32>(-1i, 9168i, var_0.e, global0.x), vec4<i32>(global0.x, global0.x, 4228i, var_0.e), vec4<bool>(true, false, true, var_0.a)) | (vec4<i32>(var_0.e, var_0.e, -54267i, 1i) & vec4<i32>(global0.x, 2147483647i, -2147483647i, var_0.e))), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.e, -var_0.e, firstTrailingBit(-2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.e, var_0.e, -1i) >> (vec3<u32>(var_0.c.x, 4294967295u, 32693u) % vec3<u32>(32u)), vec3<i32>(-3626i, global0.x, var_0.e)))));
    global0 = -vec2<i32>(-(_wgslsmith_sub_i32(global0.x, 1i) | 1i), 2147483647i);
    global0 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, 2147483647i) | vec2<i32>(global0.x, -2147483647i), ~vec2<i32>(2147483647i, var_0.e)), abs(vec2<i32>(var_0.e, var_0.e)) << (var_0.c % vec2<u32>(32u))), vec2<i32>(0i, min(reverseBits(27675i), 2655i))), vec2<i32>(_wgslsmith_mod_i32(0i, global0.x), ~_wgslsmith_mod_i32(global0.x, 18381i & var_0.e)));
    global0 = abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(firstLeadingBit(-13913i), ~var_0.e), vec2<i32>(var_0.e << (~u_input.a % 32u), 2147483647i), vec2<i32>(global0.x, -42654i)));
    return (var_0.d << (1u % 32u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_sub_u32(u_input.a, 1u), ~61167u) << (abs(vec3<u32>(4294967295u, u_input.a, 65483u) & vec3<u32>(u_input.a, 39093u, var_0.d)) % vec3<u32>(32u)), max(~vec3<u32>(var_0.c.x, 0u, 18495u) >> (vec3<u32>(1u, u_input.a, 1u) % vec3<u32>(32u)), ~(~vec3<u32>(1u, 8913u, 1u))));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: Struct_5) -> vec4<bool> {
    let var_0 = func_3();
    let var_1 = arg_0.a.b.x;
    global0 = ~arg_0.a.c;
    return arg_2.c.a.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: f32) -> vec2<i32> {
    global0 = vec2<i32>(~max(1i, _wgslsmith_div_i32(global0.x >> (95609u % 32u), 1i)), _wgslsmith_div_i32(global0.x, min(1i, global0.x)));
    let var_0 = vec2<u32>(9133u, 35099u);
    global0 = _wgslsmith_clamp_vec2_i32(reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-27119i, global0.x), vec2<i32>(-1i, _wgslsmith_mod_i32(28518i, 625i)))), vec2<i32>(global0.x, global0.x), ~vec2<i32>(global0.x, 21969i));
    let var_1 = Struct_4(!(!func_2(Struct_3(Struct_1(global0.x, arg_1, vec2<i32>(-17849i, global0.x), arg_3), vec4<bool>(arg_1.x, arg_1.x, arg_2.x, false), 4294967295u, 1u, vec4<f32>(1258f, 420f, 1029f, -1899f)), -611f, Struct_5(var_0.x, vec3<f32>(-2241f, 507f, arg_3), Struct_3(Struct_1(global0.x, vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec2<i32>(global0.x, 16704i), arg_3), arg_1, 1u, 109424u, vec4<f32>(arg_3, 506f, arg_3, 206f)), Struct_4(vec2<bool>(false, true), -919f, Struct_2(arg_1.x, vec2<f32>(arg_3, arg_3), vec2<u32>(29388u, 39784u), 1u, global0.x)), u_input.a)).wx), _wgslsmith_f_op_f32(f32(-1f) * -230f), Struct_2(!arg_1.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(295f, _wgslsmith_f_op_f32(abs(-534f)))), _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, u_input.a)) << ((var_0 << (var_0 % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(4294967295u, ~0u)), 4294967295u, 24030i));
    var var_2 = _wgslsmith_mod_u32(31312u, u_input.a);
    return -(vec2<i32>(-1i) * -abs(vec2<i32>(-11701i, var_1.c.e))) ^ ~vec2<i32>(~global0.x, reverseBits(global0.x | global0.x));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> f32 {
    global0 = select(select(func_4((vec2<u32>(arg_1.d, 46808u) << (arg_1.c % vec2<u32>(32u))) ^ vec2<u32>(u_input.a, u_input.a), func_2(Struct_3(Struct_1(-17538i, vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a), vec2<i32>(global0.x, global0.x), arg_1.b.x), vec4<bool>(true, false, true, arg_1.a), 16022u, u_input.a, vec4<f32>(arg_1.b.x, -374f, arg_1.b.x, arg_1.b.x)), arg_1.b.x, Struct_5(1u, vec3<f32>(arg_1.b.x, 612f, arg_1.b.x), Struct_3(Struct_1(2147483647i, vec4<bool>(true, true, false, true), vec2<i32>(arg_1.e, 2147483647i), arg_1.b.x), vec4<bool>(false, arg_1.a, arg_1.a, false), 10906u, arg_0, vec4<f32>(arg_1.b.x, arg_1.b.x, -986f, 1170f)), Struct_4(vec2<bool>(arg_1.a, arg_1.a), arg_1.b.x, arg_1), arg_1.d)), !(!vec3<bool>(true, arg_1.a, arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b.x)))), _wgslsmith_mod_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, global0.x), vec2<i32>(29623i, global0.x)), ~(-vec2<i32>(0i, -49579i))), func_2(Struct_3(Struct_1(18109i, vec4<bool>(arg_1.a, false, true, arg_1.a), vec2<i32>(arg_1.e, 48743i), arg_1.b.x), vec4<bool>(true, true, arg_1.a, arg_1.a), arg_1.d >> (arg_0 % 32u), countOneBits(u_input.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, arg_1.b.x, 1000f, -1424f) + vec4<f32>(arg_1.b.x, 1456f, arg_1.b.x, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -249f) - _wgslsmith_f_op_f32(206f * 768f)), Struct_5(arg_0 ^ 68052u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(246f, -345f, arg_1.b.x)), Struct_3(Struct_1(arg_1.e, vec4<bool>(arg_1.a, arg_1.a, true, false), vec2<i32>(global0.x, global0.x), 226f), vec4<bool>(false, arg_1.a, arg_1.a, true), 33797u, 58046u, vec4<f32>(153f, arg_1.b.x, arg_1.b.x, arg_1.b.x)), Struct_4(vec2<bool>(true, true), arg_1.b.x, Struct_2(arg_1.a, arg_1.b, arg_1.c, arg_1.d, arg_1.e)), ~95752u)).yz), vec2<i32>(min(_wgslsmith_clamp_i32(-29214i, global0.x, global0.x) | (-2147483647i ^ global0.x), max(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.e, -25604i, arg_1.e), vec3<i32>(global0.x, 1i, global0.x)), firstTrailingBit(-2147483647i))), 8330i), false);
    var var_0 = abs(vec2<u32>(u_input.a, _wgslsmith_div_u32(arg_0, max(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d, u_input.a, 72777u, u_input.a), vec4<u32>(1u, 4294967295u, arg_0, 62839u))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(trunc(-363f))) + arg_1.b.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x)), 952f, 623f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x - -398f) - 1000f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.b.x, 419f, arg_1.b.x, arg_1.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x) * vec4<f32>(arg_1.b.x, -1041f, arg_1.b.x, arg_1.b.x)))), arg_1.a));
    var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(401f, var_2.x, -1537f, arg_1.b.x)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2909f, 1000f, 1755f, var_2.x))))), vec4<f32>(1180f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-921f, arg_1.b.x, arg_1.a)) - -573f), 424f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1188f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-303f, 2529f, var_2.x, -1341f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1760f, var_2.x, arg_1.b.x, arg_1.b.x) * vec4<f32>(arg_1.b.x, var_2.x, arg_1.b.x, arg_1.b.x)))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, var_2.x, var_2.x, arg_1.b.x), vec4<f32>(var_2.x, -526f, var_2.x, var_2.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-873f, -175f, var_2.x, 528f))))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -585f);
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    global0 = abs(vec2<i32>(arg_0.e, ~global0.x) << (_wgslsmith_sub_vec2_u32(vec2<u32>(func_3(), arg_0.c.x), (vec2<u32>(u_input.a, 4294967295u) >> (arg_0.c % vec2<u32>(32u))) | _wgslsmith_div_vec2_u32(arg_0.c, arg_0.c)) % vec2<u32>(32u)));
    let var_0 = Struct_3(Struct_1(-1i, vec4<bool>(true, arg_0.a, !(arg_0.a | false), _wgslsmith_f_op_f32(-2101f + arg_0.b.x) >= 1551f), vec2<i32>(_wgslsmith_clamp_i32(arg_0.e, global0.x, 2147483647i), global0.x) | min(vec2<i32>(39830i, 0i), firstLeadingBit(vec2<i32>(arg_0.e, arg_0.e))), _wgslsmith_f_op_f32(round(1000f))), vec4<bool>(all(!(!vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a))), all(!vec3<bool>(arg_0.a, true, false)), arg_0.a, arg_0.a), 1u, arg_0.c.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2020f, -2155f, _wgslsmith_f_op_f32(f32(-1f) * -385f), 178f) + vec4<f32>(-1000f, _wgslsmith_f_op_f32(func_1(21117u, arg_0)), arg_0.b.x, _wgslsmith_f_op_f32(1336f - arg_0.b.x))))));
    var var_1 = Struct_4(vec2<bool>(!var_0.b.x, arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -931f), Struct_2(all(func_2(Struct_3(Struct_1(-23462i, var_0.a.b, var_0.a.c, var_0.a.d), var_0.a.b, var_0.d, 4294967295u, var_0.e), _wgslsmith_f_op_f32(step(arg_0.b.x, 1068f)), Struct_5(u_input.a, var_0.e.wyy, var_0, Struct_4(var_0.b.wx, var_0.a.d, Struct_2(true, arg_0.b, arg_0.c, 1u, -2147483647i)), 1u)).wwy), arg_0.b, max(vec2<u32>(_wgslsmith_add_u32(1u, 33783u), 47609u), ~(vec2<u32>(1u, u_input.a) & vec2<u32>(8836u, 55204u))), ~4294967295u, global0.x));
    var var_2 = var_0.a.b.yyx;
    let var_3 = var_1.c;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_add_u32(~select(u_input.a, u_input.a ^ u_input.a, true), 15497u), vec3<f32>(_wgslsmith_f_op_f32(553f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(814f, 1000f) * _wgslsmith_f_op_f32(-461f - 1519f))), _wgslsmith_f_op_f32(f32(-1f) * -1434f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_5(Struct_2(_wgslsmith_f_op_f32(1655f - 231f) != _wgslsmith_f_op_f32(func_1(9966u, Struct_2(true, vec2<f32>(1075f, -1000f), vec2<u32>(0u, 1u), 0u, global0.x))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-482f, 500f))), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(4294967295u, u_input.a)), ~vec2<u32>(u_input.a, 0u)), ~99360u << (_wgslsmith_mod_u32(6310u, u_input.a) % 32u), select(_wgslsmith_clamp_i32(global0.x, global0.x, -2147483647i), -1i, any(vec3<bool>(false, true, true))))), Struct_4(select(vec2<bool>(true, false), vec2<bool>(true, true), func_2(func_5(Struct_2(false, vec2<f32>(912f, -2063f), vec2<u32>(42285u, 4294967295u), 32428u, -81148i)), 1f, Struct_5(u_input.a, vec3<f32>(-2890f, 1327f, 144f), Struct_3(Struct_1(-1i, vec4<bool>(true, false, false, false), vec2<i32>(-55960i, -2147483647i), 268f), vec4<bool>(false, true, true, true), u_input.a, 18843u, vec4<f32>(1000f, 773f, -273f, 307f)), Struct_4(vec2<bool>(true, true), 293f, Struct_2(false, vec2<f32>(597f, -1054f), vec2<u32>(u_input.a, u_input.a), 6266u, global0.x)), u_input.a)).yx), _wgslsmith_f_op_f32(ceil(-1447f)), Struct_2(true, vec2<f32>(_wgslsmith_f_op_f32(1013f * -916f), _wgslsmith_f_op_f32(-457f + -643f)), select(~vec2<u32>(u_input.a, u_input.a), max(vec2<u32>(62866u, u_input.a), vec2<u32>(0u, 4294967295u)), vec2<bool>(true, true)), 1u, ~func_5(Struct_2(true, vec2<f32>(-205f, -350f), vec2<u32>(18199u, 4294967295u), u_input.a, -9149i)).a.c.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(u_input.a, 29736u)), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), select(vec2<u32>(37043u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<bool>(false, true)))) << ((u_input.a | 1u) % 32u));
    global0 = vec2<i32>(-(((var_0.c.a.a & var_0.c.a.c.x) & 1i) << (var_0.d.c.c.x % 32u)), select(36313i, 69108i, (var_0.a & ~1u) != ~firstLeadingBit(var_0.c.d)));
    let var_1 = Struct_3(var_0.c.a, !vec4<bool>(any(!vec2<bool>(var_0.c.b.x, true)), _wgslsmith_f_op_f32(1227f - -191f) < _wgslsmith_f_op_f32(var_0.b.x + 1389f), false, abs(11704u) != (u_input.a >> (u_input.a % 32u))), 4294967295u, 63753u, vec4<f32>(var_0.d.b, _wgslsmith_f_op_f32(1220f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c.a.d)) * 558f)), -1145f, _wgslsmith_f_op_f32(-var_0.d.c.b.x)));
    var var_2 = var_0.d.c;
    let var_3 = func_2(func_5(Struct_2(true, var_1.e.wx, vec2<u32>(_wgslsmith_div_u32(var_0.d.c.c.x, var_1.d), 1u), 4294967295u, -16510i)), var_1.a.d, Struct_5(_wgslsmith_mult_u32(~52747u, firstTrailingBit(min(36427u, var_2.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(310f, var_0.b.x, 147f) - _wgslsmith_f_op_vec3_f32(step(var_0.c.e.zzw, var_0.c.e.zzx))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.e.xzw))), var_0.c, var_0.d, ~(~(~var_0.c.d)))).yy;
    var var_4 = var_0.d;
    let var_5 = 1026i ^ var_4.c.e;
    var var_6 = vec4<i32>(_wgslsmith_add_i32(reverseBits(_wgslsmith_mod_i32(var_1.a.c.x, 8098i) << (_wgslsmith_mod_u32(var_4.c.c.x, var_2.d) % 32u)), var_2.e ^ 2147483647i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-48148i, ~(-global0.x)), var_2.e), (((30929i | var_1.a.a) | -global0.x) | func_5(var_0.d.c).a.c.x) ^ ((var_5 | (i32(-1i) * -63531i)) << (min(var_2.c.x, var_1.d) % 32u)), 1i);
    var var_7 = !(!var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f)), _wgslsmith_f_op_f32(sign(-1367f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1697f) * var_1.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + var_0.d.b))));
}

