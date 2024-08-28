struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(i32(-2147483648), 44052i, -2753i, -16001i), 30481i, vec2<i32>(-1i, i32(-2147483648)));

var<private> global1: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec2<bool> {
    let var_0 = arg_0;
    global0 = Struct_1(~abs(~abs(global0.a)), u_input.c.x, abs(global0.c));
    var var_1 = Struct_1(global0.a, (-(u_input.c.x & 2147483647i) ^ 68986i) >> (arg_0.a % 32u), u_input.c);
    var var_2 = !(!vec4<bool>(arg_1, _wgslsmith_f_op_f32(-var_0.b.x) > -470f, true, true));
    let var_3 = global0.b << (_wgslsmith_mod_u32(arg_0.a, u_input.b) % 32u);
    return select(var_2.xw, var_2.zx, !(!all(select(var_2.zz, var_2.zy, var_2.ww))));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: i32, arg_3: f32) -> vec2<i32> {
    global1 = ~abs(reverseBits(~(u_input.b ^ u_input.b)));
    global1 = abs(u_input.b);
    var var_0 = vec2<bool>(any(arg_0), all(vec2<bool>(select(func_3(Struct_2(11902u, vec3<f32>(804f, arg_3, arg_3), arg_3), arg_1).x, !arg_0.x, true), !arg_1)));
    global1 = 1u;
    var var_1 = -828f;
    return vec2<i32>(-u_input.c.x, ~55432i) >> (abs(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.a.xy, u_input.a.zz, firstTrailingBit(u_input.a.xy)), vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u));
}

fn func_2() -> Struct_2 {
    var var_0 = func_4(select(!select(func_3(Struct_2(u_input.b, vec3<f32>(1332f, 1253f, -1000f), 292f), true), vec2<bool>(true, true), any(vec3<bool>(true, true, false))), vec2<bool>(true, true), !(!(global0.c.x < 2147483647i))), (select(true, u_input.a.x != u_input.a.x, true) && false) | all(vec2<bool>(false, true)), 2147483647i, -268f);
    var var_1 = 979f;
    let var_2 = vec4<bool>(true, true, true, !any(vec2<bool>(u_input.b < u_input.b, select(false, false, false))));
    var var_3 = Struct_2(u_input.a.x, vec3<f32>(865f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1556f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2154f), -1436f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-281f)) + -212f), all(vec4<bool>(true, var_2.x, true, false))))), _wgslsmith_f_op_f32(1087f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_f_op_f32(f32(-1f) * -679f)) - _wgslsmith_f_op_f32(-1025f * 1478f))));
    var var_4 = max(_wgslsmith_mult_i32(global0.b >> (u_input.a.x % 32u), ~(~(i32(-1i) * -10612i))), 21442i);
    return Struct_2(var_3.a | abs(4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_3.c, var_3.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) + _wgslsmith_f_op_f32(-var_3.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.c)))) * var_3.b), var_3.b.x);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    global0 = Struct_1(abs(vec4<i32>(~(i32(-1i) * -1i), 76074i, i32(-1i) * -2147483647i, u_input.c.x)), -22280i, abs(~vec2<i32>(abs(0i), 13079i)));
    var var_1 = _wgslsmith_sub_vec3_i32(select(global0.a.zxx, abs(_wgslsmith_div_vec3_i32(vec3<i32>(1i, global0.c.x, 1i) | global0.a.yxx, -global0.a.zyw)), var_0.b.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + 2231f))), vec3<i32>(0i, 1i, global0.b) << (vec3<u32>(_wgslsmith_dot_vec3_u32(~u_input.a, u_input.a), u_input.a.x, max(~u_input.a.x, _wgslsmith_mult_u32(u_input.b, var_0.a))) % vec3<u32>(32u)));
    global1 = ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(15357u, 728u, 0u, 67723u), vec4<u32>(101217u, 93637u, 4294967295u, var_0.a)))) & u_input.a.x;
    let var_2 = _wgslsmith_sub_vec4_u32(select(vec4<u32>(select(u_input.a.x, 4294967295u, false), max(0u, var_0.a), u_input.a.x, ~u_input.a.x), ~countOneBits(vec4<u32>(36383u, var_0.a, u_input.a.x, 4294967295u)), ~11288u < min(var_0.a, 87687u)) ^ abs(~reverseBits(vec4<u32>(u_input.a.x, var_0.a, var_0.a, u_input.a.x))), vec4<u32>(~abs(_wgslsmith_clamp_u32(u_input.a.x, 46784u, 18748u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u << (u_input.b % 32u), 4294967295u ^ u_input.a.x), vec3<u32>(28164u, ~4294967295u, ~19166u)), var_0.a | 1u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.a.x, var_0.a), vec2<u32>(0u, 0u)), vec2<u32>(26126u, var_0.a)), abs(u_input.a.yy))));
    return Struct_1(vec4<i32>(var_1.x, u_input.c.x, ~(-_wgslsmith_div_i32(45260i, global0.a.x)), -func_4(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), true, var_1.x, _wgslsmith_f_op_f32(-var_0.b.x)).x), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-12085i), 882i, _wgslsmith_add_i32(-1i, ~global0.c.x), ~(-32352i)), min(_wgslsmith_sub_vec4_i32(~vec4<i32>(-5541i, 1i, -21419i, 2147483647i), vec4<i32>(-1i, 433i, u_input.c.x, 1i) << (vec4<u32>(var_0.a, 40417u, 1u, 19146u) % vec4<u32>(32u))), global0.a >> (max(vec4<u32>(var_2.x, var_2.x, var_2.x, 0u), var_2) % vec4<u32>(32u)))), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = vec2<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.c.x, var_0.c.x));
    let var_2 = ~u_input.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-113f, _wgslsmith_f_op_f32(select(459f, 1724f, false)), -666f, _wgslsmith_div_f32(-866f, -764f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(301f, 1177f, 869f, 1346f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(837f, 1425f, 400f, -872f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-190f, 399f), -203f, -662f, 833f))))));
    let var_4 = func_2();
    let var_5 = any(vec4<bool>(func_3(var_4, !all(vec4<bool>(false, true, true, false))).x, true, _wgslsmith_div_f32(var_4.b.x, _wgslsmith_f_op_f32(630f - 1260f)) > -1477f, true));
    let var_6 = select(firstLeadingBit(~firstTrailingBit(vec4<u32>(0u, 6362u, 495u, 0u))), vec4<u32>(func_2().a, var_4.a >> (1u % 32u), 0u, _wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(var_2, 64532u))) ^ vec4<u32>(~110108u, var_2, u_input.a.x, 0u), var_5) << (firstLeadingBit(~vec4<u32>(~1u, _wgslsmith_add_u32(var_4.a, 0u), 9330u, 4369u)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_i32(var_0.a.www, global0.a.yxx >> (~u_input.a % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_3.x)), 581f)), var_4.b.x, var_4.c)), _wgslsmith_mult_vec2_u32(u_input.a.xy, var_6.yz ^ u_input.a.yy), ~abs(vec3<i32>(57191i, var_1.x, 2147483647i)));
}

