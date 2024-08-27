struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(7948u, 30287u, 1u, 1u), vec4<u32>(1u, 1u, 0u, 10487u), vec4<u32>(4294967295u, 0u, 6924u, 87610u), vec4<u32>(0u, 84310u, 6730u, 17640u), vec4<u32>(0u, 50369u, 1u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 24015u), vec4<u32>(4294967295u, 28087u, 0u, 0u), vec4<u32>(99602u, 0u, 36046u, 3927u), vec4<u32>(4294967295u, 55302u, 4294967295u, 65593u), vec4<u32>(1u, 0u, 58648u, 73158u), vec4<u32>(4294967295u, 38341u, 61691u, 4294967295u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<vec4<u32>, 11>();
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2424f, arg_2.d.x) * arg_2.c.wx)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_2.d.xx), _wgslsmith_f_op_vec2_f32(arg_2.d.xx + vec2<f32>(arg_2.d.x, -1310f)), arg_2.d.x >= arg_2.d.x))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) + _wgslsmith_div_f32(-578f, 1294f)), arg_2.c.x))));
    var_0 = arg_2.d.yz;
    global0 = array<vec4<u32>, 11>();
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(2326f, var_0.x) * _wgslsmith_f_op_vec2_f32(round(arg_2.d.yz))))))));
    return vec4<bool>(false, true, true, !(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.x)))) <= arg_2.d.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<i32>) -> vec4<u32> {
    global0 = array<vec4<u32>, 11>();
    let var_0 = arg_2;
    let var_1 = arg_2;
    global0 = array<vec4<u32>, 11>();
    var var_2 = select(func_3(vec3<u32>(max(0u, _wgslsmith_add_u32(u_input.a, arg_0.x)), 1u, ~arg_0.x | firstLeadingBit(0u)), (arg_2.b.x != _wgslsmith_f_op_f32(-var_0.b.x)) & true, Struct_1(_wgslsmith_add_i32(var_0.c.x, arg_2.c.x), var_0.c.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_1.c))), arg_1.d, var_0.c.x)), !vec4<bool>(~var_1.c.x > _wgslsmith_add_i32(-18963i, -4750i), true, var_1.b.x > _wgslsmith_f_op_f32(-var_0.a), (arg_0.x <= 0u) && true), any(vec3<bool>(false, true, true)));
    return vec4<u32>(_wgslsmith_clamp_u32(arg_0.x, arg_0.x, _wgslsmith_mult_u32(u_input.a, _wgslsmith_sub_u32(0u, u_input.a))) & arg_0.x, _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(abs(arg_0), vec2<u32>(4294967295u, 75269u) >> (arg_0 % vec2<u32>(32u))), 33504u), 4294967295u, _wgslsmith_clamp_u32(select(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, arg_0.x), 0u), arg_0.x, !var_2.x & (var_2.x | true)), ~41441u, 22201u));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<i32>) -> vec4<i32> {
    var var_0 = vec4<u32>(u_input.a >> (~(~_wgslsmith_mult_u32(50012u, u_input.a)) % 32u), 22928u, _wgslsmith_mult_u32(~_wgslsmith_mod_u32(~1u, 4294967295u), ~u_input.a), u_input.a);
    var var_1 = _wgslsmith_add_u32(10480u, _wgslsmith_sub_u32(~min(var_0.x << (39090u % 32u), u_input.a), _wgslsmith_sub_u32(~max(4294967295u, u_input.a), u_input.a)));
    var_0 = func_2(firstTrailingBit(var_0.wx), Struct_1(arg_2.x, abs(abs(-3808i)) ^ arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -747f, arg_1.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(596f, -943f, 209f, arg_1.x) + vec4<f32>(-610f, arg_1.x, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -364f), vec4<f32>(-607f, arg_1.x, 561f, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1018f, 306f, 314f, arg_1.x)))), arg_0 << (firstTrailingBit(2843u) % 32u)), Struct_2(arg_1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-788f, -2094f, arg_1.x)))), -(~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, arg_0, arg_2.x), arg_2))), abs(vec4<i32>(-1i << (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u), arg_0, arg_0, 37506i)));
    var var_2 = Struct_2(1000f, vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x, arg_1.x), arg_2);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(max(arg_1.x, 1676f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.x, arg_1.x, 1000f))))), var_2.b), var_2.c << (~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.zzy, vec3<u32>(87840u, var_0.x, 8935u)), ~var_0.yzw) % vec3<u32>(32u)));
    return ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, ~min(1i, var_2.c.x), 0i, var_3.c.x), firstLeadingBit(firstLeadingBit(select(vec4<i32>(arg_2.x, var_3.c.x, 23448i, -34474i), vec4<i32>(-39656i, var_2.c.x, 1241i, arg_2.x), vec4<bool>(true, true, true, false)))), min(_wgslsmith_mod_vec4_i32(vec4<i32>(65595i, 0i, arg_0, 1i), min(vec4<i32>(arg_2.x, var_2.c.x, 2147483647i, 12174i), vec4<i32>(arg_2.x, var_3.c.x, arg_0, var_3.c.x))), vec4<i32>(~var_2.c.x, var_3.c.x, abs(15532i), _wgslsmith_sub_i32(arg_2.x, 0i))));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = 2897u;
    let var_1 = _wgslsmith_f_op_f32(640f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_2.a))))))));
    let var_2 = _wgslsmith_dot_vec3_i32(-reverseBits(firstLeadingBit(vec3<i32>(-15726i, -2147483647i, arg_1.x))), abs(firstTrailingBit(select(select(arg_2.c, vec3<i32>(2147483647i, -28808i, 17059i), vec3<bool>(false, true, true)), vec3<i32>(18910i, arg_1.x, 1i), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true)))));
    return Struct_1(2147483647i, -1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1164f, var_1, var_1, -1269f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(526f, arg_2.a, 330f, arg_2.b.x))) + vec4<f32>(arg_2.b.x, 722f, _wgslsmith_div_f32(890f, arg_2.b.x), -1233f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - -929f), arg_2.a), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), var_1) - vec4<f32>(808f, -1000f, _wgslsmith_div_f32(arg_2.b.x, -281f), var_1)), arg_2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.a, vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-1i, 37137i, -2147483647i, -27400i)), func_1(1i, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-714f, -217f), vec2<f32>(563f, -886f))), vec3<i32>(-27359i, 1i, -5849i))), select(1i, 1i, true)), Struct_2(907f, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-223f, 1643f, -310f))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(181f, -905f, -317f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(935f, -263f, 2275f))) * vec3<f32>(-288f, -1153f, 424f)))), ~(~vec3<i32>(-2147483647i, -7437i, 73369i))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(min(var_0.d.x, var_0.d.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(func_4(~61828u, -vec2<i32>(var_0.e, -44003i), Struct_2(var_0.d.x, var_0.c.xyx, vec3<i32>(var_0.e, 30567i, -1591i))).d.xyw)))), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, var_0.e, 40635i), abs(vec3<i32>(47376i, var_0.b, 16609i))) << (select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 46708u, 1408u), vec3<u32>(u_input.a, 40180u, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, 117550u), vec3<u32>(52141u, 51340u, u_input.a)), var_0.b <= var_0.e) % vec3<u32>(32u)), abs(firstLeadingBit(reverseBits(vec3<i32>(0i, var_0.b, var_0.a))))));
    var_1 = Struct_2(var_0.d.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1276f, var_1.b.x, -768f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_1.a, -1000f))) + _wgslsmith_f_op_vec3_f32(-var_1.b)), var_1.c);
    let var_2 = !any(vec2<bool>(true, true));
    var_0 = Struct_1(~11530i, var_0.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0.d))))), var_0.d, var_0.a);
    var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, var_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, 1231f))) + _wgslsmith_f_op_f32(1934f + -549f)), var_2)), var_1.b, _wgslsmith_mult_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 29744i, -5508i), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a, -39684i, -9615i), vec3<i32>(-1i, var_1.c.x, 0i)))), (var_1.c ^ max(var_1.c, var_1.c)) | firstTrailingBit(var_1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a, func_2(abs(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<bool>(false, var_2))), Struct_1(var_1.c.x, _wgslsmith_dot_vec2_i32(var_1.c.zx, var_1.c.xy), vec4<f32>(272f, -2104f, 398f, -1402f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.x, -1486f, var_1.b.x, var_1.a), vec4<f32>(var_1.a, 406f, -1000f, -1821f), var_2)), -49077i), Struct_2(var_0.c.x, vec3<f32>(var_0.c.x, var_1.b.x, var_1.a), var_1.c), vec4<i32>(var_1.c.x, _wgslsmith_mod_i32(var_0.e, -2147483647i), countOneBits(var_0.b), ~var_0.a)).x), 570f, var_1.c.yx);
}

