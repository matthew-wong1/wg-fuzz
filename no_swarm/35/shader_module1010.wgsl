struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> vec2<i32> {
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-281f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-107f * -241f), 489f, true)))))));
    var var_0 = arg_0;
    var var_1 = countOneBits(abs(abs(~vec4<u32>(u_input.a, 19281u, 30800u, arg_1.x))) & min(vec4<u32>(arg_1.x, 55674u, arg_0, u_input.a), ~(~vec4<u32>(arg_1.x, u_input.d, arg_0, 4294967295u))));
    return _wgslsmith_div_vec2_i32(select(~_wgslsmith_sub_vec2_i32(-vec2<i32>(73658i, u_input.b), vec2<i32>(u_input.b, -3193i)), ~(~(~vec2<i32>(-38664i, u_input.b))), ~_wgslsmith_div_i32(u_input.c, 1i) != _wgslsmith_clamp_i32(max(-22845i, u_input.c), min(2709i, u_input.b), _wgslsmith_sub_i32(-22061i, 0i))), vec2<i32>(1i, -2147483647i));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3) -> i32 {
    var var_0 = Struct_2(true || (-u_input.b >= 2147483647i), vec2<i32>(_wgslsmith_mult_i32(u_input.c, _wgslsmith_add_i32(abs(arg_0.x), -arg_0.x)), ~min(1i, _wgslsmith_mod_i32(arg_0.x, 14370i))));
    var var_1 = var_0.a;
    let var_2 = select(select(func_3(u_input.a, vec2<u32>(27823u, ~u_input.d)), select(max(_wgslsmith_mod_vec2_i32(var_0.b, vec2<i32>(-43698i, 20904i)), -arg_0.yz), abs(var_0.b), true), select(all(!vec3<bool>(true, var_0.a, false)), 0u < ~u_input.d, false)), -arg_0.xx | var_0.b, !all(vec4<bool>(var_0.b.x != u_input.c, !var_0.a, true, true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1510f, _wgslsmith_f_op_f32(-arg_1.a))));
    var var_4 = -8665i;
    return ~u_input.c;
}

fn func_1() -> Struct_2 {
    var var_0 = select(~(2147483647i ^ (u_input.b >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(15421u, 63806u)) % 32u))), -func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, u_input.c, 1i) | vec3<i32>(u_input.b, u_input.c, -51397i)), Struct_3(_wgslsmith_f_op_f32(-1252f - 263f))), func_3(58923u, ~(~vec2<u32>(1u, u_input.a))).x != select(29204i, u_input.c, true));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-890f, _wgslsmith_f_op_f32(2492f - 1000f)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(377f, -671f), vec2<f32>(699f, -478f)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -503f), 500f)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-857f - -291f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1009f))), var_1.x, !all(vec2<bool>(true, true)))));
    var_0 = u_input.b;
    var var_2 = vec3<bool>(true, !all(vec4<bool>(u_input.d < u_input.a, var_1.x < 713f, true, 0u < u_input.d)), !(1u < (u_input.d << (u_input.a % 32u))) == any(vec2<bool>(true, true)));
    return Struct_2(!(!any(!vec4<bool>(false, true, var_2.x, false))), countOneBits(abs(reverseBits(select(vec2<i32>(-1i, -1i), vec2<i32>(u_input.c, u_input.c), false)))));
}

fn func_4(arg_0: Struct_2) -> i32 {
    global0 = -1029f;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(648f, 175f, -394f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1115f, -674f, -832f), vec3<f32>(1885f, 194f, 1000f), arg_0.a))) * _wgslsmith_div_vec3_f32(vec3<f32>(-574f, 739f, 211f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-268f, -243f, -959f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(997f, 1415f, 833f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 339f, 861f), vec3<f32>(1463f, 866f, 122f)) - vec3<f32>(1000f, -290f, -1000f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-795f, -969f, -1376f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1201f, 1040f, 1027f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(293f, -1441f, -974f), vec3<f32>(1509f, 111f, 824f))))))));
    global0 = _wgslsmith_f_op_f32(-1032f * _wgslsmith_f_op_f32(-var_0.x));
    global0 = var_0.x;
    let var_1 = vec4<i32>(-(u_input.b >> (4294967295u % 32u)), -(~(-1i << (u_input.d % 32u))), _wgslsmith_mult_i32(-u_input.b, u_input.b), -func_3(reverseBits(u_input.a), select(vec2<u32>(24229u, u_input.d) >> (vec2<u32>(u_input.d, u_input.a) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.d, u_input.d)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))).x);
    return ~(~arg_0.b.x) ^ ~1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32((vec3<u32>(u_input.d, u_input.d, 1u) & vec3<u32>(u_input.d, 91354u, 0u)) ^ ~vec3<u32>(78u, 47288u, u_input.a), vec3<u32>(~u_input.a, 1u, ~u_input.a)));
    let var_1 = abs(_wgslsmith_add_vec2_i32(~(~abs(vec2<i32>(0i, 41692i))), vec2<i32>(_wgslsmith_mod_i32(-1i >> (u_input.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 39357i), vec2<i32>(0i, u_input.b))), func_4(func_1()))));
    let var_2 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, all(vec4<bool>(true, false, false, true))), all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true))), select(vec3<bool>(true, -7722i > var_1.x, true), vec3<bool>(false, -41927i <= u_input.b, true), !any(vec4<bool>(false, true, true, false))), any(vec4<bool>(any(vec2<bool>(true, true)), true, true, false)));
    var var_3 = Struct_1(vec2<u32>(firstLeadingBit(1u), firstTrailingBit(~u_input.d) | ~u_input.d), _wgslsmith_add_i32(-func_3(var_0.x, ~var_0).x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-2147483647i, var_1.x) ^ var_1.x, 2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b & 2147483647i, u_input.b, u_input.c) >> (_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(var_0.x, 39162u, 3083u)), ~vec3<u32>(40524u, 50946u, u_input.d)) % vec3<u32>(32u)), vec3<i32>(-u_input.c, i32(-1i) * -1i, i32(-1i) * -u_input.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1152f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1192f, 1532f, var_2.x)) + -502f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1013f, -1000f) - vec3<f32>(621f, -1354f, -132f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1577f, -910f, 1529f)))), vec3<bool>(_wgslsmith_div_u32(u_input.d, 0u) != 0u, true, select(!var_2.x, all(vec3<bool>(true, var_2.x, var_2.x)), true)))), true);
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1278f, -240f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 42434u, 1u, var_0.x), countOneBits(vec4<u32>(var_0.x, 3560u, u_input.a, 39252u))))), var_3.d.x, vec3<u32>(~var_3.a.x, 1u, countOneBits(u_input.d ^ (var_0.x >> (var_3.a.x % 32u)))), _wgslsmith_f_op_f32(var_3.d.x + _wgslsmith_f_op_f32(837f * 1066f)));
}

