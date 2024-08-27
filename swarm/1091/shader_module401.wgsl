struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = arg_1.b;
    var var_1 = firstLeadingBit(select(vec4<i32>(-1i, _wgslsmith_mult_i32(i32(-1i) * -32667i, _wgslsmith_add_i32(var_0.c.x, 0i)), abs(firstTrailingBit(43107i)), (u_input.a.x | -48851i) | max(arg_1.b.c.x, -15524i)), min(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -38986i, 2147483647i, -9844i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, var_0.c.x, -2147483647i, arg_1.b.c.x) << (vec4<u32>(26379u, 47862u, arg_1.b.b.x, var_0.b.x) % vec4<u32>(32u)), select(vec4<i32>(var_0.c.x, arg_1.b.c.x, arg_1.b.c.x, 0i), vec4<i32>(1i, var_0.c.x, arg_1.b.c.x, arg_1.b.c.x), arg_1.a))), all(select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), !vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a), arg_1.a))));
    var var_2 = !(!vec2<bool>(!any(vec4<bool>(arg_1.a, false, true, arg_1.a)), false));
    var_2 = vec2<bool>(true, any(!vec2<bool>(any(vec3<bool>(var_2.x, var_2.x, true)), var_2.x)));
    let var_3 = Struct_4(_wgslsmith_dot_vec4_i32(select(select(vec4<i32>(2147483647i, -65456i, -28210i, -1i), vec4<i32>(u_input.a.x, u_input.a.x, arg_1.b.c.x, u_input.a.x), vec4<bool>(true, true, var_2.x, true)), vec4<i32>(arg_1.b.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-10788i, var_1.x), vec2<i32>(arg_1.b.c.x, 15216i)), _wgslsmith_div_i32(-18393i, -1i), arg_1.b.c.x), all(vec2<bool>(false, true)) | var_2.x), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, -29288i, var_1.x, var_1.x), abs(vec4<i32>(var_0.c.x, 944i, -11278i, 2066i)), vec4<i32>(var_1.x, var_0.c.x, arg_1.b.c.x, -1i)), min(vec4<i32>(var_1.x, u_input.a.x, u_input.a.x, -2147483647i), ~vec4<i32>(-21238i, -1i, arg_1.b.c.x, arg_1.b.c.x)))));
    return _wgslsmith_f_op_vec3_f32(select(var_0.d, var_0.d, true));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<bool>) -> vec3<f32> {
    let var_0 = Struct_4(0i);
    let var_1 = firstTrailingBit(~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 101201u), vec2<u32>(0u, arg_1)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(arg_1, 71817u))));
    var var_2 = vec2<f32>(-1183f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -135f), _wgslsmith_f_op_f32(select(292f, 751f, false)))), 1182f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1077f) - -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -241f)))))));
    var var_3 = !select(select(vec4<bool>(!arg_2.x, arg_2.x, arg_2.x, arg_2.x), !vec4<bool>(false, arg_2.x, arg_2.x, false), !(!vec4<bool>(false, arg_2.x, arg_2.x, false))), select(!(!vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x)), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, arg_2.x, true), arg_2.x), !(!arg_2.x)), true);
    let var_4 = Struct_3(~reverseBits(vec4<u32>(select(29665u, arg_1, arg_2.x), _wgslsmith_sub_u32(0u, var_1.x), arg_1, 4294967295u)), vec3<bool>((1i << (arg_1 % 32u)) < var_0.a, var_3.x, true == !(false || arg_2.x)), var_1.x, Struct_1(_wgslsmith_f_op_f32(round(var_2.x)), ~var_1, -arg_0.zy, _wgslsmith_f_op_vec3_f32(vec3<f32>(867f, _wgslsmith_f_op_f32(round(-268f)), var_2.x) - vec3<f32>(_wgslsmith_f_op_f32(round(-1336f)), var_2.x, _wgslsmith_f_op_f32(max(-385f, var_2.x))))), Struct_2(false != !var_3.x, Struct_1(-925f, var_1, u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -1861f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 1075f, -156f))) * vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-204f - -1127f), 324f))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.d.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-121f * var_2.x), _wgslsmith_f_op_f32(-var_4.e.c.x))), var_4.e)) + vec3<f32>(_wgslsmith_f_op_f32(-var_4.d.a), var_2.x, var_2.x));
}

fn func_1(arg_0: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1021f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a.x, -13405i), vec3<i32>(1i, u_input.a.x, -44373i)), _wgslsmith_sub_u32(21100u, 0u), vec2<bool>(true, true))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3(-234f, Struct_2(any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), any(vec2<bool>(false, true)))), Struct_1(-1479f, ~select(vec2<u32>(4294967295u, 20751u), vec2<u32>(1532u, 1u), false), select(~vec2<i32>(-7867i, -2147483647i), u_input.a & vec2<i32>(u_input.a.x, -1i), vec2<bool>(true, true)), arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_0))) + var_0)))).x;
    let var_2 = ~select(_wgslsmith_div_u32(countOneBits(0u), _wgslsmith_mult_u32(4294967295u, 1u)), 1u, true | all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)));
    let var_3 = ~max(_wgslsmith_clamp_vec3_u32(max(abs(vec3<u32>(var_2, 4474u, 4294967295u)), vec3<u32>(41968u, var_2, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(30003u, 64799u, 2846u), vec3<u32>(0u, var_2, var_2)), min(vec3<u32>(var_2, 1u, 0u) & vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, var_2) | vec3<u32>(var_2, var_2, var_2))), select(_wgslsmith_div_vec3_u32(vec3<u32>(56094u, 1u, 1u), select(vec3<u32>(var_2, 0u, 11119u), vec3<u32>(var_2, var_2, 1u), false)), vec3<u32>(reverseBits(var_2), 1u, 23866u), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))));
    let var_4 = !vec2<bool>(all(vec4<bool>(var_2 < 0u, true, true, false)), true);
    return select(true, _wgslsmith_add_i32(-1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -72320i), vec2<i32>(-2147483647i, u_input.a.x))) == ~min(0i ^ u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, 41688i)), !(1i > (u_input.a.x << (~0u % 32u))));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>) -> i32 {
    let var_0 = arg_1;
    var var_1 = select(select(!select(!vec4<bool>(true, true, var_0.x, true), vec4<bool>(false, false, true, false), !var_0.x), vec4<bool>(arg_1.x, any(!vec4<bool>(false, arg_1.x, arg_1.x, false)), arg_1.x, var_0.x), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1245f, arg_0, arg_0))))), !vec4<bool>(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) + vec3<f32>(arg_0, -157f, arg_0))), var_0.x, true, arg_1.x), false);
    var var_2 = u_input.a.x;
    var_2 = ~(-18302i);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1000f), vec2<u32>(min(~4294967295u, 23828u), ~4294967295u), -u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-454f, _wgslsmith_f_op_f32(sign(1021f)), _wgslsmith_f_op_f32(step(-188f, 219f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(709f, -2154f, 256f) + vec3<f32>(-1271f, 1524f, -1801f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(248f, -230f, 304f))), true))));
    let var_2 = func_4(-905f, vec3<bool>(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1439f, 749f, var_1.d.x) + vec3<f32>(var_1.a, -1709f, -1357f))) | ((var_1.b.x >= 1u) & all(vec2<bool>(false, false))), reverseBits(~var_1.c.x) <= _wgslsmith_div_i32(abs(21940i), -2147483647i), true));
    var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(~var_0.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_sub_vec2_i32(vec2<i32>(-12207i, u_input.a.x), var_1.c) | u_input.a), -firstTrailingBit(vec2<i32>(-18578i, 0i) ^ u_input.a)), _wgslsmith_div_vec2_i32(select(_wgslsmith_div_vec2_i32(var_1.c, _wgslsmith_add_vec2_i32(var_1.c, var_1.c)), ~var_1.c, all(vec4<bool>(true, true, true, true))), -u_input.a));
    let var_3 = Struct_4(_wgslsmith_div_i32(1i, var_0.x));
    var var_4 = Struct_2(all(vec4<bool>(!select(true, false, false), true, true, false)), Struct_1(var_1.d.x, select(~(~vec2<u32>(35318u, 4294967295u)), vec2<u32>(select(0u, var_1.b.x, false), var_1.b.x), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<i32>(var_1.c.x, var_1.c.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_1.d, var_1.d)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -999f), _wgslsmith_f_op_f32(f32(-1f) * -1547f), var_1.d.x))), var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_4.c.x * var_1.d.x), 446f, _wgslsmith_f_op_f32(step(1045f, var_1.a)), var_1.d.x) + vec4<f32>(-948f, _wgslsmith_f_op_f32(-2407f + -440f), _wgslsmith_f_op_f32(floor(-130f)), -253f)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c.x, -1842f, var_4.b.d.x, -1000f)))))), _wgslsmith_clamp_u32(var_1.b.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 7905u, 121139u), vec3<u32>(1u, 4294967295u, 0u)), var_1.b.x >> (var_1.b.x % 32u)), 45512u << (~var_4.b.b.x % 32u)), var_1.b.x));
}

