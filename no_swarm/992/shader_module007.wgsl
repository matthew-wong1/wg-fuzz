struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    var var_0 = 341f;
    return _wgslsmith_dot_vec2_i32(countOneBits(abs(vec2<i32>(u_input.d.x, -13292i))), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 0i), countOneBits(u_input.a)) << (abs(u_input.b) % vec2<u32>(32u)), vec2<i32>(28041i, u_input.a.x) ^ (vec2<i32>(u_input.d.x, u_input.a.x) & u_input.e.yw)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<bool>) -> vec2<f32> {
    global0 = ~4294967295u;
    let var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b.x, u_input.c)) & countOneBits(_wgslsmith_sub_vec2_u32(u_input.b, u_input.b)), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, 0u, 2746u), vec4<u32>(4294967295u, u_input.b.x, 11887u, u_input.c)), u_input.b.x)), select(min(u_input.c, abs(reverseBits(u_input.c))), 4294967295u, all(vec2<bool>(true, true))));
    let var_1 = countOneBits(~vec3<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(15677u, u_input.c, u_input.c, u_input.c) ^ vec4<u32>(48548u, 66282u, 14056u, 56610u), vec4<u32>(62473u, u_input.c, u_input.c, var_0.x)), ~1u));
    global0 = _wgslsmith_div_u32(48103u, _wgslsmith_div_u32(select(var_1.x, 18287u >> (1u % 32u), u_input.c == 4294967295u), u_input.c));
    var var_2 = -_wgslsmith_add_vec2_i32(~vec2<i32>(-arg_1.c, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, arg_2), u_input.e.yz)), u_input.d);
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.b)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1025f, -1105f)) - _wgslsmith_f_op_f32(sign(-593f)))))), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_f_op_f32(abs(-1521f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(559f, 130f))), -_wgslsmith_add_i32(54662i, u_input.d.x), 1f), Struct_1(-796f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-358f, -1977f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(192f, 326f) - vec2<f32>(769f, -156f))), _wgslsmith_add_i32(i32(-1i) * -1i, u_input.a.x), _wgslsmith_div_f32(300f, 861f)), max(func_3(), reverseBits(_wgslsmith_mod_i32(arg_0.x, 12155i))), select(select(select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, arg_1, false), arg_1), select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, false, arg_1), arg_1), !vec3<bool>(false, arg_1, true)), select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, true, arg_1), arg_1), vec3<bool>(all(vec3<bool>(false, false, true)), arg_1, !arg_1)))), 1i, 653f);
    global0 = ~firstTrailingBit(u_input.b.x) >> (_wgslsmith_mod_u32(_wgslsmith_sub_u32(65561u, 0u << (u_input.b.x % 32u)), min(~u_input.b.x, firstTrailingBit(min(57547u, 0u)))) % 32u);
    let var_1 = min(_wgslsmith_dot_vec2_u32(u_input.b >> (u_input.b % vec2<u32>(32u)), u_input.b), u_input.c);
    global0 = ~countOneBits(reverseBits(select(reverseBits(var_1), reverseBits(var_1), true)));
    let var_2 = arg_0.yxw;
    return Struct_1(_wgslsmith_div_f32(-1639f, _wgslsmith_f_op_f32(select(-818f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.a, 283f)), var_0.a), all(!vec4<bool>(false, arg_1, arg_1, arg_1))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2103f, var_0.a))) * vec2<f32>(var_0.a, var_0.b.x))), var_0.b)), -11392i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a)) * 1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.d, var_0.a)))), true)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(-arg_2.b), -12674i, arg_0.b.x);
    let var_1 = var_0;
    let var_2 = var_1;
    var var_3 = u_input.b.x;
    var var_4 = arg_2;
    return u_input.e.yxz;
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(func_5(Struct_1(arg_0, vec2<f32>(-309f, arg_0), arg_1, arg_0), func_2(vec4<i32>(1136i, 2147483647i, 0i, u_input.e.x), false), func_2(vec4<i32>(-1i, u_input.a.x, 0i, 4818i), true)) | vec3<i32>(7763i, ~(-1835i), -arg_1), _wgslsmith_clamp_vec3_i32(u_input.e.zwx, vec3<i32>(8796i, arg_1, _wgslsmith_clamp_i32(65758i, 25246i, 0i)), u_input.e.zwy)), 5668i, select(u_input.a.x, -2147483647i, all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))));
    var var_1 = vec4<f32>(380f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(797f - 737f)), arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))));
    let var_2 = Struct_1(func_2(vec4<i32>(arg_1, max(~arg_1, select(u_input.e.x, 2147483647i, false)), var_0.x << (u_input.b.x % 32u), 0i), true).b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), ~func_2(~u_input.e, min(var_0.x, u_input.e.x) >= (u_input.e.x << (u_input.b.x % 32u))).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(934f - -1149f) - _wgslsmith_div_f32(-1109f, _wgslsmith_f_op_f32(667f + arg_0))) - 1f));
    var_0 = u_input.e.zwy;
    let var_3 = firstLeadingBit(~u_input.e.xww);
    return func_2(firstLeadingBit(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-13284i, var_3.x, u_input.e.x, -2147483647i), firstLeadingBit(u_input.e)))), any(vec2<bool>(all(vec4<bool>(true, false, false, false)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))) * -1579f), firstLeadingBit(select(42900i, u_input.e.x, true)));
    var var_1 = Struct_1(1011f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1503f, 394f)))), _wgslsmith_div_vec2_f32(vec2<f32>(1626f, _wgslsmith_f_op_f32(select(var_0.d, var_0.b.x, true))), _wgslsmith_div_vec2_f32(var_0.b, func_1(534f, -1i).b))), var_0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a, -201f), _wgslsmith_f_op_f32(round(var_0.a)))) + -1000f))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(-1616f, var_0.c).b.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.b)) - var_0.b)))), 0i, var_1.d);
    global0 = u_input.c;
    let var_2 = 0u;
    var var_3 = func_1(_wgslsmith_f_op_f32(-var_1.d), ~u_input.a.x);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(trunc(-740f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b + var_3.b) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-func_2(vec4<i32>(2147483647i, 27913i, 1i, var_3.c), false).b)))), _wgslsmith_sub_i32(var_1.c, -53688i), var_3.d);
    var var_5 = func_2(vec4<i32>(1i, ~var_1.c | var_0.c, ~_wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_sub_i32(-57916i, var_4.c)), _wgslsmith_mult_i32(0i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-21108i, var_1.c), var_0.c << (79636u % 32u)))), true).b;
    let var_6 = func_1(-571f, _wgslsmith_add_i32(-(~var_4.c), reverseBits(28366i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.x + _wgslsmith_f_op_f32(f32(-1f) * -190f))), var_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a))))));
}

