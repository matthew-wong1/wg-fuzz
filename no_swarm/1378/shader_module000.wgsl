struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(0u, 62833u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    let var_0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~global0[_wgslsmith_index_u32(u_input.c.x, 2u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(53339u, u_input.c.x), 2u)] >> (u_input.c.x % 32u)), u_input.c);
    let var_1 = min(vec2<u32>(_wgslsmith_mult_u32(max(~global0[_wgslsmith_index_u32(u_input.c.x, 2u)], reverseBits(var_0)), 16237u << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0), u_input.c) % 32u)), 0u), vec2<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(~u_input.c.x, ~0u), 111086u), 2u)]));
    var var_2 = Struct_3(250f, true, min(0u, _wgslsmith_mod_u32(~4294967295u, 2208u)));
    return firstLeadingBit(var_2.c);
}

fn func_4(arg_0: vec4<u32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1440f, _wgslsmith_f_op_f32(select(191f, 856f, false)), _wgslsmith_f_op_f32(floor(105f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(803f, 488f, -168f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1847f, -1566f, 1000f), vec3<f32>(-1104f, -286f, 802f), vec3<bool>(false, true, false)))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-805f, -320f, -940f), vec3<f32>(620f, 530f, -697f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(369f, 1000f, 547f), vec3<f32>(-620f, -387f, 476f)) - vec3<f32>(-699f, 500f, 495f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -735f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-905f, 409f)) - 1f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1352f, 1225f, 1701f, -182f), vec4<f32>(-509f, 1000f, 395f, 313f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1668f, 985f, -447f, -834f)) + vec4<f32>(-784f, 1401f, 666f, 1092f))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.d.xzz + vec3<f32>(var_0.d.x, 1389f, var_0.c)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(-617f + var_0.d.x)), -750f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(max(-1315f, var_0.c)), var_0.c, _wgslsmith_f_op_f32(abs(-1800f)))))));
    global0 = array<u32, 2>();
    var var_1 = (_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -47313i, u_input.a, -37310i), vec4<i32>(-36810i, u_input.a, -8556i, -31625i) ^ vec4<i32>(-51364i, u_input.b, -1i, u_input.a)), -min(-1982i, -1i)) ^ 52409i) >> (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~u_input.c), min(firstTrailingBit(vec2<u32>(1u, u_input.c.x)), arg_0.ww)), 2u)] % 32u);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_0.d.ywx * var_0.d.zww), _wgslsmith_f_op_vec3_f32(exp2(var_0.d.zxx)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_div_f32(545f, var_0.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x))), var_0.d);
    return false;
}

fn func_2() -> Struct_1 {
    global0 = array<u32, 2>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1694f), func_4(_wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(u_input.c.x, 0u, 32583u, u_input.c.x)), ~vec4<u32>(0u, 4444u, 74400u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)] | 4294967295u, u_input.c.x, func_3(), ~1u))), 297u);
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 813f, 311f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-197f, var_0.a, var_0.a))))), _wgslsmith_f_op_f32(-var_0.a), 916f, vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1036f, _wgslsmith_f_op_f32(ceil(-633f)))), _wgslsmith_f_op_f32(f32(-1f) * -1980f), _wgslsmith_f_op_f32(-var_0.a)));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    let var_0 = (-1118f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1653f + 1402f))))) || any(vec2<bool>(arg_0.b, !(!arg_0.b)));
    let var_1 = ~0i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_0.a)), arg_0.a)) * -762f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), arg_0.a)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, all(vec3<bool>(true, true, true)), true);
    var var_1 = Struct_2(var_0.x);
    let var_2 = func_1(Struct_3(1121f, !var_1.a != true, 1u));
    var var_3 = u_input.c.x;
    global0 = array<u32, 2>();
    let var_4 = 0u;
    let var_5 = ~vec2<i32>(-2147483647i, ~min(~64710i, u_input.a));
    var_0 = vec3<bool>(var_4 > _wgslsmith_mod_u32(~31529u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(45043u, 2u)], var_4), u_input.c)), !(!func_4(firstLeadingBit(vec4<u32>(u_input.c.x, u_input.c.x, 1u, 4294967295u)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(14891u);
}

