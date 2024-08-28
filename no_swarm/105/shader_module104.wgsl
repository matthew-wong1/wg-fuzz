struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 23>;

var<private> global1: f32;

var<private> global2: array<vec2<i32>, 21>;

var<private> global3: array<u32, 1> = array<u32, 1>(1155u);

var<private> global4: array<i32, 32> = array<i32, 32>(1i, -11153i, i32(-2147483648), -28449i, -1i, i32(-2147483648), 1i, -11532i, 50267i, i32(-2147483648), -47418i, 0i, 17416i, i32(-2147483648), 0i, 32538i, 0i, 1i, i32(-2147483648), -53190i, 9356i, i32(-2147483648), 12045i, 0i, 1i, -1i, 0i, -1i, -1i, i32(-2147483648), i32(-2147483648), -85979i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(round(1000f));
    let var_1 = arg_0;
    global1 = -703f;
    let var_2 = arg_0.a.c;
    let var_3 = all(select(select(vec4<bool>(arg_0.e.x, var_1.a.b.a, true, var_2.a), select(vec4<bool>(false, var_2.a, true, arg_0.a.c.a), vec4<bool>(var_2.a, true, arg_0.d, true), vec4<bool>(false, true, true, var_1.e.x)), any(vec3<bool>(false, true, true))), vec4<bool>(!var_2.a, true, var_1.e.x, all(arg_0.e.zyz)), select(any(vec4<bool>(true, false, false, arg_0.a.b.a)), any(vec2<bool>(arg_0.e.x, var_2.a)), var_1.a.a <= -1214f))) || !arg_0.a.c.a;
    return arg_0.e;
}

fn func_2(arg_0: bool, arg_1: u32) -> f32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1404f, -651f))))), Struct_1(arg_0), Struct_1(arg_0)), -u_input.a, ~(~38963u), !all(vec2<bool>(true, true)), func_3(Struct_3(Struct_2(343f, Struct_1(arg_0), Struct_1(arg_0)), global4[_wgslsmith_index_u32(arg_1 ^ ~74818u, 32u)], _wgslsmith_mult_u32(min(u_input.b, arg_1), 0u), arg_0, !select(vec4<bool>(false, arg_0, true, false), vec4<bool>(true, false, arg_0, true), vec4<bool>(true, arg_0, arg_0, true)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2667f)) - -507f), -109f)), Struct_1(!any(var_0.e)), var_0.a.b);
    global3 = array<u32, 1>();
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.a)) - -1292f))), var_1.a, all(select(vec3<bool>(var_1.c.a, true, true), select(vec3<bool>(var_1.b.a, true, true), !vec3<bool>(var_0.e.x, arg_0, var_0.e.x), arg_0), var_0.e.zxx))));
    global2 = array<vec2<i32>, 21>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -646f), var_2))));
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    global0 = array<vec3<f32>, 23>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-300f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2119f - -309f), _wgslsmith_f_op_f32(ceil(-1479f))), true == any(vec2<bool>(true, true)))) - _wgslsmith_f_op_f32(func_2(true, ~(61786u >> (1u % 32u)))));
    var var_0 = all(select(func_3(Struct_3(Struct_2(-294f, Struct_1(false), Struct_1(false)), u_input.a & u_input.a, global3[_wgslsmith_index_u32(1u, 1u)], true, vec4<bool>(true, true, true, true))).yw, vec2<bool>(true || any(vec2<bool>(true, true)), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_1 = max(firstTrailingBit(~8006i), _wgslsmith_dot_vec4_i32(reverseBits(reverseBits(vec4<i32>(u_input.a, u_input.a, 0i, 0i))), countOneBits(vec4<i32>(u_input.a, global4[_wgslsmith_index_u32(0u, 32u)], -45171i, 53781i)) >> ((vec4<u32>(u_input.b, arg_0.x, u_input.b, 49768u) & vec4<u32>(u_input.b, 0u, global3[_wgslsmith_index_u32(u_input.b, 1u)], 1u)) % vec4<u32>(32u)))) != global4[_wgslsmith_index_u32(1u, 32u)];
    let var_2 = Struct_1(true);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1116f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -821f)) - -337f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<f32>) -> bool {
    global3 = array<u32, 1>();
    let var_0 = Struct_1((1u > _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(46353u, 1u)], 1u)) == (_wgslsmith_f_op_f32(floor(2358f)) < _wgslsmith_f_op_f32(sign(arg_1.x))));
    var var_1 = firstTrailingBit(u_input.b);
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-arg_0.x), var_0, Struct_1(var_0.a)), ~(-30504i), ~1u, true, select(!func_3(Struct_3(Struct_2(arg_1.x, var_0, Struct_1(var_0.a)), 39254i, 18196u, false, vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a))), !vec4<bool>(all(vec2<bool>(var_0.a, true)), true, arg_1.x < 191f, !var_0.a), func_3(Struct_3(Struct_2(-869f, var_0, var_0), -u_input.a, 0u, var_0.a, func_3(Struct_3(Struct_2(arg_1.x, var_0, Struct_1(true)), u_input.a, 3357u, true, vec4<bool>(var_0.a, false, true, true)))))));
    let var_3 = 0u;
    return ((true & (arg_1.x < _wgslsmith_f_op_f32(exp2(arg_1.x)))) || !any(select(var_2.e.zz, var_2.e.wz, false))) & var_2.a.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(-2147483647i);
    let var_1 = vec3<bool>(false, true, func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2023f, -762f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2365f * 779f) - -266f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1433f)))), _wgslsmith_f_op_f32(func_1(~vec3<u32>(1u, u_input.b, global3[_wgslsmith_index_u32(41585u, 1u)])))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1209f, 632f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1069f, 369f) - vec2<f32>(-370f, -1470f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-883f, 1415f))))));
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.b, _wgslsmith_mult_u32(u_input.b, u_input.b), global3[_wgslsmith_index_u32(87145u, 1u)]), abs(select(reverseBits(max(vec3<u32>(global3[_wgslsmith_index_u32(51461u, 1u)], u_input.b, global3[_wgslsmith_index_u32(100971u, 1u)]), vec3<u32>(u_input.b, u_input.b, global3[_wgslsmith_index_u32(u_input.b, 1u)]))), vec3<u32>(~0u, 0u, ~u_input.b), var_1.x)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-243f, _wgslsmith_f_op_f32(floor(306f)))), 737f)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-666f)), 1000f, true)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true, 4294967295u)))), Struct_1(var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(46824u, _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 6725u, var_2.x) | vec3<u32>(1u, var_2.x, 23045u), max(~vec3<u32>(u_input.b, 4294967295u, var_2.x), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14849u, 1u)], 1u)], 27392u, 26527u) >> (vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(18350u, 1u)], 1u)], 0u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(41885u, 0u, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 0u, 16584u), vec3<u32>(global3[_wgslsmith_index_u32(u_input.b, 1u)], 77892u, global3[_wgslsmith_index_u32(0u, 1u)]))) & _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b, global3[_wgslsmith_index_u32(var_2.x, 1u)]), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 60719u, var_2.x), vec3<u32>(u_input.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_2.x, 1u)], 1u)], 17798u), vec3<u32>(39201u, 1u, 18055u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, 32865u, u_input.b), vec3<u32>(1u, u_input.b, 1u))), abs(vec3<u32>(min(0u, 4294967295u), 25428u, var_2.x))), abs(~_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(70043u, var_2.x, 16378u)), countOneBits(vec3<u32>(var_2.x, 1u, 0u)), abs(vec3<u32>(global3[_wgslsmith_index_u32(u_input.b, 1u)], 35802u, 0u)))), vec4<i32>(_wgslsmith_add_i32(abs(0i), 11220i) << (_wgslsmith_mult_u32(max(global3[_wgslsmith_index_u32(17895u, 1u)], 14218u), 1u) % 32u), global4[_wgslsmith_index_u32(0u, 32u)], 1i, _wgslsmith_mult_i32(~(~u_input.a), ~firstLeadingBit(29458i))));
}

