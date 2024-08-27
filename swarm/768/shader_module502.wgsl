struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(sign(-304f)), u_input.b.x);
    let var_1 = vec4<bool>(~1u != _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b, u_input.d, u_input.d) & vec3<u32>(29402u, u_input.b.x, var_0.b), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 15531u, 0u), countOneBits(vec3<u32>(var_0.b, 104074u, u_input.d)))), _wgslsmith_div_f32(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-200f, -1343f)), arg_0.x)) < arg_0.x, false, any(select(vec2<bool>(any(vec3<bool>(false, false, true)), false), vec2<bool>(select(true, false, true), any(vec3<bool>(false, false, false))), vec2<bool>(all(vec3<bool>(false, true, true)), any(vec4<bool>(false, false, true, false))))));
    let var_2 = 15373i;
    var var_3 = Struct_1(!(!(any(var_1.wzy) | all(vec2<bool>(true, var_1.x)))), ~(~u_input.b), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-596f)), _wgslsmith_f_op_f32(min(-1000f, arg_0.x)))) - -544f), _wgslsmith_div_f32(1f, var_0.a), _wgslsmith_f_op_f32(var_0.a - arg_0.x), 1f), reverseBits(min(~(~vec3<u32>(u_input.d, var_0.b, 1u)), _wgslsmith_sub_vec3_u32(min(vec3<u32>(13404u, u_input.b.x, 30630u), u_input.b.zxw), u_input.b.xyy))), vec3<f32>(_wgslsmith_f_op_f32(1997f * 1620f), -2056f, -360f));
    var var_4 = vec2<i32>(i32(-1i) * -10050i, 2147483647i);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_3.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.a))), _wgslsmith_f_op_f32(-arg_0.x));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(~max(min(26240u, u_input.d), 0u) < u_input.d, ~(~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, 50885u, u_input.b.x), u_input.b) & ~u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-380f, -889f, -517f, -1554f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1339f, 196f, -615f, -2025f) + vec4<f32>(-546f, -636f, 884f, -119f)), select(true, true, false))))), select(vec3<u32>(1u << (~u_input.d % 32u), 1u, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(u_input.b.xxw, vec3<u32>(55357u, 0u, 1u)))), u_input.b.yxz, vec3<bool>(all(vec3<bool>(true, true, true)), true, true | (u_input.b.x < u_input.d))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(363f, -909f)), -735f)), _wgslsmith_f_op_f32(func_3(vec2<f32>(141f, -455f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(1662f + 491f))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(997f)))), _wgslsmith_f_op_f32(786f + _wgslsmith_f_op_f32(sign(269f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-375f, -371f) * 1266f)))));
    var var_1 = Struct_2(var_0.c.x, 17103u);
    var var_2 = Struct_2(_wgslsmith_div_f32(1002f, 1178f), 1u & min(var_0.b.x, 4294967295u));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-572f + var_0.c.x))), ~max(_wgslsmith_div_u32(1u, 18325u), ~4294967295u & reverseBits(u_input.d)));
    let var_4 = 4294967295u;
    return _wgslsmith_add_i32(u_input.a, 7913i);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: bool) -> u32 {
    let var_0 = u_input.b.x;
    let var_1 = ~(~u_input.b.yyw);
    let var_2 = ~vec4<i32>(func_2() ^ arg_1.x, 1i, -reverseBits(-74642i), ~arg_1.x ^ ~max(arg_1.x, -35292i));
    let var_3 = -(abs(-arg_1) | _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, var_2.x, arg_1.x), vec3<i32>(arg_1.x, u_input.c.x, -60859i)), arg_1));
    var var_4 = Struct_1(1355i > _wgslsmith_sub_i32(~max(1429i, var_3.x), -32442i), u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(552f - 1008f), _wgslsmith_f_op_f32(1000f + -949f), -758f, _wgslsmith_f_op_f32(298f - -1491f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1519f, -1351f, -168f, 911f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(571f, -313f, 1119f, 1235f)))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2208f, -857f, 302f, 473f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(487f, -493f, -449f, -410f), vec4<f32>(-2021f, -254f, 863f, 209f), vec4<bool>(arg_2, false, arg_2, true)))), vec4<f32>(1f, 1f, 1f, 1f)))), ~var_1, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -727f, 149f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1107f, -1000f, 211f) + vec3<f32>(-311f, 575f, -810f))))))));
    return ~(~(var_1.x ^ ~75943u));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_2(arg_2.a, 1u);
    var var_1 = !vec3<bool>(true, true, !(_wgslsmith_f_op_f32(-arg_0.x) > 2045f));
    var var_2 = reverseBits(~(firstLeadingBit(vec3<i32>(u_input.a, -2147483647i, arg_1) & vec3<i32>(u_input.c.x, -31666i, 38363i)) ^ vec3<i32>(~29867i, u_input.a << (1u % 32u), u_input.c.x)));
    var var_3 = Struct_1(!(!var_1.x), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, 1u, u_input.b.x, u_input.b.x) << (vec4<u32>(arg_2.b, arg_3, 4294967295u, arg_2.b) % vec4<u32>(32u)), u_input.b & u_input.b) << (u_input.b % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(285f, arg_0.x, 2062f, 2296f) * vec4<f32>(-2475f, var_0.a, -1319f, arg_2.a)), vec4<f32>(-624f, 295f, var_0.a, arg_0.x)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-717f, arg_0.x, 225f, 762f))))))), select(_wgslsmith_div_vec3_u32(u_input.b.ywx, u_input.b.yzx), u_input.b.zzz, select(select(!vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, false, var_1.x), false), true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, var_1.x, var_1.x), false), vec3<bool>(true, false, true), false), !(!vec3<bool>(var_1.x, false, var_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-931f, -1359f, _wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, -374f, arg_2.a))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, -1387f, arg_2.a) + vec3<f32>(-1000f, arg_2.a, arg_2.a)))))));
    var_0 = arg_2;
    return Struct_1(!any(vec4<bool>(false, arg_2.b < arg_2.b, false, any(vec4<bool>(true, var_3.a, true, var_3.a)))), vec4<u32>(~abs(u_input.d), u_input.d, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, var_0.b, u_input.b.x), vec4<u32>(arg_2.b, 0u, 65142u, 4294967295u) & var_3.b)) << (firstTrailingBit(var_3.b) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -802f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.e.x))))), min(countOneBits(vec3<u32>(1u, 1u, var_3.b.x)) & (vec3<u32>(4294967295u, 4294967295u, arg_3) ^ u_input.b.zyy), ~(vec3<u32>(u_input.b.x, arg_3, 0u) | vec3<u32>(4294967295u, 12629u, 0u))) ^ u_input.b.ywy, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.e.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, 332f, arg_0.x)) - _wgslsmith_f_op_vec3_f32(round(var_3.c.wwy))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.c.yyx + vec3<f32>(var_3.e.x, arg_0.x, -1580f)) + vec3<f32>(417f, -325f, -1493f)))));
}

fn func_5(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(select(-2960f, -1490f, true));
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, 220f))))), _wgslsmith_dot_vec4_i32(abs(abs(countOneBits(vec4<i32>(2147483647i, u_input.c.x, 0i, -47265i)))), select(countOneBits(-vec4<i32>(u_input.a, u_input.c.x, u_input.a, u_input.a)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -36093i, u_input.c.x, u_input.a), vec4<i32>(u_input.a, -7139i, u_input.c.x, u_input.a)), _wgslsmith_div_i32(u_input.a, u_input.c.x), 1i, -42577i), select(!vec4<bool>(false, arg_0.a, true, true), !vec4<bool>(false, arg_0.a, false, true), vec4<bool>(true, true, arg_0.a, arg_0.a)))), Struct_2(900f, u_input.b.x), u_input.b.x).b.yzw;
    var var_2 = true;
    var_2 = all(select(vec2<bool>(arg_0.a, !arg_0.a), !select(vec2<bool>(true, arg_0.a), vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, arg_0.a)), any(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a)))) || ((arg_0.a & (arg_0.e.x >= _wgslsmith_f_op_f32(f32(-1f) * -465f))) != true);
    let var_3 = u_input.a;
    return _wgslsmith_mult_vec4_u32(firstLeadingBit(firstTrailingBit(vec4<u32>(~244u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, 1u, var_1.x), arg_0.b), ~58185u, abs(arg_0.b.x)))), _wgslsmith_sub_vec4_u32(vec4<u32>(abs(var_1.x), ~1u, u_input.b.x, ~firstTrailingBit(var_1.x)), ~arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, func_5(func_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(662f, 432f))))), u_input.c.x, Struct_2(_wgslsmith_div_f32(-222f, 599f), 93926u | u_input.b.x), func_1(abs(u_input.b.wy), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, 1i, -15964i), vec3<i32>(-35019i, 0i, -5633i)), false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-465f, 1000f) * 379f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -617f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1562f), -388f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -993f), _wgslsmith_f_op_f32(round(1042f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1811f, -723f, 790f, -132f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-400f, -597f, -165f, -639f))))))), _wgslsmith_div_vec3_u32(u_input.b.zww, ~min(vec3<u32>(u_input.d, u_input.b.x, 11486u), firstLeadingBit(u_input.b.zxx))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-114f, -922f, -2884f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1347f, -645f, -1305f), vec3<f32>(-1000f, 427f, 348f), vec3<bool>(false, false, false))))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-804f)) + _wgslsmith_f_op_f32(-669f * 554f)), 902f)));
    var_0 = Struct_1(true, select(vec4<u32>(var_0.b.x, ~u_input.d, u_input.d >> (u_input.d % 32u), u_input.d), vec4<u32>(_wgslsmith_mult_u32(4281u, u_input.d), u_input.d, abs(1u), var_0.b.x >> (var_0.d.x % 32u)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, var_0.a, var_0.a, var_0.a), select(vec4<bool>(false, var_0.a, true, var_0.a), vec4<bool>(var_0.a, false, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, false, true)))) | vec4<u32>(var_0.d.x, firstLeadingBit(~94360u), 1u, var_0.d.x), vec4<f32>(var_0.e.x, _wgslsmith_f_op_f32(-1119f + -2265f), -438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -525f))), firstTrailingBit(firstLeadingBit(vec3<u32>(abs(var_0.b.x), u_input.b.x, u_input.b.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.x, var_0.c.x) + var_0.e.zx)))), var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(123f * -690f), var_0.e.x)))));
    var var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.b.x), vec2<u32>(~_wgslsmith_add_u32(_wgslsmith_div_u32(var_0.b.x, 0u), _wgslsmith_sub_u32(4294967295u, 14971u)), 4294967295u), ~u_input.b.zy);
    var_1 = vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(select(u_input.d, ~var_1.x, var_0.a), ~firstLeadingBit(var_1.x))), 29721u);
    var_0 = func_4(vec2<f32>(var_0.e.x, _wgslsmith_f_op_f32(235f - _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.e.x, -651f), _wgslsmith_f_op_f32(-680f + -1212f)))), _wgslsmith_dot_vec4_i32(~max(vec4<i32>(0i, u_input.c.x, u_input.a, 41228i) << (vec4<u32>(var_1.x, 17167u, var_1.x, var_0.d.x) % vec4<u32>(32u)), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.c.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -35718i, u_input.c.x, u_input.a), ~vec4<i32>(u_input.a, 4674i, u_input.c.x, -39355i)) | max(vec4<i32>(u_input.c.x, -2147483647i, 1i, 27151i), vec4<i32>(u_input.a, u_input.c.x, -1i, u_input.a) << (vec4<u32>(var_1.x, 45780u, var_0.b.x, 1u) % vec4<u32>(32u)))), Struct_2(_wgslsmith_f_op_f32(ceil(-378f)), u_input.d), 0u >> (func_5(Struct_1(!var_0.a, abs(vec4<u32>(u_input.b.x, 47761u, u_input.d, 1u)), _wgslsmith_f_op_vec4_f32(var_0.c + vec4<f32>(1688f, -771f, 1000f, var_0.c.x)), _wgslsmith_div_vec3_u32(u_input.b.zyx, u_input.b.yxy), var_0.c.xxw)).x % 32u));
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.c.ww))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, var_0.e.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, 1632f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.e.x, -846f), var_0.e.xz, vec2<bool>(var_0.a, var_0.a)))))), u_input.a, Struct_2(1000f, _wgslsmith_sub_u32(firstLeadingBit(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, var_0.b.x, 0u) ^ vec3<u32>(62569u, u_input.d, u_input.d), ~u_input.b.yyz))), _wgslsmith_dot_vec4_u32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.e.xz)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c.x, 1000f), vec2<f32>(var_0.e.x, var_0.c.x), false))), -_wgslsmith_div_i32(-4623i, u_input.a), Struct_2(_wgslsmith_f_op_f32(sign(var_0.e.x)), _wgslsmith_add_u32(0u, 46328u)), 1u).b, _wgslsmith_add_vec4_u32(func_5(Struct_1(var_0.a, vec4<u32>(1u, var_1.x, var_0.b.x, var_0.b.x), var_0.c, var_0.b.xwz, vec3<f32>(-195f, var_0.c.x, var_0.c.x))), func_5(Struct_1(false, u_input.b, var_0.c, u_input.b.yyw, var_0.e)))));
    var_1 = ~(~vec2<u32>(~(var_0.b.x | u_input.b.x), ~(var_0.b.x << (var_2.b.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(), u_input.b.x, vec3<u32>(~_wgslsmith_clamp_u32(func_5(Struct_1(var_0.a, var_2.b, var_2.c, vec3<u32>(84687u, 55275u, 60626u), vec3<f32>(-1460f, var_0.c.x, var_2.e.x))).x, 46374u, var_0.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_sub_u32(u_input.d, 2070u)), var_0.d.xy), var_1.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-131f, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -766f), -367f), vec4<f32>(_wgslsmith_f_op_f32(max(var_2.e.x, var_0.c.x)), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1173f)), -472f), _wgslsmith_f_op_f32(var_0.e.x * 1542f)))), _wgslsmith_f_op_vec3_f32(-var_0.c.ywx));
}

