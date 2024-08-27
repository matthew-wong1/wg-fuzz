struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(4294967295u, 4294967295u, 1u, 48743u), vec4<u32>(4294967295u, 22714u, 32504u, 4294967295u), vec4<u32>(22268u, 0u, 8823u, 4294967295u), vec4<u32>(95576u, 4294967295u, 10273u, 1u), vec4<u32>(88722u, 4294967295u, 13721u, 1u), vec4<u32>(1u, 43850u, 6483u, 143785u), vec4<u32>(0u, 12900u, 94615u, 36688u), vec4<u32>(0u, 25624u, 1u, 1u), vec4<u32>(0u, 38202u, 42325u, 0u), vec4<u32>(0u, 125865u, 19681u, 1u), vec4<u32>(19206u, 4294967295u, 20043u, 1u), vec4<u32>(4294967295u, 4294967295u, 32104u, 0u), vec4<u32>(0u, 4294967295u, 1u, 1u));

var<private> global2: array<i32, 1> = array<i32, 1>(1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> f32 {
    global2 = array<i32, 1>();
    var var_0 = arg_3;
    global2 = array<i32, 1>();
    var var_1 = arg_3;
    global1 = array<vec4<u32>, 13>();
    return _wgslsmith_f_op_f32(abs(arg_2));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    global1 = array<vec4<u32>, 13>();
    global1 = array<vec4<u32>, 13>();
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(1002f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(613f + -117f)))));
    global2 = array<i32, 1>();
    return select(_wgslsmith_div_u32(13450u, u_input.b), (firstLeadingBit(6585u & u_input.c.x) ^ _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.xy), _wgslsmith_clamp_u32(4294967295u, u_input.c.x, u_input.b))) ^ (select(4294967295u, 3421u, var_0.a.x & false) ^ _wgslsmith_clamp_u32(u_input.c.x, ~59693u, 4294967295u)), arg_0.a.x);
}

fn func_2() -> bool {
    var var_0 = Struct_1(vec4<bool>((_wgslsmith_f_op_f32(f32(-1f) * -903f) != _wgslsmith_f_op_f32(round(524f))) && (_wgslsmith_sub_i32(u_input.a.x, u_input.a.x) <= global2[_wgslsmith_index_u32(~27909u, 1u)]), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false))), select(false, true, select(true, false, true)), false));
    var_0 = Struct_1(var_0.a);
    var var_1 = func_4(Struct_1(vec4<bool>(true, _wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.b, 42870u), 671f, -568f, Struct_1(vec4<bool>(false, false, false, false)))) > _wgslsmith_f_op_f32(-772f + 635f), true, true)), firstLeadingBit(abs(vec3<i32>(60593i, _wgslsmith_mult_i32(-3556i, u_input.a.x), firstTrailingBit(global2[_wgslsmith_index_u32(31432u, 1u)])))), Struct_1(select(vec4<bool>(true, all(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), true, true), vec4<bool>(var_0.a.x == var_0.a.x, false | var_0.a.x, u_input.a.x != u_input.a.x, var_0.a.x), true | any(vec3<bool>(false, false, var_0.a.x)))));
    let var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 10411u, 0u, 1u), vec4<u32>(u_input.b, 1u, 14804u, 0u)) & vec4<u32>(reverseBits(u_input.c.x), countOneBits(0u), 84568u, 88188u), vec4<u32>(firstLeadingBit(_wgslsmith_add_u32(u_input.c.x, u_input.b)), max(~u_input.b, ~42287u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, 1509u, 71114u), abs(global1[_wgslsmith_index_u32(18318u, 13u)])), reverseBits(_wgslsmith_clamp_u32(u_input.c.x, u_input.b, 1u)))) & _wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(~(~0u) << (_wgslsmith_div_u32(~0u, ~u_input.c.x) % 32u), 13u)], global1[_wgslsmith_index_u32(abs(select(_wgslsmith_clamp_u32(u_input.b, u_input.b, 49833u), _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(30777u, 13u)], vec4<u32>(u_input.b, u_input.b, u_input.c.x, u_input.b)), true)), 13u)]);
    let var_3 = Struct_1(var_0.a);
    return any(select(select(var_0.a, !var_3.a, !(!var_0.a)), var_3.a, !vec4<bool>(var_0.a.x, !var_0.a.x, any(var_3.a.wz), u_input.c.x < u_input.c.x)));
}

fn func_1() -> vec4<bool> {
    global0 = func_2();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(177f, -1032f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -227f))), 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1621f) * -357f)));
    global1 = array<vec4<u32>, 13>();
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1039f, 1000f)) - _wgslsmith_f_op_f32(-145f - 592f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-128f + _wgslsmith_div_f32(-335f, _wgslsmith_div_f32(-1000f, 1758f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-435f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-515f - 156f)))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), any(vec3<bool>(true, false, false))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, true), vec3<bool>(true, false, true))))));
    var var_1 = vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(53318i, u_input.a.x));
    return select(vec4<bool>(true, true, true, true), !vec4<bool>(!any(vec4<bool>(true, false, true, true)), true, true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a << (firstTrailingBit(u_input.c) % vec3<u32>(32u));
    global0 = true;
    global1 = array<vec4<u32>, 13>();
    global1 = array<vec4<u32>, 13>();
    var var_1 = Struct_1(select(vec4<bool>(true, true, true, true), select(func_1(), select(func_1(), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), true), any(vec3<bool>(true, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, false))), func_1(), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(209f, -178f, 1689f, 1060f) * vec4<f32>(257f, 106f, 211f, 224f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-623f, 280f, -230f, -1970f) * vec4<f32>(699f, -1320f, -1243f, -947f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(231f, -1142f, -1278f, 271f) - vec4<f32>(276f, 1874f, -729f, -512f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(655f, -617f, -1000f, -169f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1741f, 1054f, -1003f, -122f), vec4<f32>(185f, 969f, 2380f, 670f))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(955f, -1289f, -417f, 1013f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-221f, _wgslsmith_f_op_f32(abs(-292f)), _wgslsmith_f_op_f32(round(-304f)), _wgslsmith_f_op_f32(round(-1001f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-882f, 451f, 1110f, -112f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1903f, -1136f, 1584f, -976f), vec4<f32>(615f, 397f, -1171f, 312f), var_1.a)))))));
    global0 = (firstTrailingBit(firstTrailingBit(u_input.a.x)) == global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(41057u & u_input.c.x), firstLeadingBit(select(u_input.b, u_input.b, true))), 1u)]) && false;
    let var_3 = !var_1.a.x;
    var var_4 = _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, 465f))) + -984f))));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(17517u, 1u)], ~u_input.c.xx, vec4<i32>(~firstLeadingBit(0i), ~(-2147483647i), 2147483647i, countOneBits(-(~(-2147483647i)))), -2147483647i, ~var_0.x);
}

