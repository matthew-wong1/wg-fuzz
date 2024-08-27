struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>) -> vec3<bool> {
    let var_0 = Struct_4(u_input.a.x, Struct_1(4294967295u), ~(~vec3<u32>(39236u, 72316u, 26698u)) ^ (firstLeadingBit(~vec3<u32>(1u, 52985u, 500u)) & select(max(vec3<u32>(1u, 42349u, 52811u), vec3<u32>(0u, 42075u, 0u)), select(vec3<u32>(48377u, 23708u, 40025u), vec3<u32>(26367u, 1u, 4294967295u), false), vec3<bool>(false, true, arg_0.x))));
    let var_1 = vec4<u32>(abs(~_wgslsmith_div_u32(1u, ~26178u)), var_0.c.x, _wgslsmith_mult_u32(var_0.c.x, ~var_0.c.x), abs(~(~var_0.c.x >> (0u % 32u))));
    var var_2 = _wgslsmith_sub_vec2_u32(firstLeadingBit(~firstTrailingBit(~var_1.zw)), ~(~min(var_1.zy, vec2<u32>(51960u, 83928u))));
    var_2 = var_0.c.yx;
    var_2 = countOneBits(~vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.c << (var_1.xwy % vec3<u32>(32u)), vec3<u32>(57109u, var_0.b.a, 64413u)), 0u));
    return !vec3<bool>(false, any(vec4<bool>(false, arg_0.x | false, false, false)), true);
}

fn func_2(arg_0: Struct_5) -> f32 {
    var var_0 = select(~(~abs(~vec2<u32>(0u, 92546u))), vec2<u32>(~(~(~arg_0.a.a)), 0u), vec2<bool>(true, !any(func_3(vec2<bool>(true, true)))));
    var_0 = ~(~select(~(vec2<u32>(1u, var_0.x) >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(18429u, 4294967295u), arg_0.c.c.zy | arg_0.c.c.zz), ~var_0.x == _wgslsmith_dot_vec2_u32(arg_0.c.c.xy, vec2<u32>(37707u, 1u))));
    var var_1 = all(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, 4294967295u < arg_0.c.b.a, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), 20835i != arg_0.c.a), vec4<bool>(any(vec2<bool>(true, true)), true, true, true))));
    var var_2 = Struct_5(Struct_1(2693u), arg_0.b, Struct_4(arg_0.c.a, Struct_1(~(~35500u)), arg_0.c.c));
    var_2 = Struct_5(arg_0.c.b, Struct_3(~1u, Struct_1(~41865u ^ min(0u, var_2.b.a))), Struct_4(-(~arg_0.c.a << (~var_0.x % 32u)), arg_0.a, select(var_2.c.c, max(vec3<u32>(var_0.x, 4294967295u, 1u), vec3<u32>(arg_0.b.a, 47851u, 4294967295u)), vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -555f));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_5(Struct_1(27282u), Struct_3(12692u, Struct_1(55487u)), Struct_4(5524i, Struct_1(4294967295u), vec3<u32>(0u, 8206u, 1u))))) + _wgslsmith_div_f32(874f, -443f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -442f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * -148f), 922f)))));
    var var_1 = -38461i;
    var var_2 = vec2<i32>(1i, _wgslsmith_mod_i32(u_input.a.x ^ _wgslsmith_add_i32(1i, -2147483647i), ~(i32(-1i) * -u_input.a.x)));
    var var_3 = Struct_1(~reverseBits(~1u));
    var var_4 = !all(vec4<bool>(all(vec3<bool>(false, true, true)) | true, !any(vec3<bool>(true, true, true)), true, true));
    return Struct_3(var_3.a, Struct_1(var_3.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -784f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(560f)) + -394f) * arg_3)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(func_2(Struct_5(arg_2.a, arg_0, Struct_4(2568i, Struct_1(630u), vec3<u32>(72111u, 55638u, 34090u)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3)) + _wgslsmith_div_f32(238f, arg_3))))));
    let var_1 = Struct_4(abs(-u_input.a.x), arg_0.b, _wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_1.a.a ^ arg_1.a.a, 4294967295u), ~select(vec3<u32>(arg_2.a.a, arg_1.a.a, arg_2.a.a), vec3<u32>(128789u, 0u, arg_1.a.a), true)) << (vec3<u32>(4294967295u ^ arg_2.a.a, 23139u, arg_0.b.a) % vec3<u32>(32u)));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(1000f, -196f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_5(arg_2.a, Struct_3(22264u, Struct_1(91272u)), var_1))))));
    var_0 = vec2<f32>(arg_3, -1071f);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-260f)), _wgslsmith_f_op_f32(-var_0.x), any(vec3<bool>(true, false, true))))))));
    return _wgslsmith_dot_vec3_u32(var_1.c ^ _wgslsmith_mult_vec3_u32(var_1.c, select(var_1.c, countOneBits(vec3<u32>(1u, 4294967295u, 1u)), true)), ~(~firstLeadingBit(vec3<u32>(43037u, 1u, 1u)) >> (vec3<u32>(~arg_1.a.a, var_1.c.x, arg_0.b.a) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, _wgslsmith_mod_u32(1u, 1u)), firstLeadingBit(_wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, 40962u), vec2<u32>(4294967295u, 43398u), false), vec2<u32>(10382u, 8966u))));
    var_0 = func_4(func_1(), Struct_2(Struct_1(~27676u)), Struct_2(func_1().b), _wgslsmith_f_op_f32(floor(2809f)));
    let var_1 = Struct_2(Struct_1(~5157u));
    var_0 = var_1.a.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(279f, 373f, _wgslsmith_div_f32(115f, 458f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -271f), _wgslsmith_f_op_f32(trunc(767f)), _wgslsmith_f_op_f32(-171f * -128f))))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-183f * var_2.x), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_5(var_1.a, Struct_3(0u, Struct_1(4294967295u)), Struct_4(u_input.a.x, Struct_1(var_1.a.a), vec3<u32>(var_1.a.a, 4294967295u, 1u))))))), reverseBits(29691u));
}

