struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(-select(u_input.d, u_input.a, false), 1i, -1i), vec3<i32>(-2147483647i, countOneBits(i32(-1i) * -2147483647i), u_input.a));
    let var_1 = _wgslsmith_mult_i32(-2147483647i, u_input.a) > var_0;
    let var_2 = ~30808i;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_1.b.a - vec2<f32>(-103f, arg_1.b.d)), vec2<f32>(arg_1.d.a.x, -681f), true)) * _wgslsmith_f_op_vec2_f32(-arg_1.c.a)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -378f), _wgslsmith_f_op_f32(step(776f, _wgslsmith_f_op_f32(arg_1.b.a.x * arg_1.b.d)))), false)), countOneBits(arg_1.d.b) ^ 14999u, arg_1.c.c, -1700f, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(711f, arg_1.c.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.a.x) - arg_1.c.d)))));
    let var_4 = arg_1;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(arg_1.c.e)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(153f, -437f, arg_0)), _wgslsmith_f_op_f32(arg_1.a - 119f))))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> i32 {
    var var_0 = arg_1.a;
    let var_1 = var_0.b.c & var_0.c.c;
    let var_2 = countOneBits(vec3<u32>(arg_0.a.c.b, _wgslsmith_sub_u32(var_0.c.b, 26076u << (1u % 32u)) << ((_wgslsmith_div_u32(53103u, 1u) >> (0u % 32u)) % 32u), ~var_0.d.c.x));
    var_0 = Struct_2(arg_1.a.a, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.a), -1279f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(true, Struct_2(920f, var_0.b, var_0.d, arg_1.a.b))) - vec2<f32>(arg_1.a.d.d, -3068f))), firstTrailingBit(~(~arg_0.a.d.c.x)), var_2 ^ abs(_wgslsmith_add_vec3_u32(var_1, vec3<u32>(arg_0.a.b.b, arg_1.a.c.b, var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a.d.e.x, _wgslsmith_f_op_f32(arg_0.a.b.a.x - 1338f)))), arg_0.a.b.e), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.c.d, _wgslsmith_div_f32(-307f, -1536f))), ~firstLeadingBit(_wgslsmith_mult_u32(var_2.x, 22013u)), reverseBits(vec3<u32>(0u, _wgslsmith_add_u32(0u, 4294967295u), u_input.c.x)), 1146f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.c.e), vec2<f32>(var_0.b.a.x, arg_1.a.b.d)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, var_0.c.a.x)), -282f), arg_0.a.d.c.x, vec3<u32>(~arg_0.a.b.b, var_2.x, ~u_input.b.x) | firstLeadingBit(~vec3<u32>(var_1.x, 1u, u_input.b.x)), 1004f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(false, arg_0.a)))));
    var var_3 = ~1u & ~_wgslsmith_sub_u32(~abs(var_2.x), ~_wgslsmith_mult_u32(arg_0.a.b.b, 1u));
    return ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.d, reverseBits(-2722i), -9602i, _wgslsmith_clamp_i32(u_input.a, u_input.a, 29095i)), vec4<i32>(_wgslsmith_add_i32(12467i, -7510i), -1i, -u_input.a, 1i)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(-9227i, ~(func_2(Struct_3(Struct_2(480f, Struct_1(vec2<f32>(-166f, -204f), arg_0, u_input.c.xyz, -1349f, vec2<f32>(-677f, -1187f)), Struct_1(vec2<f32>(400f, 208f), arg_0, u_input.b, 1120f, vec2<f32>(385f, 1217f)), Struct_1(vec2<f32>(1000f, 1000f), 96741u, vec3<u32>(u_input.b.x, u_input.c.x, 4294967295u), 284f, vec2<f32>(-211f, 1289f)))), Struct_3(Struct_2(-1451f, Struct_1(vec2<f32>(776f, -772f), u_input.b.x, vec3<u32>(arg_0, u_input.b.x, arg_0), 941f, vec2<f32>(980f, -267f)), Struct_1(vec2<f32>(740f, -652f), arg_0, vec3<u32>(0u, 4294967295u, arg_0), 499f, vec2<f32>(-875f, 661f)), Struct_1(vec2<f32>(844f, -509f), 0u, vec3<u32>(arg_0, arg_0, 39666u), 518f, vec2<f32>(125f, 618f))))) << (u_input.b.x % 32u))), countOneBits(_wgslsmith_dot_vec3_i32(countOneBits(select(vec3<i32>(u_input.a, 47867i, -395i), vec3<i32>(0i, u_input.a, -14816i), vec3<bool>(false, false, true))), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.d, u_input.d, u_input.d), _wgslsmith_sub_vec3_i32(vec3<i32>(-1251i, -5822i, u_input.a), vec3<i32>(2147483647i, -1i, u_input.a))))));
    var_0 = u_input.a;
    return Struct_1(vec2<f32>(-832f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-395f + 2139f))), _wgslsmith_sub_u32(0u, 0u), reverseBits(select(u_input.c.yxw, vec3<u32>(4294967295u, u_input.c.x, max(1u, 0u)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2363f + 783f), _wgslsmith_f_op_f32(f32(-1f) * -505f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1088f, -730f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(select(countOneBits(_wgslsmith_sub_u32(~25194u, ~u_input.c.x)), u_input.c.x, u_input.b.x >= 56237u));
    var var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(44190u, ~1u, abs(~0u), var_0.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.x, u_input.b.x >> (var_0.b % 32u), ~1u, ~6599u), ~u_input.c), vec4<u32>(~(~var_0.c.x), u_input.c.x, u_input.c.x, 10163u)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c.x, 84602u, 0u, 75061u), vec4<u32>(u_input.c.x, var_0.b, u_input.b.x, var_0.b), true), ~u_input.c), 1u, ~_wgslsmith_sub_u32(106537u, var_0.c.x), countOneBits(~16095u)), vec4<u32>(u_input.c.x, min(var_0.c.x, _wgslsmith_mod_u32(~0u, 24674u)), 1u, var_0.b));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.a, -2479i), ~vec3<i32>(7346i, 2147483647i, u_input.d))), firstTrailingBit(_wgslsmith_mod_i32(~(-1i), 32125i))), ~u_input.a);
    var var_3 = _wgslsmith_sub_i32(u_input.d, -var_2);
    var_1 = u_input.c;
    let var_4 = select(vec3<bool>(any(vec2<bool>(any(vec2<bool>(false, false)), select(false, true, false))), false, any(vec2<bool>(true, true)) == !any(vec3<bool>(false, true, false))), !vec3<bool>(false, !(u_input.a > -57719i), all(vec3<bool>(false, true, false)) == true), 29300u > var_1.x);
    var_1 = ~(u_input.c ^ u_input.c);
    var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(-19299i, 0i, u_input.a, 26116i), select(vec4<i32>(u_input.d, u_input.a, var_2, u_input.d), vec4<i32>(u_input.a, u_input.d, 42759i, var_2), vec4<bool>(true, var_4.x, var_4.x, var_4.x)), -vec4<i32>(var_2, -1i, u_input.d, var_2)), ~(~(~(-vec4<i32>(-2147483647i, var_2, 0i, -35022i)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xwx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x * _wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(all(vec4<bool>(var_4.x, true, var_4.x, var_4.x)), Struct_2(var_0.d, Struct_1(var_0.a, 17522u, vec3<u32>(0u, u_input.b.x, 36056u), -712f, vec2<f32>(345f, var_0.e.x)), var_0, var_0))).x)), countOneBits(select(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, var_2, var_2), vec3<i32>(-1i, -2147483647i, 2147483647i)), var_2, var_4.x)));
}

