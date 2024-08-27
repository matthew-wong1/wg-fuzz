struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12>;

var<private> global1: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-1104f, 1178f, 1566f), vec3<f32>(-365f, 1678f, -427f), vec3<f32>(-378f, 1000f, 440f), vec3<f32>(2274f, 1675f, -264f), vec3<f32>(-717f, 1000f, -257f), vec3<f32>(-1000f, 1276f, 907f), vec3<f32>(532f, -844f, 1525f), vec3<f32>(-193f, 684f, 792f), vec3<f32>(-2044f, 498f, 1280f), vec3<f32>(-740f, 221f, -343f), vec3<f32>(1153f, -749f, 1500f), vec3<f32>(1447f, 1000f, -449f), vec3<f32>(-389f, -2074f, 1658f), vec3<f32>(-136f, -1000f, -991f), vec3<f32>(1618f, -631f, -573f), vec3<f32>(-916f, 1416f, -1711f), vec3<f32>(792f, -434f, -1548f), vec3<f32>(-288f, 1388f, 284f), vec3<f32>(-2339f, 2155f, -268f), vec3<f32>(-1532f, -857f, -648f), vec3<f32>(-244f, -1007f, 1082f), vec3<f32>(-2087f, -169f, -2111f), vec3<f32>(-943f, 477f, 506f), vec3<f32>(-1000f, 1645f, 798f), vec3<f32>(1612f, -434f, -747f), vec3<f32>(-490f, 836f, -844f), vec3<f32>(1900f, -284f, 1899f), vec3<f32>(-323f, -1000f, -1000f), vec3<f32>(139f, -652f, -1000f));

var<private> global2: array<bool, 25> = array<bool, 25>(false, true, true, true, false, false, true, true, false, false, true, false, false, true, false, false, false, true, false, true, false, false, true, true, true);

var<private> global3: i32 = -4883i;

var<private> global4: i32 = -1i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(313f, -145f)), -1016f), 902f))))));
    let var_1 = Struct_1(!(!(abs(u_input.b.x) >= _wgslsmith_clamp_u32(1u, 34529u, u_input.b.x))), _wgslsmith_div_u32(max(firstTrailingBit(76660u), u_input.b.x), u_input.b.x));
    var var_2 = Struct_1(true, 7482u);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-243f - _wgslsmith_div_f32(-1367f, 2011f)), 891f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))));
    var var_4 = Struct_1(any(select(vec4<bool>(true, true, any(vec2<bool>(false, true)), false), vec4<bool>(true, !var_1.a, arg_0 && global2[_wgslsmith_index_u32(var_2.b, 25u)], !arg_0), true && any(vec4<bool>(false, var_2.a, arg_1, var_2.a)))), u_input.b.x);
    return u_input.b.x;
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = arg_0;
    let var_1 = firstTrailingBit(global0[_wgslsmith_index_u32(u_input.b.x, 12u)]) & min(vec3<i32>(0i, 20548i, _wgslsmith_div_i32(~(-6861i), 1i)), vec3<i32>(71866i, -24941i, -(~(-17311i))));
    global3 = -65917i;
    global1 = array<vec3<f32>, 29>();
    let var_2 = Struct_1(true, countOneBits(u_input.b.x | ~func_3(global2[_wgslsmith_index_u32(4294967295u, 25u)], global2[_wgslsmith_index_u32(u_input.a.x, 25u)])));
    return var_2.b;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_2;
    global3 = _wgslsmith_add_i32(-9910i, i32(-1i) * -1i);
    var var_1 = arg_0;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_2)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1489f)));
    global0 = array<vec3<i32>, 12>();
    return 1u << ((_wgslsmith_div_u32(firstTrailingBit(max(36006u, 9962u)), (arg_1.b >> (arg_0.b % 32u)) | 1u) | func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))) % 32u);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    global4 = 1i;
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(~(~arg_2.b), 25u)], u_input.b.x);
    var var_1 = Struct_1(false, 1u);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(select(arg_3.x, arg_3.x, false)))), _wgslsmith_f_op_f32(floor(948f)), _wgslsmith_f_op_f32(-arg_3.x)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_3.x, arg_3.x, -408f)))))));
    var_1 = Struct_1(false, ~8533u);
    return -478f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 12>();
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec3_u32(u_input.b, ~vec3<u32>(4294967295u & u_input.a.x, u_input.b.x, func_1(Struct_1(global2[_wgslsmith_index_u32(4848u, 25u)], 15656u), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], u_input.a.x), vec2<f32>(632f, 150f), Struct_1(true, u_input.b.x)))), all(vec2<bool>(false, all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], global2[_wgslsmith_index_u32(u_input.a.x, 25u)], true)))), Struct_1(!(!(36120u <= u_input.a.x)), firstTrailingBit(firstLeadingBit(~75598u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(u_input.b.x, 29u)] - vec3<f32>(-419f, 1264f, 1774f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)] * vec3<f32>(1000f, 2040f, 1053f))))) + vec3<f32>(2549f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-280f, -530f, global2[_wgslsmith_index_u32(u_input.a.x, 25u)])))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-907f, 182f))))));
    global0 = array<vec3<i32>, 12>();
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1904f)), 662f);
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(abs(firstLeadingBit(u_input.a.x)), 25u)], 13223u);
    let var_2 = Struct_1(any(vec4<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, var_1.a, global2[_wgslsmith_index_u32(30935u, 25u)], true), true)), true, global2[_wgslsmith_index_u32(u_input.b.x, 25u)], true)), countOneBits(~var_1.b));
    var var_3 = vec2<u32>(_wgslsmith_sub_u32(9224u, func_1(var_2, var_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-383f, -532f)), var_2)), ~(~var_1.b)) & _wgslsmith_div_vec2_u32(u_input.a.ww, vec2<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, 1u, u_input.a.x), u_input.a.zxx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(~13817u, all(vec4<bool>(var_1.a, true, var_1.a, var_2.a)), Struct_1(global2[_wgslsmith_index_u32(u_input.b.x, 25u)], 4294967295u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2014f, 803f, 1378f), global1[_wgslsmith_index_u32(46099u, 29u)], true))))))), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-22146i, 0i, -2147483647i, -2147483647i), vec4<i32>(1i, -21493i, 2147483647i, -7799i)), -2147483647i), 30742i, _wgslsmith_clamp_i32(~0i, _wgslsmith_clamp_i32(-39157i, -1i, -2147483647i), abs(2147483647i))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_1.b, u_input.b.x, u_input.a.x, u_input.b.x)), var_1.b, var_1.b >> (var_2.b % 32u)), ~u_input.a.xyw) % vec3<u32>(32u)), _wgslsmith_dot_vec3_u32(~(~u_input.b), u_input.a.yyy) ^ 4294967295u);
}

