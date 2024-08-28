struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<bool>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global0 = array<vec2<bool>, 8>();
    var var_0 = (_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e.x, 2147483647i, 1i, -2147483647i), vec4<i32>(1i, 34846i, u_input.a.x, u_input.a.x))) < -35551i) || any(vec3<bool>(true, true, all(vec3<bool>(false, false, false))));
    let var_1 = arg_0.a.x << (firstLeadingBit(4294967295u) % 32u);
    var var_2 = 7025i;
    let var_3 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1078f + arg_0.b.x)) - _wgslsmith_f_op_f32(arg_0.c - arg_0.c)), _wgslsmith_div_f32(arg_0.c, -487f), -144f, _wgslsmith_f_op_f32(-arg_0.c)), vec2<u32>(var_1, 1u), Struct_2(vec3<u32>(~(~15467u), min(_wgslsmith_dot_vec2_u32(arg_0.a.xz, arg_0.a.zy), 1284u), _wgslsmith_mult_u32(3588u & arg_0.a.x, countOneBits(arg_0.a.x))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(248f, 1000f)) - _wgslsmith_f_op_f32(-540f - 430f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_0.c) - arg_0.d.x), arg_0.b.x), _wgslsmith_f_op_f32(635f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d) - _wgslsmith_f_op_vec2_f32(vec2<f32>(766f, -700f) * vec2<f32>(arg_0.c, arg_0.c))) + vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(min(-525f, arg_0.d.x)))), abs(arg_0.e)), Struct_3(firstTrailingBit(vec4<u32>(var_1, arg_0.a.x, ~var_1, ~26225u)), Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1, var_1, arg_0.a.x), vec3<u32>(0u, 55260u, arg_0.a.x)) << (arg_0.a % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_0.b - vec4<f32>(585f, 822f, 537f, 175f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.c))), arg_0.d, arg_0.e)));
    return ~62311u;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<f32>) -> vec2<u32> {
    var var_0 = Struct_1(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 4294967295u), max(vec3<u32>(4294967295u, 1u, 13666u), vec3<u32>(1782u, 25016u, 16522u))), 29318u), all(vec4<bool>(!(arg_2.x >= 470f), !(arg_1.x & false), -745f >= arg_2.x, all(arg_1))), vec3<bool>(arg_1.x, true, !(506f < _wgslsmith_f_op_f32(arg_2.x * -320f))), ~(vec4<u32>(1u, 1u, 5760u, func_3(Struct_2(vec3<u32>(4294967295u, 1767u, 47518u), vec4<f32>(-1109f, arg_2.x, arg_2.x, -1000f), arg_2.x, arg_2.yw, vec2<i32>(u_input.a.x, u_input.a.x)))) >> (~(~vec4<u32>(21825u, 2212u, 70788u, 47212u)) % vec4<u32>(32u))), abs(4294967295u));
    var_0 = Struct_1(4294967295u, !(-2352f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-402f + -729f) * arg_2.x)), select(var_0.c, var_0.c, true), max(~var_0.d, _wgslsmith_add_vec4_u32(var_0.d, abs(var_0.d))), var_0.d.x << (~(~var_0.e) % 32u));
    var var_1 = Struct_2(countOneBits(var_0.d.zyx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 889f, arg_2.x, -855f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-616f, -950f, arg_2.x, arg_2.x))), arg_2)), _wgslsmith_f_op_f32(trunc(arg_2.x)), arg_2.wx, select(vec2<i32>(-firstLeadingBit(25675i), u_input.a.x), abs(select(u_input.a.zw, _wgslsmith_clamp_vec2_i32(u_input.a.xx, vec2<i32>(arg_0, u_input.a.x), u_input.a.zx), true)), vec2<bool>(_wgslsmith_mod_i32(-2147483647i, arg_0) < _wgslsmith_add_i32(arg_0, -1i), any(select(vec4<bool>(false, var_0.b, arg_1.x, var_0.c.x), vec4<bool>(false, false, var_0.c.x, var_0.b), var_0.c.x)))));
    var_1 = Struct_2(~((_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.d.x, var_1.a.x, var_0.e), var_0.d.yzz) ^ ~var_1.a) ^ select(firstTrailingBit(var_0.d.yxy), var_1.a, vec3<bool>(arg_1.x, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) + _wgslsmith_f_op_vec4_f32(-arg_2)), -309f, _wgslsmith_div_vec2_f32(arg_2.yy, var_1.b.xz), max(vec2<i32>(-1i) * -select(vec2<i32>(27905i, u_input.a.x), u_input.a.yx, vec2<bool>(true, true)), (vec2<i32>(-1i) * -var_1.e) ^ (max(var_1.e, vec2<i32>(arg_0, u_input.a.x)) & u_input.a.wz)));
    var var_2 = 0i;
    return var_1.a.yy;
}

fn func_1() -> vec2<f32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(840f, 800f, 785f, -1060f))) + vec4<f32>(-1139f, _wgslsmith_f_op_f32(f32(-1f) * -1887f), 419f, _wgslsmith_f_op_f32(f32(-1f) * -547f))))), func_2(-_wgslsmith_mod_i32(u_input.a.x, ~u_input.a.x), !global0[_wgslsmith_index_u32(firstTrailingBit(59352u) & 0u, 8u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1083f, -328f, 637f, 1099f) + vec4<f32>(-676f, 866f, 830f, 352f)))))), Struct_2(vec3<u32>(~1u >> (1u % 32u), 4579u, ~(~0u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(576f, -107f, -1887f, -763f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-378f, -255f)) + 1501f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-1658f, 676f, true)), -218f)), -(~u_input.a.zw)), Struct_3(min(~vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(18318u, 28414u, 4294967295u, 30930u), vec4<u32>(1u, 95030u, 1u, 48242u)))), Struct_2(abs(vec3<u32>(1u, 1u, 1u)), vec4<f32>(1f, 1f, 1f, 1f), 1f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1134f, 1308f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1315f, -2367f)), global0[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(0i, u_input.a.x)), ~u_input.a.yz))));
    let var_1 = true;
    global0 = array<vec2<bool>, 8>();
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_0.d.b.d.x, var_0.c.c)), -192f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.d.b.b.yw), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1451f, -1170f)), true))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.c.b.x) * vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.d.x + 773f) - _wgslsmith_div_f32(-352f, var_0.d.b.c)))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.a.wx))));
    return vec2<f32>(512f, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(464f - 829f), _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_vec2_f32(func_1())), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -477f), _wgslsmith_div_f32(1008f, -809f)) - vec2<f32>(1f, _wgslsmith_f_op_f32(283f + -273f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-196f)))), -362f, -1412f) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -313f) + _wgslsmith_f_op_f32(select(-816f, -277f, true))), -511f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-735f, 207f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -274f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1283f))))))));
}

