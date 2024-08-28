struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<bool, 20>;

var<private> global2: array<vec2<f32>, 13>;

var<private> global3: array<bool, 5>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> u32 {
    return firstLeadingBit(abs(min(arg_0, _wgslsmith_add_u32(select(4294967295u, 0u, true), 4294967295u))));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], Struct_1(select(select(!global1[_wgslsmith_index_u32(u_input.a.x, 20u)], true, true), all(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global3[_wgslsmith_index_u32(39614u, 5u)]), vec2<bool>(global3[_wgslsmith_index_u32(1u, 5u)], false), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 5u)]))), global3[_wgslsmith_index_u32(~firstTrailingBit(11037u), 5u)]), select(reverseBits(u_input.b.x), 4294967295u, global1[_wgslsmith_index_u32(select(firstLeadingBit(u_input.a.x), 240u, global1[_wgslsmith_index_u32(max(u_input.a.x, 1u), 20u)]), 20u)]), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1633f, -483f), _wgslsmith_f_op_f32(max(137f, -1383f)), -518f), vec3<f32>(_wgslsmith_f_op_f32(1884f + -945f), _wgslsmith_f_op_f32(step(512f, 455f)), -318f)), -825f, false), -firstLeadingBit(-(~u_input.c)), global0[_wgslsmith_index_u32(~(~(~4294967295u)), 30u)]);
    global3 = array<bool, 5>();
    let var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a.x << (var_0.b.b % 32u), select(94978u, var_0.b.b, global3[_wgslsmith_index_u32(40060u, 5u)])), ~108321u, 37140u)), 30u)];
    var var_2 = min(~4294967295u, _wgslsmith_div_u32(_wgslsmith_add_u32(var_0.d.b | var_1.b, 35689u), u_input.a.x)) < var_0.a.b;
    global0 = array<Struct_1, 30>();
    return vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.x), -237f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.c.x), _wgslsmith_f_op_f32(step(var_1.d, -1000f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1575f)) - var_1.d) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.c.x))))));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    global1 = array<bool, 20>();
    global0 = array<Struct_1, 30>();
    return Struct_2(arg_0.b, Struct_1(true, 0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.d.c.x, arg_0.b.d, -1101f), arg_0.d.c)) + _wgslsmith_f_op_vec3_f32(arg_0.a.c + vec3<f32>(arg_0.d.c.x, arg_0.d.c.x, arg_0.b.d)))), arg_0.d.c.x, false), u_input.c, Struct_1(0i <= abs(-2147483647i | arg_0.c), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, u_input.b.x), select(19807u, 0u, global3[_wgslsmith_index_u32(1u, 5u)])), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-768f, arg_0.a.d, 765f) * _wgslsmith_f_op_vec3_f32(func_3())))), 291f, true));
}

fn func_4(arg_0: Struct_2) -> u32 {
    global2 = array<vec2<f32>, 13>();
    let var_0 = abs(~vec4<u32>(14475u, _wgslsmith_mod_u32(~17124u, arg_0.a.b), reverseBits(func_1(arg_0.b.b, vec3<bool>(true, arg_0.d.a, true))), 30896u));
    let var_1 = !select(!(!select(vec4<bool>(global3[_wgslsmith_index_u32(var_0.x, 5u)], true, false, true), vec4<bool>(true, true, global3[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<bool>(true, true, true, arg_0.a.a))), select(vec4<bool>(false && global1[_wgslsmith_index_u32(36146u, 20u)], all(vec4<bool>(false, false, true, true)), false, global1[_wgslsmith_index_u32(abs(u_input.b.x), 20u)]), vec4<bool>(func_2(arg_0).a.a, false & global1[_wgslsmith_index_u32(arg_0.d.b, 20u)], true, global3[_wgslsmith_index_u32(~var_0.x, 5u)]), _wgslsmith_f_op_f32(f32(-1f) * -228f) > arg_0.a.d), select(!(!vec4<bool>(global3[_wgslsmith_index_u32(arg_0.b.b, 5u)], arg_0.a.a, arg_0.a.a, arg_0.a.e)), vec4<bool>(all(vec3<bool>(false, true, true)), true, true, all(vec3<bool>(true, arg_0.b.a, true))), !(!vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(arg_0.a.b, 20u)], arg_0.d.a, false))));
    var var_2 = abs(_wgslsmith_add_vec2_i32(countOneBits(~vec2<i32>(arg_0.c, arg_0.c)), ~_wgslsmith_add_vec2_i32(-vec2<i32>(arg_0.c, u_input.c), vec2<i32>(arg_0.c, -56213i))));
    let var_3 = firstTrailingBit(var_0);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = u_input.c;
    let var_2 = Struct_2(Struct_1(true, _wgslsmith_clamp_u32(func_1(u_input.b.x, !vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b.x, 20u)])), 1323u, 33263u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-433f, -1942f, -519f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1293f, -1699f, 859f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -855f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1666f))), !global3[_wgslsmith_index_u32(30516u, 5u)]), Struct_1(any(!vec2<bool>(false, global3[_wgslsmith_index_u32(75551u, 5u)])), 17317u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-112f * 358f), 618f, _wgslsmith_f_op_f32(-1083f + 619f))), -1079f, true || (~var_0 != ~u_input.b.x)), var_1, Struct_1(global1[_wgslsmith_index_u32(func_4(func_2(Struct_2(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(var_0, 30u)], 0i, Struct_1(true, 81299u, vec3<f32>(-2047f, 973f, -522f), 905f, global3[_wgslsmith_index_u32(87157u, 5u)])))), 20u)], _wgslsmith_div_u32(_wgslsmith_mult_u32(~var_0, 0u), reverseBits(~4294967295u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(max(1000f, -1195f)), _wgslsmith_f_op_f32(trunc(1000f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1222f, 1035f, 611f) + vec3<f32>(-998f, 842f, 1986f)), _wgslsmith_div_vec3_f32(vec3<f32>(-593f, 1412f, 1653f), vec3<f32>(1180f, 595f, -149f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-874f * 559f), _wgslsmith_f_op_f32(-762f - 789f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(113f)))))), func_2(Struct_2(Struct_1(false, u_input.b.x, vec3<f32>(-1109f, -291f, -365f), 686f, false), Struct_1(true, var_0, vec3<f32>(-1234f, -936f, 1055f), 1137f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), var_1 >> (u_input.b.x % 32u), global0[_wgslsmith_index_u32(1711u, 30u)])).a.e));
    global1 = array<bool, 20>();
    let var_3 = false;
    var var_4 = func_2(func_2(Struct_2(Struct_1(var_2.b.a, 4294967295u, vec3<f32>(var_2.d.c.x, var_2.b.c.x, var_2.a.d), _wgslsmith_f_op_f32(step(-824f, -1526f)), global1[_wgslsmith_index_u32(~var_0, 20u)]), func_2(Struct_2(var_2.b, Struct_1(false, 1u, vec3<f32>(var_2.d.c.x, 1040f, var_2.a.d), var_2.b.d, global1[_wgslsmith_index_u32(u_input.b.x, 20u)]), var_2.c, Struct_1(var_3, u_input.a.x, vec3<f32>(var_2.d.d, 1550f, 1000f), -2340f, global3[_wgslsmith_index_u32(0u, 5u)]))).a, 1i, func_2(var_2).a))).d;
    let var_5 = Struct_1(false, 4294967295u << (~_wgslsmith_div_u32(u_input.a.x, ~var_2.b.b) % 32u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(trunc(284f)), -613f, -432f))), vec3<f32>(1000f, -133f, var_4.d))), var_4.c.x, global1[_wgslsmith_index_u32(var_4.b, 20u)]);
    global3 = array<bool, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_5.b, min(~1u, u_input.b.x)), 6611i);
}

