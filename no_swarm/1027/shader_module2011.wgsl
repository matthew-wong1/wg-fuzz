struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(236f, 248f, 1063f, -2499f, -586f, -1000f, -1346f, 2266f, 1036f, 844f, -570f, 1288f, 404f, 1290f);

var<private> global1: vec2<f32> = vec2<f32>(-490f, 385f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: vec4<u32>) -> vec2<bool> {
    let var_0 = select(!select(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), arg_1), select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(false, true)), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), false), true), !vec2<bool>(true, any(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), vec2<bool>(false, false)))), select(select(select(vec2<bool>(arg_1, false), select(vec2<bool>(false, false), vec2<bool>(arg_1, true), false), all(vec4<bool>(arg_1, false, arg_1, arg_1))), !select(vec2<bool>(true, arg_1), vec2<bool>(false, false), vec2<bool>(arg_1, true)), true), select(!vec2<bool>(false, arg_1), select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), false), vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), arg_1)), !vec2<bool>(arg_1, true)), false));
    global0 = array<f32, 14>();
    var var_1 = vec4<i32>(~firstTrailingBit(u_input.a), u_input.a, -2147483647i, ~(~countOneBits(~u_input.b.x)));
    var_1 = vec4<i32>(min(u_input.b.x, _wgslsmith_add_i32(-1i, -var_1.x)), u_input.b.x, var_1.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(abs(-2147483647i), u_input.a), _wgslsmith_sub_i32(reverseBits(1i), -8318i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -201f, _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(min(arg_2, -511f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(962f)) + global0[_wgslsmith_index_u32(arg_3.x, 14u)]))));
    return select(var_0, var_0, select(var_0, var_0, var_0));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, -2147483647i), u_input.b.xz) ^ arg_0, arg_0);
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(~1u, 115946u, 1u, _wgslsmith_mod_u32(0u, 44348u >> (0u % 32u))) >> (firstTrailingBit(~vec4<u32>(1u, 4294967295u, 0u, 1u)) % vec4<u32>(32u)), vec4<u32>(~1u, 4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(1u, 1u)), select(select(vec2<u32>(1u, 20974u), vec2<u32>(29281u, 1u), true), ~vec2<u32>(4294967295u, 4294967295u), func_3(-806f, false, 761f, vec4<u32>(1u, 30264u, 4294967295u, 23015u)))), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(107418u, 0u)) | abs(_wgslsmith_clamp_u32(1u, 7632u, 1u))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global1.x)))), vec4<f32>(global1.x, arg_1.x, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(round(arg_1.x))))));
    var var_3 = ~max(abs(~var_1), vec4<u32>(var_1.x, max(_wgslsmith_add_u32(var_1.x, 4294967295u), abs(var_1.x)), countOneBits(~var_1.x), _wgslsmith_sub_u32(var_1.x, var_1.x)));
    var var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(-_wgslsmith_div_i32(arg_0, select(var_0.x, 0i, false)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b.x, u_input.a, arg_0)), u_input.b.wzw) & max(_wgslsmith_clamp_i32(0i, -26327i, arg_0), 1i), var_0.x, reverseBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.b.zyw, u_input.b.zzx), arg_0))), vec4<i32>(-2147483647i, var_0.x, u_input.a, var_0.x >> (~(~var_3.x) % 32u)));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(767f, arg_0.b);
    global1 = arg_0.b.yz;
    let var_1 = Struct_1(arg_2.x, func_2(7324i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x + global1.x), _wgslsmith_f_op_f32(777f + var_0.b.x)) + vec2<f32>(_wgslsmith_f_op_f32(max(-651f, global1.x)), -1000f))).b);
    let var_2 = arg_1;
    global0 = array<f32, 14>();
    return func_2(~2147483647i, _wgslsmith_f_op_vec2_f32(select(arg_2, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), -139f), vec2<bool>(true, !all(vec4<bool>(false, false, true, false))))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(max(1090f, global0[_wgslsmith_index_u32(~1u, 14u)])), vec4<f32>(global0[_wgslsmith_index_u32(57933u, 14u)], _wgslsmith_f_op_f32(-global1.x), 1292f, 853f)), func_2(-2147483647i, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(global1.x - 369f), global0[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1358f, -243f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-245f, -913f)))))), vec2<f32>(-1187f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-235f - _wgslsmith_div_f32(275f, global0[_wgslsmith_index_u32(4294967295u, 14u)])), global0[_wgslsmith_index_u32(4294967295u, 14u)])));
    global0 = array<f32, 14>();
    var var_1 = Struct_1(global1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(var_0.b)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) + _wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(229f, var_0.a, global1.x, global1.x)))))));
    var_1 = func_2(abs(_wgslsmith_sub_i32(select(23021i, 0i, arg_0.x), ~(-1i)) & 1i), vec2<f32>(_wgslsmith_f_op_f32(min(965f, 1080f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, 2174f)) + _wgslsmith_f_op_f32(trunc(-465f)))));
    let var_2 = _wgslsmith_mod_i32(-30723i, _wgslsmith_sub_i32(0i, u_input.b.x));
    return Struct_1(global1.x, _wgslsmith_f_op_vec4_f32(-var_1.b));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    global0 = array<f32, 14>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-602f + -1343f), _wgslsmith_f_op_f32(sign(635f)), false)) * global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~49783u, 1u), 14u)]) - arg_1.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1408f) * _wgslsmith_div_f32(global1.x, -1080f)) - _wgslsmith_f_op_f32(select(1374f, arg_1.x, any(vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(arg_0.a + -583f))), -652f, global1.x));
    var var_1 = ~u_input.b.x ^ 0i;
    let var_2 = var_0;
    var var_3 = arg_0.b.zy;
    return func_1(select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), false), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), all(vec4<bool>(true, select(false, false, true), true, all(vec3<bool>(true, true, false))))));
}

fn func_6(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = arg_0.a;
    let var_1 = any(func_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1309f - var_0), func_4(Struct_1(1496f, arg_0.b), arg_0, arg_0.b.yy).a, all(vec4<bool>(false, true, true, false)))), true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b.x + var_0))), ~vec4<u32>(1u, 1u, 1u, 1u))) && true;
    var var_2 = arg_0.b;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x)))), -797f);
    let var_3 = Struct_1(-1000f, func_4(arg_0, arg_0, arg_0.b.zy).b);
    return StorageBuffer(-reverseBits(min(u_input.a, u_input.a)) ^ ~u_input.b.x, u_input.b.xx, _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(-456f - var_2.x))), _wgslsmith_mod_u32(_wgslsmith_div_u32(select(1u, 24677u, true), 1u), ~_wgslsmith_clamp_u32(1u, 15969u, 106806u)) | firstLeadingBit(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = array<f32, 14>();
    var var_1 = Struct_1(-2105f, vec4<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(~firstTrailingBit(0u), 14u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f))), global0[_wgslsmith_index_u32(4294967295u, 14u)], _wgslsmith_f_op_f32(min(154f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f)))), _wgslsmith_f_op_f32(max(global1.x, 1984f))));
    let var_2 = ~countOneBits(~(~countOneBits(1u)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(540f * var_1.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.b + var_1.b) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_2, 14u)], -483f, 1356f, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1000f, var_1.b.x, 2075f) - var_1.b), all(vec4<bool>(var_0, true, var_0, false)))))));
    var var_3 = u_input.b.x;
    global1 = vec2<f32>(1004f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(abs(var_2), countOneBits(var_2)), ~var_2), 14u)]));
    var var_4 = u_input.b.x;
    let x = u_input.a;
    s_output = func_6(func_5(func_1(vec4<bool>(all(vec4<bool>(true, true, var_0, false)), var_0, !var_0, any(vec3<bool>(false, false, var_0)))), vec3<f32>(548f, -955f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -328f))), _wgslsmith_add_i32(0i, 2147483647i)));
}

