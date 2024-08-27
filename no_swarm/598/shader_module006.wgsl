struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-655f - -1000f), -1500f)), _wgslsmith_div_f32(-829f, _wgslsmith_div_f32(-464f, 260f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(228f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(273f - 731f), -306f, 800f, _wgslsmith_f_op_f32(floor(413f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-372f, _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-764f - 1559f), _wgslsmith_f_op_f32(f32(-1f) * -229f)))));
    let var_1 = -37075i < _wgslsmith_dot_vec3_i32(~abs(~vec3<i32>(1i, 12294i, u_input.a.x)), vec3<i32>(u_input.a.x, -(u_input.a.x >> (u_input.b.x % 32u)), -u_input.a.x << (1u % 32u)));
    let var_2 = ~vec2<u32>(0u, ~countOneBits(u_input.b.x & 1u));
    let var_3 = -1691f;
    var var_4 = var_2.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1242f))) - var_3) * _wgslsmith_f_op_f32(abs(var_3))), -931f);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, -u_input.a | u_input.a), -(i32(-1i) * -51954i)), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-8349i, ~0i), arg_0), firstTrailingBit(~vec2<i32>(2147483647i, arg_1.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(402f + arg_2.a.x))), _wgslsmith_f_op_f32(func_3()))) - arg_2.a.ww);
    var var_2 = _wgslsmith_f_op_f32(sign(796f));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x * arg_2.a.x) - _wgslsmith_f_op_f32(sign(var_1.x)))))));
    var_0 = ~(~1i);
    return Struct_2(Struct_1(arg_2.a), Struct_1(arg_2.a), arg_2.a, arg_2);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_4 {
    let var_0 = !((_wgslsmith_f_op_f32(1734f * 1870f) < _wgslsmith_f_op_f32(func_3())) || arg_1.b.x) == (arg_1.b.x == false);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1140f, -1466f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a.b.a.x)) * -630f)))));
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3) -> vec2<f32> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.a.x, _wgslsmith_f_op_f32(round(arg_0.a.x))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, arg_1.c.x))))) - _wgslsmith_f_op_vec2_f32(select(arg_1.d.a.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d, -242f)), true))) - arg_1.d.a.zy);
    var var_2 = _wgslsmith_div_vec4_u32(~vec4<u32>(~u_input.c, u_input.c, 0u, max(u_input.b.x, u_input.b.x) << (u_input.c % 32u)), ~(~vec4<u32>(4294967295u, u_input.b.x, 4294967295u, firstTrailingBit(u_input.b.x))));
    var_1 = _wgslsmith_f_op_vec2_f32(arg_1.b.a.wy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, arg_1.c.x) * arg_1.d.a.wz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(407f, 844f))))));
    var var_3 = func_4(~(~(_wgslsmith_div_vec4_u32(vec4<u32>(18629u, var_2.x, 1u, var_2.x), vec4<u32>(u_input.c, u_input.c, u_input.b.x, 18971u)) | vec4<u32>(1271u, 1u, var_2.x, u_input.c))), Struct_3(func_2(u_input.a.x, countOneBits(u_input.a.ywz), Struct_1(vec4<f32>(arg_1.d.a.x, arg_1.b.a.x, -1119f, arg_1.d.a.x))), arg_2.b, arg_0, _wgslsmith_f_op_f32(-var_1.x)), vec2<bool>(!var_0, var_0 && var_0));
    return vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.a.x) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.c.a.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1090f - -1000f) + -1366f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.b.a.x) + 348f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(471f, -573f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1104f, 1094f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec4<f32>(1242f, -354f, -1000f, 305f)), Struct_2(Struct_1(vec4<f32>(-783f, -796f, 465f, 3441f)), Struct_1(vec4<f32>(-808f, 1000f, -1000f, -323f)), vec4<f32>(-1000f, 1000f, 1000f, -2223f), Struct_1(vec4<f32>(133f, -303f, -585f, 2166f))), Struct_3(Struct_2(Struct_1(vec4<f32>(-2463f, -1000f, 864f, -709f)), Struct_1(vec4<f32>(702f, 438f, 2168f, 753f)), vec4<f32>(1123f, 1049f, -922f, 541f), Struct_1(vec4<f32>(477f, 1857f, 668f, -479f))), vec2<bool>(false, true), Struct_1(vec4<f32>(628f, 1079f, 836f, -246f)), -1023f)))))));
    let var_1 = abs(-max(u_input.a.zz | firstTrailingBit(vec2<i32>(-28988i, -1i)), u_input.a.yy << (vec2<u32>(u_input.c, 13214u) % vec2<u32>(32u))));
    var var_2 = !select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), vec2<bool>(false, !(u_input.b.x == 0u)), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, false)));
    var_2 = vec2<bool>(true, any(!vec3<bool>(true, true, var_0.x <= var_0.x)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 238f, var_0.x, 474f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1160f, 111f, -1002f, var_0.x) * vec4<f32>(288f, var_0.x, 1666f, var_0.x)))))));
    var_2 = vec2<bool>(true, all(vec2<bool>(all(!vec3<bool>(false, var_2.x, var_2.x)), all(!vec2<bool>(var_2.x, false)))));
    var var_4 = true;
    var_2 = select(!(!vec2<bool>(var_2.x, !var_2.x)), vec2<bool>(var_2.x, any(!vec4<bool>(false, var_2.x, var_2.x, false))), !(!vec2<bool>(var_2.x & var_2.x, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, var_1.x), 1i) | 7537i), 1u);
}

