struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<u32> {
    var var_0 = 0i;
    var var_1 = u_input.c;
    var var_2 = _wgslsmith_sub_i32(u_input.e, u_input.a) & ~u_input.e;
    var_0 = -_wgslsmith_mod_i32(~u_input.a, countOneBits(1i));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-842f)) + _wgslsmith_f_op_f32(-991f + 734f))), 1f);
    return ~(min(vec4<u32>(32650u, max(1u, u_input.c), 75086u, ~57740u), max(~vec4<u32>(10089u, u_input.b, u_input.c, 4294967295u), vec4<u32>(u_input.b, 51185u, u_input.d, u_input.d))) << (firstLeadingBit(firstTrailingBit(vec4<u32>(4294967295u, 39154u, 1u, u_input.d))) % vec4<u32>(32u)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_5, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(921f, -377f))));
    var var_1 = func_3();
    var var_2 = Struct_5(Struct_1(arg_2.a.a, -4237i, true, arg_2.a.d));
    var var_3 = arg_3;
    var var_4 = arg_3;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(784f, arg_1)))))));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> vec2<i32> {
    var var_0 = vec2<f32>(arg_1, arg_1);
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(911f, _wgslsmith_f_op_f32(470f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + -1000f), arg_1))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 1514f) - vec2<f32>(var_0.x, -301f)) * vec2<f32>(arg_1, var_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(true, var_0.x, Struct_5(Struct_1(vec2<u32>(4294967295u, 11727u), u_input.a, false, vec2<bool>(arg_0.a, true))), Struct_3(arg_0, 47191i, Struct_1(vec2<u32>(1u, 0u), u_input.e, arg_0.a, vec2<bool>(arg_0.a, arg_0.a))))) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, 1000f), vec2<f32>(-631f, -407f))), firstLeadingBit(9867u) == u_input.c))));
    var var_1 = -select(vec2<i32>(reverseBits(u_input.a | -2147483647i), u_input.a), vec2<i32>(6290i, u_input.e << (17993u % 32u)), vec2<bool>(all(!vec3<bool>(true, arg_0.a, false)), false));
    var var_2 = select(select(select(vec3<bool>(arg_0.a, any(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), false), !(!vec3<bool>(false, arg_0.a, arg_0.a)), select(!vec3<bool>(true, arg_0.a, false), vec3<bool>(arg_0.a, arg_0.a, true), select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, false), arg_0.a))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, arg_0.a, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, false), select(vec3<bool>(false, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, false), false)), !(!vec3<bool>(true, false, arg_0.a)), !select(vec3<bool>(arg_0.a, false, true), vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(false, false, arg_0.a))), !any(vec4<bool>(true, arg_0.a, true, false))), select(!select(vec3<bool>(true, arg_0.a, arg_0.a), !vec3<bool>(true, false, arg_0.a), select(vec3<bool>(arg_0.a, true, false), vec3<bool>(arg_0.a, arg_0.a, true), arg_0.a)), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), arg_0.a), vec3<bool>(any(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), true, !arg_0.a), vec3<bool>(true, any(vec2<bool>(arg_0.a, false)), var_0.x >= var_0.x)), !select(!vec3<bool>(true, arg_0.a, false), select(vec3<bool>(arg_0.a, true, false), vec3<bool>(false, true, true), true), true)), select(!select(select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(true, true, false), vec3<bool>(arg_0.a, true, arg_0.a)), !vec3<bool>(arg_0.a, arg_0.a, true), select(vec3<bool>(false, arg_0.a, false), vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, false))), select(select(!vec3<bool>(true, false, arg_0.a), select(vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(true, arg_0.a, true), vec3<bool>(arg_0.a, arg_0.a, false)), true), select(select(vec3<bool>(false, arg_0.a, true), vec3<bool>(true, true, true), arg_0.a), vec3<bool>(true, true, arg_0.a), vec3<bool>(true, true, arg_0.a)), select(select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(false, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, false)), vec3<bool>(false, arg_0.a, false), select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, true), true))), vec3<bool>(arg_0.a, false, arg_0.a)));
    var var_3 = vec3<i32>(~1i, _wgslsmith_add_i32(u_input.e, u_input.a), min(u_input.a, var_1.x));
    return vec2<i32>(-firstTrailingBit(_wgslsmith_add_i32(max(21141i, 628i), -34046i)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-71968i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, u_input.e, u_input.e), vec3<i32>(var_3.x, u_input.e, 1i))), select(~vec2<i32>(1i, u_input.a), var_3.yy, select(vec2<bool>(false, false), var_2.yx, vec2<bool>(var_2.x, true)))), ~var_3.yx));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = Struct_2(true);
    var_0 = _wgslsmith_add_u32(arg_2.x, abs(36146u) ^ u_input.b);
    var var_2 = Struct_5(Struct_1(vec2<u32>(61222u, arg_2.x), i32(-1i) * -30306i, var_1.a, !(!select(vec2<bool>(var_1.a, false), vec2<bool>(var_1.a, false), var_1.a))));
    let var_3 = Struct_3(var_1, _wgslsmith_mod_i32(-37707i, -2147483647i | var_2.a.b) ^ 51798i, Struct_1(vec2<u32>(firstTrailingBit(19010u), arg_2.x), abs(u_input.e), !(select(u_input.c, 51919u, var_1.a) < 1u), vec2<bool>(_wgslsmith_sub_i32(8379i, arg_1.x) > arg_1.x, true)));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(20700u, _wgslsmith_mult_vec2_i32(func_1(Struct_2(true), 841f), countOneBits(~vec2<i32>(u_input.e, u_input.a))), abs(countOneBits((vec4<u32>(u_input.d, 1u, u_input.d, 0u) >> (vec4<u32>(u_input.b, 4294967295u, 1u, u_input.d) % vec4<u32>(32u))) ^ ~vec4<u32>(u_input.b, 1u, u_input.d, u_input.d))));
    let var_1 = Struct_1(vec2<u32>(u_input.d, ~u_input.b), -2147483647i, any(!vec3<bool>(true, true, true & var_0.a)), vec2<bool>(!any(!vec3<bool>(true, var_0.a, false)), var_0.a));
    var var_2 = Struct_4(var_0, Struct_1(vec2<u32>(8611u, u_input.b), ~(-var_1.b), var_0.a || (_wgslsmith_f_op_f32(639f - 177f) > _wgslsmith_f_op_f32(step(1304f, -244f))), var_1.d), select(_wgslsmith_mod_i32(func_1(Struct_2(true), -1816f).x, countOneBits(_wgslsmith_add_i32(var_1.b, -5084i))), u_input.e, true));
    let var_3 = vec4<u32>(var_1.a.x, ~var_1.a.x, firstTrailingBit(~firstTrailingBit(var_1.a.x)), ~1u);
    let var_4 = Struct_5(Struct_1(vec2<u32>(var_1.a.x | u_input.d, select(_wgslsmith_mult_u32(50724u, 0u), ~u_input.c, false)), ~(var_2.b.b << (u_input.c % 32u)), true, select(select(vec2<bool>(true, true), vec2<bool>(var_1.d.x, false), 4294967295u > u_input.c), select(var_2.b.d, var_2.b.d, var_0.a), true)));
    var_2 = Struct_4(Struct_2(!var_0.a), var_1, -_wgslsmith_div_i32(-53972i, 1i));
    let var_5 = 384i | var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(~(-61701i), _wgslsmith_add_i32(u_input.e, 2147483647i)) ^ abs(~vec2<i32>(u_input.a, -74976i)), ~(vec2<i32>(u_input.e, var_2.b.b) >> (var_1.a % vec2<u32>(32u)))), abs(vec4<i32>(var_2.c, -2147483647i, ~u_input.e << (var_4.a.a.x % 32u), _wgslsmith_add_i32(countOneBits(0i), var_1.b))), 294f, ~(~(~vec3<i32>(0i, var_2.c, u_input.a))));
}

