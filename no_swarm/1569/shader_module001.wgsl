struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<i32>) -> bool {
    var var_0 = 1u & ~reverseBits(u_input.c.x);
    var_0 = ~(~_wgslsmith_add_u32(79603u, 81890u));
    let var_1 = -42141i;
    let var_2 = Struct_1(firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(2147483647i, -11298i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(53291i, 1i, arg_0.x), vec3<i32>(0i, -12051i, arg_0.x), vec3<bool>(true, false, true)), vec3<i32>(-1i, u_input.d.x, 4201i) & vec3<i32>(-1i, 2147483647i, var_1)), -2147483647i ^ (1i | u_input.a), var_1)), true, _wgslsmith_add_vec4_i32(vec4<i32>(1i, var_1, select(u_input.d.x, 2147483647i, false) & (86292i << (u_input.c.x % 32u)), var_1), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.a, var_1, 35210i), vec4<i32>(-2147483647i, 25707i, u_input.b, u_input.b)) | -reverseBits(vec4<i32>(-1i, 32405i, u_input.d.x, 2147483647i))), _wgslsmith_mod_vec4_i32(firstTrailingBit(~vec4<i32>(-2147483647i, 0i, -2147483647i, u_input.b)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -16326i, arg_0.x, arg_0.x), vec4<i32>(-18102i, arg_0.x, u_input.b, u_input.b)), select(vec4<i32>(var_1, var_1, -57404i, arg_0.x), vec4<i32>(15583i, 2362i, var_1, arg_0.x), vec4<bool>(false, true, false, true))), vec4<i32>(arg_0.x, ~(-1i), _wgslsmith_sub_i32(arg_0.x, u_input.d.x), 1i))), u_input.c.x);
    let var_3 = var_2;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1653f * -172f))))) != _wgslsmith_f_op_f32(-441f - 794f);
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<bool>, arg_3: vec4<u32>) -> vec3<u32> {
    let var_0 = -467f;
    let var_1 = var_0;
    var var_2 = var_0;
    let var_3 = Struct_1(-firstTrailingBit(_wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.d.x, -12288i, arg_0.x, -1i), vec4<i32>(u_input.a, 1i, 40883i, 82462i)), abs(vec4<i32>(u_input.d.x, arg_0.x, 66236i, 6159i)))), !(-1i != abs(arg_0.x << (arg_3.x % 32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, reverseBits(-52848i), firstLeadingBit(arg_0.x), _wgslsmith_div_i32(0i, arg_0.x)) ^ select(select(vec4<i32>(arg_0.x, arg_0.x, -2147483647i, arg_0.x), vec4<i32>(15552i, u_input.b, 0i, -2147483647i), arg_2.x), firstLeadingBit(vec4<i32>(1i, u_input.a, u_input.d.x, arg_0.x)), vec4<bool>(false, false, false, false)), _wgslsmith_mod_vec4_i32(vec4<i32>(35022i, arg_0.x, -arg_0.x, u_input.a), -vec4<i32>(-1i, 0i, -1i, arg_0.x))), vec4<i32>(arg_0.x, u_input.b, abs(0i), -abs(-2147483647i)), u_input.c.x);
    var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1)), var_0)));
    return select(~arg_3.wzx, u_input.c, !vec3<bool>(!all(vec2<bool>(false, arg_2.x)), !any(vec3<bool>(false, arg_2.x, true)), arg_2.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>) -> vec3<i32> {
    var var_0 = 238f;
    var_0 = arg_0.x;
    let var_1 = abs(func_3(vec3<i32>(arg_1.x, _wgslsmith_add_i32(21434i, arg_1.x), u_input.d.x), -1326f, vec3<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(true, false, false, false)), all(vec4<bool>(true, false, false, false))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 38319u, 0u, u_input.c.x), firstLeadingBit(vec4<u32>(56560u, 52808u, 4294967295u, u_input.c.x))))) | ~(~u_input.c);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)) + _wgslsmith_f_op_f32(round(arg_0.x))) - _wgslsmith_f_op_f32(arg_0.x * arg_0.x));
    var var_2 = Struct_1(vec4<i32>(-1i, _wgslsmith_add_i32(u_input.b & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.a, -1i, 20850i), vec4<i32>(0i, 1i, 2147483647i, 2147483647i)), ~(-33419i)), 1i, arg_1.x), true, -(~vec4<i32>(_wgslsmith_clamp_i32(-11844i, 0i, arg_1.x), ~(-1i), ~u_input.d.x, -27815i << (u_input.c.x % 32u))), reverseBits(vec4<i32>(2147483647i, _wgslsmith_clamp_i32(u_input.b, 19336i, ~u_input.a), _wgslsmith_sub_i32(arg_1.x, arg_1.x) << (~9176u % 32u), 0i)), firstTrailingBit(_wgslsmith_mult_u32(~4294967295u & (0u & var_1.x), ~31792u >> (1u % 32u))));
    return ~arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -reverseBits(-select(vec3<i32>(-2147483647i, 1i, u_input.b) << (u_input.c % vec3<u32>(32u)), vec3<i32>(u_input.d.x, u_input.a, -16276i), u_input.b < u_input.b));
    let var_1 = select(!(!vec3<bool>(true, all(vec2<bool>(true, true)), true)), select(vec3<bool>(false, -50423i >= countOneBits(var_0.x), false), vec3<bool>(all(vec2<bool>(true, true)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), func_1(vec2<i32>(-2147483647i, var_0.x))), -742f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), any(vec2<bool>(!(u_input.c.x <= u_input.c.x), true)));
    let var_2 = -func_2(vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -724f)), _wgslsmith_f_op_f32(f32(-1f) * -2798f), 1637f, 2036f), abs(_wgslsmith_add_vec3_i32(abs(vec3<i32>(7911i, var_0.x, var_0.x)), -vec3<i32>(u_input.d.x, -47474i, 6191i))));
    var var_3 = ~vec2<u32>(u_input.c.x, u_input.c.x);
    var_0 = var_2;
    let var_4 = _wgslsmith_div_vec4_u32(vec4<u32>(var_3.x, 4294967295u, var_3.x, ~firstLeadingBit(62346u)), firstTrailingBit(~vec4<u32>(u_input.c.x ^ var_3.x, countOneBits(u_input.c.x), 1u, ~u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(~_wgslsmith_dot_vec3_i32(var_2, var_2), abs(countOneBits(var_2.x)), 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(910f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-753f)), _wgslsmith_f_op_f32(-218f - 192f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f))));
}

