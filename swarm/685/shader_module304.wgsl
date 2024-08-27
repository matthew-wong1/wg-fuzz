struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23>;

var<private> global1: array<bool, 11>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>) -> f32 {
    let var_0 = u_input.a;
    var var_1 = 4294967295u;
    let var_2 = Struct_2(vec4<bool>(_wgslsmith_f_op_f32(-arg_2.x) <= -2162f, arg_1.a.x, arg_1.a.x & true, any(vec3<bool>(true || global1[_wgslsmith_index_u32(u_input.b.x, 11u)], arg_1.a.x | false, all(vec4<bool>(arg_1.a.x, true, arg_1.b.b, false))))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-566f, _wgslsmith_f_op_f32(step(arg_1.c, arg_2.x)))), _wgslsmith_f_op_f32(floor(-1071f)))), any(vec3<bool>(!arg_1.b.b, 1i >= var_0, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-260f, arg_2.x, arg_1.b.b))) + _wgslsmith_f_op_f32(exp2(arg_2.x))));
    global0 = array<vec4<bool>, 23>();
    var var_3 = var_2.b;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, arg_1.b.a)), 1011f)), arg_1.b.a)));
}

fn func_2() -> Struct_2 {
    var var_0 = -1158f;
    var var_1 = vec3<u32>(~(~(~firstLeadingBit(1u))), countOneBits(u_input.b.x), ~(~0u));
    var_1 = u_input.b;
    let var_2 = var_1.x;
    let var_3 = vec3<u32>(58059u, u_input.b.x, ~(~var_1.x));
    return Struct_2(select(!(!global0[_wgslsmith_index_u32(~1u, 23u)]), select(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global1[_wgslsmith_index_u32(var_3.x, 11u)]), vec4<bool>(true, !global1[_wgslsmith_index_u32(var_3.x, 11u)], select(false, global1[_wgslsmith_index_u32(1u, 11u)], false), any(vec3<bool>(true, false, global1[_wgslsmith_index_u32(var_3.x, 11u)]))), global1[_wgslsmith_index_u32(var_1.x, 11u)] || !global1[_wgslsmith_index_u32(1u, 11u)]), true), Struct_1(-218f, -2155f == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2066f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(0u, Struct_2(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 11u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 11u)]), Struct_1(348f, global1[_wgslsmith_index_u32(var_1.x, 11u)]), 1226f), vec2<f32>(309f, 1773f))) - -194f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f + 153f))) * _wgslsmith_f_op_f32(-1f)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_2.b.a) != arg_2.b.a;
    var var_1 = _wgslsmith_sub_i32(u_input.a, _wgslsmith_add_i32(0i, max(1i, u_input.a >> (~u_input.b.x % 32u))));
    var_0 = any(vec3<bool>(!(-962f >= _wgslsmith_f_op_f32(-1584f + arg_2.b.a)), (true == !arg_2.a.x) & arg_0.a.x, func_2().a.x));
    var var_2 = Struct_2(func_2().a, Struct_1(_wgslsmith_f_op_f32(sign(arg_2.b.a)), any(arg_0.a.xw)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c * -1871f) * -147f) * 915f));
    let var_3 = Struct_2(vec4<bool>(true, all(!select(var_2.a, vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], false, false), arg_2.b.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1348f) * -846f) <= _wgslsmith_f_op_f32(-var_2.b.a), !(false | select(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], arg_2.b.b, true))), arg_0.b, func_2().c);
    return _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, ~countOneBits(u_input.b.x | 20857u)), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.b.x, 1u), 1u), firstTrailingBit(4294967295u), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(27251u, u_input.b.x), vec2<u32>(u_input.b.x, 4294967295u)) | countOneBits(u_input.b.x)), ~(~u_input.b.x)));
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: i32, arg_3: f32) -> vec3<u32> {
    global1 = array<bool, 11>();
    var var_0 = max(u_input.b.x, firstTrailingBit(~(~arg_0.x)));
    var_0 = arg_0.x;
    var var_1 = ~u_input.b;
    var var_2 = Struct_1(arg_3, select(arg_1 || arg_1, all(func_2().a.xxy), arg_1) || global1[_wgslsmith_index_u32(var_1.x, 11u)]);
    return ~vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(10862u, var_1.x, abs(0u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 12066u), vec2<u32>(0u, var_1.x))), 49405u);
}

fn func_1() -> f32 {
    global1 = array<bool, 11>();
    var var_0 = u_input.b;
    var_0 = func_5(vec4<u32>(~(~558u), ~(~1302u), 1u, ~u_input.b.x) & select(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(26619u, u_input.b.x, 4294967295u, var_0.x)), abs(vec4<u32>(u_input.b.x, u_input.b.x, var_0.x, u_input.b.x))), func_4(func_2(), vec2<i32>(u_input.a, u_input.a), Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(24024u, 11u)], global1[_wgslsmith_index_u32(u_input.b.x, 11u)], true, global1[_wgslsmith_index_u32(40608u, 11u)]), Struct_1(1403f, true), -130f)), global0[_wgslsmith_index_u32(~(4294967295u | var_0.x), 23u)]), (global1[_wgslsmith_index_u32(abs(firstLeadingBit(var_0.x)), 11u)] || true) & any(vec4<bool>(true, all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(41784u, 11u)])), any(global0[_wgslsmith_index_u32(var_0.x, 23u)]), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.b.x), 11u)])), u_input.a, -262f);
    var_0 = firstTrailingBit(select(u_input.b, select(u_input.b, vec3<u32>(u_input.b.x, var_0.x, var_0.x), global1[_wgslsmith_index_u32(u_input.b.x, 11u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(21743u, 11u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 11u)]), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 11u)], global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global1[_wgslsmith_index_u32(u_input.b.x, 11u)]), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 11u)], global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global1[_wgslsmith_index_u32(0u, 11u)]))) << (vec3<u32>(~53157u, _wgslsmith_dot_vec4_u32(vec4<u32>(45809u, 65307u, 0u, var_0.x), vec4<u32>(34487u, u_input.b.x, u_input.b.x, var_0.x)), u_input.b.x) % vec3<u32>(32u))) | abs(vec3<u32>(60090u, 0u, 53923u));
    var var_1 = func_2();
    return -1428f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))) - _wgslsmith_f_op_f32(f32(-1f) * -178f)), -716f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -220f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -428f)))))));
    let var_1 = countOneBits(firstTrailingBit(1789i));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.wwx)));
    let var_3 = ~u_input.b.x;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1464f * var_0.x)) + 1191f));
    var var_5 = func_2();
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_u32(var_3, var_3), func_2(), _wgslsmith_f_op_vec2_f32(step(var_4, vec2<f32>(-930f, 686f))))))))));
    let var_7 = ~_wgslsmith_dot_vec3_i32(-(~select(vec3<i32>(67187i, -1i, 1i), vec3<i32>(var_1, -1i, u_input.a), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global1[_wgslsmith_index_u32(var_3, 11u)]))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(var_1, u_input.a), _wgslsmith_div_i32(-17834i, var_1), 1i), vec3<i32>(u_input.a & 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-11452i, 13429i), vec2<i32>(var_1, u_input.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -59951i), vec3<i32>(40080i, -18598i, 13289i))), select(vec3<i32>(u_input.a, var_1, -2147483647i), vec3<i32>(u_input.a, var_1, 0i), var_5.a.zxz) | vec3<i32>(var_1, var_1, 2147483647i)));
    var var_8 = _wgslsmith_add_vec4_u32(vec4<u32>(~(~u_input.b.x), _wgslsmith_add_u32(~u_input.b.x, ~u_input.b.x), var_3, ~0u) | max(vec4<u32>(4294967295u, u_input.b.x, var_3, u_input.b.x) >> (vec4<u32>(var_3, 53353u, 14547u, 1u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(var_3, 32663u), func_5(vec4<u32>(1u, 1u, 0u, 0u), global1[_wgslsmith_index_u32(var_3, 11u)], 0i, 346f).x, ~24247u, 21731u)), ~vec4<u32>(_wgslsmith_add_u32(u_input.b.x, var_3) ^ ~var_3, 72537u, abs(_wgslsmith_add_u32(var_3, 65319u)), _wgslsmith_mod_u32(abs(var_3), 4294967295u >> (u_input.b.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), var_4.x);
}

