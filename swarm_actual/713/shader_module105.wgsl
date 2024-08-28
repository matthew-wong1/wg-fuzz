struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<f32, 16> = array<f32, 16>(-571f, 1121f, -167f, 2296f, 554f, 955f, -1424f, -108f, 474f, -1118f, 1745f, 1100f, 677f, -1178f, 233f, 798f);

var<private> global2: array<f32, 20> = array<f32, 20>(-288f, -380f, -812f, 139f, -537f, 864f, 1000f, -2344f, 1010f, -1749f, 443f, 864f, -1891f, 845f, -623f, 318f, 698f, -1000f, -928f, 1270f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = 0i;
    let var_1 = (~101429u <= global0.x) && (!all(select(vec3<bool>(false, arg_0.d.x, arg_0.c), arg_0.d, vec3<bool>(false, arg_1.d.x, arg_1.d.x))) && any(vec2<bool>(select(arg_1.c, arg_1.d.x, false), arg_1.d.x)));
    return false;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: f32, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(firstTrailingBit(1i), vec2<f32>(1613f, -1667f), arg_0, select(select(vec3<bool>(all(vec4<bool>(true, true, false, arg_0)), func_3(Struct_1(2147483647i, vec2<f32>(arg_1.x, arg_2), arg_0, vec3<bool>(arg_0, arg_0, true)), Struct_1(-2147483647i, vec2<f32>(-865f, global2[_wgslsmith_index_u32(global0.x, 20u)]), false, vec3<bool>(false, true, true))), !arg_0), vec3<bool>(arg_0, true, true), func_3(Struct_1(42763i, vec2<f32>(-1000f, -1975f), arg_0, vec3<bool>(true, arg_0, arg_0)), Struct_1(22075i, arg_1, arg_0, vec3<bool>(arg_0, false, arg_0)))), !vec3<bool>(arg_0, arg_0, !arg_0), (25688u & _wgslsmith_add_u32(global0.x, 15770u)) < ~_wgslsmith_mult_u32(u_input.a.x, 18186u)));
    let var_1 = Struct_1(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(-244f - arg_3)) >= -929f, var_0.d);
    let var_2 = vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(var_1.a, -1i, var_0.a, 1i)), -reverseBits(vec4<i32>(-2147483647i, 0i, var_1.a, var_0.a)))), _wgslsmith_clamp_i32(~16166i, -2147483647i, min(-(var_0.a & var_0.a), var_1.a)), var_0.a);
    var var_3 = var_1;
    global0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(~u_input.b.x, 1u) << ((_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(9565u, u_input.a.x)) & vec2<u32>(83717u, u_input.b.x)) % vec2<u32>(32u)), u_input.a);
    return Struct_1(firstLeadingBit(0i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-501f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2211f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(509f)) * 1f))), false, vec3<bool>(arg_0, all(!select(vec4<bool>(false, false, var_3.c, var_1.c), vec4<bool>(true, var_1.d.x, true, true), true)), !(_wgslsmith_f_op_f32(arg_1.x + 689f) >= var_3.b.x)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> i32 {
    return -_wgslsmith_dot_vec4_i32(reverseBits(~(-vec4<i32>(0i, arg_3.a, arg_0.a, arg_3.a))), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-1i, -44818i, 6608i, -2147483647i) ^ vec4<i32>(2147483647i, 28720i, 9928i, arg_0.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(24513i, -2147483647i, arg_0.a, arg_2), vec4<i32>(-1i, arg_2, 2147483647i, arg_2)) >> (u_input.b % vec4<u32>(32u))));
}

fn func_1() -> f32 {
    global2 = array<f32, 20>();
    global1 = array<f32, 16>();
    var var_0 = Struct_1(_wgslsmith_add_i32(select(2147483647i, _wgslsmith_add_i32(-2147483647i, 72540i << (global0.x % 32u)), global0.x > _wgslsmith_clamp_u32(global0.x, u_input.b.x, 23838u)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(~17897i, firstTrailingBit(2147483647i)), 10590i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 2353f) - vec2<f32>(global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(global0.x, 20u)]))))), min(~2147483647i, 1i) <= func_4(func_2(true, vec2<f32>(global1[_wgslsmith_index_u32(0u, 16u)], -864f), 1000f, 574f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 20u)]))), _wgslsmith_dot_vec2_i32(~vec2<i32>(59998i, -2629i), vec2<i32>(1i, 1i)), Struct_1(-36107i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(2034f, -429f)), true, vec3<bool>(true, true, true))), !(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))));
    let var_1 = Struct_1(var_0.a | (firstLeadingBit(var_0.a) & _wgslsmith_sub_i32(-33236i, var_0.a)), var_0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 16u)], var_0.b.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(65691u, 16u)]))), !select(var_0.d, !var_0.d, func_2(true, _wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(global0.x, 20u)], -550f), vec2<f32>(883f, 847f)), -868f, var_0.b.x).d));
    global0 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(3041u ^ _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(global0.x, 1404u, 26093u, 1u)), 15535u), ~vec2<u32>(countOneBits(u_input.b.x), ~u_input.b.x)), global0.x);
    return _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~4294967295u, max(4294967295u, u_input.b.x)) << (_wgslsmith_mult_u32(~29815u, 0u | _wgslsmith_add_u32(u_input.a.x, global0.x)) % 32u), 20u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(14241u, 16u)], _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -621f), -961f));
    let var_1 = 1i;
    var var_2 = select(vec2<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false)) || (_wgslsmith_f_op_f32(-var_0.x) < _wgslsmith_div_f32(-1483f, global1[_wgslsmith_index_u32(global0.x, 16u)])), false), select(vec2<bool>(false, true), !select(func_2(true, vec2<f32>(global2[_wgslsmith_index_u32(85108u, 20u)], -1000f), var_0.x, global2[_wgslsmith_index_u32(4294967295u, 20u)]).d.yx, vec2<bool>(true, true), false), true), func_3(Struct_1(-52294i, vec2<f32>(_wgslsmith_f_op_f32(677f + global1[_wgslsmith_index_u32(1u, 16u)]), 440f), !all(vec2<bool>(false, false)), vec3<bool>(false, func_3(Struct_1(13520i, var_0.ww, false, vec3<bool>(true, false, false)), Struct_1(var_1, var_0.xy, false, vec3<bool>(true, true, false))), false)), Struct_1(i32(-1i) * -8772i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-199f, -133f) * vec2<f32>(1112f, global1[_wgslsmith_index_u32(0u, 16u)])) * _wgslsmith_f_op_vec2_f32(sign(var_0.wx))), func_2(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 934f) * vec2<f32>(488f, var_0.x)), _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(u_input.b.x, 20u)]))).d.x, vec3<bool>(true, true, true))));
    let var_3 = u_input.a.x;
    var var_4 = func_2(func_3(func_2(any(func_2(false, var_0.zy, global2[_wgslsmith_index_u32(11428u, 20u)], global1[_wgslsmith_index_u32(var_3, 16u)]).d), var_0.yw, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(var_3, 16u)], func_2(true, var_0.zw, 289f, 1679f).b.x)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.b.x, 16u)] + -266f)), Struct_1(var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global1[_wgslsmith_index_u32(u_input.b.x, 16u)])) * _wgslsmith_f_op_vec2_f32(sign(var_0.yy))), func_2(!var_2.x, var_0.wx, _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(47701u, 20u)])), _wgslsmith_f_op_f32(exp2(var_0.x))).d.x, select(select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(var_2.x, var_2.x, var_2.x), true), select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, true, true), var_2.x), var_2.x))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1460f, 320f)), _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1548f + _wgslsmith_f_op_f32(func_1())))), -250f, 119f);
    var var_5 = Struct_1(~var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.wz, _wgslsmith_div_vec2_f32(var_4.b, var_4.b)))), var_4.c, !(!var_4.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, 0u, 0u), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(max(637f, var_4.b.x)), var_4.b.x), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(0u, var_3) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, u_input.b.x), u_input.b.xw) % vec2<u32>(32u))), u_input.b.ww >> (min(_wgslsmith_add_vec2_u32(u_input.b.wy, u_input.a), vec2<u32>(u_input.a.x, 39850u)) % vec2<u32>(32u))), _wgslsmith_dot_vec3_u32(u_input.b.zxx, u_input.b.wxw), select(abs(vec2<u32>(0u, 1u)), _wgslsmith_clamp_vec2_u32(~u_input.b.xw, vec2<u32>(30010u, 4294967295u), ~u_input.b.yx), true) | ~_wgslsmith_add_vec2_u32(~vec2<u32>(54780u, global0.x), u_input.b.yw));
}

