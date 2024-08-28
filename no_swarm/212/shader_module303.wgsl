struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), ~firstLeadingBit(select(vec2<i32>(-40103i, -2147483647i), vec2<i32>(-2147483647i, u_input.b), vec2<bool>(arg_1.e.a, true))) & vec2<i32>(-_wgslsmith_clamp_i32(u_input.b, u_input.b, 18269i), _wgslsmith_add_i32(abs(64107i), u_input.b ^ u_input.b)));
    var_0 = 2147483647i;
    var_0 = -1i;
    var_0 = -17567i;
    var_0 = _wgslsmith_sub_i32(1i, u_input.b) ^ u_input.b;
    return Struct_3(arg_1.e, Struct_1(arg_1.e.d, u_input.a.yyx >> (~vec3<u32>(54901u, 1u, u_input.c.x) % vec3<u32>(32u)), arg_1.d.x, arg_1.e.a), Struct_1(all(!vec2<bool>(true, arg_1.b.x)), u_input.a.wwz, _wgslsmith_dot_vec2_u32(~(~arg_1.e.b.xx), select(arg_1.d.wy, _wgslsmith_mult_vec2_u32(u_input.a.xz, u_input.c), !arg_1.e.a)), arg_1.b.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(176f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(560f)))), -2008f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.c, -1000f)) + _wgslsmith_f_op_f32(exp2(arg_1.c)))), abs(((u_input.b >> (9424u % 32u)) >> (arg_1.e.c % 32u)) >> (arg_1.d.x % 32u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: bool) -> bool {
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, arg_0.a.d, true), select(vec4<bool>(false, false, arg_2.b.x, arg_3), vec4<bool>(false, false, true, true), arg_0.a.d), vec4<bool>(false, arg_3, arg_0.b.d, true)), arg_2.b.x), vec4<bool>(arg_0.b.a, true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(arg_0.b.a, arg_3, arg_0.c.a, false), vec4<bool>(arg_0.b.a, false, false, arg_2.e.d))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -858f), Struct_2(75378u, vec2<bool>(arg_3, false), -1515f, vec4<u32>(arg_2.a, u_input.a.x, 1u, arg_2.e.c), arg_0.b)).c.a), true), select(vec4<bool>(all(arg_2.b), !arg_3, _wgslsmith_sub_u32(u_input.a.x, 16364u) >= max(arg_0.c.b.x, 101901u), arg_3), select(select(vec4<bool>(arg_3, arg_2.b.x, false, false), select(vec4<bool>(arg_3, true, true, arg_0.b.a), vec4<bool>(true, true, arg_2.e.a, false), vec4<bool>(arg_0.b.d, false, arg_0.b.a, false)), !vec4<bool>(false, arg_0.a.d, arg_2.b.x, arg_3)), !select(vec4<bool>(false, false, arg_3, false), vec4<bool>(arg_3, true, arg_2.e.a, arg_2.b.x), arg_0.b.a), !select(vec4<bool>(arg_0.a.a, arg_0.c.a, true, arg_0.c.a), vec4<bool>(arg_2.b.x, false, arg_0.c.a, arg_0.c.d), arg_2.e.a)), select(vec4<bool>(select(true, arg_2.b.x, arg_3), arg_2.e.a, true, true), !vec4<bool>(false, arg_3, arg_2.b.x, arg_0.b.d), vec4<bool>(func_2(1499f, Struct_2(40347u, arg_2.b, 1680f, vec4<u32>(41851u, arg_0.b.b.x, 122200u, 9677u), arg_2.e)).b.d, any(vec4<bool>(true, false, arg_0.a.a, true)), all(vec4<bool>(false, arg_2.b.x, false, arg_0.a.d)), any(vec4<bool>(arg_0.b.d, arg_3, false, false))))), !(!(!(!vec4<bool>(true, arg_3, arg_2.b.x, true)))));
    var var_1 = -firstTrailingBit(arg_1);
    let var_2 = -761f;
    var_1 = ~vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(~arg_1, vec3<i32>(2147483647i, 0i, -55113i))), firstTrailingBit(firstLeadingBit(u_input.b)) & arg_1.x, firstTrailingBit(func_2(_wgslsmith_f_op_f32(select(-342f, var_2, arg_2.e.a)), Struct_2(arg_0.b.c, vec2<bool>(arg_0.c.d, arg_3), 1078f, u_input.a, arg_0.a)).e));
    let var_3 = (_wgslsmith_f_op_f32(arg_2.c * _wgslsmith_f_op_f32(f32(-1f) * -900f)) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2, -553f, true)), _wgslsmith_f_op_f32(f32(-1f) * -471f)))) || !(!((arg_2.d.x < u_input.c.x) & var_0.x));
    return var_1.x != ~(var_1.x & _wgslsmith_add_i32(979i, var_1.x));
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.d.x), arg_3.d.x)));
    let var_1 = Struct_1(all(arg_2), _wgslsmith_sub_vec3_u32(~vec3<u32>(~u_input.a.x, 8492u, _wgslsmith_add_u32(u_input.c.x, 33193u)), u_input.a.yyz), arg_1.x, true);
    var_0 = arg_3.d.x;
    var_0 = arg_3.d.x;
    var_0 = _wgslsmith_f_op_f32(floor(arg_3.d.x));
    return var_1;
}

fn func_1(arg_0: f32) -> vec2<u32> {
    let var_0 = func_4((func_3(func_2(-2360f, Struct_2(u_input.c.x, vec2<bool>(true, false), arg_0, u_input.a, Struct_1(true, vec3<u32>(u_input.c.x, u_input.c.x, 76009u), 43244u, true))), vec3<i32>(u_input.b, 2147483647i, 2147483647i), Struct_2(u_input.a.x, vec2<bool>(true, true), arg_0, vec4<u32>(18387u, 0u, u_input.a.x, 9171u), Struct_1(true, vec3<u32>(52913u, u_input.c.x, 1u), 4294967295u, true)), false) || (true & all(vec4<bool>(false, true, true, false)))) | true, vec2<u32>(~u_input.a.x, u_input.c.x), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false), true), vec4<bool>(true, false, true, true), 1u >= select(3669u, u_input.a.x, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true)))), func_2(1444f, Struct_2(abs(~1u), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), arg_0, ~vec4<u32>(u_input.a.x, 24865u, u_input.a.x, u_input.c.x), func_2(arg_0, Struct_2(23400u, vec2<bool>(false, false), 1097f, vec4<u32>(u_input.a.x, u_input.c.x, u_input.a.x, u_input.c.x), Struct_1(true, u_input.a.wyw, u_input.a.x, false))).a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -1618f)), _wgslsmith_div_vec3_f32(vec3<f32>(1156f, arg_0, arg_0), vec3<f32>(-457f, 436f, -351f))))) - _wgslsmith_div_vec3_f32(vec3<f32>(-450f, _wgslsmith_f_op_f32(min(1000f, arg_0)), _wgslsmith_f_op_f32(-318f + -1610f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 475f, arg_0) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1184f, arg_0))))), vec3<f32>(-985f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, arg_0))), _wgslsmith_f_op_f32(step(-234f, -1581f))), -1026f), any(select(vec3<bool>(false, any(vec4<bool>(var_0.d, true, var_0.a, var_0.a)), var_0.a), vec3<bool>(true, !var_0.d, true), !(!vec3<bool>(var_0.d, true, true))))));
    var var_2 = u_input.a.x;
    var_2 = func_4((true & any(vec4<bool>(var_0.d, var_0.a, var_0.d, var_0.a))) && true, ~(~var_0.b.zy), vec4<bool>(var_0.d, false, true, var_0.d), func_2(-640f, Struct_2(_wgslsmith_sub_u32(76569u, 1u), select(vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a)), -1052f, abs(vec4<u32>(0u, var_0.c, var_0.c, var_0.c)), var_0))).b.x & ~1u;
    let var_3 = func_2(_wgslsmith_f_op_f32(-var_1.x), Struct_2(u_input.c.x, vec2<bool>(any(select(vec3<bool>(true, true, var_0.d), vec3<bool>(true, false, var_0.a), vec3<bool>(true, false, var_0.a))), var_0.d), var_1.x, vec4<u32>(1u, select(2115u, u_input.c.x, true) >> (~u_input.c.x % 32u), _wgslsmith_mult_u32(var_0.b.x, ~u_input.a.x), min(var_0.c, 0u)), func_4(false, vec2<u32>(u_input.c.x, reverseBits(10308u)), vec4<bool>(false, !var_0.d, true | var_0.d, true), Struct_3(Struct_1(var_0.a, vec3<u32>(1u, 0u, u_input.a.x), 4294967295u, var_0.a), Struct_1(var_0.a, u_input.a.wwz, var_0.b.x, var_0.d), var_0, _wgslsmith_f_op_vec3_f32(min(var_1, vec3<f32>(-2157f, arg_0, -1558f))), 45709i)))).a;
    return ~vec2<u32>(~(~_wgslsmith_add_u32(30594u, 1u)), _wgslsmith_sub_u32(firstLeadingBit(var_0.c), _wgslsmith_div_u32(var_0.b.x, u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_vec2_u32(func_1(_wgslsmith_f_op_f32(step(-931f, _wgslsmith_f_op_f32(945f - -2339f)))), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a.x) ^ ~vec2<u32>(21763u, 4294967295u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 8169u), vec2<u32>(u_input.a.x, u_input.a.x))), u_input.a.xz);
    var_0 = _wgslsmith_mod_vec2_u32(u_input.c, ~vec2<u32>(var_0.x, u_input.a.x));
    var var_1 = Struct_2(~abs(u_input.c.x), select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), true), vec2<bool>(false, false), vec2<bool>(true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(783f)))))), u_input.a, Struct_1(false & all(vec3<bool>(true, false, true)), func_2(_wgslsmith_f_op_f32(1845f * 431f), Struct_2(~var_0.x, vec2<bool>(true, true), _wgslsmith_f_op_f32(1077f * -700f), ~vec4<u32>(u_input.c.x, 30391u, 1u, 73830u), Struct_1(false, vec3<u32>(var_0.x, 22601u, u_input.c.x), var_0.x, false))).c.b, 49038u, false));
    var_1 = Struct_2(~var_1.e.b.x, var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -128f), vec4<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 36341u, 43753u) >> (vec3<u32>(u_input.a.x, var_0.x, 0u) % vec3<u32>(32u)), u_input.a.yxx)), u_input.a.x, 4294967295u, var_1.a), Struct_1(false, vec3<u32>(func_2(var_1.c, Struct_2(4294967295u, vec2<bool>(true, false), -559f, vec4<u32>(var_0.x, u_input.c.x, 27348u, u_input.c.x), Struct_1(true, vec3<u32>(0u, 21941u, var_1.a), u_input.c.x, false))).a.c, min(var_0.x, var_0.x) << (44357u % 32u), 1u), ~u_input.a.x, !var_1.e.a));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(ceil(700f))) + -652f), _wgslsmith_f_op_f32(floor(1f)), var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 240f) - var_1.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1148f, 986f), vec4<f32>(447f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1781f)), _wgslsmith_f_op_f32(max(-114f, var_1.c)), all(select(vec4<bool>(var_1.b.x, var_1.e.a, false, var_1.e.a), vec4<bool>(var_1.e.d, false, var_1.e.d, true), vec4<bool>(var_1.b.x, var_1.e.a, var_1.e.d, var_1.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * var_1.c) * _wgslsmith_f_op_f32(var_1.c * -575f)) * var_1.c), var_1.c), u_input.a.wwx, _wgslsmith_mult_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-23871i, 2147483647i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 1i, u_input.b))) << ((vec4<u32>(var_1.a, var_1.a, u_input.c.x, 57442u) | _wgslsmith_clamp_vec4_u32(var_1.d, vec4<u32>(u_input.c.x, 6062u, var_1.a, var_0.x), var_1.d)) % vec4<u32>(32u)), ~vec4<i32>(abs(u_input.b), u_input.b, u_input.b << (u_input.c.x % 32u), _wgslsmith_add_i32(-1i, u_input.b))), ~min(vec3<u32>(_wgslsmith_mod_u32(1u, 32792u), var_1.a, ~u_input.a.x), var_1.e.b));
}

