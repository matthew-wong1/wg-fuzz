struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 20>;

var<private> global1: vec2<f32> = vec2<f32>(-520f, -238f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(665f, global1.x, -280f)) * vec3<f32>(-263f, -809f, global1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(global1.x, -556f, true)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(abs(global1.x)))))) + vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1247f, -676f)) + _wgslsmith_f_op_f32(trunc(-898f))) + global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(822f, 1000f)))));
    let var_1 = _wgslsmith_f_op_f32(-global1.x);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.xz - _wgslsmith_div_vec2_f32(var_0.zy, var_0.yy))))) - var_0.zx);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-489f, -495f, var_1)), vec3<f32>(-290f, 699f, global1.x))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(select(-437f, global1.x, true)), -139f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, var_1, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), var_0.x, -1863f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, var_1, global1.x) + vec3<f32>(1804f, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, 1432f, -1259f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-171f, global1.x, var_0.x))))));
    global0 = array<vec4<bool>, 20>();
    return u_input.e;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(u_input.a >= -(~u_input.a), _wgslsmith_f_op_f32(global1.x - 455f), select(-reverseBits(min(u_input.e.x, 1i)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.a, -35786i)), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e.x, 36493i) | vec2<i32>(u_input.e.x, u_input.a), u_input.e, u_input.e)), any(select(!global0[_wgslsmith_index_u32(u_input.d, 20u)], vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true)))));
    var var_1 = false & !(!var_0.a && false);
    let var_2 = false;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b, var_0.b)) - _wgslsmith_f_op_f32(abs(-577f))))), global1.x);
    let var_3 = Struct_3(var_0.b, false, u_input.c, _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(u_input.e), -vec2<i32>(-2147483647i, var_0.c)), u_input.e) & func_3(), u_input.b.x);
    return Struct_3(global1.x, var_3.b, ~(countOneBits(u_input.c) >> (u_input.c % vec2<u32>(32u))) >> (vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(58352u, var_3.c.x, u_input.d, 4294967295u), vec4<u32>(var_3.c.x, 25372u, u_input.c.x, var_3.c.x)), 1u) % vec2<u32>(32u)), -vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -25345i, var_3.d.x), vec3<i32>(u_input.e.x, u_input.e.x, var_0.c)), u_input.a, -1i), -2147483647i), var_3.c.x);
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> u32 {
    var var_0 = Struct_3(1043f, arg_1.b, ~vec2<u32>(min(0u, arg_1.e) >> (4294967295u % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 50066u, arg_1.c.x), firstLeadingBit(vec4<u32>(4294967295u, 15015u, 4294967295u, 4294967295u)))), countOneBits(abs(arg_1.d)), ~arg_1.e);
    var var_1 = -939f;
    let var_2 = vec4<f32>(-527f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(arg_1.a, 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -363f))), 1000f, -1701f);
    var_0 = func_2();
    let var_3 = Struct_2(vec2<u32>(func_2().c.x, _wgslsmith_mult_u32(~firstLeadingBit(u_input.d), abs(var_0.e))), vec3<i32>(~(~(~(-6738i))), abs(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, arg_1.d.x, u_input.e.x), _wgslsmith_clamp_i32(-25921i, arg_1.d.x, arg_1.d.x))), var_0.d.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-func_2().a)))));
    return _wgslsmith_mult_u32(_wgslsmith_add_u32(9391u, ~(~var_0.c.x)), 1u);
}

fn func_1() -> f32 {
    let var_0 = vec4<u32>(~(~(abs(u_input.c.x) & _wgslsmith_clamp_u32(1u, 4294967295u, 1u))), ~(~func_4(_wgslsmith_f_op_f32(-global1.x), func_2())), 0u, u_input.b.x);
    global0 = array<vec4<bool>, 20>();
    var var_1 = -(u_input.e.x ^ u_input.e.x);
    var var_2 = vec3<i32>(select(_wgslsmith_add_i32(-2147483647i, ~countOneBits(0i)), u_input.e.x, !all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true))), -51775i, select(countOneBits(_wgslsmith_clamp_i32(u_input.a, -46756i, u_input.e.x)), u_input.a, !all(vec2<bool>(false, true))));
    var_2 = _wgslsmith_mod_vec3_i32(max(vec3<i32>(firstTrailingBit(-u_input.a), u_input.a, _wgslsmith_sub_i32(_wgslsmith_div_i32(var_2.x, 1i), -42145i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 8840i, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, u_input.a), -vec3<i32>(-38984i, var_2.x, -14867i))), select(firstTrailingBit(vec3<i32>(~u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, var_2.x, var_2.x), vec3<i32>(-18378i, u_input.a, 1i)), abs(2147483647i))), ~_wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, u_input.a, var_2.x), min(vec3<i32>(0i, var_2.x, u_input.a), vec3<i32>(var_2.x, u_input.a, u_input.e.x)), vec3<i32>(u_input.e.x, u_input.a, var_2.x)), any(vec3<bool>(any(vec4<bool>(true, false, true, true)), any(vec2<bool>(true, false)), true))));
    return _wgslsmith_f_op_f32(round(1277f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(countOneBits(abs(reverseBits(vec4<u32>(u_input.d, 17664u, u_input.b.x, u_input.c.x)))) ^ vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, 4626u), ~u_input.b.x, 4278u, _wgslsmith_dot_vec3_u32(vec3<u32>(2203u, u_input.c.x, u_input.b.x) | vec3<u32>(u_input.c.x, 43512u, u_input.c.x), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) | u_input.b)));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -135f, -870f, 1743f), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x)), -462f)), global1.x, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -968f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-406f, global1.x)) + _wgslsmith_f_op_f32(func_1()))))));
    global0 = array<vec4<bool>, 20>();
    global1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1203f)) - _wgslsmith_f_op_vec2_f32(step(var_1.zy, vec2<f32>(1000f, _wgslsmith_f_op_f32(760f - -945f)))))));
    var var_2 = any(select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, false, true)))), vec2<bool>(~u_input.e.x >= (0i ^ u_input.e.x), true), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), true))));
    let var_3 = var_0.zy;
    var_2 = false;
    global0 = array<vec4<bool>, 20>();
    let var_4 = ~vec4<u32>(7586u, u_input.d, 18754u, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.x), u_input.e >> (abs(select(vec2<u32>(u_input.c.x, var_0.x), _wgslsmith_mult_vec2_u32(vec2<u32>(23761u, u_input.d), var_3), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))) % vec2<u32>(32u)), var_4.x);
}

