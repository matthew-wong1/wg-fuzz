struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> vec4<i32> {
    let var_0 = select(countOneBits(select(~vec2<i32>(arg_0.a.x, 0i) | u_input.a.xy, u_input.a.xx, true)), countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(abs(arg_0.a.x), -arg_0.a.x), vec2<i32>(countOneBits(35333i), _wgslsmith_clamp_i32(arg_0.a.x, -2147483647i, -210i)), arg_0.a.wz)), true);
    var var_1 = arg_0.c;
    let var_2 = u_input.a.x;
    var var_3 = Struct_2(~(~select(select(vec4<i32>(1i, -66876i, 0i, var_2), arg_0.a, var_1.e), _wgslsmith_sub_vec4_i32(vec4<i32>(-11980i, -4162i, arg_0.a.x, var_0.x), arg_0.a), var_1.d.x)), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, arg_0.d), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d, 21812u), vec2<u32>(arg_0.b, 5896u)), reverseBits(4294967295u))), arg_0.c, 4294967295u);
    var_1 = var_3.c;
    return ~arg_0.a;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-509f, _wgslsmith_f_op_f32(arg_2.c.c - -1730f))))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(f32(-1f) * -1149f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_2.c.c)))))), arg_2.c.b);
    let var_1 = select(select(vec2<bool>(true, false && !arg_2.c.d.x), vec2<bool>(all(select(arg_2.c.e, vec4<bool>(arg_2.c.e.x, true, arg_2.c.a, arg_2.c.e.x), vec4<bool>(false, arg_2.c.e.x, false, arg_2.c.e.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(15386u, u_input.b, u_input.b)) > _wgslsmith_mod_u32(0u, 42348u)), !(!(!vec2<bool>(arg_2.c.e.x, true)))), arg_2.c.e.ww, !arg_2.c.d.zy);
    let var_2 = true;
    var var_3 = Struct_2(countOneBits(arg_2.a), 1u, arg_2.c, 1u);
    var var_4 = !var_1.x;
    return firstTrailingBit(select(~(~vec3<u32>(0u, u_input.b, 6832u)), (vec3<u32>(var_3.d, 15886u, 32373u) ^ vec3<u32>(7513u, 43241u, var_3.b)) & vec3<u32>(arg_2.b, var_3.b, 4004u), !var_3.c.e.yyw) ^ reverseBits(select(~vec3<u32>(u_input.b, u_input.b, 54269u), ~vec3<u32>(u_input.b, 4294967295u, 30096u), vec3<bool>(false, true, arg_2.c.d.x))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = ~func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), abs(_wgslsmith_mult_i32(reverseBits(u_input.a.x), u_input.a.x)), Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -22525i, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.b, 0u, 1u, 1u) % vec4<u32>(32u)), func_3(Struct_2(vec4<i32>(u_input.a.x, -48799i, u_input.a.x, u_input.a.x), u_input.b, Struct_1(arg_1.d.x, arg_0, -337f, arg_1.d, vec4<bool>(arg_1.e.x, arg_1.e.x, arg_1.d.x, true)), 0u), vec3<f32>(arg_1.b, arg_0, -978f))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(0u, u_input.b), vec2<u32>(54333u, 75927u)), arg_1, ~(u_input.b | 39983u)));
    var var_1 = vec4<u32>(var_0.x | u_input.b, ((~var_0.x >> (u_input.b % 32u)) & _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, 24768u), ~u_input.b)) | max(_wgslsmith_mult_u32(~6090u, ~var_0.x), var_0.x), var_0.x ^ _wgslsmith_mult_u32(var_0.x, select(1u, ~4294967295u, true)), select(u_input.b, 18732u, arg_1.d.x));
    var var_2 = arg_1;
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(625f))), -1000f, 1254f)), vec3<f32>(var_2.c, var_2.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1926f - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c + var_2.c), arg_0), !all(arg_1.e)))));
    let var_4 = vec2<bool>(all(var_2.e), any(select(select(!var_2.e.yw, select(arg_1.d.xz, var_2.e.wy, true), vec2<bool>(arg_1.e.x, arg_1.e.x)), select(!vec2<bool>(true, arg_1.e.x), !arg_1.d.xx, !var_2.e.x), select(vec2<bool>(var_2.d.x, var_2.d.x), vec2<bool>(true, arg_1.e.x), arg_1.a | false))));
    return arg_0;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(~(-2831i & u_input.a.x), u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, -1i), 0i)), ~vec2<i32>(-u_input.a.x, firstLeadingBit(u_input.a.x >> (u_input.b % 32u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(885f, -741f), Struct_1(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-167f * -1366f), _wgslsmith_f_op_f32(f32(-1f) * -297f), vec3<bool>(true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true)))) - 276f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(func_1()))) + 1f)));
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(~4294967295u, ~1u), _wgslsmith_mult_vec2_u32(~vec2<u32>(abs(u_input.b), u_input.b), reverseBits(countOneBits(vec2<u32>(4294967295u, 4294967295u))) & abs(vec2<u32>(2638u, u_input.b))));
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 1i), u_input.a & -u_input.a), -vec3<i32>(-u_input.a.x, u_input.a.x, 0i));
    var_2 = _wgslsmith_mult_i32(func_3(Struct_2(-(~vec4<i32>(-47798i, 2147483647i, -2147483647i, 32133i)), var_1.x, Struct_1(true, -205f, _wgslsmith_f_op_f32(-var_0), vec3<bool>(false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true))), u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) * vec3<f32>(1266f, var_0, var_0)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, 1396f, -1118f), vec3<f32>(527f, -1899f, var_0), false))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1661f), -2591f, _wgslsmith_div_f32(var_0, 335f)))).x, 0i);
    var_2 = ~firstLeadingBit(-49006i ^ u_input.a.x);
    var var_3 = Struct_1(!any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(select(var_0, 1520f, true))))), 1003f, vec3<bool>(true, true, -12858i >= (~(-2147483647i) >> (var_1.x % 32u))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true))), !(var_0 != 647f)));
    var var_4 = _wgslsmith_div_vec4_i32(max(vec4<i32>(abs(u_input.a.x), u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x ^ u_input.a.x, abs(u_input.a.x), u_input.a.x), abs(min(u_input.a.x, -52914i))), countOneBits(~vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(u_input.a.x), ~min(u_input.a.x, 59311i), 16425i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -17501i), -u_input.a.x)), ~vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, 54786i), abs(u_input.a.x))));
    let var_5 = Struct_2(_wgslsmith_mod_vec4_i32(abs(~select(vec4<i32>(var_4.x, 2147483647i, u_input.a.x, var_4.x), vec4<i32>(27665i, var_4.x, 1i, 1i), false)), select(-(~vec4<i32>(-15092i, -3232i, -18193i, -46755i)), vec4<i32>(_wgslsmith_mult_i32(-39045i, 1i), max(u_input.a.x, -58470i), ~var_4.x, var_4.x), var_3.e)), ~u_input.b, Struct_1(false, var_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(507f, -1339f)) - -1000f) + var_3.c), vec3<bool>(var_3.e.x, var_3.d.x, var_4.x > var_4.x), vec4<bool>(var_3.d.x && false, all(!vec4<bool>(var_3.a, false, var_3.d.x, true)), var_0 == _wgslsmith_f_op_f32(round(var_3.c)), !var_3.e.x)), ~u_input.b);
    var_4 = min(var_5.a, ~min(var_5.a, var_5.a));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_i32(1i, -1i, -7190i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2476f)))), _wgslsmith_f_op_f32(-var_0)), var_1.x);
}

