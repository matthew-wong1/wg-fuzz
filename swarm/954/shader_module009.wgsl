struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<bool>(true, false), vec2<f32>(-1186f, 2433f), vec4<f32>(-647f, 498f, 479f, -403f), vec3<i32>(4353i, 2147483647i, 2147483647i)), Struct_1(vec2<bool>(true, true), vec2<f32>(1175f, 448f), vec4<f32>(-646f, 665f, -1052f, -1531f), vec3<i32>(-43596i, 42368i, 27031i)), Struct_1(vec2<bool>(true, true), vec2<f32>(-899f, 178f), vec4<f32>(-755f, -796f, 1288f, -660f), vec3<i32>(61316i, i32(-2147483648), -21201i)), Struct_1(vec2<bool>(true, false), vec2<f32>(-1062f, 600f), vec4<f32>(-2451f, 806f, -985f, 776f), vec3<i32>(2147483647i, 62614i, 12887i)), Struct_1(vec2<bool>(true, true), vec2<f32>(1000f, -307f), vec4<f32>(537f, 1568f, -573f, 494f), vec3<i32>(-61745i, 2147483647i, 2147483647i)), Struct_1(vec2<bool>(false, true), vec2<f32>(1156f, -1208f), vec4<f32>(-353f, -359f, 295f, 1121f), vec3<i32>(-56919i, -12268i, 9398i)), Struct_1(vec2<bool>(false, false), vec2<f32>(-1073f, 551f), vec4<f32>(1000f, 1472f, 1081f, 877f), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), vec2<f32>(-493f, -1000f), vec4<f32>(1190f, -747f, -1000f, 431f), vec3<i32>(0i, 2147483647i, 2484i)), Struct_1(vec2<bool>(true, false), vec2<f32>(-969f, -120f), vec4<f32>(1863f, -251f, -1823f, -307f), vec3<i32>(-53361i, 0i, -1i)), Struct_1(vec2<bool>(false, false), vec2<f32>(995f, 2129f), vec4<f32>(725f, -1318f, 333f, -1404f), vec3<i32>(-48375i, 36518i, 13800i)), Struct_1(vec2<bool>(false, true), vec2<f32>(1512f, 1667f), vec4<f32>(-1000f, -213f, -1000f, -1663f), vec3<i32>(2147483647i, -37947i, 2147483647i)), Struct_1(vec2<bool>(false, true), vec2<f32>(653f, -1000f), vec4<f32>(1080f, 757f, 1057f, 828f), vec3<i32>(-10257i, 2147483647i, 28700i)), Struct_1(vec2<bool>(true, false), vec2<f32>(-586f, -1664f), vec4<f32>(-1270f, 1028f, 682f, 606f), vec3<i32>(i32(-2147483648), 31554i, -9484i)), Struct_1(vec2<bool>(false, true), vec2<f32>(590f, -739f), vec4<f32>(-1275f, -919f, 323f, -661f), vec3<i32>(-1i, -1i, 49743i)), Struct_1(vec2<bool>(true, true), vec2<f32>(-1301f, -975f), vec4<f32>(-670f, -216f, 1431f, 507f), vec3<i32>(39075i, 0i, 0i)), Struct_1(vec2<bool>(true, false), vec2<f32>(194f, -956f), vec4<f32>(-1000f, 344f, -105f, 833f), vec3<i32>(i32(-2147483648), 0i, 31315i)), Struct_1(vec2<bool>(false, true), vec2<f32>(-204f, -505f), vec4<f32>(-789f, 1922f, -563f, -623f), vec3<i32>(-1i, 2147483647i, 2147483647i)), Struct_1(vec2<bool>(false, true), vec2<f32>(535f, -660f), vec4<f32>(119f, 374f, -242f, -371f), vec3<i32>(0i, 2147483647i, 2588i)), Struct_1(vec2<bool>(true, false), vec2<f32>(1000f, 287f), vec4<f32>(-923f, 729f, -679f, 648f), vec3<i32>(0i, -1i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), vec2<f32>(-212f, 1000f), vec4<f32>(879f, -430f, 1444f, 759f), vec3<i32>(0i, -14223i, 6318i)), Struct_1(vec2<bool>(true, true), vec2<f32>(205f, -700f), vec4<f32>(463f, -1829f, -1000f, 1550f), vec3<i32>(1i, -32002i, -1581i)), Struct_1(vec2<bool>(true, false), vec2<f32>(-615f, 1000f), vec4<f32>(1960f, 368f, 1000f, -1000f), vec3<i32>(-13042i, -1i, -34178i)));

var<private> global2: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(Struct_1(vec2<bool>(false, true), vec2<f32>(205f, 440f), vec4<f32>(932f, -563f, -406f, -1251f), vec3<i32>(23569i, i32(-2147483648), -22247i)), 0u, vec3<u32>(1u, 1u, 73380u), 23972u, 4294967295u));

var<private> global3: Struct_3 = Struct_3(Struct_1(vec2<bool>(false, false), vec2<f32>(405f, -559f), vec4<f32>(-337f, 912f, -2175f, 1000f), vec3<i32>(7319i, 5038i, -6012i)), 0u, vec3<u32>(48682u, 34326u, 1u), 1u, 53690u);

var<private> global4: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(trunc(-1458f));
    global1 = array<Struct_1, 22>();
    var var_1 = select(select(select(!select(vec4<bool>(global0.x, true, false, arg_1), vec4<bool>(arg_1, false, false, global0.x), vec4<bool>(false, false, global4.x, global4.x)), select(!vec4<bool>(false, false, arg_1, global0.x), select(vec4<bool>(false, arg_3.a.a.x, arg_3.a.a.x, false), vec4<bool>(true, global3.a.a.x, true, false), vec4<bool>(true, arg_3.a.a.x, false, global3.a.a.x)), select(vec4<bool>(false, global3.a.a.x, false, true), vec4<bool>(true, arg_0.a.a.x, true, false), vec4<bool>(arg_0.a.a.x, true, true, true))), !(!vec4<bool>(arg_1, arg_3.a.a.x, arg_3.a.a.x, arg_3.a.a.x))), vec4<bool>(true, select(true, true, arg_3.c < arg_0.a.d.x), !arg_1, true), select(vec4<bool>(global3.a.a.x, !arg_0.a.a.x, false, arg_3.a.a.x), select(select(vec4<bool>(global3.a.a.x, arg_0.a.a.x, true, global0.x), vec4<bool>(true, true, false, false), global4.x), vec4<bool>(true, true, true, global4.x), arg_0.a.a.x), true)), select(vec4<bool>(!select(arg_1, global3.a.a.x, arg_0.a.a.x), false, true, true), vec4<bool>(arg_3.a.a.x | any(vec3<bool>(arg_3.a.a.x, arg_0.a.a.x, arg_0.a.a.x)), global3.a.a.x, select(true, true, 9343i > global3.a.d.x), global3.a.a.x), select(select(select(vec4<bool>(true, true, false, arg_3.a.a.x), vec4<bool>(true, global4.x, true, true), arg_0.a.a.x), !vec4<bool>(arg_0.a.a.x, arg_3.a.a.x, arg_1, arg_1), all(vec3<bool>(global3.a.a.x, true, false))), select(select(vec4<bool>(arg_1, arg_0.a.a.x, true, true), vec4<bool>(true, arg_3.a.a.x, true, false), global3.a.a.x), select(vec4<bool>(true, true, true, global0.x), vec4<bool>(global0.x, true, true, true), true), global3.a.a.x & global4.x), any(vec3<bool>(true, arg_0.a.a.x, arg_1)))), true);
    var var_2 = var_1.x;
    global3 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global3.c.x, ~arg_2), 1u)];
    return vec4<bool>(global4.x, true, all(select(vec2<bool>(true, true), vec2<bool>(global3.a.d.x >= 31700i, arg_3.a.c.x >= -544f), (global3.a.d.x <= 477i) | (-542f < var_0))), true);
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-722f)), _wgslsmith_f_op_f32(-arg_1.c.a.c.x), _wgslsmith_f_op_f32(arg_1.c.a.b.x + 580f), _wgslsmith_f_op_f32(step(627f, -1056f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-537f, 116f, global3.a.b.x, 1304f) * arg_1.a.c) + vec4<f32>(arg_1.a.b.x, -1906f, global3.a.b.x, arg_1.a.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-global3.a.b.x), _wgslsmith_f_op_f32(sign(global3.a.c.x)), global3.a.b.x, _wgslsmith_div_f32(1378f, 1284f))))));
    global2 = array<Struct_3, 1>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1674f, global3.a.c.x, global3.a.b.x, 669f)) + vec4<f32>(global3.a.c.x, 1353f, 501f, -367f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global3.a.c, global3.a.c)));
    var var_2 = arg_1.a.c;
    global1 = array<Struct_1, 22>();
    return select(select(vec3<bool>(!(!arg_0), (global3.b > 0u) && false, select(!arg_1.a.a.x, global3.a.a.x, arg_1.c.a.a.x)), select(!select(vec3<bool>(arg_0, true, false), vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, global4.x, global0.x)), !select(vec3<bool>(true, arg_1.a.a.x, global4.x), vec3<bool>(arg_0, arg_0, true), arg_1.c.a.a.x), !func_3(arg_1.b, global3.a.a.x, 4294967295u, Struct_2(Struct_1(global4.zz, vec2<f32>(-387f, arg_1.c.a.c.x), vec4<f32>(var_2.x, var_0.x, 729f, var_0.x), vec3<i32>(-35304i, -2147483647i, global3.a.d.x)), 7422i, global3.a.d.x)).yyx), arg_0 | !(!arg_0)), !vec3<bool>(true & arg_0, false, (2244u >= arg_1.c.d) && (2147483647i != global3.a.d.x)), func_3(Struct_2(global3.a, global3.a.d.x, reverseBits(abs(-1i))), !global0.x, _wgslsmith_div_u32(firstLeadingBit(~1u), 0u ^ ~arg_1.c.b), Struct_2(Struct_1(!global4.zy, _wgslsmith_f_op_vec2_f32(select(global3.a.b, vec2<f32>(312f, 1899f), false)), global3.a.c, _wgslsmith_mult_vec3_i32(arg_1.c.a.d, vec3<i32>(u_input.a.x, 1i, global3.a.d.x))), -arg_1.a.d.x, select(-global3.a.d.x, global3.a.d.x, false))).ywx);
}

fn func_2() -> Struct_1 {
    global0 = !select(vec2<bool>(global4.x, _wgslsmith_mod_u32(33203u, global3.c.x) < _wgslsmith_sub_u32(global3.b, 20679u)), global4.yz, vec2<bool>(any(!vec4<bool>(global3.a.a.x, false, true, global3.a.a.x)), true && global3.a.a.x));
    global4 = select(func_4(any(select(vec4<bool>(false, false, true, true), vec4<bool>(global0.x, global4.x, global0.x, true), func_3(Struct_2(global3.a, u_input.a.x, u_input.a.x), global4.x, 0u, Struct_2(global1[_wgslsmith_index_u32(1u, 22u)], -17968i, u_input.a.x)))), Struct_4(Struct_1(select(global4.zx, vec2<bool>(false, true), false), global3.a.c.yw, global3.a.c, global3.a.d), Struct_2(Struct_1(vec2<bool>(global3.a.a.x, global0.x), global3.a.c.xw, vec4<f32>(-192f, global3.a.b.x, global3.a.b.x, global3.a.c.x), vec3<i32>(-50466i, 2147483647i, u_input.a.x)), ~(-15758i), min(-1i, -1i)), global2[_wgslsmith_index_u32(~(global3.e & 4294967295u), 1u)])), vec3<bool>(!(_wgslsmith_f_op_f32(-global3.a.b.x) >= -1043f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.a.b.x - global3.a.c.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-984f, -491f)), global3.a.a.x), !(!(!func_4(global4.x, Struct_4(Struct_1(vec2<bool>(true, global4.x), vec2<f32>(-1345f, 1173f), global3.a.c, vec3<i32>(-48427i, u_input.a.x, global3.a.d.x)), Struct_2(global3.a, global3.a.d.x, global3.a.d.x), Struct_3(Struct_1(vec2<bool>(false, false), global3.a.c.xw, global3.a.c, u_input.a.www), global3.c.x, vec3<u32>(0u, global3.c.x, global3.b), 0u, global3.b))))));
    global1 = array<Struct_1, 22>();
    global4 = func_3(Struct_2(Struct_1(func_3(Struct_2(Struct_1(global3.a.a, vec2<f32>(1140f, global3.a.c.x), vec4<f32>(global3.a.c.x, global3.a.b.x, -914f, 104f), global3.a.d), 65247i, 5590i), all(vec3<bool>(global4.x, true, global4.x)), 88993u, Struct_2(Struct_1(vec2<bool>(false, global3.a.a.x), vec2<f32>(-2540f, global3.a.b.x), global3.a.c, vec3<i32>(0i, global3.a.d.x, u_input.a.x)), u_input.a.x, -1i)).yx, vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, -1395f)), _wgslsmith_f_op_f32(f32(-1f) * -1521f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, global3.a.c.x, global3.a.b.x, global3.a.c.x)))), vec3<i32>(u_input.a.x, u_input.a.x, -22996i) << (~global3.c % vec3<u32>(32u))), 2147483647i, 40793i), true, 4294967295u, Struct_2(Struct_1(global4.zx, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.a.c.x, global3.a.b.x))), global3.a.c, ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), reverseBits(-7036i), abs(1i))).xzz;
    var var_0 = global1[_wgslsmith_index_u32(~4294967295u, 22u)];
    return global3.a;
}

fn func_5(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    let var_0 = ~vec4<u32>(_wgslsmith_mult_u32(arg_0.c.e, global3.c.x), ~12712u, arg_0.c.e << (4294967295u % 32u), 0u);
    let var_1 = arg_0;
    var var_2 = var_1.a;
    var var_3 = vec3<bool>(true, true, true);
    let var_4 = u_input.a;
    return Struct_1(arg_0.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(547f, var_1.c.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-736f))))), var_2.c, ~(~reverseBits(_wgslsmith_div_vec3_i32(var_2.d, var_1.b.a.d))));
}

fn func_1() -> Struct_2 {
    global3 = Struct_3(func_5(Struct_4(global3.a, Struct_2(func_2(), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), global3.a.d.x), global2[_wgslsmith_index_u32(global3.c.x, 1u)]), u_input.a.yz, min(_wgslsmith_mult_i32(-2147483647i, u_input.a.x) | ~global3.a.d.x, -1i)), ~(~global3.c.x), global3.c, _wgslsmith_mult_u32(global3.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 1u) >> (max(vec3<u32>(global3.d, global3.d, 4294967295u), vec3<u32>(4294967295u, global3.c.x, global3.c.x)) % vec3<u32>(32u)), max(vec3<u32>(74600u, 4294967295u, global3.c.x), global3.c) | _wgslsmith_sub_vec3_u32(vec3<u32>(global3.c.x, global3.c.x, 45451u), vec3<u32>(global3.b, global3.c.x, 74612u)))), ~4294967295u);
    global1 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_f_op_f32(-842f + global3.a.c.x);
    let var_1 = Struct_2(func_2(), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, -1i), global3.a.d.x) >> (min(4294967295u, 4294967295u) % 32u), u_input.a.x & (3438i >> (1u % 32u)));
    global0 = select(vec2<bool>(var_1.a.a.x, global0.x), !func_5(Struct_4(func_5(Struct_4(Struct_1(var_1.a.a, global3.a.b, vec4<f32>(1346f, var_0, global3.a.c.x, -1207f), vec3<i32>(global3.a.d.x, -11769i, global3.a.d.x)), Struct_2(global3.a, var_1.b, -40618i), Struct_3(var_1.a, 15765u, vec3<u32>(global3.b, global3.d, 10218u), global3.b, 13246u)), u_input.a.yx, var_1.b), var_1, Struct_3(Struct_1(global3.a.a, var_1.a.b, vec4<f32>(-529f, 672f, -1340f, -1000f), vec3<i32>(64187i, var_1.b, var_1.c)), 4294967295u, vec3<u32>(0u, global3.d, 4294967295u), global3.e, global3.e)), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 1i) >> (vec2<u32>(global3.b, global3.c.x) % vec2<u32>(32u)), vec2<i32>(var_1.c, var_1.c) << (global3.c.xx % vec2<u32>(32u))), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-23306i, 6165i, -74941i, u_input.a.x)) ^ -6375i).a, func_3(Struct_2(Struct_1(vec2<bool>(true, global0.x), vec2<f32>(636f, -289f), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.c.x, -611f, 871f, -852f), vec4<f32>(var_1.a.b.x, 366f, var_0, global3.a.b.x)), -vec3<i32>(u_input.a.x, 1i, global3.a.d.x)), 20646i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_1.c, 0i), 28218i, var_1.b ^ -1i)), _wgslsmith_f_op_f32(min(global3.a.c.x, 2053f)) != -118f, _wgslsmith_clamp_u32(global3.b, 0u, ~global3.b), var_1).x);
    return Struct_2(global3.a, firstTrailingBit(0i), 8933i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = u_input.a.x;
    let var_2 = Struct_2(Struct_1(vec2<bool>(global4.x, true), _wgslsmith_f_op_vec2_f32(global3.a.c.yx + var_0.a.c.zy), _wgslsmith_f_op_vec4_f32(-var_0.a.c), -select(global3.a.d, u_input.a.xzz, false) << (global3.c % vec3<u32>(32u))), 6508i, _wgslsmith_div_i32(select(_wgslsmith_mod_i32(u_input.a.x, 0i), reverseBits(-2147483647i), var_0.a.a.x | true), firstTrailingBit(1i)) ^ 1i);
    let var_3 = abs(-(vec4<i32>(-1i) * -u_input.a)) << (~(select(~vec4<u32>(global3.e, 30227u, 0u, global3.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 31481u, 1u, global3.d), vec4<u32>(global3.e, 1u, 26532u, 4294967295u)), global0.x) >> (~(~vec4<u32>(82572u, 0u, 25522u, global3.b)) % vec4<u32>(32u))) % vec4<u32>(32u));
    global1 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(53353u, firstLeadingBit(_wgslsmith_sub_vec2_u32(global3.c.zx, global3.c.zz)), ~_wgslsmith_clamp_u32(~(~54432u), ~global3.b, 1u), abs(max(select(global3.c.xy, global3.c.zx, global0.x), vec2<u32>(68618u, 16631u)) ^ ~vec2<u32>(global3.c.x, global3.c.x)));
}

