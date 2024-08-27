struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = max(~(~_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, arg_2), u_input.a.yy), arg_2 & arg_2)), u_input.a.x);
    var_0 = firstLeadingBit(u_input.a.x ^ 1i);
    let var_1 = _wgslsmith_div_vec3_u32(firstTrailingBit(~u_input.c), _wgslsmith_add_vec3_u32(u_input.c, ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.b, 0u, 47973u), u_input.c))) & vec3<u32>(1u, 1u, abs(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a, 0u, 17246u, 28157u), vec4<u32>(arg_0.x, 4294967295u, 67176u, 4294967295u)), abs(39860u))));
    let var_2 = Struct_1(arg_0.x, var_1.x, _wgslsmith_div_vec3_f32(vec3<f32>(361f, arg_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.c.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, -570f, _wgslsmith_f_op_f32(trunc(-1461f))))), 4294967295u != _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(select(var_1, vec3<u32>(arg_1.b, u_input.c.x, 1u), vec3<bool>(false, false, arg_1.d)), var_1), countOneBits(vec3<u32>(0u, 0u, 4294967295u))));
    return select(vec2<bool>(_wgslsmith_f_op_f32(var_2.c.x + _wgslsmith_f_op_f32(min(-133f, -1997f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-605f))), 4294967295u <= (_wgslsmith_div_u32(4294967295u, arg_1.a) >> (_wgslsmith_clamp_u32(53404u, arg_1.b, arg_0.x) % 32u))), !vec2<bool>(select(all(vec3<bool>(false, true, arg_3.d)), true, false), false), !(!(true || all(vec2<bool>(var_2.d, arg_1.d)))));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>) -> u32 {
    let var_0 = any(func_3(vec2<u32>(15419u, 58894u), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 489u, 0u, 21262u), vec4<u32>(55375u, 0u, 11669u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(22832u, u_input.b, arg_0, 41560u), vec4<u32>(arg_0, 1u, u_input.c.x, u_input.c.x))), 4294967295u, vec3<f32>(776f, _wgslsmith_f_op_f32(select(233f, -219f, false)), _wgslsmith_f_op_f32(-769f - 620f)), func_3(vec2<u32>(u_input.c.x, 4294967295u), Struct_1(u_input.c.x, u_input.b, vec3<f32>(-224f, -1640f, 1154f), false), arg_1.x, Struct_1(u_input.c.x, u_input.c.x, vec3<f32>(325f, 1000f, 1766f), true)).x && true), min(_wgslsmith_div_i32(arg_1.x, arg_1.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(10774u, 1u, 4294967295u, 6387u), vec4<u32>(u_input.c.x, 4294967295u, u_input.b, u_input.c.x)) % 32u), max(_wgslsmith_dot_vec2_i32(arg_1, u_input.a.yx), 2147483647i)), Struct_1(1u, ~(~u_input.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1115f, -1049f, -1768f)), !(arg_1.x > 2147483647i))));
    let var_1 = Struct_1(71664u, ~1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1465f, 1009f, 409f), vec3<f32>(-728f, 263f, -1426f)))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(274f, 979f, 1433f)))), !var_0);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_1.c.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.c.x, -1385f))))), 1200f, _wgslsmith_f_op_f32(sign(var_1.c.x))));
    let var_3 = _wgslsmith_f_op_vec2_f32(var_2.yx + vec2<f32>(-1044f, var_2.x));
    let var_4 = var_1;
    return abs(1u);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = u_input.a.x & _wgslsmith_clamp_i32(arg_1.x, arg_1.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.a.yz, u_input.a.xw), _wgslsmith_dot_vec2_i32(u_input.a.xw, ~vec2<i32>(u_input.a.x, -2349i))));
    let var_1 = u_input.a.x & ~u_input.a.x;
    var_0 = -1i;
    var var_2 = func_4(u_input.b, select(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, arg_1.x), vec2<i32>(0i, arg_1.x)), max(u_input.a.yz, reverseBits(vec2<i32>(2574i, u_input.a.x))), func_3(~u_input.c.yy, Struct_1(1u, 0u, vec3<f32>(arg_0, arg_0, 469f), true), min(arg_1.x, 1i), Struct_1(u_input.b, u_input.b, vec3<f32>(-626f, -1000f, -242f), false)))) & 6828u;
    var_2 = u_input.c.x;
    return Struct_1(~countOneBits(1u), _wgslsmith_sub_u32(0u ^ ~(u_input.c.x << (u_input.c.x % 32u)), u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1458f, arg_0, arg_0) + vec3<f32>(arg_0, -2547f, 108f)) * vec3<f32>(_wgslsmith_f_op_f32(-1267f * 246f), 1f, _wgslsmith_f_op_f32(sign(arg_0))))), true);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(reverseBits(0u), _wgslsmith_mult_u32(abs(arg_0.b), arg_1.b), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x))) < arg_0.c.x);
    var var_1 = Struct_1(max(0u, ~arg_1.a), ~(~10179u), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(420f, arg_1.c.x, var_0.c.x))) + _wgslsmith_f_op_vec3_f32(-arg_0.c)), _wgslsmith_f_op_vec3_f32(sign(arg_0.c))) - var_0.c), true);
    let var_2 = 14599u;
    var_0 = func_2(-258f, vec2<i32>(~u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(~(-21218i), u_input.a.x), firstTrailingBit(_wgslsmith_mult_i32(33449i, u_input.a.x)))));
    let var_3 = -655f;
    return Struct_1(_wgslsmith_dot_vec4_u32(~abs(~vec4<u32>(7620u, u_input.b, var_0.b, u_input.c.x)), vec4<u32>(_wgslsmith_add_u32(0u, var_0.a) >> (_wgslsmith_sub_u32(1u, arg_0.b) % 32u), _wgslsmith_mult_u32(u_input.b | 15656u, arg_0.a), ~u_input.b, 14754u)), _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(~vec4<u32>(27431u, var_1.b, 4294967295u, var_1.a), reverseBits(vec4<u32>(var_0.b, 39338u, 4294967295u, u_input.c.x))), ~(~vec4<u32>(0u, var_1.b, var_1.a, arg_0.a)) ^ firstLeadingBit(~vec4<u32>(var_1.a, 32176u, 1u, arg_1.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), arg_0.c.x, arg_1.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(221f, 346f)), _wgslsmith_f_op_f32(-269f - 410f), _wgslsmith_f_op_f32(var_1.c.x - arg_1.c.x)))), false);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(-589f, _wgslsmith_f_op_f32(ceil(653f))), arg_1.c.x);
    return false;
}

fn func_1() -> StorageBuffer {
    let var_0 = select(vec2<bool>(!any(vec4<bool>(false, false, true, false)), true), vec2<bool>(func_6(vec4<f32>(303f, _wgslsmith_div_f32(-1027f, 1270f), _wgslsmith_f_op_f32(f32(-1f) * -209f), -1527f), Struct_1(u_input.b ^ 47451u, u_input.b, vec3<f32>(-267f, 749f, -834f), all(vec2<bool>(true, false))), func_5(func_2(-746f, vec2<i32>(-73590i, u_input.a.x)), func_2(1516f, vec2<i32>(-2147483647i, 1i))), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), u_input.a.ww) & _wgslsmith_mod_i32(2147483647i, -1958i)), true), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), func_3(u_input.c.zz << (vec2<u32>(50193u, u_input.c.x) % vec2<u32>(32u)), Struct_1(4294967295u, u_input.c.x, vec3<f32>(-607f, -1720f, -144f), true), abs(u_input.a.x), func_2(-1000f, u_input.a.xz)), select(vec2<bool>(true, false), vec2<bool>(true, true), false))));
    var var_1 = select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, min(_wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.yx), 0u), (u_input.b & u_input.b) & u_input.b, func_4(u_input.c.x, select(u_input.a.yw, vec2<i32>(u_input.a.x, 75076i), var_0.x))), firstTrailingBit(vec4<u32>(~u_input.b, ~0u, 0u, 0u))), countOneBits(vec4<u32>(func_4(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.b), _wgslsmith_mod_vec2_i32(u_input.a.xw, u_input.a.wz)), select(u_input.b, func_2(-2148f, vec2<i32>(u_input.a.x, u_input.a.x)).b, true && var_0.x), 1u | u_input.b, func_4(1u, firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x))))), var_0.x);
    var_1 = vec4<u32>(_wgslsmith_mult_u32(0u, ~50023u), 1u, 4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u >> (var_1.x % 32u), 4294967295u, var_1.x), u_input.c));
    let var_2 = u_input.b;
    let var_3 = func_2(_wgslsmith_div_f32(func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1093f - -790f), -297f)), firstLeadingBit(u_input.a.zz)).c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-254f + -273f))))), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.xy, u_input.a.xw), vec2<i32>(~u_input.a.x, 1i)) & vec2<i32>(u_input.a.x, u_input.a.x));
    return StorageBuffer(~var_3.a, ~2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

