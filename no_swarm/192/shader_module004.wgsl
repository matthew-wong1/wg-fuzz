struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: Struct_4,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(553f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-786f - -1126f) * 1f), false)), u_input.c.x), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -826f), (_wgslsmith_dot_vec2_u32(vec2<u32>(18870u, 0u), u_input.c.xy) >> (35523u % 32u)) | u_input.c.x));
    var var_1 = vec3<u32>(~(~firstLeadingBit(_wgslsmith_add_u32(var_0.b.b, 53104u))), ~_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_add_u32(1u & u_input.c.x, firstLeadingBit(0u))), abs(~abs(~var_0.b.b)));
    var_1 = u_input.c.zyy;
    var_1 = u_input.c.www;
    var var_2 = true;
    return countOneBits(select(79997u << (u_input.c.x % 32u), ~var_1.x, false));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_5) -> Struct_1 {
    let var_0 = arg_2.b.a;
    let var_1 = Struct_5(false, Struct_4(Struct_3(arg_2.b.a.b, var_0.b)), arg_2.c, 18836u, Struct_3(arg_2.c.a.a, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1067f + arg_2.e.a.a), _wgslsmith_f_op_f32(-arg_2.b.a.a.a), true)), ~4294967295u)));
    let var_2 = func_3();
    var var_3 = select(select(vec2<bool>(true, false), !select(select(vec2<bool>(false, arg_2.a), vec2<bool>(false, arg_2.a), vec2<bool>(var_1.a, true)), !vec2<bool>(var_1.a, arg_1), !vec2<bool>(var_1.a, arg_2.a)), true), vec2<bool>(var_1.e.a.a > arg_0, true), select(true, true, any(vec3<bool>(false, false, arg_2.a))) & (false & var_1.a));
    let var_4 = Struct_1(var_0.b.a, ~(~firstTrailingBit(22654u)));
    return var_0.b;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_2) -> u32 {
    let var_0 = 8225u;
    return 20307u;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: bool) -> Struct_3 {
    let var_0 = ~firstTrailingBit(arg_1.x) >> (1u % 32u);
    var var_1 = !(!select(vec2<bool>(true, true), !(!vec2<bool>(true, arg_2)), !select(vec2<bool>(false, false), vec2<bool>(true, true), arg_2)));
    var var_2 = vec4<i32>(~u_input.a.x ^ u_input.a.x, -3853i, firstLeadingBit(27716i) | ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.e.x, 2147483647i), ~u_input.a.xxy), 1i);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-565f, _wgslsmith_f_op_f32(step(-1000f, 346f)), false)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -593f) + _wgslsmith_f_op_f32(836f - 769f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, -674f)), -300f)))));
    var_2 = u_input.a;
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3 * 643f))))), abs(~1u)), Struct_1(_wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3 - -365f)))), 43670u));
}

fn func_1() -> Struct_3 {
    var var_0 = func_5(~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(~45401u, max(u_input.c.x, u_input.c.x))), vec4<u32>(~u_input.c.x, 51990u, _wgslsmith_sub_u32((u_input.c.x << (u_input.c.x % 32u)) | 44810u, 1u), func_4(vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true), Struct_2(func_2(1701f, true, Struct_5(false, Struct_4(Struct_3(Struct_1(-582f, 18870u), Struct_1(463f, u_input.c.x))), Struct_4(Struct_3(Struct_1(-608f, u_input.c.x), Struct_1(-693f, 0u))), u_input.c.x, Struct_3(Struct_1(-217f, u_input.c.x), Struct_1(250f, 28404u)))), vec2<i32>(u_input.b, 10996i), 1u, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(436f, -276f, -1000f)))), vec3<bool>(true, true, true), Struct_2(func_2(975f, true, Struct_5(true, Struct_4(Struct_3(Struct_1(1053f, u_input.c.x), Struct_1(-271f, u_input.c.x))), Struct_4(Struct_3(Struct_1(1428f, 18581u), Struct_1(-1132f, u_input.c.x))), 4087u, Struct_3(Struct_1(1161f, 50963u), Struct_1(-2763f, u_input.c.x)))), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.e.x, 2147483647i)), _wgslsmith_mult_u32(0u, u_input.c.x), vec3<f32>(2182f, 1523f, 260f)))), false);
    let var_1 = ~(-(~_wgslsmith_mult_i32(u_input.d, 1i))) >> (u_input.c.x % 32u);
    var var_2 = _wgslsmith_f_op_f32(sign(var_0.b.a));
    var var_3 = _wgslsmith_f_op_f32(trunc(-973f));
    var var_4 = !(!vec2<bool>(all(vec3<bool>(true, true, true)), true));
    return Struct_3(var_0.b, func_5(u_input.c.zz & _wgslsmith_sub_vec2_u32(u_input.c.yw, vec2<u32>(4294967295u, u_input.c.x)), _wgslsmith_div_vec4_u32(~u_input.c | (vec4<u32>(32496u, 1u, var_0.a.b, var_0.a.b) & vec4<u32>(0u, 46526u, 1u, u_input.c.x)), ~vec4<u32>(6242u, 45171u, 0u, u_input.c.x)), var_4.x).b);
}

fn func_6(arg_0: Struct_4, arg_1: bool, arg_2: f32) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(func_1().b.a, u_input.c.x), _wgslsmith_div_vec2_i32(-(~(~u_input.a.zy)), -(~(-vec2<i32>(u_input.a.x, u_input.b)))), ~arg_0.a.a.b, vec3<f32>(func_2(func_5(_wgslsmith_clamp_vec2_u32(u_input.c.yw, u_input.c.xz, u_input.c.xw), vec4<u32>(arg_0.a.a.b, u_input.c.x, 5744u, 0u), any(vec3<bool>(arg_1, false, arg_1))).b.a, true, Struct_5(false, Struct_4(arg_0.a), arg_0, 1u, arg_0.a)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - arg_0.a.b.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-314f * 369f))), _wgslsmith_f_op_f32(sign(-590f))));
    let var_1 = !vec2<bool>(false, arg_1 & arg_1);
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(~56604u, func_1().b.b) & abs(vec2<u32>(arg_0.a.b.b, _wgslsmith_div_u32(var_0.c, arg_0.a.a.b))), max(vec2<u32>(~(~4294967295u), var_0.a.b), _wgslsmith_mod_vec2_u32(u_input.c.zz, ~(u_input.c.zw >> (u_input.c.wy % vec2<u32>(32u))))));
    let var_3 = func_1();
    var var_4 = select(0i, 19974i, var_1.x);
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(-arg_0.a.b.a), 72273u >> (_wgslsmith_mod_u32(~u_input.c.x, func_2(arg_2, var_1.x, Struct_5(var_1.x, arg_0, Struct_4(Struct_3(var_3.b, arg_0.a.b)), 33116u, Struct_3(arg_0.a.a, Struct_1(-1660f, var_0.c)))).b) % 32u)), arg_0.a.b);
}

fn func_7(arg_0: Struct_3) -> Struct_3 {
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1436f), u_input.c.x);
    var var_1 = func_7(func_6(Struct_4(func_1()), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(f32(-1f) * -541f)))));
    var_1 = func_6(Struct_4(func_1()), true, _wgslsmith_f_op_f32(var_0.a - var_1.a.a));
    var_1 = Struct_3(Struct_1(var_0.a, u_input.c.x), var_1.b);
    let var_2 = firstTrailingBit(select(vec3<u32>(4294967295u, _wgslsmith_clamp_u32(1u, ~u_input.c.x, firstLeadingBit(var_1.a.b)), firstLeadingBit(~var_1.b.b)), vec3<u32>(23314u, 4294967295u, abs(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c))), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(firstTrailingBit(u_input.b), -2075i, -u_input.e.x, ~1i) << ((vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(5623u, u_input.c.x, 57556u), var_2), reverseBits(23660u), 1u, var_0.b) ^ u_input.c) % vec4<u32>(32u)), reverseBits(vec2<i32>(0i, _wgslsmith_div_i32(2147483647i, u_input.e.x) >> ((4294967295u & u_input.c.x) % 32u))), firstLeadingBit(u_input.a.yyy), u_input.c);
}

