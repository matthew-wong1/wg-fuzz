struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<u32, 1> = array<u32, 1>(1u);

var<private> global2: i32 = 6696i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x);
    return var_0;
}

fn func_2(arg_0: i32, arg_1: bool) -> vec4<f32> {
    let var_0 = abs(countOneBits(vec3<u32>(select(45572u, 1u, arg_1), min(4294967295u, global1[_wgslsmith_index_u32(42866u, 1u)]), 10104u)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(~0u, global1[_wgslsmith_index_u32(0u, 1u)] ^ 9210u, min(50335u, global1[_wgslsmith_index_u32(1u, 1u)])), vec3<u32>(~4294967295u, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 22417u, 1u), 37758u)) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(599f, -262f, -1104f, 403f) - vec4<f32>(-1306f, -987f, 116f, 963f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 184f, 188f, 118f)) + vec4<f32>(-595f, -1000f, 1561f, 1805f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<f32>(-434f, -2091f, 1637f, 1283f), arg_0, -19968i, vec2<i32>(arg_0, global0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1084f * 674f), _wgslsmith_div_f32(530f, 1103f)) * vec4<f32>(_wgslsmith_f_op_f32(1846f * 391f), -2524f, _wgslsmith_f_op_f32(-461f + -745f), _wgslsmith_f_op_f32(-1541f + -1264f)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-514f)) + _wgslsmith_f_op_f32(ceil(-1000f))) + -681f), -1447f, _wgslsmith_div_f32(690f, -169f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1441f - _wgslsmith_f_op_f32(f32(-1f) * -1322f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-196f)) * _wgslsmith_f_op_f32(min(-1295f, 1000f))))));
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(0i, true))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-593f, arg_0, -1284f, -2456f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, arg_0, 189f))))), _wgslsmith_mod_i32(~(-_wgslsmith_clamp_i32(global0.x, 20945i, 39278i)), global0.x), 0i, vec2<i32>(-30350i, global0.x));
    let var_1 = _wgslsmith_div_i32(countOneBits(38056i) ^ global0.x, -25289i);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f)), 162f, arg_0))));
    var var_3 = select(select(!vec3<bool>(all(vec2<bool>(false, false)), true, true), select(vec3<bool>(any(vec4<bool>(false, false, false, false)), true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, all(vec2<bool>(false, false)))), !vec3<bool>(any(vec2<bool>(true, false)), true, any(vec3<bool>(true, false, false)))), vec3<bool>(true, select(any(vec2<bool>(false, false)), var_1 > global0.x, all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)))), all(vec3<bool>(true, false, true)) && true), true);
    global0 = var_0.d;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(_wgslsmith_add_vec2_i32(max(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, -37511i), vec2<i32>(1i, -47746i)), vec2<i32>(global0.x, -4784i)), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global0.x), ~vec2<i32>(global0.x, global0.x))), vec2<i32>(~2147483647i, -global0.x), true) << (vec2<u32>(u_input.b.x, 35147u) % vec2<u32>(32u));
    let var_0 = Struct_3(~(-abs(-47132i) & _wgslsmith_add_i32(-global0.x, global0.x)));
    let var_1 = 476f;
    var var_2 = select(~vec4<i32>(-(~(-5625i)), countOneBits(var_0.a >> (global1[_wgslsmith_index_u32(u_input.a, 1u)] % 32u)), global0.x, 14351i ^ -var_0.a), ~vec4<i32>(0i >> ((86268u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 1u)], 1u)] % 32u)) % 32u), global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, global0.x), vec2<i32>(1i, -85078i)) ^ var_0.a, var_0.a), vec4<bool>(any(vec4<bool>(true, true, func_1(var_1), true)), true, true, true));
    var var_3 = Struct_5(var_0, select(~(~(~vec4<u32>(1679u, 1u, global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u))), vec4<u32>(22908u, _wgslsmith_mod_u32(23529u, 62890u), ~u_input.a, ~(u_input.a & u_input.a)), false));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_1, _wgslsmith_div_f32(var_1, var_1))))))));
    let var_5 = Struct_5(var_3.a, ~var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(firstTrailingBit(vec3<i32>(var_0.a, -1i, var_3.a.a)), vec3<i32>(var_0.a, var_5.a.a, _wgslsmith_add_i32(global0.x, global0.x)), true)), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(1u, ~var_3.b.x), ~countOneBits(u_input.b.x) | global1[_wgslsmith_index_u32(~min(55848u, var_5.b.x), 1u)], abs(~global1[_wgslsmith_index_u32(min(var_3.b.x, 24472u), 1u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, -1965f, var_1, var_1), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-531f, 2074f, var_1, 1424f), vec4<f32>(1000f, var_1, 329f, var_1))), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)))), vec4<f32>(_wgslsmith_div_f32(var_1, var_1), var_1, 1f, _wgslsmith_f_op_f32(var_1 * 799f)))), vec3<u32>(~(~u_input.b.x << (~4294967295u % 32u)), 1u | min(_wgslsmith_mult_u32(8773u, global1[_wgslsmith_index_u32(u_input.a, 1u)]), 44866u), 1u), global1[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(62831u, 42237u, 30754u, 16357u), vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)], var_5.b.x, 1u)) ^ ~(~200u)), 1u)]);
}

