struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<f32, 25> = array<f32, 25>(-892f, -533f, -1071f, -841f, 192f, 759f, 229f, 1168f, 886f, 634f, 1418f, -664f, -1603f, 605f, -1152f, -809f, -241f, -1075f, 695f, 178f, -292f, 230f, 1786f, 778f, 754f);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_clamp_u32(~_wgslsmith_div_u32(~u_input.a.x, ~1u), ~(~4294967295u) & _wgslsmith_div_u32(u_input.a.x, 4294967295u), 1u);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1000f, global1[_wgslsmith_index_u32(var_0, 25u)]))), vec2<f32>(-890f, global1[_wgslsmith_index_u32(88565u, 25u)])) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(var_0, 25u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)]))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(u_input.e.x, 25u)]), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], -700f))) + vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], 1228f)))));
    global0 = array<Struct_2, 23>();
    var var_2 = 36599i;
    var var_3 = 15074i;
    return vec2<bool>(!(_wgslsmith_sub_i32(u_input.c, 18780i) < -1i), false != !(true & all(vec3<bool>(false, false, true))));
}

fn func_2() -> u32 {
    var var_0 = u_input.c;
    var var_1 = abs(~vec4<u32>(0u, u_input.a.x, ~u_input.a.x, 50334u));
    var var_2 = 0u;
    let var_3 = func_3();
    var_2 = ~u_input.e.x;
    return min(var_1.x << (4294967295u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 13342u, _wgslsmith_clamp_u32(56974u, var_1.x, u_input.e.x)), var_1.wxz));
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    let var_0 = 1f;
    var var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.a, arg_1.a), vec2<i32>(_wgslsmith_clamp_i32(u_input.d, u_input.b, -2147483647i), 5180i) & _wgslsmith_mod_vec2_i32(-vec2<i32>(443i, 27043i), vec2<i32>(arg_1.a, 50929i) >> (vec2<u32>(arg_1.d.x, u_input.e.x) % vec2<u32>(32u)))), ~_wgslsmith_mod_vec2_i32(vec2<i32>(~u_input.d, 11423i), vec2<i32>(1i, 4008i) >> (vec2<u32>(u_input.a.x, arg_1.d.x) % vec2<u32>(32u))));
    var var_2 = ~(min(abs(~vec2<i32>(u_input.b, -46997i)), vec2<i32>(-1i, abs(2147483647i))) ^ _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(-33813i, -71050i) & vec2<i32>(var_1.x, -16826i)), vec2<i32>(-u_input.c, -15799i)));
    global0 = array<Struct_2, 23>();
    var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -1i), select(select(min(firstLeadingBit(vec2<i32>(arg_1.a, 21625i)), ~vec2<i32>(-19775i, arg_1.a)), -(vec2<i32>(var_2.x, 33865i) & vec2<i32>(-31351i, u_input.d)), true), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1.a, arg_1.a, arg_1.a, var_2.x), _wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.c, 1i, var_1.x), vec4<i32>(-17307i, 0i, -2147483647i, 2147483647i))), -57463i), false));
    return Struct_1(select(vec2<bool>(true, all(!vec2<bool>(false, arg_1.e.x))), arg_1.e.yx, arg_1.e.xz), vec3<f32>(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.d.x, 25u)]) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.d.x, 25u)]))), arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c - arg_1.b.x) - arg_1.c)), ~vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e.x, 12527u), _wgslsmith_mult_vec2_u32(arg_1.d, u_input.e.xz)), 12652u), arg_1.d);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(27300u, 25u)] + -1000f))))));
    var var_1 = -363f;
    global0 = array<Struct_2, 23>();
    var var_2 = arg_1.c;
    var var_3 = _wgslsmith_f_op_vec2_f32(-arg_1.b.zx);
    return func_4(arg_1.e.x & (-105f > global1[_wgslsmith_index_u32(func_2() >> (arg_3.x % 32u), 25u)]), Struct_2(1i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 739f, -1854f)))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_3.x, 25u)], _wgslsmith_f_op_f32(f32(-1f) * -971f)), arg_3.yz, select(select(vec4<bool>(false, arg_1.e.x, arg_1.e.x, arg_1.e.x), select(arg_1.e, arg_1.e, arg_1.e.x), func_3().x), select(arg_1.e, select(vec4<bool>(arg_1.e.x, true, arg_1.e.x, true), arg_1.e, arg_1.e.x), !vec4<bool>(arg_1.e.x, false, true, false)), any(vec2<bool>(arg_1.e.x, arg_1.e.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(arg_0.c.x, arg_0.c.x), arg_0.d.x);
    global0 = array<Struct_2, 23>();
    var var_1 = ~countOneBits(~(~u_input.e));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.b.x, 1f))) - _wgslsmith_f_op_f32(f32(-1f) * -444f)), -712f, _wgslsmith_f_op_f32(step(arg_0.b.x, 222f)));
    let var_3 = var_1.wx;
    return Struct_2(_wgslsmith_sub_i32(firstTrailingBit(firstLeadingBit(u_input.c | -17402i)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, 2147483647i, 13864i), vec3<i32>(arg_1, -2911i, 1i)), _wgslsmith_add_vec3_i32(~vec3<i32>(arg_1, u_input.c, -10959i), vec3<i32>(arg_1, u_input.c, -57700i)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1820f, arg_0.b.x, 752f), _wgslsmith_f_op_vec3_f32(var_2 - arg_0.b), arg_0.a.x)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0.b + vec3<f32>(317f, global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(1u, 25u)]))))), arg_0.b)), 635f, ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(918u, 55799u) << (vec2<u32>(var_1.x, arg_0.c.x) % vec2<u32>(32u)), ~vec2<u32>(var_1.x, 121195u))), vec4<bool>(arg_0.a.x, false, func_1(reverseBits(~vec3<i32>(0i, arg_1, -1i)), Struct_2(1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(917f, global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(u_input.e.x, 25u)])), _wgslsmith_f_op_f32(f32(-1f) * -740f), vec2<u32>(var_3.x, arg_0.d.x) >> (vec2<u32>(1u, var_3.x) % vec2<u32>(32u)), !vec4<bool>(arg_3.x, arg_3.x, arg_2, true)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_3.x, 25u)])), _wgslsmith_mult_vec3_u32(u_input.e.xyw, u_input.e.zyw)).a.x, select(arg_2, arg_0.a.x == !arg_3.x, arg_3.x)));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_2) -> vec4<u32> {
    global1 = array<f32, 25>();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 25u)])));
    var var_1 = vec3<bool>(!((_wgslsmith_f_op_f32(f32(-1f) * -501f) != global1[_wgslsmith_index_u32(~arg_1.d.x, 25u)]) | false), any(func_3()), func_1(-arg_0.wxw, global0[_wgslsmith_index_u32(56677u, 23u)], global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(arg_1.d.x, u_input.e.x ^ arg_1.d.x)), 25u)], countOneBits(~u_input.e.wwx)).a.x);
    global1 = array<f32, 25>();
    var var_2 = 1u;
    return ~(~vec4<u32>(44791u, firstTrailingBit(_wgslsmith_sub_u32(arg_1.d.x, 52823u)), 1u, 0u));
}

fn func_7(arg_0: vec4<u32>) -> Struct_1 {
    global0 = array<Struct_2, 23>();
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e.x, 25u)]), -129f)));
    global0 = array<Struct_2, 23>();
    var var_2 = Struct_2(_wgslsmith_sub_i32(u_input.b, select(select(_wgslsmith_mult_i32(6305i, u_input.c), _wgslsmith_mod_i32(u_input.b, -7252i), true), 1i, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(732f, 2595f, 1000f) + vec3<f32>(global1[_wgslsmith_index_u32(1u, 25u)], var_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 25u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], var_1.x) - vec3<f32>(1044f, -464f, -1210f))))), -1000f, arg_0.zz << (u_input.a % vec2<u32>(32u)), vec4<bool>(any(vec3<bool>(!var_0, var_0, global1[_wgslsmith_index_u32(92342u, 25u)] == global1[_wgslsmith_index_u32(95609u, 25u)])), true, all(select(func_5(Struct_1(vec2<bool>(var_0, false), vec3<f32>(var_1.x, var_1.x, -191f), arg_0.yx, vec2<u32>(12950u, 9784u)), u_input.b, var_0, vec2<bool>(var_0, var_0)).e, select(vec4<bool>(false, var_0, true, true), vec4<bool>(var_0, true, true, var_0), false), select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(false, false, false, var_0), false))), u_input.b >= _wgslsmith_div_i32(i32(-1i) * -2147483647i, -55039i >> (1u % 32u))));
    return Struct_1(!vec2<bool>(-u_input.b > -u_input.b, false), _wgslsmith_f_op_vec3_f32(round(func_1(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(15530i, var_2.a, u_input.d), vec3<i32>(1604i, var_2.a, var_2.a)), ~vec3<i32>(-2147483647i, u_input.c, u_input.b)), func_5(Struct_1(var_2.e.xw, vec3<f32>(var_2.c, global1[_wgslsmith_index_u32(41066u, 25u)], 1373f), vec2<u32>(5137u, var_2.d.x), arg_0.zw), -1i, true, var_2.e.wx), _wgslsmith_f_op_f32(trunc(-794f)), ~(~vec3<u32>(arg_0.x, u_input.a.x, arg_0.x))).b)), abs(~_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(arg_0.x, var_2.d.x)), select(vec2<u32>(36873u, 16878u), vec2<u32>(1u, 12827u), var_2.e.x))), ~(~arg_0.zz));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 23>();
    var var_0 = func_7(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, firstTrailingBit(37109u), _wgslsmith_div_u32(min(u_input.e.x, u_input.a.x), 27270u), ~10524u), func_6(~vec4<i32>(-1338i, -2147483647i, 2147483647i, u_input.b), func_5(func_1(vec3<i32>(u_input.c, 9068i, u_input.b), global0[_wgslsmith_index_u32(u_input.e.x, 23u)], 176f, vec3<u32>(u_input.a.x, 25684u, 23610u)), _wgslsmith_clamp_i32(u_input.c, -6406i, -6104i), true, func_3()))));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a.x, ~min(var_0.d.x << (3573u % 32u), func_2())), 23u)];
    global1 = array<f32, 25>();
    var var_2 = (func_4(func_3().x, global0[_wgslsmith_index_u32(u_input.a.x & func_6(vec4<i32>(-2147483647i, 1i, 15058i, var_1.a), Struct_2(var_1.a, vec3<f32>(var_1.b.x, global1[_wgslsmith_index_u32(4294967295u, 25u)], var_1.c), 1000f, var_1.d, vec4<bool>(false, false, var_1.e.x, var_0.a.x))).x, 23u)]).d << (vec2<u32>(min(4294967295u, 4294967295u), ~1u) % vec2<u32>(32u))) & ~reverseBits(var_0.c);
    global0 = array<Struct_2, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d, ~vec3<i32>(min(7948i, ~u_input.b), var_1.a, _wgslsmith_mult_i32(~var_1.a, -u_input.b)));
}

