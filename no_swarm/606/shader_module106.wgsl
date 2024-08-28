struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec2<u32>) -> i32 {
    var var_0 = vec2<i32>(arg_0.c.d, _wgslsmith_add_i32(arg_0.b.a, -7971i));
    let var_1 = var_0.x;
    let var_2 = Struct_2(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1860f, -376f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(327f + 1062f))) + arg_0.d.x)), Struct_1(_wgslsmith_mult_i32(-arg_0.c.d >> (abs(33855u) % 32u), -2147483647i)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(abs(arg_0.c.d >> (arg_2.x % 32u)), arg_0.b.a), max(4296i, -54635i)));
    var var_3 = !(!(!vec2<bool>(any(vec3<bool>(true, arg_1, false)), !arg_1)));
    return ~(~6099i) >> (u_input.a % 32u);
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(12076u, _wgslsmith_add_u32(~u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(34470u, u_input.a, 34473u), vec3<u32>(u_input.a, 30308u, u_input.a))), ~_wgslsmith_div_u32(0u, firstLeadingBit(29313u)), ~_wgslsmith_div_u32(0u, ~u_input.a)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~78055u, u_input.a, ~u_input.a, select(u_input.a, 12868u, arg_0.x)), vec4<u32>(4294967295u, u_input.a, u_input.a >> (u_input.a % 32u), 4294967295u)), firstTrailingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 0u), vec4<u32>(0u, 0u, u_input.a, u_input.a)))));
    var var_1 = 619f;
    let var_2 = select(true, false, select(true, any(arg_0), true));
    var_0 = vec4<u32>(21817u, abs(var_0.x), 15412u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(42686u, var_0.x, var_0.x) << (vec3<u32>(1u, 29129u, var_0.x) % vec3<u32>(32u)), var_0.yxx)));
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1724f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - -969f), -1364f, all(vec2<bool>(var_2, var_2))))))))));
    return select(~reverseBits(-14413i), _wgslsmith_sub_i32(func_1(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -728f), Struct_1(2147483647i), Struct_2(200f, -1105f, Struct_1(2147483647i), -14246i), vec3<f32>(-114f, 494f, -170f)), true, _wgslsmith_mult_vec2_u32(var_0.wy, ~var_0.zz)), i32(-1i) * -23915i), true);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = arg_0.c;
    var var_1 = !(!vec2<bool>(true, any(vec2<bool>(false, true))));
    var var_2 = _wgslsmith_mod_vec2_i32(firstLeadingBit(-_wgslsmith_div_vec2_i32(vec2<i32>(1i, arg_0.c.a), vec2<i32>(-2147483647i, -1i))) & -(vec2<i32>(var_0.a, arg_2) & firstTrailingBit(vec2<i32>(arg_0.d, var_0.a))), reverseBits(vec2<i32>(~arg_2, 21399i)));
    var var_3 = _wgslsmith_add_i32(arg_0.d, arg_0.c.a);
    let var_4 = -_wgslsmith_sub_vec3_i32(~vec3<i32>(~var_0.a, func_3(vec2<bool>(false, var_1.x)), firstTrailingBit(0i)), ~_wgslsmith_clamp_vec3_i32(~vec3<i32>(2147483647i, var_0.a, arg_0.d), -vec3<i32>(-5133i, var_2.x, -16802i), vec3<i32>(1i, arg_2, -2147483647i)));
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-750f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -210f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -120f)))), func_2(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1286f)) + _wgslsmith_div_f32(677f, -1000f)), 1f, Struct_1(1i), -2147483647i | func_1(Struct_3(962f, Struct_1(-41503i), Struct_2(737f, 539f, Struct_1(-7981i), -37002i), vec3<f32>(2100f, 930f, -246f)), false, vec2<u32>(17883u, u_input.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(295f, -1315f, _wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_div_i32(-43888i, 21965i)), _wgslsmith_add_i32(min(-23546i, -2147483647i), 2147483647i));
    var var_1 = vec4<bool>(all(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), (-2147483647i << (u_input.a % 32u)) == 1i, false);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a)))));
    let var_3 = Struct_4(var_0.d);
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(max(-185f, _wgslsmith_f_op_f32(abs(var_0.a))))))), var_0.c, Struct_2(115f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.b)), 1205f)), Struct_1(reverseBits(_wgslsmith_div_i32(var_0.c.a, 952i))), countOneBits(~_wgslsmith_div_i32(var_3.a, 0i))), vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1473f)));
    let x = u_input.a;
    s_output = StorageBuffer(max(countOneBits(_wgslsmith_div_i32(-2196i, _wgslsmith_dot_vec2_i32(vec2<i32>(15800i, 10723i), vec2<i32>(93084i, var_0.d)))), var_0.c.a << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 1u, u_input.a, 26341u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % 32u)), _wgslsmith_f_op_f32(var_4.d.x + var_0.a), _wgslsmith_sub_vec3_u32(min(~vec3<u32>(0u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, 51178u)), ~(~vec3<u32>(u_input.a, u_input.a, 0u))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_4.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_4.a, -236f, var_4.d.x))) + _wgslsmith_f_op_vec3_f32(-var_4.d))))));
}

