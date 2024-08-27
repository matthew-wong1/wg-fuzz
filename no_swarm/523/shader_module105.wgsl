struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<f32, 20>;

var<private> global2: f32 = -252f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> i32 {
    var var_0 = vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~abs(u_input.a), min(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.c.x, 25016u, u_input.c.x)), ~vec3<u32>(1u, 40621u, 12512u)), firstTrailingBit(45779u)), max(u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 61865u, 34319u, u_input.c.x), vec4<u32>(3626u, 105935u, 112088u, u_input.a)), ~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.d.x)))), 20u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 20u)])))))), -659f);
    var var_1 = vec4<bool>(arg_1.x, true, arg_1.x, all(arg_1.yz));
    let var_2 = select(u_input.b.yy, reverseBits(vec2<i32>(i32(-1i) * -2147483647i, ~(u_input.b.x ^ 2147483647i))), arg_1.x | arg_1.x);
    global1 = array<f32, 20>();
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(985f - var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1239f, var_0.x, arg_1.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(387f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-366f, var_0.x, -661f) - vec3<f32>(-202f, 1074f, -678f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(236f, global1[_wgslsmith_index_u32(u_input.d.x, 20u)], -689f)) - vec3<f32>(var_0.x, -599f, global1[_wgslsmith_index_u32(16032u, 20u)])), !vec3<bool>(var_1.x, true, true)))));
    return _wgslsmith_add_i32(2147483647i, _wgslsmith_sub_i32(-13906i, 0i)) >> (~u_input.d.x % 32u);
}

fn func_2(arg_0: Struct_1) -> bool {
    global0 = -2249i | func_3(-countOneBits(arg_0.a ^ 2147483647i), vec3<bool>(true, true, true));
    var var_0 = !all(vec4<bool>(true, true, true, true));
    var var_1 = (u_input.b.xx ^ -u_input.b.zw) ^ vec2<i32>(_wgslsmith_clamp_i32(-1i, _wgslsmith_mult_i32(~(-12233i), 18684i), -1i), ~_wgslsmith_dot_vec2_i32(u_input.b.zx | u_input.b.zw, firstLeadingBit(u_input.b.xx)));
    let var_2 = any(vec2<bool>(!(u_input.d.x > (u_input.a >> (1u % 32u))), any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)) & !all(vec4<bool>(true, true, true, false))));
    global2 = global1[_wgslsmith_index_u32(104992u, 20u)];
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-185f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(8524u, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)])), global1[_wgslsmith_index_u32(u_input.d.x & 1u, 20u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(4294967295u, 20u)]))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.d.x, 23927u), 20u)])) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(149f + _wgslsmith_f_op_f32(-1053f * global1[_wgslsmith_index_u32(u_input.c.x, 20u)])) - -1373f)));
    let var_0 = u_input.c.x;
    let var_1 = arg_1.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(333f))), 1000f, 324f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 20u)] - 1014f)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(min(~1u, var_0), 20u)], 1356f))) - global1[_wgslsmith_index_u32(countOneBits(var_0 ^ u_input.c.x) >> (16135u % 32u), 20u)]);
    return arg_1;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_4(select(vec4<bool>(any(vec2<bool>(false, false)) || true, true && all(vec4<bool>(true, true, true, false)), false, all(vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), func_2(Struct_1(u_input.b.x))), vec4<bool>(true, true, true, true)), Struct_2(u_input.b.x, Struct_1(-29904i), Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.e, 42200i, u_input.b.x), vec4<i32>(0i, -5005i, u_input.e, -1i)), vec4<i32>(2147483647i, -42501i, -1i, u_input.e))), Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, -31021i, 29370i), u_input.b, vec4<i32>(u_input.b.x, u_input.e, 0i, 2147483647i)), vec4<i32>(u_input.e, -1i, 5553i, u_input.b.x))), false), !(func_2(Struct_1(0i)) || true));
    let var_1 = Struct_1(_wgslsmith_mod_i32(u_input.b.x, 0i));
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 20u)] * 410f), 1167f));
    var var_2 = reverseBits(~vec3<u32>(~(22248u << (u_input.c.x % 32u)), select(6810u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d.x), u_input.d), true), 0u));
    let var_3 = func_4(vec4<bool>(all(vec2<bool>(true, true)), var_0.e, any(vec2<bool>(arg_0 >= 940f, true)), func_2(func_4(vec4<bool>(var_0.e, var_0.e, var_0.e, false), Struct_2(-11204i, Struct_1(-41003i), Struct_1(var_1.a), Struct_1(0i), var_0.e), true).c)), func_4(select(!vec4<bool>(true, var_0.e, var_0.e, true), select(vec4<bool>(false, var_0.e, true, false), vec4<bool>(true, true, true, true), select(var_0.e, var_0.e, var_0.e)), !(!vec4<bool>(var_0.e, var_0.e, false, false))), func_4(select(select(vec4<bool>(false, var_0.e, false, true), vec4<bool>(var_0.e, false, false, true), vec4<bool>(false, var_0.e, true, var_0.e)), !vec4<bool>(var_0.e, true, var_0.e, false), select(vec4<bool>(true, var_0.e, false, var_0.e), vec4<bool>(true, true, true, true), true)), func_4(select(vec4<bool>(false, var_0.e, var_0.e, true), vec4<bool>(var_0.e, false, true, false), true), var_0, true), false), true), false);
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3) -> StorageBuffer {
    let var_0 = arg_0;
    var var_1 = firstLeadingBit(u_input.b);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-351f, -883f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(30304u, 20u)], global1[_wgslsmith_index_u32(u_input.d.x, 20u)]) + 479f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1030f) * -283f))));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -281f);
    global2 = -1000f;
    return StorageBuffer(-1330f, 318i, 59311u, _wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(413f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.d.x, 20u)])), _wgslsmith_f_op_f32(min(292f, global1[_wgslsmith_index_u32(4294967295u, 20u)])))))), countOneBits(1132i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var_0 = -2147483647i & ((i32(-1i) * -3757i) >> (~u_input.d.x % 32u));
    let x = u_input.a;
    s_output = func_5(Struct_2(1i, func_1(-182f), Struct_1(-_wgslsmith_add_i32(u_input.e, u_input.b.x)), func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), Struct_2(countOneBits(u_input.b.x), Struct_1(u_input.b.x), func_4(vec4<bool>(false, false, true, true), Struct_2(-2147483647i, Struct_1(u_input.e), Struct_1(u_input.b.x), Struct_1(1i), true), false).b, func_4(vec4<bool>(false, true, false, false), Struct_2(u_input.e, Struct_1(u_input.b.x), Struct_1(2147483647i), Struct_1(-15260i), true), false).b, global1[_wgslsmith_index_u32(u_input.d.x, 20u)] > 1038f), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))).c, any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), true))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), Struct_3(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 20u)])));
}

