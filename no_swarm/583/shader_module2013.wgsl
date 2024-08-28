struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(-15157i, i32(-2147483648), 2147483647i), vec3<i32>(-10149i, 39834i, 19123i), vec3<i32>(-39994i, 27602i, 1i), vec3<i32>(1i, 1i, -1i), vec3<i32>(0i, -13377i, 11252i), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-58539i, 14365i, -1i), vec3<i32>(-2122i, -87727i, -7787i), vec3<i32>(-6258i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), 73918i), vec3<i32>(-60650i, -37162i, i32(-2147483648)), vec3<i32>(50775i, -29659i, 2147483647i), vec3<i32>(-10113i, -29676i, 10148i));

var<private> global1: Struct_2;

var<private> global2: array<i32, 18> = array<i32, 18>(-11101i, 0i, i32(-2147483648), -39630i, 0i, i32(-2147483648), 2147483647i, -33470i, -2139i, 48812i, 0i, -32444i, 0i, 2147483647i, -28751i, -37360i, i32(-2147483648), 9104i);

var<private> global3: array<f32, 4> = array<f32, 4>(-1000f, -2358f, -759f, 900f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = array<vec3<i32>, 13>();
    global2 = array<i32, 18>();
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-890f, 951f) + vec2<f32>(arg_0.d.x, -222f))) - vec2<f32>(1072f, arg_0.d.x)), 1u, _wgslsmith_mod_i32(-1i | select(55452i, -2147483647i, false), ~(-12389i))), global1.b);
    global2 = array<i32, 18>();
    var var_0 = !select(arg_0.a, any(!select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false), vec4<bool>(true, false, true, arg_0.a), vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a))), true);
    return ~(~u_input.b);
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(u_input.b, abs(u_input.b));
    let var_1 = vec4<f32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, ~_wgslsmith_add_u32(0u, 4294967295u) >> (global1.a.b % 32u)), 4u)], 649f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x - arg_0.d.x) + 1444f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -675f))));
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-301f * var_1.x))), firstLeadingBit(func_3(Struct_3(arg_0.a, vec4<i32>(18161i, global1.a.c, arg_0.b.x, 1i), -2400i, vec3<f32>(global1.a.a.x, global1.a.a.x, global3[_wgslsmith_index_u32(u_input.b, 4u)])))), ~(~arg_0.c >> (4294967295u % 32u))), global1.b);
    var var_2 = -(~(u_input.a << (_wgslsmith_dot_vec3_u32(~vec3<u32>(32901u, u_input.b, 4294967295u), abs(vec3<u32>(global1.a.b, u_input.b, 4294967295u))) % 32u)));
    global2 = array<i32, 18>();
    return global1.a;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-561f * -328f)), _wgslsmith_f_op_f32(-global1.b.x)), 1606f, _wgslsmith_f_op_f32(1000f + 1585f), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(u_input.b << (1u % 32u)), ~abs(u_input.b)), 4u)]));
    let var_1 = Struct_4(Struct_2(arg_2, global1.b), arg_3, vec4<bool>(all(vec3<bool>(true, true, true)), false, true, true));
    var var_2 = ~(~min(select(vec4<u32>(global1.a.b, 1u, var_1.b.b, 20608u), vec4<u32>(arg_3.b, arg_1, 0u, arg_0.b), var_1.c.x), min(vec4<u32>(1u, arg_3.b, 1u, 22918u), vec4<u32>(arg_1, arg_1, 4294967295u, 30648u))) ^ ((firstLeadingBit(vec4<u32>(u_input.b, 105184u, 52082u, 23668u)) << (_wgslsmith_div_vec4_u32(vec4<u32>(92894u, 14188u, var_1.b.b, u_input.b), vec4<u32>(global1.a.b, var_1.a.a.b, 50806u, 15002u)) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b, 33320u, 11582u, 1u), vec4<u32>(1u, arg_3.b, 4294967295u, arg_2.b) ^ vec4<u32>(arg_1, 8401u, 37714u, u_input.b)) % vec4<u32>(32u))));
    global1 = Struct_2(arg_0, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.b.x), -1000f)), 1034f));
    var_2 = ~_wgslsmith_sub_vec4_u32(firstTrailingBit(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(29156u, 25842u, 1u, 5672u), vec4<u32>(73929u, arg_0.b, global1.a.b, 4294967295u)))), firstTrailingBit(~vec4<u32>(1u, u_input.b, u_input.b, 63344u)));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.a * vec2<f32>(-337f, arg_2.a.x))) * vec2<f32>(arg_2.a.x, _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(4294967295u, 4u)])))), ~(~6367u), min(-func_2(Struct_3(var_1.c.x, vec4<i32>(-19283i, var_1.b.c, arg_3.c, 2589i), -52608i, var_0.xzx)).c, 0i)), vec2<f32>(-966f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_0.a.x)), -809f, var_1.c.x))));
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_4 {
    global1 = arg_1.a;
    var var_0 = _wgslsmith_f_op_f32(select(1000f, arg_1.b.a.x, ~_wgslsmith_add_u32(44641u << (arg_1.b.b % 32u), 1u) < u_input.b));
    global1 = Struct_2(arg_1.a.a, arg_3.yz);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(100f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global1.a.a.x)), _wgslsmith_f_op_f32(arg_2.d.x - 1358f)))));
    global3 = array<f32, 4>();
    return Struct_4(func_4(global1.a, u_input.b, func_2(arg_2), global1.a), Struct_1(arg_2.d.zz, firstTrailingBit(arg_1.a.a.b), -1i), arg_1.c);
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2) -> u32 {
    global0 = array<vec3<i32>, 13>();
    let var_0 = Struct_2(func_2(Struct_3(any(vec3<bool>(arg_0.c.x, true, true)), vec4<i32>(-1i) * -vec4<i32>(global1.a.c, -1416i, global1.a.c, -1i), arg_0.b.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.a.b.x, arg_0.b.a.x))))), arg_2.a.a);
    let var_1 = _wgslsmith_div_i32(arg_0.b.c, ~(countOneBits(-23401i) & ~_wgslsmith_mod_i32(var_0.a.c, u_input.a)));
    var var_2 = vec3<bool>(arg_0.c.x, any(arg_0.c.wy), !arg_0.c.x);
    let var_3 = vec4<bool>(func_1(true, arg_0, Struct_3(!func_1(false, Struct_4(var_0, Struct_1(vec2<f32>(global1.b.x, 583f), global1.a.b, -2147483647i), vec4<bool>(var_2.x, var_2.x, false, true)), Struct_3(false, vec4<i32>(-13420i, -41939i, global2[_wgslsmith_index_u32(arg_1, 18u)], arg_2.a.c), -25512i, vec3<f32>(-1028f, 711f, global3[_wgslsmith_index_u32(1u, 4u)])), vec3<f32>(-1000f, global3[_wgslsmith_index_u32(3591u, 4u)], -1000f)).c.x, abs(vec4<i32>(-6967i, global2[_wgslsmith_index_u32(54782u, 18u)], var_1, 2147483647i)), countOneBits(var_1 << (arg_2.a.b % 32u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1643f, 1448f, 1358f), vec3<f32>(arg_0.b.a.x, global1.a.a.x, 1000f), true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.a.x, 589f, arg_0.a.a.a.x) * vec3<f32>(var_0.b.x, arg_2.a.a.x, arg_0.b.a.x)))))).c.x, !any(select(arg_0.c, select(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), arg_0.c, arg_0.c), select(arg_0.c, vec4<bool>(var_2.x, arg_0.c.x, true, var_2.x), vec4<bool>(true, false, var_2.x, var_2.x)))), false, true);
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(~u_input.b, _wgslsmith_sub_u32(global1.a.b, 0u)), arg_2.a.b, 6417u), vec3<u32>(arg_0.a.a.b, ~_wgslsmith_div_u32(40730u, 1u), 37767u) & vec3<u32>(firstTrailingBit(~24059u), 1u, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 18>();
    global1 = Struct_2(Struct_1(global1.b, _wgslsmith_div_u32(global1.a.b, 67331u), -global2[_wgslsmith_index_u32(func_5(func_1(true, Struct_4(Struct_2(global1.a, vec2<f32>(-1054f, 611f)), global1.a, vec4<bool>(false, true, true, false)), Struct_3(false, vec4<i32>(u_input.a, u_input.a, 27474i, -2147483647i), -7380i, vec3<f32>(global1.b.x, -1312f, global1.b.x)), vec3<f32>(global1.b.x, global3[_wgslsmith_index_u32(global1.a.b, 4u)], 860f)), ~u_input.b, Struct_2(Struct_1(vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 4u)], 250f), 38668u, 27844i), vec2<f32>(global1.b.x, 357f))), 18u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(555f, -479f)))), global1.b, any(vec3<bool>(true, true, true))))));
    var var_0 = Struct_2(func_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-1025f - global3[_wgslsmith_index_u32(global1.a.b, 4u)]), _wgslsmith_f_op_f32(-global1.a.a.x)), global1.a.b, 3406i), max(~(~1u), firstTrailingBit(func_1(true, Struct_4(Struct_2(Struct_1(vec2<f32>(178f, global1.a.a.x), u_input.b, 59800i), vec2<f32>(371f, -472f)), Struct_1(vec2<f32>(-247f, global3[_wgslsmith_index_u32(1150u, 4u)]), u_input.b, global2[_wgslsmith_index_u32(0u, 18u)]), vec4<bool>(false, false, false, true)), Struct_3(true, vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 18u)], u_input.a, -1i, global1.a.c), u_input.a, vec3<f32>(global1.b.x, 428f, global1.a.a.x)), vec3<f32>(global1.b.x, global1.a.a.x, global3[_wgslsmith_index_u32(4294967295u, 4u)])).b.b)), Struct_1(global1.a.a, ~max(global1.a.b, 4294967295u), 0i & (1i << (global1.a.b % 32u))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.a * vec2<f32>(global1.a.a.x, global1.b.x)) + global1.b), 25577u, firstTrailingBit(-7976i ^ u_input.a))).a, _wgslsmith_f_op_vec2_f32(global1.a.a - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.b.x, global1.b.x))), vec2<f32>(_wgslsmith_f_op_f32(727f - -999f), _wgslsmith_f_op_f32(select(1640f, global3[_wgslsmith_index_u32(52765u, 4u)], false))), true))));
    let var_1 = global3[_wgslsmith_index_u32(global1.a.b, 4u)];
    let var_2 = (global1.a.c < func_1(select(all(vec3<bool>(false, false, false)), 17292u != u_input.b, true), func_1(global3[_wgslsmith_index_u32(4294967295u, 4u)] <= var_0.b.x, func_1(false, Struct_4(Struct_2(global1.a, vec2<f32>(var_0.a.a.x, global1.b.x)), var_0.a, vec4<bool>(false, true, false, true)), Struct_3(false, vec4<i32>(23648i, 54306i, 43259i, -1i), -1i, vec3<f32>(-462f, global1.a.a.x, 1164f)), vec3<f32>(var_0.a.a.x, 997f, global3[_wgslsmith_index_u32(global1.a.b, 4u)])), Struct_3(false, vec4<i32>(global1.a.c, global1.a.c, 2147483647i, 1i), var_0.a.c, vec3<f32>(global1.a.a.x, global1.b.x, 1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1147f, 1651f, var_0.a.a.x), vec3<f32>(global1.b.x, global3[_wgslsmith_index_u32(12418u, 4u)], -1037f))), Struct_3(all(vec3<bool>(true, true, false)), vec4<i32>(1i, 58331i, global1.a.c, global2[_wgslsmith_index_u32(global1.a.b, 18u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.c, global1.a.c, global1.a.c), global0[_wgslsmith_index_u32(0u, 13u)]), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.a.x, global3[_wgslsmith_index_u32(123764u, 4u)], var_0.a.a.x), vec3<f32>(1338f, var_0.a.a.x, 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b.x, -331f, -1068f), vec3<f32>(222f, 538f, global1.a.a.x), vec3<bool>(false, true, true))) + vec3<f32>(1000f, global1.b.x, 1678f))).a.a.c) && true;
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a.a.x)))), func_2(Struct_3(_wgslsmith_sub_u32(22721u, u_input.b) == func_1(var_2, Struct_4(Struct_2(Struct_1(vec2<f32>(global1.b.x, -269f), 1u, -10986i), vec2<f32>(-233f, -3315f)), global1.a, vec4<bool>(var_2, false, var_2, var_2)), Struct_3(true, vec4<i32>(global1.a.c, -2147483647i, -50699i, 8619i), global2[_wgslsmith_index_u32(0u, 18u)], vec3<f32>(936f, 411f, var_0.b.x)), vec3<f32>(-1931f, -1997f, global3[_wgslsmith_index_u32(global1.a.b, 4u)])).b.b, vec4<i32>(-1i) * -vec4<i32>(global2[_wgslsmith_index_u32(0u, 18u)], -2147483647i, u_input.a, global1.a.c), reverseBits(countOneBits(u_input.a)), vec3<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(global1.a.b, 4u)])), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(1u, 4u)], var_0.a.a.x))))).a.x));
    global1 = func_4(var_0.a, 1u, func_1(var_2, func_1(var_2, func_1(var_2, Struct_4(Struct_2(var_0.a, vec2<f32>(-262f, -1000f)), var_0.a, vec4<bool>(var_2, var_2, var_2, var_2)), Struct_3(var_2, vec4<i32>(var_0.a.c, 20260i, var_0.a.c, global1.a.c), global1.a.c, vec3<f32>(986f, global3[_wgslsmith_index_u32(1u, 4u)], -1767f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-763f, 247f, global3[_wgslsmith_index_u32(4294967295u, 4u)]))), Struct_3(any(vec3<bool>(var_2, var_2, var_2)), vec4<i32>(global2[_wgslsmith_index_u32(global1.a.b, 18u)], u_input.a, global2[_wgslsmith_index_u32(31343u, 18u)], -8329i), global2[_wgslsmith_index_u32(65648u, 18u)], vec3<f32>(global1.a.a.x, 299f, global1.a.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-741f, var_0.a.a.x, -432f)))), Struct_3(!all(vec4<bool>(var_2, true, false, false)), ~abs(vec4<i32>(u_input.a, -35760i, var_0.a.c, global2[_wgslsmith_index_u32(37408u, 18u)])), u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(689f, 1070f, 362f), vec3<f32>(1640f, global3[_wgslsmith_index_u32(46391u, 4u)], var_0.b.x), true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.a.x, 1134f, global3[_wgslsmith_index_u32(21901u, 4u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.a.x, global1.a.a.x, var_0.a.a.x))))).b, func_4(func_4(func_1(true, func_1(true, Struct_4(Struct_2(Struct_1(global1.a.a, u_input.b, 4932i), global1.a.a), Struct_1(vec2<f32>(1434f, -604f), global1.a.b, 1i), vec4<bool>(false, var_2, var_2, var_2)), Struct_3(false, vec4<i32>(var_0.a.c, var_0.a.c, -12598i, 6798i), 49568i, vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 4u)], 487f, 1485f)), vec3<f32>(495f, -182f, var_0.b.x)), Struct_3(var_2, vec4<i32>(u_input.a, -34779i, global2[_wgslsmith_index_u32(var_0.a.b, 18u)], 139i), 1i, vec3<f32>(var_0.b.x, global3[_wgslsmith_index_u32(0u, 4u)], var_0.a.a.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(598f, 2291f, 904f)))).b, var_0.a.b, func_2(Struct_3(var_2, vec4<i32>(0i, global1.a.c, -22347i, 0i), u_input.a, vec3<f32>(485f, global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(46709u, 4u)]))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], var_0.b.x) * global1.a.a), abs(1u), _wgslsmith_clamp_i32(-6019i, u_input.a, 1i))).a, _wgslsmith_sub_u32(~var_0.a.b << ((60387u ^ global1.a.b) % 32u), 0u), var_0.a, func_2(Struct_3(true, vec4<i32>(global2[_wgslsmith_index_u32(var_0.a.b, 18u)], var_0.a.c, global1.a.c, u_input.a), countOneBits(global2[_wgslsmith_index_u32(global1.a.b, 18u)]), vec3<f32>(global3[_wgslsmith_index_u32(145u, 4u)], 1000f, global3[_wgslsmith_index_u32(0u, 4u)])))).a);
    let var_4 = Struct_3(true, _wgslsmith_div_vec4_i32(-vec4<i32>(var_0.a.c, global1.a.c, -19256i, 2147483647i) << (vec4<u32>(~global1.a.b, countOneBits(1u), ~var_0.a.b, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<u32>(52082u, u_input.b, var_0.a.b, global1.a.b))) % vec4<u32>(32u)), vec4<i32>(func_2(Struct_3(true, vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 18u)], 0i, 0i, var_0.a.c), -17052i, vec3<f32>(var_0.a.a.x, 2295f, 1398f))).c, -u_input.a, u_input.a, func_1(var_2, Struct_4(Struct_2(Struct_1(var_0.a.a, global1.a.b, 0i), vec2<f32>(global1.b.x, 1000f)), var_0.a, vec4<bool>(false, false, false, false)), Struct_3(var_2, vec4<i32>(var_0.a.c, -11670i, var_0.a.c, global1.a.c), var_0.a.c, vec3<f32>(1139f, 221f, 1108f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-686f, global1.b.x, -652f), vec3<f32>(-1350f, 422f, -1295f)))).b.c)), 1i, vec3<f32>(310f, -1215f, _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(526f - -1944f), _wgslsmith_f_op_f32(141f + global3[_wgslsmith_index_u32(1u, 4u)]), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(48260u, -979f, global2[_wgslsmith_index_u32(countOneBits(1u), 18u)] >> (u_input.b % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-754f * global3[_wgslsmith_index_u32(var_0.a.b, 4u)]))))));
}

