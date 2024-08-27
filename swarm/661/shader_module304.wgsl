struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(step(arg_0.b.xy, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.a))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1151f, arg_1) * vec3<f32>(arg_3.a.a.c, 1030f, 445f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2343f, arg_0.c, arg_0.c))))), -515f, vec2<bool>(~0i == abs(arg_3.a.c.x), any(arg_3.b))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.b.a.x, -1228f)), vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.c, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(step(arg_0.b.x, arg_0.a.x)), _wgslsmith_div_f32(323f, -717f)), -254f, vec2<bool>(arg_2, true)), ~select(vec4<i32>(u_input.c.x, ~(-17062i), min(u_input.c.x, u_input.c.x), arg_3.a.c.x), select(arg_3.a.c | vec4<i32>(31716i, u_input.b.x, u_input.c.x, -1i), vec4<i32>(59628i, 38376i, u_input.b.x, 0i), !vec4<bool>(true, arg_3.a.a.d.x, arg_3.b.x, false)), vec4<bool>(arg_3.a.b.d.x, arg_2, false, !arg_2)));
    let var_1 = _wgslsmith_f_op_f32(arg_0.a.x * -2230f);
    var var_2 = var_0.a.d.x;
    var_2 = arg_0.d.x;
    var var_3 = vec2<bool>((u_input.c.x <= var_0.c.x) != arg_0.d.x, !any(!select(vec3<bool>(false, arg_3.b.x, true), arg_3.b, false)));
    return 29655u;
}

fn func_2(arg_0: Struct_3) -> vec3<f32> {
    let var_0 = vec2<u32>(_wgslsmith_div_u32(22656u, 7215u ^ func_3(arg_0.a.b, -965f, any(vec3<bool>(true, true, false)), arg_0)), firstTrailingBit(~_wgslsmith_add_u32(arg_0.d | 13313u, ~arg_0.c.x)));
    var var_1 = ~min(~abs(firstTrailingBit(vec4<u32>(arg_0.c.x, var_0.x, 38u, 26504u))), select(vec4<u32>(1u, ~36318u, ~var_0.x, ~1743u), vec4<u32>(0u, var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.d, 4294967295u, u_input.d.x), vec4<u32>(53395u, 0u, var_0.x, u_input.a)), _wgslsmith_dot_vec2_u32(arg_0.c, arg_0.c)), arg_0.b.x || arg_0.a.b.d.x));
    var var_2 = vec2<f32>(1f, 1f);
    var_2 = arg_0.a.b.a;
    var var_3 = arg_0.a;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(-554f, _wgslsmith_f_op_f32(-var_3.a.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -634f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(448f)) - -744f), true))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.b.c, 1223f)))), 1f, _wgslsmith_f_op_f32(var_3.b.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -169f)))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_f_op_vec3_f32(sign(arg_0.b))))), _wgslsmith_f_op_vec3_f32(func_2(Struct_3(Struct_2(Struct_1(vec2<f32>(var_0.c, 919f), var_0.b, var_0.a.x, vec2<bool>(false, arg_0.d.x)), arg_0, u_input.b << (vec4<u32>(u_input.a, u_input.a, 0u, u_input.d.x) % vec4<u32>(32u))), !(!vec3<bool>(arg_1, arg_0.d.x, true)), ~abs(u_input.d), 4294967295u))));
    let var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.d, vec2<u32>(11962u, u_input.d.x)), u_input.d), ~vec2<u32>(113211u & u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d)), ~firstTrailingBit(abs(u_input.d))) | ~((~u_input.d << (u_input.d % vec2<u32>(32u))) >> ((abs(vec2<u32>(u_input.d.x, 15970u)) | vec2<u32>(0u, u_input.a)) % vec2<u32>(32u)));
    let var_3 = (82388i >> (abs(var_2.x) % 32u)) >> (min(4294967295u >> (~u_input.d.x % 32u), _wgslsmith_mod_u32(1u, u_input.d.x)) % 32u);
    let var_4 = firstLeadingBit(1i);
    return Struct_3(Struct_2(arg_0, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-613f - var_0.a.x), _wgslsmith_div_f32(var_1.x, var_0.c)), _wgslsmith_f_op_vec3_f32(ceil(var_0.b)), _wgslsmith_f_op_f32(sign(arg_0.c)), vec2<bool>(all(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_1)), all(var_0.d))), ~_wgslsmith_mod_vec4_i32(u_input.b, u_input.b)), !(!select(vec3<bool>(arg_1, var_0.d.x, arg_1), !vec3<bool>(arg_0.d.x, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(arg_1, var_0.d.x, false)))), _wgslsmith_clamp_vec2_u32(firstLeadingBit(~(u_input.d & var_2)), var_2, vec2<u32>((u_input.d.x << (0u % 32u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.d.x, 0u), vec4<u32>(var_2.x, 49960u, 52304u, u_input.d.x)), 33072u)), u_input.d.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(firstTrailingBit(u_input.b.x & _wgslsmith_add_i32(arg_1.a.c.x & 0i, abs(arg_0.a.c.x))), ~u_input.c.x);
    var_0 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(12635i, arg_0.a.c.x, arg_0.a.c.x), vec3<i32>(-1069i, 0i, -23526i)), 0i & arg_0.a.c.x), ~arg_0.a.c.x), ~vec2<i32>(41341i, u_input.b.x) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), max(vec2<u32>(arg_0.d, arg_0.d), vec2<u32>(79408u, 4294967295u)), max(u_input.d, arg_1.c)) % vec2<u32>(32u)));
    var_0 = -2147483647i;
    var_0 = -arg_1.a.c.x;
    var_0 = abs(max(40359i, abs(-_wgslsmith_dot_vec4_i32(arg_0.a.c, arg_1.a.c))));
    return arg_1.a.b;
}

fn func_5(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = u_input.b.x;
    let var_1 = func_1(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_0.b.xy + vec2<f32>(arg_0.c, -1191f)))), _wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_f_op_f32(arg_0.a.x + -130f), func_1(func_1(Struct_1(vec2<f32>(arg_0.c, -1163f), arg_0.b, 1295f, vec2<bool>(arg_0.d.x, arg_0.d.x)), arg_0.d.x).a.b, arg_0.b.x <= 1000f).b.xy), true).a.b, arg_0.d.x).a;
    let var_2 = abs((~vec3<u32>(u_input.a, 0u, 36369u) >> (_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(u_input.a, 2884u, u_input.d.x)), ~vec3<u32>(21947u, u_input.a, 74911u)) % vec3<u32>(32u))) << (abs(firstTrailingBit(firstTrailingBit(vec3<u32>(u_input.a, 4294967295u, u_input.d.x)))) % vec3<u32>(32u)));
    var var_3 = vec2<bool>(true, !((arg_0.d.x && true) || any(!vec2<bool>(arg_0.d.x, arg_0.d.x))));
    var var_4 = u_input.a;
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a.x) + _wgslsmith_f_op_f32(-344f + -588f)), -992f))), vec2<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2032f * _wgslsmith_f_op_f32(var_1.b.a.x + arg_0.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -861i;
    var_0 = _wgslsmith_dot_vec4_i32(abs(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b & u_input.b, vec4<i32>(u_input.c.x, 1703i, u_input.b.x, u_input.b.x)), vec4<i32>(u_input.c.x, -u_input.b.x, -28094i, max(23676i, u_input.b.x)))), vec4<i32>(min(select(max(-2147483647i, u_input.c.x), u_input.c.x, false), _wgslsmith_add_i32(u_input.b.x, -36047i) ^ 1i), 2147483647i, firstTrailingBit(-u_input.c.x), u_input.c.x));
    let var_1 = u_input.b.x;
    let var_2 = _wgslsmith_mult_i32(1i, select(0i ^ u_input.c.x, ~u_input.b.x, any(!select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(func_5(func_4(func_1(Struct_1(vec2<f32>(1000f, -356f), vec3<f32>(804f, -1708f, 173f), 1802f, vec2<bool>(false, true)), any(vec3<bool>(false, false, true))), func_1(func_1(Struct_1(vec2<f32>(255f, -428f), vec3<f32>(-104f, 812f, 244f), 572f, vec2<bool>(false, true)), true).a.a, all(vec4<bool>(false, false, true, true)))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1042f))), -1461f), func_1(func_4(func_1(Struct_1(vec2<f32>(-1624f, 186f), vec3<f32>(802f, -941f, -405f), 460f, vec2<bool>(false, true)), false), Struct_3(Struct_2(Struct_1(vec2<f32>(-2006f, -984f), vec3<f32>(-110f, -336f, -868f), 167f, vec2<bool>(false, true)), Struct_1(vec2<f32>(-1185f, -1488f), vec3<f32>(-797f, -985f, -355f), -985f, vec2<bool>(true, true)), vec4<i32>(var_1, 2147483647i, 1i, var_1)), vec3<bool>(false, false, true), vec2<u32>(4294967295u, 1u), u_input.d.x)), true).a.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-496f - 311f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_4(Struct_3(Struct_2(Struct_1(vec2<f32>(-1146f, 1000f), vec3<f32>(-1751f, 1000f, -171f), -985f, vec2<bool>(true, true)), Struct_1(vec2<f32>(-937f, -1221f), vec3<f32>(1468f, 145f, 400f), -201f, vec2<bool>(true, false)), u_input.b), vec3<bool>(false, true, true), u_input.d, u_input.a), Struct_3(Struct_2(Struct_1(vec2<f32>(-206f, 134f), vec3<f32>(-1311f, 610f, -367f), -1000f, vec2<bool>(false, true)), Struct_1(vec2<f32>(-367f, 1225f), vec3<f32>(-2500f, 1000f, -683f), 2006f, vec2<bool>(true, false)), u_input.b), vec3<bool>(true, false, false), vec2<u32>(4294967295u, u_input.d.x), u_input.a)).c, 1f))), !(!select(func_1(Struct_1(vec2<f32>(-1155f, -289f), vec3<f32>(-2268f, -508f, -323f), 1603f, vec2<bool>(true, true)), true).b.yz, select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true))));
    var var_4 = select(u_input.a, abs(0u), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d.x, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.d.x, 3043u, 23382u, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.a, u_input.a, u_input.a ^ u_input.a, 80479u), ~vec4<u32>(u_input.a, 1u, 1u, 96778u))), -22673i, u_input.b.yz, u_input.c.x, ~(~firstLeadingBit(~vec4<u32>(24517u, 1u, u_input.d.x, 40386u))));
}

