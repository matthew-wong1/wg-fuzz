struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<u32>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 0u, 86430u);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> vec3<bool> {
    global0 = vec3<bool>(true, all(!vec3<bool>(select(true, false, global0.x), true, true)), true);
    var var_0 = _wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -16973i), vec2<i32>(2147483647i, u_input.a.x)), -vec2<i32>(u_input.a.x, u_input.a.x)), 117859i) << (128353u % 32u);
    var_0 = arg_0.c.x;
    var var_1 = _wgslsmith_f_op_f32(sign(arg_1));
    let var_2 = ~u_input.a.x;
    return select(select(vec3<bool>(any(!vec2<bool>(false, global0.x)), true, !any(vec3<bool>(global0.x, global0.x, true))), vec3<bool>(global0.x, true, ~(-48806i) != u_input.a.x), all(select(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, true, true, false), false), !vec4<bool>(global0.x, global0.x, true, global0.x), any(global0.yx)))), select(vec3<bool>(global0.x, true, !any(vec4<bool>(global0.x, global0.x, global0.x, false))), select(vec3<bool>(arg_0.e >= arg_1, global0.x, all(vec3<bool>(global0.x, global0.x, true))), vec3<bool>(var_2 <= arg_0.a, all(vec3<bool>(global0.x, false, false)), any(vec3<bool>(true, global0.x, true))), !(!vec3<bool>(global0.x, false, true))), !(!vec3<bool>(true, global0.x, global0.x))), false);
}

fn func_4(arg_0: bool, arg_1: vec3<bool>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_add_i32(~(-(i32(-1i) * -39136i)), 0i), ~0u, ~vec4<i32>(~_wgslsmith_div_i32(u_input.a.x, u_input.a.x), ~(~18258i), u_input.a.x, ~_wgslsmith_add_i32(1i, -28780i)), vec4<f32>(3154f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-549f * 1774f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(254f * _wgslsmith_f_op_f32(f32(-1f) * -210f))), -196f), _wgslsmith_f_op_f32(2491f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-894f)))))));
    let var_1 = select(vec3<bool>(true, global0.x, !func_3(Struct_1(1i, global1.x, vec4<i32>(var_0.c.x, u_input.a.x, 10537i, var_0.c.x), var_0.d, var_0.d.x), 1677f, var_0.b).x), select(vec3<bool>(!any(vec2<bool>(true, arg_0)), true, all(!arg_1.zx)), vec3<bool>(true, false, arg_1.x), select(select(!arg_1, arg_1, global0.x), select(func_3(Struct_1(-2147483647i, 1u, var_0.c, var_0.d, var_0.e), var_0.d.x, 70787u), select(arg_1, arg_1, arg_0), global0.x || false), vec3<bool>(true, true, true))), !global0.x);
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a, _wgslsmith_dot_vec3_i32(~firstLeadingBit(var_0.c.wyy), var_0.c.xxx), u_input.a.x, _wgslsmith_div_i32(var_0.a, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-28896i, var_0.a, 1i, var_0.a), var_0.c), -vec4<i32>(var_0.a, -1i, u_input.a.x, u_input.a.x)))), select(var_0.c, var_0.c, select(vec4<bool>(true != var_1.x, select(global0.x, var_1.x, true), all(vec2<bool>(false, arg_1.x)), true), !(!vec4<bool>(false, arg_1.x, var_1.x, global0.x)), !select(vec4<bool>(false, global0.x, false, arg_1.x), vec4<bool>(var_1.x, false, arg_1.x, false), vec4<bool>(arg_1.x, var_1.x, global0.x, true)))));
    return ~(~countOneBits(_wgslsmith_add_i32(~var_0.c.x, reverseBits(u_input.a.x))));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    var var_0 = Struct_1(~func_4(all(vec3<bool>(global0.x, global0.x, global0.x)), !func_3(Struct_1(u_input.a.x, 32550u, vec4<i32>(-104456i, u_input.a.x, u_input.a.x, -15804i), vec4<f32>(arg_0, 1000f, -251f, 1444f), -1000f), arg_0, 82972u)), abs(~(select(global1.x, 45757u, false) ^ global1.x)), vec4<i32>(_wgslsmith_add_i32(min(u_input.a.x, 32275i) >> (8365u % 32u), ~_wgslsmith_sub_i32(u_input.a.x, 17820i)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1682i, -18382i) >> (u_input.b.yxz % vec3<u32>(32u)), vec3<i32>(u_input.a.x, 1i, -9289i) & vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)) | u_input.a.x, max(-20140i, -60971i), ~min(1i, u_input.a.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-571f, arg_0, arg_0, arg_0), vec4<f32>(arg_0, arg_0, 1000f, arg_0), !vec4<bool>(global0.x, global0.x, false, global0.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(1167f, arg_0, -1000f, -1106f), vec4<f32>(-2089f, arg_0, arg_0, -436f)))), select(vec4<bool>(true, global0.x, true || global0.x, false & global0.x), select(!vec4<bool>(true, true, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x), all(vec4<bool>(global0.x, true, false, global0.x))), select(!vec4<bool>(global0.x, global0.x, true, global0.x), select(vec4<bool>(true, true, false, global0.x), vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(true, global0.x, true, global0.x)), select(true, global0.x, global0.x))))), -1668f);
    global0 = vec3<bool>(!all(!vec3<bool>(global0.x, false, global0.x)), !(-(~var_0.a) == 13033i), var_0.b <= reverseBits(global1.x));
    return select(vec3<bool>(false, any(select(vec4<bool>(global0.x, false, true, global0.x), select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(true, false, global0.x, global0.x), global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x))), any(vec3<bool>(all(vec3<bool>(false, global0.x, false)), global0.x, global0.x))), !(!func_3(Struct_1(var_0.a, u_input.b.x, var_0.c, var_0.d, var_0.e), _wgslsmith_f_op_f32(round(-1006f)), var_0.b)), true);
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    global1 = ~firstLeadingBit(u_input.b.xzz);
    var var_0 = func_2(562f);
    var_0 = select(vec3<bool>(all(!vec4<bool>(var_0.x, var_0.x, global0.x, true)), global0.x, _wgslsmith_dot_vec3_u32(u_input.b.zyw, u_input.b.wxy) <= ~global1.x), !vec3<bool>(!(!var_0.x), !select(true, true, var_0.x), any(func_2(1107f))), vec3<bool>(false, !var_0.x, global0.x));
    var var_1 = Struct_1(1i, u_input.b.x, vec4<i32>(u_input.a.x, ~(-39662i), u_input.a.x, ~(-(u_input.a.x ^ -24581i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(116f, -1000f, -513f, 180f), vec4<f32>(209f, 1217f, -751f, -339f), false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(266f, -834f, -1472f, 1184f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-528f, 1771f, -699f, -1204f) + vec4<f32>(-1000f, -1786f, 1216f, 425f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256f - 353f)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_1.d.x - var_1.e), -1149f, -2300f);
    return -min(_wgslsmith_div_i32(func_4(global0.x, !vec3<bool>(global0.x, global0.x, false)), _wgslsmith_div_i32(-var_1.c.x, var_1.c.x)), firstTrailingBit(-8912i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_sub_i32(select(33275i, 1i, true) ^ _wgslsmith_div_i32(-2147483647i, u_input.a.x), -68711i), select(21058i, _wgslsmith_add_i32(i32(-1i) * -10855i, -u_input.a.x), all(!vec3<bool>(true, global0.x, global0.x)))), ~global1.x, _wgslsmith_div_vec4_i32(-_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, -27947i, u_input.a.x, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.a.x, 3328i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 5339i, u_input.a.x)), ~vec4<i32>(u_input.a.x, u_input.a.x, 18078i, -1i)), vec4<i32>(u_input.a.x, -29952i >> ((72125u >> (global1.x % 32u)) % 32u), _wgslsmith_clamp_i32(func_1(vec4<u32>(88228u, 6941u, 20957u, global1.x)), ~u_input.a.x, -55806i), -1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(450f, _wgslsmith_f_op_f32(-797f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - -510f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f)))), _wgslsmith_f_op_f32(select(-491f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -416f), -917f), 151f)), true)));
    let var_1 = -(u_input.a.x | -26795i);
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d.yyx - var_0.d.zwy), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -692f), -1451f, any(vec4<bool>(global0.x, global0.x, false, global0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.d.x, var_0.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))));
    var_0 = Struct_1(-(-abs(var_1) >> (_wgslsmith_mult_u32(var_0.b, countOneBits(u_input.b.x)) % 32u)), 96803u, select(~select(vec4<i32>(2147483647i, -32394i, 2147483647i, 2147483647i), vec4<i32>(u_input.a.x, 29256i, var_0.c.x, 0i), !global0.x), vec4<i32>(u_input.a.x & -1i, firstLeadingBit(0i), ~_wgslsmith_mod_i32(var_0.a, var_1), var_1), vec4<bool>(global0.x, any(!vec3<bool>(true, global0.x, global0.x)), true, any(func_2(var_2.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(854f, 484f, global0.x)), _wgslsmith_f_op_f32(-var_0.e))) + _wgslsmith_f_op_f32(1349f * _wgslsmith_f_op_f32(var_0.e + 2359f))), 1368f, var_0.d.x, -879f), var_2.x);
    let var_3 = 2147483647i;
    let var_4 = -(~(var_3 & -_wgslsmith_dot_vec4_i32(var_0.c, vec4<i32>(var_1, var_3, -25148i, var_0.c.x))));
    let var_5 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(var_0.d, vec4<f32>(1524f, 806f, var_2.x, var_2.x))), var_0.d)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(var_0.d))))), Struct_1(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, var_4) ^ -21456i), ~(~abs(0u)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(var_0.c >> (vec4<u32>(4294967295u, var_0.b, u_input.b.x, 6557u) % vec4<u32>(32u)), select(var_0.c, vec4<i32>(var_1, 2147483647i, 1i, var_3), vec4<bool>(global0.x, global0.x, global0.x, global0.x))), abs(var_0.c) << (u_input.b % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(487f, var_0.d.x, var_0.d.x, -215f), _wgslsmith_f_op_vec4_f32(-var_0.d))), var_2.x), ~countOneBits(~(~u_input.b)), any(global0.zx), vec3<bool>(!global0.x, all(func_2(-1675f)) || global0.x, _wgslsmith_f_op_f32(sign(var_0.e)) <= -1738f));
    var var_6 = Struct_1(-(u_input.a.x << (72566u % 32u)), ~countOneBits(var_5.c.x) >> (global1.x % 32u), vec4<i32>(reverseBits(13166i), -1i, 7958i, -firstLeadingBit(-var_0.c.x)), _wgslsmith_f_op_vec4_f32(max(var_5.a, _wgslsmith_f_op_vec4_f32(-var_0.d))), _wgslsmith_f_op_f32(var_2.x + var_5.b.d.x));
    let var_7 = var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, _wgslsmith_mod_vec2_u32(vec2<u32>(18325u, countOneBits(_wgslsmith_mod_u32(var_6.b, var_6.b))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.zx, u_input.b.wx), u_input.b.yz)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(select(var_5.c | var_5.c, vec4<u32>(0u, 51789u, var_0.b, var_5.b.b) | vec4<u32>(var_6.b, 34685u, u_input.b.x, u_input.b.x), vec4<bool>(false, global0.x, var_5.d, global0.x)), ~vec4<u32>(109093u, 1u, 17914u, 37640u)), _wgslsmith_sub_vec4_u32(select(abs(u_input.b), vec4<u32>(var_5.b.b, u_input.b.x, 53817u, var_5.c.x), vec4<bool>(false, true, false, true)), u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_5.a))));
}

