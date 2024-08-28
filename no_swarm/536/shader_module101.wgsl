struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: bool,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1079f, 850f, 101f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, 367f, 1886f))))))) - vec3<f32>(arg_0, arg_0, arg_0));
    var var_1 = Struct_2(Struct_1(abs(vec2<i32>(-2147483647i, 2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -433f), var_0.x) * _wgslsmith_f_op_f32(-319f + _wgslsmith_f_op_f32(-1420f - var_0.x))), arg_0, var_0.zz, -vec2<i32>(2035i, 2147483647i) >> (arg_1 % vec2<u32>(32u))), Struct_1(select(min(-vec2<i32>(-34941i, 60023i), vec2<i32>(-14794i, -5743i)), vec2<i32>(firstLeadingBit(-42171i), abs(1i)), arg_1.x <= 0u), 511f, -411f, var_0.xy, _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i) << (~vec2<u32>(u_input.a.x, 45801u) % vec2<u32>(32u)), vec2<i32>(select(-2147483647i, 47984i, true), _wgslsmith_sub_i32(1i, 0i)), min(vec2<i32>(1i, 1i), max(vec2<i32>(2147483647i, -10203i), vec2<i32>(-1i, -1i))))));
    return var_1.b.e;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32) -> Struct_2 {
    var var_0 = (func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 * -953f))), abs(~vec2<u32>(arg_0, arg_0))) & (vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(-1i, -2147483647i)))) << (min(_wgslsmith_div_vec2_u32(u_input.a | vec2<u32>(u_input.a.x, 0u), _wgslsmith_add_vec2_u32(u_input.a, u_input.a)), vec2<u32>(~(~62163u), arg_0)) % vec2<u32>(32u));
    let var_1 = 180f;
    var var_2 = _wgslsmith_sub_i32(-1i, -2147483647i);
    var var_3 = arg_1;
    let var_4 = Struct_1(vec2<i32>(~var_0.x >> (~(59035u | u_input.a.x) % 32u), _wgslsmith_div_i32(var_0.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.x, var_0.x), abs(vec2<i32>(var_0.x, 49154i))))), arg_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -195f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(739f, arg_2))), vec2<f32>(-389f, var_1), select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, false), arg_1))) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, var_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, arg_2) + vec2<f32>(var_1, 1784f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1 + var_1), _wgslsmith_f_op_f32(-var_1)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, 1805f), vec2<f32>(arg_2, -1137f), vec2<bool>(arg_1, arg_1))))), ~_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(2147483647i, 2147483647i), -vec2<i32>(1i, 49249i)), vec2<i32>(2147483647i, ~1i)));
    return Struct_2(Struct_1(var_4.e, var_4.d.x, -106f, vec2<f32>(var_4.c, var_1), var_4.e), var_4);
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.a.x, ~23854u) << (~u_input.a % vec2<u32>(32u)), u_input.a), ~countOneBits(~(~vec2<u32>(4294967295u, 18982u))));
    return Struct_3(func_2(~_wgslsmith_clamp_u32(u_input.a.x, 74042u, 4294967295u) >> ((u_input.a.x << (_wgslsmith_mod_u32(u_input.a.x, 0u) % 32u)) % 32u), all(vec4<bool>(true, true, true, var_0.x < 46354u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(495f - -386f), 1233f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1162f) - 657f))), select(vec4<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), !all(vec2<bool>(false, true)), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)))), select(vec4<bool>(true, true, any(vec3<bool>(false, true, false)), false), vec4<bool>(true, all(vec2<bool>(true, true)), select(false, false, true), any(vec4<bool>(false, false, false, false))), vec4<bool>(true, false, true, any(vec4<bool>(true, false, false, false)))), true), false, true, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a & _wgslsmith_div_vec2_u32(firstTrailingBit(u_input.a), u_input.a));
    var var_1 = func_1();
    var_1 = Struct_3(Struct_2(Struct_1(vec2<i32>(var_1.a.b.a.x & 0i, -18564i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a.d.x + var_1.a.a.d.x)), _wgslsmith_f_op_f32(func_2(var_0, var_1.b.x, -1122f).b.d.x * var_1.a.a.b), vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.b.d.x), var_1.a.b.c), ~abs(var_1.a.a.e)), Struct_1(~countOneBits(vec2<i32>(2147483647i, 0i)), var_1.a.b.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(723f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_1.a.a.d, var_1.a.a.d)) * _wgslsmith_div_vec2_f32(var_1.a.a.d, var_1.a.a.d)), var_1.a.a.e)), vec4<bool>(all(!var_1.b), var_1.b.x, var_1.c, var_1.a.b.c <= func_2(firstTrailingBit(var_0), false, -1865f).a.b), true, all(!var_1.b.zzz), any(vec4<bool>(select(true, func_1().b.x, false), !var_1.b.x, all(vec4<bool>(false, false, true, var_1.e)), all(!var_1.b.zyy))));
    let var_2 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.b.d.x)))) == _wgslsmith_f_op_f32(320f + -911f)) & all(var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec2_i32(var_1.a.b.a, _wgslsmith_add_vec2_i32(abs(var_1.a.a.a), var_1.a.a.a)));
}

