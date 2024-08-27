struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-16457i, 1i, 0i);

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<f32, 2>;

var<private> global3: array<u32, 2> = array<u32, 2>(34325u, 4294967295u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    global0 = vec3<i32>(_wgslsmith_sub_i32(global0.x, ~global0.x), -(~_wgslsmith_clamp_i32(u_input.a & global0.x, ~23713i, 1i)), 14770i);
    global0 = vec3<i32>((reverseBits(_wgslsmith_div_i32(46230i, u_input.a)) | _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, u_input.a, u_input.a), select(vec3<i32>(u_input.a, global0.x, -1i), vec3<i32>(-2147483647i, -45634i, 49852i), global1.x))) << (global3[_wgslsmith_index_u32(_wgslsmith_add_u32(max(1u, global3[_wgslsmith_index_u32(4294967295u, 2u)]) >> (1u % 32u), max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~14917u, 2u)], 2u)], 0u)), 2u)] % 32u), 0i, _wgslsmith_mod_i32(-global0.x, global0.x & _wgslsmith_div_i32(-18720i, 38721i)) >> (~(~(~global3[_wgslsmith_index_u32(43122u, 2u)])) % 32u));
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1388f, -1064f))))), Struct_1(any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), vec3<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~1u, 2u)], 2u)], _wgslsmith_f_op_f32(floor(arg_1.b.x)), 2059f), false)), ~2147483647i, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-243f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], 2u)], 2u)]), -500f)), arg_1));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.b.b.x, global2[_wgslsmith_index_u32(1u >> (global3[_wgslsmith_index_u32(0u, 2u)] % 32u), 2u)]), _wgslsmith_f_op_f32(1261f * -244f)), -788f, arg_0)));
    var_0 = Struct_3(var_0.a, var_0.b, var_0.a);
    return select(select(!(!(!vec2<bool>(false, global1.x))), !select(select(vec2<bool>(false, var_0.c.b.c), vec2<bool>(false, arg_1.c), vec2<bool>(var_0.a.b.c, true)), select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(true, var_0.a.b.c), vec2<bool>(global1.x, false)), global1.x), !vec2<bool>(false, all(vec2<bool>(true, false)))), !select(vec2<bool>(true, true), vec2<bool>(false, arg_1.c), select(global0.x >= var_0.b, 1u == global3[_wgslsmith_index_u32(25852u, 2u)], global0.x < var_0.b)), select(select(select(select(vec2<bool>(arg_1.c, true), vec2<bool>(global1.x, global1.x), vec2<bool>(true, var_0.a.b.a)), !vec2<bool>(true, global1.x), true), select(!vec2<bool>(global1.x, false), select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, true), vec2<bool>(global1.x, arg_1.c)), false), global1.x), select(vec2<bool>(global1.x, var_0.c.b.a && arg_1.a), select(vec2<bool>(true, false), vec2<bool>(var_0.a.b.a, false), global1.x | true), any(select(vec4<bool>(arg_1.c, arg_1.a, false, global1.x), vec4<bool>(false, true, arg_1.a, false), var_0.a.b.c))), vec2<bool>(select(true, var_0.c.b.c, true), var_0.a.b.c)));
}

fn func_2() -> vec2<f32> {
    global1 = select(select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(global1.x, global1.x)), !vec2<bool>(global1.x, global1.x), func_3(global2[_wgslsmith_index_u32(19960u, 2u)], Struct_1(global1.x, vec3<f32>(-3296f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)], 2u)], 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)]), true))), select(!vec2<bool>(global1.x, true), vec2<bool>(global1.x, false), vec2<bool>(global1.x, true)), vec2<bool>(true, global1.x)), vec2<bool>(select(!global1.x, any(vec3<bool>(true, false, false)), false || global1.x), global1.x), !vec2<bool>(false, !global1.x)), !(!vec2<bool>(true, global1.x)), !func_3(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(94882u, 2u)], 2u)], 2u)], 2u)], 4294967295u), 2u)], max(60023u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 2u)], 2u)])), 2u)], 2u)], Struct_1(!global1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], -697f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(38117u, 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)])), all(vec2<bool>(false, false)))));
    var var_0 = -global0.x;
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(~0u, 2u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(35270u, 2u)], 2u)], 2u)], 2u)], global2[_wgslsmith_index_u32(37331u, 2u)])) + vec2<f32>(-1115f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(72844u, 2u)] << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24454u, 2u)], 2u)], 2u)] % 32u), 2u)])), Struct_1(~global3[_wgslsmith_index_u32(0u, 2u)] != global3[_wgslsmith_index_u32(~12493u, 2u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(-165f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19170u, 2u)], 2u)], -289f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1122f, global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], 2u)], 2u)]))), global1.x)), -14376i, Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(177f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17083u, 2u)], 2u)]))), vec2<f32>(654f, 1760f), global3[_wgslsmith_index_u32(1u, 2u)] != global3[_wgslsmith_index_u32(4294967295u, 2u)])))), Struct_1(true, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)], -388f)))), func_3(1641f, Struct_1(global1.x, vec3<f32>(1000f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 2u)], 2u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)]), global1.x)).x)));
    var_1 = Struct_3(Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(50181u, 2u)])), 624f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1107f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(116239u, 2u)], 2u)]) * _wgslsmith_f_op_vec2_f32(select(var_1.c.b.b.zy, vec2<f32>(522f, 1020f), var_1.c.b.c)))), var_1.c.b), global0.x, var_1.a);
    var var_2 = vec2<f32>(var_1.a.b.b.x, 807f);
    return var_1.c.a;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = select(false, true, !(!global1.x));
    let var_1 = vec3<bool>(all(vec3<bool>(false, false, !global1.x)), abs((global3[_wgslsmith_index_u32(36229u, 2u)] >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6833u, 2u)], 2u)], 2u)] % 32u)) | _wgslsmith_div_u32(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)])) == _wgslsmith_add_u32(_wgslsmith_div_u32(abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], 2u)]), 16611u), 1u), true);
    global3 = array<u32, 2>();
    var var_2 = vec2<f32>(790f, global2[_wgslsmith_index_u32(reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(firstTrailingBit(0u), 2u)], 2u)] ^ ~select(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)], 2u)], global1.x), 2u)]), 2u)]);
    global1 = var_1.yz;
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2())), Struct_1(any(vec4<bool>(true, false, global1.x & global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(abs(21139u), 2u)], -1006f, 543f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(0u, 2u)], var_2.x, 493f) - vec3<f32>(-2727f, 405f, global2[_wgslsmith_index_u32(11611u, 2u)])) - _wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(51031u, 2u)], var_2.x, -205f), vec3<f32>(220f, global2[_wgslsmith_index_u32(4714u, 2u)], 249f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 2u)])) >= -1434f));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], -576f, arg_3.b.x, arg_3.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(0u, 2u)], 592f, 952f, arg_0.x))))));
    let var_1 = abs(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, ~1962u), _wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 27324u), 71986u, ~global3[_wgslsmith_index_u32(1u, 2u)] ^ 0u), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(0u, 2u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], 50407u), _wgslsmith_div_vec4_u32(vec4<u32>(31188u, 59191u, 9439u, global3[_wgslsmith_index_u32(8304u, 2u)]), vec4<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 2u)], 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31699u, 2u)], 2u)], global3[_wgslsmith_index_u32(1u, 2u)]))))));
    let var_2 = Struct_3(arg_2, reverseBits(global0.x << (0u % 32u)), arg_2);
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.b.x, 820f) - -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1931f, arg_3.b.x) * _wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_f32(trunc(var_0.x)), global2[_wgslsmith_index_u32(~(~0u), 2u)]))));
    var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(~18076u, 2u)], 1025f, arg_0.x, var_3.x) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.c.b.b.x, arg_3.b.x, var_0.x, arg_2.a.x), vec4<f32>(var_3.x, 476f, arg_3.b.x, -402f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(163f, global2[_wgslsmith_index_u32(var_1, 2u)], arg_2.b.b.x, arg_0.x), vec4<f32>(-228f, global2[_wgslsmith_index_u32(33050u, 2u)], var_3.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-399f + -756f), arg_2.a.x, _wgslsmith_f_op_f32(-var_0.x), var_0.x)))));
    return firstTrailingBit(global0.x | -var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_clamp_i32(-(i32(-1i) * -1i), ~(~(-27716i)), global0.x), func_4(vec3<f32>(global2[_wgslsmith_index_u32(1u << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)] % 32u), 2u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(92338u, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)]), _wgslsmith_div_f32(1049f, global2[_wgslsmith_index_u32(50562u, 2u)])), select(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x)), !vec3<bool>(true, global1.x, global1.x), global1.x), func_1(global0.xx), Struct_1(global1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1013f, -1497f, global2[_wgslsmith_index_u32(0u, 2u)])), global1.x)), global0.x, ~abs(_wgslsmith_mult_i32(10006i, global0.x))), ~(~64783u), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(min(vec2<u32>(0u, 63869u), vec2<u32>(1u, 52346u)), abs(select(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)], global3[_wgslsmith_index_u32(20029u, 2u)]), vec2<u32>(global3[_wgslsmith_index_u32(1u, 2u)], 81800u), global1.x))), _wgslsmith_div_vec2_u32(firstLeadingBit(~vec2<u32>(global3[_wgslsmith_index_u32(31664u, 2u)], global3[_wgslsmith_index_u32(59802u, 2u)])), ~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)], 6022u)), vec2<u32>(abs(~global3[_wgslsmith_index_u32(97105u, 2u)]), countOneBits(0u))), select(u_input.a, -firstLeadingBit(-19677i), global1.x));
}

