struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    var var_0 = min(~(u_input.b >> (_wgslsmith_div_u32(arg_0.a.x, 8835u) % 32u)), arg_0.a.x);
    var_0 = ~_wgslsmith_div_u32(83577u, 8109u);
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1208f * -1816f))), -662f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(ceil(-122f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1377f)))))));
    var_0 = u_input.b;
    var_0 = ~_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, arg_1.x, 1u), ~vec3<u32>(18779u, 25574u, arg_1.x))), min(vec3<u32>(arg_1.x, 28645u, 15595u) ^ vec3<u32>(arg_1.x, arg_1.x, 58003u), min(~vec3<u32>(1u, 12317u, arg_1.x), abs(vec3<u32>(u_input.b, arg_0.a.x, arg_1.x)))));
    return reverseBits(_wgslsmith_sub_u32(u_input.b, 22999u | ~(~u_input.b)));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    var var_0 = Struct_2(u_input.b, ~vec4<u32>(~40268u, 4294967295u, u_input.b, u_input.b), vec3<bool>(!(all(vec4<bool>(arg_1.x, true, arg_1.x, true)) || true), any(vec2<bool>(all(arg_1.yy), all(vec2<bool>(true, false)))), true), arg_0, !(!(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false))));
    var var_1 = Struct_5(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, (u_input.b << (u_input.b % 32u)) >> (var_0.b.x % 32u)), var_0.b.wz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, 473f, arg_0, -546f) - vec4<f32>(676f, arg_0, -1000f, arg_2)) * vec4<f32>(-1057f, arg_0, arg_2, 840f)))), u_input.a.yz, Struct_4(Struct_2(~1u, var_0.b, vec3<bool>(true, var_0.e.x, true), _wgslsmith_f_op_f32(min(507f, var_0.d)), var_0.e), !var_0.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1267f, _wgslsmith_f_op_f32(sign(arg_0)), arg_0)), Struct_3(~(~u_input.a.x))));
    var var_2 = var_0.e;
    var var_3 = vec4<u32>(u_input.b, ~(~func_3(Struct_1(vec2<u32>(0u, 11037u)), vec2<u32>(u_input.b, var_0.b.x))) ^ ~_wgslsmith_sub_u32(var_0.b.x, reverseBits(4294967295u)), u_input.b ^ var_1.a.x, u_input.b);
    var_1 = Struct_5(select(min(vec2<u32>(var_1.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.b.x, u_input.b), var_1.d.a.b.wwy)), firstTrailingBit(vec2<u32>(8711u, var_3.x))), ~countOneBits(select(vec2<u32>(var_1.d.a.b.x, var_3.x), vec2<u32>(var_1.d.a.a, u_input.b), vec2<bool>(true, true))), select(var_2.wz, select(vec2<bool>(var_0.c.x, var_1.d.a.e.x), var_2.wz, select(var_0.c.xy, var_2.yw, var_1.d.b.x)), !(var_1.a.x > var_0.b.x))), _wgslsmith_f_op_vec4_f32(var_1.b - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, arg_2) * arg_0), _wgslsmith_f_op_f32(max(449f, _wgslsmith_f_op_f32(1007f * arg_2))), var_0.d, var_1.b.x)), ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.d.d.a, u_input.a.x), vec2<i32>(0i, var_1.c.x)) & -(~vec2<i32>(u_input.a.x, -14932i))), Struct_4(Struct_2(~var_1.a.x, _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.a.x, u_input.b, u_input.b, 4294967295u), ~var_0.b, var_1.d.a.b & var_1.d.a.b), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.c.x * var_0.d)), vec4<bool>(all(vec4<bool>(arg_1.x, false, true, var_2.x)), !var_1.d.a.c.x, true, !var_2.x)), !(!var_1.d.a.e), vec3<f32>(_wgslsmith_f_op_f32(min(-639f, -401f)), _wgslsmith_f_op_f32(var_0.d + _wgslsmith_div_f32(arg_2, -2152f)), _wgslsmith_f_op_f32(abs(1692f))), var_1.d.d));
    return _wgslsmith_f_op_f32(f32(-1f) * -575f);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), !(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), 1472f)) > -1387f;
    let var_1 = _wgslsmith_div_vec2_i32(~select(-arg_2, u_input.a.yw, var_0) & arg_2, ~arg_2);
    let var_2 = arg_1;
    return Struct_3(37749i);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_5) -> Struct_5 {
    var var_0 = Struct_1(~(~select(countOneBits(vec2<u32>(arg_3.d.a.b.x, arg_3.d.a.b.x)), vec2<u32>(4294967295u, u_input.b) & arg_3.a, arg_3.d.a.c.xz)));
    let var_1 = 39164u;
    var var_2 = arg_3.d.c;
    let var_3 = arg_3.d.a;
    var_0 = Struct_1(vec2<u32>(61086u, 90154u));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-u_input.a, func_1(_wgslsmith_add_i32(u_input.a.x, 1i), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))), u_input.a.xw), u_input.a.wy, Struct_5(min(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, u_input.b), vec2<u32>(69179u, u_input.b) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), ~abs(vec2<u32>(u_input.b, 24377u))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-623f, 1471f, 1405f, -184f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(688f, -1254f, 1350f, 1066f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-571f, -1357f, -1388f, 1011f)) + vec4<f32>(541f, 810f, -175f, 949f))), ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)), vec2<i32>(u_input.a.x, u_input.a.x)), Struct_4(Struct_2(1u, ~vec4<u32>(u_input.b, 44733u, 4294967295u, u_input.b), vec3<bool>(true, true, true), 1547f, vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, true), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(340f, -498f, -440f)))), func_1(~(-33333i), vec4<bool>(true, true, true, true), -u_input.a.xy))));
    var var_1 = ~max(_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.b, ~var_0.d.a.b.x, 1u, var_0.a.x), ~select(var_0.d.a.b, vec4<u32>(1u, 0u, 1u, 0u), var_0.d.a.c.x)), _wgslsmith_mod_vec4_u32(var_0.d.a.b, ~_wgslsmith_add_vec4_u32(var_0.d.a.b, var_0.d.a.b)));
    var var_2 = !func_4(vec4<i32>(-_wgslsmith_mult_i32(2899i, 72054i), _wgslsmith_div_i32(-1i, firstTrailingBit(u_input.a.x)), _wgslsmith_add_i32(31251i, _wgslsmith_div_i32(-2147483647i, 35718i)), var_0.c.x), func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -53021i), var_0.c) ^ ~(-1i), !var_0.d.b, ~(u_input.a.yw | var_0.c)), reverseBits(min(abs(vec2<i32>(-1i, var_0.c.x)), vec2<i32>(-96844i, 1i))), var_0).d.b.x;
    var_1 = func_4(vec4<i32>(_wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -54768i, 1i), u_input.a.wxz), 0i), 1i, ~_wgslsmith_div_i32(var_0.c.x, -22002i << (1u % 32u)), 1i ^ abs(_wgslsmith_sub_i32(var_0.c.x, u_input.a.x))), func_1(_wgslsmith_add_i32(-u_input.a.x, reverseBits(_wgslsmith_div_i32(var_0.d.d.a, 8836i))), vec4<bool>(var_0.d.a.c.x, false, false, var_0.d.a.c.x), vec2<i32>(1i, select(1i, firstTrailingBit(u_input.a.x), true))), -vec2<i32>(u_input.a.x | _wgslsmith_sub_i32(2147483647i, u_input.a.x), -select(6387i, u_input.a.x, false)), func_4(u_input.a, Struct_3(abs(func_4(vec4<i32>(u_input.a.x, -2147483647i, -20684i, 12308i), var_0.d.d, vec2<i32>(var_0.d.d.a, var_0.d.d.a), var_0).c.x)), select(vec2<i32>(-2147483647i, -1i >> (var_1.x % 32u)), var_0.c, vec2<bool>(true, true)), var_0)).d.a.b;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -711f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b.x, var_0.d.c.x, false)) - _wgslsmith_f_op_f32(step(-867f, var_0.b.x))))));
    var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, ~u_input.b, abs(firstLeadingBit(44692u) & ~var_1.x), ~(~var_0.a.x)), var_0.d.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(91313u, 12621u), _wgslsmith_f_op_vec4_f32(-var_0.b));
}

