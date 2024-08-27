struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26>;

var<private> global1: bool = false;

var<private> global2: vec3<u32>;

var<private> global3: array<bool, 1> = array<bool, 1>(false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> bool {
    global1 = true;
    let var_0 = vec3<bool>(arg_0.c.a.x, global3[_wgslsmith_index_u32(50614u, 1u)], 4294967295u != max(global2.x ^ ~global2.x, _wgslsmith_add_u32(0u, arg_0.c.d) << (1u % 32u)));
    var var_1 = Struct_2((abs(u_input.a) & u_input.a) | _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(16419u, arg_0.c.d, arg_0.c.d), abs(u_input.a)), _wgslsmith_sub_vec3_u32(arg_0.a | arg_0.a, min(u_input.a, u_input.a))), vec4<bool>(reverseBits(arg_0.c.b << (4294967295u % 32u)) < 6757i, arg_0.c.c <= _wgslsmith_f_op_f32(arg_0.c.c * _wgslsmith_f_op_f32(-arg_0.c.c)), any(arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2899f, -814f, false)) * -1311f) < 786f), arg_0.c);
    global2 = vec3<u32>(1u, _wgslsmith_mod_u32(u_input.a.x >> (~4294967295u % 32u), reverseBits(min(~39858u, 1u))), _wgslsmith_dot_vec2_u32(u_input.a.zx, ~vec2<u32>(var_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 12069u, u_input.a.x, global2.x), vec4<u32>(4294967295u, u_input.a.x, 29864u, arg_0.c.d)))));
    let var_2 = arg_1;
    return arg_0.c.a.x;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = (i32(-1i) * -select(_wgslsmith_mult_i32(-21695i, 0i), abs(0i), global3[_wgslsmith_index_u32(1u, 1u)])) ^ abs(-21514i);
    global0 = array<vec2<f32>, 26>();
    let var_1 = Struct_2(~(~u_input.a), vec4<bool>(false, false && func_3(Struct_2(vec3<u32>(global2.x, global2.x, u_input.a.x), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], global3[_wgslsmith_index_u32(global2.x, 1u)], global3[_wgslsmith_index_u32(1u, 1u)], global3[_wgslsmith_index_u32(global2.x, 1u)]), Struct_1(vec2<bool>(global3[_wgslsmith_index_u32(0u, 1u)], false), -1i, arg_0.x, global2.x, global3[_wgslsmith_index_u32(5408u, 1u)])), _wgslsmith_div_vec4_i32(vec4<i32>(7847i, 2147483647i, 1i, -2147483647i), vec4<i32>(27862i, 13761i, -63333i, -2147483647i))), all(select(vec2<bool>(true, false), vec2<bool>(true, true), global3[_wgslsmith_index_u32(abs(1u), 1u)])), false), Struct_1(vec2<bool>(all(select(vec3<bool>(true, global3[_wgslsmith_index_u32(25577u, 1u)], global3[_wgslsmith_index_u32(u_input.a.x, 1u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(u_input.a.x, 1u)]), global3[_wgslsmith_index_u32(global2.x, 1u)])), !global3[_wgslsmith_index_u32(_wgslsmith_div_u32(12254u, 55641u), 1u)]), 36142i, -1705f, 4294967295u, false | (func_3(Struct_2(u_input.a, vec4<bool>(true, global3[_wgslsmith_index_u32(93155u, 1u)], global3[_wgslsmith_index_u32(u_input.a.x, 1u)], true), Struct_1(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], false), 1i, arg_0.x, u_input.a.x, true)), vec4<i32>(2147483647i, 5730i, 4714i, 0i)) || (global3[_wgslsmith_index_u32(4294967295u, 1u)] & false))));
    global0 = array<vec2<f32>, 26>();
    let var_2 = select(vec4<bool>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-11978i, 2147483647i, 2147483647i), vec3<i32>(-2147483647i, var_1.c.b, var_1.c.b)), -2147483647i) <= -4550i, ~0u == global2.x, false, true), var_1.b, var_1.b);
    return Struct_2(~select(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 67335u, 2845u), vec3<u32>(u_input.a.x, 0u, u_input.a.x)), vec3<u32>(global2.x, _wgslsmith_add_u32(var_1.c.d, 62881u), 1u), vec3<bool>(func_3(Struct_2(vec3<u32>(var_1.a.x, var_1.c.d, 16220u), vec4<bool>(var_2.x, false, true, var_1.b.x), var_1.c), vec4<i32>(2147483647i, 37960i, var_1.c.b, 0i)), true, true)), vec4<bool>(!(!all(var_1.b.wx)), all(!(!vec2<bool>(var_2.x, var_2.x))), any(select(var_2, !var_1.b, select(vec4<bool>(true, var_1.b.x, var_1.c.a.x, var_2.x), vec4<bool>(false, true, false, true), var_1.b.x))), !var_1.c.e), Struct_1(var_1.c.a, _wgslsmith_div_i32(var_1.c.b, ~var_1.c.b), 962f, var_1.a.x, true));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>) -> u32 {
    global3 = array<bool, 1>();
    global3 = array<bool, 1>();
    global1 = true;
    let var_0 = _wgslsmith_sub_u32(arg_0.a.x, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(reverseBits(1u), arg_0.c.d, ~global2.x)) ^ 1u);
    var var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.c.c, arg_0.c.c)));
    return u_input.a.x;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(!select(arg_1.b.xy, vec2<bool>(true, !global3[_wgslsmith_index_u32(arg_1.a.x, 1u)]), !arg_1.b.xw), arg_1.c.b, arg_1.c.c, func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-453f, arg_1.c.c) * global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), _wgslsmith_f_op_vec2_f32(max(global0[_wgslsmith_index_u32(arg_0.x, 26u)], global0[_wgslsmith_index_u32(arg_0.x, 26u)]))))))).c.d, global3[_wgslsmith_index_u32(12475u, 1u)]);
    let var_1 = arg_1;
    var var_2 = var_1.c;
    let var_3 = vec2<f32>(-1384f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(336f, -508f) * 1000f))) * _wgslsmith_f_op_f32(abs(-983f))));
    var var_4 = func_2(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_3.x, var_1.c.c))))), var_3.x)).c;
    return Struct_2(max(reverseBits(arg_1.a), _wgslsmith_clamp_vec3_u32(var_1.a, vec3<u32>(global2.x, 31634u, arg_1.c.d), arg_0.xxz)) & firstTrailingBit(_wgslsmith_add_vec3_u32(arg_1.a, vec3<u32>(u_input.a.x, 43441u, u_input.a.x))), arg_1.b, var_1.c);
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_2(~u_input.a, !vec4<bool>(!(!global3[_wgslsmith_index_u32(u_input.a.x, 1u)]), global3[_wgslsmith_index_u32(select(arg_0, 19051u, true), 1u)], true, select(-2147483647i, 45617i, global3[_wgslsmith_index_u32(113180u, 1u)]) >= 0i), Struct_1(vec2<bool>(true, !any(vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 1u)], true, false))), 1i, -171f, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, firstTrailingBit(53782u), u_input.a.x), _wgslsmith_sub_vec3_u32(countOneBits(u_input.a), vec3<u32>(45907u, 4294967295u, 1u))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.x, 47831u), 1u)]));
    var_0 = func_5(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.d, 4294967295u, global2.x ^ arg_0, 27247u), max(max(vec4<u32>(103871u, 1u, var_0.a.x, 1u), vec4<u32>(1u, arg_0, u_input.a.x, var_0.c.d)), ~vec4<u32>(u_input.a.x, arg_0, u_input.a.x, global2.x))), func_4(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(2871f, var_0.c.c))), global3[_wgslsmith_index_u32(0u, 1u)], ~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -2147483647i, var_0.c.b, var_0.c.b), vec4<i32>(var_0.c.b, 6562i, var_0.c.b, 55172i))), countOneBits(~global2.x), _wgslsmith_clamp_u32(3769u, 0u, arg_0)), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1079f)), _wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1, 1554f))))));
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.c, arg_1) - vec2<f32>(-886f, -1527f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1333f, 123f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1439f, var_0.c.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(852f, var_0.c.c))))))))).b.wxz;
    let var_2 = vec4<i32>(var_0.c.b, 2147483647i, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.b, i32(-1i) * -2147483647i), ~(-(~vec2<i32>(var_0.c.b, var_0.c.b)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, var_0.c.c, arg_1, -554f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -1000f, -566f, var_0.c.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1179f, arg_1, -3539f, -1774f))))))));
    return Struct_1(!(!var_1.yx), 25396i, -163f, ~u_input.a.x, true);
}

fn func_6(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(global0[_wgslsmith_index_u32(~reverseBits(countOneBits(~41507u)), 26u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(490f, 785f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c, arg_2.c) * vec2<f32>(arg_2.c, arg_2.c))) - _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(34504u << (arg_3.x % 32u), 26u)])))));
    global0 = array<vec2<f32>, 26>();
    global0 = array<vec2<f32>, 26>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1394f, _wgslsmith_f_op_f32(f32(-1f) * -226f)) - var_0);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1063f, var_0.x)))) - _wgslsmith_f_op_vec2_f32(max(var_0, _wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(global2.x, 26u)], vec2<f32>(arg_2.c, 369f))))) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -1789f)), _wgslsmith_f_op_vec2_f32(-var_0));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = abs(countOneBits(~_wgslsmith_mult_vec3_u32(u_input.a, ~vec3<u32>(0u, global2.x, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(i32(-1i) * -1i, select(-1i, func_6(vec2<bool>(true, true), select(vec2<i32>(7839i, 48307i), vec2<i32>(-24400i, 2147483647i), false), func_1(u_input.a.x, 2241f), ~vec2<u32>(global2.x, 4294967295u)), any(func_2(vec2<f32>(1165f, -464f)).b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1417f))))) - func_1(u_input.a.x, _wgslsmith_f_op_f32(sign(-313f))).c), 0i);
}

