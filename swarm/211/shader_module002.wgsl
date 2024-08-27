struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1974f;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_add_vec3_i32(~min(firstTrailingBit(vec3<i32>(-1i, 2411i, -2147483647i)), reverseBits(vec3<i32>(-32692i, 7489i, -6791i))), vec3<i32>(1i, select(-2147483647i, abs(-2147483647i), true), ~countOneBits(0i))), 0i);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1104f, 626f, -653f, 808f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(320f, 1146f, -500f, -1000f))))), ~vec3<u32>(1u, 42006u >> (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(4294967295u, u_input.a.x))), all(vec2<bool>(var_0.b < 8660i, true)), vec4<bool>(all(vec3<bool>(true, true, true)), true, false, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(205f, -1055f, 1251f, -2361f))), ~((vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) << (vec3<u32>(u_input.a.x, 0u, u_input.a.x) % vec3<u32>(32u))) >> (~vec3<u32>(5986u, 4294967295u, 41179u) % vec3<u32>(32u))), false, vec4<bool>(true, true, true, true)), !any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, true, false), true)), select(vec4<bool>(!any(vec3<bool>(false, true, true)), true, false, ~14320u >= min(30418u, u_input.a.x)), vec4<bool>(!select(false, true, true), any(vec2<bool>(false, true)), true, false), true), Struct_1(vec4<f32>(1f, -552f, _wgslsmith_f_op_f32(-234f - _wgslsmith_div_f32(-1250f, 2065f)), _wgslsmith_f_op_f32(-523f + _wgslsmith_f_op_f32(f32(-1f) * -2590f))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(16569u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 23156u, u_input.a.x)) << (~u_input.a.x % 32u), 0u, 1u), false, vec4<bool>(_wgslsmith_mult_u32(0u, 49335u) != u_input.a.x, !any(vec2<bool>(true, false)), true, true)));
    let var_2 = ~(~vec2<u32>(56808u, 4294967295u));
    var var_3 = _wgslsmith_f_op_f32(var_1.e.a.x * var_1.e.a.x);
    global0 = _wgslsmith_f_op_f32(step(697f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.a.a.x, var_1.e.a.x))) * _wgslsmith_f_op_f32(sign(var_1.e.a.x)))));
    return select(var_1.d.yz, select(vec2<bool>(all(vec4<bool>(var_1.a.c, var_1.e.d.x, var_1.d.x, true)), !(!var_1.d.x)), var_1.a.d.zz, var_1.e.d.zw), !var_1.a.c);
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -622f) + _wgslsmith_f_op_f32(abs(-1241f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1052f, -573f))) + 1806f));
    let var_1 = any(func_3());
    var var_2 = _wgslsmith_mod_vec2_i32(~(~vec2<i32>(arg_2.x, arg_2.x)) | vec2<i32>(arg_2.x, firstLeadingBit(1i)), vec2<i32>(~(-(~(-27075i))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.x, -14222i, 37628i, -24225i), vec4<i32>(56769i, -18453i, 2147483647i, arg_2.x)), vec4<i32>(1i, firstLeadingBit(1i), arg_1 | arg_1, _wgslsmith_sub_i32(arg_1, arg_2.x)))));
    var var_3 = select(vec3<bool>(true, false, true), !vec3<bool>(select(false, var_1, arg_0.x < arg_0.x), var_1, false || var_1), !select(!vec3<bool>(var_1, false, true), vec3<bool>(true, !var_1, true), select(false, !var_1, var_1)));
    var var_4 = Struct_3(-select(_wgslsmith_add_vec3_i32(~vec3<i32>(var_2.x, arg_1, arg_2.x), _wgslsmith_sub_vec3_i32(vec3<i32>(22655i, -13467i, -6141i), vec3<i32>(42798i, 2147483647i, arg_2.x))), arg_2, !(!vec3<bool>(var_3.x, var_1, var_3.x))), abs(-94468i));
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 774f))), _wgslsmith_f_op_f32(var_0 * 412f), _wgslsmith_f_op_f32(ceil(1138f)), _wgslsmith_f_op_f32(var_0 + var_0))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<u32>(u_input.a.x, 0u) << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)), abs(-1176i), select(vec3<i32>(52081i, 2147483647i, -24780i), vec3<i32>(10599i, 5202i, 2147483647i), true))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1160f, -1310f, 1538f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-402f, 1000f, -1511f, -1409f), vec4<f32>(487f, 965f, 412f, 527f), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-448f, 343f, -479f, 299f)))))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -313f))), -107f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-428f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-390f, 225f)), _wgslsmith_f_op_f32(f32(-1f) * -381f)))));
    var var_1 = select(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), func_3().x), !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), !all(vec3<bool>(false, true, true))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, var_0.x <= var_0.x), vec4<bool>(true, all(vec4<bool>(false, true, true, false)), true, true))));
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_2(u_input.a, 11242i, vec3<i32>(1i, 1i, 1i))).x, _wgslsmith_f_op_f32(var_0.x * var_0.x), !(!var_1.x)))));
    let var_2 = ~select(~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(u_input.a.x, 21384u, 27195u) << (vec3<u32>(87138u, 7689u, 4294967295u) % vec3<u32>(32u))), vec3<u32>(~99026u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 18146u, u_input.a.x, 62042u)) % 32u), 0u, ~(u_input.a.x & 22884u)), false);
    return Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, 187f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-215f + 1180f))), _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(var_0.x, var_0.x)))), min(~var_2 | firstTrailingBit(var_2), vec3<u32>(var_2.x, u_input.a.x, var_2.x) & var_2), any(vec4<bool>(false, var_1.x, !var_1.x, var_1.x)), vec4<bool>(false, any(vec3<bool>(true, true, var_1.x)), !var_1.x, false)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, 0u, 0u) >> ((var_2 >> (vec3<u32>(53766u, 0u, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(var_2, var_2) << (~vec3<u32>(1u, var_2.x, u_input.a.x) % vec3<u32>(32u))), true, vec4<bool>((var_1.x && false) | (var_0.x < var_0.x), false, true, false)), true, !select(!select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false), false), select(select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(false, var_1.x, false, var_1.x)), !vec4<bool>(false, var_1.x, false, false), vec4<bool>(false, false, true, true)), !select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(false, var_1.x, var_1.x, true), false)), Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(ceil(258f)), var_0.x, -1442f, _wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, var_0.x, 1000f, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-863f, var_0.x, var_0.x, var_0.x)), var_1.x)))), vec3<u32>(1u, 17489u, firstLeadingBit(var_2.x)), true, vec4<bool>(func_3().x, true, true, !(!var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.b.b.x, 4294967295u, 1u), ~max(_wgslsmith_mult_vec2_u32(u_input.a & vec2<u32>(var_0.e.b.x, 20130u), vec2<u32>(var_0.b.b.x, var_0.e.b.x)), min(vec2<u32>(18153u, u_input.a.x), min(u_input.a, vec2<u32>(78345u, 0u)))), vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.b.b, vec3<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 73489u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u)), ~1u)), 92619u));
}

