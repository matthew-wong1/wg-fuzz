struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: f32 = -2761f;

var<private> global2: array<Struct_1, 7>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> i32 {
    var var_0 = select(_wgslsmith_sub_vec3_u32(u_input.b.wzw, firstTrailingBit(~u_input.b.ywx)), vec3<u32>(u_input.b.x & 1u, firstLeadingBit(u_input.b.x) & (4294967295u ^ u_input.b.x), min(35106u, 4294967295u) | u_input.b.x), arg_0) & _wgslsmith_clamp_vec3_u32(~(~abs(vec3<u32>(4294967295u, u_input.a, 16635u))), vec3<u32>(abs(u_input.a), 0u, u_input.b.x & ~1u), abs(u_input.b.wwx));
    global2 = array<Struct_1, 7>();
    let var_1 = ~(-arg_1.d.a.xw);
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~var_0.yy), _wgslsmith_sub_vec2_u32(u_input.b.xy, vec2<u32>(4294967295u, 4294967295u))), countOneBits(_wgslsmith_mult_vec2_u32(abs(u_input.b.yy), ~var_0.yz))), 7u)];
    let var_3 = Struct_3(~0u, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(361f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 8u)]))), ~arg_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_2.c.wxz)) - var_2.c.zzy), arg_1.d), abs(var_2.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.c), _wgslsmith_f_op_vec3_f32(arg_1.c * arg_1.d.c.wxz))) * _wgslsmith_f_op_vec3_f32(round(arg_1.d.c.zwy))));
    return -firstLeadingBit(_wgslsmith_sub_i32(var_1.x, firstLeadingBit(4214i)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_sub_u32(~firstLeadingBit(u_input.a) & 29519u, u_input.b.x), Struct_2(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(reverseBits(4294967295u), 8u)])), -23781i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(37608u, 8u)], -251f, global0[_wgslsmith_index_u32(u_input.a, 8u)]), vec3<f32>(1571f, global0[_wgslsmith_index_u32(u_input.b.x, 8u)], global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), false)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1331f, global0[_wgslsmith_index_u32(4294967295u, 8u)], 1357f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1652f, global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 687f))))), Struct_1(vec4<i32>(-40172i, func_3(false, Struct_2(-1104f, -2147483647i, vec3<f32>(-1599f, global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)]), global2[_wgslsmith_index_u32(u_input.a, 7u)])), 37891i, _wgslsmith_sub_i32(u_input.c.x, -2147483647i)), vec4<i32>(countOneBits(u_input.d), u_input.d & u_input.c.x, -2147483647i, u_input.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 8u)], 532f, global0[_wgslsmith_index_u32(u_input.a, 8u)], 1000f) * vec4<f32>(174f, 1649f, -664f, 389f)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(105637u, 8u)], -653f, -238f, global0[_wgslsmith_index_u32(u_input.a, 8u)])))), _wgslsmith_f_op_f32(f32(-1f) * -630f))), 2147483647i, vec3<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(~(~4294967295u), 8u)], -575f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 8u)] - global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 8u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(63870u, 8u)] - -643f) + 1942f), global0[_wgslsmith_index_u32(~u_input.b.x, 8u)])));
    let var_1 = Struct_3(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~1u, u_input.a, 15587u), var_0.a), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(var_0.a, u_input.b.x, var_0.a)), vec3<u32>(4294967295u, min(1u, u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b.xzy, vec3<u32>(u_input.a, 23564u, u_input.a)))), 8u)], -u_input.c.x & (u_input.d ^ abs(u_input.d)), var_0.b.d.c.yzz, var_0.b.d), 10865i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d) - var_0.b.d.c.yyw)) * _wgslsmith_f_op_vec3_f32(-var_0.b.c)));
    var var_2 = _wgslsmith_sub_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(8327u, 1u, var_1.a, 54408u) << ((u_input.b << (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(u_input.b.x, var_1.a, var_1.a, 4294967295u)))), firstTrailingBit(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a, var_1.a, 0u), vec4<u32>(34786u, var_0.a, u_input.b.x, var_0.a)) >> (max(vec4<u32>(var_0.a, var_1.a, u_input.b.x, u_input.a), vec4<u32>(u_input.a, var_0.a, u_input.b.x, 1u)) % vec4<u32>(32u)))));
    var_2 = vec4<u32>(~(~reverseBits(_wgslsmith_mult_u32(1u, u_input.a))), var_1.a, 87893u, ~(~11045u));
    var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.b.yz, vec2<u32>(_wgslsmith_mult_u32(var_1.a, var_2.x), var_0.a)) >> (3263u % 32u), ~var_0.a & _wgslsmith_mod_u32(var_1.a, 0u), ~(~countOneBits(u_input.b.x)), 1u);
    return Struct_2(-854f, var_1.b.d.a.x, var_1.d, var_0.b.d);
}

fn func_1() -> StorageBuffer {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(77759u, 8u)]), -1741f);
    let var_1 = Struct_3(39320u, func_2(), abs(reverseBits(u_input.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_2().c - _wgslsmith_f_op_vec3_f32(-vec3<f32>(492f, global0[_wgslsmith_index_u32(12623u, 8u)], 866f))), vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)]), -420f, _wgslsmith_f_op_f32(-689f - global0[_wgslsmith_index_u32(93709u, 8u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(34314u, 8u)], 1896f, -1521f) * vec3<f32>(1292f, global0[_wgslsmith_index_u32(u_input.b.x, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)])), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-438f, 690f, 260f), vec3<f32>(-1988f, global0[_wgslsmith_index_u32(86873u, 8u)], -139f), true)), vec3<bool>(false, false, true))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global0[_wgslsmith_index_u32(4294967295u, 8u)]));
    var var_3 = _wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(16756u, ~u_input.b.x));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.c.x + 401f)))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.a | ~u_input.a), 8u)])));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-494f, func_2().c.x, -1359f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 8>();
    global2 = array<Struct_1, 7>();
    var var_0 = global2[_wgslsmith_index_u32(~(~(~max(25477u, 0u))), 7u)];
    let x = u_input.a;
    s_output = func_1();
}

