struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<i32> {
    var var_0 = -_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-52098i, -55544i), -2147483647i), vec2<i32>(abs(-8968i), 1i), vec2<i32>(-1i) * -vec2<i32>(2147483647i, -1i)), _wgslsmith_sub_vec2_i32(min(~vec2<i32>(-2147483647i, 1i), ~vec2<i32>(1i, -6233i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(-8931i, -12146i), vec2<i32>(46214i, 23717i)) | min(vec2<i32>(-8449i, -2147483647i), vec2<i32>(-2147483647i, 68255i))), ~vec2<i32>(2147483647i, -2147483647i));
    let var_1 = Struct_2(Struct_1(vec4<u32>(~u_input.a, 0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.xw), u_input.b.x), abs(u_input.a & 4294967295u))), Struct_1(vec4<u32>(_wgslsmith_div_u32(0u, u_input.b.x) | _wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u), ~0u, ~(~u_input.a), ~_wgslsmith_clamp_u32(1u, u_input.a, u_input.b.x))), true);
    var_0 = reverseBits(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(~var_0.x, 0i), _wgslsmith_add_vec2_i32(~vec2<i32>(0i, -8635i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-5165i, -3388i), vec2<i32>(-2147483647i, 0i), vec2<i32>(var_0.x, var_0.x))))));
    return -(~_wgslsmith_add_vec4_i32(~vec4<i32>(var_0.x, 44494i, -1019i, 0i), select(vec4<i32>(2147483647i, 8870i, 0i, 19019i), vec4<i32>(18728i, var_0.x, 0i, 0i), var_1.c)));
}

fn func_2() -> Struct_4 {
    var var_0 = min(reverseBits(func_3() >> (_wgslsmith_sub_vec4_u32(select(vec4<u32>(44038u, 0u, u_input.a, 4294967295u), vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 19496u), false), vec4<u32>(u_input.a, u_input.b.x, u_input.a, 36974u)) % vec4<u32>(32u))), select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, _wgslsmith_div_i32(34892i, -25215i), countOneBits(-1i)), true) | -vec4<i32>(1i, 1i, 1i, 1i));
    let var_1 = ~(-var_0.zw);
    var_0 = ~(-abs(~select(vec4<i32>(-1i, -31608i, var_0.x, -19562i), vec4<i32>(-102072i, -2147483647i, var_1.x, 53563i), true)));
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, min(_wgslsmith_mult_i32(-46037i, var_1.x), abs(~var_1.x)), -2147483647i), _wgslsmith_div_vec4_i32((_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -20436i, -1i, -3687i), vec4<i32>(1i, -1i, -1i, var_1.x)) << (vec4<u32>(5217u, u_input.a, u_input.b.x, 21986u) % vec4<u32>(32u))) << (vec4<u32>(4294967295u, u_input.b.x, ~0u, ~u_input.a) % vec4<u32>(32u)), select(vec4<i32>(var_0.x, 0i, -var_0.x, var_1.x), vec4<i32>(var_1.x, firstLeadingBit(48830i), _wgslsmith_sub_i32(54726i, var_0.x), ~var_1.x), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))))));
    var_2 = max(_wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, _wgslsmith_add_i32(51711i, var_2.x), -2147483647i, var_2.x << (u_input.a % 32u)), _wgslsmith_add_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, var_0.x, var_1.x, -1i), vec4<i32>(var_1.x, -18002i, -44748i, 2147483647i), vec4<i32>(-27762i, var_1.x, 55513i, 1i)), vec4<i32>(func_3().x, 27830i, var_2.x, ~28297i))), select(vec4<i32>(_wgslsmith_clamp_i32(countOneBits(1i), -var_1.x, var_2.x), i32(-1i) * -28611i, ~_wgslsmith_div_i32(10246i, var_1.x), ~1i), -min(-vec4<i32>(var_2.x, var_2.x, var_1.x, var_1.x), ~vec4<i32>(var_1.x, var_2.x, var_2.x, var_0.x)), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec2<bool>(true, true)), true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    return Struct_4(Struct_3(Struct_1(~_wgslsmith_mod_vec4_u32(u_input.b, u_input.b)), Struct_2(Struct_1(~vec4<u32>(28932u, 5343u, 43412u, 84419u)), Struct_1(vec4<u32>(6753u, u_input.b.x, u_input.b.x, 42818u)), any(vec2<bool>(true, true)) | true), var_2.x, ~(~u_input.a)), Struct_2(Struct_1(abs(reverseBits(u_input.b))), Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(30469u, u_input.b.x, u_input.a, 61913u), u_input.b, u_input.b), u_input.b)), all(vec3<bool>(all(vec2<bool>(true, false)), u_input.a > 7787u, true))), 5010u, true);
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = func_2().a;
    var var_1 = -101f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, arg_0)));
    let var_2 = !vec2<bool>(true, !(-34669i > arg_1.a.c));
    var_1 = _wgslsmith_f_op_f32(round(-160f));
    return _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -696f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -177f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(491f)))))));
}

fn func_1(arg_0: u32, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2196f, -536f)) - -571f), func_2(), func_2().b.a)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -981f, 680f)), _wgslsmith_f_op_vec3_f32(func_4(-1006f, Struct_4(Struct_3(Struct_1(u_input.b), Struct_2(Struct_1(vec4<u32>(1u, u_input.b.x, 1u, u_input.a)), Struct_1(vec4<u32>(arg_0, 2439u, u_input.b.x, 1u)), false), 0i, u_input.b.x), Struct_2(Struct_1(u_input.b), Struct_1(u_input.b), false), arg_0, true), Struct_1(vec4<u32>(62225u, 72569u, arg_0, u_input.b.x)))))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 663f, arg_1)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-166f, -529f, -670f))))));
    var var_1 = Struct_3(Struct_1(u_input.b), Struct_2(func_2().b.b, Struct_1(abs(vec4<u32>(13137u, arg_0, 1u, 13188u))), !(!any(vec3<bool>(true, true, false)))), max(firstTrailingBit(-49416i), -1i), 1u | _wgslsmith_sub_u32(arg_0, ~arg_0));
    var var_2 = vec4<f32>(-187f, var_0.x, arg_1, arg_1);
    var_1 = Struct_3(var_1.b.b, func_2().b, -var_1.c, arg_0);
    var_1 = Struct_3(var_1.a, Struct_2(Struct_1(vec4<u32>(_wgslsmith_div_u32(4294967295u, 57260u), u_input.b.x, 4405u, 2681u)), func_2().a.a, _wgslsmith_add_u32(var_1.b.a.a.x, _wgslsmith_mod_u32(0u, 1u)) == ~(10324u << (0u % 32u))), -34029i, ~(func_2().c & var_1.a.a.x));
    return !all(vec2<bool>(var_1.b.c, true));
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<bool>) -> u32 {
    return abs(~u_input.a) | countOneBits(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5((_wgslsmith_mod_u32(u_input.a >> (u_input.a % 32u), firstLeadingBit(u_input.b.x)) ^ u_input.b.x) | ~min(u_input.a | u_input.a, 1u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 651f)) + 1f), -1397f), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true | any(vec4<bool>(true, false, true, false)), true), vec3<bool>(func_1(76091u, _wgslsmith_f_op_f32(min(1204f, 1103f))), max(0i, -20621i) <= _wgslsmith_dot_vec2_i32(vec2<i32>(13336i, 1i), vec2<i32>(-2147483647i, 2147483647i)), true)));
    var_0 = countOneBits(3595u);
    var var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(211f, _wgslsmith_f_op_f32(507f * -327f))) - 1372f), -914f, _wgslsmith_f_op_f32(-547f * 1506f)), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-280f)), -129f, true)))), 1468f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f), _wgslsmith_f_op_f32(trunc(535f))), -939f)));
    let var_2 = func_2().a.b;
    let var_3 = vec2<f32>(var_1.x, -854f);
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(sign(var_3.x)), -854f, -915f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_3.x) - vec4<f32>(-1304f, var_3.x, 582f, var_3.x)), vec4<f32>(196f, var_3.x, -1513f, var_1.x), select(vec4<bool>(var_2.c, var_2.c, true, true), vec4<bool>(var_2.c, var_2.c, false, true), vec4<bool>(false, false, true, false)))), vec4<f32>(var_3.x, var_3.x, 1f, 113f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) + _wgslsmith_f_op_f32(min(var_1.x, 1055f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_div_f32(var_3.x, var_1.x)))), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1533f)), _wgslsmith_div_f32(var_1.x, var_3.x))), var_2.c)), var_1.x));
    var var_4 = select(!vec4<bool>(-439f <= _wgslsmith_f_op_f32(var_1.x + 1000f), !(!var_2.c), true, !all(vec2<bool>(var_2.c, var_2.c))), vec4<bool>(var_2.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(438f - 388f), _wgslsmith_div_f32(var_3.x, -527f)) >= _wgslsmith_f_op_f32(round(var_1.x)), var_2.c, !var_2.c), select(vec4<bool>(var_2.c, true, all(select(vec3<bool>(false, true, var_2.c), vec3<bool>(true, var_2.c, var_2.c), vec3<bool>(true, var_2.c, var_2.c))), any(!vec4<bool>(false, false, true, var_2.c))), vec4<bool>(_wgslsmith_add_u32(var_2.b.a.x, u_input.a) < countOneBits(var_2.b.a.x), true, any(select(vec3<bool>(var_2.c, var_2.c, true), vec3<bool>(var_2.c, true, var_2.c), vec3<bool>(var_2.c, var_2.c, false))), -137f > _wgslsmith_f_op_f32(var_1.x + var_3.x)), select(!select(vec4<bool>(true, true, false, var_2.c), vec4<bool>(var_2.c, false, var_2.c, var_2.c), var_2.c), select(select(vec4<bool>(false, var_2.c, var_2.c, var_2.c), vec4<bool>(var_2.c, false, true, var_2.c), false), select(vec4<bool>(var_2.c, false, var_2.c, true), vec4<bool>(true, var_2.c, var_2.c, var_2.c), vec4<bool>(var_2.c, false, true, true)), var_2.b.a.x == 0u), true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(213f)), var_3.x)), Struct_4(Struct_3(var_2.b, Struct_2(var_2.a, Struct_1(vec4<u32>(u_input.a, 37435u, 1u, u_input.a)), var_2.c), -26615i, 34983u), Struct_2(Struct_1(vec4<u32>(u_input.b.x, 4629u, 4294967295u, u_input.b.x)), var_2.a, false), _wgslsmith_sub_u32(11755u, u_input.b.x), var_4.x), Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, var_2.b.a.x)))).x, var_3.x, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(exp2(var_1.x))) * var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - var_3.x), _wgslsmith_div_f32(-423f, 2844f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, 1894f, true)))));
}

