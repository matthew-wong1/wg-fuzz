struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(4294967295u, 0u, 1u, 1u, 42708u, 29621u, 84365u, 1u, 23483u, 6177u, 1u, 1u, 48440u, 55603u, 4294967295u, 81631u, 76246u, 53350u);

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(-770f, vec4<f32>(-2967f, 877f, -2157f, -310f), 16996u, vec4<i32>(-3710i, 44462i, -10036i, 1i), vec3<bool>(true, false, true)), Struct_1(-327f, vec4<f32>(991f, -158f, -859f, 771f), 23169u, vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 13248i), vec3<bool>(false, true, true)), Struct_1(543f, vec4<f32>(1176f, 1233f, 1335f, 936f), 0u, vec4<i32>(-1i, 1i, 0i, 0i), vec3<bool>(true, false, true)), Struct_1(-110f, vec4<f32>(559f, 1388f, -580f, 1000f), 4294967295u, vec4<i32>(32436i, -57i, 2147483647i, -32611i), vec3<bool>(true, true, true)), Struct_1(-244f, vec4<f32>(-442f, -1517f, 1097f, 1000f), 13815u, vec4<i32>(1i, -29170i, 0i, -1i), vec3<bool>(true, true, false)), Struct_1(1838f, vec4<f32>(-877f, 1328f, -802f, 522f), 4294967295u, vec4<i32>(-14773i, 13379i, -12537i, 28132i), vec3<bool>(true, false, false)), Struct_1(-467f, vec4<f32>(436f, -582f, 1649f, 1442f), 15918u, vec4<i32>(-1i, 0i, 2147483647i, -1i), vec3<bool>(true, false, false)), Struct_1(2090f, vec4<f32>(1687f, -478f, 824f, 546f), 10263u, vec4<i32>(0i, 2147483647i, 0i, -65849i), vec3<bool>(true, true, true)), Struct_1(1000f, vec4<f32>(3626f, -1672f, 1000f, -661f), 1u, vec4<i32>(66283i, 26151i, 2147483647i, 64209i), vec3<bool>(true, true, false)), Struct_1(-1000f, vec4<f32>(-1685f, -441f, 1000f, -169f), 66887u, vec4<i32>(-49720i, 6752i, 21833i, 8585i), vec3<bool>(false, true, false)), Struct_1(-177f, vec4<f32>(2458f, 1574f, 396f, -176f), 74145u, vec4<i32>(i32(-2147483648), 52431i, -688i, 2147483647i), vec3<bool>(true, true, false)));

var<private> global2: Struct_1 = Struct_1(153f, vec4<f32>(-1246f, -967f, -354f, -1937f), 36764u, vec4<i32>(8609i, 34892i, i32(-2147483648), i32(-2147483648)), vec3<bool>(false, false, true));

var<private> global3: i32 = 0i;

var<private> global4: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    global3 = 2147483647i;
    global1 = array<Struct_1, 11>();
    global0 = array<u32, 18>();
    let var_0 = select(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.c, ~firstTrailingBit(4294967295u)), 22u)], !(!global4[_wgslsmith_index_u32(global2.c, 22u)]), !vec4<bool>((global2.d.x | global2.d.x) != 1i, true, true, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)] <= firstTrailingBit(0u)));
    var var_1 = Struct_1(-665f, global2.b, 16692u & global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.c, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 18u)], 4294967295u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global2.c, 18u)], 1u, 38624u)), select(vec4<u32>(u_input.b.x, 25241u, u_input.b.x, 1u), vec4<u32>(68298u, u_input.a, global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(58000u, 18u)]), global4[_wgslsmith_index_u32(1u, 22u)]))), 18u)], global2.d, !select(!vec3<bool>(var_0.x, true, global2.e.x), !(!global2.e), true));
    return _wgslsmith_div_i32(var_1.d.x, 1i) | (_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(1i, var_1.d.x), 3111i, abs(0i), _wgslsmith_mod_i32(global2.d.x, global2.d.x)), global2.d) & 2147483647i);
}

fn func_2() -> Struct_2 {
    global0 = array<u32, 18>();
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(global2.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(294f - global2.b.x), 1035f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1810f - global2.a))), _wgslsmith_f_op_f32(floor(-1052f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b.x, 1331f, 1554f, global2.b.x), vec4<f32>(global2.b.x, -410f, 2922f, -504f), true)))))))));
    var var_1 = global1[_wgslsmith_index_u32(0u, 11u)];
    let var_2 = Struct_2(func_3(), global1[_wgslsmith_index_u32(25620u, 11u)], global2.e.x);
    var_1 = Struct_1(var_0.x, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(select(var_1.b.x, _wgslsmith_f_op_f32(ceil(1186f)), !var_2.b.e.x)), var_2.b.b.x, var_1.b.x, _wgslsmith_f_op_f32(-775f + _wgslsmith_f_op_f32(-1000f - var_0.x))))), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~1u, ~firstTrailingBit(4294967295u)), 18u)], vec4<i32>(_wgslsmith_dot_vec2_i32(global2.d.yy, vec2<i32>(0i, global2.d.x)), var_1.d.x, var_2.a, var_1.d.x), global2.e);
    return Struct_2(_wgslsmith_div_i32(-18806i, var_1.d.x), Struct_1(204f, var_1.b, ~_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(0u, 18u)], ~global0[_wgslsmith_index_u32(7823u, 18u)], firstTrailingBit(28520u)), _wgslsmith_mod_vec4_i32(reverseBits(firstTrailingBit(var_2.b.d)), global2.d), !global2.e), all(!(!vec2<bool>(var_2.b.e.x, var_1.e.x))) | true);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = func_2().b;
    var var_1 = vec2<i32>(countOneBits(-(~(-16579i))), _wgslsmith_dot_vec4_i32(~(~arg_0.b.d), var_0.d)) ^ ~(-vec2<i32>(~2147483647i, -arg_0.b.d.x));
    global4 = array<vec4<bool>, 22>();
    let var_2 = global1[_wgslsmith_index_u32(20710u, 11u)];
    let var_3 = vec2<bool>(true, true);
    return Struct_2(abs(_wgslsmith_div_i32(-var_1.x, countOneBits(-67374i))) | -var_0.d.x, Struct_1(_wgslsmith_div_f32(-119f, global2.a), arg_0.b.b, ~var_0.c, arg_0.b.d, var_0.e), true || (all(!global4[_wgslsmith_index_u32(66932u, 22u)]) | true));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_1 {
    global2 = Struct_1(_wgslsmith_f_op_f32(max(1699f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.x, global2.b.x)) + global2.b.x))), global2.b, 13696u, countOneBits(_wgslsmith_add_vec4_i32(arg_1.b.d, arg_1.b.d)), !arg_1.b.e);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(arg_1.b.a)), _wgslsmith_f_op_vec4_f32(-arg_1.b.b), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 18u)], arg_1.b.c, arg_1.b.c, global0[_wgslsmith_index_u32(31139u, 18u)])), ~vec4<u32>(u_input.a, 1u, 32777u, arg_1.b.c) << (vec4<u32>(4294967295u, arg_1.b.c, u_input.b.x, global0[_wgslsmith_index_u32(70254u, 18u)]) % vec4<u32>(32u))), ~func_4(Struct_2(arg_2.x, global1[_wgslsmith_index_u32(0u, 11u)], false)).b.c), vec4<i32>(~7400i, arg_1.b.d.x, 1i, reverseBits(18556i)), global2.e);
    let var_1 = Struct_3(~(~arg_1.b.d.wyx), global2.b, func_2());
    let var_2 = arg_1.b.d.x >= -2147483647i;
    var var_3 = Struct_1(var_1.c.b.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.c.b.a)))), 195f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), 717f)), _wgslsmith_f_op_f32(1000f + var_0.a)), 4294967295u, select(vec4<i32>(var_1.a.x, -1i, var_0.d.x, firstLeadingBit(~1i)), vec4<i32>(arg_1.b.d.x, arg_1.a, ~(i32(-1i) * -39853i), 0i), !vec4<bool>(true, var_0.e.x, true, true)), vec3<bool>(any(vec4<bool>(-295f < var_1.b.x, global2.d.x >= -2147483647i, all(global2.e), false || arg_1.c)), var_0.e.x, var_0.e.x));
    return func_4(arg_1).b;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: vec3<bool>) -> Struct_2 {
    global3 = ~1i;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b.x - global2.a), -1225f));
    let var_1 = arg_3.x;
    var_0 = global2.a;
    let var_2 = var_1;
    return Struct_2(~(-1211i), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - 1989f)), func_4(func_2()), global2.d.zww), true);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> Struct_3 {
    var var_0 = Struct_1(-849f, vec4<f32>(-1000f, func_4(Struct_2(~arg_0.a, func_1(global2.d.zx, vec3<u32>(arg_1.c, 0u, u_input.a), vec4<u32>(u_input.b.x, global2.c, arg_0.b.c, 1u), arg_1.e).b, true)).b.a, -567f, -1624f), _wgslsmith_mult_u32(4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(28014u, arg_0.b.c, 4294967295u), 18u)]) | ~(~(~u_input.b.x)), global2.d, select(func_5(-2311f, func_2(), arg_1.d.xwy).e, vec3<bool>(func_5(274f, arg_0, vec3<i32>(global2.d.x, -31936i, 0i)).e.x, !all(arg_0.b.e), all(!vec3<bool>(arg_1.e.x, false, false))), arg_1.e));
    var var_1 = any(func_1(_wgslsmith_clamp_vec2_i32(-arg_0.b.d.yz, vec2<i32>(1i, -1i), select(var_0.d.zx, arg_1.d.yz, var_0.e.x)) >> (vec2<u32>(~var_0.c, global0[_wgslsmith_index_u32(arg_1.c, 18u)]) % vec2<u32>(32u)), ~vec3<u32>(var_0.c, var_0.c, 4640u), ~select(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(var_0.c, 18u)], arg_0.b.c, 4294967295u), select(vec4<u32>(4294967295u, 7485u, var_0.c, 1u), vec4<u32>(4294967295u, 33829u, global0[_wgslsmith_index_u32(u_input.b.x, 18u)], 0u), global4[_wgslsmith_index_u32(global2.c, 22u)]), !vec4<bool>(global2.e.x, var_0.e.x, global2.e.x, false)), arg_0.b.e).b.e);
    var var_2 = arg_0;
    var_2 = func_4(func_4(func_1(var_0.d.xz, ~vec3<u32>(arg_1.c, 1u, arg_0.b.c), vec4<u32>(var_2.b.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.c, u_input.a, 47031u), vec3<u32>(var_0.c, arg_0.b.c, var_2.b.c)), func_2().b.c, var_2.b.c), !arg_0.b.e)));
    return Struct_3(firstLeadingBit(vec3<i32>(firstLeadingBit(global2.d.x), -25082i, _wgslsmith_dot_vec4_i32(max(vec4<i32>(-42160i, 0i, -2147483647i, var_2.b.d.x), vec4<i32>(global2.d.x, var_2.a, -1i, 2147483647i)), var_0.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_0.b.b)) * vec4<f32>(_wgslsmith_f_op_f32(var_2.b.a * _wgslsmith_f_op_f32(min(arg_0.b.b.x, var_0.b.x))), _wgslsmith_f_op_f32(trunc(global2.b.x)), var_0.a, _wgslsmith_f_op_f32(trunc(-1519f)))), func_4(func_2()));
}

fn func_7(arg_0: Struct_3) -> vec4<i32> {
    let var_0 = arg_0.c.b.e;
    var var_1 = 2147483647i;
    var var_2 = arg_0.c;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a));
    var var_4 = true;
    return vec4<i32>(select(5071i, func_1(func_4(func_6(Struct_2(global2.d.x, arg_0.c.b, arg_0.c.b.e.x), Struct_1(-1040f, vec4<f32>(var_2.b.b.x, arg_0.c.b.b.x, var_2.b.a, var_2.b.a), arg_0.c.b.c, arg_0.c.b.d, var_0)).c).b.d.ww, max(~vec3<u32>(0u, u_input.b.x, global0[_wgslsmith_index_u32(1u, 18u)]), reverseBits(vec3<u32>(96000u, 4294967295u, u_input.b.x))), vec4<u32>(arg_0.c.b.c, _wgslsmith_add_u32(10939u, global2.c), func_6(arg_0.c, arg_0.c.b).c.b.c, global2.c & arg_0.c.b.c), vec3<bool>(global2.e.x, true, any(global4[_wgslsmith_index_u32(u_input.b.x, 22u)]))).a, !(!var_0.x)), -5917i, ~firstTrailingBit(func_3()), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_f_op_f32(abs(global2.b.x)), vec4<f32>(-387f, _wgslsmith_f_op_f32(-global2.b.x), 309f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1375f)) - -617f), global2.a)), ~45878u, func_7(func_6(func_1(~vec2<i32>(global2.d.x, 59109i), firstTrailingBit(vec3<u32>(u_input.b.x, 0u, 10597u)), ~vec4<u32>(3762u, global0[_wgslsmith_index_u32(46414u, 18u)], 4294967295u, u_input.b.x), select(vec3<bool>(global2.e.x, global2.e.x, true), vec3<bool>(global2.e.x, global2.e.x, global2.e.x), vec3<bool>(true, true, global2.e.x))), Struct_1(1000f, global2.b, firstTrailingBit(19676u), ~global2.d, global2.e))), !func_2().b.e);
    global3 = -2147483647i;
    global3 = ~(~(abs(-2147483647i) | ~global2.d.x) | 1i);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - 1205f);
    global3 = global2.d.x;
    global3 = -1i;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, _wgslsmith_div_f32(func_5(2011f, func_2(), _wgslsmith_mod_vec3_i32(global2.d.yyw, vec3<i32>(-2147483647i, global2.d.x, global2.d.x))).b.x, global2.b.x), -1582f, _wgslsmith_f_op_f32(f32(-1f) * -544f)));
    let var_2 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-func_1(global2.d.xz, ~firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(global2.c, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)])), (vec4<u32>(global2.c, 0u, global2.c, u_input.b.x) << (vec4<u32>(31921u, 4294967295u, 0u, 41252u) % vec4<u32>(32u))) ^ ~vec4<u32>(global0[_wgslsmith_index_u32(global2.c, 18u)], u_input.b.x, global2.c, global0[_wgslsmith_index_u32(1u, 18u)]), global2.e).a, _wgslsmith_div_vec2_i32(~global2.d.xw, func_7(func_6(func_1(vec2<i32>(-13253i, global2.d.x), vec3<u32>(33015u, u_input.a, u_input.b.x), vec4<u32>(u_input.b.x, 22016u, 38431u, global0[_wgslsmith_index_u32(u_input.a, 18u)]), global2.e), Struct_1(var_1.x, vec4<f32>(global2.b.x, var_0, global2.a, var_0), global2.c, vec4<i32>(-1i, -7746i, 1i, -25030i), global2.e))).wx));
}

