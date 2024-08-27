struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> vec2<i32> {
    var var_0 = Struct_3(arg_0.d, arg_0.e.x);
    var var_1 = _wgslsmith_div_i32(~_wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_add_i32(0i, -1i)), _wgslsmith_dot_vec4_i32(arg_1 ^ arg_0.e, abs(arg_1))), abs(min(3973i, ~(~var_0.b))));
    let var_2 = u_input.b.x >= min(_wgslsmith_sub_i32(~abs(0i), 1i), _wgslsmith_dot_vec2_i32(arg_1.wx, _wgslsmith_mod_vec2_i32(arg_1.xy, _wgslsmith_add_vec2_i32(arg_1.xw, u_input.b.yx))));
    let var_3 = arg_0;
    var_1 = 22644i;
    return firstLeadingBit(-arg_0.e.xx);
}

fn func_2() -> Struct_2 {
    var var_0 = !select(vec2<bool>(true, any(vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(u_input.b.x != u_input.b.x, select(false, true, false)), true), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))));
    var var_1 = ~0u;
    var_0 = vec2<bool>(!any(select(select(vec2<bool>(true, var_0.x), vec2<bool>(false, false), var_0.x), !vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x))), any(!(!(!vec3<bool>(false, var_0.x, var_0.x)))));
    var var_2 = var_0.x;
    let var_3 = ~func_3(Struct_2(Struct_1(vec3<u32>(1u, 0u, u_input.a) & vec3<u32>(u_input.a, u_input.a, 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-536f)), _wgslsmith_f_op_f32(f32(-1f) * -170f)), Struct_1(countOneBits(vec3<u32>(0u, u_input.c.x, u_input.c.x))), Struct_1(vec3<u32>(34442u, u_input.c.x, 0u)), vec4<i32>(u_input.b.x, u_input.b.x, -u_input.b.x, u_input.b.x)), ~select(vec4<i32>(u_input.b.x, 1i, -9017i, u_input.b.x) ^ u_input.b, u_input.b, !var_0.x));
    return Struct_2(Struct_1(vec3<u32>(~_wgslsmith_add_u32(0u, 0u), ~(~u_input.a), 1u)), _wgslsmith_f_op_f32(-123f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -339f) - -286f), _wgslsmith_f_op_f32(f32(-1f) * -439f))), Struct_1(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c.x, 0u, 1u)), select(vec3<u32>(u_input.c.x, 8998u, 4294967295u), vec3<u32>(u_input.a, u_input.a, 32620u), vec3<bool>(var_0.x, false, false))) << ((_wgslsmith_mult_vec3_u32(vec3<u32>(20861u, 0u, u_input.c.x), vec3<u32>(1u, 3740u, u_input.a)) << (_wgslsmith_add_vec3_u32(vec3<u32>(10573u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 0u, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_1(~(~vec3<u32>(1u, u_input.a, 5417u) & countOneBits(vec3<u32>(29599u, 15225u, 0u)))), u_input.b);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    var var_1 = var_0.d.a.yz;
    var_1 = _wgslsmith_mult_vec2_u32(~(~u_input.c), u_input.c);
    var var_2 = true;
    var_1 = ~var_0.c.a.xy | vec2<u32>(abs(var_0.a.a.x), ~(~61434u));
    return Struct_2(func_2().c, func_2().b, Struct_1(countOneBits(var_0.a.a)), var_0.d, vec4<i32>(u_input.b.x, countOneBits(_wgslsmith_mod_i32(~u_input.b.x, u_input.b.x)), ~_wgslsmith_div_i32(var_0.e.x >> (u_input.c.x % 32u), u_input.b.x), _wgslsmith_add_i32(~u_input.b.x, ~(-var_0.e.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: bool) -> u32 {
    let var_0 = u_input.b.ywz;
    let var_1 = vec3<i32>(-_wgslsmith_sub_i32(-65616i, -arg_2.b), _wgslsmith_sub_i32(max(arg_0.b, _wgslsmith_mult_i32(_wgslsmith_add_i32(8389i, 0i), _wgslsmith_dot_vec2_i32(arg_1.e.xy, arg_1.e.yz))), ((-10713i ^ arg_2.b) | -15126i) | -_wgslsmith_dot_vec2_i32(u_input.b.yz, u_input.b.zw)), _wgslsmith_clamp_i32(countOneBits(var_0.x) ^ ~arg_0.b, var_0.x, i32(-1i) * -func_3(arg_1, arg_1.e).x));
    let var_2 = Struct_3(arg_0.a, _wgslsmith_mod_i32(12397i, ~max(arg_2.b, min(2147483647i, u_input.b.x))));
    return var_2.a.a.x;
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_clamp_i32(0i, -40041i, abs(~_wgslsmith_mult_i32(-578i, -48773i)) << (firstTrailingBit(arg_3) % 32u));
    let var_1 = Struct_3(func_2().c, _wgslsmith_div_i32(-2147483647i & -(1i << (arg_3 % 32u)), _wgslsmith_mod_i32(var_0, 21767i)));
    let var_2 = min(var_1.a.a.x, 34911u);
    let var_3 = Struct_1(_wgslsmith_mod_vec3_u32(countOneBits(var_1.a.a), reverseBits(select(vec3<u32>(44565u, u_input.c.x, arg_3), var_1.a.a, true) | vec3<u32>(var_1.a.a.x, 21323u, var_2))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1511f, -2573f, 1281f, -299f), vec4<f32>(510f, 280f, 422f, -211f)))))) * vec4<f32>(955f, _wgslsmith_f_op_f32(-210f * _wgslsmith_f_op_f32(sign(-1298f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1193f * -1118f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-938f, -795f), -398f)))), ~1i, abs(u_input.b.yyx), u_input.b ^ u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(!(!(!all(vec4<bool>(false, true, true, false)))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), all(vec3<bool>(true, true, true))), vec4<bool>(!all(vec2<bool>(true, true)), (0u != firstTrailingBit(0u)) & ((u_input.b.x > -6735i) == true), false, true), _wgslsmith_mult_u32(_wgslsmith_mult_u32(func_4(Struct_3(Struct_1(vec3<u32>(u_input.a, 31120u, u_input.a)), u_input.b.x), func_1(), Struct_3(Struct_1(vec3<u32>(1u, u_input.a, u_input.c.x)), u_input.b.x), all(vec3<bool>(true, false, true))), u_input.a), u_input.c.x));
}

