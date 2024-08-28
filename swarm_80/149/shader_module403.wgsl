struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_4,
    c: vec2<f32>,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: array<u32, 15> = array<u32, 15>(18219u, 4294967295u, 64906u, 1u, 1u, 42336u, 1761u, 4294967295u, 4294967295u, 34048u, 938u, 4294967295u, 4294967295u, 0u, 1u);

var<private> global2: array<bool, 8> = array<bool, 8>(true, true, false, false, false, true, true, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_4(Struct_3(_wgslsmith_mult_vec2_i32(countOneBits(u_input.a.wx), vec2<i32>(-2147483647i, -1i)) & (vec2<i32>(u_input.a.x, 2147483647i) << (~vec2<u32>(global1[_wgslsmith_index_u32(71005u, 15u)], 65427u) % vec2<u32>(32u))), reverseBits(4294967295u)));
    let var_1 = _wgslsmith_dot_vec4_i32(u_input.a, u_input.a);
    let var_2 = Struct_5(!select(select(vec2<bool>(false, false), !vec2<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)], 28u)]), select(vec2<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15287u, 15u)], 15u)], 15u)], 8u)]), vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(74125u, 28u)], false))), !(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 8u)], true)), any(!vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(79129u, 15u)], 28u)], true, true, global0[_wgslsmith_index_u32(var_0.a.b, 28u)]))), var_0, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1776f, 305f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1312f, 2132f)))))))), 8459i | var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-2398f * -1206f), _wgslsmith_f_op_f32(946f * -865f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(484f, 952f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1262f, 1287f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(610f, 247f)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(var_2.e.x, _wgslsmith_div_f32(2430f, _wgslsmith_f_op_f32(max(1579f, var_2.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.c.x - 157f), 510f)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(649f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2087f - var_2.e.x))), vec2<f32>(_wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(-var_2.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -167f))), !(!global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(var_0.a.b, 15u)], 15u)], 28u)]))));
    global1 = array<u32, 15>();
    return vec2<u32>((72036u | (global1[_wgslsmith_index_u32(var_0.a.b, 15u)] ^ var_2.b.a.b)) | select(~var_0.a.b, 4294967295u, true), ~(var_2.b.a.b >> (4294967295u % 32u))) ^ vec2<u32>(21984u, 1u | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstTrailingBit(~var_0.a.b), 15u)], 15u)]);
}

fn func_2(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: i32) -> f32 {
    let var_0 = -210f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * -472f)) + arg_2.x);
    global2 = array<bool, 8>();
    let var_1 = abs(func_3());
    global2 = array<bool, 8>();
    let var_2 = !(!select(vec2<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 28u)], global0[_wgslsmith_index_u32(var_1.x, 28u)], true, global0[_wgslsmith_index_u32(147604u, 28u)])), false), select(!vec2<bool>(false, var_0), vec2<bool>(true, false), global0[_wgslsmith_index_u32(~65712u, 28u)]), any(select(vec4<bool>(true, true, false, true), vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 28u)], var_0, global0[_wgslsmith_index_u32(arg_0.a.b, 28u)], false), true))));
    return _wgslsmith_f_op_f32(-1673f + _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))) * 743f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_2 {
    global2 = array<bool, 8>();
    global1 = array<u32, 15>();
    return Struct_2(arg_1.b, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -737f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)), arg_1.c)), vec3<i32>(_wgslsmith_add_i32(1i, _wgslsmith_sub_i32(-2147483647i, u_input.a.x)), firstLeadingBit(i32(-1i) * -2147483647i), ~(~u_input.a.x))), -1000f);
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = u_input.a.x;
    var var_1 = vec4<bool>(true, true, arg_0, arg_0);
    var var_2 = func_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1322f, 312f, global0[_wgslsmith_index_u32(4294967295u, 28u)])) - _wgslsmith_f_op_f32(-886f - 490f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1150f)) * _wgslsmith_f_op_f32(func_2(Struct_4(Struct_3(vec2<i32>(10452i, -1i), 0u)), u_input.a.zy, vec2<f32>(-1744f, -145f), u_input.a.x)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(-915f, 271f), _wgslsmith_f_op_f32(sign(-449f))), vec2<f32>(_wgslsmith_f_op_f32(max(259f, 245f)), _wgslsmith_f_op_f32(-110f + -440f)), !any(vec4<bool>(true, false, true, false))))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(796f, -1027f)), ~firstTrailingBit(u_input.a.yxz)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(965f, 2101f), vec2<f32>(-1163f, 1699f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(198f, 402f) + vec2<f32>(1252f, 262f))), -(vec3<i32>(-32565i, 0i, u_input.a.x) | u_input.a.yzw)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -313f)))));
    let var_3 = Struct_4(Struct_3(var_2.a.b.xx, 0u));
    global2 = array<bool, 8>();
    return _wgslsmith_div_f32(var_2.c, 601f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-276f, -1022f)) + _wgslsmith_f_op_f32(sign(1072f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(188f, 219f)))), _wgslsmith_f_op_f32(func_1(!all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -740f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-625f, 1413f, 1510f) + vec3<f32>(347f, 970f, 1651f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1515f, -1480f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-990f, 891f, -785f), vec3<f32>(2330f, 729f, -1163f), vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17972u, 15u)], 8u)], false, global0[_wgslsmith_index_u32(0u, 28u)]))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1710f, 1000f, 575f) * _wgslsmith_div_vec3_f32(vec3<f32>(-342f, -355f, -1261f), vec3<f32>(1247f, -548f, -741f))))), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34703u, 15u)], 15u)], 8u)]));
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-903f, var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(Struct_4(Struct_3(u_input.a.yx, 21505u)), u_input.a.xz, vec2<f32>(var_0.x, var_0.x), u_input.a.x)), _wgslsmith_f_op_f32(-var_0.x))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(158f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-var_0.x)), -1056f)));
    var var_2 = Struct_4(Struct_3(vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, -988i)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-17654i, 2147483647i), abs(1i), min(-26569i, u_input.a.x))), firstTrailingBit(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49332u, 15u)], 15u)], 15u)], 15u)] << (~25959u % 32u))));
    var var_3 = Struct_3(vec2<i32>(reverseBits(u_input.a.x & u_input.a.x), select(~_wgslsmith_div_i32(u_input.a.x, 1i), var_2.a.a.x, any(vec4<bool>(global0[_wgslsmith_index_u32(var_2.a.b, 28u)], global2[_wgslsmith_index_u32(27051u, 8u)], true, global2[_wgslsmith_index_u32(66956u, 8u)])))), func_3().x);
    var var_4 = !select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15976u, 15u)], 28u)], global2[_wgslsmith_index_u32(var_2.a.b, 8u)], true), vec3<bool>(global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(74351u, 8u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(71900u, 15u)], 28u)])), select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(var_3.b, 8u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_2.a.b, 8u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_3.b, 15u)], 8u)], global0[_wgslsmith_index_u32(9853u, 28u)]), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.a.b, 15u)], 28u)]), !vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(0u, 28u)])), select(select(vec3<bool>(global2[_wgslsmith_index_u32(var_3.b, 8u)], true, global2[_wgslsmith_index_u32(var_3.b, 8u)]), vec3<bool>(true, false, false), vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], 28u)], false, true)), !vec3<bool>(global0[_wgslsmith_index_u32(var_2.a.b, 28u)], global2[_wgslsmith_index_u32(var_2.a.b, 8u)], false), vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 28u)], true, global2[_wgslsmith_index_u32(4294967295u, 8u)])), select(select(vec3<bool>(global0[_wgslsmith_index_u32(var_2.a.b, 28u)], global0[_wgslsmith_index_u32(var_3.b, 28u)], global2[_wgslsmith_index_u32(var_3.b, 8u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(var_3.b, 28u)], false), false), vec3<bool>(global2[_wgslsmith_index_u32(var_2.a.b, 8u)], true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, global0[_wgslsmith_index_u32(var_2.a.b, 28u)], global2[_wgslsmith_index_u32(48010u, 8u)]), true))), select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 28u)], true, true), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.a.b, 15u)], 8u)]), true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(var_3.b, 28u)]), all(vec4<bool>(global2[_wgslsmith_index_u32(var_3.b, 8u)], global2[_wgslsmith_index_u32(var_3.b, 8u)], global2[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(var_3.b, 28u)]))), select(select(vec3<bool>(global2[_wgslsmith_index_u32(var_3.b, 8u)], global2[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(26749u, 28u)]), vec3<bool>(true, false, false), false), vec3<bool>(false, global2[_wgslsmith_index_u32(var_2.a.b, 8u)], false), !vec3<bool>(true, global2[_wgslsmith_index_u32(var_2.a.b, 8u)], global2[_wgslsmith_index_u32(var_2.a.b, 8u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(var_3.b, 28u)], true), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 8u)], true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61807u, 15u)], 15u)], 8u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(var_2.a.b, 28u)], false))), vec3<bool>(false, var_1.x < -1000f, (false || global2[_wgslsmith_index_u32(4294967295u, 8u)]) & global0[_wgslsmith_index_u32(~12828u, 28u)]));
    var_3 = Struct_3(select(~(~abs(var_3.a)), -vec2<i32>(_wgslsmith_mult_i32(var_2.a.a.x, u_input.a.x), _wgslsmith_add_i32(2147483647i, u_input.a.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, var_2.a.b, var_3.b, 1u) & vec4<u32>(var_2.a.b, 1u, var_3.b, global1[_wgslsmith_index_u32(1u, 15u)])), ~vec4<u32>(global1[_wgslsmith_index_u32(32902u, 15u)], var_2.a.b, var_2.a.b, 1u)), 8u)]), func_3().x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(0u), var_3.b, ~(~vec3<u32>(51457u, 57095u, global1[_wgslsmith_index_u32(var_3.b, 15u)])), abs(countOneBits(u_input.a)));
}

