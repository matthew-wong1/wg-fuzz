struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<u32>(55610u, 52798u, 4294967295u)), Struct_1(vec3<u32>(26526u, 29754u, 28379u)), Struct_1(vec3<u32>(8091u, 53456u, 1u)), Struct_1(vec3<u32>(28u, 32151u, 0u)), Struct_1(vec3<u32>(15427u, 30782u, 10510u)), Struct_1(vec3<u32>(73129u, 1u, 0u)), Struct_1(vec3<u32>(1u, 1u, 1u)), Struct_1(vec3<u32>(0u, 1u, 1u)), Struct_1(vec3<u32>(4294967295u, 109802u, 39195u)), Struct_1(vec3<u32>(0u, 4294967295u, 1u)), Struct_1(vec3<u32>(14481u, 4294967295u, 43118u)), Struct_1(vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec3<u32>(47908u, 0u, 4294967295u)), Struct_1(vec3<u32>(4105u, 1184u, 63066u)), Struct_1(vec3<u32>(19844u, 4294967295u, 16504u)), Struct_1(vec3<u32>(1u, 1u, 0u)), Struct_1(vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec3<u32>(39166u, 30972u, 50767u)), Struct_1(vec3<u32>(84400u, 0u, 0u)), Struct_1(vec3<u32>(4294967295u, 29665u, 12985u)), Struct_1(vec3<u32>(5556u, 0u, 1u)), Struct_1(vec3<u32>(57309u, 5091u, 12151u)), Struct_1(vec3<u32>(1u, 1u, 36803u)), Struct_1(vec3<u32>(75459u, 57202u, 43920u)));

var<private> global1: Struct_2 = Struct_2(19616u, Struct_1(vec3<u32>(1u, 38581u, 0u)));

var<private> global2: i32 = 0i;

var<private> global3: vec3<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<i32>) -> bool {
    var var_0 = !vec4<bool>(true, select(!(global3.x && global3.x), !all(vec4<bool>(global3.x, global3.x, global3.x, global3.x)), global3.x), true, all(!(!vec3<bool>(true, global3.x, false))));
    let var_1 = _wgslsmith_div_vec3_u32(arg_1.wzw, vec3<u32>(global1.b.a.x, u_input.c.x, global1.a));
    let var_2 = !(!(!vec4<bool>(true, arg_2.x <= arg_0, true, global3.x)));
    let var_3 = global1.b;
    let var_4 = _wgslsmith_add_vec2_u32(~abs(_wgslsmith_div_vec2_u32(vec2<u32>(var_3.a.x, arg_1.x), vec2<u32>(10546u, 51074u))), ~_wgslsmith_sub_vec2_u32(select(vec2<u32>(19086u, var_1.x), arg_1.ww, true), var_3.a.zy));
    return global3.x;
}

fn func_4(arg_0: bool, arg_1: bool) -> vec3<bool> {
    global1 = Struct_2(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(u_input.c.xy, u_input.c.yz)), vec2<u32>(max(0u, u_input.c.x), ~0u)), 15533u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~51670u, 0u, firstTrailingBit(_wgslsmith_add_u32(1u, u_input.b))) ^ 39921u, 24u)]);
    var var_0 = vec3<bool>(func_3(-1i, _wgslsmith_mod_vec4_u32(vec4<u32>(global1.a, u_input.b, 58294u, global1.b.a.x), u_input.c) >> (u_input.c % vec4<u32>(32u)), -vec3<i32>(min(u_input.a, u_input.d.x), _wgslsmith_div_i32(u_input.a, u_input.a), -u_input.d.x)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-964f))) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(630f))), 895f)));
    global3 = select(!(!select(vec3<bool>(false, arg_1, true), !vec3<bool>(false, global3.x, true), vec3<bool>(var_0.x, global3.x, arg_1))), select(!(!(!vec3<bool>(arg_0, true, false))), vec3<bool>(!any(vec3<bool>(var_0.x, arg_1, false)), any(select(vec4<bool>(arg_0, false, arg_1, var_0.x), vec4<bool>(arg_0, false, arg_0, true), arg_0)), true), var_0.x), ~global1.a < _wgslsmith_dot_vec2_u32(abs(firstLeadingBit(global1.b.a.zy)), global1.b.a.zy));
    return vec3<bool>(true, var_0.x, true);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2.x != !all(vec2<bool>(false, true));
    global2 = u_input.a;
    global1 = Struct_2(arg_1.a.x, arg_3);
    global3 = func_4(func_3(31439i, u_input.c, -_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, 1i, u_input.d.x), abs(vec3<i32>(u_input.d.x, u_input.a, u_input.d.x)))), all(vec3<bool>(arg_2.x, true, true)));
    let var_1 = _wgslsmith_f_op_f32(ceil(arg_0));
    return Struct_1(_wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(arg_3.a, vec3<u32>(4294967295u, 6690u, u_input.b)), u_input.c.yxw));
}

fn func_5(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = Struct_2(~1u, Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(20355u, 68179u, 1u), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c.x, 1u, u_input.b), ~vec3<u32>(global1.b.a.x, arg_0.a.x, 1u)))));
    global1 = var_0;
    global2 = abs(3268i);
    var var_1 = Struct_2(select(0u, abs(1u), true), func_2(_wgslsmith_f_op_f32(979f * -1000f), Struct_1(_wgslsmith_mult_vec3_u32(global1.b.a, ~vec3<u32>(11358u, var_0.b.a.x, u_input.b))), select(select(!vec4<bool>(true, global3.x, false, false), select(vec4<bool>(false, global3.x, global3.x, true), vec4<bool>(false, global3.x, global3.x, false), vec4<bool>(global3.x, false, global3.x, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(global3.x, true, global3.x, global3.x), true)), select(!vec4<bool>(global3.x, true, global3.x, global3.x), !vec4<bool>(true, global3.x, false, global3.x), true), all(select(vec4<bool>(true, false, true, global3.x), vec4<bool>(global3.x, global3.x, false, true), vec4<bool>(global3.x, global3.x, global3.x, global3.x)))), func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(254f, -1048f)), 251f, true)), func_2(_wgslsmith_f_op_f32(max(1405f, 1590f)), Struct_1(var_0.b.a), select(vec4<bool>(true, false, true, global3.x), vec4<bool>(global3.x, global3.x, false, true), vec4<bool>(global3.x, global3.x, global3.x, global3.x)), func_2(558f, global1.b, vec4<bool>(true, false, false, global3.x), Struct_1(vec3<u32>(var_0.a, var_0.a, 1u)))), !select(vec4<bool>(false, global3.x, false, false), vec4<bool>(false, false, global3.x, global3.x), global3.x), func_2(-1156f, func_2(353f, arg_0, vec4<bool>(global3.x, global3.x, false, global3.x), Struct_1(vec3<u32>(0u, 1u, 5525u))), !vec4<bool>(global3.x, global3.x, global3.x, true), func_2(261f, Struct_1(global1.b.a), vec4<bool>(global3.x, global3.x, global3.x, false), Struct_1(arg_0.a))))));
    let var_2 = vec3<f32>(-242f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(816f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, 575f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2))), true)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-402f, 1266f, 254f) * var_2) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_2), var_2))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -591f, _wgslsmith_f_op_f32(-var_2.x)))));
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: vec4<u32>, arg_3: vec3<f32>) -> u32 {
    global2 = i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_mult_i32(~0i, u_input.d.x), 23048i);
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(global1.b.a.x & 1u, _wgslsmith_mult_u32(arg_2.x, ~39077u)), 4294967295u, _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(21362u, 0u, global1.a, 0u), vec4<u32>(arg_2.x, 3658u, arg_2.x, 1u)), ~vec4<u32>(arg_2.x, 50012u, global1.b.a.x, 21728u))));
    global3 = vec3<bool>(!arg_0, !(!global3.x), arg_1);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, _wgslsmith_f_op_vec3_f32(func_5(func_2(arg_3.x, global1.b, vec4<bool>(true, global3.x, true, true), global0[_wgslsmith_index_u32(u_input.c.x, 24u)]))).x, _wgslsmith_f_op_f32(ceil(142f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - arg_3.x) * arg_3.x)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_3.x, arg_3.x)), 1056f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -814f) * -515f), 815f, _wgslsmith_f_op_f32(-arg_3.x))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_3.x * -848f), -2552f, -802f, var_1.x);
    return _wgslsmith_sub_u32(22098u, global1.a) & ~36401u;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<u32>) -> StorageBuffer {
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(~(~21913u), 1u), func_6(!(u_input.a >= arg_1.x), true, ~arg_2, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-223f, _wgslsmith_f_op_f32(ceil(505f)), -108f), _wgslsmith_f_op_vec3_f32(func_5(func_2(1000f, Struct_1(vec3<u32>(global1.b.a.x, 79991u, global1.b.a.x)), vec4<bool>(false, global3.x, global3.x, global3.x), Struct_1(vec3<u32>(arg_0.a.x, 92103u, 0u)))))))), arg_2.x, arg_2.x);
    let var_1 = vec4<i32>(~0i, _wgslsmith_sub_i32(~(firstTrailingBit(-2147483647i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, arg_1.x), arg_1)), i32(-1i) * -1i), _wgslsmith_dot_vec3_i32(abs(arg_1) & vec3<i32>(_wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(u_input.a, 19250i, 20828i)), 1i, _wgslsmith_dot_vec3_i32(arg_1, arg_1)), arg_1), u_input.d.x);
    global2 = (var_1.x << (arg_0.a.x % 32u)) & u_input.d.x;
    var var_2 = Struct_1(vec3<u32>(_wgslsmith_add_u32(33775u >> ((arg_0.a.x & arg_0.a.x) % 32u), max(arg_2.x, global1.b.a.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(var_0, _wgslsmith_mult_vec4_u32(vec4<u32>(global1.a, global1.b.a.x, 4294967295u, 0u), u_input.c)), u_input.c), ~func_6(true, all(global3.zy), ~vec4<u32>(0u, 0u, global1.b.a.x, 61482u), vec3<f32>(-781f, 2699f, 108f))));
    let var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(299f, 1672f) + _wgslsmith_f_op_f32(759f - 1213f)))), global1.b, select(select(vec4<bool>(true, global3.x, func_3(35260i, vec4<u32>(4294967295u, arg_0.a.x, 26572u, var_2.a.x), vec3<i32>(var_1.x, 1i, var_1.x)), 25222u != arg_2.x), !select(vec4<bool>(true, false, false, false), vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(false, false, false, global3.x)), !vec4<bool>(global3.x, global3.x, global3.x, global3.x)), vec4<bool>(true, global3.x, any(vec2<bool>(true, true)), true), true), arg_0);
    return StorageBuffer(5036u, func_2(-2207f, func_2(_wgslsmith_f_op_f32(-417f - 2220f), global0[_wgslsmith_index_u32(~arg_0.a.x, 24u)], vec4<bool>(false, global3.x, false, global3.x), Struct_1(var_3.a)), select(select(vec4<bool>(global3.x, true, false, global3.x), vec4<bool>(true, global3.x, global3.x, false), global3.x), !vec4<bool>(global3.x, global3.x, global3.x, true), select(vec4<bool>(false, true, global3.x, false), vec4<bool>(global3.x, true, false, global3.x), global3.x)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -362f), func_2(814f, global1.b, vec4<bool>(global3.x, false, global3.x, true), Struct_1(var_0.ywz)), !vec4<bool>(global3.x, global3.x, global3.x, false), global0[_wgslsmith_index_u32(46817u, 24u)])).a.x ^ ~(~abs(var_2.a.x)), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_1(countOneBits(~vec3<u32>(u_input.b, 0u, 4294967295u))), vec3<i32>(_wgslsmith_mod_i32(~(i32(-1i) * -39538i), _wgslsmith_dot_vec4_i32(vec4<i32>(-29425i, -3965i, 0i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -1i)) ^ ~u_input.d.x), _wgslsmith_div_i32(u_input.a, select(u_input.d.x, u_input.a, false)), ~u_input.d.x), u_input.c);
}

