struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(4813u, 0u), vec2<u32>(0u, 53161u), vec2<u32>(30639u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u), vec2<u32>(18733u, 0u), vec2<u32>(45112u, 11930u), vec2<u32>(5882u, 1u));

var<private> global2: vec4<i32> = vec4<i32>(1i, 0i, -1i, i32(-2147483648));

var<private> global3: array<f32, 18>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool) -> i32 {
    global1 = array<vec2<u32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(-399f * _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(0u, 18u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1725f))) + 2152f))));
    global3 = array<f32, 18>();
    global2 = vec4<i32>(abs(_wgslsmith_add_i32(i32(-1i) * -33731i, global0.x)), 40334i, -39966i, ~u_input.a.x);
    global1 = array<vec2<u32>, 8>();
    return _wgslsmith_mult_i32(global2.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -9152i, u_input.a.x, global2.x), abs(vec4<i32>(-2147483647i, -1i, 2147483647i, -1i))) << (u_input.b % 32u), -372i));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(func_3(vec3<u32>(u_input.b, ~arg_0, 4294967295u), Struct_2(true), false | !arg_1.x), global0.x ^ _wgslsmith_clamp_i32(select(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, 33437i), global2.yz), global2.x, true), _wgslsmith_mod_i32(-947i, -u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_add_i32(-4071i, -55947i), _wgslsmith_mult_i32(-1i, arg_2.a))));
    let var_1 = Struct_2(arg_1.x);
    let var_2 = var_1;
    global0 = _wgslsmith_mult_vec3_i32(global2.wzw >> ((~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, u_input.b, 1u), vec3<u32>(4294967295u, arg_0, u_input.b)) << (vec3<u32>(1018u, arg_0, ~u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(18186i, arg_2.a, global0.x ^ var_0.b) >> (vec3<u32>(1u, arg_0, ~u_input.b) % vec3<u32>(32u)));
    return arg_0 | 1u;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(true);
    let var_1 = Struct_2(var_0.a);
    var var_2 = !(~max(~u_input.b, ~u_input.b) > func_4(46886u, select(select(vec4<bool>(true, var_1.a, true, false), vec4<bool>(true, var_1.a, false, true), false), vec4<bool>(var_0.a, true, var_0.a, var_0.a), true), Struct_1(func_3(vec3<u32>(u_input.b, 60342u, u_input.b), var_0, false), 1i)));
    global3 = array<f32, 18>();
    var var_3 = Struct_1(func_3(vec3<u32>(reverseBits(countOneBits(33937u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, 43863u), 520u), ~17669u), var_1, true), 1i >> (max(~select(u_input.b, u_input.b, false), 0u) % 32u));
    return _wgslsmith_div_u32(u_input.b, 1u);
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -451f), _wgslsmith_f_op_f32(f32(-1f) * -176f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b, 18u)] + global3[_wgslsmith_index_u32(76834u, 18u)]), global3[_wgslsmith_index_u32(func_2(), 18u)])), vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~4294967295u, 18u)] * _wgslsmith_f_op_f32(f32(-1f) * -320f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 18u)]) + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 18u)] - global3[_wgslsmith_index_u32(u_input.b, 18u)])), global3[_wgslsmith_index_u32(firstTrailingBit(~u_input.b), 18u)], -569f)));
    let var_1 = Struct_2(any(vec2<bool>(any(vec3<bool>(true, true, true)), true)));
    global0 = u_input.a.zww;
    global3 = array<f32, 18>();
    var var_2 = vec2<bool>(true, true);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1760f * 1810f), 1204f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(43875u, 18u)] - _wgslsmith_f_op_f32(-141f - _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.b, 18u)], 160f))), global3[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(u_input.b, ~u_input.b), ~u_input.b ^ u_input.b), 18u)]) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(30158u, 18u)], 1157f, -572f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 18u)], global3[_wgslsmith_index_u32(u_input.b, 18u)], 665f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 18u)], 506f, global3[_wgslsmith_index_u32(u_input.b, 18u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(191f, -247f, global3[_wgslsmith_index_u32(u_input.b, 18u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(292f, -1482f, -2343f, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(4832u, 18u)], global3[_wgslsmith_index_u32(u_input.b, 18u)], 900f, global3[_wgslsmith_index_u32(u_input.b, 18u)]) - vec4<f32>(-1281f, var_0.x, var_0.x, -105f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1285f, -642f, -345f, -1434f) * vec4<f32>(-1054f, 678f, var_0.x, -1267f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(49563u, 18u)], global3[_wgslsmith_index_u32(51062u, 18u)], var_0.x, -523f), vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 18u)], var_0.x, var_0.x, var_0.x), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 18u)], -425f, 1245f, 1092f), vec4<f32>(-984f, -804f, 1242f, global3[_wgslsmith_index_u32(1u, 18u)]), true)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-966f, var_0.x, 856f, 394f) + vec4<f32>(-1000f, var_0.x, global3[_wgslsmith_index_u32(u_input.b, 18u)], 811f))), vec4<bool>(all(vec2<bool>(true, true)), true, all(vec3<bool>(false, true, true)), global3[_wgslsmith_index_u32(64508u, 18u)] > global3[_wgslsmith_index_u32(u_input.b, 18u)])))), firstLeadingBit(vec3<u32>(u_input.b, 4294967295u, _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b, u_input.b), _wgslsmith_mod_u32(u_input.b, 87609u)))), vec3<i32>(global2.x, -34323i, -39806i), abs(max(vec2<i32>(func_3(vec3<u32>(37316u, 19243u, 1u), Struct_2(true), true), _wgslsmith_sub_i32(0i, -51495i)), countOneBits(vec2<i32>(2147483647i, -2147483647i)))), vec2<f32>(var_0.x, -1377f));
}

