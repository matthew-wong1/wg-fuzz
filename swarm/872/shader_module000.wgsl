struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = !select(!(!select(vec2<bool>(arg_2.c.a, true), vec2<bool>(arg_1.a, false), false)), select(!vec2<bool>(false, arg_1.a), vec2<bool>(arg_1.a, any(vec2<bool>(arg_1.a, false))), select(vec2<bool>(arg_1.a, arg_2.c.a), select(vec2<bool>(arg_1.a, false), vec2<bool>(arg_2.c.a, arg_1.a), arg_2.c.a), !vec2<bool>(arg_2.c.a, false))), select(true, arg_1.a, arg_2.c.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2982f, arg_1.b, 1006f, arg_1.d) + vec4<f32>(arg_2.c.d, -1117f, arg_2.c.d, 1249f)))))) * vec4<f32>(arg_2.c.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.d))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.c.d - _wgslsmith_f_op_f32(-arg_0)), arg_1.b, true)), -719f));
    let var_2 = Struct_3(Struct_1(arg_1.a, arg_2.c.b, vec3<u32>(4294967295u, ~reverseBits(1u), arg_1.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-490f, -325f)) + _wgslsmith_f_op_f32(f32(-1f) * -2527f)), -612f, arg_2.c.a))));
    let var_3 = Struct_4(~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.a, arg_1.c.x, var_2.a.c.x, arg_1.c.x), vec4<u32>(arg_2.a, 1u, var_2.a.c.x, u_input.a), vec4<u32>(4294967295u, arg_2.c.c.x, 1u, var_2.a.c.x)))));
    let var_4 = min(2147483647i, -_wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, 1i), _wgslsmith_add_i32(~(-1i), ~(-8670i))));
    return _wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-53107i, 31348i, 0i, -1i), vec4<i32>(1i, var_4, var_4, 5408i), vec4<bool>(false, true, true, true)), ~vec4<i32>(-8282i, -2147483647i, var_4, 48189i), vec4<i32>(-9463i, 2147483647i, var_4, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -1i, var_4, 2147483647i), abs(vec4<i32>(0i, var_4, var_4, var_4)))), abs(vec4<i32>(var_4, -2147483647i | _wgslsmith_mod_i32(var_4, var_4), var_4, var_4 & var_4)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(499f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(855f, 456f))))));
    var var_1 = arg_0.x;
    var_1 = arg_0.x;
    let var_2 = arg_0.x;
    var var_3 = _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(~(~(-vec4<i32>(2147483647i, var_2, 2147483647i, var_2))), ~_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(arg_0.x, arg_0.x, -1i, var_2)), vec4<i32>(arg_0.x, 0i, arg_0.x, -46574i))), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -(~(-20832i)), var_2, abs(-2147483647i)), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(var_2, 2147483647i, var_2, var_2)), -vec4<i32>(5743i, var_2, 13699i, arg_0.x), func_3(-1966f, Struct_1(false, -1051f, vec3<u32>(u_input.a, 1u, 1u), 474f), Struct_2(4294967295u, 1u, Struct_1(false, var_0, vec3<u32>(u_input.a, u_input.a, 1u), var_0)))) | _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-14999i, arg_0.x, -6283i, var_2)), _wgslsmith_add_vec4_i32(vec4<i32>(var_2, -1i, 34613i, var_2), vec4<i32>(-2147483647i, 1i, var_2, arg_0.x)))));
    return Struct_1(false, _wgslsmith_f_op_f32(max(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1163f)), var_0))), vec3<u32>(u_input.a, ~(~u_input.a) ^ u_input.a, 21782u), 1802f);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: vec3<bool>) -> u32 {
    var var_0 = firstLeadingBit(4294967295u);
    let var_1 = _wgslsmith_f_op_f32(exp2(arg_2));
    var var_2 = arg_0;
    return 75244u;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = vec2<bool>(any(select(!select(vec2<bool>(false, false), vec2<bool>(true, arg_1), vec2<bool>(true, true)), vec2<bool>(true, true && arg_2.c.a), !select(vec2<bool>(true, false), vec2<bool>(true, arg_0), arg_0))), (any(vec2<bool>(arg_2.c.a, arg_1)) || all(select(vec3<bool>(false, false, arg_1), vec3<bool>(false, arg_2.c.a, false), vec3<bool>(true, arg_0, arg_1)))) | !arg_0);
    var var_1 = vec4<u32>(func_4(22668i, func_2(~vec3<i32>(-1i, -2147483647i, -34836i)), 489f, vec3<bool>(all(select(vec4<bool>(true, arg_1, arg_2.c.a, true), vec4<bool>(arg_2.c.a, false, arg_1, false), arg_0)), all(!vec4<bool>(false, arg_2.c.a, arg_2.c.a, false)), all(var_0))), u_input.a, arg_2.b, 29920u);
    var var_2 = _wgslsmith_f_op_f32(303f - -569f);
    var var_3 = arg_2;
    var_1 = ~(~(~(~vec4<u32>(arg_2.c.c.x, 108055u, var_1.x, u_input.a) | min(vec4<u32>(23947u, 25059u, arg_2.a, arg_2.b), vec4<u32>(arg_2.c.c.x, 4294967295u, arg_2.c.c.x, var_3.b)))));
    return arg_2.c;
}

fn func_5(arg_0: Struct_1) -> u32 {
    let var_0 = all(!vec4<bool>(any(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), arg_0.a, arg_0.a, arg_0.a));
    let var_1 = arg_0.c.xx >> (_wgslsmith_sub_vec2_u32(arg_0.c.xy, _wgslsmith_mult_vec2_u32(func_1(any(vec4<bool>(false, true, false, true)), var_0, Struct_2(arg_0.c.x, arg_0.c.x, Struct_1(arg_0.a, arg_0.b, vec3<u32>(29468u, 1654u, 4294967295u), arg_0.b))).c.xy, ~vec2<u32>(22039u, arg_0.c.x))) % vec2<u32>(32u));
    let var_2 = Struct_3(func_2(countOneBits(vec3<i32>(1i, 1i, 1i))));
    var var_3 = arg_0.d;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -943f))))))));
    return firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(~arg_0.c.x, var_2.a.c.x), func_4(-37448i, arg_0, 1000f, vec3<bool>(arg_0.a, arg_0.a, var_2.a.a)) ^ _wgslsmith_sub_u32(u_input.a, u_input.a)), arg_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(4769i, _wgslsmith_div_i32(max(16802i, 1i), ~abs(1i)));
    let var_1 = -26204i;
    let var_2 = Struct_3(Struct_1(all(vec2<bool>(true, true)), -881f, vec3<u32>(max(4294967295u, countOneBits(9856u)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 4294967295u), ~8778u), u_input.a << (1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-615f, -611f))))));
    var var_3 = 0i;
    var_3 = -1i;
    var var_4 = vec4<i32>(var_1, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_1, -1i, var_0), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_1, var_0, -1i), vec4<i32>(0i, var_1, -4464i, var_1))) >> (func_5(func_1(var_2.a.a, var_2.a.a, Struct_2(var_2.a.c.x, 1u, var_2.a))) % 32u)), -(~var_0), min(38970i, -40101i));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.yw, vec4<f32>(523f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.b))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.a.d, var_2.a.d, var_2.a.a)) * _wgslsmith_f_op_f32(sign(var_2.a.d)))), -108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.d)))), 0u, ~_wgslsmith_div_u32(79408u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.a.c.x, u_input.a, 0u, 19237u), vec4<u32>(9279u, 1u, 30728u, var_2.a.c.x)), ~vec4<u32>(var_2.a.c.x, var_2.a.c.x, u_input.a, var_2.a.c.x))));
}

