struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = -select(arg_3.a, max(max(arg_3.a, abs(vec4<i32>(arg_0.x, 38519i, -1i, -2147483647i))), arg_3.a), true);
    var_0 = arg_3.a;
    var_0 = vec4<i32>(~var_0.x, -21758i, min(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -arg_0.yxx, _wgslsmith_mult_vec3_i32(select(vec3<i32>(-22245i, var_0.x, arg_0.x), arg_3.a.yxy, false), firstLeadingBit(vec3<i32>(u_input.c, 0i, -781i)))), -2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(max(arg_0.yz, arg_0.ww), ~vec2<i32>(2147483647i, var_0.x), _wgslsmith_add_vec2_i32(select(vec2<i32>(2147483647i, arg_0.x), arg_0.xx, vec2<bool>(false, true)), arg_3.a.yy)), countOneBits(~(-arg_3.a.yw))));
    return vec3<u32>(~abs(4294967295u), ~29928u, u_input.a.x);
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = select(u_input.a.xy, vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.a, func_3(vec4<i32>(u_input.c, u_input.c, 0i, u_input.c), u_input.a.x, 76895u, Struct_1(vec4<i32>(82887i, u_input.c, u_input.c, u_input.c), u_input.c, u_input.c, -2147483647i, -787f))), ~abs(u_input.a.x)), select(select(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(true, arg_0)), !vec2<bool>(arg_0, false), !(arg_0 && arg_0)), !select(vec2<bool>(false, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), arg_0), !arg_0), arg_0));
    let var_1 = -(-(~(-vec2<i32>(u_input.c, -35092i))) ^ (((vec2<i32>(u_input.c, -24279i) & vec2<i32>(0i, u_input.c)) << (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))) ^ vec2<i32>(~(-34040i), _wgslsmith_add_i32(u_input.c, -28577i))));
    var_0 = firstTrailingBit(vec2<u32>(u_input.b, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(28950u, var_0.x, 13149u, var_0.x)), firstTrailingBit(vec4<u32>(var_0.x, 359u, u_input.a.x, 0u)), ~vec4<u32>(var_0.x, 15484u, 0u, 43947u)), ~(vec4<u32>(49422u, 42126u, var_0.x, u_input.a.x) | vec4<u32>(u_input.a.x, var_0.x, u_input.b, var_0.x)))));
    var_0 = vec2<u32>(1u, var_0.x);
    var var_2 = -1194f == _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(806f, _wgslsmith_f_op_f32(-238f * -1506f))), _wgslsmith_f_op_f32(1181f - -716f))));
    return ~var_0.x;
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    let var_0 = vec3<u32>(28459u, ~reverseBits(u_input.a.x << (u_input.b % 32u)), func_2(true));
    let var_1 = ~(vec4<u32>(30227u, 10375u, ~u_input.a.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, arg_0, 52587u, arg_1), vec4<u32>(arg_1, arg_0, 0u, arg_1), vec4<bool>(false, false, true, false)), min(vec4<u32>(38964u, var_0.x, arg_0, 1496u), vec4<u32>(220u, 0u, 17426u, 72210u)))) | ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 0u, 41251u, 28164u), select(vec4<u32>(1u, 4294967295u, 1u, arg_0), vec4<u32>(0u, arg_0, 0u, arg_1), false), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, arg_0, 15051u, var_0.x), vec4<u32>(46357u, 1u, arg_0, u_input.a.x))));
    let var_2 = ~u_input.c;
    let var_3 = select(!vec4<bool>(false, true, true, _wgslsmith_f_op_f32(step(791f, 432f)) == _wgslsmith_f_op_f32(trunc(1129f))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, select(false, true, true), true, any(vec2<bool>(true, false))), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, false))), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1180f) == _wgslsmith_f_op_f32(step(-1899f, 407f)), !any(vec2<bool>(true, true)), true, true), ((arg_0 >> (0u % 32u)) << (~u_input.b % 32u)) == arg_0), select(!vec4<bool>(all(vec3<bool>(false, false, true)), false, true, true), vec4<bool>(all(vec4<bool>(true, true, false, false)), all(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), ~var_0.x <= firstTrailingBit(arg_0)), vec4<bool>(true || any(vec4<bool>(true, true, false, true)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), false, all(vec2<bool>(true, true)))));
    let var_4 = ~(-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), max(vec2<i32>(var_2, u_input.c), vec2<i32>(var_2, u_input.c))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, var_2), vec2<i32>(u_input.c, 17985i))));
    return Struct_1(-_wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.c, i32(-1i) * -1i, -8091i, var_2), select(_wgslsmith_mod_vec4_i32(vec4<i32>(-9472i, var_4.x, u_input.c, -1i), vec4<i32>(13854i, -2147483647i, -12274i, u_input.c)), abs(vec4<i32>(-10743i, var_4.x, var_4.x, var_2)), !var_3)), 65030i, -2147483647i, -5556i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -518f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: bool) -> vec4<i32> {
    var var_0 = arg_2;
    var var_1 = Struct_1(countOneBits(~(-vec4<i32>(-87773i, u_input.c, 2147483647i, var_0.d))), ~_wgslsmith_mult_i32(min(1i, -u_input.c), min(~2147483647i, arg_2.a.x)), _wgslsmith_dot_vec3_i32(max(vec3<i32>(~u_input.c, arg_1.x, _wgslsmith_mult_i32(u_input.c, arg_2.d)), func_1(u_input.b >> (17392u % 32u), 1u).a.xzw), arg_2.a.xwy | _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 50242i, 2147483647i), vec3<i32>(17169i, u_input.c, var_0.a.x))), -50535i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1822f, _wgslsmith_f_op_f32(740f * var_0.e))))));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_mod_u32(func_3(vec4<i32>(var_0.c, -arg_1.x, min(1i, 1961i), var_0.b), u_input.a.x, 64477u, func_1(~u_input.b, 38427u)).x, abs(~(~4294967295u))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~12492u), vec2<u32>(min(34187u, u_input.b << (30353u % 32u)), ~18178u | (u_input.a.x << (u_input.b % 32u)))));
    var var_3 = _wgslsmith_sub_u32(firstTrailingBit(~4294967295u), 4294967295u);
    var var_4 = func_2(true);
    return vec4<i32>(-((u_input.c & reverseBits(45612i)) ^ 0i), -_wgslsmith_div_i32(~(~44167i), _wgslsmith_mult_i32(8126i, var_0.c)), 0i, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(vec4<i32>(abs(u_input.c), u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(-13519i, -14185i)), ~u_input.c)) << (vec4<u32>(reverseBits(abs(1u)), ~firstLeadingBit(1u), u_input.b, u_input.b) % vec4<u32>(32u)), -2147483647i, 33454i, 2972i, _wgslsmith_f_op_f32(1606f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1020f, 701f), -303f)), 1991f, false))));
    var var_1 = -1i;
    var_0 = Struct_1(var_0.a, u_input.c, _wgslsmith_div_i32(1i, ~(~u_input.c) ^ -_wgslsmith_add_i32(-16493i, 2147483647i)), 0i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_0.e)))), _wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(-var_0.e))));
    var var_2 = Struct_1(select(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, -1030f, -905f) + vec3<f32>(-1734f, 1156f, var_0.e))), var_0.a, func_1(u_input.b, ~u_input.a.x), false), -var_0.a | -var_0.a, false), _wgslsmith_sub_i32(~u_input.c, -(var_0.c << (u_input.a.x % 32u))), _wgslsmith_add_i32((var_0.b << (50235u % 32u)) << (~u_input.a.x % 32u), u_input.c) >> (52128u % 32u), 22085i, _wgslsmith_f_op_f32(step(617f, -1784f)));
    var_0 = func_1(1414u, 70099u);
    var_2 = Struct_1(abs(-(vec4<i32>(-1i) * -vec4<i32>(var_2.b, var_2.d, u_input.c, u_input.c))), 15504i, func_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.e, -1018f, var_0.e), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e, -733f, 390f) - vec3<f32>(-751f, -1522f, var_2.e))))), ~var_0.a, Struct_1(_wgslsmith_div_vec4_i32(var_2.a & var_0.a, var_0.a), ~u_input.c, _wgslsmith_sub_i32(1i, 0i), _wgslsmith_dot_vec4_i32(func_4(vec3<f32>(var_2.e, var_0.e, var_2.e), var_0.a, Struct_1(vec4<i32>(u_input.c, -1i, u_input.c, u_input.c), var_2.d, 1i, var_2.a.x, -628f), false), var_2.a), _wgslsmith_f_op_f32(max(211f, -1679f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.e))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-911f + var_0.e))).x, -(firstTrailingBit(var_2.c) << (1u % 32u)), _wgslsmith_f_op_f32(ceil(var_0.e)));
    var var_3 = u_input.c;
    let var_4 = reverseBits(~u_input.a.x);
    var_1 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.yyy ^ (_wgslsmith_mult_vec3_i32(-var_0.a.xyx, ~var_2.a.wyy) ^ func_1(max(1u, var_4), var_4).a.wyz), ~_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.c, reverseBits(9248i)), u_input.c));
}

