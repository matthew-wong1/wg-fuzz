struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_3) -> bool {
    var var_0 = vec3<u32>(max(~(~countOneBits(arg_2.e)), 4294967295u), _wgslsmith_div_u32(~1u, 98408u), ~0u);
    var_0 = vec3<u32>(~_wgslsmith_div_u32(~firstTrailingBit(11131u), ~(~1u)), ~10460u | arg_2.e, ~var_0.x & _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_2.e, var_0.x), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(17848u, arg_2.e, var_0.x)))));
    return global0.a;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a)) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(686f, 483f, arg_1.a.x), vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x)))))), select(!(!select(vec3<bool>(arg_0.x, false, false), vec3<bool>(false, arg_1.b.x, arg_1.b.x), true)), !(!(!vec3<bool>(global0.a, true, global0.a))), arg_0.x & (abs(1i) < u_input.a)));
    let var_1 = Struct_2(-617f, Struct_1(0i, firstTrailingBit(min(vec4<i32>(12642i, u_input.a, 15054i, 40271i), vec4<i32>(20368i, -5155i, u_input.a, 0i) >> (vec4<u32>(0u, 83542u, 35061u, 1u) % vec4<u32>(32u)))), abs(countOneBits(_wgslsmith_add_i32(2147483647i, -16913i)))));
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(~abs(49875u), _wgslsmith_dot_vec2_u32(~vec2<u32>(6331u, 1u), abs(vec2<u32>(9144u, 0u))), _wgslsmith_clamp_u32(27956u, 1749u, 57089u) << (~0u % 32u)) & ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(35986u, 0u, 1u, 27448u), vec4<u32>(33384u, 12661u, 22987u, 43165u)), ~112594u, _wgslsmith_div_u32(1u, 4294967295u)), vec3<u32>(~select(4294967295u, 5739u, all(arg_1.b.zx)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(14079u, 0u), vec2<u32>(34932u, 1u)))));
    let var_3 = ~var_2.zz;
    let var_4 = true;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(461f - _wgslsmith_f_op_f32(782f * 391f)), _wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a.x)) * 755f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x)), -1072f)));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec3<bool>) -> vec3<bool> {
    global0 = Struct_5(false != arg_2.x);
    global0 = Struct_5(true);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.a + _wgslsmith_div_f32(-1003f, arg_1.a.a)))));
    global0 = Struct_5(global0.a);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2.yz, Struct_4(vec3<f32>(arg_1.c.a, arg_1.a.a, arg_1.c.a), arg_2)))))) * _wgslsmith_f_op_f32(f32(-1f) * -511f));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!vec3<bool>(!global0.a, true && global0.a, global0.a)), select(!vec3<bool>(global0.a, false & global0.a, func_1(Struct_2(479f, Struct_1(u_input.a, vec4<i32>(u_input.a, -40169i, u_input.a, u_input.a), -65775i)), Struct_5(true), Struct_3(Struct_2(-1516f, Struct_1(u_input.a, vec4<i32>(25018i, u_input.a, u_input.a, 9460i), u_input.a)), -1i, Struct_2(375f, Struct_1(7366i, vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), 1i)), Struct_1(u_input.a, vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), 5643i), 34629u))), select(select(func_2(u_input.a, Struct_3(Struct_2(378f, Struct_1(-53755i, vec4<i32>(0i, u_input.a, u_input.a, u_input.a), u_input.a)), -41246i, Struct_2(632f, Struct_1(u_input.a, vec4<i32>(2147483647i, 19022i, -5912i, -2147483647i), 16225i)), Struct_1(2147483647i, vec4<i32>(7474i, u_input.a, 0i, 15554i), u_input.a), 3902u), vec3<bool>(global0.a, true, global0.a)), vec3<bool>(true, true, global0.a), !vec3<bool>(global0.a, global0.a, true)), select(vec3<bool>(true, true, global0.a), !vec3<bool>(false, global0.a, global0.a), true), select(vec3<bool>(global0.a, global0.a, false), select(vec3<bool>(global0.a, true, true), vec3<bool>(global0.a, global0.a, true), vec3<bool>(global0.a, true, global0.a)), vec3<bool>(global0.a, global0.a, true))), !select(vec3<bool>(global0.a, global0.a, global0.a), !vec3<bool>(global0.a, global0.a, global0.a), any(vec3<bool>(true, global0.a, global0.a)))), vec3<bool>(global0.a, false, all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(global0.a, true), true), !vec2<bool>(global0.a, true)))));
    var var_1 = -495f;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(139f + -460f)), _wgslsmith_f_op_f32(f32(-1f) * -2093f))), Struct_1(-u_input.a, vec4<i32>(~(~u_input.a), -16453i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-72522i, u_input.a, -1i, 1i), vec4<i32>(u_input.a, -6758i, 64382i, -1i)), 25333i), -1i));
    let var_3 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(var_2.b.b.wz, ~var_2.b.b.yz & -(var_2.b.b.yx | vec2<i32>(-8632i, var_2.b.a)), var_2.b.b.yz), _wgslsmith_mult_vec2_i32(-(abs(var_2.b.b.zx) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), vec2<i32>(-1i) * -(~vec2<i32>(var_2.b.c, 2147483647i))));
    var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a))))), Struct_1(-u_input.a, (firstLeadingBit(var_2.b.b) << (vec4<u32>(24507u, 1u, 1u, 0u) % vec4<u32>(32u))) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), min(2147483647i, _wgslsmith_dot_vec2_i32(var_2.b.b.xw, vec2<i32>(var_3.x, 16047i))) << (0u % 32u)));
    var_0 = vec3<bool>(global0.a, true, !(!var_0.x & (var_2.a >= var_2.a)) | func_2(~(-1i), Struct_3(Struct_2(-735f, Struct_1(-1i, vec4<i32>(-26398i, u_input.a, var_2.b.b.x, 0i), -40703i)), _wgslsmith_dot_vec2_i32(var_2.b.b.ww, var_2.b.b.yx), Struct_2(var_2.a, Struct_1(-1i, vec4<i32>(-56983i, u_input.a, 2147483647i, var_3.x), 31282i)), Struct_1(u_input.a, var_2.b.b, -34408i), 87275u), !vec3<bool>(false, global0.a, false)).x);
    var_1 = _wgslsmith_f_op_f32(floor(-856f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, -313f, var_2.a) + vec3<f32>(var_2.a, 105f, var_2.a)), vec3<f32>(var_2.a, var_2.a, var_2.a))), vec3<f32>(-354f, -142f, -1404f)))), var_3, ~(~min(21857u, 4294967295u)) << (1u % 32u), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(max(620f, _wgslsmith_div_f32(-1888f, var_2.a))), -701f, -182f))), firstLeadingBit(-2618i) >> (~(~1u) % 32u));
}

