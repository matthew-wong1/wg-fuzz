struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(350f, 1049f, 667f, -396f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = Struct_3(vec3<u32>((~u_input.c & ~u_input.b) >> (u_input.a.x % 32u), u_input.a.x, ~u_input.c), _wgslsmith_mod_i32(abs(u_input.d.x), _wgslsmith_mod_i32(-arg_2.x, ~12027i)), u_input.d);
    return ~u_input.d;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec4<f32>) -> f32 {
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1140f * global0.x) + arg_3.x), arg_3.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(select(global0.x, arg_3.x, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-712f - arg_3.x) - _wgslsmith_f_op_f32(-global0.x)))), 1576f, -726f);
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.x - global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + 1409f)) - _wgslsmith_f_op_f32(floor(arg_3.x))), 11789u >= ~_wgslsmith_clamp_u32(arg_0.x, 27063u, u_input.a.x)), _wgslsmith_dot_vec3_i32(abs(~arg_2.c), _wgslsmith_mod_vec3_i32(arg_2.c, u_input.d)));
    var var_1 = -(~u_input.d);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -208f))), _wgslsmith_f_op_f32(exp2(arg_3.x)), arg_3.x, arg_3.x);
    let var_2 = vec2<bool>(all(!vec4<bool>(!var_0.a.c, any(vec2<bool>(var_0.a.c, var_0.a.c)), !var_0.a.c, true)), all(!vec4<bool>(true, var_0.a.c, !var_0.a.c, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(534f)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<f32>) -> Struct_3 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) * global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -238f, -706f);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0.x)))), arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~select(vec4<u32>(u_input.a.x, u_input.b, u_input.b, u_input.c), vec4<u32>(1u, u_input.a.x, 1u, u_input.b), vec4<bool>(true, false, false, arg_0.x)), ~(u_input.d.yy >> (u_input.a % vec2<u32>(32u))), Struct_3(min(vec3<u32>(u_input.b, u_input.c, u_input.a.x), vec3<u32>(6705u, u_input.b, u_input.a.x)), ~u_input.d.x, func_2(arg_1, 1848f, vec2<i32>(u_input.e.x, u_input.e.x), Struct_1(arg_3.x, arg_1.a, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-124f, global0.x, 1577f, 249f))))))), _wgslsmith_f_op_f32(-arg_2) >= 1f);
    var var_1 = any(select(vec4<bool>(arg_1.c, all(!arg_0), false, var_0.c), !vec4<bool>(true, !arg_1.c, any(arg_0), true), !select(vec4<bool>(false, true, true, arg_0.x), select(vec4<bool>(true, true, arg_1.c, arg_1.c), vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(var_0.c, arg_0.x, arg_1.c, var_0.c)), var_0.c | true)));
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, _wgslsmith_clamp_u32(u_input.a.x, ~30628u, ~u_input.c) & ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), u_input.a), _wgslsmith_sub_u32(abs(0u), ~u_input.c) ^ 0u), vec3<u32>(abs(~u_input.c) ^ u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(30431u, 28051u, u_input.a.x), u_input.b) | u_input.c, u_input.a.x));
    var var_3 = Struct_3(~(~vec3<u32>(1u, u_input.b, 61884u)), u_input.e.x, countOneBits(firstLeadingBit(u_input.d)));
    return Struct_3(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, ~var_2), _wgslsmith_add_vec3_u32(vec3<u32>(13267u, 0u, var_2), ~vec3<u32>(var_2, 51698u, var_2)), min(vec3<u32>(var_2, 1u, 1u), vec3<u32>(var_2, var_2, 24679u)) << (vec3<u32>(0u, u_input.c, 24369u) % vec3<u32>(32u)))), -reverseBits(i32(-1i) * -26361i), reverseBits(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-24574i, u_input.e.x, u_input.e.x, var_3.b), vec4<i32>(-1i, -1i, var_3.b, u_input.e.x)), u_input.e.x), 1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c.x, u_input.e.x, 0i, -62112i), vec4<i32>(var_3.c.x, u_input.e.x, var_3.b, -2147483647i)))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -803f), _wgslsmith_div_f32(arg_3.a, global0.x))) * 156f));
    var var_1 = !(!(!select(!vec2<bool>(arg_0.a.c, true), vec2<bool>(arg_0.a.c, arg_0.a.c), !vec2<bool>(arg_0.a.c, arg_1))));
    var_0 = -1000f;
    let var_2 = Struct_1(arg_3.b, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.a.a, _wgslsmith_div_f32(-1000f, 204f), true)), _wgslsmith_f_op_f32(1817f + -2201f)))), 0u <= countOneBits(_wgslsmith_mod_u32(arg_2.a.x, arg_2.a.x)));
    let var_3 = arg_0.a;
    return arg_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 610f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global0.x))))), -1278f, global0.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 718f, 925f, global0.x), vec4<f32>(global0.x, 868f, -1089f, -1814f), false)), vec4<f32>(1008f, 1000f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 511f, 143f, -653f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(929f, global0.x, 734f, global0.x) * vec4<f32>(-123f, global0.x, global0.x, -905f))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 479f, global0.x, global0.x))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-285f, -1307f)))) - global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(124f * global0.x))), -607f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(340f)) + _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(step(global0.x, -1392f)))));
    var var_0 = vec4<bool>(((42628u << (_wgslsmith_div_u32(51352u, 56206u) % 32u)) << (u_input.c % 32u)) == _wgslsmith_clamp_u32(firstTrailingBit(u_input.c), _wgslsmith_sub_u32(~u_input.c, u_input.b), ~u_input.a.x << ((u_input.c >> (u_input.b % 32u)) % 32u)), ~_wgslsmith_mult_u32(countOneBits(4294967295u), u_input.b) >= _wgslsmith_dot_vec2_u32(~(vec2<u32>(0u, u_input.a.x) ^ vec2<u32>(u_input.b, 0u)), vec2<u32>(firstLeadingBit(u_input.a.x), ~u_input.a.x)), true, any(vec2<bool>(u_input.d.x != u_input.e.x, u_input.a.x == _wgslsmith_sub_u32(u_input.c, 18983u))));
    var_0 = !select(!(!(!vec4<bool>(false, var_0.x, true, true))), vec4<bool>(!all(vec4<bool>(true, true, var_0.x, var_0.x)), all(var_0.wx), func_4(Struct_2(Struct_1(763f, global0.x, var_0.x), u_input.d.x), true, func_1(vec2<bool>(true, true), Struct_1(-846f, -1341f, var_0.x), -151f, global0.zz), Struct_1(global0.x, global0.x, var_0.x)), var_0.x), !(!select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(false, true, false, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x))));
    let var_1 = Struct_2(Struct_1(-127f, 567f, all(var_0.wz)), -(i32(-1i) * -16247i) | abs(~(~u_input.d.x)));
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1780f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(167f, -483f), var_1.a.a)), global0.x, -1009f) * vec4<f32>(global0.x, 588f, global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(434f - 1659f), 178f)))));
    var var_2 = !select(select(vec4<bool>(false, 14761u != u_input.b, true, func_4(Struct_2(Struct_1(var_1.a.a, var_1.a.b, true), 0i), var_0.x, Struct_3(vec3<u32>(u_input.c, u_input.b, u_input.b), 0i, u_input.d), var_1.a)), vec4<bool>(true, 71481u > u_input.c, !var_1.a.c, false), select(vec4<bool>(var_0.x, true, true, false), !vec4<bool>(false, var_0.x, false, var_0.x), select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(true, var_0.x, true, var_0.x), false))), !select(vec4<bool>(false, false, var_0.x, var_1.a.c), !vec4<bool>(true, var_1.a.c, var_1.a.c, true), true), vec4<bool>(true, true, true, any(select(var_0.wwy, var_0.xxx, var_0.wwy))));
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(-var_1.a.b) <= _wgslsmith_f_op_f32(select(-1204f, _wgslsmith_f_op_f32(-var_1.a.a), any(vec4<bool>(false, false, var_0.x, var_1.a.c)))), func_4(var_1, any(vec4<bool>(var_1.a.c, var_1.a.c, true, var_0.x)), func_1(var_2.yz, var_1.a, _wgslsmith_f_op_f32(global0.x + global0.x), global0.zy), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -328f), global0.x, !var_0.x)) || var_1.a.c, var_1.a.c, true);
    let var_4 = -1564f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, u_input.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, -673f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b + 629f)))), func_1(select(vec2<bool>(any(var_0.wwz), true), var_2.xx, !vec2<bool>(true, var_3.x)), var_1.a, var_4, global0.xw).a);
}

