struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<vec3<u32>, 29>;

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), -14322i);

var<private> global3: array<f32, 13> = array<f32, 13>(536f, -175f, 710f, -1000f, 888f, -1227f, -683f, 947f, 1931f, 805f, -1003f, -2623f, 1319f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = _wgslsmith_mult_u32(~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b, ~u_input.b), u_input.a), abs(4294967295u));
    global1 = array<vec3<u32>, 29>();
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(1102f, _wgslsmith_f_op_f32(-1000f - 1531f), global3[_wgslsmith_index_u32(~1u, 13u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(51969u, 13u)] - _wgslsmith_f_op_f32(1988f + _wgslsmith_div_f32(-1380f, -388f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3[_wgslsmith_index_u32(6064u, 13u)], 1304f, 759f, global3[_wgslsmith_index_u32(u_input.a, 13u)]))))))));
    let var_2 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(1u, 13u)])) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -682f) - _wgslsmith_f_op_f32(f32(-1f) * -961f)) + _wgslsmith_f_op_f32(min(var_1.x, 725f)))));
    var var_3 = ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_sub_u32(~45488u, ~u_input.b), _wgslsmith_mult_u32(1u, u_input.a), _wgslsmith_div_u32(u_input.a, _wgslsmith_div_u32(10005u, 1u))), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(18691u, u_input.b, 0u, 0u), abs(vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.b))), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(18590u, 1u, u_input.b, 0u), vec4<u32>(u_input.b, 1u, 0u, u_input.b)))));
    return var_3.x;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<bool>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~((25321u ^ (u_input.a & func_3(arg_2.x))) | countOneBits(10433u)), 7u)];
    let var_1 = any(!vec3<bool>(!any(vec4<bool>(false, var_0.d, false, false)), true, var_0.d));
    let var_2 = Struct_1(_wgslsmith_div_u32(_wgslsmith_div_u32(arg_0, 1u) >> (~(var_0.a & 4294967295u) % 32u), ~min(4294967295u, u_input.a) & _wgslsmith_sub_u32(~u_input.b, u_input.b << (4294967295u % 32u))), 329f, 35317i, !var_1, ~((abs(var_0.c) & -16849i) << (max(33389u, 15384u) % 32u)));
    var var_3 = true;
    global1 = array<vec3<u32>, 29>();
    return ~var_2.a;
}

fn func_1() -> vec3<f32> {
    let var_0 = 755f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 1u), 13u)] * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 13u)])), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 13u)]))) - global3[_wgslsmith_index_u32(max(45856u, 8036u), 13u)]);
    global3 = array<f32, 13>();
    global0 = array<Struct_1, 7>();
    global1 = array<vec3<u32>, 29>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(2503u, func_2(u_input.a, _wgslsmith_add_i32(abs(firstTrailingBit(global2.x)), ~(11655i << (1u % 32u))), select(select(select(vec2<bool>(var_0, false), vec2<bool>(var_0, false), vec2<bool>(var_0, var_0)), !vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0)), select(select(vec2<bool>(false, true), vec2<bool>(var_0, var_0), var_0), !vec2<bool>(var_0, var_0), all(vec4<bool>(false, true, var_0, false))), vec2<bool>(all(vec2<bool>(var_0, true)), var_0 && true)))), 29u)];
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(845f, 242f, global3[_wgslsmith_index_u32(u_input.a, 13u)]) - vec3<f32>(-400f, -726f, global3[_wgslsmith_index_u32(u_input.b, 13u)]))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(11431u, 13u)], 516f, global3[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(949f, global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(46719u, 13u)]), vec3<f32>(-2118f, 1602f, 387f))), select(vec3<bool>(var_0, false, var_0), vec3<bool>(false, var_0, var_0), var_0)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3[_wgslsmith_index_u32(func_2(var_1.x, global2.x, vec2<bool>(var_0, false)), 13u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 13u)] - -838f), _wgslsmith_f_op_f32(485f + 339f)), vec3<f32>(global3[_wgslsmith_index_u32(~0u, 13u)], -977f, global3[_wgslsmith_index_u32(1u, 13u)]))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(~0u, 13u)], _wgslsmith_f_op_f32(f32(-1f) * -348f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 13u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -min(_wgslsmith_add_vec2_i32(~countOneBits(vec2<i32>(0i, global2.x)), max(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, global2.x), vec2<i32>(global2.x, global2.x)), vec2<i32>(-21325i, global2.x) >> (vec2<u32>(9869u, u_input.b) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(global2.x, 0i), vec2<i32>(global2.x, global2.x)), vec2<i32>(-2147483647i, ~1i), vec2<i32>(global2.x, 1i)));
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(807f, _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(1u, 13u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(28980u, 13u)])), _wgslsmith_f_op_f32(f32(-1f) * -152f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1()))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(754f, global3[_wgslsmith_index_u32(u_input.a, 13u)], -636f), vec3<f32>(-291f, var_0.x, global3[_wgslsmith_index_u32(u_input.b, 13u)]), vec3<bool>(true, false, true)))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 637f, -397f) + vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 13u)], global3[_wgslsmith_index_u32(0u, 13u)], var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(15932u, 13u)], global3[_wgslsmith_index_u32(4294967295u, 13u)], var_0.x)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1301f, 134f, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 13u)], -696f, -961f) + vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 13u)], -1000f, var_0.x)))))));
    global0 = array<Struct_1, 7>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 13u)], 394f, global3[_wgslsmith_index_u32(u_input.b, 13u)]), vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 13u)], global3[_wgslsmith_index_u32(u_input.a, 13u)], -326f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(878f, 861f, -1277f)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 13u)], var_0.x, global3[_wgslsmith_index_u32(2701u, 13u)]), vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 13u)], 140f, var_0.x))), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)))));
    let var_1 = global0[_wgslsmith_index_u32(6105u, 7u)];
    var var_2 = Struct_1(4294967295u >> ((u_input.a & 11697u) % 32u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(1u, 13u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1090f + global3[_wgslsmith_index_u32(u_input.a, 13u)]), _wgslsmith_f_op_f32(sign(-1365f)), true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - global3[_wgslsmith_index_u32(u_input.a, 13u)])))), global2.x, any(vec4<bool>(true, true, all(vec4<bool>(true, var_1.d, true, false)), true)) || any(!vec4<bool>(var_1.d, var_1.d, false, var_1.d)), ~_wgslsmith_dot_vec4_i32(min(vec4<i32>(2147483647i, -28712i, 1i, var_1.e), vec4<i32>(var_1.c, -15153i, global2.x, var_1.c) >> (vec4<u32>(var_1.a, 0u, 1u, var_1.a) % vec4<u32>(32u))), -vec4<i32>(1i, var_1.e, -30685i, 1i) | ~vec4<i32>(-37147i, -78395i, 1i, 0i)));
    let var_3 = !(!(!vec3<bool>(any(vec3<bool>(var_2.d, var_2.d, false)), all(vec4<bool>(false, var_1.d, false, var_1.d)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, 265f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(var_2.a, 13u)], -332f, 556f)))), vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 13u)]), var_2.b, global3[_wgslsmith_index_u32(~u_input.a, 13u)]))), ~1u);
}

