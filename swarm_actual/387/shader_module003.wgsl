struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32 = 0i;

var<private> global2: bool;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>) -> vec2<bool> {
    let var_0 = true;
    var var_1 = ~(~4294967295u);
    var_1 = 1u;
    let var_2 = 0i;
    let var_3 = Struct_1(~abs(select(4294967295u, 24471u, true && var_0)), vec3<bool>(!var_0, var_0, false), vec3<bool>(!var_0, all(select(vec4<bool>(true, var_0, false, false), !vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, false, var_0, false))), true), select(!select(select(vec2<bool>(true, false), vec2<bool>(var_0, true), vec2<bool>(var_0, true)), !vec2<bool>(true, var_0), true), select(select(!vec2<bool>(var_0, false), !vec2<bool>(var_0, true), vec2<bool>(var_0, var_0)), select(!vec2<bool>(var_0, true), select(vec2<bool>(true, var_0), vec2<bool>(var_0, true), var_0), var_0), true), !(!(!vec2<bool>(var_0, var_0)))), countOneBits(i32(-1i) * -70990i));
    return !select(var_3.b.yy, var_3.c.xy, all(vec2<bool>(true, var_3.d.x)) | (true & all(var_3.b)));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> vec3<bool> {
    var var_0 = vec2<bool>(any(select(select(func_3(vec2<f32>(939f, -678f), vec2<f32>(-249f, -272f)), select(vec2<bool>(false, true), vec2<bool>(true, false), true), false), select(vec2<bool>(false, true), vec2<bool>(true, false), func_3(vec2<f32>(1113f, -512f), vec2<f32>(1413f, 1214f))), select(false, false, false) || true)), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-466f, -1482f, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(561f, 1744f, -824f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(551f, -1000f, -927f), vec3<f32>(-893f, 1097f, -1182f))))) * vec3<f32>(-140f, -799f, _wgslsmith_f_op_f32(abs(-324f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1094f), _wgslsmith_f_op_f32(round(1789f)), 1000f)))))));
    var var_2 = 2147483647i;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-1279f, _wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(619f - -298f))), -448f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(830f, -1058f, 286f)))), true)));
    var_2 = countOneBits(arg_1.x);
    return !select(!(!vec3<bool>(false, var_0.x, false)), vec3<bool>(true, all(!vec3<bool>(var_0.x, true, true)), false), var_0.x && true);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_div_u32(~max(4294967295u, 4294967295u), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 19799u), vec3<u32>(9148u, 0u, 1u)))), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), true, false), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true)), func_2(0u, _wgslsmith_mult_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(3002i, u_input.a, 23899i, -18056i), vec4<i32>(-10340i, u_input.a, u_input.a, u_input.a))), firstLeadingBit(~vec4<i32>(0i, -28324i, u_input.a, -25192i)))), func_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(63286u, 34694u), vec2<u32>(1u, 0u)), ~(vec4<i32>(-1i) * -vec4<i32>(40762i, 1i, u_input.a, u_input.a))).yz, _wgslsmith_dot_vec4_i32(~(abs(vec4<i32>(u_input.a, -1i, -34347i, u_input.a)) << (vec4<u32>(25621u, 4294967295u, 0u, 13112u) % vec4<u32>(32u))), ~countOneBits(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a) >> (vec4<u32>(55141u, 7013u, 4294967295u, 1u) % vec4<u32>(32u)))));
    global2 = -var_0.e > _wgslsmith_dot_vec2_i32(vec2<i32>(-(~var_0.e), _wgslsmith_dot_vec3_i32(vec3<i32>(13758i, -37994i, -1i) ^ vec3<i32>(var_0.e, -9167i, u_input.a), vec3<i32>(8449i, 1i, u_input.a))), vec2<i32>(abs(u_input.a), reverseBits(0i)) ^ ~(-vec2<i32>(u_input.a, u_input.a)));
    let var_1 = _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(~vec3<u32>(19962u, 1u, 4637u), ~vec3<u32>(var_0.a, 108368u, 1u)), _wgslsmith_mod_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(9584u, var_0.a, 4633u), vec3<u32>(var_0.a, 7691u, var_0.a))), vec3<u32>(~var_0.a, ~1u, _wgslsmith_add_u32(2279u, var_0.a)))) ^ 0u;
    var var_2 = Struct_1(21108u, vec3<bool>(true, true, false), func_2(~(~var_1), vec4<i32>(_wgslsmith_mult_i32(var_0.e, var_0.e) << (var_1 % 32u), 2147483647i, _wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, u_input.a), -19207i), ~(-2147483647i))), func_2(98260u, select((vec4<i32>(var_0.e, u_input.a, -2147483647i, u_input.a) & vec4<i32>(var_0.e, var_0.e, -39928i, -1i)) ^ (vec4<i32>(0i, -20792i, 2147483647i, var_0.e) | vec4<i32>(0i, var_0.e, u_input.a, u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -20561i, var_0.e, -34948i) >> (vec4<u32>(31175u, 68743u, 19120u, 1u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-5179i, -2147483647i, var_0.e, u_input.a), vec4<i32>(var_0.e, u_input.a, var_0.e, 2147483647i))), all(vec3<bool>(false, var_0.b.x, true)))).zy, 2147483647i);
    global0 = ~firstTrailingBit(min(reverseBits(10513u), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 31882u), vec2<u32>(23226u, var_2.a)))));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global2 = all(select(vec2<bool>(!func_1().b.x, any(vec3<bool>(arg_1.c.x, arg_2.b.x, arg_0.b.x))), !(!arg_0.d), !func_2(func_1().a, vec4<i32>(arg_0.e, arg_1.e, 0i, arg_2.e)).xy));
    let var_0 = vec3<bool>(func_2(arg_1.a, _wgslsmith_add_vec4_i32(vec4<i32>(-1i, arg_2.e, arg_2.e, u_input.a) & -vec4<i32>(arg_2.e, arg_0.e, -5359i, 1i), vec4<i32>(u_input.a, abs(25811i), -u_input.a, 2147483647i))).x, false, arg_2.c.x);
    var var_1 = abs(vec2<u32>(~_wgslsmith_sub_u32(countOneBits(0u), arg_1.a | arg_0.a), _wgslsmith_add_u32(33727u, ~arg_0.a)));
    var var_2 = func_1();
    let var_3 = func_1();
    return func_1();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = Struct_1(arg_0.a, select(!arg_1.c, arg_0.c, func_2(~64134u, vec4<i32>(-arg_0.e, firstTrailingBit(14626i), u_input.a, arg_1.e | arg_0.e))), func_2(~0u, -vec4<i32>(min(24661i, -77892i), abs(14260i), arg_1.e, -12056i)), arg_0.d, _wgslsmith_mod_i32(u_input.a, 60205i));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(-703f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(402f, 370f))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(275f)), 1f))), vec2<f32>(512f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-846f)))))), func_1().b.zz));
    var var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(~(vec2<i32>(17850i, arg_1.e) >> (vec2<u32>(36299u, arg_1.a) % vec2<u32>(32u))), ~vec2<i32>(1i, 1i), ~vec2<i32>(1i, u_input.a) | vec2<i32>(0i, -53187i)) << (min(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_0.a), vec2<u32>(33365u, 19905u)) << (abs(vec2<u32>(var_0.a, arg_1.a)) % vec2<u32>(32u)), vec2<u32>(~4294967295u, ~41996u)) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(0i, 15937i)), ~(-vec2<i32>(1i, arg_0.e))), _wgslsmith_div_vec2_i32(~abs(vec2<i32>(var_0.e, -2197i)), ~(-vec2<i32>(var_0.e, -18323i)))), min(~_wgslsmith_mod_vec2_i32(-vec2<i32>(2147483647i, var_0.e), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, arg_0.e), vec2<i32>(arg_1.e, arg_1.e))), vec2<i32>(-43921i, -arg_0.e << (~var_0.a % 32u))));
    global2 = ~(~abs(1u)) == (arg_1.a & arg_1.a);
    var var_3 = Struct_1(_wgslsmith_mult_u32(26309u, var_0.a), !vec3<bool>(arg_2, true, func_1().c.x), select(select(func_1().c, func_2(22804u, vec4<i32>(-15229i, arg_1.e, -1i, arg_0.e)), !vec3<bool>(true, true, arg_1.b.x)), select(!func_1().b, vec3<bool>(true, false, arg_2), !arg_0.c.x), arg_2 && arg_1.c.x), !(!func_4(Struct_1(arg_0.a, var_0.b, vec3<bool>(true, false, false), vec2<bool>(arg_2, arg_0.d.x), -4789i), func_4(Struct_1(6409u, vec3<bool>(arg_0.b.x, arg_2, var_0.d.x), arg_0.b, vec2<bool>(arg_0.c.x, var_0.b.x), 2147483647i), arg_1, arg_0), Struct_1(0u, vec3<bool>(true, false, false), vec3<bool>(arg_0.b.x, arg_1.c.x, var_0.b.x), vec2<bool>(arg_0.d.x, arg_1.d.x), u_input.a)).c.xy), ~_wgslsmith_mod_i32(~(~var_0.e), _wgslsmith_div_i32(-1i, firstTrailingBit(var_0.e))));
    return ~(~arg_1.a) << (var_0.a % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~2147483647i | _wgslsmith_dot_vec3_i32(-reverseBits(vec3<i32>(1061i, u_input.a, 44446i)), ~(~vec3<i32>(u_input.a, 0i, u_input.a))));
    global0 = func_5(Struct_1(abs(~33104u), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(all(vec3<bool>(false, false, false)), true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true), firstLeadingBit(min(-1i, -36197i))), func_4(Struct_1(_wgslsmith_mult_u32(0u, 1u), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, false), vec2<bool>(true, false), 1i), func_1(), Struct_1(firstLeadingBit(1u), vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec2<bool>(true, false), u_input.a)), all(vec4<bool>(true, true, true, true)) || true) & ~1u;
    global0 = select(1u, func_4(func_4(Struct_1(1u, vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec2<bool>(true, true), -11236i), func_1(), Struct_1(1u, vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec2<bool>(true, true), u_input.a)), func_4(func_1(), func_4(func_1(), func_4(Struct_1(1u, vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec2<bool>(false, false), 0i), Struct_1(68887u, vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec2<bool>(false, true), 2147483647i), Struct_1(1u, vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec2<bool>(false, true), -49269i)), func_1()), Struct_1(_wgslsmith_add_u32(99194u, 0u), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec2<bool>(false, true), ~4043i)), Struct_1(abs(~1u), vec3<bool>(true, all(vec2<bool>(true, true)), true), vec3<bool>(true, true, true), vec2<bool>(func_1().b.x, true), i32(-1i) * -1i)).a, true);
    let var_0 = all(vec4<bool>(any(func_1().b), any(vec2<bool>(true, true)), true, true));
    global0 = _wgslsmith_mult_u32(max(~4294967295u, 49695u) >> (countOneBits(~1u) % 32u), _wgslsmith_mod_u32(4294967295u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(10932u, 1u), ~vec2<u32>(3221u, 14645u))));
    let var_1 = Struct_1(~firstLeadingBit(reverseBits(~0u)), vec3<bool>(true | !(var_0 & true), var_0, true), vec3<bool>(false, var_0, true), vec2<bool>(var_0, var_0), u_input.a);
    global1 = var_1.e;
    global2 = func_2(firstLeadingBit(firstLeadingBit(1u ^ var_1.a)) ^ ~var_1.a, _wgslsmith_sub_vec4_i32(select(select(min(vec4<i32>(u_input.a, -3132i, -2147483647i, -1i), vec4<i32>(-2147483647i, var_1.e, 2147483647i, -43694i)), vec4<i32>(u_input.a, 50198i, 72870i, -2147483647i) & vec4<i32>(var_1.e, 2147483647i, u_input.a, 0i), !vec4<bool>(false, var_1.c.x, false, var_1.c.x)), vec4<i32>(countOneBits(u_input.a), -42476i, ~u_input.a, -u_input.a), true), vec4<i32>(~var_1.e, ~(i32(-1i) * -2147483647i), -_wgslsmith_clamp_i32(var_1.e, 1i, u_input.a), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a, var_1.e), i32(-1i) * -28607i)))).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-185f, -1934f, 493f, -217f))))))), 82381u & _wgslsmith_sub_u32(_wgslsmith_sub_u32(~var_1.a, ~var_1.a), _wgslsmith_mod_u32(var_1.a & 4294967295u, _wgslsmith_mod_u32(0u, var_1.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(458f * 458f), 864f)) - vec2<f32>(-1623f, 1f)), _wgslsmith_dot_vec3_u32(firstTrailingBit(~(vec3<u32>(66591u, 39717u, var_1.a) >> (vec3<u32>(1u, 58722u, 45540u) % vec3<u32>(32u)))), firstLeadingBit(vec3<u32>(1u << (var_1.a % 32u), var_1.a, var_1.a))), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(89650u, var_1.a)), vec2<u32>(var_1.a, var_1.a) >> (vec2<u32>(var_1.a, var_1.a) % vec2<u32>(32u))), select(_wgslsmith_add_vec2_u32(vec2<u32>(8787u, var_1.a), vec2<u32>(var_1.a, var_1.a)), max(vec2<u32>(0u, 1u), vec2<u32>(var_1.a, 4294967295u)), func_4(var_1, var_1, var_1).c.yz)) | abs(firstLeadingBit(~vec2<u32>(var_1.a, 40942u))));
}

