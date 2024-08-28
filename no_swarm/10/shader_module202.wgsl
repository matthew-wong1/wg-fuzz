struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    let var_0 = select(vec2<bool>(false, false), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), u_input.a == min(firstLeadingBit(select(41813u, 4294967295u, true)), max(u_input.a, ~0u)));
    let var_1 = false;
    let var_2 = abs(firstTrailingBit(vec4<u32>(100857u, u_input.a, 22969u, u_input.a)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -641f))), _wgslsmith_f_op_f32(f32(-1f) * -763f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2132f))), -668f))), -1513f);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1383f), _wgslsmith_f_op_f32(f32(-1f) * -671f));
    return ~(_wgslsmith_sub_i32(~(-1i << (u_input.a % 32u)), ~abs(16258i)) ^ max(firstLeadingBit(abs(-47305i)), -1i));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_3(arg_0.a, select(0i, max(arg_2.x, -arg_3.a), !any(vec2<bool>(true, true))), firstTrailingBit(-27915i), arg_0.a.a);
    let var_1 = ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(3390u, ~u_input.a, 1u, ~u_input.a), reverseBits(vec4<u32>(0u, 1u, u_input.a, u_input.a)), vec4<u32>(_wgslsmith_div_u32(9412u, u_input.a), 95352u, firstLeadingBit(0u), u_input.a << (0u % 32u))) & _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, 11566u, 1u, u_input.a)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 98209u, u_input.a, 42879u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 36688u, 35523u, 4294967295u), vec4<u32>(u_input.a, 31610u, 18204u, u_input.a)))));
    var var_2 = arg_0.a;
    var var_3 = -abs(_wgslsmith_mult_i32(~(-var_0.c), -46204i));
    var var_4 = Struct_2(var_0.c);
    return firstLeadingBit(firstTrailingBit(~arg_2.x));
}

fn func_2() -> Struct_3 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = abs(2147483647i);
    var var_2 = Struct_3(Struct_2(-var_1), _wgslsmith_div_i32(min(var_1, -39300i), -2147483647i), reverseBits(var_1), func_4(Struct_3(Struct_2(-18217i), func_3(), 1i, reverseBits(var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-938f, 410f)) + _wgslsmith_f_op_f32(max(-945f, 267f))), vec4<i32>(i32(-1i) * -10839i, var_1, var_1, ~var_1), Struct_1(i32(-1i) * -47259i, true, _wgslsmith_f_op_f32(f32(-1f) * -2124f))) << (10209u % 32u));
    let var_3 = var_0.x;
    let var_4 = var_0.x;
    return Struct_3(var_2.a, i32(-1i) * -_wgslsmith_sub_i32(abs(var_2.b), _wgslsmith_add_i32(-1i, -2147483647i)), ~reverseBits(var_1), 40831i);
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: i32) -> Struct_3 {
    let var_0 = func_2().a;
    let var_1 = 9228i;
    var var_2 = Struct_1(-10878i, ~u_input.a > ~select(0u, ~u_input.a, false), 500f);
    var_2 = Struct_1(-arg_2, any(select(!select(vec3<bool>(var_2.b, false, true), vec3<bool>(true, var_2.b, var_2.b), false), vec3<bool>(!var_2.b, !var_2.b, true), var_2.b)), arg_1);
    var_2 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_2.a, -32858i), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-20527i, arg_2), _wgslsmith_mod_vec2_i32(vec2<i32>(var_1, -1i), vec2<i32>(-25149i, -1i))), _wgslsmith_clamp_i32(min(-53469i, var_0.a), 32185i, 1i))), any(!vec2<bool>(all(vec4<bool>(true, true, var_2.b, true)), !var_2.b)), -654f);
    return func_2();
}

fn func_6(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: bool) -> Struct_2 {
    let var_0 = func_5(func_5(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -590f), ~(-arg_0.b)), -298f, abs(arg_0.b));
    let var_1 = func_5(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-144f)))), func_5(var_0, 1292f, i32(-1i) * -2147483647i).c).a;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1590f + 1f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -323f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(302f * -2475f))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2), 616f)), _wgslsmith_f_op_f32(trunc(var_2)), var_2 <= _wgslsmith_f_op_f32(var_2 - 1145f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_2)), var_2))))) + -1602f);
    var var_4 = reverseBits(select(abs(select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 30679u, u_input.a, 14623u), vec4<u32>(u_input.a, 1u, 37730u, u_input.a)), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) % vec4<u32>(32u)), true)), countOneBits(abs(firstTrailingBit(vec4<u32>(u_input.a, 20931u, 66949u, 1u)))), false));
    return var_0.a;
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: f32) -> f32 {
    let var_0 = func_6(func_5(func_2(), -1085f, -1i), select(select(vec2<bool>(arg_1.x < 0i, any(vec4<bool>(arg_0, true, false, false))), !(!vec2<bool>(true, arg_0)), vec2<bool>(arg_0, arg_0)), !select(vec2<bool>(false, arg_0), vec2<bool>(true, arg_0), !vec2<bool>(arg_0, arg_0)), false), !arg_0);
    let var_1 = _wgslsmith_add_u32(u_input.a, 11738u);
    var var_2 = vec2<u32>(u_input.a, u_input.a);
    var var_3 = reverseBits(1i >> (~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_2.x, 4294967295u, 10135u), vec4<u32>(var_1, 0u, u_input.a, var_2.x))) % 32u));
    var var_4 = Struct_2(abs(arg_1.x));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -567f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, vec2<i32>(2147483647i, 1i), -309f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1408f * -1302f), -1115f))))));
    var_0 = _wgslsmith_f_op_f32(abs(956f));
    let var_1 = u_input.a;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1081f)), _wgslsmith_f_op_f32(max(-1044f, -1000f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(true, select(vec2<i32>(-41192i, -2147483647i), vec2<i32>(-37937i, -28000i), true), _wgslsmith_f_op_f32(f32(-1f) * -722f))))), true)), -206f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -372f))) - -411f) >= -1492f));
    let var_2 = _wgslsmith_mult_i32(i32(-1i) * -1i, reverseBits(-1i));
    var var_3 = func_2();
    var var_4 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_2, var_2) | vec3<i32>(var_2, 1i, var_3.a.a), -vec3<i32>(-2147483647i, var_2, -62579i))), var_3.c & (-34592i & max(var_3.a.a, 2147483647i)), 2147483647i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(335f)) * _wgslsmith_f_op_f32(f32(-1f) * -2853f)), _wgslsmith_f_op_f32(-547f - 2887f))))), vec2<i32>(1i, var_3.b));
}

