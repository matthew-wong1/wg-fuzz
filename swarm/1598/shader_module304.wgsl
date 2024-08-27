struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> i32 {
    let var_0 = firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits(arg_1), arg_1) >> (firstTrailingBit(vec2<u32>(0u, arg_1)) % vec2<u32>(32u)), vec2<u32>(arg_1 ^ 4294967295u, arg_1)));
    var var_1 = Struct_2(Struct_1(-1i, true, true), ~97317u, arg_0);
    var_1 = Struct_2(var_1.a, ~var_1.b, Struct_1(firstTrailingBit(-18445i), all(!vec2<bool>(var_1.a.b, arg_0.b)), arg_0.c));
    var_1 = Struct_2(var_1.c, ~var_0.x ^ countOneBits(71214u), Struct_1(select(u_input.a.x, ~var_1.c.a >> (var_1.b % 32u), !all(vec2<bool>(var_1.c.b, false))), var_1.a.b, !(!any(vec4<bool>(false, arg_0.b, true, arg_0.b)))));
    let var_2 = Struct_2(var_1.a, 45319u, var_1.c);
    return -21139i;
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(~u_input.a.x, u_input.b, 1i) & _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-9061i, u_input.b, 1i), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -29180i, u_input.a.x), vec3<i32>(-1i, -1i, 1i)), vec3<i32>(u_input.a.x, u_input.a.x, 16279i))), _wgslsmith_mod_vec3_i32(-(vec3<i32>(-31758i, u_input.a.x, -10352i) | vec3<i32>(1075i, u_input.a.x, 0i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b, u_input.a.x, u_input.b), vec3<i32>(u_input.a.x, u_input.a.x, u_input.b))) | -vec3<i32>(~u_input.b, i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, u_input.a.x))));
    var_0 = countOneBits(~_wgslsmith_sub_vec3_i32((vec3<i32>(0i, var_0.x, 0i) | vec3<i32>(1i, -2147483647i, -2147483647i)) | _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_0.x, -50852i), vec3<i32>(2147483647i, u_input.b, var_0.x)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 0i, var_0.x), vec3<i32>(var_0.x, 1i, 1i))));
    let var_1 = abs(-(~vec4<i32>(~u_input.b, ~(-38954i), u_input.a.x << (arg_0.x % 32u), _wgslsmith_dot_vec2_i32(var_0.zy, vec2<i32>(15753i, var_0.x)))));
    var var_2 = Struct_3(reverseBits(vec3<i32>(~func_3(Struct_1(-2147483647i, false, false), arg_0.x), _wgslsmith_sub_i32(var_0.x, -1i) >> (select(arg_0.x, arg_0.x, true) % 32u), firstTrailingBit(var_0.x))), Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, var_1.x, var_1.x) >> (arg_0 % vec4<u32>(32u)), var_1), (u_input.b >= var_1.x) | any(vec3<bool>(false, false, false)), true), reverseBits(_wgslsmith_add_u32(2450u, 1u)), Struct_1(reverseBits(56477i) & var_1.x, false, true)), vec2<bool>(true, all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    let var_3 = Struct_2(var_2.b.a, firstLeadingBit(var_2.b.b), Struct_1(var_1.x, !var_2.c.x, true));
    return select(~(~(~(var_3.b << (arg_0.x % 32u)))), arg_0.x, !var_2.b.a.b);
}

fn func_1() -> vec3<i32> {
    let var_0 = vec3<u32>(~abs(~func_2(vec4<u32>(284u, 50362u, 0u, 4294967295u))), _wgslsmith_div_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(1u, 1u), ~20941u), 4294967295u), 4294967295u);
    let var_1 = all(select(vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), all(vec4<bool>(true, true, true, true)), true), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(all(vec2<bool>(false, true)), -2572i >= u_input.a.x, true), all(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, all(vec3<bool>(false, true, false)))));
    var var_2 = -1324f;
    let var_3 = Struct_2(Struct_1(abs(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b, u_input.b), -2147483647i)), var_1, !select(var_1, var_1, u_input.a.x < 139i)), abs(var_0.x), Struct_1(u_input.a.x, all(select(select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, true, true, var_1), true), select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(true, var_1, var_1, var_1)), !vec4<bool>(var_1, false, var_1, var_1))), all(select(select(vec3<bool>(true, var_1, false), vec3<bool>(true, true, true), vec3<bool>(true, true, var_1)), vec3<bool>(true, false, var_1), all(vec3<bool>(var_1, false, true))))));
    let var_4 = Struct_3(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, ~(-1i), _wgslsmith_div_i32(var_3.c.a, -1i)), vec3<i32>(var_3.c.a, -10137i, 55069i) ^ countOneBits(vec3<i32>(-2147483647i, var_3.a.a, 2147483647i))), -max(-vec3<i32>(u_input.b, u_input.a.x, 33371i), vec3<i32>(u_input.a.x, 2147483647i, var_3.c.a)), vec3<i32>(-(~(-11320i)), firstTrailingBit(func_3(Struct_1(var_3.a.a, var_3.c.c, true), 0u)), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-33566i, -2147483647i, u_input.a.x, var_3.a.a)), vec4<i32>(var_3.c.a, 30741i, -2147483647i, var_3.a.a) & vec4<i32>(0i, 2147483647i, 0i, -2147483647i)))), var_3, vec2<bool>(!(var_1 && false), true));
    return _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(func_3(var_3.a, ~var_4.b.b), (var_4.a.x & -6117i) | -10776i, var_3.c.a), countOneBits(var_4.a | ~vec3<i32>(var_3.c.a, -24204i, var_3.c.a))), vec3<i32>(_wgslsmith_sub_i32(~select(-16046i, 1i, var_1), 2093i), max(37848i, var_4.b.a.a | var_3.a.a) & abs(-1i), (abs(var_3.c.a) << (~12526u % 32u)) ^ _wgslsmith_dot_vec2_i32(-vec2<i32>(19516i, u_input.a.x), vec2<i32>(var_4.a.x, var_4.a.x))), select(var_4.a, max(firstLeadingBit(vec3<i32>(var_4.b.c.a, var_3.c.a, var_3.a.a)), vec3<i32>(~var_3.a.a, _wgslsmith_clamp_i32(var_3.c.a, var_3.a.a, var_3.a.a), var_4.b.c.a)), all(select(select(vec3<bool>(false, false, false), vec3<bool>(var_4.b.a.c, true, false), var_4.c.x), !vec3<bool>(true, true, var_1), var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(true || any(vec4<bool>(false, true, false, false))));
    var var_1 = Struct_3(func_1(), Struct_2(Struct_1(u_input.b, var_0, false), 0u, Struct_1(0i, var_0, !(!var_0))), vec2<bool>(true, var_0));
    var var_2 = Struct_1(-(_wgslsmith_dot_vec3_i32(var_1.a, -vec3<i32>(2147483647i, u_input.b, var_1.b.c.a)) ^ (var_1.b.c.a << (~1u % 32u))), true, any(!vec3<bool>(true & var_1.c.x, false, true)));
    var_2 = Struct_1(_wgslsmith_mod_i32(((u_input.b >> (54357u % 32u)) << (2643u % 32u)) >> (select(_wgslsmith_clamp_u32(var_1.b.b, 30690u, 4294967295u), 6352u, true) % 32u), _wgslsmith_mult_i32(2147483647i, var_2.a)), !(!var_2.c), select(true, false, var_1.c.x));
    var var_3 = var_1.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-332f, -1000f)))))), u_input.b, ~reverseBits(~abs(vec4<u32>(var_1.b.b, var_1.b.b, var_1.b.b, var_1.b.b))));
}

