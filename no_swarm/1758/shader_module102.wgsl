struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: vec4<f32>) -> vec4<i32> {
    let var_0 = vec3<bool>(arg_0.x, arg_0.x, false);
    var var_1 = 1u;
    let var_2 = ~min(vec3<u32>(~u_input.a, u_input.e.x, 4294967295u), countOneBits(abs(u_input.c.yxz)));
    let var_3 = Struct_2(Struct_1(false, (_wgslsmith_sub_u32(var_2.x, u_input.e.x) | ~24073u) & ~u_input.a, arg_2), u_input.d.x, var_2.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.wy)))), min(-vec4<i32>(~16662i, u_input.d.x, reverseBits(-1i), _wgslsmith_add_i32(-37944i, 10691i)), vec4<i32>(_wgslsmith_clamp_i32(u_input.d.x, -3641i, -12562i) >> (~51106u % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(-27095i, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)), u_input.d.x, u_input.d.x)));
    var_1 = var_2.x;
    return firstTrailingBit(_wgslsmith_mod_vec4_i32(countOneBits(min(vec4<i32>(var_3.e.x, 18702i, u_input.d.x, -3015i), var_3.e)), var_3.e >> (u_input.c % vec4<u32>(32u))) ^ _wgslsmith_sub_vec4_i32(~var_3.e | _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 12821i, u_input.d.x, 1i), var_3.e), var_3.e));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = u_input.c.yzx;
    let var_1 = vec2<bool>(all(!vec2<bool>(any(vec3<bool>(true, arg_0, false)), all(vec4<bool>(false, true, arg_0, false)))), true && (true | !all(vec3<bool>(true, false, arg_0))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -955f) - _wgslsmith_f_op_f32(1001f - 1007f)), -245f)));
    let var_3 = ~(~abs(vec4<u32>(~77110u, 22887u, 0u, var_0.x)));
    var var_4 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-39045i, u_input.d.x)), -_wgslsmith_mult_vec2_i32(vec2<i32>(21463i, -7613i), vec2<i32>(-5973i, u_input.d.x))), ~_wgslsmith_sub_i32(u_input.d.x, max(u_input.d.x, -47210i)), -30987i, abs(u_input.d.x)), ~(~vec4<i32>(2196i, u_input.d.x, u_input.d.x, -1i)) >> (u_input.c % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(func_3(select(!vec3<bool>(false, var_1.x, arg_0), select(vec3<bool>(arg_0, false, var_1.x), vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, var_1.x, var_1.x)), vec3<bool>(true, arg_0, true)), var_2.x < _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, 1000f))), ~vec4<i32>(-u_input.d.x, ~1i, func_3(vec3<bool>(false, arg_0, var_1.x), true, vec4<f32>(var_2.x, 441f, 358f, var_2.x)).x, -38707i)));
    return Struct_2(Struct_1(any(vec4<bool>(!arg_0, false, !arg_0, false)), ~var_0.x, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1000f, -1384f, var_2.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -753f, var_2.x, var_2.x)))))), select(-37579i, ~(-36307i), !arg_0), u_input.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(736f, var_2.x))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(abs(1283f)))), vec4<i32>(func_3(!vec3<bool>(true, arg_0, var_1.x), false, vec4<f32>(var_2.x, -1315f, var_2.x, 1000f)).x, -1i, ~1i, firstTrailingBit(_wgslsmith_mult_i32(var_4.x, u_input.d.x))) & -(_wgslsmith_mod_vec4_i32(vec4<i32>(-6552i, 2147483647i, -2757i, -33149i), vec4<i32>(-4819i, u_input.d.x, var_4.x, -6146i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-5697i, 17998i, 78015i, 12450i), vec4<i32>(u_input.d.x, 21502i, u_input.d.x, u_input.d.x))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<u32>) -> bool {
    let var_0 = any(vec3<bool>(false, any(vec4<bool>(arg_1.a.a, !arg_1.a.a, true, arg_1.a.a)), true));
    var var_1 = _wgslsmith_mult_vec3_u32(~(~abs(select(arg_2, vec3<u32>(u_input.b, arg_1.c, arg_0.x), true))), firstLeadingBit(arg_2));
    let var_2 = -1i;
    var_1 = vec3<u32>(~abs(arg_2.x), _wgslsmith_add_u32(arg_1.a.b, ~30656u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, select(var_1.x, var_1.x, arg_1.a.a), arg_0.x), ~firstTrailingBit(vec3<u32>(0u, 32693u, 1u))) ^ _wgslsmith_div_u32(max(var_1.x, var_1.x) ^ arg_1.c, _wgslsmith_add_u32(func_2(false).c, abs(u_input.e.x))));
    var_1 = _wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec3_u32(arg_0.xyz, u_input.c.yyy), ~arg_2.x, ~0u), u_input.c.xxx) | arg_0.zwz;
    return true;
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(arg_0.d.x * 156f));
    var var_1 = 1i;
    let var_2 = func_4(_wgslsmith_clamp_vec4_u32(~u_input.c, u_input.c, ~vec4<u32>(54634u, arg_0.c, arg_0.c, u_input.a)), func_2(arg_0.a.a), vec3<u32>((arg_0.a.b << (73124u % 32u)) << (0u % 32u), reverseBits(u_input.c.x), _wgslsmith_mult_u32(1u, u_input.b | arg_0.a.b))) | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(778f, -506f)) * var_0)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1142f))));
    let var_3 = arg_0;
    var_1 = u_input.d.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.a.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-506f, 338f, -1556f) + vec3<f32>(-1032f, -430f, -289f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-817f, 265f, 305f)), any(vec3<bool>(false, false, false)))) + vec3<f32>(-3122f, _wgslsmith_f_op_f32(1126f * -212f), _wgslsmith_f_op_f32(min(-384f, -1621f)))))));
    var var_1 = abs(-53806i);
    var var_2 = Struct_2(Struct_1(true, 108890u, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(653f, var_0.x, var_0.x, -181f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, var_0.x, 113f))))))), _wgslsmith_dot_vec2_i32(u_input.d, u_input.d) | u_input.d.x, countOneBits(u_input.c.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(true, 4294967295u, vec4<f32>(192f, var_0.x, -1054f, 128f)), u_input.d.x, u_input.c.x, vec2<f32>(-742f, 720f), vec4<i32>(u_input.d.x, -10022i, u_input.d.x, u_input.d.x)))), _wgslsmith_div_f32(var_0.x, 833f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -740f) - _wgslsmith_f_op_f32(676f - -2020f)))), vec4<i32>(u_input.d.x, -abs(~u_input.d.x), u_input.d.x, u_input.d.x));
    var var_3 = false;
    var var_4 = var_2.e.wxy;
    var var_5 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(123f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_2.d.x)) + _wgslsmith_f_op_f32(-var_2.d.x)), 964f)));
    let var_6 = 249f;
    var var_7 = _wgslsmith_f_op_vec4_f32(abs(var_2.a.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.e.x, 39968u, u_input.e.x), u_input.c.zxz, ~u_input.c.zxw), vec3<u32>(0u, max(50317u, var_2.a.b), _wgslsmith_mod_u32(4294967295u, 1u))) | ((~vec3<u32>(0u, 4294967295u, u_input.a) & ~u_input.c.xzx) & max(u_input.c.yzx, _wgslsmith_mult_vec3_u32(u_input.c.wwx, u_input.c.ywy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x))));
}

