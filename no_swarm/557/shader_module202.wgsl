struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<f32>(-750f, -424f), -25218i, 7142i, 2105u, 0i), Struct_1(vec2<f32>(-128f, 1647f), 57579i, 1i, 1u, -1i), Struct_1(vec2<f32>(605f, -430f), 0i, 5001i, 75582u, i32(-2147483648)), Struct_1(vec2<f32>(-856f, 157f), -1i, i32(-2147483648), 63528u, -1i), Struct_1(vec2<f32>(-386f, 597f), 0i, -38740i, 1u, 0i), Struct_1(vec2<f32>(489f, -121f), i32(-2147483648), 2147483647i, 1u, -1i), Struct_1(vec2<f32>(2585f, -213f), 2147483647i, -1i, 43303u, -48205i), Struct_1(vec2<f32>(141f, 1476f), 2147483647i, i32(-2147483648), 1u, i32(-2147483648)), Struct_1(vec2<f32>(1378f, 1166f), 0i, -10369i, 1u, 1662i), Struct_1(vec2<f32>(418f, 1651f), i32(-2147483648), 0i, 4294967295u, -9278i), Struct_1(vec2<f32>(-402f, -267f), i32(-2147483648), 20077i, 51148u, 1i), Struct_1(vec2<f32>(-121f, 265f), -59536i, -1i, 0u, -1i), Struct_1(vec2<f32>(1000f, -1534f), 12497i, 0i, 38031u, i32(-2147483648)), Struct_1(vec2<f32>(139f, -2069f), -19246i, 17642i, 1u, -1i), Struct_1(vec2<f32>(-841f, -1519f), 0i, -32596i, 1u, 0i), Struct_1(vec2<f32>(-2496f, -1000f), 9269i, 0i, 4294967295u, 36812i), Struct_1(vec2<f32>(-1416f, 1669f), i32(-2147483648), 1i, 10299u, 0i), Struct_1(vec2<f32>(-381f, 158f), -1i, -26360i, 4294967295u, i32(-2147483648)), Struct_1(vec2<f32>(301f, -1131f), 75194i, 1i, 18998u, -48405i), Struct_1(vec2<f32>(-431f, -849f), -22174i, -1i, 55467u, -41945i), Struct_1(vec2<f32>(504f, 1225f), 2147483647i, -1i, 4294967295u, -3024i), Struct_1(vec2<f32>(-120f, -1000f), 1i, 0i, 51701u, 3717i), Struct_1(vec2<f32>(-1129f, -1767f), -23081i, 17643i, 4294967295u, -1i), Struct_1(vec2<f32>(-724f, 660f), i32(-2147483648), -54261i, 4294967295u, 31524i), Struct_1(vec2<f32>(1129f, -566f), -41318i, 0i, 104980u, 19389i), Struct_1(vec2<f32>(-358f, -1050f), -44390i, 28980i, 4294967295u, 15134i), Struct_1(vec2<f32>(1773f, 1474f), -62106i, -10832i, 53141u, 0i), Struct_1(vec2<f32>(-702f, -1447f), 0i, -13911i, 1u, 0i), Struct_1(vec2<f32>(568f, -1313f), -1i, -15171i, 0u, i32(-2147483648)), Struct_1(vec2<f32>(-543f, 2450f), 1i, i32(-2147483648), 0u, 25997i), Struct_1(vec2<f32>(439f, -482f), 63460i, -1i, 53354u, 2147483647i));

var<private> global1: Struct_1 = Struct_1(vec2<f32>(1559f, 416f), 20420i, 0i, 37175u, 0i);

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<f32>(-999f, 1201f), 67483i, -33934i, 1u, -17765i), Struct_1(vec2<f32>(-1354f, -294f), -30549i, 1i, 4294967295u, 2147483647i), Struct_1(vec2<f32>(204f, -683f), 2147483647i, 24098i, 0u, 2147483647i), Struct_1(vec2<f32>(-925f, -1000f), -24837i, 31017i, 4294967295u, -1i), Struct_1(vec2<f32>(-737f, 1259f), -59353i, 71710i, 4294967295u, i32(-2147483648)), Struct_1(vec2<f32>(1293f, 117f), 3606i, 38735i, 74074u, 31354i), Struct_1(vec2<f32>(-641f, 716f), i32(-2147483648), -25456i, 11903u, 16496i), Struct_1(vec2<f32>(178f, 1299f), -1669i, -11439i, 4294967295u, 1640i), Struct_1(vec2<f32>(834f, -345f), 29908i, -1i, 4294967295u, i32(-2147483648)), Struct_1(vec2<f32>(-380f, 813f), 2147483647i, 2147483647i, 36930u, 19641i), Struct_1(vec2<f32>(972f, 645f), 7760i, -1391i, 587u, 2147483647i));

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<f32>(916f, -773f), -1i, 71393i, 2555u, i32(-2147483648)), Struct_1(vec2<f32>(348f, -1034f), 17710i, 1i, 4294967295u, -49164i), Struct_1(vec2<f32>(-705f, 561f), 43901i, -1i, 0u, -11274i), Struct_1(vec2<f32>(-460f, 2234f), 16736i, -33055i, 2419u, i32(-2147483648)), Struct_1(vec2<f32>(-201f, 968f), -1i, 1i, 43780u, 2147483647i), Struct_1(vec2<f32>(-1018f, -129f), -2134i, 36120i, 40781u, 0i), Struct_1(vec2<f32>(-563f, -719f), -1i, -3007i, 10187u, 13111i), Struct_1(vec2<f32>(-485f, -1115f), 1i, -35985i, 67616u, -1i), Struct_1(vec2<f32>(1432f, -828f), 2147483647i, 26235i, 4514u, 19212i), Struct_1(vec2<f32>(2064f, 1000f), 2147483647i, 4913i, 1u, -1i), Struct_1(vec2<f32>(-490f, -1625f), -1i, 46417i, 1u, -22067i), Struct_1(vec2<f32>(-766f, 125f), -1i, -1i, 1u, 2147483647i), Struct_1(vec2<f32>(531f, -2427f), i32(-2147483648), -1i, 12489u, 16702i), Struct_1(vec2<f32>(-1802f, -1008f), -9508i, -30882i, 40498u, 1i), Struct_1(vec2<f32>(-1000f, -1082f), i32(-2147483648), 0i, 2501u, -27518i), Struct_1(vec2<f32>(-348f, 1533f), -1091i, 1i, 721u, 29396i), Struct_1(vec2<f32>(999f, -196f), 6216i, 2147483647i, 1u, 1i), Struct_1(vec2<f32>(3029f, 1139f), i32(-2147483648), 1i, 1821u, -35094i), Struct_1(vec2<f32>(1557f, 1457f), 0i, 22173i, 1u, -1i), Struct_1(vec2<f32>(-571f, -1486f), -3988i, -1i, 26590u, 9829i), Struct_1(vec2<f32>(-978f, -1349f), 1i, 5995i, 1u, 1i), Struct_1(vec2<f32>(1764f, -179f), 0i, 2147483647i, 4294967295u, 1i), Struct_1(vec2<f32>(-1927f, 2551f), -1i, i32(-2147483648), 28057u, i32(-2147483648)), Struct_1(vec2<f32>(310f, -1660f), 42969i, -1i, 0u, 2147483647i));

var<private> global4: f32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> vec2<f32> {
    global1 = global0[_wgslsmith_index_u32(global1.d, 31u)];
    return _wgslsmith_f_op_vec2_f32(exp2(global1.a));
}

fn func_3() -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.d, ~(~firstLeadingBit(u_input.a))), 31u)];
    var var_1 = ~(~0u);
    var var_2 = _wgslsmith_f_op_vec2_f32(var_0.a + _wgslsmith_f_op_vec2_f32(vec2<f32>(110f, global1.a.x) * vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x)));
    let var_3 = vec2<bool>(!all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false))), all(vec4<bool>(!any(vec4<bool>(true, false, true, true)), true, select(true, true, true), true)));
    var var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_div_f32(313f, -651f), -123f, 1914f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-271f, -1524f, var_0.a.x, -1407f) - vec4<f32>(global1.a.x, var_0.a.x, 919f, var_0.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), global1.a.x, var_2.x, var_0.a.x), var_3.x & (abs(global1.e) >= abs(51504i ^ var_0.b))));
    return select(var_3, !var_3, true);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global1.a, _wgslsmith_div_vec2_f32(global1.a, global1.a))), vec2<f32>(-159f, arg_0.a.x)), _wgslsmith_f_op_vec2_f32(func_2())));
    let var_1 = vec3<i32>(abs(2147483647i), ~(-77720i >> (select(u_input.a, 23979u, false) % 32u)), countOneBits(-1i)) ^ (vec3<i32>(-arg_0.c, ~(-1i), arg_0.c) ^ vec3<i32>(_wgslsmith_sub_i32(arg_0.e, 1i), -(~1i), arg_0.b));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -246f))))), _wgslsmith_f_op_f32(floor(arg_0.a.x)))));
    var var_2 = any(select(vec2<bool>(all(vec2<bool>(false, true)) || any(vec3<bool>(false, true, true)), true & any(vec2<bool>(false, true))), select(!func_3(), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), global1.e == global1.e), vec2<bool>(true, true)), vec2<bool>(true, true)));
    let var_3 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(sign(var_0.x)));
    return Struct_1(var_0, -_wgslsmith_mult_i32(47384i, var_1.x), var_1.x, global1.d, (_wgslsmith_sub_i32(global1.c, ~2147483647i) << (_wgslsmith_add_u32(countOneBits(global1.d), 1u) % 32u)) & ~max(global1.e, -22151i));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.a, 24u)];
    global1 = Struct_1(arg_0.a, var_0.b, var_0.c, ~1u, i32(-1i) * -abs(arg_0.e));
    var var_1 = 979f;
    var var_2 = _wgslsmith_f_op_f32(-863f - arg_0.a.x);
    global3 = array<Struct_1, 24>();
    return func_1(func_1(global3[_wgslsmith_index_u32(~u_input.a, 24u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a, ~min(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.e, global1.e, -26114i, 1i), vec4<i32>(0i, global1.b, -2147483647i, 1i)), -8154i), ~global1.b, ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(global1.d, global1.d)), ~vec2<u32>(1976u, 0u)), global1.b);
    var var_0 = func_4(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(925f, global1.a.x) * vec2<f32>(-1037f, global1.a.x)), global1.e, global1.e, u_input.a, -1i << (global1.d % 32u))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a.x)) + global1.a.x))));
    let var_1 = vec4<bool>(!(_wgslsmith_f_op_f32(-1f) >= var_0.a.x), ~_wgslsmith_add_i32(~(-22494i), 1i) >= ~global1.b, any(!vec2<bool>(0u == var_0.d, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(252f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(abs(global1.a.x)), true))) < 1381f);
    global0 = array<Struct_1, 31>();
    global3 = array<Struct_1, 24>();
    global0 = array<Struct_1, 31>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(var_0.a)), min(-1i, global1.e), global1.e, 59927u >> (u_input.a % 32u), ~var_0.c >> (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-860f, vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.d, u_input.a, 4294967295u), ~vec3<u32>(0u, 73594u, 4294967295u)), 1u, ~abs(_wgslsmith_add_u32(u_input.a, var_0.d))), vec4<u32>((_wgslsmith_clamp_u32(u_input.a, 0u, 1u) << (17905u % 32u)) & reverseBits(_wgslsmith_mod_u32(0u, global1.d)), abs(~4294967295u), 4294967295u, 36837u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, var_0.a.x, var_0.a.x) - vec3<f32>(317f, -458f, 319f)), vec3<f32>(-1327f, global1.a.x, 104f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(918f)), _wgslsmith_f_op_f32(ceil(-316f)), _wgslsmith_f_op_f32(round(-146f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_2.a.x, -106f) - vec3<f32>(global1.a.x, -2128f, 404f))))), ~_wgslsmith_mod_vec3_u32(~countOneBits(vec3<u32>(global1.d, var_0.d, 28425u)), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(var_0.d, var_2.d, 71584u)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, var_0.d), vec3<u32>(var_0.d, 28198u, var_0.d)))));
}

