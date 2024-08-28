struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<i32, 22> = array<i32, 22>(i32(-2147483648), -37911i, 36744i, 16155i, 74624i, -1i, -1i, 0i, -15118i, 33747i, 1i, -12172i, -1i, i32(-2147483648), -20238i, -702i, 2147483647i, i32(-2147483648), -1i, -20026i, -14147i, -1i);

var<private> global2: array<vec2<u32>, 14>;

var<private> global3: array<f32, 23> = array<f32, 23>(828f, -704f, 921f, 590f, 1480f, 338f, 1703f, -1142f, 1000f, -866f, -1857f, -1000f, -982f, -940f, -645f, 677f, 1578f, -955f, 922f, 1135f, 1125f, -943f, -639f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_4) -> bool {
    var var_0 = arg_3.a;
    return true;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: vec2<f32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), -777f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0, 23u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1040f, -1000f, global3[_wgslsmith_index_u32(u_input.a, 23u)]))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, 244f, -461f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(281f, global3[_wgslsmith_index_u32(1u, 23u)], 1230f) * vec3<f32>(-1000f, 943f, global3[_wgslsmith_index_u32(arg_0, 23u)])))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(426f, 119f, -1503f)))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))));
    let var_1 = Struct_3(Struct_1(vec2<bool>(false | all(vec2<bool>(false, true)), !(!arg_2)), !all(select(vec3<bool>(arg_2, false, false), vec3<bool>(false, arg_2, arg_2), false)), 1006f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(320f + arg_3.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -314f))), _wgslsmith_f_op_f32(round(-580f)), global3[_wgslsmith_index_u32(12188u, 23u)])), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(1u, arg_0, ~2317u)), 31u)]);
    let var_2 = Struct_3(var_1.a, Struct_1(!vec2<bool>(!arg_2, arg_0 > 26938u), all(!select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(var_1.a.b, false, false), vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-935f)) + arg_3.x), var_1.b.d));
    global2 = array<vec2<u32>, 14>();
    return vec3<f32>(var_2.b.c, -421f, var_1.b.c);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(1u, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(54534u, 22u)], _wgslsmith_div_i32(26526i, global1[_wgslsmith_index_u32(u_input.b, 22u)])), !func_3(vec3<u32>(35485u, 1u, 6135u), Struct_2(vec3<f32>(global3[_wgslsmith_index_u32(3073u, 23u)], -928f, -1452f), vec4<u32>(1u, 69335u, u_input.a, 4294967295u)), vec2<i32>(global1[_wgslsmith_index_u32(7502u, 22u)], global1[_wgslsmith_index_u32(20039u, 22u)]), Struct_4(Struct_3(global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]), Struct_3(Struct_1(vec2<bool>(arg_1.x, arg_0.x), false, -1749f, vec4<f32>(1781f, -755f, 204f, global3[_wgslsmith_index_u32(4294967295u, 23u)])), Struct_1(arg_0, arg_1.x, 2963f, vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 23u)], global3[_wgslsmith_index_u32(u_input.a, 23u)], -220f, 2400f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(679f, -434f)), vec2<f32>(1725f, -442f), all(vec4<bool>(arg_1.x, arg_0.x, arg_1.x, false))))))));
    return Struct_1(select(!select(vec2<bool>(true, arg_1.x), vec2<bool>(true, true), arg_0.x), arg_0, vec2<bool>(u_input.b > (u_input.b & 0u), !all(vec3<bool>(true, arg_1.x, arg_1.x)))), any(select(vec3<bool>(any(vec2<bool>(arg_1.x, arg_1.x)), arg_0.x, false), select(vec3<bool>(arg_1.x, arg_0.x, true), select(vec3<bool>(arg_1.x, false, false), vec3<bool>(arg_0.x, arg_1.x, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x)), !vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), !select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(arg_0.x, arg_1.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true)))), global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(~u_input.b, 2730u), 23u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(408f, 923f, arg_1.x)), _wgslsmith_f_op_f32(select(580f, 138f, arg_1.x)), -1763f, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 314u), 23u)])) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], 1057f, var_0.x, 865f) * vec4<f32>(-603f, 1856f, var_0.x, var_0.x)))))));
}

fn func_5(arg_0: u32, arg_1: Struct_3) -> i32 {
    let var_0 = ~arg_0;
    global0 = array<Struct_1, 31>();
    global1 = array<i32, 22>();
    var var_1 = vec2<bool>(abs(min(34519i ^ global1[_wgslsmith_index_u32(u_input.a, 22u)], 1i)) <= global1[_wgslsmith_index_u32(firstLeadingBit(~select(u_input.a, 4294967295u, false)), 22u)], func_2(select(arg_1.a.a, vec2<bool>(any(vec3<bool>(arg_1.b.a.x, arg_1.b.b, arg_1.a.b)), global3[_wgslsmith_index_u32(1u, 23u)] < 406f), !arg_1.b.a), vec2<bool>(false, false && any(vec2<bool>(false, arg_1.b.b)))).a.x);
    var var_2 = ~countOneBits(-vec2<i32>(_wgslsmith_div_i32(-2147483647i, 2147483647i), -2181i | global1[_wgslsmith_index_u32(arg_0, 22u)]));
    return -2147483647i;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = ~(i32(-1i) * -firstLeadingBit(-2147483647i)) > func_5(u_input.a, Struct_3(func_2(vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), func_3(vec3<u32>(arg_0, arg_0, 1u), Struct_2(vec3<f32>(-332f, 616f, -2440f), vec4<u32>(4294967295u, 1u, 21172u, arg_0)), vec2<i32>(global1[_wgslsmith_index_u32(2840u, 22u)], global1[_wgslsmith_index_u32(u_input.a, 22u)]), Struct_4(Struct_3(global0[_wgslsmith_index_u32(76321u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]), Struct_3(Struct_1(vec2<bool>(false, true), true, 687f, vec4<f32>(-449f, global3[_wgslsmith_index_u32(arg_0, 23u)], -1000f, 1581f)), Struct_1(vec2<bool>(false, false), true, global3[_wgslsmith_index_u32(u_input.a, 23u)], vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], 1337f, 1539f, global3[_wgslsmith_index_u32(56405u, 23u)]))))), _wgslsmith_f_op_f32(1298f + global3[_wgslsmith_index_u32(arg_0, 23u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(arg_0, 23u)], 1455f, -1280f, global3[_wgslsmith_index_u32(u_input.b, 23u)]) - vec4<f32>(-1218f, -1000f, global3[_wgslsmith_index_u32(0u, 23u)], -2137f)))));
    let var_1 = _wgslsmith_mod_vec3_i32(max(_wgslsmith_sub_vec3_i32(-vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], 1i, global1[_wgslsmith_index_u32(u_input.a, 22u)]) >> (~vec3<u32>(1u, 1u, 31065u) % vec3<u32>(32u)), (vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.b, 22u)], 28533i) >> (vec3<u32>(arg_0, 60140u, u_input.a) % vec3<u32>(32u))) >> ((vec3<u32>(2603u, arg_0, u_input.b) ^ vec3<u32>(arg_0, arg_0, arg_0)) % vec3<u32>(32u))), ~vec3<i32>(-18250i | global1[_wgslsmith_index_u32(4294967295u, 22u)], 1i, 1i)), ~vec3<i32>(abs(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.a), 22u)]), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a, _wgslsmith_mod_u32(arg_0, 1u)), 22u)], _wgslsmith_div_i32(-global1[_wgslsmith_index_u32(4294967295u, 22u)], _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)]))));
    let var_2 = select(select(!(!vec3<bool>(true, false, var_0)), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, var_0), vec3<bool>(var_0, true, true)), !vec3<bool>(var_0, var_0, true), true), vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(var_0, false), false)), var_0, all(vec4<bool>(false, false, var_0, var_0)))), !vec3<bool>(true, countOneBits(var_1.x) != ~global1[_wgslsmith_index_u32(arg_0, 22u)], false), var_0);
    let var_3 = vec3<u32>(select(_wgslsmith_sub_u32(1u & u_input.a, arg_0), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 23u)] - -1287f)) > 809f), u_input.b, _wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, select(~42715u, select(73188u, arg_0, var_2.x), false)), 90654u, min(arg_0, arg_0)));
    global1 = array<i32, 22>();
    return Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3[_wgslsmith_index_u32(var_3.x, 23u)], global3[_wgslsmith_index_u32(arg_0, 23u)], 1008f), vec3<f32>(1011f, global3[_wgslsmith_index_u32(u_input.a, 23u)], global3[_wgslsmith_index_u32(1u, 23u)]))))), vec3<f32>(-1005f, global3[_wgslsmith_index_u32(~50888u, 23u)], _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(var_3.x, 23u)])))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-155f, _wgslsmith_div_f32(358f, 1389f), global3[_wgslsmith_index_u32(var_3.x, 23u)]) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u, 23u)], -2965f, global3[_wgslsmith_index_u32(51008u, 23u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], global3[_wgslsmith_index_u32(4294967295u, 23u)], global3[_wgslsmith_index_u32(7742u, 23u)]) + vec3<f32>(-555f, -391f, global3[_wgslsmith_index_u32(arg_0, 23u)])))))), select(~(vec4<u32>(arg_0, 4294967295u, var_3.x, u_input.b) >> (abs(vec4<u32>(63907u, 4294967295u, arg_0, var_3.x)) % vec4<u32>(32u))), abs(vec4<u32>(firstLeadingBit(var_3.x), var_3.x, _wgslsmith_clamp_u32(arg_0, 70468u, var_3.x), 33539u)), var_0));
}

fn func_6(arg_0: Struct_2) -> Struct_3 {
    global1 = array<i32, 22>();
    global1 = array<i32, 22>();
    let var_0 = Struct_4(Struct_3(Struct_1(!select(vec2<bool>(false, false), vec2<bool>(false, true), true), false, global3[_wgslsmith_index_u32(0u, 23u)], vec4<f32>(func_1(arg_0.b.x).a.x, _wgslsmith_f_op_f32(arg_0.a.x - -528f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_0.b.x, 23u)] - 1738f), _wgslsmith_div_f32(-1072f, 1000f))), global0[_wgslsmith_index_u32(u_input.a, 31u)]), Struct_3(Struct_1(vec2<bool>(true, true), func_2(vec2<bool>(false, false), vec2<bool>(false, true)).b & true, global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(60006u, 0u), 23u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(592f, arg_0.a.x, arg_0.a.x, -1028f), vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 23u)], -812f, -420f, 1030f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, -275f, arg_0.a.x, -1206f) - vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 23u)], -664f, 1080f, arg_0.a.x)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true)))), global0[_wgslsmith_index_u32(~(~88985u), 31u)]));
    var var_1 = func_2(!vec2<bool>(false, var_0.b.b.b & var_0.b.b.a.x), select(select(var_0.b.b.a, func_2(vec2<bool>(false, var_0.a.b.a.x), select(vec2<bool>(false, var_0.b.a.b), vec2<bool>(true, false), false)).a, true), func_2(vec2<bool>(true, var_0.b.a.a.x != var_0.a.b.a.x), var_0.a.b.a).a, false));
    let var_2 = vec2<i32>(firstLeadingBit(_wgslsmith_mod_i32(i32(-1i) * -global1[_wgslsmith_index_u32(5662u, 22u)], 25128i)), 1i);
    return var_0.b;
}

fn func_7(arg_0: Struct_3, arg_1: f32, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_1(vec2<bool>(true, true), select(false, !(-388f >= _wgslsmith_f_op_f32(step(359f, 1095f))), arg_0.b.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1261f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(arg_0.b.d)), _wgslsmith_div_vec4_f32(arg_0.a.d, vec4<f32>(arg_0.a.d.x, -771f, global3[_wgslsmith_index_u32(70232u, 23u)], 210f))))), arg_0.b.d));
    var var_1 = func_1(~(~u_input.b)).b.ww;
    let var_2 = reverseBits(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 1i, ~global1[_wgslsmith_index_u32(4294967295u, 22u)]), -(vec3<i32>(global1[_wgslsmith_index_u32(var_1.x, 22u)], 2147483647i, -11198i) ^ vec3<i32>(-35319i, global1[_wgslsmith_index_u32(40435u, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)])), (vec3<i32>(1i, global1[_wgslsmith_index_u32(53760u, 22u)], 2147483647i) & vec3<i32>(global1[_wgslsmith_index_u32(var_1.x, 22u)], 58805i, global1[_wgslsmith_index_u32(4294967295u, 22u)])) << (_wgslsmith_mod_vec3_u32(vec3<u32>(9718u, 23273u, var_1.x), vec3<u32>(1u, var_1.x, 91894u)) % vec3<u32>(32u))), -(~vec3<i32>(global1[_wgslsmith_index_u32(0u, 22u)], -1i, 1i))));
    global1 = array<i32, 22>();
    let var_3 = arg_0.b.d.x;
    return !(!arg_0.b.a);
}

fn func_8(arg_0: f32, arg_1: vec2<bool>) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(60277u, _wgslsmith_mult_u32(~(~u_input.a), u_input.b)) << (u_input.b % 32u), 22u)];
    global1 = array<i32, 22>();
    return select(func_3(vec3<u32>(~u_input.b, ~(u_input.b & u_input.a), u_input.b), Struct_2(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a << (u_input.b % 32u), 23u)], _wgslsmith_f_op_f32(f32(-1f) * -1548f), arg_0), func_1(firstTrailingBit(u_input.a)).b), reverseBits(vec2<i32>(-1i, global1[_wgslsmith_index_u32(u_input.b << (42630u % 32u), 22u)])), Struct_4(Struct_3(func_6(Struct_2(vec3<f32>(arg_0, arg_0, 884f), vec4<u32>(0u, u_input.b, 23753u, 15248u))).b, global0[_wgslsmith_index_u32(~u_input.b, 31u)]), func_6(Struct_2(vec3<f32>(478f, global3[_wgslsmith_index_u32(u_input.a, 23u)], global3[_wgslsmith_index_u32(1u, 23u)]), vec4<u32>(4294967295u, 39127u, u_input.a, u_input.b))))), arg_1.x && any(!(!vec3<bool>(arg_1.x, arg_1.x, false))), !(func_7(Struct_3(Struct_1(arg_1, false, arg_0, vec4<f32>(global3[_wgslsmith_index_u32(0u, 23u)], arg_0, -1033f, 273f)), Struct_1(vec2<bool>(true, true), arg_1.x, arg_0, vec4<f32>(-494f, global3[_wgslsmith_index_u32(54633u, 23u)], 1000f, -635f))), arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u, 23u)], -779f, global3[_wgslsmith_index_u32(31972u, 23u)]))).x && true));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 23>();
    var var_0 = false;
    var var_1 = vec2<bool>(true, func_8(-869f, func_7(func_6(func_1(u_input.a)), global3[_wgslsmith_index_u32(u_input.b, 23u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-544f, global3[_wgslsmith_index_u32(u_input.b, 23u)], global3[_wgslsmith_index_u32(u_input.a, 23u)]))))));
    global1 = array<i32, 22>();
    global0 = array<Struct_1, 31>();
    var var_2 = u_input.a;
    let var_3 = Struct_3(global0[_wgslsmith_index_u32(u_input.b, 31u)], func_6(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(647f, global3[_wgslsmith_index_u32(8582u, 23u)], 1185f))), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, u_input.b, 0u, 86399u)), select(vec4<u32>(u_input.b, u_input.a, 8138u, 8718u), vec4<u32>(u_input.b, u_input.b, 77026u, 42897u), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))))).b);
    global3 = array<f32, 23>();
    let var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a) << (select(u_input.b, 28796u, var_1.x) % 32u), 0u), _wgslsmith_mult_vec2_u32(~(~global2[_wgslsmith_index_u32(u_input.a, 14u)]), _wgslsmith_mod_vec2_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(24702u, 0u)), 14u)], reverseBits(vec2<u32>(u_input.b, 54830u))))), var_4.d.zx, _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(select(u_input.b, 34768u, true & !var_4.b), 23u)])), _wgslsmith_f_op_vec2_f32(var_3.a.d.zw * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4.d.xy - var_3.b.d.yx), var_3.b.d.zw))), global3[_wgslsmith_index_u32(~(~0u), 23u)]);
}

