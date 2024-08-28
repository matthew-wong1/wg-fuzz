struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true));

var<private> global1: bool;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(-911f, -1260f), 0u, vec3<f32>(-1727f, 1000f, 317f)), Struct_1(vec4<bool>(true, false, false, true), vec2<f32>(227f, 792f), 24369u, vec3<f32>(526f, -1217f, 451f)), vec2<i32>(21957i, -1i));

var<private> global3: Struct_1;

var<private> global4: Struct_3 = Struct_3(40495i, Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(1000f, -1367f), 1u, vec3<f32>(-250f, 1051f, -1000f)), Struct_1(vec4<bool>(true, true, false, true), vec2<f32>(-319f, -454f), 0u, vec3<f32>(-497f, 1442f, -598f)), vec2<i32>(-1i, 16380i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    let var_0 = Struct_2(Struct_1(select(global2.b.a, select(!arg_2.b.a, vec4<bool>(false, global2.b.a.x, global4.c.a.x, false), !vec4<bool>(true, global4.b.a.x, global3.a.x, false)), select(!global3.a, vec4<bool>(true, global2.a.a.x, true, global2.b.a.x), global3.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global4.c.b)))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, arg_2.b.c), vec2<u32>(4148u, global2.a.c)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-385f, global2.b.d.x, global4.c.b.x), global4.b.d), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(936f, 175f, global4.b.b.x))), _wgslsmith_f_op_vec3_f32(select(global2.a.d, vec3<f32>(1796f, 995f, global3.b.x), arg_2.b.a.x))))), Struct_1(arg_2.a.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(672f, -3191f) - vec2<f32>(arg_2.b.d.x, global2.a.d.x)))))), _wgslsmith_mult_u32(countOneBits(global3.c), ~_wgslsmith_dot_vec4_u32(vec4<u32>(67451u, 31563u, 91496u, 0u), vec4<u32>(16822u, global3.c, 1u, 61483u))), vec3<f32>(1408f, 870f, 137f)), u_input.b.xz);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.b.b.x, global2.a.b.x)) - _wgslsmith_f_op_f32(-global3.b.x))));
    global0 = array<vec3<bool>, 32>();
    return !(!(!(!arg_2.a.a.x)));
}

fn func_2() -> Struct_2 {
    global2 = Struct_2(global2.a, Struct_1(vec4<bool>(true, true, global2.b.a.x, !any(global0[_wgslsmith_index_u32(u_input.d.x, 32u)])), global2.b.d.zx, ~31648u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(347f, global3.d.x, 1000f))))), global4.d);
    return Struct_2(Struct_1(global3.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1391f, 621f) - vec2<f32>(global3.d.x, global4.b.b.x)), _wgslsmith_f_op_vec2_f32(-global3.d.zx), global4.c.a.x))), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(19303u, 6093u), u_input.d) & global2.a.c), vec3<f32>(global2.b.d.x, 367f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.a.b.x + global4.c.b.x))))), global4.c, vec2<i32>(~select(_wgslsmith_clamp_i32(global2.c.x, -15290i, global4.d.x), u_input.a, func_3(global2.c.x, u_input.c.xyz, Struct_2(global4.b, Struct_1(global2.a.a, global4.c.d.zz, global4.c.c, global4.b.d), global4.d))), 0i));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = Struct_2(func_2().b, Struct_1(vec4<bool>(true, true, true, true), global2.a.d.yx, firstTrailingBit(4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global4.c.d, global2.b.d) - arg_0.zwz))), vec2<i32>(1i, global4.d.x ^ _wgslsmith_add_i32(~6013i, 2147483647i)));
    let var_2 = 2147483647i;
    let var_3 = select(!global2.a.a, global4.b.a, !(!(!var_0.b.a)));
    var var_4 = _wgslsmith_div_i32(var_0.c.x, global2.c.x);
    return var_0.a;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    global2 = func_2();
    var var_0 = Struct_2(global4.c, global4.b, _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global4.d.x, 1i), u_input.c.yzx) << (68732u % 32u), u_input.c.x), u_input.c.yz));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(185f, 673f, global2.a.b.x, 164f) * vec4<f32>(-687f, -1049f, 462f, var_0.a.d.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-685f, global4.c.b.x, global2.b.b.x, 190f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1141f, var_0.a.b.x, -1901f, arg_0.c.b.x), vec4<f32>(-473f, global4.c.b.x, global3.b.x, global3.d.x))), vec4<f32>(global4.b.d.x, global3.d.x, global4.c.d.x, global3.b.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, -679f, global3.d.x, arg_2.d.x))))));
    var var_2 = func_1(_wgslsmith_f_op_vec4_f32(-var_1)).a.xy;
    var var_3 = _wgslsmith_div_u32(44502u, ~global4.b.c);
    return Struct_2(Struct_1(!global2.a.a, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(sign(1521f)), var_1.x), vec2<f32>(var_0.b.b.x, _wgslsmith_f_op_f32(sign(var_0.b.d.x))))), global3.c, var_1.wzw), Struct_1(vec4<bool>(u_input.a <= var_0.c.x, any(global2.a.a), true, false & !arg_2.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.d.x, arg_2.d.x) - vec2<f32>(1018f, -1478f))) - arg_2.d.zx), 17168u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, arg_0.b.d.x, -654f) * arg_2.d))))), global4.d);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    var var_0 = global3.a.x;
    var var_1 = select(~_wgslsmith_div_vec2_i32(global2.c, vec2<i32>(global4.d.x, global4.d.x) << (vec2<u32>(global4.c.c, 5772u) % vec2<u32>(32u))), global4.d, true) & vec2<i32>(_wgslsmith_add_i32(~arg_1.c.x, 1i) | _wgslsmith_mod_i32(abs(arg_2.d.x), arg_2.a), -1i);
    global3 = func_2().b;
    var_1 = firstTrailingBit(-func_4(Struct_3(global2.c.x, func_4(Struct_3(arg_1.c.x, global4.b, Struct_1(vec4<bool>(global3.a.x, global3.a.x, arg_1.b.a.x, false), global3.b, 52748u, vec3<f32>(global4.b.d.x, global3.d.x, arg_1.a.d.x)), vec2<i32>(arg_0.x, arg_0.x)), vec2<i32>(22760i, arg_2.d.x), Struct_1(global4.b.a, vec2<f32>(-424f, arg_2.b.d.x), global3.c, vec3<f32>(-790f, global4.c.d.x, -1544f))).a, Struct_1(vec4<bool>(true, global4.c.a.x, false, true), vec2<f32>(global2.a.d.x, -1071f), arg_1.b.c, vec3<f32>(-528f, -712f, -1023f)), vec2<i32>(19973i, 1i)), func_2().c, func_2().b).c);
    let var_2 = global4.b.d.x;
    return func_4(arg_2, arg_0.xz, Struct_1(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c.b.x, 1473f, 1089f, arg_1.b.d.x), vec4<f32>(global3.b.x, global2.b.b.x, arg_1.b.d.x, arg_1.b.d.x))).a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.d.x, global2.a.d.x)), -1341f), global4.b.c << (1u % 32u), func_2().a.d)).b;
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: Struct_3) -> Struct_3 {
    global4 = arg_2;
    let var_0 = global4.d;
    global2 = func_2();
    global2 = Struct_2(Struct_1(!vec4<bool>(global2.a.a.x, true, false || global4.c.a.x, func_5(vec3<i32>(arg_2.a, arg_2.d.x, global2.c.x), Struct_2(Struct_1(global3.a, global2.b.b, u_input.d.x, vec3<f32>(global2.a.d.x, global4.c.d.x, arg_2.c.d.x)), global4.c, global4.d), Struct_3(15963i, global2.b, arg_2.c, vec2<i32>(-1i, -1i)), global2.c.x).a.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -564f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.b.d.x)) + arg_1)), _wgslsmith_div_u32(4294967295u, 87307u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1076f, _wgslsmith_f_op_f32(arg_2.c.b.x * 368f), arg_1) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.d.x, -1837f, global3.b.x) + global4.c.d))), Struct_1(global2.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.a.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(1347f, -443f) * global4.b.b))), abs(1u), global2.b.d), _wgslsmith_sub_vec2_i32(-abs(global4.d), ~u_input.b.zy));
    var var_1 = Struct_3(_wgslsmith_clamp_i32(min(-1838i >> (_wgslsmith_sub_u32(4294967295u, u_input.d.x) % 32u), u_input.c.x), max(-_wgslsmith_add_i32(var_0.x, 0i), ~global2.c.x), global4.a & -2147483647i), func_2().b, Struct_1(select(func_5(-vec3<i32>(41590i, 0i, 0i), Struct_2(global4.b, Struct_1(vec4<bool>(true, global3.a.x, global4.b.a.x, arg_2.c.a.x), global4.b.b, 4294967295u, vec3<f32>(1000f, global4.c.d.x, 759f)), arg_2.d), Struct_3(-2147483647i, arg_2.b, Struct_1(vec4<bool>(false, global4.c.a.x, false, true), vec2<f32>(127f, 505f), u_input.d.x, vec3<f32>(1548f, 1000f, 430f)), u_input.b.yz), _wgslsmith_sub_i32(global2.c.x, 1i)).a, global3.a, arg_2.c.a.x), _wgslsmith_f_op_vec2_f32(-func_2().b.d.yx), _wgslsmith_add_u32(select(arg_0, ~0u, !arg_2.c.a.x), _wgslsmith_mult_u32(0u, 1u)), vec3<f32>(global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.d.x))), global3.d.x)), reverseBits(vec2<i32>(~firstTrailingBit(1i), var_0.x)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global4.c.a.x;
    var var_0 = func_6(~abs(14294u), global4.b.d.x, Struct_3(countOneBits(global4.d.x ^ _wgslsmith_mod_i32(global2.c.x, global4.d.x)), func_5(vec3<i32>(global2.c.x, global2.c.x << (4294967295u % 32u), global2.c.x), func_4(Struct_3(global4.a, global2.a, Struct_1(global3.a, vec2<f32>(global2.a.d.x, 143f), 162999u, vec3<f32>(-1000f, 1958f, -132f)), global4.d), vec2<i32>(-8325i, global2.c.x), func_1(vec4<f32>(884f, global3.b.x, global2.b.d.x, global2.a.d.x))), Struct_3(reverseBits(2147483647i), Struct_1(vec4<bool>(true, true, true, false), global3.d.yy, 4294967295u, vec3<f32>(global4.b.b.x, 272f, -1351f)), global4.b, countOneBits(u_input.c.yw)), 0i), global4.c, u_input.b.zx));
    var_0 = Struct_3(min(func_2().c.x, u_input.a), Struct_1(vec4<bool>(true, any(global3.a.wxz), var_0.b.a.x, !all(vec4<bool>(global3.a.x, global2.b.a.x, true, false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global4.c.b)), func_4(Struct_3(0i, Struct_1(vec4<bool>(true, false, global2.b.a.x, var_0.c.a.x), var_0.b.b, 4294967295u, vec3<f32>(425f, global3.b.x, global3.b.x)), Struct_1(global3.a, vec2<f32>(-1000f, global4.b.d.x), u_input.d.x, var_0.b.d), global2.c), vec2<i32>(-29814i, -1i) << (vec2<u32>(global4.b.c, var_0.b.c) % vec2<u32>(32u)), func_1(vec4<f32>(-618f, global2.b.b.x, var_0.b.d.x, -149f))).b.b), global2.b.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1519f)) - -1121f), -1645f, 365f)), var_0.c, ~select(vec2<i32>(global4.a, 2147483647i), _wgslsmith_sub_vec2_i32(var_0.d, vec2<i32>(var_0.a, -16766i)), false) << (~u_input.d % vec2<u32>(32u)));
    global3 = var_0.b;
    global2 = Struct_2(func_2().a, func_5(u_input.b, Struct_2(func_2().b, Struct_1(var_0.b.a, global3.d.zz, _wgslsmith_div_u32(78477u, 35466u), vec3<f32>(global4.c.b.x, global2.a.b.x, global2.a.b.x)), global4.d), func_6(0u, _wgslsmith_f_op_f32(f32(-1f) * -616f), func_6(func_5(vec3<i32>(1i, global2.c.x, 0i), Struct_2(global4.c, Struct_1(vec4<bool>(var_0.c.a.x, global3.a.x, false, false), global2.a.d.yx, global4.c.c, global2.a.d), global2.c), Struct_3(30689i, Struct_1(vec4<bool>(global2.a.a.x, true, true, false), vec2<f32>(global4.b.d.x, global2.b.d.x), global4.c.c, var_0.c.d), global4.c, var_0.d), -1i).c, global2.a.b.x, func_6(11200u, -385f, Struct_3(global4.a, global4.b, Struct_1(global4.c.a, var_0.b.d.yz, 4294967295u, global4.b.d), var_0.d)))), -(_wgslsmith_div_i32(global2.c.x, -1i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.c, global3.c, 4294967295u), vec3<u32>(9060u, var_0.c.c, 0u)) % 32u))), vec2<i32>(_wgslsmith_clamp_i32(2147483647i, var_0.d.x, global2.c.x), global2.c.x));
    var var_1 = select(vec3<bool>(global4.b.a.x, func_5(u_input.c.www, Struct_2(var_0.c, func_2().a, global2.c), Struct_3(_wgslsmith_dot_vec2_i32(global2.c, global2.c), Struct_1(global2.a.a, var_0.b.d.xz, u_input.d.x, vec3<f32>(858f, var_0.b.d.x, global3.b.x)), Struct_1(vec4<bool>(false, var_0.c.a.x, true, global3.a.x), vec2<f32>(global3.d.x, 2039f), 76307u, vec3<f32>(var_0.c.b.x, global4.c.b.x, 839f)), func_6(0u, -1269f, Struct_3(var_0.d.x, Struct_1(vec4<bool>(true, global2.b.a.x, global3.a.x, global4.c.a.x), vec2<f32>(239f, global2.b.d.x), 4294967295u, var_0.b.d), global4.b, vec2<i32>(global4.d.x, u_input.b.x))).d), var_0.d.x).a.x, true), select(!func_2().a.a.wxx, global2.b.a.xzz, any(global3.a.yy)), func_2().b.a.xwz);
    let var_2 = ~vec4<u32>(~global3.c, ~abs(var_0.c.c), var_0.b.c & 17213u, ~4294967295u);
    global4 = func_6(3809u, func_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, global3.b.x, -874f, 1887f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(747f, global2.b.d.x, var_0.c.b.x, global3.d.x) * vec4<f32>(global4.c.d.x, var_0.c.b.x, 1640f, 689f)))))).d.x, func_6(global2.a.c, global2.a.d.x, func_6(abs(~var_2.x), func_4(Struct_3(var_0.a, global2.a, var_0.b, vec2<i32>(-20539i, var_0.d.x)), global2.c, Struct_1(vec4<bool>(false, true, global4.c.a.x, var_0.c.a.x), var_0.b.b, 53937u, var_0.c.d)).a.b.x, Struct_3(min(global4.d.x, global4.a), func_4(Struct_3(global4.a, global2.b, Struct_1(vec4<bool>(global3.a.x, false, var_0.c.a.x, true), vec2<f32>(global2.a.d.x, -270f), 13177u, global2.a.d), vec2<i32>(var_0.a, var_0.a)), vec2<i32>(global4.d.x, 18804i), var_0.c).b, global2.b, vec2<i32>(-6651i, var_0.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -834f), global2.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1921f, global3.d.x)), global3.d.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(-global4.c.b.x), -1000f, -1749f)))), ~u_input.c.zyw, -_wgslsmith_mod_vec2_i32(-u_input.c.yw, global2.c), vec4<f32>(-1000f, _wgslsmith_f_op_f32(310f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b.x, var_0.c.d.x))), _wgslsmith_div_f32(global4.c.d.x, global4.c.d.x), global2.a.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b.d, vec3<f32>(1885f, var_0.b.b.x, global4.c.d.x))));
}

