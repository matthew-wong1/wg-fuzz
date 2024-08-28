struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = arg_0;
    let var_1 = var_0.c;
    var_0 = arg_0;
    var var_2 = min(0u, _wgslsmith_dot_vec4_u32(countOneBits(countOneBits(u_input.a) << (u_input.a % vec4<u32>(32u))), vec4<u32>(_wgslsmith_sub_u32(1303u, _wgslsmith_mod_u32(u_input.a.x, arg_0.b)), abs(34909u), var_0.b, u_input.a.x)));
    var var_3 = u_input.a;
    return arg_0.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>) -> i32 {
    var var_0 = Struct_1(u_input.c, _wgslsmith_sub_u32(~(~arg_0.x), abs(arg_1.x)), -108f, min(~u_input.c.x, ~u_input.d.x));
    var_0 = Struct_1(func_3(Struct_1(var_0.a, 17777u >> (1u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + -895f)), u_input.c.x)), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(63440u, arg_1.x, 0u), ~arg_0) | max(32263u, arg_1.x)), var_0.c, ~var_0.d);
    var_0 = Struct_1(var_0.a, 1u, 185f, ~_wgslsmith_clamp_i32(var_0.a.x, ~(-1i), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.d, u_input.d), u_input.c.x << (arg_1.x % 32u))));
    let var_1 = u_input.c.x == -2147483647i;
    let var_2 = Struct_1(~_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_0.a.x, var_0.a.x), 68286i), var_0.a), abs(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), _wgslsmith_div_u32(4294967295u, arg_1.x))), 1000f, -36196i);
    return ~(~u_input.c.x);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(u_input.d.xz, ~u_input.b | 29940u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-266f)) - _wgslsmith_f_op_f32(f32(-1f) * -1285f)))), u_input.d.x);
    var var_1 = Struct_1(-var_0.a, _wgslsmith_dot_vec3_u32(u_input.a.wxz, u_input.a.wxx), -1933f, ~(-func_2(abs(vec3<u32>(1u, 0u, var_0.b)), vec4<u32>(u_input.b, 42065u, 28928u, 24210u))));
    var_1 = Struct_1(var_0.a, 0u, _wgslsmith_div_f32(var_1.c, 234f), max(select(min(u_input.d.x >> (var_1.b % 32u), max(var_1.d, 2147483647i)), -abs(1i), _wgslsmith_f_op_f32(-var_0.c) == 2920f), var_1.a.x));
    let var_2 = Struct_1(reverseBits(vec2<i32>(1i, _wgslsmith_div_i32(i32(-1i) * -1i, max(-2147483647i, var_0.a.x)))), _wgslsmith_dot_vec4_u32(~vec4<u32>(76710u, ~1u, ~var_1.b, firstTrailingBit(var_1.b)), ~u_input.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-789f, _wgslsmith_f_op_f32(-var_0.c), all(vec3<bool>(false, false, false)))), -511f) + _wgslsmith_f_op_f32(1217f - _wgslsmith_f_op_f32(round(-174f)))), abs(-var_0.d));
    var var_3 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x | u_input.a.x, ~u_input.a.x, u_input.b), firstTrailingBit(vec3<u32>(u_input.a.x, 1u, 4294967295u))));
    var var_1 = 1u;
    var_1 = ~(~1u);
    var var_2 = u_input.b;
    var_1 = _wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(u_input.b, ~_wgslsmith_mult_u32(4294967295u, ~var_0.x)));
    let var_3 = !(!select(vec4<bool>(true, any(vec2<bool>(false, false)), true, any(vec4<bool>(true, true, true, false))), vec4<bool>(true, false, false, any(vec4<bool>(true, false, true, true))), ~2741i != _wgslsmith_mod_i32(-2147483647i, u_input.d.x)));
    let var_4 = func_1();
    var var_5 = _wgslsmith_mult_vec4_i32(~abs(vec4<i32>(u_input.d.x, var_4.a.x, var_4.d, 1i)) >> (vec4<u32>(countOneBits(35146u), var_0.x ^ 11813u, _wgslsmith_div_u32(var_4.b, var_0.x), 1u) % vec4<u32>(32u)), vec4<i32>(u_input.d.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-14227i, var_4.d, var_4.d, 1i), vec4<i32>(u_input.d.x, var_4.d, var_4.d, 20308i)), vec4<i32>(4224i, 31691i, -12472i, -23811i) >> (vec4<u32>(4294967295u, var_4.b, u_input.b, 1u) % vec4<u32>(32u))), -1i, 2147483647i)) & ~firstTrailingBit(vec4<i32>(func_1().a.x, -1i | var_4.a.x, _wgslsmith_add_i32(u_input.c.x, u_input.d.x), firstTrailingBit(u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(var_5.zzw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.c) + _wgslsmith_f_op_f32(round(-258f))), 937f)) * _wgslsmith_f_op_f32(select(func_1().c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_4.c), -2246f)), var_3.x))));
}

