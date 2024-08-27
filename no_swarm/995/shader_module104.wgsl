struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 7>;

var<private> global2: array<f32, 23> = array<f32, 23>(-875f, 787f, 1916f, 1000f, -696f, 872f, -527f, 1033f, -945f, -755f, -526f, 1444f, 1232f, 1111f, 471f, 615f, 1662f, 1043f, 1351f, 151f, -1000f, 193f, 406f);

var<private> global3: Struct_4;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    global2 = array<f32, 23>();
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(arg_0.a.x, 23u)])), _wgslsmith_f_op_f32(1386f - 1058f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.a, 23u)]))))))));
    var var_1 = _wgslsmith_add_i32(-2147483647i, _wgslsmith_sub_i32(~(~(-21842i)), 15640i) >> (~arg_0.a.x % 32u));
    let var_2 = arg_0;
    global0 = _wgslsmith_add_u32(~_wgslsmith_add_u32(var_2.a.x, ~abs(29715u)), 4294967295u);
    return vec3<bool>(global1[_wgslsmith_index_u32(max(arg_0.a.x, u_input.a), 7u)], true, !(arg_0.a.x >= ~firstTrailingBit(u_input.a)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: i32) -> u32 {
    let var_0 = Struct_3(!vec3<bool>(arg_1.a.x, true, any(!vec4<bool>(global1[_wgslsmith_index_u32(13652u, 7u)], true, arg_1.a.x, arg_1.a.x))), arg_1.b, _wgslsmith_sub_i32(firstTrailingBit(2147483647i), arg_1.c), Struct_2(reverseBits(~(vec2<u32>(1u, 1u) >> (vec2<u32>(arg_1.d.a.x, arg_1.d.a.x) % vec2<u32>(32u))))), 1194f);
    var var_1 = Struct_4(0u);
    let var_2 = Struct_4(u_input.a);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.b.a, arg_1.b.a, var_0.b.b, -2006f))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.d.a.x, 8443u), vec3<u32>(var_0.d.a.x, 16274u, global3.a)), 23u)], _wgslsmith_f_op_f32(-arg_1.e), 1654f, _wgslsmith_div_f32(arg_1.e, -213f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1432f, 2181f, var_0.b.a, 1690f), vec4<f32>(1000f, -238f, global2[_wgslsmith_index_u32(var_0.d.a.x, 23u)], -547f)))))));
    var_1 = Struct_4(var_1.a);
    return global3.a;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_3 {
    global0 = func_4(vec4<i32>(arg_3.x, arg_3.x, _wgslsmith_dot_vec4_i32((vec4<i32>(-9179i, 1i, arg_3.x, arg_2.c) | vec4<i32>(arg_3.x, arg_3.x, arg_3.x, arg_2.c)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, arg_3.x, arg_3.x, -2147483647i), vec4<i32>(arg_3.x, 47017i, 0i, 33185i)), ~vec4<i32>(arg_2.c, 13635i, 1i, 2147483647i) ^ -vec4<i32>(arg_2.c, -2147483647i, -16474i, 2147483647i)), min(_wgslsmith_div_i32(arg_3.x & -2147483647i, abs(16666i)), -2147483647i)), Struct_3(!func_3(Struct_2(vec2<u32>(61395u, 10684u))), Struct_1(_wgslsmith_f_op_f32(floor(102f)), arg_2.e), 11307i, arg_2.d, arg_2.b.b), arg_3.x);
    global2 = array<f32, 23>();
    var var_0 = vec2<i32>(-_wgslsmith_add_i32(arg_3.x, _wgslsmith_sub_i32(arg_3.x, -2147483647i)), -23474i);
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(254f, 1000f, 360f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(arg_2.d.a.x, 23u)], 341f, -2084f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, arg_2.e, arg_1), vec3<f32>(459f, arg_0.a, arg_2.b.a), arg_2.a.x))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, arg_2.b.a)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 23u)]), 386f)), global2[_wgslsmith_index_u32(51005u, 23u)], vec4<bool>(all(!(!vec4<bool>(false, false, arg_2.a.x, false))), (_wgslsmith_div_f32(arg_2.e, arg_0.b) > 1388f) && (func_3(Struct_2(arg_2.d.a)).x == all(vec2<bool>(true, true))), true, false & (_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -2147483647i, 0i), vec3<i32>(1i, var_0.x, var_0.x)) != firstLeadingBit(18327i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.e + arg_2.b.a)))))));
    global0 = 1u;
    return Struct_3(!vec3<bool>(false, true, select(!arg_2.a.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(73492u, global3.a), 7u)], arg_2.a.x)), Struct_1(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(-312f, _wgslsmith_f_op_f32(var_1.a.x - arg_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.b)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a))))), -2646i, Struct_2(arg_2.d.a), -763f);
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> bool {
    var var_0 = arg_0.b;
    let var_1 = Struct_4(27704u);
    global2 = array<f32, 23>();
    let var_2 = arg_0.b;
    var var_3 = func_2(var_2, 1001f, func_2(Struct_1(_wgslsmith_f_op_f32(exp2(func_2(Struct_1(439f, -1160f), -736f, arg_0, vec2<i32>(17435i, -30201i)).e)), arg_0.b.b), var_0.b, arg_0, firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, arg_0.c) ^ vec2<i32>(1i, 22165i)))), min(vec2<i32>(countOneBits(arg_0.c), arg_1) ^ ~(vec2<i32>(arg_1, arg_0.c) ^ vec2<i32>(arg_0.c, 2147483647i)), vec2<i32>(-1i) * -vec2<i32>(0i, arg_1)));
    return true;
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(3920u, 23u)], global2[_wgslsmith_index_u32(u_input.a, 23u)])) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-915f, 731f, -1000f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1116f, global2[_wgslsmith_index_u32(3466u, 23u)], global2[_wgslsmith_index_u32(21765u, 23u)])))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(global3.a, 23u)], global2[_wgslsmith_index_u32(15296u, 23u)], global2[_wgslsmith_index_u32(global3.a, 23u)]) * vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(u_input.a, 23u)], -1336f)))), vec3<f32>(_wgslsmith_div_f32(663f, -319f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(461f)))), global2[_wgslsmith_index_u32(arg_1, 23u)])));
    global0 = ~15404u;
    var var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(~firstLeadingBit(vec2<i32>(arg_0, arg_0)) >> (~firstLeadingBit(vec2<u32>(arg_1, u_input.a)) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(max(vec2<i32>(arg_0, -1i), vec2<i32>(arg_0, 1i)), vec2<i32>(arg_0, -2147483647i) << (vec2<u32>(u_input.a, 59879u) % vec2<u32>(32u))) >> (select(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global3.a), vec2<u32>(arg_1, global3.a)), vec2<u32>(20916u, u_input.a) ^ vec2<u32>(arg_1, global3.a), !arg_2.x) % vec2<u32>(32u))), ~(-vec2<i32>(2147483647i >> (u_input.a % 32u), 1593i)));
    var_1 = -min(-vec2<i32>(30305i, -2147483647i) | (vec2<i32>(0i, var_1.x) ^ vec2<i32>(-2147483647i, var_1.x)), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-36318i, -41742i), vec2<i32>(1i, arg_0)))) >> (vec2<u32>(func_2(func_2(func_2(Struct_1(-1624f, global2[_wgslsmith_index_u32(arg_1, 23u)]), 1189f, Struct_3(arg_2.zwy, Struct_1(var_0.x, var_0.x), var_1.x, Struct_2(vec2<u32>(1u, 1u)), -1017f), vec2<i32>(0i, -2147483647i)).b, -448f, Struct_3(vec3<bool>(global1[_wgslsmith_index_u32(global3.a, 7u)], false, false), Struct_1(-518f, 551f), 38429i, Struct_2(vec2<u32>(arg_1, 0u)), 516f), abs(vec2<i32>(-54146i, 2147483647i))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -784f)), Struct_3(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], true, true), Struct_1(794f, global2[_wgslsmith_index_u32(4294967295u, 23u)]), -15927i, func_2(Struct_1(-1579f, 572f), 1311f, Struct_3(vec3<bool>(arg_2.x, true, true), Struct_1(var_0.x, 662f), -15615i, Struct_2(vec2<u32>(u_input.a, arg_1)), var_0.x), vec2<i32>(2147483647i, var_1.x)).d, 1f), ~vec2<i32>(1i, arg_0) >> (abs(vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u))).d.a.x, ~(~1u)) % vec2<u32>(32u));
    global3 = Struct_4(~1u);
    return global1[_wgslsmith_index_u32(~(~(~42599u)), 7u)];
}

fn func_1(arg_0: bool, arg_1: u32) -> vec2<bool> {
    var var_0 = Struct_4(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(~5621u, global3.a)), abs(vec2<u32>(global3.a, arg_1))));
    var var_1 = true;
    return vec2<bool>(false, func_6(5031i, abs(arg_1), vec4<bool>(!all(vec3<bool>(global1[_wgslsmith_index_u32(arg_1, 7u)], false, false)), global1[_wgslsmith_index_u32(77047u, 7u)], true, func_5(func_2(Struct_1(global2[_wgslsmith_index_u32(1u, 23u)], 1616f), global2[_wgslsmith_index_u32(arg_1, 23u)], Struct_3(vec3<bool>(arg_0, false, arg_0), Struct_1(-1000f, global2[_wgslsmith_index_u32(1u, 23u)]), -7887i, Struct_2(vec2<u32>(42213u, global3.a)), global2[_wgslsmith_index_u32(4294967295u, 23u)]), vec2<i32>(1i, 19558i)), _wgslsmith_mult_i32(-33185i, -1i), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(func_1(!global1[_wgslsmith_index_u32(~29599u, 7u)], reverseBits(~global3.a))) == (0u >= min(_wgslsmith_mult_u32(~0u, 0u), _wgslsmith_mult_u32(0u, global3.a)));
    let var_1 = global3.a;
    global2 = array<f32, 23>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-428f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.a, 23u)]))), _wgslsmith_div_f32(-541f, -1650f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-548f - -986f)))));
    var_0 = global1[_wgslsmith_index_u32(55908u, 7u)];
    var_0 = !func_2(Struct_1(1462f, global2[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global3.a, u_input.a, u_input.a), vec4<u32>(global3.a, u_input.a, 4698u, u_input.a)), 23u)])), func_2(Struct_1(func_2(Struct_1(var_2.x, global2[_wgslsmith_index_u32(u_input.a, 23u)]), global2[_wgslsmith_index_u32(4294967295u, 23u)], Struct_3(vec3<bool>(global1[_wgslsmith_index_u32(global3.a, 7u)], global1[_wgslsmith_index_u32(global3.a, 7u)], true), Struct_1(169f, var_2.x), -2147483647i, Struct_2(vec2<u32>(0u, 0u)), -170f), vec2<i32>(11867i, -26273i)).b.b, _wgslsmith_f_op_f32(f32(-1f) * -964f)), var_2.x, func_2(func_2(Struct_1(global2[_wgslsmith_index_u32(0u, 23u)], 1000f), -849f, Struct_3(vec3<bool>(true, false, global1[_wgslsmith_index_u32(0u, 7u)]), Struct_1(-129f, 1846f), 22228i, Struct_2(vec2<u32>(global3.a, u_input.a)), global2[_wgslsmith_index_u32(global3.a, 23u)]), vec2<i32>(1i, -31002i)).b, _wgslsmith_f_op_f32(f32(-1f) * -895f), Struct_3(vec3<bool>(true, false, false), Struct_1(var_2.x, var_2.x), -12772i, Struct_2(vec2<u32>(4294967295u, u_input.a)), 163f), countOneBits(vec2<i32>(2147483647i, 40079i))), vec2<i32>(reverseBits(39725i), 1i)), select(firstTrailingBit(vec2<i32>(2147483647i, 1i)), vec2<i32>(1i, 1i), !select(vec2<bool>(global1[_wgslsmith_index_u32(global3.a, 7u)], false), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 7u)]), false))).a.x;
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(~2147483647i, -6106i, firstTrailingBit(1i), _wgslsmith_div_i32(15605i, 1i)), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(1i, 1i, 1i, 1i)), -min(reverseBits(vec4<i32>(-37270i, 41820i, -15035i, 36788i)), ~vec4<i32>(15415i, -2147483647i, -1i, 2311i))));
    global3 = Struct_4(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_u32(4294967295u ^ u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 71811u)), ~57299u)), 1i, -95886i);
}

