struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: i32) -> bool {
    var var_0 = true;
    var var_1 = Struct_1(vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(1u), abs(59996u)), ~max(40612u, 1u), _wgslsmith_mult_u32(13809u, 29250u), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(54309u, 0u, 6811u, 27664u), vec4<u32>(0u, 58992u, 4294967295u, 13129u), true), vec4<u32>(1u, 4294967295u, firstTrailingBit(0u), 12135u))), arg_0, arg_1);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2126f);
    let var_3 = _wgslsmith_clamp_i32(~arg_1, max(-59840i, u_input.a.x), ~u_input.b);
    var_2 = -1474f;
    return any(vec2<bool>(select(!(arg_0 < var_1.b), true, true), all(vec3<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(false, false, true)), true))));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> vec4<u32> {
    let var_0 = Struct_1(~abs(~countOneBits(vec4<u32>(1u, 63829u, 3423u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-510f + 1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(531f)) * 1000f))), _wgslsmith_sub_i32(u_input.b, _wgslsmith_mult_i32(u_input.a.x | u_input.b, ~(-15685i))));
    var var_1 = var_0;
    let var_2 = Struct_1(~vec4<u32>(4294967295u, max(1u, 1u), var_0.a.x, var_0.a.x), 1f, var_0.c);
    let var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -607f)), _wgslsmith_f_op_f32(min(913f, 675f))), 1000f, _wgslsmith_f_op_f32(floor(-101f)));
    let var_4 = abs(-1428i);
    return reverseBits(select(abs(select(firstLeadingBit(vec4<u32>(var_2.a.x, 1u, var_2.a.x, var_1.a.x)), ~var_1.a, true)), reverseBits(_wgslsmith_add_vec4_u32(select(vec4<u32>(1u, var_0.a.x, 10439u, var_0.a.x), var_0.a, vec4<bool>(true, true, true, arg_1.x)), firstLeadingBit(var_2.a))), true));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_add_vec4_u32(func_3(_wgslsmith_f_op_f32(1544f - -1654f), vec2<bool>(true, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 54302u, 1u, 17586u), firstTrailingBit(vec4<u32>(2108u, 18793u, 1u, 1u)))), _wgslsmith_f_op_f32(abs(-266f)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-(vec4<i32>(33368i, 1i, 21254i, u_input.b) & vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -6422i)), vec4<i32>(~u_input.b, reverseBits(1i), _wgslsmith_mult_i32(-16714i, u_input.b), -1i)), u_input.b));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b, _wgslsmith_div_f32(var_1.b, var_1.b)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b, _wgslsmith_f_op_f32(var_0.b * -277f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-219f, var_0.b) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_1.b) * vec2<f32>(var_0.b, var_1.b)))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))))));
    var_1 = var_0;
    let var_3 = ~(85772u ^ var_0.a.x);
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = !(((~(-1i) << ((5850u ^ arg_0.a.x) % 32u)) & u_input.a.x) < 0i);
    var_0 = true;
    let var_1 = Struct_1(firstLeadingBit(abs(vec4<u32>(13307u, arg_3.x, arg_2.a.x, 4294967295u)) << ((~arg_0.a << (_wgslsmith_div_vec4_u32(arg_3, vec4<u32>(38823u, arg_0.a.x, arg_3.x, 601u)) % vec4<u32>(32u))) % vec4<u32>(32u))), arg_2.b, countOneBits(arg_2.c));
    let var_2 = false;
    var_0 = false;
    return func_2();
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = func_2();
    var_0 = abs(-29213i | _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x >> (4294967295u % 32u)), u_input.a.x));
    let var_2 = arg_1;
    var_0 = arg_1.c;
    return var_1;
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = 4294967295u;
    let var_1 = vec2<i32>(countOneBits(-11513i), -_wgslsmith_dot_vec4_i32(-select(vec4<i32>(u_input.a.x, arg_2.c, arg_2.c, 40256i), vec4<i32>(-6596i, arg_2.c, u_input.b, u_input.b), false), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, arg_2.c, arg_2.c, -24426i), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.b, -44410i, -1i), vec4<i32>(-1534i, -1i, arg_2.c, 5273i)))));
    var_0 = ~arg_2.a.x;
    var_0 = ~(~30830u) >> (select(min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(5818u, 0u)), 4294967295u), arg_2.a.x, true) % 32u);
    var_0 = arg_2.a.x;
    return func_5(vec3<bool>(true, true, true), arg_2, max(_wgslsmith_mult_i32(arg_2.c, -u_input.b), -5291i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -438f) * -1471f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(228f)))))), func_5(vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(40175u, 53368u, 49780u, 44639u)) < 55018u, func_1(-2068f, _wgslsmith_div_i32(u_input.a.x, -39674i)), true), func_4(func_2(), func_2(), Struct_1(vec4<u32>(4294967295u, 38843u, 16642u, 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -1265f), _wgslsmith_mult_i32(-2147483647i, u_input.b)), vec4<u32>(_wgslsmith_clamp_u32(34052u, 4294967295u, 0u), 0u, ~4294967295u, 67145u)), u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-110f, -544f, -1079f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1748f, 101f, 1000f) - vec3<f32>(423f, -125f, 1454f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(157f, 1243f, 574f))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 1096f, -597f)))), vec3<f32>(393f, 1103f, _wgslsmith_f_op_f32(263f - 868f)), vec3<bool>(true, true, true)))));
    var_0 = func_2();
    var_0 = func_2();
    let var_1 = -_wgslsmith_mod_i32(var_0.c, var_0.c);
    let var_2 = Struct_1(~vec4<u32>(~(var_0.a.x | 5511u), func_2().a.x, firstTrailingBit(0u ^ var_0.a.x), 1u), var_0.b, -abs(_wgslsmith_mult_i32(var_1, max(var_0.c, u_input.a.x))));
    var var_3 = _wgslsmith_mult_u32(0u, select(48221u, firstLeadingBit(func_4(func_5(vec3<bool>(true, false, false), Struct_1(vec4<u32>(var_0.a.x, 86836u, var_0.a.x, 13066u), var_0.b, 2147483647i), 2147483647i), var_2, Struct_1(vec4<u32>(0u, var_2.a.x, var_2.a.x, 0u), -1592f, var_0.c), func_3(606f, vec2<bool>(true, true))).a.x), true));
    var var_4 = !vec2<bool>(any(vec3<bool>(false, false, true)) & any(vec2<bool>(true, false)), true);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b)))), var_2.b, false)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(var_2.a.x, func_3(_wgslsmith_div_f32(var_2.b, var_5), vec2<bool>(var_4.x, false)).x, ~(~var_0.a.x), ~abs(var_2.a.x)), var_0.a.x);
}

