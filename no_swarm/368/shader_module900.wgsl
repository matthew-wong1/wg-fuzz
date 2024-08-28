struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(4294967295u, 20664u, 4294967295u), 1646f, vec4<bool>(true, false, false, true));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(-global1.b));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a.x, 0i, arg_1.a.x, -2147483647i), ~vec4<i32>(34562i, u_input.a, -1i, -1i)), vec4<i32>(abs(-1i), 15592i, -27922i, -15193i)) | -(~0i), firstTrailingBit(0i) >> (75381u % 32u));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.b, global1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.b)) - arg_0.b)) - global1.b);
    let var_2 = arg_1.b | ~arg_1.b;
    let var_3 = Struct_1(arg_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_0.a, global1.a), firstLeadingBit(arg_1.b)), _wgslsmith_mult_u32(57465u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, 4294967295u, 4294967295u), global1.a)), arg_1.b), select(vec4<u32>(arg_1.b, 0u, 0u, var_2) << (max(vec4<u32>(0u, 1u, global1.a.x, arg_1.b), vec4<u32>(arg_0.a.x, arg_0.a.x, 4294967295u, global1.a.x)) % vec4<u32>(32u)), select(vec4<u32>(global1.a.x, 0u, var_2, 0u) >> (vec4<u32>(global1.a.x, arg_0.a.x, var_2, global1.a.x) % vec4<u32>(32u)), select(vec4<u32>(110927u, arg_1.b, 8878u, 12351u), vec4<u32>(62581u, global1.a.x, arg_1.b, 5986u), vec4<bool>(false, true, false, true)), arg_0.c), !select(vec4<bool>(global1.c.x, global1.c.x, global1.c.x, true), global1.c, global1.c))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b)));
}

fn func_2() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(~vec3<u32>(115u, 1u, global1.a.x), _wgslsmith_f_op_f32(global1.b - 1112f), select(global1.c, global1.c, global1.c.x)), Struct_1(-vec3<i32>(58317i, u_input.b, u_input.b), ~4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(global1.b + global1.b), global1.b));
    let var_1 = Struct_2(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f) + global1.b)) + 532f), global1.c);
    let var_2 = 27005u;
    global1 = var_1;
    global1 = var_1;
    return _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(global1.a, vec3<u32>(var_2, var_1.a.x, ~(~0u))), _wgslsmith_div_vec3_u32(countOneBits(var_1.a), ~vec3<u32>(1u, global1.a.x, var_1.a.x)) >> (_wgslsmith_sub_vec3_u32(reverseBits(~vec3<u32>(1u, 4294967295u, 0u)), ~var_1.a) % vec3<u32>(32u)));
}

fn func_1() -> f32 {
    var var_0 = Struct_2(_wgslsmith_mult_vec3_u32(abs(firstLeadingBit(~global1.a)), func_2()), global1.b, select(!select(global1.c, vec4<bool>(global1.c.x, false, global1.c.x, global1.c.x), global1.c), !(!vec4<bool>(global1.c.x, false, true, false)), select(true, false, global1.c.x & any(global1.c.wx))));
    let var_1 = global1.b;
    var_0 = Struct_2(~_wgslsmith_div_vec3_u32(abs(global1.a), ~vec3<u32>(25269u, global1.a.x, 20647u)) | ~func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -680f) + -1107f), var_0.c);
    var_0 = Struct_2(~(global1.a << (vec3<u32>(abs(0u), 0u, min(21040u, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -531f) + _wgslsmith_f_op_f32(global1.b * global1.b)), select(var_0.c, select(!select(vec4<bool>(var_0.c.x, true, global1.c.x, global1.c.x), vec4<bool>(global1.c.x, global1.c.x, false, false), vec4<bool>(var_0.c.x, true, true, true)), !var_0.c, global1.c), (global1.c.x & true) & all(global1.c.xz)));
    let var_2 = Struct_1(_wgslsmith_clamp_vec3_i32(-_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -44269i, 51421i), vec3<i32>(1i, u_input.a, 1i)), vec3<i32>(-2147483647i, -2147483647i, 2147483647i) | vec3<i32>(u_input.b, 18705i, 1i)), vec3<i32>(-1i) * -(~vec3<i32>(u_input.a, u_input.a, -21485i)), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b, 8310i, 0i) & reverseBits(vec3<i32>(5282i, 59484i, 30413i)), vec3<i32>(u_input.a, u_input.b, u_input.b))), ~global1.a.x);
    return _wgslsmith_f_op_f32(-1000f + global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_sub_vec2_u32(~reverseBits(vec2<u32>(82836u, 21975u)), _wgslsmith_div_vec2_u32(global1.a.zz, global1.a.yx) & select(global1.a.zx, global1.a.yx, global1.c.yw)));
    let var_1 = Struct_2(global1.a, _wgslsmith_f_op_f32(-974f - global1.b), global1.c);
    let var_2 = !(firstLeadingBit(u_input.b) != _wgslsmith_dot_vec3_i32(vec3<i32>(~(-1i), ~2147483647i, -u_input.b), min(~vec3<i32>(-1i, 1i, -14245i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 1i, 2766i), vec3<i32>(-1i, u_input.b, u_input.b)))));
    var_0 = select(~global1.a.zz ^ (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u) << (global1.a.xx % vec2<u32>(32u)), var_1.a.yy | var_1.a.zy) << (~abs(vec2<u32>(0u, var_1.a.x)) % vec2<u32>(32u))), var_1.a.zy, var_1.c.yy);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1097f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - 1000f), global1.b) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.b, var_1.b, 1320f), vec3<f32>(global1.b, 1000f, global1.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-368f, var_1.b, global1.b) - vec3<f32>(global1.b, 315f, global1.b))), vec3<f32>(_wgslsmith_f_op_f32(var_1.b * var_1.b), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-442f * var_1.b))))));
    var var_4 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.b, -25473i), reverseBits(countOneBits(u_input.b)), -u_input.a), _wgslsmith_sub_vec3_i32(-countOneBits(vec3<i32>(1i, u_input.a, u_input.a)), countOneBits(vec3<i32>(u_input.b, u_input.a, -1i) & vec3<i32>(u_input.b, -40735i, 0i))), vec3<i32>(firstLeadingBit(-34780i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, global1.a.x, var_0.x, global1.a.x), vec4<u32>(global1.a.x, var_1.a.x, 48501u, var_0.x)) % 32u), firstTrailingBit(-u_input.a), 1i)), _wgslsmith_div_u32(~(~var_1.a.x), ~(~var_1.a.x >> (~1u % 32u))));
    let var_5 = vec4<u32>(9319u, global1.a.x, max(1u, 19856u), var_1.a.x);
    var var_6 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1593f, var_3.x, global1.b, var_1.b)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1000f - global1.b), var_4.a, -vec4<i32>(abs(u_input.b), 41851i, i32(-1i) * -1i, countOneBits(0i << (var_4.b % 32u))), var_4.b, _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, ~9197u, ~(71188u | var_5.x), var_0.x), (vec4<u32>(17272u, var_1.a.x, var_5.x, 0u) & var_5) << (var_5 % vec4<u32>(32u))));
}

