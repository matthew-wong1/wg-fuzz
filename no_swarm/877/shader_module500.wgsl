struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    var var_0 = arg_1;
    var_0 = Struct_1(-5940i, arg_0.b, vec3<u32>(~arg_0.c.x, var_0.c.x, _wgslsmith_sub_u32(~var_0.c.x, _wgslsmith_mult_u32(58912u, u_input.a)) | arg_1.c.x), (i32(-1i) * -19405i) < _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, -2147483647i, _wgslsmith_mod_i32(1i, -63325i), 1i), -firstLeadingBit(vec4<i32>(arg_1.a, var_0.a, arg_1.a, 0i))));
    var_0 = Struct_1(arg_0.a, vec2<bool>(false, true), _wgslsmith_add_vec3_u32(~var_0.c, ~firstTrailingBit(arg_0.c)), arg_0.d || !(var_0.a > -35659i));
    let var_1 = !(!(!vec4<bool>(true, false, var_0.d, !arg_1.b.x)));
    var_0 = arg_0;
    return arg_1.c.x;
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = 578f;
    let var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -54118i, abs(1787i), abs(-44921i)), -vec4<i32>(-2147483647i, 0i, arg_0.a, arg_0.a)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, arg_0.a, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 1i, arg_0.a, arg_0.a), vec4<i32>(-2147483647i, arg_0.a, arg_0.a, 0i))), ~countOneBits(vec4<i32>(2147483647i, arg_0.a, -2147483647i, arg_0.a)), false)), vec4<i32>(max(arg_0.a | 1i, 8080i), select(42019i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<i32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), true), -(~61739i), arg_0.a) << (select(_wgslsmith_mult_vec4_u32(select(vec4<u32>(arg_0.c.x, u_input.a, 37038u, 1u), vec4<u32>(64985u, arg_0.c.x, u_input.a, 4294967295u), vec4<bool>(false, arg_0.b.x, false, arg_0.d)), ~vec4<u32>(arg_0.c.x, u_input.a, arg_0.c.x, arg_0.c.x)), vec4<u32>(u_input.a & 1u, 1u, _wgslsmith_sub_u32(32819u, u_input.a), 1u), false) % vec4<u32>(32u)));
    var var_2 = arg_0.c.x;
    var_2 = (3175u << (countOneBits(1u & u_input.a) % 32u)) << (abs(arg_0.c.x) % 32u);
    var_2 = u_input.a;
    return any(!arg_0.b);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: u32, arg_3: bool) -> Struct_1 {
    return Struct_1(2147483647i, !vec2<bool>(all(select(arg_0, arg_0, arg_0)), true), abs(vec3<u32>(arg_2, 1416u, reverseBits(firstTrailingBit(u_input.a)))), func_3(Struct_1(87160i, select(select(vec2<bool>(true, true), vec2<bool>(arg_0.x, arg_1.x), vec2<bool>(false, arg_0.x)), arg_0.xy, true), vec3<u32>(_wgslsmith_add_u32(4294967295u, 0u), arg_2, abs(5972u)), all(select(vec4<bool>(arg_3, arg_3, arg_3, true), vec4<bool>(arg_1.x, true, true, arg_3), arg_3)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    return ~(~arg_1.c.yx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_div_u32(u_input.a, countOneBits(abs(34683u))), u_input.a) | reverseBits(abs(~(~vec2<u32>(1u, 43760u))));
    var_0 = ~select(vec2<u32>(func_1(Struct_1(70503i, vec2<bool>(false, true), vec3<u32>(1u, var_0.x, 4294967295u), false), Struct_1(2147483647i, vec2<bool>(true, true), vec3<u32>(4294967295u, var_0.x, u_input.a), false), vec3<bool>(true, true, true)), var_0.x), max(vec2<u32>(u_input.a, 4294967295u) >> ((vec2<u32>(u_input.a, 4294967295u) << (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u))) % vec2<u32>(32u)), func_4(Struct_1(13506i, vec2<bool>(false, false), vec3<u32>(1u, u_input.a, u_input.a), false), func_2(vec3<bool>(false, true, true), vec2<bool>(true, true), var_0.x, false))), select(func_2(vec3<bool>(true, true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), u_input.a, true).b, vec2<bool>(false, true), func_2(vec3<bool>(true, true, true), vec2<bool>(true, true), var_0.x, true).b));
    var var_1 = 628f;
    var var_2 = -(~countOneBits(_wgslsmith_mult_i32(-6756i, 17049i)) << (~var_0.x % 32u));
    let var_3 = func_2(vec3<bool>(true, true, true), !func_2(vec3<bool>(true, true, true), vec2<bool>(true, true), max(u_input.a | 4294967295u, u_input.a), all(vec3<bool>(true, true, true))).b, firstTrailingBit(u_input.a), true);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(-824f))));
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-978f)))));
    var var_4 = var_3.b;
    var_2 = ~(~var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, vec4<f32>(1146f, -435f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1047f - -703f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1977f, -205f)) + -1414f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-870f)))))));
}

