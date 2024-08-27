struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, false, true), vec4<bool>(true, all(vec4<bool>(false, false, false, true)), false, true)), vec4<bool>(true, true, true, u_input.a >= u_input.e), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true)), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, false, true)))), vec4<bool>(((2147483647i ^ u_input.d.x) | _wgslsmith_div_i32(u_input.a, u_input.e)) < -2147483647i, true, true, !all(vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true));
    var var_1 = Struct_1(-422f, _wgslsmith_dot_vec3_i32(u_input.d, countOneBits(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.d, u_input.d, vec3<i32>(u_input.d.x, u_input.d.x, u_input.e)), vec3<i32>(-62361i, u_input.a, 28514i)))), u_input.b.x, vec3<u32>(1u << (0u % 32u), abs(87140u), min(_wgslsmith_sub_u32(0u, u_input.b.x), 21069u)));
    var var_2 = Struct_3(4294967295u, var_1.d);
    var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(748f + var_1.a))))), abs(_wgslsmith_mult_i32(u_input.e, ~var_1.b)), select(u_input.b.x ^ abs(~4294967295u), u_input.b.x, var_0.x), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~1u, ~4294967295u), 37954u), min(~firstTrailingBit(var_1.d.x), reverseBits(var_1.c)), _wgslsmith_mult_u32(~(~1u), 1u)));
    var_2 = Struct_3(~max(_wgslsmith_dot_vec2_u32(countOneBits(u_input.b.zz), select(var_1.d.xx, u_input.b.xx, var_0.x)), ~(~4294967295u)), ((vec3<u32>(u_input.b.x, 1u, var_1.c) << ((vec3<u32>(var_2.b.x, 4294967295u, 0u) >> (vec3<u32>(13893u, u_input.b.x, var_1.c) % vec3<u32>(32u))) % vec3<u32>(32u))) | ~vec3<u32>(55346u, 11397u, u_input.b.x)) >> (~(~(var_1.d << (vec3<u32>(var_1.d.x, var_2.b.x, 0u) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    return 1i;
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_3) -> bool {
    var var_0 = arg_0.x;
    var_0 = arg_0.x;
    var var_1 = reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(min(arg_2.x, -6639i), -49603i, arg_2.x >> (u_input.b.x % 32u), _wgslsmith_dot_vec3_i32(u_input.d, u_input.d)) >> ((select(vec4<u32>(arg_3.b.x, arg_1, 1u, arg_1), vec4<u32>(arg_3.b.x, arg_3.a, arg_1, u_input.b.x), vec4<bool>(true, arg_0.x, arg_0.x, false)) << (~vec4<u32>(u_input.b.x, arg_3.a, 1u, 19916u) % vec4<u32>(32u))) % vec4<u32>(32u)), -vec4<i32>(reverseBits(arg_2.x), _wgslsmith_mult_i32(u_input.d.x, arg_2.x), ~arg_2.x, arg_2.x)));
    var_1 = vec4<i32>(u_input.e, var_1.x, u_input.a, -countOneBits(countOneBits(min(-2515i, var_1.x))));
    var var_2 = Struct_3(1u, ~(~u_input.b));
    return arg_0.x;
}

fn func_2() -> vec3<bool> {
    let var_0 = u_input.e;
    var var_1 = u_input.d;
    let var_2 = ~1u;
    var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.d, u_input.d), _wgslsmith_add_vec3_i32(~max(vec3<i32>(var_0, u_input.d.x, var_0), -vec3<i32>(var_0, var_1.x, 2147483647i)), max(_wgslsmith_mod_vec3_i32(u_input.d, abs(vec3<i32>(var_0, 0i, var_0))), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0, u_input.d.x, -1i), u_input.d ^ vec3<i32>(-2147483647i, var_0, 1i)))));
    let var_3 = ~(_wgslsmith_div_vec4_u32(abs(~vec4<u32>(u_input.b.x, 7441u, u_input.b.x, var_2)), vec4<u32>(var_2 ^ var_2, ~86542u, min(u_input.b.x, var_2), 0u)) << (~countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 1u, 1u, var_2), vec4<u32>(u_input.b.x, u_input.b.x, 1u, var_2))) % vec4<u32>(32u)));
    return !vec3<bool>(true, true, func_4(vec4<bool>(true, true, u_input.b.x >= 1u, true), ~(var_2 ^ 26231u), vec3<i32>(min(2147483647i, var_0), func_3(), _wgslsmith_mult_i32(var_0, 2147483647i)), Struct_3(u_input.b.x, vec3<u32>(4294967295u, 8464u, 1u))));
}

fn func_5(arg_0: i32, arg_1: bool) -> f32 {
    var var_0 = ~(_wgslsmith_sub_u32(u_input.b.x, ~reverseBits(0u)) >> (~u_input.b.x % 32u));
    var var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~firstTrailingBit(u_input.b.x), _wgslsmith_dot_vec2_u32(~u_input.b.yx, ~vec2<u32>(u_input.b.x, u_input.b.x))), vec2<u32>(u_input.b.x, u_input.b.x)), ~_wgslsmith_mod_vec2_u32(u_input.b.yz, vec2<u32>(u_input.b.x ^ u_input.b.x, 11092u)));
    var_0 = firstLeadingBit(90631u);
    let var_2 = vec3<f32>(843f, -1336f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-330f - _wgslsmith_f_op_f32(f32(-1f) * -160f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-536f, -1449f))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-249f * -2282f), -410f), _wgslsmith_f_op_f32(844f * _wgslsmith_div_f32(-684f, -835f))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(var_2)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-645f, var_2.x, var_2.x) - _wgslsmith_f_op_vec3_f32(max(var_2, var_2)))))), !select(vec3<bool>(!arg_1, arg_1 && true, !arg_1), select(!vec3<bool>(false, arg_1, arg_1), func_2(), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, false, true), arg_1)), func_2().x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1580f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1794f)))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_4, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_5(-12399i, all(select(!vec3<bool>(arg_3, true, false), func_2(), arg_3)))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(abs(u_input.d), reverseBits(vec3<i32>(2147483647i, -2147483647i, arg_1))), -u_input.d >> (firstTrailingBit(vec3<u32>(0u, 0u, arg_2.a.b.x)) % vec3<u32>(32u))), ~_wgslsmith_add_i32(-1i, u_input.d.x)), ~u_input.b.x, vec3<u32>(u_input.b.x, ~_wgslsmith_clamp_u32(arg_0.x, 28356u, u_input.b.x) << (u_input.b.x % 32u), _wgslsmith_mod_u32(u_input.b.x, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(13585u, arg_2.a.a, 22976u, 10331u), vec4<u32>(18097u, arg_0.x, arg_2.a.a, arg_2.a.a))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(u_input.e), ~u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, var_0.b), u_input.d), -39968i), _wgslsmith_add_vec4_i32(vec4<i32>(-18378i, 2147483647i, -21083i, u_input.d.x), vec4<i32>(1i, arg_1, -1i, var_0.b)) >> (vec4<u32>(1u, var_0.d.x, 2067u, 1u) % vec4<u32>(32u)))), 12551u, abs(~u_input.b));
    let var_2 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(select(20721i, u_input.d.x, false), i32(-1i) * -18259i, -2147483647i), u_input.a), arg_1, var_1.b, i32(-1i) * -min(arg_1, arg_1)) | vec4<i32>(arg_1, reverseBits(firstTrailingBit(abs(var_0.b))), firstTrailingBit(42494i), _wgslsmith_clamp_i32(-27826i, countOneBits(-var_1.b), var_1.b));
    let var_3 = var_0.a;
    let var_4 = ~(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(46958u, arg_0.x, 1u), vec3<u32>(arg_0.x, 4294967295u, 21371u))) & 0u);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    let var_1 = func_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, _wgslsmith_sub_u32(u_input.b.x, firstTrailingBit(1u))), ~u_input.b.yy | ~vec2<u32>(4294967295u, 88458u), vec2<u32>(countOneBits(4294967295u), u_input.b.x)), -abs(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.e, -12806i), 83612i)), Struct_4(Struct_3(5382u, _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 1u, u_input.b.x), countOneBits(u_input.b)))), ~firstTrailingBit(u_input.b.x) > _wgslsmith_mult_u32(11684u, u_input.b.x));
    var_0 = 4294967295u;
    let var_2 = vec2<f32>(-1469f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(2147483647i, true)), _wgslsmith_f_op_f32(-1176f + -337f)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1.a, 853f), -975f, var_2.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1160f, var_1.a, -1688f))) * vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-166f)), -2809f)), var_1.a, _wgslsmith_f_op_f32(var_1.a + 1119f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, _wgslsmith_f_op_f32(round(var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_2.x, var_2.x) + vec3<f32>(708f, 550f, var_2.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.x, 254f, 680f)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(328f, -2388f, var_2.x) + vec3<f32>(var_2.x, var_2.x, var_2.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-897f, var_1.c, u_input.b.x, -28672i);
}

