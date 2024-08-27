struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(27760u, 62872u, 0u), vec3<u32>(4294967295u, 72610u, 99476u), vec3<u32>(16042u, 43955u, 1u), vec3<u32>(1u, 11388u, 20148u), vec3<u32>(0u, 16677u, 1u), vec3<u32>(0u, 6591u, 0u), vec3<u32>(4294967295u, 14372u, 17655u), vec3<u32>(1u, 12628u, 4294967295u), vec3<u32>(0u, 0u, 28100u), vec3<u32>(12476u, 68363u, 1u), vec3<u32>(55382u, 26753u, 0u));

var<private> global1: Struct_4;

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_5, 21> = array<Struct_5, 21>(Struct_5(0u, 1000f), Struct_5(0u, 1220f), Struct_5(10269u, -949f), Struct_5(0u, 297f), Struct_5(0u, 201f), Struct_5(1u, -821f), Struct_5(1u, 377f), Struct_5(1537u, -150f), Struct_5(11008u, -613f), Struct_5(1u, 1000f), Struct_5(4294967295u, -786f), Struct_5(1u, -307f), Struct_5(17371u, -622f), Struct_5(0u, -117f), Struct_5(0u, 140f), Struct_5(7782u, 1474f), Struct_5(1u, 471f), Struct_5(4294967295u, 2816f), Struct_5(1u, -1937f), Struct_5(20929u, -752f), Struct_5(7885u, 1000f));

var<private> global4: array<i32, 25>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.b, -316f, -142f, 681f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1909f), global2.x, _wgslsmith_f_op_f32(trunc(global1.b.b)), _wgslsmith_f_op_f32(-1270f * 1796f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(global1.b.a.x)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1f) * -995f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(trunc(global1.b.b)), _wgslsmith_f_op_f32(f32(-1f) * -119f), _wgslsmith_f_op_f32(-global1.b.b)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, global1.b.a.x, global1.b.a.x, -1062f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.b, 210f, 1098f, global2.x)))))));
    global4 = array<i32, 25>();
    global3 = array<Struct_5, 21>();
    global4 = array<i32, 25>();
    var var_0 = Struct_3(Struct_2(-_wgslsmith_div_i32(~(-13405i), reverseBits(u_input.a)), select(global1.b.d.x, !all(vec4<bool>(false, true, global1.b.d.x, global1.b.d.x)), true), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -119f), 1594f), _wgslsmith_f_op_f32(min(-719f, global1.b.a.x)), !select(vec2<bool>(false, true), vec2<bool>(false, global1.b.c.x), false), select(vec2<bool>(global1.b.d.x, global1.b.c.x), !global1.b.d, global1.b.d.x)), ~(vec2<i32>(-1i) * -vec2<i32>(global4[_wgslsmith_index_u32(u_input.b, 25u)], global4[_wgslsmith_index_u32(global1.a, 25u)]))), Struct_2(_wgslsmith_mult_i32(-18181i, u_input.a), firstLeadingBit(0u) > ~(~global1.a), global1.b, _wgslsmith_mod_vec2_i32(~(-vec2<i32>(1i, -18127i)), -vec2<i32>(-7443i, global4[_wgslsmith_index_u32(u_input.c.x, 25u)]))), Struct_2(-25013i, false, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, -1330f) * vec3<f32>(global1.b.b, -1144f, global2.x)), global1.b.a.x, vec2<bool>(false, global1.b.d.x || true), vec2<bool>(global1.b.c.x, true)), max(countOneBits(~vec2<i32>(2147483647i, global4[_wgslsmith_index_u32(global1.a, 25u)])), (vec2<i32>(-2147483647i, global4[_wgslsmith_index_u32(global1.a, 25u)]) & vec2<i32>(u_input.a, 42079i)) << (~u_input.c.xz % vec2<u32>(32u)))));
    return global2.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + 362f) + 695f);
    var var_1 = !all(vec3<bool>(global1.b.d.x, !arg_1.c.x, _wgslsmith_mult_u32(u_input.c.x, global1.a) >= ~u_input.c.x));
    let var_2 = Struct_2(1i, true, global1.b, abs(min(select(abs(vec2<i32>(u_input.a, arg_2)), ~vec2<i32>(-22933i, u_input.a), select(vec2<bool>(false, true), vec2<bool>(false, global1.b.d.x), global1.b.c)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 64978i), vec2<i32>(arg_2, arg_2) & vec2<i32>(2147483647i, 2147483647i)))));
    global3 = array<Struct_5, 21>();
    let var_3 = 1547f;
    return vec3<bool>(true | (global1.b.b >= _wgslsmith_div_f32(-265f, _wgslsmith_f_op_f32(arg_0.x + global1.b.a.x))), arg_1.c.x, true);
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec4<bool>) -> u32 {
    let var_0 = vec3<bool>(true, all(arg_3.zxy), false);
    global2 = vec4<f32>(-1331f, global1.b.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1185f, -194f)) - _wgslsmith_f_op_f32(select(global2.x, 403f, false))) + global1.b.a.x))), global2.x);
    var var_1 = min(1u, _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 46969u), vec4<u32>(global1.a, u_input.b, 1u, u_input.b)), vec4<u32>(1u, 71300u, 49598u, global1.a) ^ vec4<u32>(global1.a, u_input.c.x, 1u, 1u)), ~(~select(global1.a, u_input.c.x, global1.b.c.x))));
    global1 = Struct_4(min(~0u >> (u_input.b % 32u), _wgslsmith_div_u32(firstLeadingBit(4294967295u), global1.a)) << (89610u % 32u), arg_2.c);
    let var_2 = global3[_wgslsmith_index_u32(firstLeadingBit(~0u), 21u)];
    return _wgslsmith_div_u32(var_2.a, ~(~_wgslsmith_dot_vec4_u32(max(vec4<u32>(14999u, u_input.c.x, 1u, 0u), vec4<u32>(global1.a, u_input.b, global1.a, 18644u)), vec4<u32>(55319u, 18816u, u_input.c.x, 9146u))));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> Struct_2 {
    global4 = array<i32, 25>();
    let var_0 = func_4(min(i32(-1i) * -arg_0.x, ~(-global4[_wgslsmith_index_u32(61447u, 25u)])), select(vec3<bool>((global1.b.c.x && global1.b.d.x) | !global1.b.c.x, _wgslsmith_div_f32(global1.b.a.x, global1.b.a.x) < _wgslsmith_f_op_f32(floor(global2.x)), global1.b.c.x), select(func_2(global2.yx, Struct_1(global2.xzx, -178f, global1.b.d, vec2<bool>(true, false)), 1i, ~0u), !(!vec3<bool>(global1.b.c.x, global1.b.d.x, true)), select(vec3<bool>(global1.b.d.x, false, global1.b.d.x), !vec3<bool>(true, global1.b.d.x, global1.b.c.x), select(vec3<bool>(global1.b.d.x, false, global1.b.d.x), vec3<bool>(global1.b.c.x, false, true), false))), false), Struct_2(31377i, 617f == _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(abs(572f))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-852f, -612f, global1.b.a.x) + vec3<f32>(640f, global1.b.b, -771f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-234f)), _wgslsmith_f_op_f32(global2.x + 286f)), select(!global1.b.d, global1.b.c, select(vec2<bool>(false, global1.b.c.x), vec2<bool>(global1.b.c.x, false), vec2<bool>(true, true))), vec2<bool>(global1.b.d.x, true)), reverseBits(countOneBits(-vec2<i32>(26458i, arg_1)))), select(!(!select(vec4<bool>(true, global1.b.d.x, false, global1.b.d.x), vec4<bool>(false, false, true, true), vec4<bool>(global1.b.d.x, false, global1.b.c.x, true))), select(!vec4<bool>(global1.b.d.x, false, false, global1.b.d.x), select(vec4<bool>(global1.b.c.x, true, true, true), select(vec4<bool>(true, global1.b.d.x, true, true), vec4<bool>(global1.b.d.x, global1.b.c.x, true, global1.b.c.x), vec4<bool>(false, global1.b.c.x, false, false)), !vec4<bool>(false, false, global1.b.c.x, global1.b.c.x)), false), all(!vec2<bool>(global1.b.d.x, global1.b.d.x))));
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.a.x * global2.x)), global2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.b.b - -678f)))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global2.x, 588f)), global2.x, !global1.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-433f * global2.x) - -1352f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.a.x * global1.b.b) * _wgslsmith_f_op_f32(-global2.x)), global2.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global1.b.a.x, 352f, global2.x) - vec4<f32>(global2.x, -1000f, global1.b.a.x, global1.b.b)))))))));
    global1 = Struct_4(var_0, Struct_1(global1.b.a, 469f, global1.b.c, vec2<bool>(func_2(_wgslsmith_f_op_vec2_f32(ceil(global1.b.a.xz)), global1.b, firstLeadingBit(arg_1), global1.a).x, all(func_2(vec2<f32>(global1.b.b, 1231f), global1.b, 0i, 38028u)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_f_op_f32(f32(-1f) * -571f), global1.b.a.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global1.b.a.x, global2.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.a.x, 587f, global1.b.a.x)) + _wgslsmith_f_op_vec3_f32(global2.wwz - vec3<f32>(-354f, global1.b.b, global1.b.a.x))))), -1432f, vec2<bool>(all(!vec4<bool>(global1.b.d.x, global1.b.d.x, global1.b.d.x, global1.b.c.x)), true), select(func_2(_wgslsmith_f_op_vec2_f32(select(global2.yz, vec2<f32>(global2.x, 421f), !vec2<bool>(global1.b.c.x, true))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(1597f, 1429f, -1224f), vec3<f32>(1129f, global1.b.b, 1367f)), _wgslsmith_f_op_f32(sign(618f)), global1.b.c, vec2<bool>(global1.b.d.x, global1.b.d.x)), arg_0.x, func_4(arg_0.x, !vec3<bool>(global1.b.c.x, global1.b.d.x, global1.b.c.x), Struct_2(0i, global1.b.d.x, Struct_1(vec3<f32>(2498f, -214f, global1.b.b), -266f, vec2<bool>(global1.b.d.x, false), vec2<bool>(global1.b.c.x, true)), arg_0.zx), select(vec4<bool>(global1.b.c.x, false, false, global1.b.c.x), vec4<bool>(false, global1.b.c.x, global1.b.d.x, global1.b.d.x), true))).zy, vec2<bool>(_wgslsmith_div_i32(-61650i, arg_1) == 2698i, true), !global1.b.c));
    return Struct_2(2147483647i, firstTrailingBit(func_4(_wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(0u, 25u)], arg_1, arg_0.x), select(vec3<bool>(global1.b.d.x, true, global1.b.c.x), vec3<bool>(false, global1.b.d.x, global1.b.d.x), vec3<bool>(global1.b.c.x, false, var_1.d.x)), Struct_2(u_input.a, var_1.c.x, Struct_1(vec3<f32>(global2.x, 918f, var_1.b), global1.b.a.x, var_1.c, vec2<bool>(global1.b.d.x, false)), vec2<i32>(-1i, -14143i)), select(vec4<bool>(var_1.d.x, global1.b.c.x, var_1.c.x, false), vec4<bool>(global1.b.c.x, false, false, global1.b.c.x), vec4<bool>(true, var_1.c.x, var_1.d.x, true)))) == global1.a, global1.b, ~(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, -5535i), arg_0.yz), max(global4[_wgslsmith_index_u32(global1.a, 25u)], 0i)) & vec2<i32>(_wgslsmith_dot_vec3_i32(arg_0, arg_0), _wgslsmith_mod_i32(2147483647i, arg_0.x))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_2) -> f32 {
    global2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1895f, 375f, global2.x, arg_1.c.a.x), vec4<f32>(arg_1.c.b, 632f, 1819f, 258f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(120f, -242f, arg_1.c.b, -296f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.a.x, -1521f, global2.x, arg_0.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.b, arg_1.c.a.x, -942f, -1118f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, global1.b.b, 923f) + vec4<f32>(global2.x, arg_0.b, -427f, arg_0.b)))))))));
    var var_0 = max(~24227u, ~abs(global1.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-139f, global2.x, arg_0.b, -159f) * vec4<f32>(-908f, global1.b.a.x, -876f, arg_1.c.b))), vec4<f32>(_wgslsmith_f_op_f32(-1451f + arg_1.c.a.x), _wgslsmith_f_op_f32(-1000f + global2.x), arg_1.c.b, arg_1.c.b)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -373f), _wgslsmith_f_op_f32(-arg_0.b), global1.b.c.x)), global1.b.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-176f, arg_1.c.b) - -447f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.a.x))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(arg_1.c.b * 954f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(global1.b.b + arg_1.c.b), all(vec4<bool>(arg_1.b, true, arg_1.b, arg_1.c.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1613f)))), -1188f, _wgslsmith_f_op_f32(-1000f - -394f), global1.b.a.x);
    let var_2 = ~(~1u) > u_input.b;
    return -742f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_5, 21>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(global3[_wgslsmith_index_u32(4294967295u, 21u)], func_1(-vec3<i32>(global4[_wgslsmith_index_u32(u_input.c.x, 25u)], u_input.a, 1i), -56848i))))), 1643f);
    let var_1 = vec4<i32>(-1i) * -(select(vec4<i32>(-38884i, u_input.a, -22985i, 1i) >> (vec4<u32>(31918u, 1u, u_input.b, global1.a) % vec4<u32>(32u)), vec4<i32>(u_input.a, 68217i, u_input.a, global4[_wgslsmith_index_u32(52337u, 25u)]), select(vec4<bool>(global1.b.c.x, global1.b.c.x, true, global1.b.d.x), vec4<bool>(true, global1.b.d.x, true, global1.b.c.x), global1.b.c.x)) ^ ~abs(vec4<i32>(global4[_wgslsmith_index_u32(global1.a, 25u)], -13918i, -21514i, global4[_wgslsmith_index_u32(global1.a, 25u)])));
    let x = u_input.a;
    s_output = StorageBuffer(42531i, -2147483647i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(879f - global2.x)) * _wgslsmith_f_op_f32(-global2.x)), global2.x, false)));
}

