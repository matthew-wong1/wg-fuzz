struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_3 {
    let var_0 = vec3<u32>(~4294967295u, 4294967295u, 31210u);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.d.x)) + global0.d.x) + -1627f))), 1000f, _wgslsmith_f_op_f32(-1242f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-626f * 198f)), global0.d.x)));
    return Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_1 * _wgslsmith_f_op_vec3_f32(-var_1)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> vec3<f32> {
    var var_0 = _wgslsmith_mult_i32(-firstLeadingBit(~(-39313i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-20893i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-2147483647i, arg_2), ~(-47980i))), -vec2<i32>(arg_2, u_input.b.x) ^ _wgslsmith_mult_vec2_i32(select(u_input.b, vec2<i32>(-1i, arg_2), vec2<bool>(true, true)), _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(36364i, -1i)))));
    var_0 = -_wgslsmith_mult_i32(1i, arg_2);
    global1 = any(vec4<bool>(false, !(!global0.a), false, true));
    var var_1 = Struct_2(vec2<u32>(abs(0u), u_input.c.x));
    var var_2 = abs(_wgslsmith_div_vec4_u32(vec4<u32>(~(~73662u), min(global0.b, 15244u) >> (_wgslsmith_clamp_u32(40087u, 0u, var_1.a.x) % 32u), u_input.a.x, _wgslsmith_mod_u32(1u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global0.b, global0.b, abs(u_input.a.x)), max(vec4<u32>(149214u, u_input.c.x, 1u, var_1.a.x), firstLeadingBit(vec4<u32>(52362u, 0u, 42452u, 16359u))))));
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), -1793f, 208f) * arg_1.a)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1644f, global0.d.x) - _wgslsmith_f_op_vec2_f32(global0.d + vec2<f32>(global0.d.x, -158f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.d, vec2<f32>(global0.d.x, global0.d.x))), global0.d.x < global0.d.x))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-177f - _wgslsmith_f_op_f32(global0.d.x - 713f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x * 929f)))))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, -372f, global0.d.x, var_0.x)), func_2(), ~1i, !global0.a)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_f32(-global0.d.x), global0.d.x)))));
    global0 = Struct_1(false, 85588u, vec2<u32>(36917u, _wgslsmith_sub_u32(~global0.b, u_input.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(round(global0.d.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_0.x)))));
    var var_2 = vec3<bool>(!global0.a, all(vec4<bool>(true, reverseBits(-1i) >= -u_input.b.x, any(vec2<bool>(global0.a, false)), any(vec2<bool>(global0.a, true)))), false);
    var var_3 = -1057f;
    return Struct_1(global0.a, 4294967295u, _wgslsmith_mod_vec2_u32(select(vec2<u32>(~global0.b, global0.c.x ^ 52549u), vec2<u32>(global0.c.x | 1u, u_input.a.x), !any(vec4<bool>(true, global0.a, false, global0.a))), vec2<u32>(0u ^ _wgslsmith_mod_u32(global0.b, 89560u), _wgslsmith_clamp_u32(~1u, _wgslsmith_add_u32(u_input.c.x, 0u), u_input.c.x))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global0.d.x, var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    global1 = true;
    global0 = func_1();
    var var_0 = Struct_1(global0.a, min(~firstTrailingBit(global0.c.x), _wgslsmith_clamp_u32(12130u, global0.b, countOneBits(0u))) ^ 74135u, ~vec2<u32>(~(~global0.b), min(1u, _wgslsmith_sub_u32(u_input.a.x, global0.b))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-924f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.d.x, -698f)))), func_2().a.yz, !(!global0.a))));
    var var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(0i), u_input.b.x << (global0.c.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(17988i, u_input.b.x, -1i), vec3<i32>(-28787i, u_input.b.x, 36559i))), vec3<i32>(u_input.b.x, u_input.b.x, abs(u_input.b.x)), -vec3<i32>(u_input.b.x, -1i, u_input.b.x)), -vec3<i32>(11971i, reverseBits(u_input.b.x), ~9696i)), vec3<i32>(abs(firstTrailingBit(_wgslsmith_sub_i32(-39816i, 38005i))), -u_input.b.x, u_input.b.x));
    let var_2 = global0.a;
    let var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(~abs(15376i), ~_wgslsmith_mod_i32(u_input.b.x, -29048i)), -var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, 1i, ~69869i), ~vec4<i32>(0i, u_input.b.x, -1i, -29439i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, global0.c.x, 27860u, global0.c.x), vec4<u32>(1u, u_input.a.x, 39271u, 86114u)) % vec4<u32>(32u)))), reverseBits(~(-abs(vec3<i32>(-76564i, var_1.x, -39061i)))));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(vec3<i32>(var_1.x, -2147483647i, 15556i)) << (vec3<u32>(_wgslsmith_add_u32(global0.c.x, ~u_input.a.x), ~4294967295u, ~_wgslsmith_sub_u32(var_0.b, var_0.c.x)) % vec3<u32>(32u)), 564f);
}

