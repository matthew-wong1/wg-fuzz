struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: Struct_3,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: f32,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-327f, 982f, -633f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a)));
    let var_1 = arg_1.xx;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(max(-303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a.x))))), _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(trunc(-1199f))), 168f));
    var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a - _wgslsmith_div_vec3_f32(var_2.wzz, vec3<f32>(var_2.x, -998f, -752f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -1000f, var_2.x))), _wgslsmith_f_op_vec3_f32(-var_2.yxx)));
    var var_3 = Struct_5(_wgslsmith_div_vec3_i32(arg_1.xxy | vec3<i32>(-30022i, arg_1.x >> (u_input.c.x % 32u), 0i), vec3<i32>(arg_1.x, ~39279i, _wgslsmith_mult_i32(arg_1.x, firstLeadingBit(15975i)))), u_input.b, _wgslsmith_f_op_f32(abs(var_0.a.x)), Struct_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(step(var_0.a.x, var_2.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -710f)))), Struct_1(276f, ~(~arg_0.x), true && select(true, true, true)), max(u_input.b.xz, ~vec2<u32>(arg_0.x, 1u) >> (vec2<u32>(55758u, 1u) % vec2<u32>(32u)))), Struct_3(var_2.zz, Struct_1(_wgslsmith_f_op_f32(102f * var_2.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_0.x, arg_0.x, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 126596u, 4294967295u, 0u), arg_0)), true), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(97394u, 4294967295u, 1u), arg_0.xxw), arg_0.x)));
    return var_3.e.b.c;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    var var_0 = !(!vec3<bool>(true, _wgslsmith_f_op_f32(select(arg_0.c, global0.a.x, false)) == arg_0.d.a.x, true));
    var_0 = vec3<bool>(var_0.x, false, any(vec2<bool>(false, func_3(firstTrailingBit(vec4<u32>(4294967295u, 0u, 1u, 36141u)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.x, 1612i, arg_2, 14128i), vec4<i32>(11521i, arg_2, arg_2, -6240i))))));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.a, global0.a)));
    let var_1 = vec3<u32>(~0u, firstLeadingBit(63685u), firstTrailingBit(~_wgslsmith_sub_u32(arg_1.b, u_input.c.x) ^ 1u));
    var_0 = !(!vec3<bool>(arg_2 <= (arg_0.a.x << (arg_1.b % 32u)), !var_0.x, true));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.a.x, -850f)))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -749f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(184f + -2138f)))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(arg_1.b, var_1.x), _wgslsmith_mod_u32(0u, var_1.x), 8340u, 4294967295u), _wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.c.x, 2818u, arg_1.b, 3231u), vec4<u32>(var_1.x, 65606u, arg_0.b.x, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, var_1.x, u_input.d, var_1.x), vec4<u32>(var_1.x, 0u, 4294967295u, u_input.d)))), !(!(arg_1.c && false))), arg_0.d.c | u_input.c);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-global0.a));
    let var_1 = arg_0.b;
    let var_2 = Struct_2(var_0.a);
    global0 = var_2;
    var var_3 = Struct_3(var_0.a.yx, Struct_1(-134f, arg_3.x, all(vec3<bool>(var_1.c | arg_1.x, all(vec4<bool>(true, false, var_1.c, false)), !var_1.c))), ~(~arg_3));
    return Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(var_2.a)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> bool {
    let var_0 = ~(~(~(u_input.b ^ u_input.b) << ((abs(vec3<u32>(40774u, 1u, 33802u)) ^ u_input.b) % vec3<u32>(32u))));
    var var_1 = vec4<i32>(_wgslsmith_div_i32(arg_1.x, arg_1.x), -(abs(_wgslsmith_mod_i32(18331i, arg_1.x)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -67081i, 39378i), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, 20365i, arg_1.x), vec3<i32>(arg_1.x, arg_1.x, -1i)))), max(arg_1.x, -14867i), arg_1.x);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global0.a, arg_0.a), _wgslsmith_f_op_vec3_f32(arg_0.a * _wgslsmith_f_op_vec3_f32(-arg_0.a)), false))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(900f, global0.a.x, arg_0.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.a.x, arg_0.a.x, global0.a.x)))))));
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global0.a.x)))), _wgslsmith_f_op_f32(func_2(Struct_5(var_1.yzz, u_input.b, -1247f, Struct_3(var_2.xy, Struct_1(var_2.x, 4294967295u, false), u_input.c), Struct_3(var_2.zy, Struct_1(1753f, 4294967295u, true), var_0.yz)), func_2(Struct_5(var_1.wwz, vec3<u32>(7113u, 4294967295u, 55794u), var_2.x, Struct_3(vec2<f32>(-336f, arg_0.a.x), Struct_1(-906f, 0u, false), var_0.zy), Struct_3(global0.a.xz, Struct_1(667f, u_input.b.x, true), u_input.c)), Struct_1(1000f, var_0.x, true), var_1.x).b, -2147483647i).b.a * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_0.a.x)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_2.x)))), 1000f, arg_0.a.x);
    return any(select(vec2<bool>(true, true), !vec2<bool>(true, all(vec4<bool>(false, true, false, true))), vec2<bool>(true, true)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32, arg_3: vec4<bool>) -> vec3<f32> {
    var var_0 = !vec2<bool>(all(arg_3), func_5(func_4(func_2(Struct_5(vec3<i32>(1i, -98379i, 0i), vec3<u32>(115351u, arg_0.d.x, 0u), arg_0.c.b.a, Struct_3(vec2<f32>(arg_1.a.x, 338f), arg_0.c.b, vec2<u32>(1u, 60090u)), arg_0.c), Struct_1(-996f, 44561u, false), arg_0.b), !arg_3.wx, any(arg_0.a), vec2<u32>(arg_2, u_input.c.x)), vec2<i32>(arg_0.b, arg_0.b >> (arg_2 % 32u))));
    var var_1 = Struct_5(reverseBits(vec3<i32>(max(~48318i, arg_0.b), -2147483647i, -1i)), ~u_input.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(-arg_0.c.a.x))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-235f, arg_1.a.x)), _wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x)))))), func_2(Struct_5(select(~vec3<i32>(-1i, -2147483647i, arg_0.b), ~vec3<i32>(-16932i, arg_0.b, arg_0.b), select(vec3<bool>(arg_3.x, var_0.x, true), vec3<bool>(true, false, true), arg_3.xxx)), arg_0.d, -126f, func_2(Struct_5(vec3<i32>(-35430i, -52223i, -1i), vec3<u32>(arg_0.d.x, 45378u, 0u), -487f, arg_0.c, arg_0.c), arg_0.c.b, arg_0.b), func_2(Struct_5(vec3<i32>(-15027i, -24625i, arg_0.b), u_input.b, arg_1.a.x, arg_0.c, Struct_3(arg_0.c.a, Struct_1(-391f, arg_0.c.c.x, arg_3.x), arg_0.d.zy)), Struct_1(-996f, u_input.c.x, arg_0.c.b.c), ~arg_0.b)), Struct_1(_wgslsmith_f_op_f32(max(arg_1.a.x, _wgslsmith_f_op_f32(trunc(global0.a.x)))), _wgslsmith_add_u32(5047u >> (u_input.c.x % 32u), ~1u), !var_0.x), 1i), arg_0.c);
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, global0.a.x, arg_0.c.b.a, 505f) + vec4<f32>(-362f, arg_1.a.x, 145f, global0.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.a.x), _wgslsmith_f_op_f32(max(1000f, arg_0.c.b.a)), _wgslsmith_f_op_f32(f32(-1f) * -2294f), _wgslsmith_f_op_f32(f32(-1f) * -430f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-384f, var_1.c, var_1.c, var_1.c) * vec4<f32>(arg_0.c.b.a, -219f, 1158f, var_1.c)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, arg_0.c.b.a, arg_1.a.x, -523f) * vec4<f32>(1350f, arg_1.a.x, arg_0.c.b.a, arg_0.c.a.x)))))))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-657f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.x, _wgslsmith_f_op_f32(-1290f + -1000f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(612f))))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a) - var_3.wxy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global0.a.x)))) - _wgslsmith_f_op_f32(select(global0.a.x, global0.a.x, true))), 159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1091f)) * 1f)));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_4(vec2<bool>(false, true), 2147483647i, Struct_3(global0.a.zx, Struct_1(1000f, u_input.d, true), u_input.c), vec3<u32>(1u, 13703u, u_input.c.x)), Struct_2(global0.a), u_input.a, vec4<bool>(false, true, true, false)))), vec3<f32>(_wgslsmith_f_op_f32(342f + global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -216f), _wgslsmith_f_op_f32(-676f * global0.a.x)))));
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_vec3_f32(func_1(Struct_4(vec2<bool>(true, true), 2147483647i, Struct_3(global0.a.yx, Struct_1(345f, u_input.d, false), vec2<u32>(u_input.d, u_input.a)), vec3<u32>(4294967295u, 56851u, u_input.c.x)), Struct_2(global0.a), u_input.d, vec4<bool>(true, true, true, true))).x, true)), _wgslsmith_f_op_f32(global0.a.x - 1063f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, _wgslsmith_div_f32(-1369f, global0.a.x)) * _wgslsmith_f_op_f32(exp2(func_4(Struct_3(vec2<f32>(-167f, global0.a.x), Struct_1(1978f, u_input.d, false), vec2<u32>(1u, u_input.c.x)), vec2<bool>(false, true), true, u_input.b.yx).a.x))), global0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<f32>(_wgslsmith_f_op_f32(select(global0.a.x, global0.a.x, true)), _wgslsmith_f_op_f32(round(global0.a.x)), global0.a.x, global0.a.x))), true));
    let var_1 = ~vec2<i32>(-_wgslsmith_div_i32(1i, 96062i), _wgslsmith_add_i32(abs(2147483647i) << (~u_input.b.x % 32u), _wgslsmith_clamp_i32(-55308i, ~(-42785i), _wgslsmith_mult_i32(-4957i, -1986i))));
    let var_2 = vec2<bool>(false, !func_3(~vec4<u32>(u_input.c.x, 0u, u_input.d, u_input.c.x), select(vec4<i32>(54043i, -25224i, 1i, var_1.x), vec4<i32>(var_1.x, var_1.x, 2363i, var_1.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~abs(vec4<u32>(1u, 4294967295u, u_input.c.x, u_input.c.x)), ~(~vec4<u32>(1u, 4294967295u, 55126u, 0u))), max(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, 1u, u_input.d), vec4<u32>(44541u, u_input.a, 0u, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(60644u, u_input.c.x, u_input.d, u_input.b.x), vec4<u32>(u_input.d, 0u, 3253u, 48644u))), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(6406u, 4294967295u, u_input.d, 1u), vec4<u32>(1u, u_input.b.x, 26002u, u_input.c.x))))), _wgslsmith_div_vec3_f32(global0.a, _wgslsmith_f_op_vec3_f32(ceil(var_0.wyz))), ~abs(vec3<i32>(-1i, i32(-1i) * -2147483647i, var_1.x)), vec3<u32>(_wgslsmith_add_u32(firstLeadingBit(~u_input.a), 85264u), ~func_2(Struct_5(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<u32>(65015u, u_input.b.x, u_input.d), 262f, Struct_3(vec2<f32>(global0.a.x, 1586f), Struct_1(889f, 0u, var_2.x), vec2<u32>(u_input.c.x, 90541u)), Struct_3(vec2<f32>(-392f, var_0.x), Struct_1(-1000f, u_input.b.x, false), u_input.c)), Struct_1(global0.a.x, u_input.d, var_2.x), var_1.x).c.x, u_input.b.x));
}

