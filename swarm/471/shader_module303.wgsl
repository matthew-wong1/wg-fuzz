struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-14875i, 1i, u_input.b.x, ~u_input.e)), ~(-(~vec4<i32>(2147483647i, -12981i, arg_1.x, -2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-624f + _wgslsmith_f_op_f32(-954f * 437f)), -932f)) * _wgslsmith_f_op_f32(max(arg_0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.c.x))))))), vec2<f32>(-580f, arg_0.c.x));
    let var_1 = Struct_1(vec4<i32>(select(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-43210i, 2147483647i), vec2<i32>(arg_1.x, -14130i)), countOneBits(var_0.a.yw)), 12742i, _wgslsmith_f_op_f32(-var_0.c.x) >= _wgslsmith_f_op_f32(select(1256f, -948f, true))), abs(-13908i), u_input.b.x, (_wgslsmith_mod_i32(u_input.d.x, var_0.a.x) >> (~0u % 32u)) | abs(arg_0.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-237f, -265f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.c.x, true)), _wgslsmith_f_op_f32(arg_0.b + -597f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -1000f)))))));
    let var_2 = var_0;
    let var_3 = var_0.a.x;
    var var_4 = Struct_1(~(~vec4<i32>(-80253i, max(-68882i, var_2.a.x), _wgslsmith_add_i32(var_3, var_3), _wgslsmith_sub_i32(2147483647i, arg_0.a.x))), var_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.b, 946f), vec2<f32>(var_1.b, var_1.b), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(trunc(var_2.c)), vec2<bool>(true, true))), arg_0.c) * var_2.c));
    return firstLeadingBit(-1i);
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = u_input.d;
    var_0 = ~min(u_input.d, vec3<i32>(firstLeadingBit(~45240i), -64089i, -1i));
    return Struct_1(vec4<i32>(_wgslsmith_mod_i32(1i, reverseBits(u_input.b.x)), _wgslsmith_dot_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, -89152i, -34325i, var_0.x), vec4<i32>(-1i, arg_1, 68400i, u_input.b.x))), -vec4<i32>(27172i, -2147483647i, -1i, -12940i)), ~(-22661i), func_3(Struct_1(vec4<i32>(1i, u_input.b.x, arg_0, var_0.x), -505f, vec2<f32>(866f, -912f)), vec2<i32>(-1654i, 0i) | var_0.yz) | 1i), -617f, vec2<f32>(_wgslsmith_div_f32(-128f, _wgslsmith_div_f32(1000f, -1245f)), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(451f, -661f))), !any(vec4<bool>(true, true, false, false))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>) -> vec4<bool> {
    let var_0 = max(abs(abs(select(vec4<i32>(21351i, -2147483647i, -5327i, 30635i), ~vec4<i32>(-2147483647i, u_input.d.x, -50410i, u_input.d.x), !vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)))), firstLeadingBit(-select(reverseBits(vec4<i32>(u_input.d.x, 2147483647i, u_input.b.x, u_input.d.x)), -vec4<i32>(u_input.b.x, u_input.b.x, u_input.e, u_input.e), true)));
    let var_1 = Struct_1(_wgslsmith_mult_vec4_i32(reverseBits(var_0) ^ ~select(var_0, var_0, vec4<bool>(false, arg_1.x, false, arg_1.x)), var_0), 482f, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -728f), _wgslsmith_f_op_f32(floor(-236f))));
    var var_2 = -var_0.ywy;
    var var_3 = func_2(~_wgslsmith_add_i32(~var_2.x & 51998i, var_2.x), -25214i);
    let var_4 = 1i;
    return select(!select(vec4<bool>(all(vec2<bool>(true, true)), true, !arg_1.x, true), vec4<bool>(true, arg_1.x, arg_1.x, 52038i <= var_4), !(!vec4<bool>(true, false, true, arg_1.x))), vec4<bool>(true, !(!(!arg_1.x)), all(vec2<bool>(arg_1.x, all(vec4<bool>(arg_1.x, arg_1.x, true, true)))), false), !select(vec4<bool>(true, true, any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), true), vec4<bool>(true, all(vec2<bool>(arg_1.x, arg_1.x)), any(vec3<bool>(false, false, arg_1.x)), var_2.x != 1i), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = Struct_1(vec4<i32>(u_input.d.x, u_input.e, u_input.d.x, i32(-1i) * -abs(u_input.e)), -1564f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1203f, _wgslsmith_div_f32(-687f, -707f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-253f, -649f) + vec2<f32>(-274f, 830f)))))));
    let var_2 = true;
    var var_3 = var_1.a;
    let var_4 = Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(var_1.a, select(var_1.a, var_1.a, vec4<bool>(true, var_2, var_2, var_2))), select(vec4<i32>(1i, 37398i, -2147483647i, 1i), vec4<i32>(1i, -1i, u_input.b.x, -13421i), func_1(vec4<u32>(u_input.a.x, u_input.c.x, 46376u, 98009u), vec2<bool>(true, true)))) ^ var_1.a, var_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c * vec2<f32>(372f, var_1.b))) + _wgslsmith_f_op_vec2_f32(-var_1.c)) - func_2(_wgslsmith_add_i32(_wgslsmith_add_i32(var_1.a.x, var_3.x), -var_1.a.x), 58793i ^ abs(var_1.a.x)).c));
    let var_5 = var_4;
    let var_6 = Struct_1(vec4<i32>(max(var_4.a.x, var_3.x), -1i, 46592i, var_4.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1184f)))), _wgslsmith_f_op_vec2_f32(var_5.c + vec2<f32>(var_5.c.x, var_5.c.x)));
    let var_7 = _wgslsmith_div_i32(-2147483647i, -12470i & var_6.a.x) == -40127i;
    var var_8 = false;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(func_2(-10361i, var_6.a.x).a.x), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~u_input.c.x)), u_input.a), _wgslsmith_f_op_f32(floor(1233f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(476f, _wgslsmith_div_f32(987f, 167f), _wgslsmith_f_op_f32(var_5.c.x * var_5.c.x))) - vec3<f32>(-436f, _wgslsmith_f_op_f32(-246f - _wgslsmith_f_op_f32(-var_1.c.x)), 1169f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_6.b, var_6.c.x, var_5.c.x, var_6.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.b, -565f, var_6.c.x, 301f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_6.b, var_5.b, var_1.b, 1655f) - vec4<f32>(-829f, -931f, var_4.c.x, var_5.c.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1423f, var_5.c.x, var_1.c.x, -1226f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.b, -832f, -689f, var_5.c.x), vec4<f32>(var_4.c.x, var_6.c.x, 1000f, var_1.c.x)))))));
}

