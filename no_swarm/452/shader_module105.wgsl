struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(-26590i, 2147483647i, 10044i, 2147483647i), Struct_1(0u, vec3<f32>(-1268f, -1136f, 1342f)), vec4<f32>(583f, 1000f, -1293f, 382f));

var<private> global2: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    global1 = Struct_2(~min(~global1.a, global1.a), Struct_1(~abs(global1.b.a) << (global1.b.a % 32u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2684f, 1528f, false))), _wgslsmith_f_op_f32(f32(-1f) * -123f), arg_1)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(597f + arg_1) - global1.b.b.x), global1.c.x, arg_0, _wgslsmith_f_op_f32(select(-1101f, -488f, true))))));
    global2 = _wgslsmith_f_op_f32(floor(arg_0));
    let var_0 = Struct_1(36922u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, arg_1)) + 904f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1067f, _wgslsmith_f_op_f32(min(arg_0, global1.b.b.x))))), 2328f));
    global1 = Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a.x, select(2147483647i, _wgslsmith_mod_i32(global1.a.x, -1i), true), ~global1.a.x, _wgslsmith_dot_vec4_i32(-global1.a, -global1.a)), global1.a), Struct_1(~_wgslsmith_mult_u32(~global1.b.a, global1.b.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(415f, -1511f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1593f, arg_0) + _wgslsmith_f_op_f32(f32(-1f) * -1924f)), _wgslsmith_f_op_f32(f32(-1f) * -609f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(766f - _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-272f - _wgslsmith_f_op_f32(var_0.b.x - arg_1))), var_0.b.x, _wgslsmith_f_op_f32(-1f)));
    var var_1 = true;
    return Struct_1(63062u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1538f, global1.b.b.x, var_0.b.x)))))));
}

fn func_3() -> bool {
    var var_0 = Struct_2(-vec4<i32>(countOneBits(-global1.a.x), u_input.b.x >> (_wgslsmith_dot_vec2_u32(u_input.d.yz, u_input.d.xz) % 32u), _wgslsmith_dot_vec3_i32(select(global1.a.zyx, global1.a.yzy, false), vec3<i32>(-1i, u_input.b.x, u_input.b.x)), 2147483647i), global1.b, vec4<f32>(global1.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2058f))), 736f, global1.c.x));
    let var_1 = global1.a.www;
    var_0 = Struct_2(vec4<i32>(30825i, abs(i32(-1i) * -1i), 2147483647i, _wgslsmith_mult_i32(-global1.a.x | _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, -1i, u_input.b.x), vec3<i32>(1i, var_0.a.x, var_0.a.x)), -_wgslsmith_mod_i32(-2147483647i, u_input.b.x))), func_2(var_0.c.x, -949f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(global1.c, _wgslsmith_div_vec4_f32(global1.c, _wgslsmith_f_op_vec4_f32(ceil(global1.c))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b.x, 1000f, global1.b.b.x, -669f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(775f, -2676f, var_0.b.b.x, 233f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.x, var_0.b.b.x, -1428f, 1361f)))))));
    let var_2 = Struct_2(-vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-10370i, var_0.a.x), -var_1.x, max(1i, var_1.x)), reverseBits(countOneBits(var_1.x)), -var_1.x, _wgslsmith_div_i32(var_1.x | global1.a.x, ~u_input.b.x)), func_2(_wgslsmith_f_op_f32(global1.b.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(467f)) - _wgslsmith_f_op_f32(step(var_0.b.b.x, global1.c.x)))), _wgslsmith_f_op_f32(sign(-1458f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x + -1354f), _wgslsmith_f_op_f32(round(var_0.c.x)))), 1000f, _wgslsmith_f_op_f32(step(var_0.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.b.b.x)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-443f + global1.c.x) - _wgslsmith_f_op_f32(global1.c.x * 252f)), _wgslsmith_f_op_f32(f32(-1f) * -3356f)))));
    var var_3 = var_2;
    return any(vec4<bool>(true, true, true, _wgslsmith_add_u32(9893u, var_2.b.a >> (1u % 32u)) == _wgslsmith_mult_u32(_wgslsmith_clamp_u32(global1.b.a, u_input.e, 4294967295u), countOneBits(var_3.b.a))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: vec4<f32>) -> vec4<i32> {
    var var_0 = ~min(~arg_2, arg_2);
    let var_1 = arg_1 & arg_1;
    let var_2 = global1.b.a;
    let var_3 = func_2(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - _wgslsmith_f_op_f32(-arg_0.b.x)))));
    var var_4 = func_3();
    return reverseBits(global1.a);
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: u32, arg_3: vec3<u32>) -> Struct_2 {
    global0 = ~abs(-(8829i << (arg_2 % 32u))) >> (~(~_wgslsmith_add_u32(0u, ~u_input.e)) % 32u);
    var var_0 = Struct_2(global1.a, global1.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, global1.c.x, -828f, global1.b.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.c + _wgslsmith_f_op_vec4_f32(sign(global1.c))))));
    return Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, firstTrailingBit(~(-43321i)), var_0.a.x, ~(-var_0.a.x)), ~vec4<i32>(-2147483647i, abs(2147483647i), select(-37074i, 574i, false), -14114i)), global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.c, vec4<f32>(var_0.b.b.x, var_0.b.b.x, 117f, 159f)), vec4<f32>(-998f, 2019f, global1.b.b.x, global1.b.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(1173f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.c.x))))));
    var var_1 = ~global1.a.x;
    var var_2 = global1.b.b.x;
    let var_3 = func_4(_wgslsmith_add_i32(_wgslsmith_mod_i32(32285i, u_input.b.x >> (global1.b.a % 32u)), u_input.b.x), -reverseBits(~func_1(Struct_1(u_input.a, global1.c.xzx), false, u_input.d.zw, vec4<f32>(1229f, global1.c.x, -1627f, -415f))), u_input.d.x, vec3<u32>(_wgslsmith_dot_vec3_u32(~u_input.d.xyw, u_input.d.xxz | vec3<u32>(63312u, 25965u, 8317u)), 1u, firstTrailingBit(u_input.d.x)) ^ vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(~u_input.d, _wgslsmith_div_vec4_u32(vec4<u32>(global1.b.a, global1.b.a, global1.b.a, 4294967295u), u_input.d)), func_2(global1.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -514f)).a));
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c.x), -459f));
    var_2 = -902f;
    var var_5 = Struct_2(-global1.a, var_3.b, vec4<f32>(_wgslsmith_f_op_f32(var_3.c.x - 1202f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(abs(-1081f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_3.c.x, var_3.b.b.x)))), 1405f));
    let var_6 = var_5.b.b.xy;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.wx | u_input.b, var_5.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_6.x, var_6.x)) + _wgslsmith_f_op_f32(-var_5.b.b.x)), -2261f, true)))));
}

