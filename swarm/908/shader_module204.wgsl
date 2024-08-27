struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_mult_vec4_u32(vec4<u32>(abs(33558u), arg_1.a, _wgslsmith_sub_u32(abs(0u), reverseBits(arg_1.a)), u_input.b), vec4<u32>(~u_input.c, ~arg_1.a << (18135u % 32u), ~reverseBits(arg_1.a), _wgslsmith_clamp_u32(1u << (arg_1.a % 32u), u_input.c, 4294967295u))), Struct_1(~_wgslsmith_sub_u32(u_input.c, 39024u), -1381f, vec4<bool>(!(!arg_1.c.x), false, !(!arg_1.c.x), true), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-890f, arg_1.b, 1684f, 1025f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, -893f, -383f, 1061f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.b, arg_1.d, arg_1.b, -1404f), vec4<f32>(arg_1.d, arg_1.d, arg_1.b, arg_1.d))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.b, arg_1.d, arg_1.d, 250f)))))), ~vec4<u32>(u_input.c, abs(select(0u, 0u, true)), ~u_input.c, ~u_input.c ^ ~arg_1.a), u_input.d);
    let var_1 = min(var_0.a.ywx, vec3<u32>(reverseBits(~9879u) ^ _wgslsmith_div_u32(96651u, var_0.d.x), arg_1.a, arg_1.a));
    var var_2 = var_1.xx;
    let var_3 = vec4<u32>(var_1.x, 19323u, (~u_input.c << (47799u % 32u)) ^ min(_wgslsmith_div_u32(12831u, u_input.c), u_input.b), 1u);
    let var_4 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(var_0.d, ~var_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.d))), select(select(select(vec4<bool>(arg_1.c.x, arg_1.c.x, var_0.b.c.x, true), arg_1.c, vec4<bool>(arg_1.c.x, false, true, arg_1.c.x)), vec4<bool>(var_0.b.c.x, false, var_0.b.c.x, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, arg_1.c.x, any(vec2<bool>(var_0.b.c.x, false)), var_0.b.c.x), true), _wgslsmith_f_op_f32(select(var_0.c.x, var_0.c.x, false))), var_0.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(2042f * 567f), 522f), _wgslsmith_div_f32(-390f, 1f), _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(var_0.b.d - var_0.c.x)))), vec2<i32>(arg_0, -arg_2.x), var_0.b);
    return -1373f;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = Struct_3(vec4<u32>(45311u, ~max(4294967295u, arg_0.x) | firstLeadingBit(~u_input.c), 46060u, ~24915u), Struct_1(57888u, arg_1.b, vec4<bool>(arg_1.c.x, !(!arg_1.c.x), true, arg_1.c.x), 596f), vec4<f32>(166f, -945f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(991f, 842f)) + arg_1.b), -697f), ~(vec4<u32>(0u, 40813u, _wgslsmith_mod_u32(1u, u_input.c), arg_0.x | 0u) << (vec4<u32>(firstTrailingBit(u_input.c), firstLeadingBit(arg_0.x), select(4294967295u, 7231u, false), 20796u) % vec4<u32>(32u))), ~vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(-40849i, u_input.a, 13622i)), vec3<i32>(-1i, u_input.a, u_input.d.x)), _wgslsmith_clamp_i32(u_input.d.x, -8301i, _wgslsmith_div_i32(2147483647i, -1i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, -20748i), vec2<i32>(u_input.d.x, u_input.d.x)), reverseBits(u_input.d.x))));
    let var_1 = arg_1.a;
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-547f, var_0.b.b, var_0.b.d)))), var_0.c.zww))) + var_0.c.wwy);
    let var_4 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.a.x) & var_0.a.xy, ~vec2<u32>(var_1, var_1)) | firstLeadingBit(4294967295u)), -1832f, vec4<bool>(!(-u_input.d.x <= -47157i), false, all(!vec2<bool>(arg_1.c.x, arg_1.c.x)), false), _wgslsmith_div_f32(var_0.b.d, -802f));
    return arg_0.xy;
}

fn func_2() -> bool {
    let var_0 = Struct_2(Struct_1(55355u, _wgslsmith_f_op_f32(f32(-1f) * -525f), !vec4<bool>(4294967295u < u_input.b, true, false, true), _wgslsmith_f_op_f32(-688f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(184f - 692f)))), firstTrailingBit(vec3<i32>(0i, i32(-1i) * -1i, u_input.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(928f, -1644f, -1287f, 148f)))), -_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -60263i), select(u_input.d.yz, vec2<i32>(-31259i, 2660i), vec2<bool>(false, true)) ^ u_input.d.zx), Struct_1(~81886u, _wgslsmith_f_op_f32(round(1292f)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1687f)), _wgslsmith_f_op_f32(f32(-1f) * -1579f))))));
    let var_1 = _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c, ~(~u_input.b)), abs(vec2<u32>(~68064u, countOneBits(42842u))) ^ func_4(_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.e.a, var_0.a.a, 1u, var_0.e.a), abs(vec4<u32>(374u, u_input.c, var_0.a.a, 0u))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 11720u, 32290u), vec4<u32>(var_0.a.a, 17182u, u_input.c, 0u)), _wgslsmith_f_op_f32(trunc(var_0.a.b)), select(var_0.a.c, vec4<bool>(false, false, var_0.e.c.x, var_0.a.c.x), var_0.a.c.x), _wgslsmith_f_op_f32(func_3(1i, Struct_1(4294967295u, var_0.c.x, vec4<bool>(var_0.a.c.x, true, var_0.a.c.x, var_0.e.c.x), -276f), vec3<i32>(u_input.a, 6766i, u_input.d.x))))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -750f);
    var var_3 = var_0.a;
    let var_4 = u_input.d;
    return var_0.e.c.x;
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + 346f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x + arg_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + -1673f)) - -689f));
    let var_1 = arg_1.x;
    let var_2 = Struct_1(select(u_input.c, ~abs(_wgslsmith_sub_u32(1u, 0u)), false), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -463f)))), vec4<bool>(true, arg_2.x || true, func_2(), 24498i < firstTrailingBit(-1i)), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(floor(arg_1.x))));
    var var_3 = u_input.d;
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(_wgslsmith_add_u32(4294967295u & (16557u << (u_input.b % 32u)), ~u_input.c), ~85754u, any(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(769f - 1144f), vec4<bool>(!(true | any(vec2<bool>(false, true))), true, any(vec3<bool>(true, true, true)), true), -881f);
    var var_1 = Struct_1(u_input.c, _wgslsmith_f_op_f32(479f + 750f), vec4<bool>(var_0.c.x, true, any(func_1(63049i, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -287f) * vec2<f32>(var_0.d, 271f)), vec2<bool>(true, true))), true || var_0.c.x), _wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(max(-1303f, var_0.d))));
    var_1 = Struct_1(_wgslsmith_mult_u32(~41230u, ~var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.d))), var_0.c, _wgslsmith_f_op_f32(max(-1000f, var_1.d)));
    let var_2 = 17651i > (~_wgslsmith_sub_i32(u_input.d.x & -1i, 1i) << (var_0.a % 32u));
    var_0 = Struct_1(select(var_0.a, 1u, false), _wgslsmith_f_op_f32(-596f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1702f)) + var_0.b)), select(!select(!vec4<bool>(true, var_2, var_1.c.x, var_1.c.x), !vec4<bool>(var_1.c.x, true, var_0.c.x, var_0.c.x), true), var_0.c, select(!select(var_1.c, vec4<bool>(var_2, false, var_2, var_0.c.x), var_0.c.x), select(vec4<bool>(var_1.c.x, true, true, var_2), vec4<bool>(false, var_0.c.x, false, var_1.c.x), vec4<bool>(var_0.c.x, var_0.c.x, var_1.c.x, false)), !func_1(u_input.a, vec2<f32>(var_1.b, 1158f), vec2<bool>(false, true)))), var_0.b);
    let var_3 = ~u_input.a;
    let var_4 = (u_input.c << (~(~(~0u)) % 32u)) << (_wgslsmith_dot_vec4_u32(min(abs(~vec4<u32>(var_1.a, var_1.a, 0u, u_input.c)), vec4<u32>(_wgslsmith_mult_u32(102284u, u_input.c), ~u_input.c, abs(0u), _wgslsmith_div_u32(var_1.a, var_1.a))), _wgslsmith_mod_vec4_u32(vec4<u32>(4830u, max(u_input.b, u_input.c), ~0u, min(var_1.a, 37280u)), min(vec4<u32>(var_0.a, 44047u, var_0.a, u_input.c), vec4<u32>(u_input.c, var_0.a, 1u, var_0.a)))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_1.a), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.a, var_4), vec2<u32>(13622u, var_1.a)))), 1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-436f, var_0.b, -159f, 155f) * _wgslsmith_div_vec4_f32(vec4<f32>(-658f, var_1.b, -864f, 1441f), vec4<f32>(-884f, var_0.d, -1891f, var_0.b))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1142f, var_0.d, 1177f, 3588f))))) * vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.d))), _wgslsmith_f_op_f32(1698f - var_0.d), _wgslsmith_f_op_f32(1655f - -2044f), var_1.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(599f, var_0.d, _wgslsmith_f_op_f32(var_0.d - var_1.b), _wgslsmith_f_op_f32(var_0.b * var_1.b)))));
}

