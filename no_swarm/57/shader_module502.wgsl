struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-846f, vec3<i32>(-13459i, -40052i, 0i), true, -1139f, vec4<bool>(true, true, false, true)), Struct_1(-213f, vec3<i32>(i32(-2147483648), -1i, -67471i), false, -1050f, vec4<bool>(true, true, false, true)), Struct_1(849f, vec3<i32>(22547i, 0i, i32(-2147483648)), true, 192f, vec4<bool>(false, false, false, true)), Struct_1(-1754f, vec3<i32>(-5544i, 27533i, 28653i), true, -1078f, vec4<bool>(true, true, true, true)), Struct_1(-1350f, vec3<i32>(11315i, -1i, 2147483647i), false, -257f, vec4<bool>(false, false, true, true)), Struct_1(-531f, vec3<i32>(0i, i32(-2147483648), 0i), true, 1000f, vec4<bool>(false, false, true, false)), Struct_1(1113f, vec3<i32>(-1i, 1i, 1i), true, -1582f, vec4<bool>(false, false, true, true)), Struct_1(-335f, vec3<i32>(0i, 1i, 0i), true, 1320f, vec4<bool>(true, true, false, false)));

var<private> global2: Struct_2 = Struct_2(Struct_1(1379f, vec3<i32>(-15980i, -1i, 2147483647i), false, -503f, vec4<bool>(true, true, true, true)), Struct_1(1625f, vec3<i32>(1i, i32(-2147483648), 2147483647i), false, -1345f, vec4<bool>(true, false, false, true)), vec3<f32>(466f, 881f, 1000f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> i32 {
    global1 = array<Struct_1, 8>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(global2.a.d)), -global2.a.b, !global2.b.e.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1545f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.b.a)))), global2.a.a)), !select(vec4<bool>(true, true, true, true), global2.a.e, select(vec4<bool>(global2.a.e.x, false, true, true), select(global2.a.e, global2.a.e, global2.a.e.x), all(global2.b.e.wzz))));
    var var_1 = global1[_wgslsmith_index_u32(u_input.b.x, 8u)];
    let var_2 = 38211u;
    let var_3 = Struct_3(u_input.a.xx, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -325f), 1306f)), vec3<u32>(79226u, 9364u, firstTrailingBit(_wgslsmith_clamp_u32(max(14359u, u_input.b.x), ~var_2, var_2 & u_input.b.x))), 2471u, -vec4<i32>(var_1.b.x, 58999i, abs(-6406i), 1i));
    return -_wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_1.b.x, u_input.a.x), vec3<i32>(2147483647i, -17054i, var_0.b.x)), _wgslsmith_div_i32(25470i, 1i)), select(u_input.a.x, arg_0, false) >> (var_2 % 32u)), _wgslsmith_div_i32(arg_0, var_0.b.x << (~var_3.c.x % 32u)));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> Struct_3 {
    global0 = array<f32, 11>();
    global1 = array<Struct_1, 8>();
    global2 = Struct_2(global1[_wgslsmith_index_u32(max(~37042u, u_input.b.x), 8u)], Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(1u), 11u)]), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], -175f)))), ~vec3<i32>(_wgslsmith_sub_i32(-13927i, global2.b.b.x), func_3(-2147483647i), ~u_input.a.x), !global2.b.e.x, 1365f, vec4<bool>(true, any(vec4<bool>(global2.b.c, global2.b.c, true, false)), arg_1.x, !any(vec2<bool>(arg_1.x, arg_1.x)))), vec3<f32>(736f, _wgslsmith_f_op_f32(1520f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.b.d + 2534f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(691f, 928f)))) + _wgslsmith_f_op_f32(floor(1370f)))));
    var var_0 = -2147483647i;
    global1 = array<Struct_1, 8>();
    return Struct_3(vec2<i32>(_wgslsmith_dot_vec2_i32(~(-u_input.a.zy), -u_input.a.zy), u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2306f) * -316f)) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(max(65988u & u_input.b.x, 4294967295u), 11u)] * 1048f)), ~(~u_input.b.wxw), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(_wgslsmith_sub_u32(1u, 1u), u_input.b.x, ~1u)), vec3<u32>(u_input.b.x, u_input.b.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x | 20791u))), reverseBits(-(~vec4<i32>(1i, global2.a.b.x, 51861i, 0i)) | _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, -2147483647i, -1i, global2.a.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0, u_input.a.x, -52194i, 34983i), vec4<i32>(global2.a.b.x, -2147483647i, u_input.a.x, u_input.a.x)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    global1 = array<Struct_1, 8>();
    var var_0 = vec3<i32>(select(arg_1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.x, -1i, -2147483647i, -42598i), _wgslsmith_mult_vec4_i32(vec4<i32>(10131i, global2.b.b.x, -1i, 11652i), arg_2.e)), false), -7850i, countOneBits(~countOneBits(-global2.b.b.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(global2.c.yz));
    global1 = array<Struct_1, 8>();
    return _wgslsmith_f_op_f32(-global2.c.x);
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: i32) -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(arg_1.x, -903f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.b.a)))))), _wgslsmith_f_op_f32(trunc(global2.b.a)), 466f);
    var var_1 = func_2(~(-(2147483647i >> (u_input.b.x % 32u))) << (0u % 32u), vec4<bool>(global2.a.c, false | !(!global2.a.c), any(select(vec3<bool>(false, false, false), !vec3<bool>(true, global2.a.e.x, arg_0), true)), true));
    let var_2 = !arg_0;
    global2 = Struct_2(Struct_1(func_2(0i, global2.a.e).b, u_input.a, !(var_2 & (var_1.b >= global2.c.x)), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(856f, -733f))))), vec4<bool>(false, true, true, false)), Struct_1(var_1.b, -(~vec3<i32>(22628i, u_input.a.x, global2.a.b.x)), var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(round(-1090f))))), !global2.a.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.c, _wgslsmith_f_op_vec3_f32(global2.c * arg_1.xzx)))));
    var var_3 = vec2<i32>(var_1.a.x, _wgslsmith_mod_i32(abs(-_wgslsmith_mult_i32(var_1.a.x, 2147483647i)), global2.b.b.x));
    return Struct_2(global2.a, global1[_wgslsmith_index_u32(func_2(max(var_3.x, global2.b.b.x), select(select(vec4<bool>(false, arg_0, true, false), !global2.a.e, global2.b.e), vec4<bool>(true, arg_0 && false, true, var_2), vec4<bool>(!var_2, arg_0, true, !global2.b.c))).c.x, 8u)], _wgslsmith_f_op_vec3_f32(select(var_0.ywy, vec3<f32>(-1606f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(560f)), _wgslsmith_f_op_f32(trunc(global2.a.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b - 1000f), _wgslsmith_f_op_f32(abs(var_0.x))))), _wgslsmith_f_op_f32(floor(global2.a.d)) <= _wgslsmith_f_op_f32(f32(-1f) * -2937f))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> vec4<f32> {
    let var_0 = func_5(arg_1.a > _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-427f, global2.a.a, -130f, arg_0.a)))))), vec4<f32>(global2.a.a, _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec2_i32(u_input.a.yx, arg_1.b.xz), func_2(12163i, arg_1.e), func_2(u_input.a.x, vec4<bool>(true, arg_0.e.x, true, true)))), _wgslsmith_f_op_f32(floor(arg_2.x)), arg_2.x)), arg_0.b.x);
    let var_1 = func_5(arg_0.c, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a + -931f), func_5(arg_0.e.x, vec4<f32>(arg_0.a, arg_0.d, 1622f, -1000f), u_input.a.x & u_input.a.x).b.a), 1000f, _wgslsmith_f_op_f32(-func_2(1i, vec4<bool>(false, global2.b.c, true, true)).b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_0.a, 1435f)), _wgslsmith_f_op_f32(sign(-161f)))))), -1i).b;
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.a, global0[_wgslsmith_index_u32(u_input.b.x, 11u)], var_0.a.c)), _wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(-2553f * 650f), _wgslsmith_f_op_f32(-2027f - 977f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(613f, -715f, var_1.a, arg_0.d)), vec4<f32>(635f, -209f, -444f, -892f))))))));
    global2 = Struct_2(global2.b, func_5(func_5(true, vec4<f32>(var_1.a, 842f, arg_0.d, 267f), reverseBits(-2147483647i)).a.c || any(func_5(var_1.c, vec4<f32>(1795f, var_2.x, arg_1.a, global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), var_0.a.b.x).a.e.xz), var_2, _wgslsmith_mod_i32(~arg_1.b.x ^ countOneBits(2147483647i), max(var_0.b.b.x, -2147483647i))).b, vec3<f32>(func_5(u_input.b.x > u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_2)) * _wgslsmith_f_op_vec4_f32(var_2 - var_2)), _wgslsmith_mult_i32(~global2.a.b.x, -1i)).b.a, func_2(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(global2.a.b.zy, vec2<i32>(1i, 5126i)), var_1.b.x), vec4<bool>(u_input.b.x >= u_input.b.x, u_input.b.x != u_input.b.x, arg_1.b.x > u_input.a.x, global2.b.c)).b, _wgslsmith_f_op_f32(117f + arg_1.d)));
    let var_3 = select(!var_1.e.xx, !select(vec2<bool>(arg_0.c, !var_0.a.e.x), !global2.b.e.wx, var_1.e.xy), !select(vec2<bool>(true, true), global2.b.e.zy, true));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1300f, _wgslsmith_f_op_f32(abs(-619f)), _wgslsmith_f_op_f32(min(arg_2.x, -2858f)), 1511f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.b.d, global2.b.d))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(127f, global0[_wgslsmith_index_u32(25921u, 11u)]) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(116315u, 11u)], global2.a.a)))))) - vec4<f32>(_wgslsmith_f_op_f32(step(-439f, _wgslsmith_f_op_f32(step(1000f, 1000f)))), _wgslsmith_f_op_f32(global2.a.d + -2007f), _wgslsmith_f_op_f32(f32(-1f) * -378f), global2.a.d));
    var var_1 = any(global2.a.e);
    let var_2 = reverseBits(u_input.b.x);
    var var_3 = min(_wgslsmith_clamp_vec2_u32(~vec2<u32>(11220u, 24241u), vec2<u32>(var_2, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)) | reverseBits(u_input.b.zy ^ u_input.b.wy), vec2<u32>(u_input.b.x, ~max(559u, var_2))) & _wgslsmith_div_vec2_u32(u_input.b.yw, firstTrailingBit(select(vec2<u32>(var_2, u_input.b.x), vec2<u32>(u_input.b.x, 4294967295u), false)) | vec2<u32>(~u_input.b.x, ~var_2));
    global1 = array<Struct_1, 8>();
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -790f)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -20504i, vec4<u32>(15755u, min(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 0u), u_input.b.x, u_input.b.x) ^ vec4<u32>(0u, _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.b.wzw), u_input.b.ywx ^ vec3<u32>(4294967295u, 18991u, var_3.x)), ~func_2(-55972i, global2.a.e).d, 911u), (_wgslsmith_mod_vec2_u32(vec2<u32>(94701u, 83874u) | u_input.b.yy, ~vec2<u32>(var_2, u_input.b.x)) ^ vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(40354u, var_2, var_3.x, 15571u), vec4<u32>(var_2, var_2, 66833u, u_input.b.x)), ~1u)) << (select(max(min(vec2<u32>(var_2, 57909u), u_input.b.xw), u_input.b.wz), vec2<u32>(1u, 73667u), !(u_input.a.x == -2147483647i)) % vec2<u32>(32u)));
}

