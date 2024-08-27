struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(i32(-2147483648), 1121i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec3<i32>(-37329i, 0i, 2147483647i), vec3<i32>(1i, -9435i, 19670i), vec3<i32>(-46259i, 52212i, 1i), vec3<i32>(37838i, 35581i, -4757i), vec3<i32>(-17009i, -1i, 1i), vec3<i32>(1i, 1i, -1i), vec3<i32>(-6903i, i32(-2147483648), 1i));

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1009f, _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-arg_1.a)))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1209f)) + _wgslsmith_f_op_f32(943f + arg_1.a)))), _wgslsmith_f_op_f32(-global0.x), 1150f));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1354f, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -436f, -1000f)))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-arg_1.b.x), -361f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1128f, global0.x, 710f)), vec3<f32>(386f, global0.x, 456f), arg_1.d))))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-634f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(880f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + arg_2.d)))));
    global3 = array<vec3<bool>, 23>();
    var var_1 = ~reverseBits(~(~(vec3<u32>(u_input.a.x, 1u, u_input.c) << (vec3<u32>(53437u, arg_2.c.d.x, u_input.b.x) % vec3<u32>(32u)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-178f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1409f, var_0)), _wgslsmith_f_op_f32(global0.x + arg_1.b.x))), false)), var_0));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: f32, arg_3: u32) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(abs(countOneBits(arg_0.c.b.c.x)), Struct_1(_wgslsmith_f_op_f32(146f + arg_0.d), _wgslsmith_f_op_vec2_f32(abs(arg_0.c.c.b)), arg_0.a.b.c, false), arg_0)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.b.b.x * arg_2) + _wgslsmith_f_op_f32(round(arg_0.a.b.b.x)))))), Struct_1(610f, arg_0.a.b.b, (_wgslsmith_mod_vec4_i32(arg_0.c.b.c, arg_0.a.b.c) ^ (vec4<i32>(arg_0.a.c.c.x, -1i, arg_0.c.b.c.x, arg_0.b.b.c.x) << (vec4<u32>(0u, 39325u, 0u, 4294967295u) % vec4<u32>(32u)))) & (vec4<i32>(-1i) * -vec4<i32>(arg_0.c.b.c.x, arg_0.b.b.c.x, -34677i, -1i)), all(!vec3<bool>(arg_0.a.b.d, arg_0.c.b.d, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-942f, arg_2))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(539f, 230f) - _wgslsmith_f_op_vec2_f32(-global0.zz)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1592f, global0.x), _wgslsmith_f_op_vec2_f32(-arg_0.c.b.b), !arg_0.a.b.d))), min((arg_0.b.b.c >> (u_input.a % vec4<u32>(32u))) | firstTrailingBit(arg_0.c.c.c), -(arg_0.b.c.c ^ arg_0.a.b.c)), any(select(vec2<bool>(false, global2.x), global2.yy, global2.zx))), ~arg_0.c.d);
    var var_1 = arg_0.a;
    var var_2 = var_1.b;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a * arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + 1050f) * _wgslsmith_div_f32(-163f, arg_2)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-728f * _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_i32(var_0.b.c.x, 2147483647i), Struct_1(426f, vec2<f32>(var_2.b.x, 882f), vec4<i32>(1403i, var_2.c.x, 5939i, arg_0.b.b.c.x), true), Struct_3(arg_0.b, Struct_2(arg_0.a.b.b.x, Struct_1(var_1.b.a, vec2<f32>(arg_2, 1000f), var_1.b.c, var_1.b.d), var_0.b, vec3<u32>(26706u, 60965u, u_input.b.x)), arg_0.b, 916f, 40442u)))));
    var_0 = arg_0.a;
    return Struct_3(arg_0.a, Struct_2(-917f, var_0.c, arg_0.b.b, arg_1.xyz), Struct_2(_wgslsmith_f_op_f32(round(var_1.b.b.x)), Struct_1(615f, vec2<f32>(_wgslsmith_f_op_f32(var_1.b.a - -804f), _wgslsmith_f_op_f32(-arg_0.d)), arg_0.b.c.c << (arg_1 % vec4<u32>(32u)), true == all(global2.zz)), var_1.b, _wgslsmith_mod_vec3_u32(~(~vec3<u32>(var_0.d.x, u_input.c, arg_3)), vec3<u32>(max(arg_1.x, 90989u), ~u_input.b.x, arg_0.c.d.x))), _wgslsmith_f_op_f32(arg_0.a.a - -1225f), u_input.b.x);
}

fn func_4(arg_0: Struct_3) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(func_2(func_2(arg_0, u_input.b, -781f, 1u), ~u_input.a, _wgslsmith_f_op_f32(-global0.x), countOneBits(1u)).a.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2115f - global0.x))), _wgslsmith_f_op_f32(-global0.x)), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1000f)))), 919f, -995f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.a.c.a, -794f, -1510f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1029f, global0.x, global0.x), vec3<f32>(-247f, -1000f, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, arg_0.a.c.a, 212f)), !vec3<bool>(true, arg_0.c.b.d, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-437f, arg_0.b.a, -1000f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, 250f, -705f)))) * vec3<f32>(_wgslsmith_f_op_f32(2171f + 1000f), 198f, _wgslsmith_f_op_f32(sign(global0.x)))), vec3<bool>(arg_0.c.c.d, global2.x, !(405f != global0.x)))));
    return global0.zz;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global3 = array<vec3<bool>, 23>();
    let var_0 = func_2(Struct_3(Struct_2(544f, func_2(func_2(Struct_3(Struct_2(global0.x, arg_0, arg_0, vec3<u32>(u_input.b.x, 0u, u_input.a.x)), Struct_2(arg_0.b.x, arg_0, arg_0, vec3<u32>(u_input.c, u_input.c, 53702u)), Struct_2(arg_0.a, Struct_1(arg_0.a, vec2<f32>(global0.x, 774f), arg_0.c, false), arg_0, vec3<u32>(1u, 4850u, u_input.a.x)), arg_0.a, 4294967295u), vec4<u32>(u_input.a.x, u_input.c, u_input.c, u_input.b.x), -371f, u_input.a.x), ~u_input.a, _wgslsmith_f_op_f32(select(1741f, global0.x, true)), ~u_input.b.x).c.c, func_2(Struct_3(Struct_2(global0.x, arg_0, arg_0, vec3<u32>(53036u, u_input.c, u_input.a.x)), Struct_2(1000f, arg_0, arg_0, u_input.b.zzy), Struct_2(arg_0.a, arg_0, arg_0, vec3<u32>(u_input.c, u_input.a.x, 27505u)), arg_0.b.x, u_input.b.x), vec4<u32>(37705u, u_input.b.x, 1u, 5111u) << (vec4<u32>(73723u, 0u, 38140u, u_input.b.x) % vec4<u32>(32u)), arg_0.b.x, 0u).c.b, vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(31249u, u_input.b.x), abs(u_input.a.x))), Struct_2(arg_0.a, Struct_1(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_vec2_f32(-arg_0.b), arg_0.c, 20325u != u_input.a.x), Struct_1(_wgslsmith_f_op_f32(global0.x - 2550f), _wgslsmith_f_op_vec2_f32(floor(arg_0.b)), select(vec4<i32>(-2147483647i, arg_0.c.x, arg_0.c.x, 2147483647i), vec4<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, -4760i), false), func_2(Struct_3(Struct_2(arg_0.a, Struct_1(505f, vec2<f32>(global0.x, 810f), arg_0.c, global2.x), arg_0, vec3<u32>(u_input.b.x, 1u, u_input.c)), Struct_2(global0.x, Struct_1(arg_0.b.x, vec2<f32>(arg_0.a, arg_0.a), arg_0.c, global2.x), Struct_1(global0.x, arg_0.b, vec4<i32>(0i, arg_0.c.x, arg_0.c.x, arg_0.c.x), global2.x), vec3<u32>(u_input.b.x, 95814u, u_input.b.x)), Struct_2(global0.x, arg_0, Struct_1(global0.x, vec2<f32>(-1082f, -1000f), arg_0.c, global2.x), vec3<u32>(u_input.c, 4294967295u, u_input.c)), arg_0.a, u_input.b.x), u_input.a, global0.x, 10719u).c.b.d), abs(u_input.b.zwx)), Struct_2(func_2(Struct_3(Struct_2(arg_0.b.x, Struct_1(1000f, global0.zx, arg_0.c, global2.x), Struct_1(arg_0.b.x, global0.xz, arg_0.c, true), vec3<u32>(14483u, 0u, u_input.c)), Struct_2(-110f, arg_0, Struct_1(-164f, global0.yz, vec4<i32>(-35059i, 2400i, arg_0.c.x, arg_0.c.x), global2.x), vec3<u32>(35860u, u_input.b.x, 15810u)), Struct_2(global0.x, Struct_1(arg_0.a, arg_0.b, vec4<i32>(-6878i, arg_0.c.x, arg_0.c.x, arg_0.c.x), arg_0.d), Struct_1(arg_0.b.x, vec2<f32>(337f, -705f), vec4<i32>(arg_0.c.x, -1i, 45974i, 1i), arg_0.d), vec3<u32>(1u, u_input.c, 23508u)), -877f, 4294967295u), u_input.a >> (vec4<u32>(1u, 65666u, u_input.b.x, 14754u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(sign(-1355f)), 4917u | u_input.a.x).b.c.b.x, func_2(func_2(Struct_3(Struct_2(global0.x, arg_0, arg_0, vec3<u32>(29400u, 19818u, 6879u)), Struct_2(arg_0.a, arg_0, Struct_1(1944f, vec2<f32>(arg_0.a, 502f), arg_0.c, global2.x), vec3<u32>(u_input.c, u_input.c, u_input.a.x)), Struct_2(2161f, arg_0, Struct_1(536f, vec2<f32>(-1603f, arg_0.a), vec4<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, -12880i), true), u_input.a.zyx), arg_0.b.x, 1u), u_input.b, -334f, u_input.c), ~u_input.b, arg_0.b.x, countOneBits(u_input.c)).a.b, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -749f), _wgslsmith_f_op_vec2_f32(arg_0.b - vec2<f32>(global0.x, global0.x)), vec4<i32>(-35789i, arg_0.c.x, 38723i, 32870i), true), u_input.b.zxw), _wgslsmith_f_op_f32(trunc(global0.x)), u_input.a.x), u_input.b & u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(700f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -113f), 485f))), u_input.c).a;
    global3 = array<vec3<bool>, 23>();
    var var_1 = _wgslsmith_dot_vec2_u32(u_input.a.yy, var_0.d.yz);
    global1 = array<vec3<i32>, 9>();
    return func_2(func_2(Struct_3(func_2(func_2(Struct_3(var_0, Struct_2(global0.x, var_0.b, Struct_1(-981f, var_0.b.b, vec4<i32>(var_0.b.c.x, -2147483647i, arg_0.c.x, var_0.c.c.x), global2.x), var_0.d), var_0, arg_0.a, 14149u), u_input.b, global0.x, u_input.c), abs(u_input.a), 252f, 40160u).c, func_2(func_2(Struct_3(Struct_2(global0.x, var_0.b, Struct_1(var_0.a, global0.xx, vec4<i32>(arg_0.c.x, var_0.c.c.x, arg_0.c.x, 17666i), true), var_0.d), Struct_2(var_0.a, var_0.c, arg_0, vec3<u32>(86508u, u_input.a.x, 4294967295u)), var_0, 953f, 29305u), vec4<u32>(var_0.d.x, 1u, 33351u, 1u), 1717f, 4294967295u), ~u_input.a, _wgslsmith_div_f32(global0.x, arg_0.b.x), var_0.d.x).b, func_2(func_2(Struct_3(var_0, var_0, var_0, 671f, 54940u), u_input.a, 635f, u_input.c), ~vec4<u32>(u_input.c, 1u, u_input.b.x, 8615u), _wgslsmith_f_op_f32(sign(1128f)), ~0u).b, _wgslsmith_f_op_f32(abs(-768f)), _wgslsmith_clamp_u32(4294967295u, 955u, 67334u) & firstTrailingBit(36696u)), vec4<u32>(u_input.c, _wgslsmith_mod_u32(~u_input.c, ~var_0.d.x), 1u ^ var_0.d.x, 123962u), _wgslsmith_f_op_vec2_f32(func_4(func_2(func_2(Struct_3(Struct_2(-2811f, Struct_1(923f, vec2<f32>(global0.x, var_0.b.a), vec4<i32>(var_0.c.c.x, var_0.c.c.x, arg_0.c.x, -2147483647i), false), var_0.c, var_0.d), Struct_2(arg_0.a, var_0.b, arg_0, vec3<u32>(u_input.c, 8946u, var_0.d.x)), var_0, arg_0.a, 22893u), u_input.a, -873f, u_input.c), u_input.a, _wgslsmith_f_op_f32(step(arg_0.b.x, var_0.c.b.x)), ~23235u))).x, _wgslsmith_mod_u32(_wgslsmith_add_u32(116132u, var_0.d.x), var_0.d.x) | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.c) << (u_input.b.zyz % vec3<u32>(32u)), u_input.b.xyy)), firstLeadingBit(~abs(~u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -1230f), ~_wgslsmith_sub_u32(u_input.c & ~u_input.a.x, ~0u)).a.c;
}

fn func_1(arg_0: Struct_1) -> f32 {
    global3 = array<vec3<bool>, 23>();
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, -225f, 1496f) + vec3<f32>(arg_0.a, 1320f, -1226f)), vec3<f32>(1475f, global0.x, arg_0.b.x)))));
    var var_0 = Struct_2(global0.x, arg_0, func_5(Struct_1(global0.x, _wgslsmith_f_op_vec2_f32(func_4(func_2(Struct_3(Struct_2(-2014f, Struct_1(486f, vec2<f32>(-929f, arg_0.b.x), vec4<i32>(0i, arg_0.c.x, arg_0.c.x, arg_0.c.x), global2.x), arg_0, vec3<u32>(5784u, u_input.b.x, u_input.b.x)), Struct_2(arg_0.a, Struct_1(-291f, global0.zx, vec4<i32>(arg_0.c.x, 1i, 1i, arg_0.c.x), true), arg_0, vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)), Struct_2(-211f, arg_0, arg_0, vec3<u32>(u_input.c, u_input.c, 0u)), arg_0.a, 1u), u_input.b, arg_0.a, 1u))), vec4<i32>(1i, ~arg_0.c.x, -1407i, 4837i), any(!vec4<bool>(global2.x, true, false, true)))), _wgslsmith_div_vec3_u32(u_input.a.wzy >> (~(vec3<u32>(39707u, 1u, u_input.a.x) | vec3<u32>(0u, u_input.c, u_input.c)) % vec3<u32>(32u)), select(~_wgslsmith_mod_vec3_u32(u_input.a.wzy, u_input.b.wxx), u_input.a.wyw, all(select(global2.yx, global2.xz, global2.xz)))));
    var var_1 = _wgslsmith_mod_vec2_i32(min(vec2<i32>(-4855i, -2147483647i), min(arg_0.c.xw, abs(vec2<i32>(13575i, -65894i))) | vec2<i32>(-828i, _wgslsmith_div_i32(var_0.b.c.x, var_0.b.c.x))), _wgslsmith_div_vec2_i32(var_0.c.c.yw, vec2<i32>(max(26656i, -4792i) >> (1u % 32u), abs(1i))));
    var var_2 = func_2(Struct_3(Struct_2(-422f, var_0.c, Struct_1(1f, global0.yx, var_0.b.c | arg_0.c, all(vec2<bool>(true, global2.x))), min(_wgslsmith_div_vec3_u32(vec3<u32>(10264u, 4294967295u, u_input.b.x), vec3<u32>(3806u, var_0.d.x, 37165u)), func_2(Struct_3(Struct_2(-1953f, var_0.b, var_0.c, vec3<u32>(4294967295u, var_0.d.x, var_0.d.x)), Struct_2(global0.x, Struct_1(var_0.a, vec2<f32>(1000f, global0.x), vec4<i32>(var_0.b.c.x, arg_0.c.x, -1i, -2147483647i), global2.x), arg_0, vec3<u32>(17883u, var_0.d.x, 76703u)), Struct_2(arg_0.b.x, arg_0, var_0.c, var_0.d), -891f, 0u), vec4<u32>(4294967295u, u_input.a.x, var_0.d.x, u_input.b.x), 971f, 49019u).c.d)), func_2(func_2(Struct_3(Struct_2(var_0.b.a, var_0.c, Struct_1(global0.x, vec2<f32>(-1171f, -1593f), vec4<i32>(var_0.c.c.x, -29972i, var_0.c.c.x, -1i), global2.x), u_input.a.xyx), Struct_2(global0.x, Struct_1(var_0.c.b.x, vec2<f32>(arg_0.a, -719f), vec4<i32>(var_1.x, arg_0.c.x, -2147483647i, -1i), arg_0.d), Struct_1(1108f, vec2<f32>(501f, 132f), arg_0.c, false), u_input.a.xzw), Struct_2(arg_0.a, arg_0, Struct_1(arg_0.b.x, vec2<f32>(var_0.c.a, -1949f), arg_0.c, true), var_0.d), var_0.b.b.x, var_0.d.x), select(u_input.b, u_input.b, vec4<bool>(false, false, true, var_0.b.d)), -1547f, u_input.c), vec4<u32>(firstTrailingBit(66837u), select(var_0.d.x, u_input.b.x, false), firstLeadingBit(1u), _wgslsmith_mod_u32(var_0.d.x, 4294967295u)), var_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), u_input.b.zw)).a, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b.x) * 225f), Struct_1(var_0.b.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(2027f, global0.x)), var_0.c.c, var_0.c.d), Struct_1(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_vec2_f32(arg_0.b - var_0.c.b), min(vec4<i32>(arg_0.c.x, 2147483647i, 2147483647i, var_1.x), vec4<i32>(var_1.x, arg_0.c.x, 2147483647i, 0i)), all(global2.zx)), var_0.d), -1000f, ~(~12311u)), select(u_input.b, ~select(u_input.b, ~u_input.a, func_2(Struct_3(Struct_2(global0.x, var_0.c, arg_0, u_input.b.zwz), Struct_2(global0.x, Struct_1(856f, vec2<f32>(global0.x, arg_0.a), arg_0.c, global2.x), var_0.c, var_0.d), Struct_2(var_0.b.b.x, Struct_1(-1434f, vec2<f32>(-994f, global0.x), vec4<i32>(0i, 1i, -2147483647i, arg_0.c.x), global2.x), var_0.c, var_0.d), global0.x, 78080u), u_input.b, global0.x, var_0.d.x).c.b.d), !any(vec3<bool>(var_0.c.d, false, global2.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b.x + arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(Struct_3(Struct_2(-2654f, arg_0, var_0.b, vec3<u32>(26265u, var_0.d.x, 15656u)), Struct_2(-812f, Struct_1(847f, vec2<f32>(global0.x, var_0.a), vec4<i32>(arg_0.c.x, var_0.b.c.x, var_0.b.c.x, -2147483647i), true), arg_0, vec3<u32>(4294967295u, 32077u, 19588u)), Struct_2(var_0.c.b.x, Struct_1(global0.x, var_0.c.b, var_0.c.c, arg_0.d), Struct_1(2289f, vec2<f32>(var_0.b.a, arg_0.a), vec4<i32>(1i, var_1.x, arg_0.c.x, 2036i), true), vec3<u32>(var_0.d.x, 4294967295u, u_input.c)), arg_0.b.x, 22951u), u_input.a, arg_0.b.x, u_input.b.x).b.b.a)))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~u_input.a.x, reverseBits(u_input.c) >> (u_input.c % 32u)), func_2(Struct_3(Struct_2(arg_0.a, arg_0, arg_0, u_input.b.xzx), Struct_2(1338f, arg_0, var_0.c, vec3<u32>(49761u, u_input.b.x, u_input.a.x)), Struct_2(-1208f, arg_0, var_0.b, var_0.d), _wgslsmith_f_op_f32(floor(global0.x)), countOneBits(u_input.c)), vec4<u32>(~1u, ~36102u, var_0.d.x, ~0u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), 2490f), var_0.d.x).e)).a;
    return 216f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, true, _wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_f_op_f32(floor(640f)), vec2<f32>(global0.x, global0.x), min(vec4<i32>(-55138i, -1i, 17410i, -7579i), vec4<i32>(-1i, 0i, 13043i, 36477i)), true))) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(745f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -369f), func_5(func_2(Struct_3(Struct_2(global0.x, Struct_1(1130f, vec2<f32>(819f, -1974f), vec4<i32>(0i, 21166i, -2147483647i, -11385i), global2.x), Struct_1(141f, vec2<f32>(global0.x, global0.x), vec4<i32>(-60393i, -21718i, 1i, 1i), global2.x), u_input.a.yzy), Struct_2(505f, Struct_1(-810f, vec2<f32>(global0.x, -441f), vec4<i32>(1i, 0i, 7457i, 0i), false), Struct_1(global0.x, vec2<f32>(global0.x, 349f), vec4<i32>(-2147483647i, 0i, 20856i, 0i), true), vec3<u32>(u_input.a.x, u_input.c, 4430u)), Struct_2(463f, Struct_1(-1018f, vec2<f32>(global0.x, -832f), vec4<i32>(1i, 40699i, 45424i, 0i), true), Struct_1(global0.x, global0.zz, vec4<i32>(5073i, 1i, -28700i, 1i), false), vec3<u32>(1u, u_input.b.x, 50568u)), global0.x, 0u), vec4<u32>(u_input.b.x, 31216u, u_input.b.x, 0u), 1215f, u_input.c).a.c).d)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1608f, global0.x, 207f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, 286f, 1000f))))))));
    var var_1 = Struct_1(global0.x, vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1060f, global0.x, false)), -1000f) * _wgslsmith_f_op_f32(-global0.x))), vec4<i32>(-abs(-3814i), _wgslsmith_add_i32(-(~(-39475i)), abs(-6801i)), abs(firstTrailingBit(-14120i)), 0i), false);
    let var_2 = ~vec4<u32>(min(max(u_input.b.x, u_input.c) | 0u, ~u_input.c), 19926u, u_input.c, u_input.b.x);
    var var_3 = global2.xz;
    let var_4 = 4294967295u;
    let var_5 = vec4<bool>(true, var_1.d || true, true, !(u_input.b.x != reverseBits(~var_2.x)));
    var var_6 = func_2(func_2(Struct_3(func_2(func_2(Struct_3(Struct_2(global0.x, Struct_1(1000f, vec2<f32>(var_1.a, var_1.a), vec4<i32>(var_1.c.x, -2147483647i, 432i, 2147483647i), var_5.x), Struct_1(var_1.b.x, var_1.b, vec4<i32>(-26420i, var_1.c.x, 2147483647i, var_1.c.x), var_5.x), var_2.xzw), Struct_2(global0.x, Struct_1(global0.x, vec2<f32>(var_1.a, 832f), vec4<i32>(-15269i, 26698i, 32846i, var_1.c.x), false), Struct_1(-1940f, vec2<f32>(var_1.b.x, global0.x), vec4<i32>(0i, var_1.c.x, var_1.c.x, var_1.c.x), false), var_2.yxz), Struct_2(-929f, Struct_1(-471f, vec2<f32>(-810f, 839f), vec4<i32>(var_1.c.x, var_1.c.x, -2147483647i, -2147483647i), global2.x), Struct_1(global0.x, vec2<f32>(var_1.b.x, 1000f), vec4<i32>(10773i, 0i, 1i, var_1.c.x), var_3.x), vec3<u32>(4294967295u, u_input.b.x, 0u)), var_1.a, var_4), vec4<u32>(var_4, u_input.c, 8220u, 57135u), global0.x, u_input.c), vec4<u32>(var_2.x, 1010u, u_input.a.x, 1u) & var_2, _wgslsmith_f_op_f32(func_3(var_1.c.x, Struct_1(-226f, var_1.b, vec4<i32>(var_1.c.x, 2147483647i, 10710i, 1i), var_1.d), Struct_3(Struct_2(global0.x, Struct_1(global0.x, vec2<f32>(-665f, var_1.a), var_1.c, false), Struct_1(-402f, var_1.b, var_1.c, true), var_2.wxy), Struct_2(var_1.a, Struct_1(global0.x, vec2<f32>(-1585f, global0.x), var_1.c, true), Struct_1(global0.x, var_1.b, vec4<i32>(-28620i, var_1.c.x, 86959i, 0i), true), vec3<u32>(var_2.x, u_input.b.x, var_2.x)), Struct_2(-1000f, Struct_1(-342f, vec2<f32>(var_1.b.x, -145f), vec4<i32>(var_1.c.x, -60872i, var_1.c.x, -41890i), true), Struct_1(878f, var_1.b, var_1.c, true), vec3<u32>(24562u, u_input.a.x, u_input.b.x)), var_1.a, var_2.x))), ~var_2.x).c, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1993f), Struct_1(var_1.b.x, var_1.b, var_1.c, var_3.x), Struct_1(var_1.b.x, global0.yx, vec4<i32>(41014i, var_1.c.x, var_1.c.x, var_1.c.x), true), vec3<u32>(var_4, 1u, var_4)), func_2(Struct_3(Struct_2(989f, Struct_1(-758f, global0.yx, vec4<i32>(0i, var_1.c.x, 0i, -12937i), var_1.d), Struct_1(var_1.b.x, vec2<f32>(global0.x, 528f), vec4<i32>(var_1.c.x, -12401i, 28635i, 1i), true), vec3<u32>(u_input.a.x, var_4, var_4)), Struct_2(-1353f, Struct_1(var_1.b.x, global0.xx, var_1.c, var_1.d), Struct_1(-108f, global0.xz, vec4<i32>(-12263i, var_1.c.x, 16125i, var_1.c.x), false), var_2.xyz), Struct_2(1000f, Struct_1(-559f, vec2<f32>(global0.x, global0.x), vec4<i32>(-20109i, -49185i, 2147483647i, 1806i), false), Struct_1(-627f, vec2<f32>(global0.x, var_1.a), var_1.c, var_0.x), vec3<u32>(10948u, 40923u, 14717u)), -1023f, u_input.b.x), var_2, 1f, var_4).c, global0.x, ~max(4294967295u, var_2.x)), vec4<u32>(_wgslsmith_mult_u32(4294967295u, var_4) ^ var_4, var_4, 4294967295u, max(_wgslsmith_mod_u32(var_4, var_2.x), _wgslsmith_dot_vec2_u32(var_2.zx, vec2<u32>(var_2.x, var_4)))), _wgslsmith_f_op_f32(f32(-1f) * -178f), firstLeadingBit(4245u)), vec4<u32>(_wgslsmith_sub_u32(~var_2.x, _wgslsmith_add_u32(1u, u_input.b.x)), 82803u, u_input.b.x, ~var_4) << (vec4<u32>(~4294967295u, u_input.a.x, abs(33500u), 22959u & _wgslsmith_mod_u32(24990u, var_4)) % vec4<u32>(32u)), _wgslsmith_div_f32(-1514f, global0.x), ~(~u_input.a.x)).a.c;
    let var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-902f, _wgslsmith_f_op_vec2_f32(func_4(Struct_3(Struct_2(-2804f, Struct_1(1247f, global0.yy, vec4<i32>(var_6.c.x, var_6.c.x, var_6.c.x, 48367i), var_5.x), Struct_1(var_1.a, global0.zy, vec4<i32>(0i, var_6.c.x, var_1.c.x, 1i), true), var_2.xwz), func_2(Struct_3(Struct_2(global0.x, Struct_1(1172f, var_1.b, vec4<i32>(var_1.c.x, var_6.c.x, -37561i, var_6.c.x), true), Struct_1(global0.x, vec2<f32>(-1000f, var_1.a), var_6.c, true), vec3<u32>(54743u, 4294967295u, 4294967295u)), Struct_2(var_1.a, Struct_1(-1441f, var_1.b, vec4<i32>(-44447i, -1i, 10344i, 62080i), true), Struct_1(global0.x, vec2<f32>(global0.x, -344f), vec4<i32>(var_1.c.x, -1i, var_6.c.x, var_1.c.x), true), u_input.a.zyx), Struct_2(349f, Struct_1(var_6.a, vec2<f32>(var_6.a, global0.x), vec4<i32>(-11979i, 23602i, var_1.c.x, var_6.c.x), true), Struct_1(-724f, var_1.b, var_1.c, true), var_2.yxy), -382f, 4294967295u), vec4<u32>(var_2.x, 4294967295u, 4294967295u, u_input.a.x), var_6.b.x, u_input.c).b, func_2(Struct_3(Struct_2(global0.x, Struct_1(var_6.a, global0.xx, var_1.c, var_0.x), Struct_1(1829f, vec2<f32>(var_6.a, 853f), var_1.c, true), u_input.b.wwz), Struct_2(var_6.a, Struct_1(var_1.b.x, var_1.b, var_6.c, true), Struct_1(-250f, global0.yz, vec4<i32>(var_1.c.x, 1i, var_6.c.x, -1i), var_0.x), vec3<u32>(var_2.x, 48781u, 15698u)), Struct_2(var_6.b.x, Struct_1(var_6.a, vec2<f32>(1083f, global0.x), var_1.c, true), Struct_1(var_6.b.x, var_1.b, vec4<i32>(var_6.c.x, var_1.c.x, -19918i, var_6.c.x), true), vec3<u32>(1u, u_input.a.x, 21218u)), -1422f, var_4), vec4<u32>(u_input.c, 0u, var_4, 38918u), global0.x, var_4).b, var_1.b.x, u_input.c ^ var_4))).x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(560f))), var_6.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -481f)), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_7 * var_6.a), _wgslsmith_f_op_f32(-542f + var_7))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1106f)))))), var_6.b.x);
}

