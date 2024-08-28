struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: Struct_3) -> f32 {
    return -144f;
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = u_input.c.yz;
    var var_1 = Struct_1(reverseBits(u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-674f)) + _wgslsmith_f_op_f32(542f - 130f)) + -1705f) - _wgslsmith_f_op_f32(f32(-1f) * -1056f)));
    var var_2 = Struct_1(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(943f, _wgslsmith_f_op_f32(f32(-1f) * -711f)) * 432f));
    let var_3 = select(-(vec4<i32>(0i, firstLeadingBit(var_1.a), var_1.a, var_2.a) ^ vec4<i32>(-20956i, var_2.a, -10286i, 0i)), ~vec4<i32>(var_2.a, 1i, firstLeadingBit(var_2.a), 1i), true);
    let var_4 = Struct_1(abs(var_2.a) >> (0u % 32u), 532f);
    return var_4.b;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(firstLeadingBit(~1i), 603f);
    var var_1 = -(~(-abs(vec2<i32>(u_input.b, 1i) << (u_input.c.xz % vec2<u32>(32u)))));
    let var_2 = ~_wgslsmith_mod_i32(firstTrailingBit(~u_input.b), abs(-49821i ^ u_input.b));
    var_1 = vec2<i32>(-1i) * -vec2<i32>(var_1.x, ~(-var_0.a));
    var var_3 = Struct_3(false, Struct_2(Struct_1(~var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(5406u))))), abs(1u), ~(~u_input.b), 8547u, -17672i), Struct_2(Struct_1(-16104i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(580f * var_0.b)))), ~(1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, 1u, 1u), vec4<u32>(10515u, 0u, 3493u, 73909u)) % 32u)), -7609i, 0u << (u_input.c.x % 32u), _wgslsmith_add_i32(1686i, -u_input.b) | (u_input.b ^ 12662i)), Struct_1(_wgslsmith_dot_vec2_i32(max(-vec2<i32>(var_0.a, var_2), vec2<i32>(43166i, 0i)), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a, -2147483647i), vec2<i32>(-50028i, -52403i)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_2, 29514i), vec2<i32>(0i, 1i)))), 690f), var_1.x);
    return var_3.c.a;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = vec2<bool>(true, any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_1 = 835f;
    let var_2 = Struct_1(-(~1i), _wgslsmith_f_op_f32(floor(-501f)));
    let var_3 = vec4<u32>(_wgslsmith_div_u32(u_input.c.x, ~(~abs(66297u))), u_input.a | 1u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(42297u, u_input.c.x) >> (u_input.a % 32u), 0u, 0u) | ~u_input.a, select(63460u, 4294967295u, var_0.x) ^ (firstLeadingBit(_wgslsmith_add_u32(u_input.c.x, 60869u)) >> (select(53406u, _wgslsmith_mult_u32(u_input.a, 54044u), var_0.x && var_0.x) % 32u)));
    let var_4 = arg_0.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(var_0.x, Struct_2(arg_0, u_input.c.x, u_input.b, u_input.a, -14040i), Struct_2(Struct_1(-2147483647i, -586f), u_input.c.x, 3486i, var_3.x, 1343i), Struct_1(0i, var_4), -52996i))) - var_2.b) + _wgslsmith_f_op_f32(-arg_0.b)));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = 0u;
    var var_1 = -_wgslsmith_mod_i32(select(i32(-1i) * -2147483647i, firstLeadingBit(24888i), true), _wgslsmith_mult_i32(-2147483647i, ~(-1i)));
    var var_2 = Struct_2(arg_2, ~((_wgslsmith_mod_u32(24083u, var_0) | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0, var_0, var_0), vec4<u32>(var_0, 4294967295u, var_0, 77793u))) >> (_wgslsmith_dot_vec3_u32(~u_input.c, vec3<u32>(var_0, 53639u, var_0)) % 32u)), arg_1.x, ~(~_wgslsmith_mod_u32(4294967295u, 19096u)), u_input.b ^ -1i);
    var var_3 = all(vec4<bool>(true, false, false, !(4294967295u != firstLeadingBit(u_input.a))));
    var_1 = _wgslsmith_mult_i32(u_input.b, 15383i);
    return Struct_2(var_2.a, ~select(~21315u, var_0, false), ~(~_wgslsmith_mod_i32(arg_1.x, -u_input.b)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(20155u, 0u, 0u, var_2.b), _wgslsmith_add_vec4_u32(abs(vec4<u32>(var_0, 44354u, 1u, var_2.d)), vec4<u32>(u_input.c.x, u_input.c.x, var_0, var_0))), ~(~select(vec4<u32>(var_2.d, 4294967295u, 4294967295u, 0u), vec4<u32>(52120u, 4294967295u, 4294967295u, 8196u), vec4<bool>(false, true, false, true)))), 2147483647i);
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = Struct_3(_wgslsmith_sub_u32(firstTrailingBit(select(4294967295u, arg_1.d, false)), ~arg_1.d) < (43421u | (12846u & u_input.c.x)), func_5(arg_1.a.b, _wgslsmith_sub_vec2_i32(vec2<i32>(8303i, 2147483647i) >> (vec2<u32>(arg_1.d, 34658u) % vec2<u32>(32u)), abs(vec2<i32>(u_input.b, 0i)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(0i, 2828i), vec2<i32>(arg_0, -5484i))), Struct_1(firstTrailingBit(arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b) + _wgslsmith_div_f32(arg_1.a.b, arg_1.a.b)))), Struct_2(Struct_1(-1i, 534f), arg_1.d, 45257i, ~u_input.c.x, -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_1.a.a), vec2<i32>(arg_1.a.a, -1i)), firstTrailingBit(-56384i))), arg_1.a, -1i);
    let var_1 = func_5(-1286f, ~max(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, arg_0), vec2<i32>(var_0.b.e, 2147483647i), vec2<i32>(arg_1.a.a, arg_0)), vec2<i32>(u_input.b, u_input.b)) ^ _wgslsmith_mod_vec2_i32(abs(vec2<i32>(7468i, 0i) >> (vec2<u32>(var_0.b.b, u_input.a) % vec2<u32>(32u))), select(vec2<i32>(-2295i, var_0.d.a), select(vec2<i32>(-48207i, -2147483647i), vec2<i32>(0i, -2147483647i), false), select(vec2<bool>(var_0.a, false), vec2<bool>(false, false), true))), arg_1.a);
    var var_2 = func_5(_wgslsmith_f_op_f32(max(-810f, arg_1.a.b)), vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, var_1.e), vec3<i32>(-10727i, 21225i, u_input.b)), select(u_input.b, var_0.c.a.a, false)), Struct_1(func_2().a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.a.b, var_1.a.b)))).a;
    var_2 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a.b)) + -986f), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.e, 0i), ~(vec2<i32>(32995i, 26684i) ^ vec2<i32>(u_input.b, var_1.a.a)), reverseBits(~vec2<i32>(56606i, arg_1.c))), vec2<i32>(arg_1.c, firstLeadingBit(u_input.b))), Struct_1(abs(-_wgslsmith_add_i32(1i, arg_1.e)), -2119f)).a;
    var var_3 = var_0;
    return StorageBuffer(u_input.c.x, vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.a, -2147483647i, -8082i, -11978i), vec4<i32>(abs(2147483647i), arg_0 << (var_0.b.b % 32u), -u_input.b, 1i)), -_wgslsmith_sub_i32(-2147483647i, var_2.a) | ~_wgslsmith_mult_i32(0i, arg_1.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(u_input.b, func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-461f))) - _wgslsmith_div_f32(640f, _wgslsmith_f_op_f32(func_1(Struct_3(false, Struct_2(Struct_1(1i, -884f), 1u, 19813i, u_input.a, 6438i), Struct_2(Struct_1(0i, 964f), 4294967295u, 21391i, 4294967295u, -2147483647i), Struct_1(u_input.b, -318f), u_input.b))))), ~vec2<i32>(2332i, 0i) ^ ~vec2<i32>(u_input.b, u_input.b), Struct_1(u_input.b, _wgslsmith_f_op_f32(func_4(func_2())))));
}

