struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f + _wgslsmith_f_op_f32(1197f + _wgslsmith_f_op_f32(-441f * 1776f)))), 1f, !(abs(min(0i, u_input.a)) > 1i), -countOneBits(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(58804i, u_input.a), vec2<i32>(u_input.a, -16985i)))));
    var var_1 = vec3<i32>(_wgslsmith_sub_i32(31675i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.d.x, -36584i, var_0.d.x), max(vec4<i32>(32913i, 1i, u_input.a, 47727i), vec4<i32>(7392i, -157i, -13107i, u_input.a))), var_0.d.x, ~u_input.a)), 0i, u_input.a);
    let var_2 = var_0;
    var_1 = firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-19519i >> (u_input.b.x % 32u), -48468i, -24771i), -_wgslsmith_add_vec3_i32(vec3<i32>(24214i, var_0.d.x, -2147483647i), vec3<i32>(var_2.d.x, var_2.d.x, -17763i)))) ^ (vec3<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(var_1.xz), vec2<i32>(1i, u_input.a) | vec2<i32>(-18358i, var_1.x)), firstLeadingBit(max(var_1.x, -21098i)), _wgslsmith_dot_vec2_i32(var_1.xx, vec2<i32>(56020i, 1i) ^ vec2<i32>(var_0.d.x, 1i))) >> ((u_input.b >> (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_3 = var_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1023f)) * var_0.a);
}

fn func_2(arg_0: bool) -> vec3<bool> {
    let var_0 = false;
    var var_1 = ~u_input.b.zy;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(func_3()), -107f, arg_0, abs(vec2<i32>(u_input.a, abs(2147483647i >> (var_1.x % 32u)))));
    var var_3 = !(false & all(!select(vec4<bool>(var_0, var_0, true, var_2.c), vec4<bool>(true, true, true, var_2.c), arg_0)));
    var var_4 = Struct_1(var_2.a, var_2.a, all(select(!vec4<bool>(arg_0, arg_0, var_0, var_0), vec4<bool>(any(vec2<bool>(true, false)), all(vec2<bool>(true, arg_0)), var_2.d.x == u_input.a, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(var_2.c, var_0, false, var_2.c), vec4<bool>(arg_0, var_2.c, var_0, false)), vec4<bool>(false, arg_0, arg_0, false), var_0))), _wgslsmith_mult_vec2_i32(vec2<i32>(~(-u_input.a), 855i), vec2<i32>(-46584i << (_wgslsmith_div_u32(u_input.c.x, var_1.x) % 32u), u_input.a)));
    return select(select(vec3<bool>(false, false, false), select(select(vec3<bool>(var_0, true, var_0), vec3<bool>(true, arg_0, true), false), vec3<bool>(all(vec4<bool>(var_4.c, false, false, false)), true, all(vec3<bool>(arg_0, false, true))), !all(vec2<bool>(true, true))), select(vec3<bool>(var_0, all(vec2<bool>(true, false)), any(vec3<bool>(false, true, true))), select(!vec3<bool>(var_4.c, var_4.c, var_4.c), !vec3<bool>(var_2.c, true, var_0), select(vec3<bool>(arg_0, arg_0, var_2.c), vec3<bool>(true, var_0, var_4.c), vec3<bool>(false, arg_0, var_2.c))), !vec3<bool>(var_0, var_0, var_0))), vec3<bool>(var_4.c, any(vec3<bool>(false, any(vec3<bool>(arg_0, false, var_4.c)), var_4.a <= -1353f)), true), true);
}

fn func_1() -> vec2<i32> {
    let var_0 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, false))), select(vec3<bool>(true, any(vec2<bool>(true, false)), true), func_2(true), func_2(true)), vec3<bool>((u_input.b.x > 68226u) || true, false, select(any(vec2<bool>(false, true)), all(vec4<bool>(false, true, false, true)), all(vec4<bool>(false, false, true, false))))), vec3<bool>(all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false), true)), true, all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))) || true), (func_2(3143u > u_input.c.x).x && false) || !(98011u != u_input.d.x));
    var var_1 = u_input.c;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(419f * -277f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(706f))))))));
    var_1 = vec4<u32>(firstTrailingBit(~4294967295u), ~countOneBits(_wgslsmith_sub_u32(var_1.x ^ 1u, 19958u)), 0u, ~(~abs(~0u)));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -738f);
    return ~_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, 1i ^ u_input.a), ~_wgslsmith_mod_vec2_i32(select(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, u_input.a), var_0.x), -vec2<i32>(u_input.a, -15083i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~vec4<i32>(u_input.a, -(-37670i ^ u_input.a), u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), func_1())));
    let var_1 = 17638u;
    var var_2 = Struct_1(1384f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(558f * _wgslsmith_f_op_f32(f32(-1f) * -1639f)), 516f)), true, firstTrailingBit(~vec2<i32>(~var_0.x, -1i)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1263f))) * _wgslsmith_f_op_f32(-var_2.b)));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-243f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -423f) + 682f)) + var_2.a) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-730f, 331f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.a), var_2.a, !var_2.c))) + -392f));
    var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec3<u32>(1u, _wgslsmith_sub_u32(u_input.d.x, 1u), 27612u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(sign(-677f)))) - _wgslsmith_f_op_f32(var_2.b * -1724f)))), ~(~select(vec4<i32>(-9667i, -2147483647i, u_input.a, 24158i), var_0, all(vec2<bool>(true, true)))));
}

