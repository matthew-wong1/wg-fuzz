struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(vec2<bool>(!all(vec4<bool>(true, false, true, false)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(944f - 307f), _wgslsmith_f_op_f32(1000f + 2794f))) + -439f)), Struct_1(u_input.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b, -606f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -810f), 1765f)))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-(-arg_2 << (~u_input.a.x % 32u)), -arg_2, 15082i), max(vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(0i, -1i, arg_2)), ~countOneBits(abs(vec3<i32>(0i, 17565i, arg_2)))));
    var var_1 = -47738i;
    let var_2 = Struct_2(arg_1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-122f * arg_1.a)), arg_1.a)), Struct_1(vec2<u32>(arg_1.c.a.x, ~(~u_input.a.x))), select(arg_1.d, select(vec2<bool>(!arg_1.d.x, true), select(vec2<bool>(true, true), arg_1.d, !arg_1.d.x), !arg_1.d), !any(vec4<bool>(true, arg_1.d.x, true, arg_1.d.x)) && (var_0.x != 2147483647i)));
    var_1 = -1i;
    var_1 = -(i32(-1i) * -reverseBits(-var_0.x));
    return (_wgslsmith_clamp_i32(_wgslsmith_mod_i32(i32(-1i) * -1365i, min(34012i, arg_2)), _wgslsmith_dot_vec2_i32(var_0.zy, vec2<i32>(var_0.x, -2147483647i)), select(-2147483647i, ~arg_2, true)) << ((_wgslsmith_div_u32(_wgslsmith_sub_u32(0u, 0u), 51216u | arg_0) << (0u % 32u)) % 32u)) << (_wgslsmith_mod_u32(u_input.a.x, var_2.c.a.x) % 32u);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    var var_0 = func_4(0u, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), -630f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) + _wgslsmith_f_op_f32(func_3())), Struct_1(~_wgslsmith_sub_vec2_u32(u_input.a, arg_0.xz)), vec2<bool>(true, all(vec4<bool>(true, false, true, true)))), ~1995i);
    var_0 = 1i;
    var var_1 = ~(countOneBits(-26837i >> (u_input.a.x % 32u)) << (max(_wgslsmith_mult_u32(u_input.a.x, 76731u), u_input.a.x | 54673u) % 32u)) == _wgslsmith_sub_i32(abs(-(2147483647i >> (arg_0.x % 32u))), 1i);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(122f + _wgslsmith_f_op_f32(min(950f, -410f)))) + _wgslsmith_f_op_f32(f32(-1f) * -601f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))) + -1000f);
    let var_2 = _wgslsmith_f_op_f32(trunc(arg_1));
    return ~(~(countOneBits(firstLeadingBit(arg_0.x)) >> (u_input.a.x % 32u)));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_3(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), 200f, Struct_1(vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(54535u, 7130u) ^ _wgslsmith_mult_u32(u_input.a.x, 1u))));
    var_0 = Struct_3(!(!(!select(vec2<bool>(true, var_0.a.x), var_0.a, var_0.a))), _wgslsmith_f_op_f32(min(-666f, var_0.b)), Struct_1(vec2<u32>(func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 0u, 0u, var_0.c.a.x), vec4<u32>(var_0.c.a.x, 0u, 4294967295u, 1123u)), _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_div_u32(1u, var_0.c.a.x) >> (var_0.c.a.x % 32u))));
    let var_1 = !(!vec4<bool>(all(select(vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, true))), false, true, !all(vec4<bool>(false, var_0.a.x, false, var_0.a.x))));
    var_0 = Struct_3(vec2<bool>(any(!select(vec4<bool>(false, true, var_1.x, var_0.a.x), var_1, true)), var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(175f + -457f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -480f)))), var_0.c);
    var var_2 = vec3<bool>(true, true, true);
    return Struct_2(var_0.b, 238f, Struct_1(u_input.a), vec2<bool>(var_2.x, any(select(var_1, var_1, vec4<bool>(true, true, false, false)))));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    return func_1().c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(((~vec2<i32>(0i, 11579i) << (countOneBits(u_input.a) % vec2<u32>(32u))) | _wgslsmith_mod_vec2_i32(-vec2<i32>(-19608i, -39999i), -vec2<i32>(2147483647i, 5728i))) << (vec2<u32>(~(~27145u), 0u << (firstTrailingBit(u_input.a.x) % 32u)) % vec2<u32>(32u)));
    let var_1 = u_input.a;
    let var_2 = func_5(func_1());
    let var_3 = var_2;
    let var_4 = -322f;
    let var_5 = _wgslsmith_sub_i32(var_0.x ^ (i32(-1i) * -58260i), -30278i);
    let var_6 = _wgslsmith_f_op_f32(var_4 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -359f) - _wgslsmith_f_op_f32(round(var_4)))) - func_1().a));
    var var_7 = (func_1().d.x | true) && false;
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(-33598i, -61394i), var_6);
}

