struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, Struct_1(85612u, vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), true), true);

var<private> global1: Struct_3 = Struct_3(true, Struct_1(4294967295u, vec3<i32>(-14969i, -1i, -21423i), false), false);

var<private> global2: array<f32, 18> = array<f32, 18>(-501f, 1351f, -173f, -348f, -1000f, -824f, 1000f, -1004f, -1285f, 1000f, -1000f, -1700f, -681f, -915f, -982f, -1026f, 289f, -1062f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> i32 {
    var var_0 = firstTrailingBit(vec2<u32>(~(~global0.b.a), ~max(4294967295u, global1.b.a)) << (vec2<u32>(9174u, max(arg_0.a, _wgslsmith_sub_u32(arg_0.a, 17820u))) % vec2<u32>(32u)));
    let var_1 = global1.b;
    global2 = array<f32, 18>();
    global2 = array<f32, 18>();
    let var_2 = -7129i;
    return 0i;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> Struct_3 {
    var var_0 = Struct_3(all(vec2<bool>(global0.a, !(global2[_wgslsmith_index_u32(global0.b.a, 18u)] < global2[_wgslsmith_index_u32(global1.b.a, 18u)]))), arg_2.a, all(vec2<bool>(arg_2.a.c, global0.b.c)));
    global0 = Struct_3(global1.c, global0.b, !global1.b.c | !(!(var_0.a & true)));
    var var_1 = global1.b;
    var var_2 = Struct_5(vec2<i32>(u_input.a, func_3(global1.b, vec3<f32>(-1000f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(26397u, 18u)]), global2[_wgslsmith_index_u32(~4294967295u, 18u)]))));
    var var_3 = max(~vec4<u32>(global1.b.a, 1u, 1u, 473u) & countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b.a, 53147u, global1.b.a, arg_2.a.a), vec4<u32>(global1.b.a, global1.b.a, 1u, var_1.a), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 21428u, global0.b.a), vec4<u32>(global0.b.a, 4294967295u, global1.b.a, 9170u)))), vec4<u32>(~(~(~42882u)), _wgslsmith_mult_u32(~firstTrailingBit(1u), 4294967295u), 102712u, max(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global1.b.a, 4294967295u, 56759u), vec4<u32>(29554u, var_1.a, 20277u, 26653u), vec4<u32>(1u, var_0.b.a, 15236u, global0.b.a)), ~vec4<u32>(var_0.b.a, global1.b.a, var_0.b.a, 0u)), global1.b.a)));
    return Struct_3(global0.c, global1.b, !(!arg_2.a.c));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-761f, _wgslsmith_f_op_f32(max(-696f, -796f))));
    global2 = array<f32, 18>();
    global1 = Struct_3(global0.c, arg_1.a, false);
    global0 = Struct_3(false, func_2(-3812i, -16538i, arg_1).b, global0.c);
    let var_1 = ~(-global1.b.b.xz << (min(~vec2<u32>(global1.b.a, 10931u), ~vec2<u32>(49201u, arg_3.b.a)) % vec2<u32>(32u))) | firstLeadingBit(-(~vec2<i32>(0i, global0.b.b.x)));
    return Struct_4(var_0.x);
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~71919u, countOneBits(2977u), 21587u << (global1.b.a % 32u), _wgslsmith_add_u32(66083u, 0u)), ~vec4<u32>(78343u, 19898u, arg_0.a.a, global1.b.a) ^ vec4<u32>(0u, 4294967295u, 43026u, global0.b.a)), vec4<u32>(global0.b.a, global1.b.a, 0u, 1u)), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(reverseBits(global0.b.a), global1.b.a, ~global0.b.a, 4294967295u)), vec4<u32>(_wgslsmith_add_u32(~global1.b.a, _wgslsmith_add_u32(117761u, 70469u)), ~(~global1.b.a), ~global0.b.a, 0u), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, arg_0.a.a, global1.b.a), vec4<u32>(19091u, 0u, 121294u, global1.b.a)))));
    var var_1 = i32(-1i) * -2147483647i;
    let var_2 = func_4(vec4<f32>(global2[_wgslsmith_index_u32(~(~1u), 18u)], _wgslsmith_f_op_f32(f32(-1f) * -185f), 161f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(var_0.x ^ global1.b.a, 18u)], -410f)))), Struct_2(global1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 18u)] - -1635f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(29307u, 18u)] + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.x, 18u)] * global2[_wgslsmith_index_u32(global1.b.a, 18u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(3655u, 18u)] * global2[_wgslsmith_index_u32(24188u, 18u)]) - _wgslsmith_f_op_f32(f32(-1f) * -247f)))), func_2(42474i, _wgslsmith_sub_i32(-23176i, _wgslsmith_sub_i32(0i, abs(u_input.b.x))), arg_0));
    var var_3 = Struct_2(func_2(19162i, min(_wgslsmith_mod_i32(arg_0.a.b.x << (global1.b.a % 32u), -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0.a.b.x, 0i, arg_0.a.b.x), vec4<i32>(global1.b.b.x, u_input.d, 1i, -2147483647i)) | -26150i), Struct_2(global0.b)).b);
    let var_4 = ~firstLeadingBit(_wgslsmith_dot_vec2_i32(~u_input.b, abs(-global0.b.b.yz)));
    return reverseBits(_wgslsmith_mod_u32(var_0.x, global1.b.a));
}

fn func_5(arg_0: u32) -> Struct_4 {
    var var_0 = abs(_wgslsmith_add_vec2_i32(select(~u_input.b, ~global0.b.b.zx, true), abs(global0.b.b.xx))) ^ (~vec2<i32>(25245i, global1.b.b.x) << (countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, arg_0), ~vec2<u32>(37576u, arg_0), ~vec2<u32>(arg_0, 1u))) % vec2<u32>(32u)));
    var var_1 = global0.b.b.x;
    var var_2 = Struct_2(global1.b);
    var var_3 = vec2<u32>(_wgslsmith_add_u32(~1u, min(arg_0, global0.b.a) | (~global0.b.a & global1.b.a)), ~(~reverseBits(1u)));
    var var_4 = Struct_3(var_2.a.c, Struct_1(38943u, global0.b.b, all(select(vec2<bool>(true, true), select(vec2<bool>(false, global0.a), vec2<bool>(false, global0.c), vec2<bool>(global0.a, global1.c)), vec2<bool>(false, var_2.a.c)))), 0u < _wgslsmith_div_u32(_wgslsmith_div_u32(var_3.x, ~arg_0), func_2(~(-78297i), -54434i, Struct_2(global1.b)).b.a));
    return Struct_4(global2[_wgslsmith_index_u32(abs(func_1(Struct_2(func_2(3139i, 37133i, Struct_2(global0.b)).b), true)), 18u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_mod_u32(_wgslsmith_div_u32(func_1(Struct_2(global0.b), true), _wgslsmith_add_u32(global0.b.a, global1.b.a)), 0u) << (~global0.b.a % 32u));
    var var_1 = vec3<f32>(global2[_wgslsmith_index_u32(global0.b.a, 18u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 18u)] - -1161f), _wgslsmith_f_op_f32(func_4(vec4<f32>(_wgslsmith_f_op_f32(-153f - -946f), global2[_wgslsmith_index_u32(23758u, 18u)], _wgslsmith_f_op_f32(max(1608f, global2[_wgslsmith_index_u32(1u, 18u)])), -603f), Struct_2(func_2(-16946i, global1.b.b.x, Struct_2(global1.b)).b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1216f, -845f, global2[_wgslsmith_index_u32(3928u, 18u)], -1113f) * vec4<f32>(var_0.a, var_0.a, var_0.a, 1175f))), Struct_3(all(vec4<bool>(false, false, global1.c, true)), Struct_1(global0.b.a, global1.b.b, true), false)).a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(global0.b.a).a) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(118564u, 18u)])), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(global0.b.a, 18u)]))))));
    global2 = array<f32, 18>();
    let var_2 = select(vec2<bool>(any(select(select(vec4<bool>(global1.c, true, global0.b.c, false), vec4<bool>(true, global0.a, global0.c, true), global1.a), select(vec4<bool>(false, true, global0.b.c, true), vec4<bool>(global1.b.c, global0.a, false, true), global0.a), !vec4<bool>(true, global0.a, global1.a, global1.a))), true), select(!(!vec2<bool>(global1.a, global1.a)), vec2<bool>(!select(global0.a, global0.b.c, global1.b.c), any(vec4<bool>(false, global0.c, global0.c, false))), select(select(!vec2<bool>(global1.c, false), vec2<bool>(global1.a, global0.b.c), global1.a), !vec2<bool>(false, global1.a), vec2<bool>(true, true))), !global1.a);
    var var_3 = 5792i;
    var_3 = 808i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(60293u, _wgslsmith_div_u32(global1.b.a, _wgslsmith_dot_vec2_u32(vec2<u32>(108280u, global0.b.a), vec2<u32>(global1.b.a, global1.b.a)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.a, global0.b.a, global1.b.a), vec3<u32>(global1.b.a, global0.b.a, 34674u)) % 32u)), ~global1.b.a << (~1u % 32u)));
}

