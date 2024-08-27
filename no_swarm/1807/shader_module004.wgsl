struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(u_input.a), _wgslsmith_dot_vec2_i32(abs(~vec2<i32>(-2147483647i, u_input.a)), firstLeadingBit(vec2<i32>(0i, u_input.a))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a), ~0i), _wgslsmith_mult_vec4_i32(vec4<i32>(948i, -1i, u_input.a, u_input.a) ^ vec4<i32>(25709i, u_input.a, u_input.a, u_input.a), vec4<i32>(-12737i, 0i, 1i, 1i))), -1i << (~(~u_input.b.x) % 32u)), ~(~vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)) | ~_wgslsmith_mod_vec4_i32(vec4<i32>(-71222i, -2598i, 2147483647i, u_input.a) ^ vec4<i32>(u_input.a, -1i, u_input.a, -25538i), abs(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a))));
    let var_1 = Struct_1(u_input.b.x, u_input.b.x, vec2<f32>(-1023f, arg_0.c.x));
    let var_2 = Struct_1(1u, 1u, _wgslsmith_f_op_vec2_f32(-arg_0.c));
    return _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-2147483647i, var_0.x), ~(-1i), var_0.x) >> (vec3<u32>(var_1.b | 80554u, var_2.b, ~u_input.b.x) % vec3<u32>(32u)), var_0.zzy), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(40190i, -5650i), 14915i, -var_0.x), countOneBits(_wgslsmith_clamp_vec3_i32(var_0.xxz, vec3<i32>(var_0.x, u_input.a, 9746i), vec3<i32>(21097i, 1575i, var_0.x)))) | -_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, var_0.x, var_0.x), ~var_0.zzz));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<bool>) -> bool {
    let var_0 = -vec4<i32>(~u_input.a, -15511i, -21377i | arg_0, (func_3(Struct_1(1u, u_input.b.x, vec2<f32>(-1803f, 448f))) << (~u_input.b.x % 32u)) | arg_0);
    var var_1 = Struct_1(countOneBits(~reverseBits(28305u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(1u), 1u), _wgslsmith_mod_vec2_u32(~arg_1.wy, ~arg_1.xz)) % 32u), abs(_wgslsmith_dot_vec3_u32(arg_1.yxw, vec3<u32>(countOneBits(u_input.b.x), _wgslsmith_clamp_u32(arg_1.x, u_input.b.x, u_input.b.x), ~0u))), vec2<f32>(-926f, _wgslsmith_f_op_f32(trunc(1000f))));
    var_1 = Struct_1(~select(1u | u_input.b.x, countOneBits(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), all(select(vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(false, true, arg_2.x, arg_2.x), vec4<bool>(true, false, arg_2.x, false)))), _wgslsmith_add_u32(~arg_1.x, select(~reverseBits(var_1.a), arg_1.x ^ 0u, arg_2.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1.c, _wgslsmith_f_op_vec2_f32(select(var_1.c, var_1.c, vec2<bool>(true, arg_2.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1.c))))));
    let var_2 = select(select(!vec2<bool>(arg_2.x && arg_2.x, arg_2.x), vec2<bool>(all(vec4<bool>(false, arg_2.x, false, false)), true), false), !arg_2, true);
    var_1 = Struct_1(~116859u, _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, 551u, u_input.b.x, 0u), vec4<u32>(835u, var_1.b, 0u, var_1.b)), vec4<u32>(38556u, var_1.b, 30866u, 10614u) >> (arg_1 % vec4<u32>(32u))), 121088u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-491f, _wgslsmith_f_op_f32(f32(-1f) * -1209f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(var_1.c, var_1.c, var_2.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, var_1.c.x)))) + var_1.c)));
    return !all(select(select(select(vec4<bool>(false, var_2.x, arg_2.x, true), vec4<bool>(false, arg_2.x, false, var_2.x), arg_2.x), vec4<bool>(arg_2.x, true, var_2.x, var_2.x), select(vec4<bool>(false, false, true, true), vec4<bool>(var_2.x, false, false, false), arg_2.x)), vec4<bool>(var_2.x | true, false, var_2.x, true), vec4<bool>(any(vec2<bool>(arg_2.x, arg_2.x)), any(vec4<bool>(var_2.x, false, var_2.x, arg_2.x)), !arg_2.x, !arg_2.x)));
}

fn func_1(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = true;
    var_0 = !(!(!func_2(-32856i, select(arg_0, vec4<u32>(u_input.b.x, 1u, u_input.b.x, 39585u), vec4<bool>(false, true, true, false)), vec2<bool>(true, false))));
    var_0 = any(vec3<bool>(all(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), any(vec2<bool>(false, false)))), !all(vec4<bool>(true, false, true, false)), select(true, true, true)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-807f + 1029f) * _wgslsmith_f_op_f32(max(195f, -270f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-326f + -1112f), -1498f)) * _wgslsmith_f_op_f32(max(1424f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-266f + -893f), _wgslsmith_f_op_f32(trunc(-148f)), true))))), _wgslsmith_f_op_f32(f32(-1f) * -1536f), -253f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(2211f, -147f)), _wgslsmith_f_op_f32(ceil(117f)), true)))));
    var var_2 = Struct_1(u_input.b.x, countOneBits(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b.x, 37977u) ^ arg_0.x, arg_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1.yw, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_1.wz + vec2<f32>(-1446f, var_1.x)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.wx, vec2<f32>(978f, var_1.x), true))), vec2<f32>(-1074f, 397f), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false))))));
    return !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), !vec3<bool>(true, true, var_2.a <= 40227u), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_vec4_u32(u_input.b, u_input.b));
    var_0 = vec3<bool>(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f - 675f))) == -757f, !(!(!var_0.x)));
    var_0 = vec3<bool>(all(vec4<bool>(var_0.x, any(vec4<bool>(false, false, var_0.x, var_0.x)), func_1(u_input.b).x, true & var_0.x)), !(!(firstTrailingBit(u_input.b.x) < 4294967295u)), var_0.x | true);
    let var_1 = countOneBits(u_input.b.yz);
    var var_2 = false;
    var_2 = !(-2147483647i >= (u_input.a ^ ~(-u_input.a)));
    let var_3 = Struct_1(9430u, ~1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1012f, 173f)) - -966f), _wgslsmith_f_op_f32(f32(-1f) * -387f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.x)), var_1.x, abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(~var_3.b, abs(var_1.x)), vec2<u32>(~u_input.b.x, 4294967295u), min(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, var_3.b), var_1), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, var_3.b), var_1)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.c.x * var_3.c.x))), 1666f), _wgslsmith_f_op_f32(step(var_3.c.x, 1f))), 27838u);
}

