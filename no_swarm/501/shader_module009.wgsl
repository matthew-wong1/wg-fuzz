struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) * -420f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -605f)) - 262f), global0.x));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-608f, -209f))), true)) - _wgslsmith_f_op_f32(-1032f - -133f)), arg_1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -978f)))));
    global0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-882f, var_0.x, true)))), arg_1.a)));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.d.x, u_input.c.x), 46001i);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), -620f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a)) - _wgslsmith_f_op_f32(sign(267f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-831f, var_0.x, global0.x, 1000f)) - vec4<f32>(_wgslsmith_f_op_f32(arg_0.a + arg_1.a), _wgslsmith_div_f32(arg_1.a, 170f), -1000f, arg_1.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -983f, var_0.x, global0.x)), vec4<f32>(var_0.x, global0.x, 1290f, arg_1.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(267f, var_0.x, arg_0.a, arg_0.a))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 458f, 340f, arg_1.a)))))));
    return ~_wgslsmith_sub_u32(u_input.e, ~_wgslsmith_clamp_u32(u_input.e, ~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.zy)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_u32(func_3(Struct_1(arg_0.a), Struct_1(_wgslsmith_f_op_f32(-global0.x))), u_input.e) << (_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, arg_1.x) << ((u_input.b.zzz | u_input.a.xzw) % vec3<u32>(32u)), vec3<u32>(1u, arg_1.x, ~arg_1.x))) % 32u);
    let var_1 = _wgslsmith_clamp_u32(firstTrailingBit(~(~arg_1.x)), 30752u, ~u_input.e);
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(776f, arg_0.a)))));
    let var_2 = arg_0.a == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a));
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.a, global0.x)), _wgslsmith_f_op_f32(exp2(arg_0.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(168f, 655f) * vec2<f32>(arg_0.a, 511f)) - vec2<f32>(-633f, 856f)), var_2))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(243f, 112f), vec2<f32>(arg_0.a, global0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -374f)))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, arg_0.a))))));
    return !vec3<bool>(all(vec3<bool>(true, true, var_2)), true, reverseBits(_wgslsmith_add_u32(1u, arg_1.x)) < _wgslsmith_clamp_u32(~4294967295u, abs(u_input.a.x), ~var_1));
}

fn func_4(arg_0: vec3<bool>) -> vec2<f32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x)))), Struct_2(Struct_1(158f), -407f, Struct_1(global0.x), Struct_1(1476f), Struct_1(_wgslsmith_f_op_f32(-1f))), true, -16221i);
    var var_1 = arg_0.x;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-433f - _wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(f32(-1f) * -983f)));
    var var_2 = func_2(var_0.b.d, u_input.a ^ vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a.x), 1u, u_input.a.x, ~select(u_input.b.x, u_input.e, var_0.c))).x;
    var var_3 = vec2<bool>(true, true);
    return vec2<f32>(var_0.b.b, _wgslsmith_f_op_f32(-1000f * global0.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> vec3<f32> {
    var var_0 = 0i;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_4(func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))), u_input.b)));
    global0 = var_1;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0.a, global0.x)))), 495f)) * _wgslsmith_f_op_f32(ceil(arg_0.a))), var_1.x);
    var_0 = i32(-1i) * -_wgslsmith_add_i32(~reverseBits(u_input.c.x), ~u_input.d.x << (u_input.b.x % 32u));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, arg_2.b.d.a, var_1.x) - vec3<f32>(arg_0.a, 314f, -1386f)))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-520f, -246f, 1499f)), vec3<f32>(-1290f, global0.x, -1602f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.a.a, -220f, 379f)))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.a)), var_1.x, arg_0.a)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.a, -1031f)) - global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a.a + -2087f), 386f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) + _wgslsmith_f_op_f32(round(-1078f)))))));
}

fn func_5(arg_0: vec3<f32>) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(1419f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1253f, _wgslsmith_f_op_f32(sign(global0.x)), true)))), -418f, !(u_input.e > 1u) != false)), Struct_1(_wgslsmith_f_op_f32(max(-1011f, global0.x))), Struct_1(_wgslsmith_f_op_f32(-1000f + -179f)), Struct_1(_wgslsmith_f_op_f32(arg_0.x * 869f)));
    global0 = arg_0.xz;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1575f, arg_0.x, -255f) * vec4<f32>(-1000f, global0.x, -276f, global0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_0.x, var_0.b, -446f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, -314f, arg_0.x, -124f)))))));
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * 628f), 1f, all(vec3<bool>(true, true, true)))), -1405f), vec2<f32>(632f, _wgslsmith_f_op_f32(var_1.x + 896f)));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1046f, -1430f, -337f, -375f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, var_0.e.a, 1000f, var_1.x) * vec4<f32>(1659f, -391f, var_0.c.a, global0.x)))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(805f * 869f), global0.x, false)), -526f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.x, var_1.x))), arg_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(1252f * _wgslsmith_f_op_f32(global0.x * var_0.e.a)), arg_0.x, global0.x)));
    return Struct_3(Struct_1(-983f), var_0, !select(_wgslsmith_f_op_f32(1904f - global0.x) != _wgslsmith_f_op_f32(f32(-1f) * -1042f), all(vec2<bool>(true, true)), select(true, u_input.b.x >= 4294967295u, true)), u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_1(650f), Struct_1(global0.x), Struct_3(Struct_1(305f), Struct_2(Struct_1(101f), 1383f, Struct_1(global0.x), Struct_1(global0.x), Struct_1(global0.x)), true, -2147483647i)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(global0.x, -1527f, global0.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, global0.x, 1375f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1815f, 751f, 178f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-235f, global0.x, global0.x)))))));
    var var_1 = firstTrailingBit(u_input.c);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.x, func_5(vec3<f32>(var_0.b.b, global0.x, -820f)).a.a)))));
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(716f, -475f)) + vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.a.a)), _wgslsmith_f_op_f32(770f * global0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.a * global0.x), -969f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 769f) * vec2<f32>(var_2.a, -615f))))));
    let var_3 = (vec4<i32>(62931i, _wgslsmith_mult_i32(var_1.x, 0i) | (var_0.d << (0u % 32u)), 1i, 46625i) | _wgslsmith_mult_vec4_i32(select(max(vec4<i32>(var_0.d, -39708i, var_1.x, u_input.c.x), vec4<i32>(var_1.x, -18239i, -2147483647i, var_1.x)), ~vec4<i32>(-1i, var_1.x, u_input.d.x, 2147483647i), var_0.c && false), vec4<i32>(-2147483647i, var_1.x, -2147483647i, u_input.c.x) | abs(vec4<i32>(var_1.x, u_input.d.x, 12206i, var_0.d)))) << (u_input.a % vec4<u32>(32u));
    var_1 = -var_3.zyz << (_wgslsmith_mult_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, u_input.b.x, 56655u), vec3<u32>(u_input.e, u_input.a.x, 1u)), ~vec3<u32>(u_input.b.x, 51316u, u_input.b.x))), ~_wgslsmith_div_vec3_u32(u_input.b.xxz, vec3<u32>(4294967295u, 58330u, u_input.b.x)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 42884u, u_input.a.x), vec3<u32>(1u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 12491u, 79643u, 63242u), vec4<u32>(0u, u_input.e, 65380u, 0u))) >> (u_input.b % vec4<u32>(32u))), select(~abs(min(vec3<i32>(u_input.d.x, 26756i, var_1.x), vec3<i32>(var_1.x, -1i, var_3.x))), select(~(~var_3.zzx), var_3.yyy, func_2(func_5(vec3<f32>(180f, -532f, global0.x)).a, vec4<u32>(47934u, 0u, 13814u, u_input.b.x))), true));
}

