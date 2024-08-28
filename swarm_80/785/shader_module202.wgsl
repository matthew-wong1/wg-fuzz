struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> i32 {
    let var_0 = -_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(~arg_1.c.c.wzz, ~arg_1.c.c.yxy), select(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, u_input.a, u_input.a), countOneBits(arg_1.c.c.zyw)), ~vec3<i32>(arg_0, arg_1.c.c.x, arg_1.c.d), !select(vec3<bool>(arg_1.a, arg_1.a, true), vec3<bool>(false, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, false))));
    let var_1 = select(select(select(!select(vec3<bool>(false, false, arg_1.a), vec3<bool>(arg_1.a, false, false), arg_1.a), select(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, true, arg_1.a), true), !arg_1.a | arg_1.a), select(vec3<bool>(false, arg_1.a, arg_1.a && true), select(vec3<bool>(arg_1.a, false, false), !vec3<bool>(false, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, true, true)), true), select(select(!vec3<bool>(false, arg_1.a, true), select(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(false, arg_1.a, arg_1.a), arg_1.a), !arg_1.a), select(!vec3<bool>(arg_1.a, true, false), select(vec3<bool>(arg_1.a, arg_1.a, true), vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(true, true, arg_1.a)), arg_1.a), !(-1057f < arg_1.b.x))), !vec3<bool>(all(!vec3<bool>(arg_1.a, arg_1.a, arg_1.a)), true, true), false);
    var var_2 = arg_1.c;
    return _wgslsmith_div_i32(~u_input.a, arg_1.c.c.x);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2478f, -673f, 502f, -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(-434f)), 456f, _wgslsmith_div_f32(-876f, -353f), _wgslsmith_f_op_f32(-184f * 1151f))))), Struct_1(~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.c, u_input.c), vec4<u32>(4294967295u, 4294967295u, u_input.c, u_input.c)), ~vec4<u32>(75522u, u_input.c, 4294967295u, 4294967295u), ~vec4<u32>(u_input.c, u_input.c, u_input.c, 9267u)), min(0u, 1u), ~select(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), -vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.a), select(false, true, false)), 1i));
    var var_1 = false;
    let var_2 = Struct_2((30549u << (1u % 32u)) <= firstTrailingBit(~var_0.c.a.x), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1169f + 1976f))), var_0.b.x)), 1000f, var_0.b.x), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(20208u), ~0u, abs(26875u), _wgslsmith_clamp_u32(42493u, 12937u, u_input.c)), firstTrailingBit(vec4<u32>(58549u, 4294967295u, 107524u, 4294967295u))), ~var_0.c.a.x, max(var_0.c.c | vec4<i32>(-14950i, u_input.b.x, var_0.c.d, -2147483647i), var_0.c.c), _wgslsmith_dot_vec2_i32(countOneBits(u_input.b ^ var_0.c.c.yw), vec2<i32>(var_0.c.d, _wgslsmith_add_i32(var_0.c.d, u_input.b.x)))));
    let var_3 = Struct_2(var_2.a, _wgslsmith_f_op_vec4_f32(var_0.b + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_2.b, var_2.b))) - vec4<f32>(679f, var_2.b.x, 445f, _wgslsmith_div_f32(var_2.b.x, var_2.b.x)))), Struct_1(vec4<u32>(max(_wgslsmith_mod_u32(u_input.c, 4294967295u), u_input.c), ~(~var_2.c.a.x), ~countOneBits(1u), _wgslsmith_sub_u32(~var_0.c.b, u_input.c << (var_0.c.b % 32u))), ~32808u, vec4<i32>(var_0.c.c.x, 1i, 0i, var_0.c.c.x), func_3(var_2.c.d, var_0)));
    let var_4 = var_0.c;
    return var_2;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> vec3<i32> {
    var var_0 = func_2().c;
    var_0 = Struct_1(~var_0.a, 71950u, func_2().c.c, -arg_1.c.c.x);
    var_0 = arg_1.c;
    var_0 = func_2().c;
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2093f, 1201f)) - _wgslsmith_f_op_f32(-1418f * 1241f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(469f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_div_f32(arg_1.b.x, -360f), 540f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, -652f, -118f) - _wgslsmith_f_op_vec3_f32(arg_1.b.zzw - vec3<f32>(825f, arg_1.b.x, arg_1.b.x))))), _wgslsmith_f_op_vec3_f32(func_2().b.wyw + vec3<f32>(-317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - arg_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x - 1000f))))));
    return var_0.c.wyy;
}

fn func_1() -> vec4<u32> {
    let var_0 = _wgslsmith_sub_vec3_i32(-vec3<i32>(-8536i, 0i, 12906i), -(func_4(~46940u, func_2(), 0u, true) | _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -1i, -16163i), vec3<i32>(2638i, -1i, -27906i)), abs(vec3<i32>(15775i, u_input.a, u_input.b.x)))));
    let var_1 = Struct_1(abs(vec4<u32>(u_input.c, ~u_input.c, ~4294967295u, u_input.c)) >> (vec4<u32>(~(u_input.c ^ u_input.c), _wgslsmith_clamp_u32(~33658u, ~u_input.c, select(u_input.c, u_input.c, false)), 65627u, min(~23387u, u_input.c)) % vec4<u32>(32u)), u_input.c, vec4<i32>(2257i, 0i << (u_input.c % 32u), u_input.b.x, u_input.a), var_0.x);
    var var_2 = var_1.c;
    let var_3 = var_1;
    var var_4 = func_2();
    return ~reverseBits(_wgslsmith_mod_vec4_u32(var_1.a, abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.b, 62892u, var_3.b, var_4.c.b), var_3.a))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    return Struct_1(~(~arg_1.c.a), ~abs(2599u), _wgslsmith_add_vec4_i32(vec4<i32>(~var_0.c.d, _wgslsmith_dot_vec2_i32(arg_3.c.zz, vec2<i32>(2147483647i, u_input.a)), 0i, ~(-30221i)) ^ -vec4<i32>(arg_1.c.d, arg_2.c.c.x, arg_3.c.x, -19072i), arg_2.c.c), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1142f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(533f * 563f), 1848f)), (_wgslsmith_div_i32(u_input.a, u_input.a) < -u_input.b.x) || true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1409f))) * _wgslsmith_f_op_f32(-1153f - _wgslsmith_div_f32(593f, 1083f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -760f) + _wgslsmith_f_op_f32(f32(-1f) * -1007f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1076f, 661f))))));
    let var_1 = ~(-vec2<i32>(~(~u_input.a), ~(u_input.a | -2147483647i)));
    let var_2 = Struct_2(select(true, !(_wgslsmith_f_op_f32(step(2379f, -239f)) == 785f), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1164f, -313f, 1698f, -453f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1053f, 1000f, 1662f, -1470f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-411f, 681f, 1000f, -609f), vec4<f32>(-895f, 1346f, 1194f, -445f))), vec4<f32>(-645f, 1227f, -183f, -378f)))), func_5(~func_1() ^ select(firstLeadingBit(vec4<u32>(u_input.c, 0u, u_input.c, u_input.c)), vec4<u32>(39428u, u_input.c, 1u, u_input.c) | vec4<u32>(18302u, u_input.c, u_input.c, 1u), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true))), func_2(), Struct_2(true, vec4<f32>(-784f, -1058f, _wgslsmith_div_f32(822f, -1860f), _wgslsmith_f_op_f32(-1000f * -899f)), func_2().c), Struct_1(select(~vec4<u32>(16310u, 73891u, u_input.c, 4294967295u), reverseBits(vec4<u32>(u_input.c, u_input.c, u_input.c, 18424u)), true), 4294967295u, -vec4<i32>(-2147483647i, u_input.a, var_1.x, u_input.b.x), 11531i)));
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.a.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, var_2.b.x, var_2.b.x, var_2.b.x) - var_2.b))))), var_3.c.a.x);
}

