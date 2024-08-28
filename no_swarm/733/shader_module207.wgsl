struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(42918u, 65184u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<u32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(584f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1189f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(844f + -461f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-213f, -1245f), _wgslsmith_f_op_f32(step(-1901f, 631f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-401f, 790f)))));
    let var_1 = any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true));
    let var_2 = 1u;
    var var_3 = Struct_1(vec2<i32>(u_input.d, _wgslsmith_add_i32(u_input.d, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.c, -2147483647i), ~u_input.d))));
    var var_4 = Struct_2(Struct_1(var_3.a), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(783f + 589f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_0.x)))), Struct_1(var_3.a), Struct_1(var_3.a), vec2<bool>(true, true | !var_1));
    return vec2<i32>(~var_4.c.a.x, ~var_3.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> vec4<bool> {
    global0 = vec2<u32>(1u, ~23292u);
    var var_0 = countOneBits(~min(vec3<i32>(0i, -42556i, arg_1.a.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(-19650i, 30013i, 1i), vec3<i32>(81695i, arg_0.c.a.x, arg_0.a.a.x), vec3<i32>(arg_0.d.a.x, arg_3, u_input.d)))) >> (~(vec3<u32>(_wgslsmith_add_u32(global0.x, 5839u), 0u, 30777u >> (global0.x % 32u)) & ~(~u_input.a)) % vec3<u32>(32u));
    let var_1 = vec3<u32>(1u, reverseBits(4294967295u), _wgslsmith_mult_u32(global0.x, arg_2));
    let var_2 = !(~(-(~arg_1.a.x)) > _wgslsmith_dot_vec3_i32(reverseBits(firstLeadingBit(vec3<i32>(var_0.x, 26372i, arg_1.a.x))), vec3<i32>(arg_1.a.x, -arg_0.c.a.x, var_0.x)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.x)))))) + arg_0.b.x);
    return select(!(!(!(!vec4<bool>(var_2, true, false, true)))), !(!select(vec4<bool>(true, arg_0.e.x, false, var_2), vec4<bool>(var_2, var_2, var_2, var_2), !vec4<bool>(arg_0.e.x, arg_0.e.x, var_2, arg_0.e.x))), vec4<bool>(!all(arg_0.e), var_2, !arg_0.e.x, any(!arg_0.e)));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> f32 {
    var var_0 = func_4(Struct_2(Struct_1(func_3(vec2<u32>(32328u, 1u))), arg_0.b, Struct_1(_wgslsmith_sub_vec2_i32(~vec2<i32>(-2147483647i, -1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 0i), arg_0.c.a, vec2<i32>(-3075i, 10586i)))), arg_0.d, select(select(vec2<bool>(true, true), vec2<bool>(false, arg_1), select(arg_0.e, vec2<bool>(true, false), vec2<bool>(arg_0.e.x, arg_1))), select(vec2<bool>(false, arg_0.e.x), select(vec2<bool>(arg_1, arg_1), arg_0.e, arg_1), true), arg_0.e)), Struct_1(arg_0.a.a), 21982u, -u_input.c);
    var_0 = !(!vec4<bool>(1u >= (17508u | global0.x), any(vec2<bool>(false, true)), all(func_4(arg_0, Struct_1(vec2<i32>(u_input.c, 19034i)), global0.x, arg_0.a.a.x).xyx), select(true, any(vec4<bool>(false, true, true, var_0.x)), !var_0.x)));
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(1i, 30701i), -(_wgslsmith_sub_i32(-2147483647i, 0i) >> (~u_input.b % 32u))));
    var var_2 = ~_wgslsmith_sub_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-11293i, arg_0.c.a.x, -1i, arg_0.c.a.x), vec4<i32>(arg_0.c.a.x, var_1.a.x, arg_0.d.a.x, u_input.c)) | -vec4<i32>(u_input.d, -1i, -23533i, var_1.a.x)), _wgslsmith_mult_vec4_i32(firstTrailingBit(~vec4<i32>(arg_0.d.a.x, 2147483647i, -1i, arg_0.c.a.x)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.d, -2147483647i, -2147483647i), vec4<i32>(u_input.d, 15612i, -19976i, 2147483647i))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(sign(-681f))), arg_0.b.x, -174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1736f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b.x, 799f, false)) + _wgslsmith_f_op_f32(ceil(822f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-441f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.x)) * _wgslsmith_f_op_f32(ceil(var_3.x)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<f32> {
    global0 = ~u_input.e.yz;
    global0 = vec2<u32>(global0.x, global0.x);
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(var_0, vec2<f32>(-757f, -807f), Struct_1(var_0.a), Struct_1(vec2<i32>(15859i, arg_1.a.x)), vec2<bool>(false, true)), false))))))));
    let var_2 = Struct_2(var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1262f, 192f) - vec2<f32>(arg_0.x, 140f)))))), Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0.a.x, 33922i, u_input.d), ~vec4<i32>(u_input.c, 1i, arg_1.a.x, arg_1.a.x)), select(u_input.d, -2289i, false))), arg_1, func_4(Struct_2(Struct_1(~vec2<i32>(u_input.c, 0i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1566f)), Struct_1(vec2<i32>(u_input.c, arg_1.a.x)), Struct_1(~vec2<i32>(2147483647i, -18520i)), vec2<bool>(u_input.c < -13168i, true)), var_0, global0.x, var_0.a.x ^ ~select(22150i, 7960i, false)).xx);
    return arg_0;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_2(Struct_1(vec2<i32>(u_input.c, -11645i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zw)) + vec2<f32>(203f, -105f)), Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(u_input.c, u_input.c)), vec2<i32>(1161i, u_input.c) ^ vec2<i32>(-20923i, u_input.c)), _wgslsmith_mod_vec2_i32(-vec2<i32>(24566i, 91209i), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.d), vec2<i32>(72908i, -28537i))))), Struct_1(-firstLeadingBit(vec2<i32>(u_input.d, 0i))), !(!select(!arg_1.yz, vec2<bool>(arg_1.x, arg_1.x), arg_1.xx)));
    global0 = ~vec2<u32>(_wgslsmith_sub_u32(26901u, 4294967295u << (min(global0.x, global0.x) % 32u)), 45908u);
    let var_1 = Struct_1(var_0.d.a);
    global0 = vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.a, ~(vec3<u32>(global0.x, 92731u, 1u) & abs(u_input.a))), global0.x);
    var_0 = Struct_2(Struct_1(~(~max(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(24579i, -1i)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(857f - 1224f), var_0.b.x)), 912f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.b, var_0.b))))), var_1, Struct_1(_wgslsmith_sub_vec2_i32(~func_3(vec2<u32>(u_input.b, u_input.e.x)), _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(var_1.a.x, var_0.a.a.x)), ~var_1.a))), !arg_1.zy);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -325f;
    var var_1 = 4294967295u;
    var_1 = 27998u;
    let var_2 = 1u;
    var var_3 = 70373u << (func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-830f, -408f, var_0, -835f) - vec4<f32>(137f, var_0, var_0, var_0)) - _wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(-539f, 278f, var_0, var_0), Struct_1(vec2<i32>(-4306i, 27117i))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-868f, -139f, var_0, var_0))), vec3<bool>(true, true, true)) % 32u);
    var_1 = ~4294967295u;
    let var_4 = vec3<bool>(all(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), var_0 > var_0)), false, select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) < -1284f, true, false));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))), -2302f)), ~vec4<i32>(-31684i, u_input.d, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(49688i, u_input.c), vec2<i32>(-1i, 1i)), u_input.c), ~countOneBits(u_input.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(var_0 * 526f))))));
}

