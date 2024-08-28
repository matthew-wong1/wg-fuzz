struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec4<i32> {
    let var_0 = all(vec2<bool>(true | (_wgslsmith_f_op_f32(arg_0.a + arg_0.a) <= _wgslsmith_f_op_f32(trunc(arg_0.a))), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(select(-1733f, arg_0.a, var_0))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(681f, -161f, arg_0.a), vec3<f32>(arg_0.a, 553f, -1633f)), vec3<f32>(arg_0.a, arg_0.a, 1300f), var_0))) + vec3<f32>(-1455f, _wgslsmith_f_op_f32(step(arg_0.a, arg_0.a)), arg_0.a))));
    return vec4<i32>(abs(i32(-1i) * -43858i), 35083i, _wgslsmith_dot_vec3_i32(vec3<i32>(~1i, _wgslsmith_mod_i32(arg_0.d, i32(-1i) * -2147483647i), _wgslsmith_mult_i32(~(-79856i), ~(-1i))), firstLeadingBit(arg_0.c.xyx | u_input.b)), _wgslsmith_div_i32(-(arg_0.d >> (arg_0.b % 32u)), -15150i) | 26448i);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(-1131f, ~1u, ~func_3(Struct_1(1f, 1u, vec4<i32>(u_input.a, -14644i, 1i, u_input.b.x) ^ vec4<i32>(u_input.b.x, 7715i, -19617i, u_input.a), -u_input.a), 1i), u_input.b.x);
    let var_1 = ~func_3(var_0, i32(-1i) * -3261i).zw;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-859f, _wgslsmith_f_op_f32(-871f * var_0.a), false)))), reverseBits(_wgslsmith_add_u32(59330u, var_0.b)), reverseBits(firstLeadingBit(select(var_0.c, ~var_0.c, var_0.a == 1000f))), u_input.a);
    let var_3 = ~vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 0i, var_0.d), u_input.b) << (~0u % 32u), -var_1.x);
    var var_4 = abs(4294967295u);
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = func_2();
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_4(func_2(), all(vec3<bool>(true, true, true)), func_2());
    var_0 = arg_0;
    var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a))), firstLeadingBit(~4294967295u), abs(arg_0.c), 0i);
    let var_1 = func_2();
    var var_2 = ~0u;
    return func_2();
}

fn func_5(arg_0: Struct_1) -> u32 {
    let var_0 = u_input.a;
    let var_1 = func_4(func_2(), any(vec4<bool>((var_0 < u_input.a) || any(vec4<bool>(true, true, false, true)), true, (arg_0.a > arg_0.a) | (u_input.a < arg_0.d), false)), arg_0).b;
    let var_2 = firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(func_1(Struct_1(arg_0.a, arg_0.b, arg_0.c, u_input.a)).b, ~arg_0.b, 103751u, abs(4294967295u)) >> (~(~vec4<u32>(arg_0.b, var_1, var_1, var_1)) % vec4<u32>(32u)), vec4<u32>(arg_0.b, min(12489u, var_1) ^ 60257u, arg_0.b, 42562u)));
    let var_3 = _wgslsmith_f_op_f32(arg_0.a + arg_0.a);
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-func_2().a), var_3);
    return 57849u;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32) -> StorageBuffer {
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(select(abs(-8556i), firstLeadingBit(u_input.a), true), arg_0.d) << (_wgslsmith_div_u32(~_wgslsmith_mult_u32(arg_2, 0u), ~1u) % 32u), func_1(arg_0).c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, -2147483647i, arg_0.d, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(-46005i, arg_1.x, arg_1.x, arg_0.d), vec4<i32>(arg_1.x, arg_1.x, arg_0.c.x, -31279i)))), arg_1.xzx));
    let var_1 = Struct_1(570f, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~arg_2, abs(6886u), ~arg_2), ~vec3<u32>(arg_2, arg_2, 3547u), _wgslsmith_add_vec3_u32(select(vec3<u32>(79059u, arg_2, 0u), vec3<u32>(30413u, 52168u, 1u), vec3<bool>(true, true, false)), vec3<u32>(arg_0.b, 0u, 4294967295u))), ~(~(vec3<u32>(4294967295u, 81610u, arg_0.b) >> (vec3<u32>(arg_2, 1u, arg_0.b) % vec3<u32>(32u))))), func_2().c, u_input.b.x);
    let var_2 = vec4<bool>(-1645f != _wgslsmith_f_op_f32(min(1002f, var_1.a)), any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(func_2().a + _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(min(var_1.a, arg_0.a)))) >= _wgslsmith_div_f32(arg_0.a, func_2().a));
    var var_3 = func_4(Struct_1(-638f, 1u, arg_1 ^ arg_0.c, var_0.x), var_2.x, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a - 1160f))))), ~_wgslsmith_sub_u32(24650u, ~arg_2), max(vec4<i32>(_wgslsmith_div_i32(-17589i, var_1.c.x), arg_1.x, _wgslsmith_div_i32(arg_0.c.x, 0i), 59783i), -_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.d, 7377i, -1i, 13458i), vec4<i32>(40321i, -9037i, arg_1.x, 1i))), ~(arg_1.x ^ u_input.b.x)));
    var_3 = func_4(Struct_1(func_4(Struct_1(925f, 1u, _wgslsmith_add_vec4_i32(var_3.c, vec4<i32>(var_3.d, var_0.x, 71333i, -47424i)), -15961i), var_2.x, arg_0).a, 4294967295u ^ _wgslsmith_mod_u32(~arg_0.b, arg_2), arg_0.c, _wgslsmith_mod_i32(2147483647i, -2327i)), var_2.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_div_f32(1954f, var_1.a))), arg_0.b, var_1.c, -8766i));
    return StorageBuffer(74475u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f) * _wgslsmith_f_op_f32(-201f + -2103f))), 1u, select(vec4<i32>(~(-1i), u_input.a, 28413i << (1u % 32u), -52408i), vec4<i32>(25733i, max(8326i, u_input.b.x), _wgslsmith_div_i32(-12363i, u_input.b.x), u_input.b.x << (1u % 32u)), any(vec2<bool>(false, true))), -101571i), vec4<i32>(u_input.b.x, -11151i, 2147483647i, -43948i) & -_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-22239i, u_input.b.x, u_input.b.x, -59724i), vec4<i32>(-2147483647i, 1i, u_input.a, u_input.b.x)), reverseBits(vec4<i32>(-1i, -13671i, u_input.b.x, u_input.a))), _wgslsmith_clamp_u32(~4294967295u, func_5(func_1(Struct_1(2031f, 71140u, vec4<i32>(u_input.a, 7261i, 2147483647i, -1i), -1i))), ~abs(1u)));
}

