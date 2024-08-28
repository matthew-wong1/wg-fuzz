struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(29597i, 2147483647i, -1i, -21601i), vec4<i32>(-51724i, 2147483647i, -6532i, 43659i), vec4<i32>(0i, 1i, 13160i, 69442i), vec4<i32>(-10212i, -43887i, -1i, -40308i), vec4<i32>(2206i, -50548i, 1i, -15834i), vec4<i32>(52149i, 10922i, 1i, -1i), vec4<i32>(-1i, 21771i, -17315i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -1i, -1i, 4338i), vec4<i32>(21095i, -87909i, 15226i, -1i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1562f * _wgslsmith_f_op_f32(-1044f + 1394f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-219f, _wgslsmith_f_op_f32(f32(-1f) * -384f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-469f, -417f))))));
    var var_1 = select(u_input.c, 24452u, any(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), true)));
    var_1 = max(1u, 1u);
    global0 = array<vec4<i32>, 9>();
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x) - var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x))), _wgslsmith_div_f32(849f, _wgslsmith_f_op_f32(-var_0.a.x))));
    return false;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2) -> bool {
    global0 = array<vec4<i32>, 9>();
    global0 = array<vec4<i32>, 9>();
    global0 = array<vec4<i32>, 9>();
    global0 = array<vec4<i32>, 9>();
    global0 = array<vec4<i32>, 9>();
    return !(abs(u_input.c) < u_input.d) | all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, arg_0), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, arg_0), arg_0), !vec2<bool>(arg_0, true)), all(!vec2<bool>(arg_0, true))));
}

fn func_2() -> u32 {
    var var_0 = func_4(func_3(), ~(~vec2<u32>(0u, u_input.d)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-1000f * 324f), -119f, _wgslsmith_f_op_f32(select(-1279f, -235f, false)), 1f))) | func_3();
    global0 = array<vec4<i32>, 9>();
    var_0 = any(select(vec2<bool>(true, true), select(vec2<bool>(select(true, false, false), all(vec2<bool>(true, false))), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec2<bool>(false, false)))), any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), false))));
    var var_1 = !select(vec3<bool>(true, !(u_input.c == 53091u), true), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), _wgslsmith_mod_u32(47022u, 4294967295u) < _wgslsmith_sub_u32(u_input.c, u_input.c)), !select(true, true, 0u != u_input.d));
    var_1 = vec3<bool>(var_1.x, ~_wgslsmith_mult_u32(0u >> (u_input.d % 32u), _wgslsmith_mod_u32(38653u, u_input.c)) < 1u, _wgslsmith_dot_vec4_i32(u_input.b, global0[_wgslsmith_index_u32(u_input.a, 9u)]) > (u_input.b.x & 2147483647i));
    return 34496u;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_add_u32(~u_input.d ^ func_2(), 25220u), ~4294967295u), firstLeadingBit(7762u) <= u_input.a);
    global0 = array<vec4<i32>, 9>();
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(228f)) + _wgslsmith_div_f32(-1000f, -715f)), _wgslsmith_f_op_f32(-291f * _wgslsmith_f_op_f32(f32(-1f) * -805f)))), _wgslsmith_f_op_f32(select(784f, -661f, var_0.b))));
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1245f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(505f * -1269f), -437f)), 184f, 179f));
    var var_3 = ~vec3<u32>(var_0.a, 38922u, abs(countOneBits(var_0.a)));
    return var_0;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = 519f;
    let var_1 = ~(~(-(~abs(u_input.b.x))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x + arg_1.x))), arg_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.zx * vec2<f32>(arg_0.a.x, arg_1.x)))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), all(vec4<bool>(false, false, true, false))), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), !(var_1 > 0i)))));
    global0 = array<vec4<i32>, 9>();
    var var_3 = func_5(~vec2<u32>(~u_input.c, u_input.c) ^ _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(2883u, 56406u)) ^ vec2<u32>(0u, u_input.a), ~(vec2<u32>(1u, u_input.d) >> (vec2<u32>(20894u, u_input.a) % vec2<u32>(32u)))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_mod_u32(4294967295u, 1u)), firstLeadingBit(4294967295u) ^ u_input.c), ~_wgslsmith_div_u32(~u_input.c, func_2()), ~firstLeadingBit(u_input.a)));
    return arg_0;
}

fn func_6(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_3 {
    global0 = array<vec4<i32>, 9>();
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(154f, _wgslsmith_f_op_f32(sign(-153f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_2.a.x)), _wgslsmith_f_op_f32(-arg_3.a.x), false)) - 460f)), arg_3.a.xwy);
    let var_1 = Struct_3(arg_3.a.yy);
    var var_2 = u_input.b.x;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a.xyw))));
    return Struct_3(vec2<f32>(1107f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)) - var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 9>();
    var var_0 = func_6(abs(vec2<u32>(u_input.a, reverseBits(4294967295u))) ^ firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(41740u, 4294967295u), vec2<u32>(4294967295u, 18583u) >> (vec2<u32>(u_input.d, 1u) % vec2<u32>(32u)))), -1150f, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(abs(-672f)), _wgslsmith_f_op_f32(424f - -380f), 128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -449f)))), func_1(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(915f, 1276f, 593f, 1409f) - vec4<f32>(511f, 1506f, 1079f, 1666f))), vec3<f32>(1f, 1f, 1f)));
    let var_1 = Struct_1(_wgslsmith_clamp_u32(~u_input.d >> (select(1u, 1u, false) % 32u), ~(~(u_input.c >> (u_input.a % 32u))), u_input.c), (abs(u_input.a) >= ~select(u_input.c, u_input.c, true)) || !any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true)));
    let var_2 = -(~max(~u_input.b.xxx, ~countOneBits(u_input.b.zxw)));
    var_0 = func_6(~_wgslsmith_clamp_vec2_u32(countOneBits(abs(vec2<u32>(u_input.d, u_input.c))), vec2<u32>(1u, max(0u, 8280u)), vec2<u32>(var_1.a, 80431u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1095f)))), func_1(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1088f, -126f, 956f, var_0.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-708f, var_0.a.x, var_0.a.x)) - vec3<f32>(var_0.a.x, 499f, var_0.a.x)))), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-202f, -1892f, -756f, -1642f), vec4<f32>(var_0.a.x, -1000f, 1605f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2470f, var_0.a.x, -889f, var_0.a.x), vec4<f32>(1184f, 521f, var_0.a.x, var_0.a.x))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -1437f, var_0.a.x, -1000f) + vec4<f32>(var_0.a.x, 416f, -1001f, 600f)))))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(func_6(~vec2<u32>(7600u, 0u), _wgslsmith_f_op_f32(-var_0.a.x), Struct_2(vec4<f32>(1326f, -145f, var_0.a.x, 551f)), Struct_2(vec4<f32>(1000f, 1349f, var_0.a.x, var_0.a.x))).a.x, _wgslsmith_f_op_f32(-var_0.a.x)))));
    var_0 = var_3;
    global0 = array<vec4<i32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_div_vec2_u32(vec2<u32>(9629u, 1u), vec2<u32>(4294967295u, u_input.c)) ^ vec2<u32>(1u, ~4294967295u)));
}

