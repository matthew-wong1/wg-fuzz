struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_1(false, abs(max(~vec2<u32>(0u, 0u), u_input.c.xx | _wgslsmith_mod_vec2_u32(u_input.c.xx, vec2<u32>(u_input.c.x, 0u)))), vec3<u32>(~77245u, ~1u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(select(u_input.c, vec3<u32>(4840u, u_input.c.x, u_input.c.x), vec3<bool>(false, false, true)), vec3<u32>(33183u, u_input.c.x, u_input.c.x), u_input.c), u_input.c)), firstTrailingBit(u_input.e));
    var var_1 = Struct_1(true, vec2<u32>(abs(4294967295u), _wgslsmith_div_u32(1664u, 32339u)), _wgslsmith_mod_vec3_u32(var_0.c | ~vec3<u32>(4294967295u, u_input.c.x, var_0.b.x), u_input.c >> (~vec3<u32>(u_input.c.x, var_0.b.x, var_0.b.x) % vec3<u32>(32u))) | u_input.c, 1i);
    var_1 = Struct_1(all(vec3<bool>(_wgslsmith_f_op_f32(ceil(137f)) < _wgslsmith_f_op_f32(625f - 1000f), true, any(vec3<bool>(var_0.a, false, false)))), u_input.c.zz, u_input.c, -2147483647i);
    var var_2 = u_input.c.zz;
    var var_3 = Struct_1(var_0.a, max(vec2<u32>(1u, 4294967295u), ~var_1.b), var_0.c, var_1.d);
    return abs(-abs(-vec4<i32>(8928i, var_3.d, var_1.d, u_input.a.x)) ^ ((min(vec4<i32>(var_0.d, var_0.d, -16881i, var_0.d), vec4<i32>(-14987i, -2147483647i, var_3.d, var_3.d)) | ~vec4<i32>(var_0.d, var_0.d, var_3.d, -25636i)) & firstLeadingBit(vec4<i32>(24523i, var_3.d, 2147483647i, 1443i))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = vec4<f32>(599f, -176f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-491f * _wgslsmith_div_f32(182f, 559f))))), 1000f);
    var var_1 = arg_2.b.x;
    var var_2 = vec4<i32>(-1i) * -countOneBits(-vec4<i32>(u_input.b, arg_2.d, u_input.b, 3823i));
    var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(~vec4<i32>(-28461i, 1i, 57522i, u_input.a.x)), vec4<i32>(min(1i, 35780i), u_input.b & -1i, abs(arg_2.d), u_input.b)), _wgslsmith_clamp_vec4_i32(firstLeadingBit(~vec4<i32>(-2147483647i, u_input.a.x, var_2.x, u_input.a.x)), reverseBits(select(vec4<i32>(2147483647i, 0i, u_input.a.x, u_input.d.x), vec4<i32>(40415i, arg_2.d, arg_2.d, var_2.x), vec4<bool>(arg_2.a, true, arg_0.x, true))), vec4<i32>(-13792i, -1i, 1i, select(arg_2.d, arg_2.d, false)))) | func_3();
    let var_3 = !vec4<bool>(any(arg_0), !(false & (false | arg_2.a)), !any(arg_1), arg_1.x | arg_1.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(trunc(var_0.x))), any(!vec2<bool>(arg_0.x, var_3.x)))), _wgslsmith_f_op_f32(min(-365f, 405f)), ~(-23626i) != firstTrailingBit(-48586i))));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: f32) -> Struct_1 {
    let var_0 = !vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), all(vec4<bool>(arg_2 <= arg_2, true, true, any(vec2<bool>(true, true)))), false, any(vec3<bool>(true, true, true)) | false);
    let var_1 = Struct_1(var_0.x, u_input.c.zz, vec3<u32>(u_input.c.x, ~0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(12660u, 0u, 0u), arg_0)), u_input.a.x);
    var var_2 = Struct_1(var_0.x, _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(var_1.c.zx, (vec2<u32>(u_input.c.x, var_1.b.x) | vec2<u32>(u_input.c.x, arg_0.x)) ^ u_input.c.yy), var_1.c.yy), vec3<u32>(~_wgslsmith_sub_u32(arg_0.x << (21533u % 32u), ~u_input.c.x), ~(1u >> (_wgslsmith_dot_vec3_u32(var_1.c, vec3<u32>(0u, arg_0.x, var_1.c.x)) % 32u)), countOneBits(86071u)), _wgslsmith_sub_i32(-10833i, -u_input.b));
    var var_3 = ~u_input.a.x <= firstLeadingBit(abs(-63755i));
    var var_4 = u_input.c.x;
    return Struct_1(var_1.a | true, var_1.b, ~_wgslsmith_div_vec3_u32(~(~var_1.c), firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.c.x, u_input.c.x, var_1.c.x), var_1.c))), var_2.d);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(select(any(!vec3<bool>(false, arg_2.a, arg_0.a)), any(!vec2<bool>(arg_2.a, false)), false) || (all(!vec3<bool>(arg_2.a, true, arg_2.a)) == (true & arg_0.a)), vec2<u32>(0u, u_input.c.x), arg_0.c, -(~reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(43603i, 28449i), u_input.a))));
    var_0 = Struct_1(any(vec4<bool>(all(select(vec3<bool>(arg_1.x, arg_1.x, arg_2.a), vec3<bool>(true, true, arg_0.a), vec3<bool>(arg_1.x, arg_2.a, false))), arg_2.a, !arg_2.a || true, !(var_0.a | arg_2.a))), var_0.b, vec3<u32>(~_wgslsmith_add_u32(arg_0.b.x, 4294967295u) | 1u, _wgslsmith_mult_u32(var_0.c.x, u_input.c.x), 35350u), _wgslsmith_sub_i32(1i, _wgslsmith_add_i32(-6354i, 1i)) << (u_input.c.x % 32u));
    var var_1 = Struct_1(arg_0.a, var_0.c.yz, arg_2.c, -_wgslsmith_mult_i32(arg_2.d, 28799i) & (var_0.d ^ _wgslsmith_mod_i32(arg_0.d, -1i)));
    let var_2 = var_0.a;
    let var_3 = _wgslsmith_mult_i32(var_0.d, ~(_wgslsmith_mult_i32(12868i, arg_2.d << (0u % 32u)) & u_input.b));
    return Struct_1(arg_2.a, firstTrailingBit(~_wgslsmith_mult_vec2_u32(vec2<u32>(45525u, u_input.c.x), vec2<u32>(var_1.b.x, 1u))) ^ vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.b >> (var_0.c.yz % vec2<u32>(32u)), var_1.c.yz), 1u), firstTrailingBit(abs(firstTrailingBit(var_0.c))), _wgslsmith_mult_i32(~min(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.d, u_input.a)), firstLeadingBit(~(~arg_0.d))));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2293f))))));
    var_0 = 651f;
    var var_1 = Struct_1(any(vec3<bool>(arg_0.a, any(select(vec2<bool>(true, arg_0.a), vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, true))), any(select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, false, true), true)))), ~_wgslsmith_add_vec2_u32(u_input.c.zx, vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0.b, vec2<u32>(arg_0.b.x, arg_0.b.x)), countOneBits(1u))), _wgslsmith_mult_vec3_u32(arg_0.c, ~(u_input.c << (vec3<u32>(u_input.c.x, 4294967295u, 46146u) % vec3<u32>(32u)))), _wgslsmith_mod_i32(-(-2147483647i >> (func_5(arg_0, vec2<bool>(true, false), arg_0).c.x % 32u)), ~(-u_input.e)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -771f), _wgslsmith_f_op_f32(f32(-1f) * -437f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-769f - -222f), 401f)) - _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(func_2(!vec4<bool>(arg_0.a, false, true, true), select(vec3<bool>(true, var_1.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, true), true), Struct_1(var_1.a, vec2<u32>(87803u, arg_0.c.x), u_input.c, 18998i))))));
    var_1 = func_5(arg_0, vec2<bool>(all(!(!vec4<bool>(false, false, arg_0.a, false))), true), func_4(~u_input.c, min(var_1.d, var_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)))));
    return arg_0;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>) -> f32 {
    let var_0 = func_6(func_5(func_4(abs(vec3<u32>(arg_0.x, 1u, u_input.c.x)), -(0i ^ u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(false, false, false, true), vec3<bool>(false, true, true), Struct_1(true, u_input.c.zx, vec3<u32>(u_input.c.x, arg_0.x, arg_0.x), 2147483647i))))), vec2<bool>(!func_4(arg_0, 0i, -194f).a, true | select(false, false, true)), Struct_1(func_4(vec3<u32>(arg_0.x, 0u, 4294967295u), u_input.d.x, arg_1.x).a, _wgslsmith_mod_vec2_u32(~u_input.c.xz, ~vec2<u32>(arg_0.x, 69861u)), ~reverseBits(arg_0), u_input.d.x)));
    let var_1 = firstTrailingBit(u_input.d);
    var var_2 = firstTrailingBit(vec2<i32>(1i, 1i) & _wgslsmith_mod_vec2_i32(min(var_1, var_1), -u_input.a)) ^ min(_wgslsmith_sub_vec2_i32(func_3().zw, func_3().yy), var_1);
    var var_3 = -858f;
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -1864f);
    return arg_1.x;
}

fn func_7(arg_0: vec3<f32>, arg_1: vec3<i32>) -> vec2<bool> {
    var var_0 = !vec2<bool>(true, !func_4(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), ~u_input.e, _wgslsmith_f_op_f32(-arg_0.x)).a);
    let var_1 = -arg_1.x > firstTrailingBit(_wgslsmith_sub_i32(arg_1.x, 7951i));
    let var_2 = _wgslsmith_mult_u32(countOneBits(u_input.c.x), 1u);
    var var_3 = _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec4_i32(-func_3(), vec4<i32>(-21562i, 1i, u_input.a.x ^ arg_1.x, ~u_input.b))) & -((u_input.a.x & _wgslsmith_add_i32(arg_1.x, arg_1.x)) & 30516i);
    var_3 = _wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(arg_1.x, u_input.a.x, 0i)) >> (abs(var_2) % 32u);
    return vec2<bool>(var_0.x, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.c.xz, vec2<u32>(u_input.c.x, u_input.c.x)) | ~(u_input.c.x << (u_input.c.x % 32u)), u_input.c.x), vec3<u32>(~24742u, 80815u, u_input.c.x), -abs(_wgslsmith_mod_i32(_wgslsmith_div_i32(0i, u_input.d.x), _wgslsmith_mod_i32(-1i, -42554i))));
    let var_1 = 29340u;
    let var_2 = -1081f;
    var var_3 = var_0.d;
    var var_4 = func_7(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-775f + -1506f) - _wgslsmith_f_op_f32(func_1(var_0.c, vec4<f32>(-350f, -484f, -640f, -1713f)))), var_2, 1412f)), _wgslsmith_clamp_vec3_i32(func_3().wxy, vec3<i32>(-34455i, ~(~37721i), min(func_4(u_input.c, -1i, 520f).d, -53360i)), select(vec3<i32>(-56738i, select(u_input.b, 0i, var_0.a), abs(-10963i)), firstTrailingBit(~vec3<i32>(1i, var_0.d, var_0.d)), var_0.a)));
    var var_5 = func_4(u_input.c, _wgslsmith_mult_i32(func_6(Struct_1(all(vec2<bool>(false, true)), select(u_input.c.xy, u_input.c.xy, vec2<bool>(true, true)), select(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(var_1, 12214u, var_0.b.x), vec3<bool>(false, var_0.a, var_0.a)), ~(-1i))).d, firstTrailingBit(-var_0.d)), _wgslsmith_f_op_f32(ceil(-686f)));
    var var_6 = _wgslsmith_mod_i32(abs(~(-2833i)), -2147483647i | _wgslsmith_sub_i32(-(~2147483647i), func_5(Struct_1(var_5.a, vec2<u32>(var_1, var_5.c.x), vec3<u32>(var_1, var_1, 0u), var_5.d), !vec2<bool>(var_4.x, false), Struct_1(var_0.a, vec2<u32>(4294967295u, var_0.b.x), vec3<u32>(u_input.c.x, 1u, var_1), u_input.b)).d));
    var_4 = !vec2<bool>(!(!var_0.a), select(true, false, any(vec2<bool>(var_5.a, var_4.x))) & (any(vec4<bool>(var_4.x, var_5.a, var_5.a, false)) || !var_4.x));
    let var_7 = func_4(~(var_0.c ^ _wgslsmith_clamp_vec3_u32(~u_input.c, ~vec3<u32>(0u, 1u, 35573u), vec3<u32>(15722u, u_input.c.x, 27712u) & vec3<u32>(u_input.c.x, u_input.c.x, var_5.c.x))), 1i >> (~select(_wgslsmith_add_u32(var_1, 0u), 0u, var_0.a) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-653f - var_2), _wgslsmith_div_f32(-145f, -364f))))), _wgslsmith_div_f32(-853f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2)))), var_2), vec2<u32>(_wgslsmith_mod_u32(func_5(Struct_1(var_7.a, vec2<u32>(var_0.c.x, var_1), vec3<u32>(var_1, var_0.b.x, var_7.b.x), var_0.d), vec2<bool>(true, true), var_7).b.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), var_0.c.yz), 49293u)), var_5.c.x), _wgslsmith_sub_u32(u_input.c.x, ~max(~0u, ~var_5.c.x)), _wgslsmith_f_op_f32(-884f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))));
}

