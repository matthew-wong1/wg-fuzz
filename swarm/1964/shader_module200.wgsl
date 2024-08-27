struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12>;

var<private> global1: array<f32, 5> = array<f32, 5>(-1000f, -359f, -1073f, 631f, -764f);

var<private> global2: array<f32, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(48209u, 16u)], 493f, -171f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-837f, global2[_wgslsmith_index_u32(~arg_0, 16u)], _wgslsmith_f_op_f32(f32(-1f) * -719f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2[_wgslsmith_index_u32(arg_0, 16u)], -376f, global2[_wgslsmith_index_u32(arg_0, 16u)])))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 1u), 5u)] + -1161f) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0, 16u)]))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(arg_2.x, 5u)], global2[_wgslsmith_index_u32(arg_2.x, 16u)], global1[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global2[_wgslsmith_index_u32(arg_2.x, 16u)], global2[_wgslsmith_index_u32(1u, 16u)]), vec3<f32>(-120f, -138f, global2[_wgslsmith_index_u32(4294967295u, 16u)]))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(1u, 5u)], 610f, 456f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-420f, global1[_wgslsmith_index_u32(arg_2.x, 5u)], global1[_wgslsmith_index_u32(u_input.a, 5u)])), arg_1.x))) - vec3<f32>(288f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(1u, 5u)], -1000f, arg_1.x))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a >> (4294967295u % 32u), ~u_input.a), 5u)])));
    var var_1 = ~(-(~global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(19850u, u_input.a), 12u)]));
    var var_2 = vec3<i32>(var_1.x, 0i, var_1.x);
    let var_3 = Struct_4(firstLeadingBit(-1i));
    var var_4 = vec2<i32>(-2147483647i, var_3.a & -6504i);
    return reverseBits(select(vec3<u32>(31020u, 51441u, 1u), firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(2558u, arg_0), ~arg_2.x, ~arg_2.x)), !all(select(arg_1.xy, vec2<bool>(arg_1.x, arg_1.x), arg_1.x))));
}

fn func_2(arg_0: bool, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * -1441f) * 524f)) - _wgslsmith_f_op_f32(-arg_1));
    var var_1 = Struct_3(Struct_2(_wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(countOneBits(29144u), 12u)], select(vec3<i32>(2147483647i, -8940i, 7600i), global0[_wgslsmith_index_u32(0u, 12u)], vec3<bool>(arg_0, false, arg_0))) << (firstTrailingBit(vec3<u32>(57591u, 637u, 4294967295u) << (vec3<u32>(13759u, u_input.a, 51444u) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<bool>(false, true || any(!vec2<bool>(arg_0, arg_0)), arg_0), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 5u)], global2[_wgslsmith_index_u32(4294967295u, 16u)], 1682f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -887f) * _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.a, 5u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-686f)))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 5u)] * _wgslsmith_f_op_f32(f32(-1f) * -480f))), arg_0)), ~(~_wgslsmith_clamp_vec3_u32(func_3(u_input.a, vec3<bool>(true, arg_0, false), vec2<u32>(0u, u_input.a)), vec3<u32>(u_input.a, 85198u, 4294967295u) >> (vec3<u32>(u_input.a, 58822u, 21732u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, u_input.a, 27710u))));
    var_0 = var_1.c.x;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(313f * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1)), arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * -1371f))))), -1252f);
    var var_3 = var_1.a;
    return 232f;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec2<u32>) -> bool {
    let var_0 = 0u;
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_mod_u32(var_0, 0u)) ^ arg_2.x, 12u)]);
    let var_2 = vec4<bool>((1f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 - global1[_wgslsmith_index_u32(3606u, 5u)])))) | (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) >= _wgslsmith_f_op_f32(arg_1 * -347f)), any(vec3<bool>(global1[_wgslsmith_index_u32(~arg_2.x, 5u)] > _wgslsmith_f_op_f32(-1257f * -633f), global1[_wgslsmith_index_u32(~var_0, 5u)] > arg_1, select(true, true, all(vec3<bool>(true, true, false))))), true, 29195i < var_1.a.x);
    global2 = array<f32, 16>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(2398f, global2[_wgslsmith_index_u32(~var_0, 16u)]) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -185f), _wgslsmith_f_op_f32(func_2(var_2.x, -1000f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-114f, global1[_wgslsmith_index_u32(u_input.a, 5u)]), vec2<f32>(-1271f, -820f)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_0, 5u)], 970f))))), u_input.a < arg_2.x);
    return true;
}

fn func_1(arg_0: vec4<f32>) -> vec3<f32> {
    global0 = array<vec3<i32>, 12>();
    var var_0 = Struct_5(global1[_wgslsmith_index_u32(27308u, 5u)], Struct_2(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 31688i, 3454i, -13012i), vec4<i32>(16374i, 13726i, -12827i, -15182i)) << (~0u % 32u), max(-3737i, 1i), abs(~0i))), _wgslsmith_div_u32(~(~(1u ^ u_input.a)), u_input.a));
    let var_1 = select(vec2<bool>(countOneBits(var_0.c) <= 1u, select(false, true, false)), vec2<bool>(true, any(vec3<bool>(true, true, true))), !(func_4(_wgslsmith_f_op_f32(func_2(true, -150f)), _wgslsmith_f_op_f32(2117f * var_0.a), vec2<u32>(u_input.a, 39806u)) || true));
    var var_2 = var_0.b.a;
    var var_3 = all(select(!select(select(var_1, var_1, vec2<bool>(true, var_1.x)), !var_1, vec2<bool>(var_1.x, true)), !vec2<bool>(true, 1087f >= global2[_wgslsmith_index_u32(0u, 16u)]), true));
    return arg_0.yzx;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec3<f32>) -> u32 {
    let var_0 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-134f)), global1[_wgslsmith_index_u32(~14663u, 5u)])), _wgslsmith_f_op_f32(289f + _wgslsmith_f_op_f32(floor(-677f)))), arg_0, 35449u);
    global2 = array<f32, 16>();
    global0 = array<vec3<i32>, 12>();
    global2 = array<f32, 16>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-431f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-281f)), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 16u)], _wgslsmith_f_op_f32(f32(-1f) * -1136f)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(688f + _wgslsmith_div_f32(arg_1, 638f))));
    return _wgslsmith_add_u32(1u, firstTrailingBit(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a, 1u)), vec2<u32>(var_0.c, u_input.a) ^ vec2<u32>(0u, 67983u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 12>();
    global1 = array<f32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~0i >> (~u_input.a % 32u), _wgslsmith_mod_i32(-1i >> (u_input.a % 32u), firstLeadingBit(0i))) & -vec2<i32>(_wgslsmith_sub_i32(1i, 16865i), firstTrailingBit(-1i)), func_5(Struct_2(vec3<i32>(_wgslsmith_mod_i32(-9020i, 2147483647i), ~0i, abs(-2147483647i))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 5u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 5u)], global1[_wgslsmith_index_u32(u_input.a, 5u)], 1000f, global2[_wgslsmith_index_u32(u_input.a, 16u)]) * vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(u_input.a, 5u)], -1000f, -698f)))))), ~(~(~vec3<u32>(11504u, 4294967295u, 1u))) | ~(~_wgslsmith_add_vec3_u32(vec3<u32>(10646u, 0u, 1u), vec3<u32>(24907u, u_input.a, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(47428u, 5u)]))))));
}

