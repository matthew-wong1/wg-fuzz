struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -36017i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: f32, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_2, arg_0.x))) + 1463f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2039f) + _wgslsmith_f_op_f32(-arg_2));
    let var_1 = _wgslsmith_f_op_f32(step(arg_2, arg_0.x));
    global0 = _wgslsmith_add_i32(~(_wgslsmith_add_i32(0i | u_input.a, -23084i) ^ (i32(-1i) * -1i)), u_input.b);
    var var_2 = -vec3<i32>(u_input.b, u_input.a, ~(~u_input.a)) ^ vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2147483647i) & vec2<i32>(1i, u_input.a), vec2<i32>(0i, -1i)), ~(-(u_input.b | 8759i)), -2147483647i);
    return Struct_2(Struct_1(882f, true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 661f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(994f * 1075f) - _wgslsmith_f_op_f32(abs(-1040f))))));
}

fn func_3(arg_0: Struct_3) -> Struct_2 {
    global0 = -(~u_input.b);
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.d.a.c, arg_0.b.a.c, arg_0.b.a.c), vec3<f32>(-1253f, -753f, 1586f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.d.a.a, arg_0.b.a.c, arg_0.c.c), vec3<f32>(-1014f, 518f, -1892f), false))))), min(abs(firstTrailingBit(arg_0.a)), 1u) | (~1u & _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 36547u, 2785u, u_input.c.x), vec4<u32>(u_input.c.x, arg_0.a, u_input.c.x, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a, u_input.c.x, u_input.c.x, 45890u), vec4<u32>(u_input.c.x, 323u, arg_0.a, arg_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.a.a * _wgslsmith_div_f32(1230f, 872f))), vec3<bool>(all(vec2<bool>(true, true)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.a.c + -1164f)) < arg_0.b.a.a));
    var_0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2192f + -1719f)), -283f, _wgslsmith_f_op_f32(-var_0.a.a)), 48394u, 1f, vec3<bool>(false, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_0.a, u_input.c.x), vec3<u32>(4294967295u, 19122u, arg_0.a)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.c.x, arg_0.a), vec3<u32>(0u, 4294967295u, arg_0.a))) > 1075u, false));
    var var_1 = arg_0;
    var var_2 = select(select(vec3<bool>(arg_0.b.a.b, all(select(vec4<bool>(var_0.a.b, var_0.a.b, true, false), vec4<bool>(false, var_1.c.b, var_1.d.a.b, true), true)), -2147483647i > u_input.a), vec3<bool>(true, var_0.a.b, var_1.c.b), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, var_1.d.a.b), var_1.a >= arg_0.a)), select(!(!(!vec3<bool>(false, true, arg_0.b.a.b))), select(!select(vec3<bool>(var_1.c.b, false, true), vec3<bool>(false, true, false), vec3<bool>(var_1.d.a.b, false, var_0.a.b)), select(!vec3<bool>(arg_0.c.b, var_0.a.b, arg_0.d.a.b), vec3<bool>(false, false, true), vec3<bool>(arg_0.d.a.b, true, false)), vec3<bool>(true, false, false)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-26925i, -1i, u_input.b, 0i)), -vec4<i32>(-2147483647i, u_input.a, u_input.b, -46361i)) < 0i), true);
    return func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-443f)), _wgslsmith_f_op_f32(step(var_0.a.a, -848f)), -121f)), var_1.a, var_1.d.a.a, select(vec3<bool>(var_1.b.a.b, !(var_2.x & var_2.x), true), select(vec3<bool>(true, true, var_0.a.b), select(select(vec3<bool>(true, arg_0.b.a.b, true), vec3<bool>(true, false, var_1.d.a.b), vec3<bool>(true, true, true)), !vec3<bool>(true, var_0.a.b, false), select(vec3<bool>(var_1.b.a.b, arg_0.c.b, true), vec3<bool>(var_0.a.b, arg_0.d.a.b, true), vec3<bool>(var_2.x, var_0.a.b, false))), any(select(vec3<bool>(var_1.c.b, false, var_1.c.b), vec3<bool>(true, var_1.d.a.b, var_0.a.b), true))), !any(vec3<bool>(true, var_1.b.a.b, arg_0.c.b)) || var_0.a.b));
}

fn func_1() -> i32 {
    var var_0 = ~countOneBits(25350u);
    let var_1 = func_3(Struct_3(4294967295u, func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-529f, 1084f, -448f)), _wgslsmith_div_vec3_f32(vec3<f32>(404f, 467f, 490f), vec3<f32>(155f, 1089f, 1176f)))), u_input.c.x, 690f, vec3<bool>(true, true, false)), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(557f, -212f, -1447f) * vec3<f32>(372f, 438f, -1000f))), _wgslsmith_mult_u32(~1u, _wgslsmith_clamp_u32(u_input.c.x, 1u, 1u)), _wgslsmith_f_op_f32(f32(-1f) * -380f), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)).a, func_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1793f, -144f, 555f), vec3<f32>(-482f, -1499f, -320f))))), _wgslsmith_dot_vec2_u32(~vec2<u32>(27870u, 12221u), vec2<u32>(26983u, 0u) | u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(669f, -1108f)), vec3<bool>(true, false, any(vec3<bool>(true, false, false))))));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(811f)), _wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(ceil(832f)));
    global0 = ~(~(-23203i)) | u_input.a;
    global0 = abs(i32(-1i) * -2147483647i) | func_1();
    let var_1 = Struct_2(func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(691f, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(trunc(var_0.x))), -642f), max(9350u, ~4294967295u), func_3(Struct_3(~u_input.c.x, Struct_2(Struct_1(1000f, false, 374f)), func_3(Struct_3(u_input.c.x, Struct_2(Struct_1(1734f, false, var_0.x)), Struct_1(var_0.x, true, var_0.x), Struct_2(Struct_1(1362f, false, var_0.x)))).a, Struct_2(Struct_1(-763f, true, var_0.x)))).a.a, select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, func_2(vec3<f32>(var_0.x, 160f, var_0.x), u_input.c.x, -1185f, vec3<bool>(false, false, false)).a.b, true), vec3<bool>(true, false, var_0.x > 1900f))).a);
    global0 = -_wgslsmith_add_i32(i32(-1i) * -21058i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a, u_input.b), 1i, ~u_input.b));
    global0 = -u_input.b;
    let var_2 = Struct_3(reverseBits(~u_input.c.x << (_wgslsmith_mod_u32(u_input.c.x, u_input.c.x) % 32u)) & (~u_input.c.x & u_input.c.x), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-436f + -1000f), _wgslsmith_f_op_f32(sign(var_0.x)), var_0.x)), firstTrailingBit(u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-191f - var_1.a.a)), !select(select(vec3<bool>(true, true, var_1.a.b), vec3<bool>(var_1.a.b, false, true), false), select(vec3<bool>(true, true, var_1.a.b), vec3<bool>(var_1.a.b, var_1.a.b, var_1.a.b), false), true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1488f + var_0.x)), any(select(vec3<bool>(var_1.a.b, var_1.a.b, var_1.a.b), vec3<bool>(var_1.a.b, var_1.a.b, false), var_1.a.b)) & func_3(Struct_3(53408u, Struct_2(Struct_1(var_1.a.a, var_1.a.b, var_0.x)), var_1.a, Struct_2(var_1.a))).a.b, var_1.a.a), func_3(Struct_3(_wgslsmith_mult_u32(u_input.c.x, ~50987u), var_1, Struct_1(_wgslsmith_f_op_f32(var_0.x + var_0.x), all(vec4<bool>(false, var_1.a.b, true, false)), _wgslsmith_f_op_f32(sign(var_0.x))), Struct_2(var_1.a))));
    global0 = max(~(-abs(u_input.b)) >> (56856u % 32u), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) * var_2.b.a.a)))));
}

