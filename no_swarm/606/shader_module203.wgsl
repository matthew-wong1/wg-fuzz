struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(abs(abs(u_input.c)));
    let var_1 = 17041u < (~abs(firstLeadingBit(0u)) ^ (1u >> (_wgslsmith_mod_u32(var_0.a, _wgslsmith_sub_u32(u_input.b, 4294967295u)) % 32u)));
    var_0 = Struct_1(u_input.b);
    var_0 = Struct_1((_wgslsmith_add_u32(countOneBits(u_input.a), ~var_0.a) | ~_wgslsmith_clamp_u32(47246u, u_input.b, 1u)) >> (~u_input.c % 32u));
    var_0 = Struct_1(~(~1u));
    return ~1u;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~vec4<u32>(u_input.a, abs(~(33444u ^ arg_0.a)), func_3(), firstTrailingBit(0u));
    var var_1 = arg_0;
    let var_2 = firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.d.x, -18058i), firstTrailingBit(0i)), -(~u_input.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.d.x, u_input.d.x), u_input.d.wxw)), firstLeadingBit(~u_input.d.wwy)));
    var var_3 = vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(select(61150u, var_0.x, false), select(var_1.a, var_1.a, true), _wgslsmith_mult_u32(90804u, var_1.a), _wgslsmith_dot_vec4_u32(vec4<u32>(75024u, arg_0.a, arg_0.a, 48916u), vec4<u32>(arg_0.a, arg_0.a, var_1.a, u_input.c))), firstLeadingBit(vec4<u32>(var_1.a, 0u, arg_0.a, 1u)) << (abs(~vec4<u32>(4294967295u, var_1.a, var_1.a, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_sub_u32(var_0.x, ~var_0.x), _wgslsmith_clamp_u32(reverseBits(countOneBits(~0u)), reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 1u, 5523u, 4294967295u), vec4<u32>(u_input.a, u_input.b, 0u, u_input.b))), ~var_0.x), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(var_0.xw, vec2<u32>(var_1.a, arg_0.a)), ~abs(abs(var_0.zw))));
    var_3 = max(~(~reverseBits(vec4<u32>(15068u, 13762u, var_1.a, var_1.a))), (vec4<u32>(abs(3495u), 0u, ~var_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, 1u), var_0.wy)) ^ _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, var_1.a, var_1.a, 4294967295u), vec4<u32>(4294967295u, 4294967295u, var_0.x, 0u), vec4<u32>(var_1.a, 4294967295u, 52334u, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(62287u, 81900u, var_3.x, 0u), vec4<u32>(u_input.a, 7521u, 0u, 0u)), vec4<u32>(var_3.x, u_input.a, var_1.a, 0u))) | _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, var_0.x, var_3.x, 1u), vec4<u32>(arg_0.a, 34115u, 28639u, 4294967295u)), abs(vec4<u32>(u_input.a, var_3.x, 0u, 4294967295u))), ~abs(vec4<u32>(var_3.x, arg_0.a, 0u, var_3.x))));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(74180u);
    var var_1 = _wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(max(u_input.d, u_input.d), u_input.d), u_input.d.x) < firstLeadingBit(u_input.d.x << (0u % 32u));
    var_1 = any(select(vec3<bool>(true, false, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))), !select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), -1447f == arg_1), true));
    var var_2 = _wgslsmith_div_f32(-827f, 1536f);
    let var_3 = !vec3<bool>(any(vec3<bool>(false, true, true)), true, true);
    return arg_0;
}

fn func_5(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-621f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1098f))), -229f) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(497f, 2349f, -371f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-203f, -884f, -1000f)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1312f * -129f), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1868f, var_0.x), var_0.x)) * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - var_0.x)));
    let var_1 = vec4<i32>(31020i, abs(_wgslsmith_add_i32(-9740i, u_input.d.x)), _wgslsmith_div_i32(~1i, ~_wgslsmith_dot_vec2_i32(u_input.d.xw, abs(vec2<i32>(0i, 0i)))), -27210i);
    let var_2 = Struct_2(arg_0, !select(!select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-463f + var_0.x)), firstTrailingBit(~vec3<i32>(~u_input.d.x, ~var_1.x, -1i)), vec2<bool>(true, false));
    var_0 = vec3<f32>(-141f, -201f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(936f))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(_wgslsmith_div_f32(-1186f, var_2.c), 568f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-513f - 1267f) * _wgslsmith_f_op_f32(trunc(var_0.x)))))), vec3<f32>(_wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1301f + var_2.c) - _wgslsmith_f_op_f32(ceil(-1248f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_2.c)), _wgslsmith_f_op_f32(var_2.c * _wgslsmith_f_op_f32(var_2.c + 1023f)))));
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1599f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-468f, _wgslsmith_f_op_f32(-arg_0))), arg_0) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1295f, -445f) + vec3<f32>(-1222f, -1181f, 707f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-883f, -655f, arg_0)))), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1000f, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(902f, arg_0, arg_0)))));
    var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_5(func_4(func_2(Struct_1(u_input.a)), -181f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, var_1.x, -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(620f, -456f, var_1.x) - vec3<f32>(1362f, -704f, var_1.x)))))))));
    var var_2 = func_4(Struct_1(0u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(37214u, u_input.b), vec2<u32>(u_input.c, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-800f))) * -939f));
    var var_3 = select(countOneBits(~max(vec2<u32>(4294967295u, var_2.a), vec2<u32>(0u, var_2.a))), ~vec2<u32>(_wgslsmith_mod_u32(u_input.c, 15713u), ~1u), all(select(vec2<bool>(all(vec2<bool>(true, false)), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    return all(select(!vec3<bool>(false, false, var_3.x != var_3.x), !vec3<bool>(true, all(vec4<bool>(true, false, false, false)), true), select(vec3<bool>(true, false, true), vec3<bool>(true, 2147483647i > u_input.d.x, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(abs(0u)), vec2<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1026f + 598f), _wgslsmith_f_op_f32(select(-307f, 328f, true)))) == -142f, !any(select(vec2<bool>(false, true), vec2<bool>(false, true), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-932f + -1135f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f)))), -select(u_input.d.yww, ~(u_input.d.wwz >> (vec3<u32>(u_input.a, u_input.a, u_input.b) % vec3<u32>(32u))), vec3<bool>(true, true, true)), vec2<bool>(all(vec2<bool>(true, false)) && func_1(-1000f), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1297f, 135f)) * -1310f))));
    var var_1 = var_0.c;
    let var_2 = var_0;
    let var_3 = var_0;
    var var_4 = firstLeadingBit(func_3());
    var_1 = _wgslsmith_f_op_f32(min(-455f, -444f));
    var var_5 = var_2.a;
    var var_6 = Struct_2(var_3.a, !var_2.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(507f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-var_3.c))))), max(select(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, -3195i, -1i), vec3<i32>(11469i, -57677i, u_input.d.x), vec3<i32>(var_0.d.x, u_input.d.x, var_2.d.x)), _wgslsmith_mod_vec3_i32(u_input.d.xwz, vec3<i32>(var_0.d.x, var_3.d.x, 54979i))), _wgslsmith_mod_vec3_i32(vec3<i32>(4331i, var_0.d.x, 2147483647i), var_0.d) >> (~vec3<u32>(var_5.a, var_0.a.a, 1u) % vec3<u32>(32u)), select(select(vec3<bool>(var_0.e.x, false, true), vec3<bool>(var_0.b.x, false, true), false), vec3<bool>(true, false, false), true)), _wgslsmith_clamp_vec3_i32(~(var_2.d & vec3<i32>(var_0.d.x, var_0.d.x, 13843i)), vec3<i32>(var_2.d.x, u_input.d.x, 2147483647i), var_0.d)), vec2<bool>(false, var_0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_6.c))), var_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_6.c, var_6.c)))) + _wgslsmith_f_op_f32(var_0.c * -475f)), _wgslsmith_f_op_f32(1f - -122f));
}

