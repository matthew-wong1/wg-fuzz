struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: vec2<i32>;

var<private> global2: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(1613f, 709f), vec2<f32>(-1391f, 578f), vec2<f32>(138f, 1607f), vec2<f32>(-968f, -363f), vec2<f32>(754f, -423f), vec2<f32>(-1000f, 533f), vec2<f32>(-1710f, -2029f), vec2<f32>(-1438f, 801f), vec2<f32>(-291f, -1092f), vec2<f32>(1301f, -596f), vec2<f32>(-150f, -1000f), vec2<f32>(-453f, 367f), vec2<f32>(-450f, 859f), vec2<f32>(-414f, 1896f), vec2<f32>(-2950f, 658f), vec2<f32>(1767f, -303f), vec2<f32>(336f, 1000f), vec2<f32>(1049f, -922f), vec2<f32>(-516f, -333f), vec2<f32>(573f, 461f), vec2<f32>(1000f, 1484f), vec2<f32>(989f, -425f), vec2<f32>(-403f, 1030f), vec2<f32>(-234f, -344f), vec2<f32>(1000f, -910f), vec2<f32>(-417f, 500f), vec2<f32>(-659f, 1000f), vec2<f32>(794f, -586f), vec2<f32>(909f, 1000f), vec2<f32>(-483f, -337f));

var<private> global3: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(939f, -299f, 699f), 2147483647i, -85274i), Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(1000f, -1417f, 458f), -19694i, 2147483647i), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(1437f, -565f, 585f), 2147483647i, 16274i), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(-599f, -565f, -396f), -34194i, -47405i), Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(654f, 368f, 449f), 1i, 2147483647i), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(1214f, -1000f, -2260f), 2147483647i, 1i), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(2313f, 1009f, 506f), -31077i, 24010i), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(-252f, 969f, 219f), i32(-2147483648), -1i), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(-614f, 1072f, 133f), 2147483647i, i32(-2147483648)), Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(978f, 707f, -2671f), i32(-2147483648), -18896i), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(124f, 2331f, 511f), 2147483647i, 57709i), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(-122f, -1000f, -516f), 1i, 9739i), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(261f, -363f, 146f), 62957i, 14874i), Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(734f, -368f, 152f), 14623i, 0i), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(1000f, 468f, 796f), -59935i, 2147483647i), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(1214f, 1000f, 453f), -80251i, 15896i), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-1560f, 935f, 1126f), -27355i, -1i));

var<private> global4: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(true, true, false));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    var var_0 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, 4294967295u, 0u))), 4294967295u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 14852u)), firstTrailingBit(1u), arg_0.x)), vec3<u32>(16501u, ~(~67668u), 0u));
    var var_1 = arg_0.x;
    var_1 = true;
    global0 = vec2<bool>(arg_0.x, select(!arg_0.x, !global0.x, true) && arg_0.x);
    let var_2 = -1000f;
    return ~(~(~0i));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_1 {
    global3 = array<Struct_1, 17>();
    var var_0 = global0.x;
    global3 = array<Struct_1, 17>();
    let var_1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<u32>(firstLeadingBit(31943u ^ arg_1.a.x), 88203u, _wgslsmith_mod_u32(arg_1.a.x, 1u))) >> (_wgslsmith_mod_vec3_u32(~firstTrailingBit(vec3<u32>(68194u, 5462u, arg_1.a.x)), ~vec3<u32>(~0u, ~arg_1.a.x, _wgslsmith_clamp_u32(arg_1.a.x, arg_1.a.x, arg_1.a.x))) % vec3<u32>(32u));
    var var_2 = Struct_1(vec4<bool>(any(select(!vec4<bool>(true, true, true, global0.x), vec4<bool>(false, false, global0.x, global0.x), true)), false, !(!global0.x), true), arg_0.wwx, -_wgslsmith_add_i32(1i, firstTrailingBit(func_3(vec2<bool>(false, global0.x)))), 1i);
    return Struct_1(select(var_2.a, select(select(vec4<bool>(var_2.a.x, var_2.a.x, false, true), vec4<bool>(global0.x, var_2.a.x, var_2.a.x, global0.x), true), select(var_2.a, !var_2.a, !vec4<bool>(global0.x, global0.x, true, global0.x)), vec4<bool>(global0.x, var_2.a.x, var_2.a.x & true, var_2.a.x)), var_2.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1429f)), var_2.b.x, arg_0.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(530f, -398f, arg_1.b)))))), ~(-23849i), 13330i);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>) -> f32 {
    global4 = array<vec3<bool>, 1>();
    global3 = array<Struct_1, 17>();
    let var_0 = arg_1.a.x;
    global2 = array<vec2<f32>, 30>();
    let var_1 = !any(vec4<bool>(func_2(vec4<f32>(-320f, arg_2.x, 949f, 932f), Struct_2(vec2<u32>(0u, 0u), 475f)).a.x, any(func_2(vec4<f32>(359f, arg_1.b.x, 843f, 613f), Struct_2(vec2<u32>(32056u, 14833u), arg_2.x)).a.xw), any(arg_1.a), !(arg_1.c < u_input.a)));
    return arg_1.b.x;
}

fn func_1(arg_0: f32) -> f32 {
    global4 = array<vec3<bool>, 1>();
    var var_0 = true;
    var var_1 = vec2<u32>(~_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(58496u, 1u), 1u, _wgslsmith_add_u32(~1u, ~4294967295u)), 39474u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(var_1.x, 30u)], vec2<f32>(_wgslsmith_f_op_f32(max(arg_0, 883f)), _wgslsmith_f_op_f32(func_4(select(global0.x, global0.x, true), func_2(vec4<f32>(471f, arg_0, arg_0, -608f), Struct_2(vec2<u32>(13388u, 1u), -2216f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 583f)))))));
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0))))), _wgslsmith_f_op_f32(step(arg_0, arg_0))), arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0)))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(687f, -255f, -965f, -1765f) + vec4<f32>(145f, 394f, -708f, -776f)) - vec4<f32>(487f, 305f, -1651f, 333f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(112f, -712f, -180f, -253f))) + vec4<f32>(-819f, -294f, _wgslsmith_f_op_f32(func_1(771f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-273f, -594f, 486f, -1382f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(285f, 1109f, -904f, 1137f))))))));
    var var_1 = Struct_2(vec2<u32>(0u, ~23626u), var_0.x);
    var var_2 = global3[_wgslsmith_index_u32(var_1.a.x, 17u)];
    global1 = ~(~vec2<i32>(var_2.d, _wgslsmith_dot_vec2_i32(select(vec2<i32>(var_2.c, 2147483647i), vec2<i32>(u_input.a, 2147483647i), var_2.a.wy), ~vec2<i32>(15953i, -15808i))));
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 779f)))) - var_2.b.x));
    global2 = array<vec2<f32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec3<u32>(52885u, 4294967295u, var_1.a.x) << (vec3<u32>(0u, 4294967295u, var_1.a.x) % vec3<u32>(32u)))));
}

