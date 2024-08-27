struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = vec4<bool>(false, select(arg_0.d, true || arg_0.d, true), all(!(!arg_0.c)), false);
    var var_1 = reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(abs(u_input.d)), -2147483647i, select(u_input.d & arg_0.a, -u_input.d, arg_0.c.x)), ~(vec3<i32>(u_input.d, 0i, 2147483647i) ^ vec3<i32>(-11559i, arg_0.a, arg_0.a))));
    var var_2 = Struct_1(_wgslsmith_mod_i32(u_input.a, 2147483647i), -598f, select(vec4<bool>(false, -103i >= arg_0.a, !arg_0.c.x, !var_0.x), select(arg_0.c, arg_0.c, !var_0.x), vec4<bool>(true, arg_0.d, var_0.x, all(vec3<bool>(true, var_0.x, arg_0.d)))), var_0.x);
    var_0 = var_2.c;
    let var_3 = ~(~select(vec4<u32>(36955u, countOneBits(75093u), ~75021u, _wgslsmith_mod_u32(57651u, 939u)), vec4<u32>(~67083u, _wgslsmith_sub_u32(19006u, u_input.e.x), u_input.b.x ^ 91301u, 0u), true));
    return all(!vec2<bool>(true & any(var_0.wz), var_2.d));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(u_input.a, 704f, !vec4<bool>(true, !func_3(Struct_1(12002i, -648f, vec4<bool>(true, true, false, true), false)), true, !all(vec2<bool>(false, true))), select(-26014i < u_input.a, true, false));
    var var_1 = Struct_1(-1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * 1071f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b)))), vec4<bool>(any(vec3<bool>(all(var_0.c.zy), true, var_0.c.x | true)), any(var_0.c.xwz), true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_0.b)))) < _wgslsmith_f_op_f32(sign(var_0.b))), func_3(Struct_1(u_input.a, 1065f, var_0.c, true)));
    var var_2 = var_0.c.wx;
    var var_3 = Struct_1(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b), 1000f, var_0.c.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(-var_1.b))), vec4<bool>(var_0.c.x | all(select(vec2<bool>(var_2.x, var_1.d), vec2<bool>(false, true), vec2<bool>(false, var_1.d))), var_1.c.x, false, !(!var_2.x)), false);
    return Struct_1(~(~abs(abs(-9819i))), 533f, !var_1.c, !var_3.d);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2.b;
    var var_1 = func_2();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b)) * -1393f)) - _wgslsmith_f_op_f32(arg_2.b + _wgslsmith_f_op_f32(-arg_0.b))) * arg_0.b);
    var var_2 = firstTrailingBit(~(~select(~vec2<i32>(-25499i, -2147483647i), vec2<i32>(-1i, u_input.a) ^ vec2<i32>(arg_2.a, u_input.a), !arg_0.c.xx)));
    let var_3 = arg_2;
    return Struct_1(firstTrailingBit(0i), var_1.b, var_1.c, true);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: u32) -> Struct_1 {
    let var_0 = func_4(Struct_1(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-706f, 406f)), -466f))), !vec4<bool>(any(vec3<bool>(arg_0, arg_0, false)), arg_0 & arg_0, arg_0 || false, any(vec3<bool>(false, arg_0, arg_0))), _wgslsmith_f_op_f32(328f + 1889f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2062f, -650f)) * 294f)), ~min(_wgslsmith_div_vec2_u32(u_input.e.yy, abs(u_input.e.wx)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, arg_2), _wgslsmith_clamp_vec2_u32(u_input.e.wx, u_input.b.yz, vec2<u32>(71816u, 54834u)))), func_2());
    var var_1 = var_0;
    var var_2 = u_input.e.wz;
    var var_3 = min(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_add_u32(var_2.x << (var_2.x % 32u), arg_2)), ~_wgslsmith_mod_u32(0u, 16004u)), _wgslsmith_mult_u32(firstLeadingBit(~u_input.b.x), var_2.x));
    var_3 = arg_2;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(true != all(vec3<bool>(true, false, true))) != true, 1i, 0u);
    var_0 = func_1(var_0.c.x, 52292i, _wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.c.x, u_input.b.x, u_input.e.x, u_input.b.x), u_input.e, true), u_input.b), 0u));
    var var_1 = firstLeadingBit(~u_input.e.yww);
    var var_2 = func_4(Struct_1(firstTrailingBit(-2147483647i), var_0.b, var_0.c, all(vec2<bool>(var_0.d && var_0.d, var_0.c.x))), vec2<u32>(abs((33254u & u_input.c.x) | min(1u, var_1.x)), 1u), Struct_1(~1i ^ _wgslsmith_add_i32(-50724i | u_input.d, firstLeadingBit(var_0.a)), var_0.b, !(!vec4<bool>(true, true, var_0.c.x, var_0.d)), false));
    var_0 = func_2();
    var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(var_1.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.e.x, u_input.c.x, 0u), vec4<u32>(21264u, u_input.c.x, var_1.x, u_input.e.x))), u_input.e.yxw), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, min(0u, 1u), _wgslsmith_div_u32(99503u, 16931u)), vec3<u32>(~var_1.x, reverseBits(var_1.x), u_input.b.x & var_1.x)), reverseBits(select(u_input.e.yzz, ~vec3<u32>(u_input.b.x, 4294967295u, 0u), select(vec3<bool>(var_0.d, false, var_2.d), vec3<bool>(false, var_0.d, true), vec3<bool>(true, false, var_2.c.x))))), reverseBits(vec3<u32>(~_wgslsmith_mult_u32(u_input.c.x, u_input.b.x), var_1.x, 14897u ^ firstTrailingBit(22170u))), ~vec3<u32>(min(10506u, _wgslsmith_div_u32(var_1.x, u_input.b.x)), 1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.e.zzw, vec3<u32>(u_input.c.x, 15988u, 50413u)), _wgslsmith_add_u32(2787u, u_input.e.x))));
    let var_3 = !vec3<bool>(true, !var_0.d, func_3(func_2()));
    var_1 = ~vec3<u32>(4294967295u, _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_div_u32(0u, 26403u)), ~(~_wgslsmith_sub_u32(67638u, var_1.x)));
    let var_4 = vec2<bool>(select(select(var_2.c.x | (u_input.b.x < 0u), all(var_2.c.xxx), !var_0.d), func_1(reverseBits(u_input.a) <= u_input.d, var_2.a, u_input.c.x).d, false), func_1(true, firstTrailingBit(2147483647i) | var_2.a, var_1.x).c.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.zzz & ~vec3<u32>(4294967295u, var_1.x, u_input.b.x), -_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.a, u_input.a), vec2<i32>(0i, var_2.a)) << ((vec2<u32>(var_1.x, 0u) | u_input.c) % vec2<u32>(32u)), vec2<i32>(firstLeadingBit(-14260i), var_0.a >> (22178u % 32u))), ~65835i);
}

