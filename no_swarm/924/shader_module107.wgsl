struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = !vec2<bool>(true == (_wgslsmith_mult_u32(19112u, u_input.a) != firstLeadingBit(u_input.a)), any(vec3<bool>(true, true, true)));
    var var_1 = firstTrailingBit(4294967295u);
    var var_2 = vec4<u32>(abs(_wgslsmith_mod_u32(countOneBits(1u), ~(~17075u))), _wgslsmith_mult_u32(u_input.a, _wgslsmith_clamp_u32(u_input.a, ~abs(7787u), u_input.a)), 55559u, 4294967295u);
    var_0 = vec2<bool>(any(select(select(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, true, false, false), false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), var_0.x), false), select(!vec4<bool>(false, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, true, var_0.x, false), var_0.x), !(!vec4<bool>(false, true, var_0.x, var_0.x)))), !all(vec3<bool>(u_input.b.x <= u_input.e, select(var_0.x, var_0.x, var_0.x), var_0.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), vec3<f32>(-716f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-419f * -139f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(775f + -1000f)))))));
    return u_input.a;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> f32 {
    let var_0 = select(vec2<bool>(true, true), !(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, false))), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), arg_0 <= arg_0), all(vec3<bool>(true, false, false)) && true)));
    var var_1 = (~arg_1.x >> (1u % 32u)) ^ ~(-2147483647i);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -129f), !vec3<bool>(var_0.x, false, !all(vec4<bool>(var_0.x, var_0.x, false, false))));
    let var_3 = u_input.b.xy >> (vec2<u32>(max(4294967295u, ~u_input.a), ~func_3()) % vec2<u32>(32u));
    let var_4 = 4294967295u < u_input.a;
    return _wgslsmith_f_op_f32(-var_2.a);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(arg_0.x, select(vec3<bool>(true, any(vec2<bool>(true, true)), false), vec3<bool>(arg_2 != -93257i, all(vec3<bool>(arg_1.x, arg_3.b.x, false)), !arg_3.b.x), select(select(vec3<bool>(arg_3.b.x, arg_1.x, true), arg_3.b, arg_1.x), select(arg_3.b, arg_1, arg_3.b.x), true))), _wgslsmith_div_u32(4294967295u, 57273u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(191f)) - arg_0.x), !vec3<bool>(true, arg_1.x & arg_1.x, arg_3.b.x || arg_1.x)), Struct_1(_wgslsmith_f_op_f32(-1276f + -420f), vec3<bool>(arg_1.x, arg_1.x && !arg_1.x, !arg_3.b.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.a, 362f, var_0.d.a, -1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.a, -392f, 1000f, -565f))))));
    let var_2 = var_0;
    let var_3 = vec3<bool>(false, _wgslsmith_f_op_f32(exp2(var_2.c.a)) < arg_3.a, all(vec4<bool>(arg_3.b.x, false, arg_3.b.x, 0u != firstTrailingBit(var_2.b))));
    let var_4 = var_3.x;
    return Struct_1(1772f, select(vec3<bool>(true, true, true), !select(arg_1, !arg_1, vec3<bool>(var_3.x, true, false)), var_0.a.b));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: u32) -> vec2<f32> {
    var var_0 = 1000f;
    let var_1 = abs(firstTrailingBit(~vec3<u32>(u_input.a, 0u, arg_2) & vec3<u32>(countOneBits(4294967295u), 4294967295u, u_input.a)));
    let var_2 = func_4(vec2<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_div_f32(arg_0.x, 727f)), arg_1)), 1192f), select(vec3<bool>(true, (var_1.x > arg_2) & any(vec3<bool>(false, true, false)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)))), select(select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, false, true), all(vec2<bool>(true, true))), true), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(4294967295u < var_1.x, false, true), true)), u_input.d, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)) * 597f), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))));
    var var_3 = _wgslsmith_mod_vec2_i32(-(arg_1.xy << (select(~var_1.zx, var_1.zx << (vec2<u32>(56135u, 4294967295u) % vec2<u32>(32u)), !vec2<bool>(var_2.b.x, var_2.b.x)) % vec2<u32>(32u))), vec2<i32>(1i, u_input.e));
    let var_4 = _wgslsmith_f_op_f32(min(-943f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1022f - _wgslsmith_f_op_f32(f32(-1f) * -685f))))))));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(arg_0.xw, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-420f - var_2.a))), _wgslsmith_f_op_f32(sign(1720f))), var_2.b.zy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1641f);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -276f);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -230f)))), vec2<f32>(-125f, -638f), true)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec4<f32>(986f, -813f, 1092f, 120f), vec4<i32>(u_input.d, 496i, u_input.c, u_input.e), 50801u)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(844f, -188f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-767f, 877f))))), select(func_4(vec2<f32>(1442f, 1636f), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), countOneBits(u_input.e), func_4(vec2<f32>(194f, -1094f), vec3<bool>(true, false, false), u_input.e, Struct_1(1378f, vec3<bool>(true, true, false)))).b.x, true, all(vec2<bool>(true, true))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x + var_1.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.x)), -1185f)));
    let var_2 = abs(vec2<i32>((u_input.d | 44809i) & ~_wgslsmith_sub_i32(8438i, 1i), u_input.c));
    let var_3 = vec4<i32>(1i, var_2.x, _wgslsmith_mult_i32(var_2.x, 1i), ~_wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(0i, ~(-1i))));
    let var_4 = _wgslsmith_add_i32(abs(1513i), select(firstTrailingBit(-19830i), _wgslsmith_dot_vec4_i32(-(var_3 ^ vec4<i32>(0i, u_input.d, 0i, var_2.x)), select(var_3, vec4<i32>(2147483647i, 33312i, 0i, var_2.x), vec4<bool>(false, true, false, false))), !select(1007f <= var_1.x, u_input.d == 2147483647i, all(vec2<bool>(false, true)))));
    let var_5 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, 605f), vec3<f32>(var_1.x, -287f, -957f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(844f, var_1.x, 127f)))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -469f), _wgslsmith_f_op_f32(f32(-1f) * -2133f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_1.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1303f)))) - -304f));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.a | ~(~u_input.a)), u_input.a);
}

