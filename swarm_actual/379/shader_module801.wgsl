struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: vec4<f32>) -> Struct_2 {
    global0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.d, 1u), ~u_input.a.x, reverseBits(_wgslsmith_div_u32(u_input.a.x, 1u)), u_input.c.x), ~max(firstTrailingBit(vec4<u32>(79958u, u_input.b, 6761u, u_input.d)), vec4<u32>(u_input.d, u_input.d, u_input.a.x, 30515u)));
    global0 = u_input.d;
    var var_0 = ~_wgslsmith_mult_vec3_i32(arg_1, -vec3<i32>(~arg_1.x, -arg_1.x, reverseBits(0i)));
    var var_1 = Struct_4(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_0)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), true, any(vec3<bool>(true, true, true)) & (~arg_1.x == 2147483647i), true & !(u_input.b < u_input.c.x)));
    let var_2 = Struct_3(_wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_sub_i32(arg_1.x, 2147483647i)), -1i, -7960i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 + vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_2.x * arg_2.x), arg_0, arg_2.x))), Struct_2(_wgslsmith_add_u32(~6642u, ~_wgslsmith_mod_u32(u_input.c.x, 24041u))));
    return Struct_2(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(10486u, ~_wgslsmith_mult_u32(0u, var_2.c.a)), ~85905u));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(1i), -2766i), vec2<i32>(~(-2024i), 1i), firstLeadingBit(select(-vec2<i32>(73611i, 0i), vec2<i32>(1i, 1i), vec2<bool>(true, arg_0 | arg_0))));
    var_0 = _wgslsmith_mult_vec2_i32(select(~_wgslsmith_add_vec2_i32(vec2<i32>(0i, -15525i) >> (vec2<u32>(arg_1, 48295u) % vec2<u32>(32u)), min(vec2<i32>(-1i, var_0.x), vec2<i32>(var_0.x, var_0.x))), select(-max(vec2<i32>(var_0.x, -26339i), vec2<i32>(var_0.x, var_0.x)), vec2<i32>(var_0.x, -36182i) & vec2<i32>(1i, 1i), select(select(vec2<bool>(false, false), vec2<bool>(arg_0, true), vec2<bool>(true, false)), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, false), arg_0), !arg_0)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), !arg_0))), vec2<i32>(select(var_0.x, -2147483647i, true) & var_0.x, var_0.x));
    let var_1 = Struct_1(vec2<i32>(-39686i, -22652i), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-219f, 585f, 737f, 1497f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1428f, 151f, 931f, -1091f))), arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -262f, 718f, 653f) - vec4<f32>(-1000f, 228f, -1847f, -1134f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1914f, -853f, 236f, 329f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-718f, -234f, -1000f, 1000f))))), vec4<bool>(arg_0, !(!arg_0), true, false));
    var var_2 = arg_2;
    var_2 = arg_2;
    return var_1.c.x;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = !func_3(true, u_input.a.x, func_2(1000f, -(~vec3<i32>(-21381i, 0i, 22029i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(237f, -992f, -107f, 586f), vec4<f32>(-700f, 795f, 688f, 1000f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(839f + 151f), -919f)));
    var var_2 = Struct_4(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), 1u != u_input.d), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec4<bool>(false, false, true, false)), all(vec2<bool>(false, true)), true)));
    var var_3 = u_input.a.x;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1044f - 1375f) + -327f), 1605f)));
    return Struct_1(-(select(countOneBits(vec2<i32>(2147483647i, -17577i)), vec2<i32>(1i, 1i), true) & min(-vec2<i32>(-2147483647i, -975i), reverseBits(vec2<i32>(17594i, 1i)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(445f, 1419f, 108f, -452f) - vec4<f32>(123f, 2027f, -988f, -874f)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-148f, -717f, 1583f, -1491f) * vec4<f32>(162f, -339f, -1303f, -889f))))))), var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c.x;
    global0 = 4294967295u;
    let var_0 = func_1(_wgslsmith_dot_vec2_u32(u_input.c, ~(~vec2<u32>(4294967295u, 0u))));
    var var_1 = u_input.a.zz;
    var var_2 = vec4<bool>(false, var_0.c.x, !((0u >> (u_input.d % 32u)) < firstLeadingBit(~var_1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x - 1187f)))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1977f, var_0.b.x, var_0.c.x)), -1003f)));
    global0 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, _wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x)));
}

