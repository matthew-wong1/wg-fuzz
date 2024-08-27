struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = Struct_1(u_input.a.yx, vec3<f32>(1000f, arg_0, global0.c.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(116f, _wgslsmith_div_f32(arg_0, 354f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), arg_0), vec4<f32>(-447f, global0.b.x, -736f, global0.b.x))), vec2<u32>(~countOneBits(~1u), u_input.a.x), !(!(!global0.e)) == true);
    let var_1 = var_0;
    var var_2 = Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, ~global0.a.x), ~var_0.a), _wgslsmith_f_op_vec3_f32(-var_0.c.xyw), var_1.c, vec2<u32>(_wgslsmith_div_u32(~u_input.b.x, ~1744u), min(31509u, 1u)), any(select(vec4<bool>(global0.e, global0.e, true, global0.e), select(vec4<bool>(var_1.e, var_0.e, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, var_1.e, true, true)), true))), Struct_1(abs(vec2<u32>(~1u, ~var_0.d.x)), _wgslsmith_f_op_vec3_f32(min(global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1135f, 922f) + var_0.b) * vec3<f32>(-193f, -1000f, -338f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-425f, _wgslsmith_f_op_f32(ceil(812f)), var_0.b.x, _wgslsmith_div_f32(-876f, var_0.c.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c - global0.c) - global0.c)), ~var_0.a, var_0.d.x <= _wgslsmith_add_u32(~0u, global0.a.x)));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-891f - 1051f) + _wgslsmith_f_op_f32(min(arg_0, var_0.c.x))) + arg_0))));
    var var_4 = ~(~countOneBits(countOneBits(vec4<u32>(15339u, var_0.d.x, 4294967295u, 6150u))));
    return _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.a, firstLeadingBit(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a))), 1u, 31686u));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_div_i32(-12109i << (_wgslsmith_clamp_u32(abs(0u) | min(0u, u_input.a.x), ~select(u_input.a.x, u_input.a.x, true), firstTrailingBit(47217u)) % 32u), ~(-2147483647i));
    global0 = Struct_1(_wgslsmith_add_vec2_u32(firstTrailingBit(max(u_input.b.yz | u_input.a.zy, u_input.b.xz)), min(u_input.a.wy, ~vec2<u32>(u_input.a.x, 5477u)) & ~min(vec2<u32>(1u, u_input.b.x), vec2<u32>(1u, 118236u))), global0.c.yxy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(848f * 235f), _wgslsmith_f_op_f32(abs(global0.b.x)))), 866f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)))), ~(~max(select(global0.d, vec2<u32>(u_input.a.x, 4294967295u), vec2<bool>(true, false)), u_input.a.wy)), global0.e);
    global0 = Struct_1(global0.a, global0.c.wxw, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c.x + -571f), -2064f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c.x * global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1215f))), 212f, _wgslsmith_f_op_f32(f32(-1f) * -150f)) + global0.c), u_input.a.ww, true);
    let var_1 = Struct_1(vec2<u32>(1u, func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -785f), -752f)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1336f, -551f, global0.b.x), global0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, global0.c.x, global0.c.x, 1000f), vec4<f32>(1394f, 299f, 860f, global0.b.x)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b.x, -126f, -2166f, 795f)))))), select(vec2<u32>(min(34802u, global0.a.x), 6586u), global0.d, (-73635i >> (1u % 32u)) >= _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 4669i, 64395i), vec3<i32>(97i, 2147483647i, 1i))) >> (global0.d % vec2<u32>(32u)), !(14194u >= global0.d.x));
    let var_2 = _wgslsmith_mult_vec2_i32(abs(-(firstTrailingBit(vec2<i32>(2147483647i, 43578i)) | -vec2<i32>(-1i, 38000i))), -_wgslsmith_add_vec2_i32(select(vec2<i32>(1i, -32617i), vec2<i32>(-2147483647i, 243i), vec2<bool>(global0.e, false)) << (var_1.d % vec2<u32>(32u)), vec2<i32>(_wgslsmith_clamp_i32(-1i, 28950i, -7021i), 1i)));
    return true;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_1) -> u32 {
    global0 = arg_3;
    var var_0 = arg_3.c;
    var var_1 = vec3<bool>(false, !func_2(), select(select(~u_input.a.x, arg_3.a.x, true) >= (arg_3.d.x >> (1u % 32u)), all(!select(vec3<bool>(global0.e, false, false), vec3<bool>(arg_1.a, true, arg_2), false)), !global0.e & !global0.e));
    var_1 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false));
    var_1 = select(select(select(vec3<bool>(var_1.x, 2147483647i == arg_0.x, true), !select(vec3<bool>(global0.e, arg_1.a, arg_1.a), vec3<bool>(arg_3.e, arg_2, false), arg_2), true), !select(select(vec3<bool>(true, false, arg_3.e), vec3<bool>(arg_2, var_1.x, false), vec3<bool>(true, false, global0.e)), select(vec3<bool>(false, global0.e, false), vec3<bool>(true, false, true), false), true), true & !(false || arg_1.a)), vec3<bool>(arg_2, any(select(!vec4<bool>(false, true, arg_1.a, arg_1.a), vec4<bool>(arg_2, true, true, true), true)), arg_2), all(!select(select(vec4<bool>(global0.e, true, false, true), vec4<bool>(arg_3.e, arg_3.e, global0.e, arg_2), vec4<bool>(false, global0.e, global0.e, arg_1.a)), !vec4<bool>(false, global0.e, global0.e, arg_1.a), select(false, false, global0.e))));
    return firstTrailingBit(global0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~vec2<u32>(u_input.b.x, func_1(select(vec3<i32>(-4584i, -1i, -21432i), vec3<i32>(-22014i, 0i, 1i), global0.e), Struct_3(global0.e), false, Struct_1(vec2<u32>(global0.d.x, global0.d.x), global0.b, vec4<f32>(global0.c.x, global0.b.x, global0.b.x, 1257f), vec2<u32>(1u, global0.d.x), global0.e))), global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)))), ~reverseBits(~u_input.a.xy) >> (firstTrailingBit(firstTrailingBit(global0.a)) % vec2<u32>(32u)), true);
    let var_0 = -877f;
    var var_1 = -_wgslsmith_mod_i32(_wgslsmith_sub_i32(-21481i, -max(-25749i, -5390i)), abs(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-40192i, -30727i, -38514i)), vec3<i32>(1i, 1i, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, -1767f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(592f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1552f - var_0) * 1229f)), -1i, vec2<i32>(-1i, abs(2147483647i)), 1i, min(-abs(min(-2147483647i, 73890i)), firstTrailingBit(_wgslsmith_sub_i32(firstLeadingBit(1i), firstLeadingBit(-21707i)))));
}

