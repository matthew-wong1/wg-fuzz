struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -904i;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<bool>) -> i32 {
    var var_0 = -1198f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -879f), _wgslsmith_div_f32(675f, -803f)), -1558f))));
    var var_2 = select(select(vec3<bool>(arg_1.x, any(select(vec4<bool>(false, arg_1.x, arg_1.x, false), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x))), !(false & arg_1.x)), !select(select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, false, arg_1.x), true), vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(false, arg_1.x, arg_1.x)), vec3<bool>(any(vec2<bool>(arg_1.x, arg_1.x)), all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), arg_1.x)), select(!select(!vec3<bool>(false, arg_1.x, false), select(vec3<bool>(arg_1.x, true, false), vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(arg_1.x, true, arg_1.x)), any(vec4<bool>(true, arg_1.x, false, true))), vec3<bool>(arg_1.x, false, arg_1.x), arg_1.x), select(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(arg_1.x, true), arg_1.x)), arg_1.x, false), !select(select(vec3<bool>(false, arg_1.x, false), vec3<bool>(true, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false)), select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(true, arg_1.x, true)), all(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x))), !select(!vec3<bool>(false, arg_1.x, arg_1.x), !vec3<bool>(arg_1.x, true, true), arg_1.x)));
    global0 = 2093i;
    global0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(-arg_0.x, 1i), arg_0.x), ~(-(~(-4638i)))), _wgslsmith_add_i32(arg_0.x, ~_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.e.x, 0i), select(-2147483647i, arg_0.x, false))));
    return _wgslsmith_mod_i32(-2147483647i, ~_wgslsmith_mult_i32(arg_0.x, u_input.b));
}

fn func_2() -> Struct_3 {
    global0 = u_input.a;
    let var_0 = ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e.x, func_3(u_input.c, vec2<bool>(true, true)), ~u_input.c.x) ^ vec3<i32>(2147483647i, 0i, ~(-2147483647i)), vec3<i32>(-10321i | _wgslsmith_mod_i32(5393i, u_input.a), ~(-u_input.e.x), max(u_input.e.x, u_input.b >> (u_input.d.x % 32u))));
    let var_1 = true;
    var var_2 = 0i;
    let var_3 = 1i;
    return Struct_3(Struct_1(-var_3), Struct_1(-var_0.x), vec3<i32>(var_3, abs(func_3(u_input.c, !vec2<bool>(var_1, var_1))), i32(-1i) * -27185i), Struct_1(_wgslsmith_div_i32(~select(-44958i, var_3, var_1), -6609i)));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> vec4<i32> {
    var var_0 = func_2();
    let var_1 = u_input.d.x | u_input.d.x;
    let var_2 = _wgslsmith_mod_i32(-(i32(-1i) * -4577i), ~var_0.d.a);
    global0 = abs(35948i);
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(125f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(857f)) - 882f)))), _wgslsmith_f_op_f32(f32(-1f) * -992f), all(!select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), !vec4<bool>(arg_0, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0, false, true, true), vec4<bool>(arg_0, false, arg_0, false))))));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(16777u, 64412u, u_input.d.x) & vec3<u32>(0u, 0u, 1u), abs(vec3<u32>(1u, 11933u, 16829u)))), ~(~vec3<u32>(1u, u_input.d.x, u_input.d.x)));
    let var_1 = Struct_1(~_wgslsmith_dot_vec4_i32(func_1(true, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(921f, 781f, 1646f)))), u_input.c));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f)));
    let var_3 = vec4<i32>(-3853i, var_1.a, countOneBits(abs(var_1.a)), min(min(var_1.a, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c.x, u_input.e.x), -12381i)), u_input.a));
    global0 = select(abs(~reverseBits(u_input.e.x)) & 0i, -_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.e.x ^ var_3.x, _wgslsmith_mod_i32(0i, var_3.x)), ~abs(var_3.x)), ~(~24500u >> (u_input.d.x % 32u)) > _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.x, firstLeadingBit(8729u)), 14136u));
    var var_4 = -vec2<i32>(-2147483647i, -2147483647i & ~u_input.a);
    var var_5 = Struct_1(min(var_4.x, func_1(_wgslsmith_div_f32(1190f, var_2) == var_2, _wgslsmith_div_vec3_f32(vec3<f32>(1562f, 1000f, var_2), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, 478f, 1194f), vec3<f32>(var_2, var_2, var_2), vec3<bool>(true, false, true))))).x));
    var var_6 = ~var_4.x ^ var_5.a;
    var var_7 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(min(var_0, var_0)), min(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(49951u, u_input.d.x, u_input.d.x), var_0)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(219u, 4294967295u, var_0.x), vec3<u32>(var_0.x, 24815u, 0u))), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true))), var_3.wzz, 14386i);
}

