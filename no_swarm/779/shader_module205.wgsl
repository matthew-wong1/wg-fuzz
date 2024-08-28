struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_3,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<f32, 9> = array<f32, 9>(1000f, 248f, 1433f, -1177f, -1301f, 701f, 1325f, 1194f, -732f);

var<private> global2: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-597f, 383f, -709f, 273f), vec4<f32>(439f, -528f, -1101f, 853f), vec4<f32>(-1931f, -892f, -1202f, -1286f), vec4<f32>(950f, 1615f, -800f, 1000f), vec4<f32>(-145f, 1492f, 218f, 599f), vec4<f32>(-422f, 533f, -1286f, -2062f), vec4<f32>(1629f, -1788f, 1790f, -241f), vec4<f32>(1112f, 218f, -1241f, -1593f), vec4<f32>(602f, -311f, -1000f, -131f), vec4<f32>(480f, -1278f, 145f, -2340f), vec4<f32>(-1826f, -981f, 1197f, 838f), vec4<f32>(-451f, -1333f, -1320f, 585f), vec4<f32>(-162f, -2146f, -587f, 461f), vec4<f32>(236f, -1000f, 403f, -691f), vec4<f32>(3867f, 1584f, 731f, 451f), vec4<f32>(1189f, -1229f, 1000f, 1507f), vec4<f32>(446f, 529f, 1639f, -605f), vec4<f32>(-1000f, -1923f, -917f, 1919f), vec4<f32>(1674f, 810f, 462f, 138f), vec4<f32>(-1110f, -1084f, -821f, 1306f), vec4<f32>(309f, -378f, -1000f, 957f), vec4<f32>(725f, 1000f, -1000f, 1000f), vec4<f32>(260f, -1135f, 1821f, -286f), vec4<f32>(-478f, 1506f, 838f, 1300f), vec4<f32>(-714f, 268f, 648f, -210f), vec4<f32>(-182f, 1000f, -247f, 533f), vec4<f32>(1000f, -812f, 670f, 2924f), vec4<f32>(720f, 1272f, -970f, 1000f), vec4<f32>(-555f, -636f, 345f, -212f), vec4<f32>(-391f, -2742f, 365f, 513f));

var<private> global3: array<Struct_5, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    var var_0 = 50355i;
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(-1f)) * _wgslsmith_div_f32(-1111f, arg_2.c.x));
    var var_3 = global1[_wgslsmith_index_u32(12819u, 9u)];
    var var_4 = select(arg_0.c.a.zx, arg_0.c.a.xy, arg_0.e.zz);
    return _wgslsmith_clamp_i32(670i, firstTrailingBit(_wgslsmith_dot_vec3_i32(reverseBits(abs(arg_2.a.a.wyy)), vec3<i32>(arg_0.d.d.a.x, arg_2.a.a.x, u_input.a) | (vec3<i32>(arg_2.b, 0i, arg_1.a.x) | arg_2.d.a.wzy))), -arg_2.a.a.x);
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: i32) -> vec4<i32> {
    global1 = array<f32, 9>();
    var var_0 = vec4<bool>(any(!vec3<bool>(any(arg_0.d.d.b), !arg_0.e.x, 1650f >= arg_0.d.c.x)), arg_0.e.x, false, !select(any(select(arg_0.d.d.b.xy, arg_0.d.d.c.yz, arg_0.e.wx)), true, true));
    var var_1 = arg_0.e.zxy;
    var var_2 = Struct_1(vec4<i32>(1i, abs(-7405i), 21493i, arg_2), arg_0.d.d.b, select(vec3<bool>(all(vec3<bool>(true, true, false)), var_1.x, _wgslsmith_f_op_f32(-arg_0.b.x) < _wgslsmith_f_op_f32(158f + global1[_wgslsmith_index_u32(26778u, 9u)])), var_0.xzw, any(var_0.yxy)));
    var var_3 = ~(firstLeadingBit(_wgslsmith_mult_i32(-12327i, _wgslsmith_mult_i32(33744i, u_input.a))) ^ arg_2);
    return vec4<i32>(-reverseBits(arg_2), func_3(Struct_4(_wgslsmith_add_vec3_u32(vec3<u32>(1905u, arg_0.a.x, 6730u), vec3<u32>(3791u, 31855u, arg_0.a.x)), global2[_wgslsmith_index_u32(arg_0.c.a.x, 30u)], arg_0.c, arg_0.d, vec4<bool>(all(vec3<bool>(arg_1, true, var_1.x)), var_2.b.x & var_1.x, true, true)), arg_0.d.d, Struct_2(Struct_1(arg_0.d.a.a, !vec3<bool>(arg_0.e.x, arg_0.d.d.b.x, true), arg_0.e.xww), -1i | _wgslsmith_sub_i32(var_2.a.x, -1i), arg_0.b.ywx, Struct_1(vec4<i32>(-2147483647i, -20513i, 1i, 13830i) >> (vec4<u32>(arg_0.a.x, 4788u, arg_0.a.x, 0u) % vec4<u32>(32u)), arg_0.e.xzy, var_2.c))), -arg_0.d.a.a.x, arg_2);
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(func_4(Struct_4(~vec3<u32>(1u, 1u, 1u), vec4<f32>(-910f, _wgslsmith_f_op_f32(min(467f, 313f)), _wgslsmith_f_op_f32(105f * -1250f), global1[_wgslsmith_index_u32(1934u, 9u)]), Struct_3(vec3<u32>(18887u, 9824u, 81650u)), Struct_2(Struct_1(vec4<i32>(-36654i, 2147483647i, 31986i, u_input.a), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), func_3(Struct_4(vec3<u32>(4294967295u, 49792u, 0u), vec4<f32>(102f, global1[_wgslsmith_index_u32(10406u, 9u)], global1[_wgslsmith_index_u32(23251u, 9u)], -1130f), Struct_3(vec3<u32>(4294967295u, 11329u, 7593u)), Struct_2(Struct_1(vec4<i32>(7657i, -46406i, 1i, u_input.a), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), 2147483647i, vec3<f32>(-770f, global1[_wgslsmith_index_u32(0u, 9u)], 1057f), Struct_1(vec4<i32>(0i, 1i, -21753i, u_input.a), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, -28029i), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), 2628i, vec3<f32>(708f, 710f, 284f), Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), vec3<f32>(712f, -463f, global1[_wgslsmith_index_u32(2845u, 9u)]), Struct_1(vec4<i32>(34782i, u_input.a, -1i, -1i), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))), !any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), 0i | _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 12936i, u_input.a)), -vec3<i32>(u_input.a, u_input.a, u_input.a))), vec3<bool>(true, !(any(vec4<bool>(true, false, false, false)) || any(vec3<bool>(false, false, false))), false), vec3<bool>(true, true, true));
    let var_1 = Struct_5(u_input.a, 28872i, ~(~(~func_3(Struct_4(vec3<u32>(1u, 48460u, 8285u), vec4<f32>(1718f, 1840f, -1069f, 2135f), Struct_3(vec3<u32>(77841u, 4294967295u, 37676u)), Struct_2(var_0, var_0.a.x, vec3<f32>(global1[_wgslsmith_index_u32(0u, 9u)], 1107f, global1[_wgslsmith_index_u32(1u, 9u)]), Struct_1(var_0.a, vec3<bool>(var_0.b.x, false, false), vec3<bool>(var_0.c.x, var_0.b.x, var_0.b.x))), vec4<bool>(false, var_0.c.x, var_0.b.x, var_0.b.x)), var_0, Struct_2(var_0, var_0.a.x, vec3<f32>(-1069f, -1570f, global1[_wgslsmith_index_u32(44017u, 9u)]), var_0)))));
    var var_2 = Struct_5(func_3(Struct_4(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(19157u, 12931u, 0u), vec3<u32>(15232u, 34133u, 28130u))), _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], -618f, 744f, 458f), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], -1252f, -2440f, 1164f)), Struct_3(select(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(48217u, 1u, 0u), var_0.b.x)), Struct_2(Struct_1(var_0.a, vec3<bool>(var_0.b.x, true, var_0.c.x), var_0.b), -u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(507f, global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)]) * vec3<f32>(global1[_wgslsmith_index_u32(0u, 9u)], -801f, global1[_wgslsmith_index_u32(4294967295u, 9u)])), Struct_1(var_0.a, vec3<bool>(var_0.b.x, var_0.c.x, true), var_0.c)), !vec4<bool>(true, var_0.b.x, false, true)), var_0, Struct_2(Struct_1(vec4<i32>(0i, 0i, 23184i, var_1.c), vec3<bool>(var_0.b.x, var_0.c.x, false), var_0.b), var_1.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(5358u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)]) * vec3<f32>(532f, global1[_wgslsmith_index_u32(57384u, 9u)], -292f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-633f, -124f, global1[_wgslsmith_index_u32(28625u, 9u)]))), Struct_1(~var_0.a, select(var_0.b, var_0.c, vec3<bool>(true, false, false)), select(vec3<bool>(var_0.c.x, var_0.c.x, var_0.b.x), var_0.b, vec3<bool>(true, var_0.c.x, var_0.c.x))))), 14792i, -max(var_0.a.x, 0i));
    var var_3 = var_0;
    let var_4 = Struct_2(var_0, ~var_1.b, vec3<f32>(_wgslsmith_f_op_f32(abs(-663f)), -567f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1543f + 499f), _wgslsmith_f_op_f32(floor(2221f)))) * global1[_wgslsmith_index_u32(1u, 9u)])), var_0);
    return !var_4.d.b;
}

fn func_1() -> Struct_5 {
    var var_0 = Struct_2(Struct_1(max(abs(vec4<i32>(u_input.a, 2147483647i, -2147483647i, -2147483647i)), vec4<i32>(u_input.a, u_input.a, u_input.a, 7797i)) | vec4<i32>(~u_input.a, -87905i & u_input.a, _wgslsmith_sub_i32(u_input.a, 0i), ~u_input.a), func_2(), vec3<bool>(true, true, true)), u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(1u, 9u)], -1000f, global1[_wgslsmith_index_u32(4294967295u, 9u)]), vec3<f32>(global1[_wgslsmith_index_u32(86291u, 9u)], global1[_wgslsmith_index_u32(61638u, 9u)], 446f))), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], -336f, -1388f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(10708u, 9u)], -319f) * vec3<f32>(671f, global1[_wgslsmith_index_u32(7018u, 9u)], 343f)))), Struct_1(select(_wgslsmith_div_vec4_i32(abs(vec4<i32>(1i, 29299i, u_input.a, u_input.a)), -vec4<i32>(-21106i, 2147483647i, 5441i, u_input.a)), vec4<i32>(u_input.a, -36949i, u_input.a, -2147483647i) & ~vec4<i32>(0i, u_input.a, -6191i, u_input.a), all(vec3<bool>(false, false, true))), vec3<bool>(!(u_input.a < u_input.a), !all(vec3<bool>(true, false, false)), -3135f < _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(81146u, 9u)]))), select(vec3<bool>(true, false, true), !func_2(), vec3<bool>(all(vec2<bool>(false, true)), global1[_wgslsmith_index_u32(20533u, 9u)] != 684f, all(vec3<bool>(true, true, false))))));
    let var_1 = true;
    let var_2 = Struct_4(~abs(vec3<u32>(_wgslsmith_add_u32(0u, 10840u), 0u, ~114u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(1u, 30u)] * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global2[_wgslsmith_index_u32(0u, 30u)])) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(1u, 9u)], 246f, 252f, 2234f), vec4<f32>(-998f, 640f, 340f, 1924f), var_1)))))), Struct_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(10751u, 1u, 8942u)), vec3<u32>(1u, 1u, 1u))), Struct_2(Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.a.a.yzx, var_0.a.a.wzz), var_0.d.a.x, _wgslsmith_dot_vec3_i32(var_0.d.a.zyw, var_0.a.a.ywy), u_input.a | 1i), var_0.d.b, select(var_0.d.b, var_0.a.b, !var_0.a.b.x)), -u_input.a, _wgslsmith_f_op_vec3_f32(trunc(var_0.c)), var_0.a), vec4<bool>(true, u_input.a > countOneBits(firstLeadingBit(u_input.a)), var_0.d.c.x, !(!var_1)));
    global3 = array<Struct_5, 16>();
    var var_3 = _wgslsmith_mod_vec2_u32(~var_2.a.yx, var_2.c.a.zx);
    return global3[_wgslsmith_index_u32(40456u, 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(select(u_input.a, u_input.a, !(!any(vec3<bool>(true, true, false)))), u_input.a);
    var var_1 = func_1();
    let var_2 = Struct_5(_wgslsmith_div_i32(((u_input.a & 0i) & 47022i) >> (select(abs(0u), 49406u, true) % 32u), func_1().b), _wgslsmith_dot_vec4_i32(vec4<i32>(-34997i, 25973i, ~reverseBits(u_input.a), var_1.b), vec4<i32>(-1i) * -vec4<i32>(-37978i, var_0, 2395i, 16985i)), -(~select(u_input.a | var_1.c, -14330i, true)));
    var var_3 = Struct_1(-vec4<i32>(_wgslsmith_add_i32(1i, -1i) & min(1i, u_input.a), _wgslsmith_div_i32(var_0, ~var_1.a), func_4(Struct_4(vec3<u32>(19811u, 0u, 0u), global2[_wgslsmith_index_u32(39344u, 30u)], Struct_3(vec3<u32>(1u, 1u, 28263u)), Struct_2(Struct_1(vec4<i32>(var_1.c, var_2.c, -18410i, 1i), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), var_0, vec3<f32>(698f, global1[_wgslsmith_index_u32(4294967295u, 9u)], -1359f), Struct_1(vec4<i32>(-2147483647i, u_input.a, 0i, u_input.a), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), vec4<bool>(false, true, false, false)), true, var_0).x, _wgslsmith_mult_i32(-3951i, var_2.a)), select(vec3<bool>(true, true, true), vec3<bool>(false, -15163i >= var_0, any(vec3<bool>(true, true, true))), select(vec3<bool>(any(vec2<bool>(false, false)), true, true), vec3<bool>(true, true, true), func_2())), vec3<bool>(func_2().x, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~abs(~vec3<u32>(0u, 1u, 4294967295u)), abs(select(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(23913u, 23995u, 4294967295u), vec3<bool>(var_3.b.x, false, var_3.b.x)) >> (vec3<u32>(47008u, 32863u, 30848u) % vec3<u32>(32u)))), global2[_wgslsmith_index_u32(0u, 30u)], _wgslsmith_sub_i32(countOneBits(14688i), _wgslsmith_div_i32(var_2.b >> (29126u % 32u), u_input.a)) | 55545i, -183f, vec2<u32>(11531u, 14355u));
}

