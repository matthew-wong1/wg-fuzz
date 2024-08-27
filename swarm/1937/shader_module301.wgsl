struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<i32, 10> = array<i32, 10>(i32(-2147483648), 37629i, 1i, 15729i, -57635i, -66514i, 23254i, 1i, 0i, 34862i);

var<private> global1: array<vec3<i32>, 16>;

var<private> global2: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true));

var<private> global3: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<i32>(-13285i, 33052i), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(false, false, false), vec2<i32>(-32726i, 0i), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<f32>(-426f, 1799f), Struct_1(vec3<bool>(false, true, false), vec2<i32>(i32(-2147483648), -9590i), vec2<bool>(true, false), vec2<bool>(true, true))), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<i32>(i32(-2147483648), -1i), vec2<bool>(false, false), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, true, true), vec2<i32>(19383i, 3772i), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<f32>(-2339f, -208f), Struct_1(vec3<bool>(true, true, false), vec2<i32>(-1i, 2147483647i), vec2<bool>(true, true), vec2<bool>(false, false))), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<i32>(i32(-2147483648), -1i), vec2<bool>(false, false), vec2<bool>(true, true)), Struct_1(vec3<bool>(false, false, true), vec2<i32>(39285i, 62957i), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<f32>(1670f, 725f), Struct_1(vec3<bool>(false, false, true), vec2<i32>(0i, -1i), vec2<bool>(true, true), vec2<bool>(false, true))), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<i32>(2147483647i, 29742i), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, true, true), vec2<i32>(-1i, -41524i), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<f32>(1768f, 344f), Struct_1(vec3<bool>(true, false, true), vec2<i32>(-1i, 0i), vec2<bool>(true, false), vec2<bool>(false, false))), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_1(vec3<bool>(true, false, false), vec2<i32>(2147483647i, 2147483647i), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<f32>(232f, -266f), Struct_1(vec3<bool>(false, false, false), vec2<i32>(-1i, -46192i), vec2<bool>(false, false), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<i32>(21020i, -17709i), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, true, false), vec2<i32>(-6816i, 0i), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<f32>(334f, 1000f), Struct_1(vec3<bool>(true, false, false), vec2<i32>(i32(-2147483648), 76277i), vec2<bool>(false, true), vec2<bool>(false, false))), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<i32>(0i, -21940i), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, false, false), vec2<i32>(2147483647i, -14955i), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<f32>(814f, 395f), Struct_1(vec3<bool>(true, true, false), vec2<i32>(27508i, 0i), vec2<bool>(true, false), vec2<bool>(false, true))), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<i32>(-51411i, 7221i), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, true, true), vec2<i32>(-1i, -8242i), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<f32>(-1126f, -262f), Struct_1(vec3<bool>(true, false, false), vec2<i32>(-37176i, i32(-2147483648)), vec2<bool>(false, false), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<i32>(i32(-2147483648), 1i), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, false, false), vec2<i32>(4201i, i32(-2147483648)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<f32>(301f, 1388f), Struct_1(vec3<bool>(false, true, true), vec2<i32>(i32(-2147483648), 20136i), vec2<bool>(true, true), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<i32>(-26102i, 10112i), vec2<bool>(true, true), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, false, false), vec2<i32>(2147483647i, -21615i), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<f32>(-2235f, 343f), Struct_1(vec3<bool>(false, true, true), vec2<i32>(20969i, -7843i), vec2<bool>(true, false), vec2<bool>(false, false))), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<i32>(2147483647i, 0i), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, false, true), vec2<i32>(-56647i, -73816i), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<f32>(863f, -959f), Struct_1(vec3<bool>(true, true, false), vec2<i32>(9445i, 18069i), vec2<bool>(false, true), vec2<bool>(false, false))), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<i32>(1615i, 2147483647i), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(true, true, false), vec2<i32>(-12613i, 2147483647i), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<f32>(981f, 940f), Struct_1(vec3<bool>(false, false, true), vec2<i32>(0i, -1657i), vec2<bool>(true, false), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<i32>(i32(-2147483648), -45569i), vec2<bool>(true, false), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, false, true), vec2<i32>(1i, -64284i), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<f32>(1501f, -1293f), Struct_1(vec3<bool>(false, false, false), vec2<i32>(0i, -1i), vec2<bool>(true, false), vec2<bool>(false, true))), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<i32>(-1i, 0i), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, false, true), vec2<i32>(-58990i, 1i), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<f32>(-148f, -107f), Struct_1(vec3<bool>(true, true, true), vec2<i32>(-6290i, -30974i), vec2<bool>(true, true), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<i32>(0i, -97314i), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(true, true, false), vec2<i32>(1i, -24144i), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<f32>(783f, 665f), Struct_1(vec3<bool>(false, true, false), vec2<i32>(-232i, -15159i), vec2<bool>(true, false), vec2<bool>(false, true))), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<i32>(-25976i, 0i), vec2<bool>(true, false), vec2<bool>(false, false)), Struct_1(vec3<bool>(false, false, false), vec2<i32>(35684i, -4391i), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<f32>(1000f, -723f), Struct_1(vec3<bool>(true, false, true), vec2<i32>(-5944i, -4393i), vec2<bool>(false, true), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<i32>(15221i, -35796i), vec2<bool>(false, false), vec2<bool>(false, false)), Struct_1(vec3<bool>(false, false, false), vec2<i32>(17644i, 2147483647i), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<f32>(1734f, 2364f), Struct_1(vec3<bool>(false, false, false), vec2<i32>(3245i, -30831i), vec2<bool>(false, false), vec2<bool>(false, false))), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<i32>(73352i, 0i), vec2<bool>(true, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, true, false), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<f32>(127f, 640f), Struct_1(vec3<bool>(false, false, false), vec2<i32>(-29388i, i32(-2147483648)), vec2<bool>(true, true), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<i32>(-17557i, 52775i), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, false, false), vec2<i32>(11528i, -16784i), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<f32>(1094f, 494f), Struct_1(vec3<bool>(true, false, true), vec2<i32>(-1i, 2147483647i), vec2<bool>(false, false), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<i32>(i32(-2147483648), -23369i), vec2<bool>(false, false), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, true, true), vec2<i32>(60190i, 2147483647i), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<f32>(191f, 897f), Struct_1(vec3<bool>(false, false, false), vec2<i32>(-8888i, -30834i), vec2<bool>(false, false), vec2<bool>(false, false))), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<i32>(-5426i, -16513i), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(true, false, false), vec2<i32>(1i, -3868i), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<f32>(-714f, 563f), Struct_1(vec3<bool>(false, false, false), vec2<i32>(1i, -45690i), vec2<bool>(true, true), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<i32>(15924i, -1i), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, false, true), vec2<i32>(18902i, i32(-2147483648)), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<f32>(1292f, -472f), Struct_1(vec3<bool>(false, false, true), vec2<i32>(2147483647i, -30064i), vec2<bool>(true, false), vec2<bool>(false, false))), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<i32>(1i, -10362i), vec2<bool>(true, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(false, false, false), vec2<i32>(-21806i, 0i), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<f32>(1000f, -1539f), Struct_1(vec3<bool>(false, false, true), vec2<i32>(0i, i32(-2147483648)), vec2<bool>(false, true), vec2<bool>(true, true))), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<i32>(45526i, 18671i), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, true, true), vec2<i32>(-20502i, 46441i), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<f32>(-644f, -1117f), Struct_1(vec3<bool>(true, true, false), vec2<i32>(-9970i, 9180i), vec2<bool>(true, false), vec2<bool>(true, true))), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<i32>(2147483647i, -43127i), vec2<bool>(false, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, true, false), vec2<i32>(-1i, i32(-2147483648)), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<f32>(-378f, 271f), Struct_1(vec3<bool>(false, true, true), vec2<i32>(-60600i, 25481i), vec2<bool>(false, true), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<i32>(-67074i, 2147483647i), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, true, true), vec2<i32>(-1i, 37692i), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<f32>(790f, -1110f), Struct_1(vec3<bool>(false, true, false), vec2<i32>(-23089i, -56551i), vec2<bool>(true, true), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<i32>(61165i, -39562i), vec2<bool>(false, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(true, true, true), vec2<i32>(-15881i, i32(-2147483648)), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<f32>(352f, -812f), Struct_1(vec3<bool>(true, true, false), vec2<i32>(1i, -20496i), vec2<bool>(true, true), vec2<bool>(false, true))), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<i32>(15107i, 6050i), vec2<bool>(false, false), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, false, false), vec2<i32>(-1i, 48569i), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<f32>(-218f, 1451f), Struct_1(vec3<bool>(true, false, true), vec2<i32>(0i, -1i), vec2<bool>(false, true), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<i32>(i32(-2147483648), -1i), vec2<bool>(false, false), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, true, false), vec2<i32>(2147483647i, 18654i), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<f32>(2488f, -1403f), Struct_1(vec3<bool>(false, true, false), vec2<i32>(1i, 1i), vec2<bool>(false, false), vec2<bool>(true, false))), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<i32>(-43614i, 0i), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(true, false, true), vec2<i32>(-2433i, -2482i), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<f32>(310f, -355f), Struct_1(vec3<bool>(false, true, true), vec2<i32>(-1i, 4515i), vec2<bool>(true, true), vec2<bool>(false, true))));

var<private> global4: array<u32, 5> = array<u32, 5>(0u, 7995u, 30585u, 4294967295u, 1u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>) -> vec4<f32> {
    global3 = array<Struct_2, 30>();
    var var_0 = ~global4[_wgslsmith_index_u32(55329u, 5u)];
    var var_1 = !vec3<bool>(true, !(arg_1.x >= select(31415u, u_input.a, true)), true);
    var var_2 = -524f;
    let var_3 = select(select(!vec4<bool>(true, !var_1.x, var_1.x, true), select(vec4<bool>(true, true, true, true), select(!vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, var_1.x), !var_1.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_1.x, true, true), !var_1.x)), all(!(!vec2<bool>(true, var_1.x)))), !select(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), !vec4<bool>(true, false, var_1.x, true), any(select(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(58895u, 5u)], 28u)], global2[_wgslsmith_index_u32(arg_1.x, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)]))), vec4<bool>(all(vec4<bool>(true, false, true, var_1.x)), var_1.x, var_1.x, false));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1267f, 338f, 1263f, -252f), vec4<f32>(-1167f, 831f, 330f, 1584f), var_3)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1852f, 1000f, -734f, 1011f), vec4<f32>(-1115f, -1222f, 1274f, 730f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(344f, 511f, -1554f, -715f))))))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global2 = array<vec3<bool>, 28>();
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_0.d.b, vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(u_input.a, 5u)], global4[_wgslsmith_index_u32(u_input.a, 5u)], u_input.a))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c.x, 903f, 1f, -216f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 546f, -955f, arg_0.c.x)))), vec4<bool>(arg_0.a.d.x, true, arg_0.d.d.x, false))))));
    var var_1 = countOneBits(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 5u)], 5u)]), 5u)], _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a, 0u), ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(45532u, 5u)], 5u)])) >> (_wgslsmith_clamp_u32(~u_input.a, u_input.a, 4294967295u) % 32u));
    return Struct_1(vec3<bool>(select(reverseBits(arg_0.d.b.x) > min(global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)]), false || (2147483647i >= global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(74730u, 5u)], 10u)]), arg_0.d.c.x), !(675f != _wgslsmith_f_op_f32(floor(var_0.x))), true), vec2<i32>(1i, _wgslsmith_mod_i32(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.b.x, 1i, 4746i, arg_0.a.b.x), firstTrailingBit(vec4<i32>(arg_0.a.b.x, arg_0.d.b.x, arg_0.d.b.x, -12475i))))), arg_0.d.c, select(select(arg_0.d.c, arg_0.b.a.zy, arg_0.d.c), select(vec2<bool>(false, any(vec2<bool>(false, arg_0.b.a.x))), select(!vec2<bool>(arg_0.b.d.x, false), arg_0.b.d, true), vec2<bool>(false, true)), select(!(!vec2<bool>(arg_0.b.c.x, arg_0.d.c.x)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, arg_0.d.d.x), select(vec2<bool>(arg_0.d.d.x, true), vec2<bool>(false, arg_0.a.a.x), vec2<bool>(arg_0.a.a.x, arg_0.d.d.x))))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = func_2(Struct_2(Struct_1(arg_0.xww, vec2<i32>(-global0[_wgslsmith_index_u32(21146u, 10u)], _wgslsmith_div_i32(26102i, -17637i)), arg_0.xz, vec2<bool>(arg_0.x != arg_0.x, any(vec2<bool>(false, arg_0.x)))), Struct_1(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-7407i, global0[_wgslsmith_index_u32(14746u, 10u)]), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)]), vec2<i32>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(5615u, 5u)], 5u)], 5u)], 10u)], global0[_wgslsmith_index_u32(44753u, 10u)]))), arg_0.yz, !arg_0.wy), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(319f - -1227f) - -463f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-548f)))), Struct_1(select(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x)), vec3<bool>(true, arg_0.x, true), arg_0.x), -(vec2<i32>(global0[_wgslsmith_index_u32(17235u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]) & vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], 1i)), select(arg_0.xx, !arg_0.yz, vec2<bool>(false, true)), arg_0.xw)));
    let var_1 = global3[_wgslsmith_index_u32(19717u, 30u)];
    let var_2 = global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 30u)];
    var var_3 = 33315u;
    global3 = array<Struct_2, 30>();
    return func_2(Struct_2(var_1.a, Struct_1(vec3<bool>(true, false, true), select(var_0.b, var_2.d.b, var_0.c.x || false), arg_0.wx, arg_0.yz), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.c), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1400f, 1287f)))), Struct_1(vec3<bool>(true, true, true), func_2(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(u_input.a, 5u)], u_input.a, 4294967295u), 30u)]).b, vec2<bool>(var_0.a.x, true), !vec2<bool>(var_2.a.a.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!vec4<bool>(true, true, all(vec2<bool>(true, true)), true));
    var var_1 = 2147483647i;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1108f * 2077f))))) * _wgslsmith_f_op_f32(sign(1319f))));
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    let var_3 = vec4<i32>(global0[_wgslsmith_index_u32(~firstLeadingBit(~(global4[_wgslsmith_index_u32(4294967295u, 5u)] & 4294967295u)), 10u)], 0i, -1i, -var_0.b.x);
    global4 = array<u32, 5>();
    var var_4 = var_0.a.x;
    var var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_u32(abs(vec3<u32>(global4[_wgslsmith_index_u32(u_input.a, 5u)], global4[_wgslsmith_index_u32(u_input.a, 5u)], 39414u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 19285u, global4[_wgslsmith_index_u32(0u, 5u)]), vec3<u32>(global4[_wgslsmith_index_u32(83132u, 5u)], u_input.a, 0u))));
}

