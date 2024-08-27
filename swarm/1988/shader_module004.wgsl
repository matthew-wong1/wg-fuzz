struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn func_3(arg_0: f32) -> i32 {
    let var_0 = Struct_2(select(u_input.a.x, reverseBits(max(~u_input.a.x, 4294967295u)), false), firstLeadingBit(_wgslsmith_mod_i32(countOneBits(firstLeadingBit(19981i)), -u_input.b)));
    let var_1 = vec3<bool>(!(reverseBits(-u_input.b) != var_0.b), false, true);
    let var_2 = u_input.a;
    var var_3 = vec4<bool>(true, false, var_1.x, _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-63992i, var_0.b, 10967i), vec3<i32>(var_0.b, u_input.d, -16896i), vec3<i32>(-42139i, u_input.b, -33249i)), firstLeadingBit(vec3<i32>(6704i, -44107i, var_0.b))) > abs(var_0.b));
    var_3 = select(select(vec4<bool>(true, var_3.x, any(!var_3.zx), true), !select(!vec4<bool>(var_1.x, var_3.x, true, true), !vec4<bool>(false, true, var_3.x, var_3.x), true), true), select(!vec4<bool>(var_1.x, any(vec3<bool>(false, true, var_3.x)), var_1.x && var_3.x, var_3.x), !select(select(vec4<bool>(false, var_3.x, var_1.x, true), vec4<bool>(true, true, var_3.x, var_1.x), var_1.x), select(vec4<bool>(var_3.x, false, var_1.x, var_1.x), vec4<bool>(var_3.x, false, var_3.x, var_3.x), vec4<bool>(true, false, var_3.x, var_3.x)), select(vec4<bool>(true, false, var_1.x, var_3.x), vec4<bool>(var_1.x, false, var_1.x, true), var_1.x)), select(select(vec4<bool>(var_3.x, false, var_3.x, var_3.x), select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(var_1.x, var_3.x, var_1.x, var_1.x)), !vec4<bool>(true, var_3.x, false, var_3.x)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, var_3.x, var_3.x, var_3.x), var_3.x), vec4<bool>(var_3.x, var_3.x, true || var_1.x, -15111i <= var_0.b))), !select(vec4<bool>(true, var_3.x, var_1.x, arg_0 >= arg_0), vec4<bool>(var_3.x, var_1.x, var_3.x, true), vec4<bool>(var_1.x, all(vec4<bool>(var_3.x, true, var_1.x, var_3.x)), var_1.x, 0u != var_0.a)));
    return -2147483647i;
}

fn func_2() -> bool {
    let var_0 = ~(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, u_input.e), u_input.e)) | u_input.a.x;
    var var_1 = Struct_2(var_0, _wgslsmith_mult_i32(-func_3(_wgslsmith_f_op_f32(sign(535f))), u_input.d));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-543f + 570f), _wgslsmith_f_op_f32(898f * 523f), -300f)) - vec3<f32>(_wgslsmith_div_f32(-1240f, _wgslsmith_f_op_f32(max(-864f, 3128f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-282f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1355f), _wgslsmith_f_op_f32(231f - 480f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-261f + -889f), -631f), -135f, _wgslsmith_f_op_f32(select(1f, 1852f, true)))), true));
    var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 408f, -1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(820f, var_2.x, -738f))))))));
    var var_3 = Struct_1(vec2<bool>(var_1.a > ~4294967295u, true), ~firstTrailingBit(abs(vec4<i32>(1i, u_input.b, 1i, u_input.b))));
    return var_3.a.x & select(u_input.a.x == 4294967295u, all(select(vec3<bool>(var_3.a.x, false, false), vec3<bool>(false, var_3.a.x, false), true)), true);
}

fn func_1(arg_0: vec4<i32>) -> vec2<bool> {
    let var_0 = u_input.a.zw;
    let var_1 = -166f;
    let var_2 = Struct_1(select(vec2<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), true), vec2<bool>(func_2(), !(u_input.a.x != 4294967295u)), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true)), vec4<i32>(reverseBits(u_input.c.x), _wgslsmith_mult_i32(u_input.b, ~arg_0.x) << (4294967295u % 32u), _wgslsmith_dot_vec2_i32(~u_input.c, vec2<i32>(u_input.d, arg_0.x)) >> (44940u % 32u), u_input.c.x));
    let var_3 = max(abs(-_wgslsmith_add_vec2_i32(var_2.b.wx, _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.b.x, u_input.b), vec2<i32>(u_input.b, var_2.b.x)))), -arg_0.zz);
    let var_4 = 23696u;
    return select(select(vec2<bool>(true, var_2.a.x), vec2<bool>(select(true, false, !var_2.a.x), var_1 == 546f), var_2.a), !vec2<bool>(74557u >= _wgslsmith_mult_u32(u_input.e, var_4), true), var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
    var var_1 = Struct_1(select(vec2<bool>(var_0, true), !select(func_1(vec4<i32>(52309i, 2147483647i, u_input.c.x, u_input.d)), vec2<bool>(var_0, var_0), !vec2<bool>(false, var_0)), any(!select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(var_0, var_0, var_0, false), true))), ~select(vec4<i32>(1i, -1i, 11982i, u_input.d) ^ (vec4<i32>(u_input.d, u_input.b, u_input.c.x, 71355i) ^ vec4<i32>(2147483647i, -2147483647i, 43971i, u_input.d)), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, u_input.d, 5685i, 34486i)), vec4<i32>(-47295i, u_input.c.x, u_input.b, 1i)), true));
    var var_2 = ~(~max(countOneBits(1u), select(1u | u_input.e, u_input.a.x, true)));
    var var_3 = var_1.b.wzx;
    var var_4 = var_1.b.x & firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -276i, 0i << (u_input.a.x % 32u), i32(-1i) * -20225i, i32(-1i) * -2147483647i), vec4<i32>(2147483647i, -1i, var_3.x, var_3.x)));
    var_4 = _wgslsmith_dot_vec4_i32(countOneBits((var_1.b & var_1.b) & vec4<i32>(var_3.x, var_1.b.x, 1i, u_input.c.x)) & ~(vec4<i32>(var_3.x, 0i, -10932i, var_1.b.x) | (var_1.b >> (u_input.a % vec4<u32>(32u)))), var_1.b);
    var_1 = Struct_1(vec2<bool>(_wgslsmith_sub_u32(~u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(42284u, u_input.a.x, 13422u), vec3<u32>(49537u, u_input.a.x, u_input.a.x))) == (~u_input.e ^ min(u_input.a.x, 4294967295u)), all(!(!var_1.a))), vec4<i32>(-46640i, 1i, -32210i, _wgslsmith_sub_i32(var_3.x, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a.x, 37478u), u_input.a.yzx), min(-(var_1.b.x | 52819i), _wgslsmith_dot_vec2_i32(select(u_input.c, -vec2<i32>(-29063i, 63610i), vec2<bool>(var_0, var_1.a.x)), vec2<i32>(var_1.b.x, firstTrailingBit(0i)))), _wgslsmith_f_op_f32(abs(-1100f)));
}

