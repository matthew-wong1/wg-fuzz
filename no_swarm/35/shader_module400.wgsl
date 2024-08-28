struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = 22619u;
    var_0 = 4294967295u;
    var_0 = u_input.c.x;
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.b, arg_1.b, 584f, -620f) * arg_0.a))), Struct_1(vec3<i32>(arg_1.a.x, 6125i, arg_0.e.a.x), arg_0.d.b, arg_0.b.c), false, arg_0.e, arg_1), arg_0.e, arg_0.e, arg_0);
    let var_2 = var_1.a;
    return !arg_0.d.c.zzz;
}

fn func_3(arg_0: bool, arg_1: bool) -> vec2<bool> {
    let var_0 = Struct_4(!vec3<bool>(false, func_2(Struct_2(vec4<f32>(700f, -171f, -255f, 1056f), Struct_1(vec3<i32>(-47749i, u_input.d.x, u_input.a.x), 343f, vec4<bool>(arg_1, arg_1, true, arg_0)), false, Struct_1(vec3<i32>(u_input.b.x, u_input.d.x, u_input.a.x), 1567f, vec4<bool>(true, true, arg_1, true)), Struct_1(vec3<i32>(2104i, u_input.d.x, -24978i), -268f, vec4<bool>(arg_0, arg_0, true, false))), Struct_1(vec3<i32>(24805i, u_input.d.x, u_input.a.x), 1714f, vec4<bool>(true, arg_0, arg_1, true))).x, !(!arg_0)), all(!(!vec4<bool>(false, false, arg_1, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(707f, 1000f, -1047f, -513f)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2017f)) + _wgslsmith_f_op_f32(-930f - 1000f)), 570f, -454f)));
    let var_1 = Struct_3(Struct_2(vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), -1548f)), Struct_1(firstLeadingBit(select(u_input.a, vec3<i32>(u_input.b.x, 2147483647i, -4623i), vec3<bool>(true, arg_1, false))), var_0.c.x, !(!vec4<bool>(arg_1, arg_0, true, true))), true, Struct_1(u_input.b.wxz, -323f, vec4<bool>(true, true, true, true)), Struct_1(-vec3<i32>(u_input.b.x, -88584i, u_input.a.x), 1599f, select(vec4<bool>(false, arg_1, true, true), !vec4<bool>(true, true, arg_0, false), !arg_0))), Struct_1(~u_input.b.zwy, var_0.c.x, vec4<bool>(true, true, true, true)), Struct_1(vec3<i32>(-23989i, reverseBits(_wgslsmith_mult_i32(u_input.d.x, 1i)), -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c.x, var_0.c.x))), !(!select(vec4<bool>(arg_0, false, false, true), vec4<bool>(var_0.b, false, true, var_0.b), false))), Struct_2(var_0.c, Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, 29439i) & u_input.b.wzz, reverseBits(vec3<i32>(u_input.b.x, -21456i, u_input.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), select(!vec4<bool>(var_0.b, false, true, true), select(vec4<bool>(arg_1, false, false, false), vec4<bool>(var_0.a.x, arg_0, false, true), arg_0), select(vec4<bool>(false, true, arg_1, true), vec4<bool>(false, var_0.b, true, arg_0), vec4<bool>(true, var_0.b, arg_1, arg_1)))), !all(vec2<bool>(true, true)), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, -18016i, u_input.a.x), u_input.d), var_0.c.x, vec4<bool>(true, true & var_0.b, false, arg_1 & arg_0)), Struct_1(vec3<i32>(1i, ~u_input.b.x, ~(-9236i)), -1204f, !select(vec4<bool>(var_0.a.x, true, false, arg_0), vec4<bool>(false, arg_1, var_0.b, var_0.b), vec4<bool>(arg_0, true, false, false)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.b.b - var_1.c.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-556f * var_1.a.b.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.a.x))), 1421f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1014f, _wgslsmith_f_op_f32(var_1.a.b.b + 478f))) + 621f)) - var_1.d.a);
    let var_3 = var_1.c;
    var var_4 = _wgslsmith_add_i32(~44609i, -31295i);
    return vec2<bool>(all(vec4<bool>(var_3.c.x, arg_1, any(select(var_3.c, vec4<bool>(arg_1, false, var_0.a.x, true), var_3.c.x)), any(!vec2<bool>(var_1.d.e.c.x, false)))), var_1.a.d.c.x);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_4(select(!func_2(Struct_2(vec4<f32>(-1555f, 1000f, 1150f, -505f), Struct_1(vec3<i32>(-22806i, 8341i, -1i), 1562f, vec4<bool>(true, true, false, true)), true, Struct_1(vec3<i32>(23114i, -1i, -2147483647i), -103f, vec4<bool>(true, false, true, true)), Struct_1(vec3<i32>(2147483647i, 1i, u_input.d.x), 223f, vec4<bool>(true, true, false, true))), Struct_1(u_input.a, -2664f, vec4<bool>(true, true, true, false))), vec3<bool>(all(func_3(true, true)), ~18065u == ~u_input.e.x, (22168u <= u_input.e.x) || false), true), true, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1779f, 1000f))), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2440f)) - _wgslsmith_f_op_f32(-596f + -244f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-773f + _wgslsmith_f_op_f32(523f * 638f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-823f)))));
    var var_1 = vec2<i32>(i32(-1i) * -8658i, 10104i);
    let var_2 = select(!(!select(vec4<bool>(false, var_0.b, var_0.b, var_0.b), vec4<bool>(true, true, true, true), true)), vec4<bool>(func_3(var_0.a.x, any(!var_0.a.zz)).x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-453f - 107f))) <= -1255f, var_0.b && (false || any(var_0.a)), true), select(select(select(!vec4<bool>(false, false, true, var_0.a.x), select(vec4<bool>(false, var_0.b, true, var_0.a.x), vec4<bool>(var_0.b, true, false, var_0.a.x), true), func_3(true, var_0.a.x).x), vec4<bool>(u_input.c.x > u_input.e.x, false, var_0.b || true, func_2(Struct_2(vec4<f32>(var_0.c.x, var_0.c.x, 1994f, 1000f), Struct_1(vec3<i32>(2147483647i, -14256i, u_input.d.x), -1831f, vec4<bool>(var_0.b, false, true, false)), var_0.b, Struct_1(vec3<i32>(0i, u_input.b.x, -48567i), -1223f, vec4<bool>(var_0.b, false, var_0.b, var_0.a.x)), Struct_1(vec3<i32>(0i, 12995i, u_input.b.x), -118f, vec4<bool>(true, var_0.a.x, true, true))), Struct_1(vec3<i32>(-78882i, 28473i, 1157i), 594f, vec4<bool>(false, true, var_0.b, false))).x), true), vec4<bool>(true, !(!var_0.a.x), _wgslsmith_f_op_f32(trunc(-267f)) > _wgslsmith_div_f32(var_0.c.x, var_0.c.x), any(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x))), (0u ^ ~u_input.c.x) != _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x, 13075u, u_input.e.x), vec3<u32>(u_input.c.x, u_input.c.x, 1u)), ~vec3<u32>(u_input.c.x, u_input.e.x, 47592u))));
    var var_3 = reverseBits(vec3<i32>(countOneBits(38523i), (-2147483647i & u_input.d.x) ^ (u_input.b.x >> ((u_input.e.x ^ u_input.c.x) % 32u)), ~(-_wgslsmith_mult_i32(u_input.d.x, 1i))));
    let var_4 = 4294967295u;
    return Struct_2(_wgslsmith_f_op_vec4_f32(sign(var_0.c)), Struct_1(_wgslsmith_div_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(u_input.a, u_input.d)), vec3<i32>(var_1.x | 1262i, u_input.d.x, -2147483647i)), _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(-496f - var_0.c.x)), select(vec4<bool>(false, var_3.x != var_1.x, any(vec2<bool>(true, true)), true), select(vec4<bool>(var_0.b, false, var_2.x, false), vec4<bool>(var_2.x, true, false, false), !vec4<bool>(var_2.x, false, true, var_0.b)), !(!var_2.x))), true || (true || !var_2.x), Struct_1(vec3<i32>(u_input.a.x, firstLeadingBit(1i), abs(~var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1586f * _wgslsmith_div_f32(-593f, var_0.c.x))), select(vec4<bool>(false, var_0.a.x, select(var_2.x, var_2.x, false), true), !vec4<bool>(true, var_0.a.x, var_2.x, var_0.a.x), vec4<bool>(var_2.x, func_3(var_0.b, var_0.b).x, var_0.b || false, var_0.a.x))), Struct_1(~(~vec3<i32>(var_3.x, -43431i, 15072i)) | _wgslsmith_div_vec3_i32(select(vec3<i32>(var_1.x, 1i, 1i), vec3<i32>(u_input.a.x, -530i, 2912i), vec3<bool>(true, var_0.a.x, var_2.x)), _wgslsmith_mult_vec3_i32(u_input.d, u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c.x)) - var_0.c.x)), !vec4<bool>(var_0.a.x, var_0.c.x == -1308f, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~abs(13765i), -7364i));
}

