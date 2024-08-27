struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec4<i32>(2147483647i, 2466i, 30902i, 2147483647i), 2930u), Struct_2(vec4<bool>(false, true, false, true), 19426u, Struct_1(vec4<i32>(-1i, -42905i, 7069i, -1i), 1u)));

var<private> global1: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(471f, 790f, -108f), vec3<f32>(420f, -544f, -187f), vec3<f32>(1000f, 1292f, 2434f), vec3<f32>(480f, 114f, 1537f), vec3<f32>(120f, 1298f, 1000f), vec3<f32>(-497f, -1000f, 2011f), vec3<f32>(-1000f, 1114f, -1000f), vec3<f32>(-2551f, 1000f, 1000f), vec3<f32>(-206f, 1064f, 309f), vec3<f32>(1000f, -980f, -1827f), vec3<f32>(503f, 1100f, 354f), vec3<f32>(1235f, 125f, -818f), vec3<f32>(-740f, 699f, 635f), vec3<f32>(739f, 550f, 2119f), vec3<f32>(156f, -1052f, 1240f), vec3<f32>(-1561f, -1000f, 839f), vec3<f32>(-863f, 204f, 263f), vec3<f32>(1348f, 236f, 1780f), vec3<f32>(248f, -850f, 686f), vec3<f32>(-2129f, 446f, 1000f), vec3<f32>(452f, 1250f, 650f), vec3<f32>(523f, -262f, 1047f), vec3<f32>(-1080f, 431f, 339f), vec3<f32>(158f, 1000f, -206f), vec3<f32>(-2376f, -1129f, -104f), vec3<f32>(2313f, 2551f, -1000f), vec3<f32>(-301f, -1000f, -441f), vec3<f32>(-1644f, -473f, -443f), vec3<f32>(276f, -1282f, -156f));

var<private> global2: bool = true;

var<private> global3: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(Struct_1(vec4<i32>(-11177i, 0i, 43840i, -11308i), 4294967295u), Struct_2(vec4<bool>(true, false, true, true), 2679u, Struct_1(vec4<i32>(i32(-2147483648), -56017i, 10425i, 37967i), 13222u))), Struct_4(Struct_1(vec4<i32>(-1i, -68456i, -28986i, 0i), 1u), Struct_2(vec4<bool>(false, true, false, true), 17687u, Struct_1(vec4<i32>(2147483647i, -15982i, 42667i, -17050i), 0u))), Struct_4(Struct_1(vec4<i32>(i32(-2147483648), -6i, 27313i, 2147483647i), 0u), Struct_2(vec4<bool>(false, true, true, false), 4294967295u, Struct_1(vec4<i32>(-24269i, -1i, -73i, 43184i), 62702u))), Struct_4(Struct_1(vec4<i32>(2147483647i, -1i, -13662i, 55660i), 8096u), Struct_2(vec4<bool>(false, true, false, true), 1u, Struct_1(vec4<i32>(567i, 1i, -1i, 11519i), 11696u))), Struct_4(Struct_1(vec4<i32>(-36891i, i32(-2147483648), -12101i, 2147483647i), 26298u), Struct_2(vec4<bool>(true, true, true, true), 4294967295u, Struct_1(vec4<i32>(-1i, 32813i, 4238i, 12837i), 1u))), Struct_4(Struct_1(vec4<i32>(1i, 33960i, 4418i, 1i), 38119u), Struct_2(vec4<bool>(false, false, true, false), 0u, Struct_1(vec4<i32>(2147483647i, -52223i, -1i, -4220i), 51775u))), Struct_4(Struct_1(vec4<i32>(3116i, 47489i, 5739i, 15i), 4294967295u), Struct_2(vec4<bool>(true, true, false, false), 9430u, Struct_1(vec4<i32>(-16348i, 1i, -14306i, 0i), 0u))), Struct_4(Struct_1(vec4<i32>(2147483647i, 0i, -12777i, 2147483647i), 62403u), Struct_2(vec4<bool>(true, true, true, true), 111071u, Struct_1(vec4<i32>(i32(-2147483648), 34161i, 23310i, 1i), 0u))), Struct_4(Struct_1(vec4<i32>(-29398i, 20908i, -18452i, 18151i), 1u), Struct_2(vec4<bool>(true, false, true, false), 4294967295u, Struct_1(vec4<i32>(0i, -1i, 26198i, 2147483647i), 65480u))));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: bool) -> Struct_3 {
    global0 = Struct_4(global0.a, global0.b);
    var var_0 = vec3<i32>(~20079i, global0.b.c.a.x, ~_wgslsmith_add_i32(-2147483647i, _wgslsmith_clamp_i32(global0.a.a.x, -global0.b.c.a.x, global0.b.c.a.x)));
    let var_1 = _wgslsmith_f_op_f32(148f * -1000f);
    var var_2 = global0.b;
    var var_3 = var_0.x;
    return Struct_3(-_wgslsmith_sub_vec3_i32(vec3<i32>(-10495i, var_0.x, var_0.x), ~var_2.c.a.zxz) << ((~_wgslsmith_div_vec3_u32(u_input.b.xzz, vec3<u32>(0u, var_2.c.b, 4294967295u)) << (arg_0 % vec3<u32>(32u))) % vec3<u32>(32u)), arg_1.yz, firstTrailingBit(-8125i));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = global0.a;
    var var_1 = ~(-(~(-arg_1.c.a.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1199f, -552f) + vec2<f32>(-173f, -258f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1613f, 571f) - vec2<f32>(-1000f, 539f)), vec2<f32>(-576f, -1000f), vec2<bool>(any(vec3<bool>(global0.b.a.x, true, true)), arg_1.a.x))))));
    let var_3 = arg_1;
    global3 = array<Struct_4, 9>();
    return select(var_3.a, vec4<bool>(var_2.x != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -895f))), false, arg_0.b.x, global0.b.a.x), func_1(~(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.c.b, global0.a.b, u_input.b.x), u_input.b.xwx) ^ _wgslsmith_mult_vec3_u32(u_input.b.xwz, u_input.b.wzy)), select(global0.b.a, !global0.b.a, select(select(var_3.a, vec4<bool>(arg_0.b.x, arg_0.b.x, true, false), false), !global0.b.a, true)), ~_wgslsmith_mult_u32(14071u, global0.a.b) != 4294967295u).b.x);
}

fn func_3(arg_0: Struct_4) -> Struct_1 {
    let var_0 = global0.b;
    var var_1 = countOneBits(vec4<i32>(arg_0.b.c.a.x, -31659i, global0.a.a.x, arg_0.b.c.a.x));
    return Struct_1(abs(countOneBits(abs(-vec4<i32>(-10765i, 5864i, -1i, var_1.x)))), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global0.b.a, global0.b.a, all(vec3<bool>(true, global0.b.a.x, select(true, global0.b.a.x, true))));
    let var_1 = min(vec3<i32>((-global0.b.c.a.x << (select(global0.a.b, 0u, var_0.x) % 32u)) ^ _wgslsmith_mod_i32(global0.a.a.x, _wgslsmith_sub_i32(global0.b.c.a.x, -4907i)), firstLeadingBit(-2147483647i), -2147483647i), vec3<i32>(17361i, -54538i, select(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, 1i), abs(global0.b.c.a.wxw)), i32(-1i) * -1485i, any(vec2<bool>(true, false)))));
    global3 = array<Struct_4, 9>();
    var var_2 = func_1(vec3<u32>(70476u, u_input.a, 4360u), !(!(!(!global0.b.a))), !(global0.b.a.x || false) && ((true && var_0.x) & true));
    global2 = any(var_0.xw);
    var var_3 = func_3(Struct_4(global0.b.c, Struct_2(func_2(func_1(u_input.b.yxx, global0.b.a, var_0.x), Struct_2(var_0, 105669u, Struct_1(global0.b.c.a, global0.a.b))), global0.b.b, Struct_1(firstTrailingBit(vec4<i32>(1i, 5800i, global0.a.a.x, var_1.x)), ~26145u))));
    let var_4 = global0.b.c.a.x;
    var var_5 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-353f, 2244f, -502f, 1169f), vec4<f32>(155f, 1000f, -597f, -1015f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1513f, 839f, -1761f, -1108f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-635f, -404f, 1000f, -1109f), vec4<f32>(1235f, 1427f, -579f, 627f), var_0))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(global0.b.c.b | 1u)), var_3.b);
}

