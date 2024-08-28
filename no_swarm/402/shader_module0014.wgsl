struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec3<i32>,
    e: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_2(vec3<i32>(-29555i, 2147483647i, -1i), Struct_1(246f)), Struct_2(vec3<i32>(2147483647i, -52564i, 2147483647i), Struct_1(615f)), Struct_1(1147f), vec3<i32>(-1i, 1i, 1i), true), Struct_3(Struct_2(vec3<i32>(0i, -36133i, i32(-2147483648)), Struct_1(1098f)), Struct_2(vec3<i32>(0i, 0i, 84193i), Struct_1(-714f)), Struct_1(-1098f), vec3<i32>(-1i, -4007i, 12257i), false), Struct_3(Struct_2(vec3<i32>(-3181i, -12666i, 36732i), Struct_1(-374f)), Struct_2(vec3<i32>(0i, -43170i, -1i), Struct_1(387f)), Struct_1(1187f), vec3<i32>(2147483647i, -21498i, 2147483647i), false), Struct_3(Struct_2(vec3<i32>(-1i, 1i, -44070i), Struct_1(-495f)), Struct_2(vec3<i32>(-1i, i32(-2147483648), -55367i), Struct_1(-1000f)), Struct_1(126f), vec3<i32>(1i, 0i, 1i), false), Struct_3(Struct_2(vec3<i32>(0i, 0i, -990i), Struct_1(193f)), Struct_2(vec3<i32>(-42261i, -13391i, 49276i), Struct_1(615f)), Struct_1(-687f), vec3<i32>(-35337i, i32(-2147483648), -39366i), false), Struct_3(Struct_2(vec3<i32>(-14050i, i32(-2147483648), 40568i), Struct_1(1926f)), Struct_2(vec3<i32>(2147483647i, -39753i, -24969i), Struct_1(545f)), Struct_1(1568f), vec3<i32>(-6358i, 0i, 12048i), true), Struct_3(Struct_2(vec3<i32>(18319i, -1i, -1i), Struct_1(761f)), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), Struct_1(-247f)), Struct_1(-1681f), vec3<i32>(i32(-2147483648), -80957i, -74132i), false), Struct_3(Struct_2(vec3<i32>(4505i, 7836i, 2147483647i), Struct_1(1116f)), Struct_2(vec3<i32>(-24024i, 1i, 39423i), Struct_1(-1617f)), Struct_1(1000f), vec3<i32>(14522i, -8821i, -1i), true));

var<private> global1: bool;

var<private> global2: array<bool, 1>;

var<private> global3: array<bool, 27>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: u32) -> Struct_1 {
    global0 = array<Struct_3, 8>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-1f), Struct_2(-_wgslsmith_div_vec3_i32(vec3<i32>(26572i, u_input.b.x, u_input.a.x) & vec3<i32>(u_input.a.x, 0i, u_input.c), -vec3<i32>(-14259i, u_input.b.x, 1i)), Struct_1(-1116f)), true, vec3<bool>(arg_0 < 1u, true, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~firstLeadingBit(1u), _wgslsmith_sub_u32(~4349u, arg_2)), 27u)]));
    let var_1 = var_0.b;
    var var_2 = _wgslsmith_add_vec3_u32(abs(select(vec3<u32>(1u, 1u, 31802u), max(vec3<u32>(arg_2, 0u, 0u), vec3<u32>(4294967295u, 54528u, arg_0)), false)) ^ ~(vec3<u32>(82785u, arg_0, arg_2) ^ _wgslsmith_div_vec3_u32(vec3<u32>(72939u, arg_0, 1u), vec3<u32>(arg_0, arg_0, 4294967295u))), ~reverseBits(vec3<u32>(arg_2 | arg_2, max(4294967295u, arg_2), arg_0)));
    global1 = ~(_wgslsmith_div_u32(0u, firstLeadingBit(0u)) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(10473u, arg_0, var_2.x, 26153u), vec4<u32>(arg_2, arg_2, 0u, arg_2)) | _wgslsmith_sub_u32(4294967295u, 1u)) % 32u)) >= _wgslsmith_div_u32(~4294967295u, var_2.x);
    return var_1.b;
}

fn func_3(arg_0: Struct_4) -> Struct_1 {
    let var_0 = 1061f;
    global3 = array<bool, 27>();
    var var_1 = arg_0.b;
    let var_2 = Struct_2(vec3<i32>(~firstTrailingBit(var_1.a.x), -66027i, _wgslsmith_mult_i32(~_wgslsmith_add_i32(-57804i, 1i), ~countOneBits(arg_0.b.a.x))), func_2(~(~83656u >> (1u % 32u)), arg_0.d.x, 38913u));
    let var_3 = arg_0;
    return func_2(1u, any(vec4<bool>(all(!arg_0.d.xz), !any(arg_0.d), any(!vec4<bool>(var_3.d.x, true, global2[_wgslsmith_index_u32(65255u, 1u)], true)), any(select(var_3.d.zy, arg_0.d.zz, vec2<bool>(false, var_3.d.x))))), 39714u);
}

fn func_1(arg_0: u32) -> Struct_4 {
    var var_0 = func_3(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1032f))))), Struct_2(abs(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.b.x)), func_2(arg_0, all(vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 1u)], false, global3[_wgslsmith_index_u32(1u, 27u)])), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, 10621u), vec3<u32>(arg_0, arg_0, arg_0)))), arg_0 > ~(~1u), vec3<bool>(true, all(vec4<bool>(false, global3[_wgslsmith_index_u32(19367u, 27u)], true, false)), true)));
    let var_1 = global3[_wgslsmith_index_u32(~1u, 27u)];
    global1 = all(vec3<bool>(any(select(vec4<bool>(true, global2[_wgslsmith_index_u32(13345u, 1u)], false, false), select(vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(89506u, 27u)]), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(arg_0, 1u)], true, global3[_wgslsmith_index_u32(1u, 27u)]), true), global2[_wgslsmith_index_u32(abs(1u), 1u)])), true, all(!vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 1u)], false, global3[_wgslsmith_index_u32(43757u, 27u)], global3[_wgslsmith_index_u32(25008u, 27u)])) == false));
    var var_2 = var_0.a;
    let var_3 = false;
    return Struct_4(_wgslsmith_f_op_f32(-var_0.a), Struct_2(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(21902i, u_input.a.x), 2496i, u_input.a.x), u_input.a.x, u_input.a.x), func_2(arg_0, true, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, arg_0), abs(vec4<u32>(arg_0, arg_0, 4294967295u, arg_0))))), false, select(select(select(vec3<bool>(false, global3[_wgslsmith_index_u32(arg_0, 27u)], false), select(vec3<bool>(global3[_wgslsmith_index_u32(16543u, 27u)], false, var_3), vec3<bool>(false, global3[_wgslsmith_index_u32(arg_0, 27u)], global2[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<bool>(true, false, false)), any(vec3<bool>(false, false, global3[_wgslsmith_index_u32(1u, 27u)]))), !(!vec3<bool>(true, global3[_wgslsmith_index_u32(arg_0, 27u)], var_3)), !vec3<bool>(false, var_3, true)), vec3<bool>(true, any(select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(85571u, 27u)], var_3), vec4<bool>(global3[_wgslsmith_index_u32(arg_0, 27u)], global2[_wgslsmith_index_u32(35328u, 1u)], global2[_wgslsmith_index_u32(arg_0, 1u)], var_3), vec4<bool>(true, global3[_wgslsmith_index_u32(20930u, 27u)], true, global2[_wgslsmith_index_u32(1u, 1u)]))), any(vec4<bool>(true, false, true, global3[_wgslsmith_index_u32(arg_0, 27u)]))), global2[_wgslsmith_index_u32(abs(arg_0), 1u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1u);
    global0 = array<Struct_3, 8>();
    global3 = array<bool, 27>();
    var var_1 = _wgslsmith_div_i32(-2147483647i, i32(-1i) * -countOneBits(~u_input.a.x));
    var var_2 = u_input.a;
    var var_3 = global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_div_u32(28877u, ~_wgslsmith_add_u32(51124u, 74675u))), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b.a.x, _wgslsmith_f_op_f32(-var_0.a), ~(-vec2<i32>(firstTrailingBit(var_2.x), max(u_input.c, 2147483647i))));
}

