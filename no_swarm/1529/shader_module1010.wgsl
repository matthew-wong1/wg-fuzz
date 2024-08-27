struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, false, false, false, true, true, true, true, false, false, true, false, true, true, false, false, false, true, true, true, true, true, false, false, true);

var<private> global1: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-1110f, 1139f, 165f), vec3<f32>(1000f, 1256f, -162f), vec3<f32>(-1952f, -525f, -1000f), vec3<f32>(1390f, 978f, 461f));

var<private> global2: Struct_3 = Struct_3(vec2<bool>(true, true), Struct_2(vec4<i32>(2147483647i, -1i, 1i, -51342i), vec2<i32>(35418i, 2147483647i), vec2<bool>(true, true)), 23003i);

var<private> global3: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(6175i, 13901i, 9220i, 0i), vec4<i32>(38998i, 2147483647i, -1i, -13787i), vec4<i32>(0i, 2147483647i, 0i, 2147483647i), vec4<i32>(41425i, 1i, -6860i, 17527i), vec4<i32>(1i, 2147483647i, -1i, -31651i), vec4<i32>(-8906i, -52160i, 42128i, -32470i), vec4<i32>(-1i, 0i, 0i, 1i), vec4<i32>(47095i, -44169i, 20802i, -69573i), vec4<i32>(-43646i, -1i, 28427i, 76382i), vec4<i32>(-38064i, i32(-2147483648), 1i, 2350i), vec4<i32>(0i, 32432i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, 1i, 37832i, -21834i), vec4<i32>(1i, -2539i, 2147483647i, 1i), vec4<i32>(-1i, 0i, -25006i, -55906i), vec4<i32>(-1i, 67851i, 2147483647i, 32454i), vec4<i32>(-98428i, 0i, -1i, 1i), vec4<i32>(40483i, i32(-2147483648), 4951i, 2147483647i));

var<private> global4: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec2<bool>(false, true), Struct_2(vec4<i32>(-7891i, 0i, 2147483647i, 1i), vec2<i32>(0i, 2147483647i), vec2<bool>(true, false)), -1i), Struct_3(vec2<bool>(true, false), Struct_2(vec4<i32>(-25665i, 45066i, -33374i, -1i), vec2<i32>(-20258i, -53896i), vec2<bool>(false, true)), 1i), Struct_3(vec2<bool>(true, false), Struct_2(vec4<i32>(-30557i, -1i, 17244i, 1i), vec2<i32>(1i, 34307i), vec2<bool>(true, false)), -6394i), Struct_3(vec2<bool>(false, false), Struct_2(vec4<i32>(-30898i, -5303i, -33253i, 0i), vec2<i32>(-37909i, 24957i), vec2<bool>(true, true)), i32(-2147483648)), Struct_3(vec2<bool>(true, false), Struct_2(vec4<i32>(0i, 2147483647i, i32(-2147483648), -1i), vec2<i32>(0i, -3889i), vec2<bool>(true, false)), 2147483647i), Struct_3(vec2<bool>(true, false), Struct_2(vec4<i32>(-7343i, -30599i, -52534i, -1i), vec2<i32>(i32(-2147483648), -22539i), vec2<bool>(false, false)), 2147483647i), Struct_3(vec2<bool>(false, false), Struct_2(vec4<i32>(45799i, i32(-2147483648), 1i, 15398i), vec2<i32>(42966i, 0i), vec2<bool>(true, true)), -57639i), Struct_3(vec2<bool>(false, false), Struct_2(vec4<i32>(-1i, -1i, -4169i, 39199i), vec2<i32>(2147483647i, 15163i), vec2<bool>(true, false)), -2560i), Struct_3(vec2<bool>(true, false), Struct_2(vec4<i32>(-1i, i32(-2147483648), 41491i, -28754i), vec2<i32>(-33642i, 0i), vec2<bool>(true, false)), 19999i), Struct_3(vec2<bool>(true, false), Struct_2(vec4<i32>(0i, 48958i, i32(-2147483648), -70638i), vec2<i32>(-21793i, -16693i), vec2<bool>(true, false)), 1i), Struct_3(vec2<bool>(true, true), Struct_2(vec4<i32>(-9074i, 2147483647i, 1i, -25591i), vec2<i32>(66983i, 36968i), vec2<bool>(true, false)), -65333i), Struct_3(vec2<bool>(true, false), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), -3657i, 70731i), vec2<i32>(64867i, -628i), vec2<bool>(true, false)), i32(-2147483648)), Struct_3(vec2<bool>(true, true), Struct_2(vec4<i32>(2147483647i, 49958i, -35927i, 33598i), vec2<i32>(-4873i, 1i), vec2<bool>(true, true)), -12039i), Struct_3(vec2<bool>(false, false), Struct_2(vec4<i32>(1i, 30303i, i32(-2147483648), 2147483647i), vec2<i32>(-12313i, 2147483647i), vec2<bool>(true, false)), 54326i), Struct_3(vec2<bool>(false, true), Struct_2(vec4<i32>(-54728i, -1i, i32(-2147483648), 1i), vec2<i32>(-72891i, 0i), vec2<bool>(false, true)), -77503i), Struct_3(vec2<bool>(false, true), Struct_2(vec4<i32>(-1i, -17484i, -1i, -1i), vec2<i32>(1i, 1i), vec2<bool>(true, true)), -40934i), Struct_3(vec2<bool>(true, false), Struct_2(vec4<i32>(-14661i, 0i, 0i, 0i), vec2<i32>(2147483647i, 8303i), vec2<bool>(false, true)), 2147483647i), Struct_3(vec2<bool>(true, true), Struct_2(vec4<i32>(13920i, -27485i, -1i, 41470i), vec2<i32>(39184i, 2147483647i), vec2<bool>(false, true)), 19673i), Struct_3(vec2<bool>(true, true), Struct_2(vec4<i32>(31469i, 2147483647i, -1i, 1i), vec2<i32>(i32(-2147483648), 3648i), vec2<bool>(false, false)), 7419i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: f32) -> u32 {
    global2 = Struct_3(select(vec2<bool>(all(!vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 25u)], global2.b.c.x)), -3025f <= arg_0), vec2<bool>(true, true), any(vec3<bool>(global2.a.x || true, arg_1.c.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(87930u, 33063u), 25u)]))), arg_1, ~30801i);
    var var_0 = abs(firstLeadingBit(arg_1.b));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(trunc(-232f));
    var var_3 = min(firstLeadingBit(1u), 14175u);
    return 94707u;
}

fn func_4(arg_0: Struct_3) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(1u, 1u), 1u), abs(firstLeadingBit(vec2<u32>(~1u, 1u))));
    global3 = array<vec4<i32>, 17>();
    global4 = array<Struct_3, 19>();
    return -240f;
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    global2 = global4[_wgslsmith_index_u32(0u, 19u)];
    let var_0 = -1728f;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, 983f)))), _wgslsmith_div_vec2_f32(vec2<f32>(220f, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(785f, 344f))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1633f * var_0), var_0)), 316f));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(func_4(global4[_wgslsmith_index_u32(func_3(var_0, Struct_2(vec4<i32>(u_input.a, 4842i, u_input.a, -2147483647i), global2.b.a.wx, arg_0.yy), -764f), 19u)]))))), ~vec4<u32>(19039u, ~80928u, 1u, 1u), ~vec3<u32>(52092u, 1u, ~reverseBits(31416u)));
    var var_3 = vec4<bool>(arg_0.x, 20597u > _wgslsmith_mod_u32(12482u, ~var_2.c.x << (firstLeadingBit(var_2.c.x) % 32u)), (u_input.a << (var_2.b.x % 32u)) != global2.b.a.x, true);
    return 1u;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_3) -> u32 {
    let var_0 = arg_2.b;
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(1357f * -863f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-331f)))), vec4<u32>(arg_1.x, arg_0.c.x, 4294967295u, func_2(vec3<bool>(arg_2.b.c.x, true, global0[_wgslsmith_index_u32(arg_0.b.x, 25u)] & var_0.c.x))), vec3<u32>(~_wgslsmith_div_u32(~arg_1.x, func_3(951f, Struct_2(vec4<i32>(30177i, -17974i, u_input.a, -2118i), var_0.b, vec2<bool>(true, arg_2.b.c.x)), -672f)), ~(_wgslsmith_div_u32(5505u, arg_0.b.x) | ~4294967295u), 4294967295u));
    let var_2 = Struct_1(vec2<f32>(-1253f, -2077f), ~vec4<u32>(~_wgslsmith_sub_u32(101039u, 0u), arg_1.x, _wgslsmith_mod_u32(func_3(arg_0.a.x, global2.b, arg_0.a.x), ~0u), _wgslsmith_clamp_u32(~78280u, reverseBits(var_1.b.x), var_1.c.x)), ~arg_1);
    global1 = array<vec3<f32>, 4>();
    let var_3 = global4[_wgslsmith_index_u32(~arg_0.b.x, 19u)];
    return ~(~var_1.c.x ^ 0u);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(false || arg_2.a.x, false, all(vec2<bool>(true, false))), true), vec3<bool>(arg_1 > 0i, select(!arg_2.a.x, arg_1 < 31912i, true), global0[_wgslsmith_index_u32(arg_0.c.x, 25u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(abs(4294967295u), 25u)])), vec3<bool>(global0[_wgslsmith_index_u32(func_2(vec3<bool>(arg_0.a.x != arg_0.a.x, all(vec4<bool>(true, arg_2.a.x, arg_2.b.c.x, arg_3.b.c.x)), arg_2.b.c.x)), 25u)], false, !arg_2.a.x), vec3<bool>(true | all(vec3<bool>(false, false, arg_3.a.x)), !all(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.c.x, 25u)], true, arg_2.b.c.x, true), vec4<bool>(global2.a.x, arg_3.b.c.x, arg_2.a.x, false), vec4<bool>(global2.b.c.x, arg_2.a.x, global0[_wgslsmith_index_u32(arg_0.c.x, 25u)], false))), all(select(!vec3<bool>(arg_3.a.x, global0[_wgslsmith_index_u32(arg_0.c.x, 25u)], arg_3.a.x), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, arg_2.b.c.x, false), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 25u)], true))))));
    let var_1 = arg_2;
    global4 = array<Struct_3, 19>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(0u), ~arg_0.b.x, _wgslsmith_add_u32(arg_0.b.x, 1u)) & abs(_wgslsmith_dot_vec3_u32(arg_0.b.zxw, vec3<u32>(1u, 1u, arg_0.c.x))), 4u)], vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -416f), _wgslsmith_f_op_f32(sign(arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-176f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.a.x, -327f, arg_0.a.x)))))));
    let var_3 = var_2.x;
    return select(-(~abs(arg_3.b.a)), var_1.b.a, !(!vec4<bool>(arg_3.b.c.x, false, true, false)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(select(!(!arg_1.c), global2.b.c, -15897i >= global2.b.a.x), arg_1, _wgslsmith_dot_vec2_i32(global2.b.b & func_5(arg_0, -27907i, Struct_3(global2.b.c, arg_1, arg_1.b.x), global4[_wgslsmith_index_u32(arg_0.b.x ^ 55035u, 19u)]).yy, arg_1.a.yz));
    global2 = Struct_3(select(vec2<bool>(true, true), vec2<bool>(select(false, var_0.b.c.x, !global2.a.x), !any(vec4<bool>(false, true, global0[_wgslsmith_index_u32(arg_0.b.x, 25u)], false))), all(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 25u)] == global0[_wgslsmith_index_u32(arg_0.c.x, 25u)], !var_0.a.x))), Struct_2(-min(var_0.b.a, -var_0.b.a), _wgslsmith_mod_vec2_i32(vec2<i32>(-96324i, 2147483647i), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(13602i, u_input.a)), vec2<i32>(u_input.a, 27901i) | vec2<i32>(global2.b.b.x, 37131i), min(var_0.b.b, global2.b.b))), global2.b.c), ~2147483647i);
    global2 = global4[_wgslsmith_index_u32(0u, 19u)];
    global1 = array<vec3<f32>, 4>();
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(global1[_wgslsmith_index_u32(arg_0.b.x, 4u)]));
    return Struct_2(vec4<i32>(-1i) * -countOneBits(global3[_wgslsmith_index_u32(1u, 17u)] | vec4<i32>(18632i, u_input.a, 10961i, u_input.a)), _wgslsmith_mod_vec2_i32(~arg_1.a.zz, abs(arg_1.b)), vec2<bool>(all(select(!vec4<bool>(global2.b.c.x, true, global2.a.x, false), select(vec4<bool>(false, global2.a.x, arg_1.c.x, false), vec4<bool>(true, global2.b.c.x, true, var_0.a.x), vec4<bool>(true, false, true, var_0.a.x)), vec4<bool>(global2.b.c.x, true, arg_1.c.x, arg_1.c.x))), true));
}

fn func_7(arg_0: Struct_2) -> vec3<bool> {
    global3 = array<vec4<i32>, 17>();
    let var_0 = global4[_wgslsmith_index_u32(0u, 19u)];
    var var_1 = global4[_wgslsmith_index_u32(88533u, 19u)];
    var var_2 = vec2<bool>(-762f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-557f + _wgslsmith_f_op_f32(f32(-1f) * -2863f)), _wgslsmith_f_op_f32(301f * -1917f), any(vec3<bool>(var_0.b.c.x, true, var_1.b.c.x)))), 26240i <= ~(i32(-1i) * -var_0.b.b.x));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -843f), _wgslsmith_f_op_f32(func_4(Struct_3(global2.a, Struct_2(vec4<i32>(var_1.b.a.x, 1i, global2.b.a.x, -300i), var_0.b.b, var_1.a), var_0.b.b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1428f, -1739f), vec2<f32>(-1000f, -391f)) - _wgslsmith_div_vec2_f32(vec2<f32>(161f, -458f), vec2<f32>(-122f, 413f)))) - vec2<f32>(1f, 1f)), vec4<u32>(select(0u, 1u, false), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec4<u32>(0u, 19377u, 0u, 0u))), abs(0u)), max(max(1u, 1u), abs(1u)), _wgslsmith_div_u32(1u, 1u)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~31732u, 50476u, 0u), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(54276u, 4294967295u, 1u)), vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(82605u, 1u, 4294967295u)), abs(~reverseBits(vec3<u32>(18625u, 0u, 1u)))));
    return !vec3<bool>(true, false, select(false, false, global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(func_4(global4[_wgslsmith_index_u32(53391u, 19u)])), func_6(var_3, Struct_2(vec4<i32>(global2.b.a.x, -1i, var_0.b.a.x, -1i), vec2<i32>(global2.b.b.x, arg_0.a.x), arg_0.c)), var_3.a.x), 25u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u >> ((0u & _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 20648u)), ~vec2<u32>(17735u, 74606u))) % 32u), _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(reverseBits(min(13244u, 4294967295u)), 4294967295u), 1u)), 17u)];
    global1 = array<vec3<f32>, 4>();
    global0 = array<bool, 25>();
    global1 = array<vec3<f32>, 4>();
    let var_1 = func_7(func_6(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 180f), vec2<f32>(-638f, 542f))), ~select(vec4<u32>(1u, 6846u, 29563u, 48137u), vec4<u32>(5395u, 31665u, 1u, 1u), true), ~(~vec3<u32>(72822u, 1u, 4294967295u))), Struct_2(func_5(Struct_1(vec2<f32>(-853f, -918f), vec4<u32>(4294967295u, 4294967295u, 61900u, 148569u), vec3<u32>(0u, 0u, 70509u)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, 18995i), var_0.www), global4[_wgslsmith_index_u32(func_1(Struct_1(vec2<f32>(725f, 1000f), vec4<u32>(4294967295u, 0u, 84981u, 0u), vec3<u32>(0u, 1u, 3546u)), vec3<u32>(1u, 47857u, 1u), Struct_3(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], true), Struct_2(vec4<i32>(var_0.x, global2.b.b.x, 2147483647i, var_0.x), vec2<i32>(-835i, global2.b.b.x), global2.b.c), u_input.a)), 19u)], global4[_wgslsmith_index_u32(min(0u, 11348u), 19u)]), vec2<i32>(_wgslsmith_dot_vec4_i32(global2.b.a, vec4<i32>(-40050i, 2147483647i, var_0.x, u_input.a)), _wgslsmith_clamp_i32(global2.b.b.x, 27530i, var_0.x)), global2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(885f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1057f) + _wgslsmith_f_op_f32(-2118f - 1009f)))), _wgslsmith_f_op_f32(select(451f, -2104f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(457f, 1418f) * 1107f), _wgslsmith_f_op_f32(f32(-1f) * -1592f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-172f + -1485f) + 1443f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-380f + 331f), _wgslsmith_div_f32(1000f, 738f))), _wgslsmith_f_op_f32(-746f - 660f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(154f)), _wgslsmith_div_f32(-1459f, 1314f)), _wgslsmith_f_op_f32(step(-264f, 501f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1786f, -2411f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(Struct_3(vec2<bool>(global2.b.c.x, false), global2.b, 0i))))))))));
}

