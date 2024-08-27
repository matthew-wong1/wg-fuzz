struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20>;

var<private> global1: vec3<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1053f, global1.x));
    global1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.x, -757f, global1.x)));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -1277f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(421f - var_0.x))))), _wgslsmith_f_op_f32(-var_0.x));
    var var_1 = Struct_5(vec4<i32>(-25959i, 6146i, ~arg_0.a.x & abs(arg_0.a.x), 1i | select(26700i, arg_0.a.x, arg_1.x)) << (vec4<u32>(~u_input.a.x ^ _wgslsmith_mod_u32(47012u, u_input.b), firstTrailingBit(max(73679u, 1347u)), ~min(4334u, u_input.a.x), ~min(u_input.b, 8290u)) % vec4<u32>(32u)));
    global0 = array<vec3<u32>, 20>();
    return -arg_0.a.x;
}

fn func_2() -> Struct_5 {
    global1 = vec3<f32>(-1172f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-709f))), global1.x);
    var var_0 = !any(vec3<bool>(true, true, ~u_input.b > _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)));
    var_0 = true;
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(2147483647i, 1i, -14829i), vec3<i32>(-1i, _wgslsmith_clamp_i32(23930i, 0i, 0i), -52976i)), abs(vec3<i32>(1i, 1i, 1i))) & ~(-func_3(Struct_1(vec4<i32>(-14077i, -71370i, -2147483647i, -1i)), vec2<bool>(false, false)) >> ((~1u >> (1u % 32u)) % 32u));
    return Struct_5(vec4<i32>(-var_1, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_1, var_1) & vec3<i32>(-19921i, 4599i, var_1), -vec3<i32>(var_1, var_1, 2147483647i)), abs(~11756i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(0i, 2147483647i, -1i), _wgslsmith_sub_i32(var_1, -51614i))), firstTrailingBit(var_1) | -1i, _wgslsmith_clamp_i32(firstLeadingBit(~var_1), -22699i, var_1)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_2) -> vec2<u32> {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * arg_0.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, -872f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.x)) + 910f)))), global1.x);
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f * -1796f))), arg_0.a.x) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1214f, global1.x, global1.x), vec3<f32>(arg_0.a.x, global1.x, arg_0.a.x))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.a.x, global1.x, -526f))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1053f, 143f, _wgslsmith_f_op_f32(round(global1.x))))), vec3<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false)), true, false))));
    let var_0 = _wgslsmith_clamp_vec2_u32(u_input.a.wx, _wgslsmith_clamp_vec2_u32(u_input.a.yz, abs(_wgslsmith_mod_vec2_u32(u_input.a.yw, u_input.a.yw)), vec2<u32>(21315u >> (min(3566u, u_input.a.x) % 32u), _wgslsmith_sub_u32(firstTrailingBit(u_input.a.x), u_input.b ^ u_input.b))), ~u_input.a.zw);
    var var_1 = !(true && (true & (~0i >= _wgslsmith_sub_i32(arg_2.b, -3533i))));
    global0 = array<vec3<u32>, 20>();
    return max(firstTrailingBit(u_input.a.xw), u_input.a.wy) << (vec2<u32>(max(~(~u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a.zy ^ vec2<u32>(var_0.x, 4294967295u), vec2<u32>(u_input.b, u_input.b))), 9037u) % vec2<u32>(32u));
}

fn func_1() -> vec2<i32> {
    global0 = array<vec3<u32>, 20>();
    global0 = array<vec3<u32>, 20>();
    var var_0 = ~func_4(Struct_3(global1.xy), func_2(), Struct_2(abs(vec2<i32>(37462i, -44869i)), 1i)) & vec2<u32>(u_input.b, 1u);
    let var_1 = vec4<u32>(23815u, select(_wgslsmith_sub_u32(4294967295u, ~u_input.b), reverseBits(var_0.x) >> (var_0.x % 32u), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false))), 62666u, ~u_input.a.x);
    return _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(20319i, 24244i), func_2().a.xz), select(vec2<i32>(-4598i, 50883i), vec2<i32>(1i, 1i), any(vec4<bool>(true, false, true, true)))), vec2<i32>(8547i, select(1i, _wgslsmith_mod_i32(-19538i, 2147483647i), var_0.x != 1u))) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 1u), var_1.zy, vec2<u32>(var_1.x, 18806u)) % vec2<u32>(32u));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = Struct_4(max(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -1i, ~2147483647i, 24184i), arg_1), _wgslsmith_mod_vec4_i32(arg_3.a, vec4<i32>(-1i, _wgslsmith_div_i32(-24928i, arg_3.a.x), 2147483647i, -32687i))), Struct_1(arg_1), Struct_2(_wgslsmith_mult_vec2_i32(abs(abs(vec2<i32>(arg_3.a.x, arg_1.x))), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(8052i, -1i), vec2<i32>(1i, arg_1.x), arg_2), vec2<i32>(arg_3.a.x, 2147483647i) | vec2<i32>(0i, -1i), _wgslsmith_mult_vec2_i32(arg_3.a.xx, vec2<i32>(arg_0.a.x, arg_0.b)))), reverseBits(_wgslsmith_add_i32(arg_0.b, abs(arg_3.a.x)))), arg_3);
    var var_1 = Struct_5(-func_2().a);
    let var_2 = Struct_4(var_1.a, Struct_1(~var_0.b.a), Struct_2(abs(var_1.a.zw), -var_0.d.a.x), arg_3);
    var_0 = Struct_4(var_0.d.a >> (~select(u_input.a, firstLeadingBit(u_input.a), arg_2 & true) % vec4<u32>(32u)), var_0.b, Struct_2(-_wgslsmith_clamp_vec2_i32(func_1(), ~var_0.c.a, vec2<i32>(2147483647i, arg_3.a.x) ^ vec2<i32>(var_1.a.x, var_2.c.b)), abs(-_wgslsmith_div_i32(-2147483647i, 1i))), Struct_1(vec4<i32>(-(~arg_1.x), -2147483647i, -(i32(-1i) * -38372i), func_2().a.x)));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(622f))))))));
    return StorageBuffer(vec4<i32>(60685i, firstLeadingBit(var_1.a.x), var_0.d.a.x, -1i), vec2<f32>(_wgslsmith_f_op_f32(1f + 742f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, 947f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -221f), global1.x))), _wgslsmith_f_op_vec2_f32(-global1.xz), ~arg_1.xyz);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_2(func_1(), -2147483647i), func_2().a, true, Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-30737i, 1i, 2147483647i), vec3<i32>(28943i, 26946i, -2147483647i)), ~(-2147483647i), ~(-1i)), vec4<i32>(abs(2147483647i), ~(-2147483647i), ~(-1i), 73875i >> (u_input.a.x % 32u)))));
}

