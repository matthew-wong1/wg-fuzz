struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 25>;

var<private> global2: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(-12511i, 2147483647i, Struct_1(vec3<u32>(42337u, 10906u, 4294967295u), -8148i, 0u, false, 32818u), -1i), Struct_2(27815i, i32(-2147483648), Struct_1(vec3<u32>(40187u, 7235u, 0u), 23845i, 65290u, false, 1579u), -4180i), Struct_2(1i, -22110i, Struct_1(vec3<u32>(0u, 4294967295u, 1u), -52340i, 0u, false, 4294967295u), i32(-2147483648)), Struct_2(1i, 1i, Struct_1(vec3<u32>(12195u, 4294967295u, 11691u), 2147483647i, 44444u, false, 18576u), 7868i), Struct_2(-1i, 2147483647i, Struct_1(vec3<u32>(4294967295u, 0u, 0u), 0i, 0u, false, 33490u), -1i), Struct_2(i32(-2147483648), 45105i, Struct_1(vec3<u32>(1u, 1u, 68893u), -1i, 0u, true, 71772u), 3012i), Struct_2(1i, 1i, Struct_1(vec3<u32>(1u, 30786u, 1u), 52530i, 1u, false, 10627u), -23722i), Struct_2(-4761i, -44642i, Struct_1(vec3<u32>(1u, 15653u, 1u), -4989i, 0u, true, 4294967295u), 2147483647i), Struct_2(-17289i, -1i, Struct_1(vec3<u32>(11069u, 1u, 0u), i32(-2147483648), 1u, false, 1215u), 2147483647i), Struct_2(-28596i, -8610i, Struct_1(vec3<u32>(4294967295u, 1816u, 0u), 22161i, 60418u, false, 16576u), -1i), Struct_2(-44630i, -60437i, Struct_1(vec3<u32>(4294967295u, 1u, 129941u), 49614i, 0u, true, 14714u), -62518i), Struct_2(0i, i32(-2147483648), Struct_1(vec3<u32>(41528u, 4294967295u, 0u), -45658i, 0u, false, 51506u), 1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> i32 {
    let var_0 = !(!arg_0);
    global0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 25u)] - global1[_wgslsmith_index_u32(1u, 25u)]);
    let var_1 = Struct_2(-19311i, u_input.c.x, Struct_1(vec3<u32>(4294967295u, ~_wgslsmith_clamp_u32(4294967295u, 1u, u_input.b.x), u_input.a.x & u_input.a.x), u_input.c.x ^ u_input.c.x, ~27594u, all(select(arg_1.yzx, vec3<bool>(arg_1.x, arg_1.x, false), !arg_1.zxx)), u_input.b.x), -_wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i) | vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_sub_vec3_i32(~vec3<i32>(0i, -5961i, u_input.c.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-65049i, 0i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, 19674i)))));
    var var_2 = ~u_input.c.x;
    var var_3 = vec2<u32>(select(57989u, u_input.a.x, _wgslsmith_f_op_f32(-592f + global1[_wgslsmith_index_u32(46150u, 25u)]) >= 1518f), 1u) & (var_1.c.a.xx & var_1.c.a.zz);
    return abs(var_1.b ^ ~reverseBits(_wgslsmith_sub_i32(var_1.c.b, var_1.c.b)));
}

fn func_2() -> i32 {
    let var_0 = vec3<i32>(~func_3(true, vec4<bool>(true, u_input.c.x <= u_input.c.x, any(vec2<bool>(false, true)), true)), 8315i, -2147483647i);
    return ~select(-(max(var_0.x, var_0.x) | _wgslsmith_mod_i32(-6299i, u_input.c.x)), ~abs(-4537i), any(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false))));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = false;
    var var_1 = vec3<i32>(_wgslsmith_clamp_i32(reverseBits(u_input.c.x) & u_input.c.x, -1i, u_input.c.x), -u_input.c.x, func_2());
    let var_2 = _wgslsmith_f_op_f32(floor(-966f));
    global1 = array<f32, 25>();
    var var_3 = Struct_1(_wgslsmith_mod_vec3_u32(min(vec3<u32>(22865u, u_input.b.x, 1u), ~u_input.a), vec3<u32>(u_input.b.x ^ 10030u, u_input.b.x, ~u_input.a.x)) & u_input.a, ~func_2(), abs(~_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x, 41978u, 9331u))), false | !(!var_0), 4927u);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(0u, abs(_wgslsmith_clamp_u32(4294967295u, ~u_input.a.x, 1u))), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x | 76018u, 25u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1343f * -590f) + _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(85392u, 25u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 25u)]) + 401f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(u_input.b.x, 25u)])))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(vec4<f32>(1152f, 149f, global1[_wgslsmith_index_u32(61424u, 25u)], -390f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(var_0.x, 25u)], global1[_wgslsmith_index_u32(var_0.x, 25u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(var_0.x, 25u)])) * _wgslsmith_div_f32(-736f, global1[_wgslsmith_index_u32(var_0.x, 25u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(var_0.x, 25u)])), _wgslsmith_f_op_f32(func_1(vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 25u)], global1[_wgslsmith_index_u32(var_0.x, 25u)], 373f, -1239f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(0u, 25u)], 902f, global1[_wgslsmith_index_u32(~1u, 25u)], 466f)))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-543f, global1[_wgslsmith_index_u32(var_0.x, 25u)]), -1585f)), global1[_wgslsmith_index_u32(~1u, 25u)], 1439f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-201f, global1[_wgslsmith_index_u32(var_0.x, 25u)], -975f, global1[_wgslsmith_index_u32(u_input.a.x, 25u)])) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1[_wgslsmith_index_u32(12435u, 25u)], -633f, global1[_wgslsmith_index_u32(var_0.x, 25u)], var_1.x)))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-2573f)), -381f, -1883f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1139f * 1029f)))));
    let var_2 = all(vec4<bool>(false, select(all(vec3<bool>(true, true, false)) || true, false, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.a.x, 25u)])) < 858f), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))) & any(vec2<bool>(true, true)), select(countOneBits(-1i) == -u_input.c.x, true, !any(vec4<bool>(true, true, false, false)))));
    global1 = array<f32, 25>();
    global0 = global1[_wgslsmith_index_u32(~4294967295u, 25u)];
    var_0 = countOneBits(abs(abs(vec3<u32>(u_input.b.x, 61828u >> (u_input.b.x % 32u), max(12437u, var_0.x)))));
    let var_3 = !(~select(u_input.c.x >> (var_0.x % 32u), reverseBits(20728i), 1128f <= global1[_wgslsmith_index_u32(0u, 25u)]) <= -35208i);
    global1 = array<f32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(vec3<i32>(1i, u_input.c.x, u_input.c.x)) | min(~vec3<i32>(-28167i, -4424i, u_input.c.x), min(vec3<i32>(-27654i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)))), u_input.b, u_input.a.x);
}

