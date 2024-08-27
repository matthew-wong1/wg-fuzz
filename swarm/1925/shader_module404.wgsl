struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(1u, -28900i, vec4<f32>(-1035f, 166f, 851f, -146f), 26532u), Struct_1(25504u, 2147483647i, vec4<f32>(-423f, -1053f, 457f, -1066f), 32996u)), vec2<u32>(0u, 0u), vec4<f32>(596f, -871f, -617f, 303f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: vec3<bool>) -> vec4<bool> {
    var var_0 = vec4<i32>(-8916i, -2147483647i, -30365i, (global0.a.a.b | ~u_input.a.x) << (global0.b.x % 32u));
    var_0 = u_input.a;
    var var_1 = -1i ^ global0.a.a.b;
    var var_2 = firstLeadingBit(vec3<i32>(arg_1.a.a.b.b, -(~_wgslsmith_clamp_i32(arg_1.a.a.a.b, u_input.a.x, arg_1.a.a.b.b)), 10462i | global0.a.b.b));
    let var_3 = Struct_1(arg_1.b.a.a.d, ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(47342i, global0.a.b.b), vec2<i32>(321i, -52392i)) >> (5830u % 32u)), arg_1.a.a.a.c, _wgslsmith_sub_u32(~abs(1u) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(14559u, global0.a.a.a), global0.b), ~arg_1.b.a.a.d));
    return !(!(!select(vec4<bool>(arg_1.c, true, false, arg_2.x), !vec4<bool>(false, false, arg_2.x, false), global0.a.b.b < -2147483647i)));
}

fn func_3() -> vec3<bool> {
    return select(vec3<bool>(select(all(vec2<bool>(false, true)), any(vec3<bool>(true, false, true)), true) || (all(vec2<bool>(false, true)) && false), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.b.a, 0u, 123475u), vec3<u32>(global0.a.a.d, 44123u, global0.a.b.a)) == (global0.a.a.d >> (global0.b.x % 32u)), 15591i >= -min(u_input.a.x, 36998i)), !vec3<bool>(any(func_2(global0.b.x, Struct_4(Struct_3(Struct_2(global0.a.b, Struct_1(global0.a.a.d, 0i, vec4<f32>(-1921f, global0.c.x, 2676f, 368f), 0u)), vec2<u32>(0u, 16904u), global0.a.b.c), Struct_3(global0.a, vec2<u32>(global0.b.x, 84681u), global0.a.b.c), true), vec3<bool>(false, true, false)).wwz), any(vec4<bool>(true, true, true, true)), true), !(!func_2(global0.a.b.d, Struct_4(Struct_3(global0.a, vec2<u32>(30760u, global0.a.a.d), global0.c), Struct_3(global0.a, vec2<u32>(global0.a.a.d, 22825u), vec4<f32>(global0.a.a.c.x, global0.c.x, global0.c.x, 258f)), true), vec3<bool>(false, false, true)).xxy));
}

fn func_1() -> Struct_3 {
    let var_0 = select(select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), func_2(global0.b.x, Struct_4(Struct_3(global0.a, vec2<u32>(global0.a.a.d, global0.b.x), global0.a.b.c), Struct_3(global0.a, vec2<u32>(4294967295u, 24561u), global0.c), false), vec3<bool>(false, false, true)), any(vec2<bool>(false, false))), select(func_2(58554u, Struct_4(Struct_3(Struct_2(global0.a.a, global0.a.a), global0.b, global0.a.b.c), Struct_3(Struct_2(Struct_1(global0.b.x, global0.a.a.b, global0.a.a.c, 46858u), Struct_1(global0.a.b.d, global0.a.b.b, global0.a.b.c, 0u)), global0.b, global0.a.b.c), true), vec3<bool>(false, false, false)), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true)), !vec4<bool>(global0.a.a.b <= -2147483647i, true, true, true), func_2(~_wgslsmith_div_u32(global0.b.x, 1u), Struct_4(Struct_3(global0.a, vec2<u32>(56719u, 4294967295u), vec4<f32>(global0.a.b.c.x, global0.c.x, global0.a.b.c.x, -2189f)), Struct_3(global0.a, global0.b, vec4<f32>(global0.c.x, global0.c.x, 486f, global0.c.x)), select(true, true, false)), select(vec3<bool>(true, true, true), func_3(), vec3<bool>(false, false, true)))), func_2(global0.a.b.a, Struct_4(Struct_3(global0.a, vec2<u32>(global0.a.a.a, 89531u), _wgslsmith_f_op_vec4_f32(ceil(global0.c))), Struct_3(Struct_2(global0.a.a, Struct_1(13638u, u_input.a.x, global0.a.b.c, global0.b.x)), max(global0.b, vec2<u32>(0u, 0u)), _wgslsmith_f_op_vec4_f32(-global0.a.b.c)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false))), vec3<bool>(true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), func_2(4294967295u, Struct_4(Struct_3(Struct_2(global0.a.a, global0.a.a), global0.b, vec4<f32>(global0.a.b.c.x, -726f, 114f, 1120f)), Struct_3(global0.a, vec2<u32>(global0.b.x, 4294967295u), vec4<f32>(1460f, global0.a.a.c.x, 221f, -892f)), false), vec3<bool>(true, true, true))), select(func_2(global0.b.x, Struct_4(Struct_3(global0.a, global0.b, global0.c), Struct_3(Struct_2(global0.a.a, global0.a.a), vec2<u32>(global0.b.x, global0.a.b.a), global0.a.b.c), true), vec3<bool>(true, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true)), global0.b.x < global0.a.b.d)));
    global0 = Struct_3(global0.a, reverseBits(abs(max(_wgslsmith_div_vec2_u32(vec2<u32>(global0.b.x, global0.b.x), vec2<u32>(35315u, global0.b.x)), countOneBits(global0.b)))), global0.c);
    let var_1 = global0.b.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(227f, _wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(global0.a.a.c.x - -508f))) - vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), -1487f)));
    global0 = Struct_3(Struct_2(Struct_1(~1u, global0.a.b.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1402f, global0.a.b.c.x, -1684f, global0.a.a.c.x))) + vec4<f32>(var_2.x, -515f, var_2.x, var_2.x)), select(13264u, 20594u, any(var_0))), Struct_1(~global0.a.a.a, _wgslsmith_mult_i32(abs(global0.a.a.b), global0.a.b.b), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.b.c.x, var_2.x, global0.c.x, -707f))))), ~(~global0.b.x))), ~(~countOneBits(global0.b)), global0.c);
    return Struct_3(global0.a, global0.b, _wgslsmith_f_op_vec4_f32(sign(global0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(max(_wgslsmith_div_i32(_wgslsmith_mult_i32(41957i, u_input.a.x), firstLeadingBit(37165i)), firstLeadingBit(firstTrailingBit(u_input.a.x))), global0.a.b.b | (max(8126i, ~(-45747i)) >> (global0.b.x % 32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -478f)))));
    let var_2 = vec4<u32>(~31721u, _wgslsmith_clamp_u32(select(4294967295u, abs(global0.a.b.d) & select(20079u, 7803u, true), (global0.b.x << (26454u % 32u)) >= ~global0.a.b.a), global0.b.x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, 9654u, 54785u), vec3<u32>(global0.a.b.a, global0.b.x, global0.b.x)))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(global0.b.x, global0.b.x, 16467u, 1u) | vec4<u32>(4294967295u, global0.b.x, 77659u, global0.a.b.d)), ~select(vec4<u32>(26324u, global0.a.b.a, 4294967295u, global0.b.x), vec4<u32>(64223u, global0.b.x, global0.b.x, 30237u), true)), 41665u), global0.a.b.a);
    var var_3 = global0.c.x;
    var_3 = _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2304f - -240f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, var_1) - 251f))));
    let var_4 = Struct_2(global0.a.a, Struct_1(~_wgslsmith_sub_u32(~global0.a.b.d, 0u), max(-2847i, -5333i), vec4<f32>(_wgslsmith_f_op_f32(global0.c.x * -2320f), 120f, global0.c.x, _wgslsmith_f_op_f32(-var_1)), 44747u));
    var var_5 = func_1();
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1, var_1), var_5.a.b.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1588f))) - _wgslsmith_f_op_f32(f32(-1f) * -1406f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-var_0 | ~(-2147483647i))));
}

