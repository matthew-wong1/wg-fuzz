struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32((~vec4<i32>(5360i, u_input.a, u_input.a, 11047i) | ~vec4<i32>(1i, u_input.b.x, -5522i, global0.x)) ^ (_wgslsmith_sub_vec4_i32(vec4<i32>(54440i, global0.x, u_input.a, u_input.b.x), vec4<i32>(0i, 40550i, -13969i, -2147483647i)) << (~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mod_i32(u_input.b.x & 24140i, _wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(global0.x, 748i))), 38783i, -1930i, 0i >> (1u % 32u))), ~(~(vec4<i32>(global0.x, u_input.a, 6583i, global0.x) | vec4<i32>(u_input.a, global0.x, -2147483647i, u_input.a))) << (~vec4<u32>(u_input.c.x, 248u, 4294967295u, 1u) % vec4<u32>(32u)));
    global0 = var_0;
    global0 = var_0;
    let var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(true, false, false))), vec2<bool>(false, true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 655f), vec2<f32>(1912f, -232f), vec2<bool>(false, false))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1923f, -680f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1844f, -413f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1154f, 1545f)))))));
    return var_1.x;
}

fn func_3(arg_0: f32) -> vec4<i32> {
    global0 = vec4<i32>(-11038i ^ (_wgslsmith_dot_vec3_i32(vec3<i32>(-13682i, -1i, u_input.a), vec3<i32>(u_input.b.x, global0.x, u_input.b.x)) >> (~u_input.c.x % 32u)), u_input.a | global0.x, 31558i, global0.x) & vec4<i32>(min(_wgslsmith_div_i32(u_input.b.x | u_input.a, _wgslsmith_add_i32(-2147483647i, global0.x)), u_input.a), _wgslsmith_add_i32(-(global0.x | 23601i), _wgslsmith_clamp_i32(-global0.x, 55104i, 16986i)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-36431i, 56074i, 0i, 0i) | vec4<i32>(global0.x, u_input.b.x, u_input.b.x, global0.x), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global0.x, global0.x, global0.x), vec4<i32>(-1i, global0.x, 2147483647i, u_input.a)))), 12742i);
    global0 = -vec4<i32>(_wgslsmith_sub_i32(countOneBits(u_input.b.x & u_input.b.x), max(8456i, firstTrailingBit(58746i))), _wgslsmith_clamp_i32(~(-4351i), -55785i, _wgslsmith_mod_i32(~(-1i), -46297i)), 0i, ~_wgslsmith_sub_i32(-global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.b.x, 31270i), vec4<i32>(global0.x, 36958i, -2147483647i, 27445i))));
    global0 = abs(vec4<i32>(u_input.a, -62392i, 26669i, -2147483647i));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 792f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(680f, arg_0))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-179f, arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1877f) * vec2<f32>(arg_0, -328f)))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), vec2<bool>(true, true)))));
    let var_1 = u_input.c.x;
    return ~(-_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(29550i, global0.x, global0.x, global0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, global0.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 1i, global0.x, u_input.a))), vec4<i32>(-u_input.b.x, global0.x & global0.x, u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 11650i), vec2<i32>(1i, 0i)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> i32 {
    global0 = vec4<i32>(u_input.b.x, 36210i, -(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 4632i, global0.x), u_input.b) << (max(4294967295u, u_input.c.x) % 32u)), global0.x) << (vec4<u32>(select(~4294967295u, 0u, true), u_input.c.x, 0u, _wgslsmith_mult_u32(u_input.c.x, 61441u)) % vec4<u32>(32u));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) - arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + 913f), any(vec4<bool>(true, true, true, true)))), arg_0.x) + _wgslsmith_f_op_f32(exp2(arg_0.x)));
    global0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - 215f), 361f))));
    let var_1 = u_input.c.yy;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) + var_0))))), u_input.b.yz, select(global0.wy, -(~global0.zz), true), 2147483647i | min(min(u_input.b.x, firstLeadingBit(global0.x)), -reverseBits(u_input.b.x)), 76684u);
    return _wgslsmith_clamp_i32(global0.x, -1i, -2191i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = select(_wgslsmith_clamp_vec4_i32(vec4<i32>(func_2(vec4<f32>(857f, -823f, 451f, 1114f), u_input.c.x), ~u_input.b.x, u_input.a, _wgslsmith_mod_i32(u_input.b.x, 1i)), -select(vec4<i32>(25820i, 2147483647i, u_input.b.x, u_input.a), vec4<i32>(3266i, 42424i, global0.x, -1i), vec4<bool>(true, false, true, true)) << (vec4<u32>(4294967295u ^ u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, 0u), ~u_input.c.x, ~0u) % vec4<u32>(32u)), ~(-vec4<i32>(2147483647i, 2147483647i, global0.x, 1504i))), _wgslsmith_add_vec4_i32(~abs(vec4<i32>(-2147483647i, 0i, global0.x, global0.x)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(global0.x, -45505i, -4344i, u_input.a)) >> (~vec4<u32>(u_input.c.x, 5565u, u_input.c.x, 48505u) % vec4<u32>(32u)), firstLeadingBit(abs(vec4<i32>(36758i, 1i, u_input.a, u_input.b.x))))), true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(917f, 412f)), vec2<i32>(u_input.a << (reverseBits(73443u | u_input.c.x) % 32u), ~u_input.a), -u_input.b.xz, u_input.b.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 0u), vec2<u32>(u_input.c.x, u_input.c.x)), select(u_input.c.xy, u_input.c.xy, vec2<bool>(false, true))), u_input.c.x), 1u, u_input.c.x));
    let var_2 = var_1;
    global0 = _wgslsmith_div_vec4_i32(vec4<i32>(select(abs(~1i), ~(-4712i), true), func_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -2204f, var_1.a, var_2.a) + vec4<f32>(var_1.a, -102f, var_2.a, -964f)))), countOneBits(~var_2.e)), _wgslsmith_mult_i32(var_2.d, ~1i), i32(-1i) * -max(-2147483647i, global0.x)), firstTrailingBit(_wgslsmith_sub_vec4_i32(-vec4<i32>(2147483647i, global0.x, global0.x, -2147483647i) >> (~vec4<u32>(var_2.e, 4294967295u, var_1.e, 1u) % vec4<u32>(32u)), (vec4<i32>(-9104i, var_1.c.x, var_2.d, u_input.b.x) ^ vec4<i32>(var_1.c.x, 24123i, -19602i, global0.x)) ^ (vec4<i32>(-13449i, var_2.d, var_2.d, global0.x) >> (vec4<u32>(var_1.e, 15299u, 4294967295u, 4294967295u) % vec4<u32>(32u))))));
    let var_3 = reverseBits(vec4<i32>(-5891i, 2147483647i, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(162f, -945f, 506f, var_1.a), vec4<f32>(var_1.a, var_2.a, var_2.a, var_2.a), vec4<bool>(true, true, false, false)))), firstTrailingBit(~1u)), ~(-4563i)));
    var_0 = any(select(!vec2<bool>(any(vec2<bool>(false, true)), true), vec2<bool>(true, true), vec2<bool>(_wgslsmith_f_op_f32(select(var_2.a, 1540f, true)) > _wgslsmith_f_op_f32(1206f * var_2.a), true & select(false, false, true))));
    var var_4 = ~var_2.e;
    global0 = -vec4<i32>(global0.x, -2147483647i, -29209i, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(411f, var_3.yw, abs(u_input.c.xx), -39010i << (~u_input.c.x % 32u));
}

