struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5>;

var<private> global1: i32 = -1i;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<f32>(356f, -471f), 640f, vec4<u32>(4294967295u, 6929u, 1u, 0u), vec2<bool>(false, true), vec3<i32>(0i, -1i, i32(-2147483648))), Struct_1(vec2<f32>(439f, 667f), -1189f, vec4<u32>(88417u, 77896u, 40755u, 4294967295u), vec2<bool>(true, false), vec3<i32>(-30588i, -17212i, 65535i)), Struct_1(vec2<f32>(1701f, -1793f), -738f, vec4<u32>(10801u, 9936u, 15036u, 4294967295u), vec2<bool>(true, true), vec3<i32>(-1i, -3798i, -54515i)), Struct_1(vec2<f32>(784f, -788f), 1245f, vec4<u32>(53565u, 14374u, 1u, 4294967295u), vec2<bool>(true, false), vec3<i32>(-1i, -28230i, -61358i)), Struct_1(vec2<f32>(-247f, -526f), -1036f, vec4<u32>(2620u, 0u, 76145u, 23671u), vec2<bool>(false, true), vec3<i32>(-33817i, i32(-2147483648), -1i)), Struct_1(vec2<f32>(353f, 1000f), -1000f, vec4<u32>(1u, 11934u, 4294967295u, 42480u), vec2<bool>(false, true), vec3<i32>(-14730i, -31897i, -8003i)), Struct_1(vec2<f32>(1372f, -717f), 2200f, vec4<u32>(0u, 28701u, 0u, 4294967295u), vec2<bool>(true, false), vec3<i32>(-39369i, -56272i, -16691i)), Struct_1(vec2<f32>(818f, -402f), 478f, vec4<u32>(66390u, 26756u, 26697u, 34990u), vec2<bool>(true, false), vec3<i32>(42553i, 0i, -30772i)), Struct_1(vec2<f32>(-630f, -1336f), -118f, vec4<u32>(0u, 1u, 25467u, 35908u), vec2<bool>(false, true), vec3<i32>(9606i, -11076i, 29345i)), Struct_1(vec2<f32>(539f, -1220f), -952f, vec4<u32>(0u, 130609u, 1u, 28994u), vec2<bool>(false, true), vec3<i32>(2865i, 0i, 16873i)), Struct_1(vec2<f32>(102f, -1000f), -1000f, vec4<u32>(63111u, 22507u, 35716u, 1u), vec2<bool>(false, true), vec3<i32>(i32(-2147483648), 18766i, 2523i)), Struct_1(vec2<f32>(366f, 735f), 186f, vec4<u32>(16714u, 4294967295u, 72097u, 107564u), vec2<bool>(true, true), vec3<i32>(9077i, 1i, 0i)), Struct_1(vec2<f32>(373f, 203f), 753f, vec4<u32>(27540u, 70237u, 46285u, 4294967295u), vec2<bool>(true, true), vec3<i32>(0i, 26410i, 39437i)), Struct_1(vec2<f32>(1045f, 185f), -1379f, vec4<u32>(0u, 38497u, 1u, 1u), vec2<bool>(true, false), vec3<i32>(40298i, 1i, 22813i)), Struct_1(vec2<f32>(-720f, 195f), -1016f, vec4<u32>(21931u, 5612u, 139u, 27162u), vec2<bool>(false, true), vec3<i32>(1i, -25035i, i32(-2147483648))), Struct_1(vec2<f32>(-889f, 2960f), -1347f, vec4<u32>(38191u, 0u, 0u, 32264u), vec2<bool>(true, false), vec3<i32>(i32(-2147483648), 23667i, 112717i)), Struct_1(vec2<f32>(1248f, 1000f), -1026f, vec4<u32>(0u, 26493u, 69637u, 0u), vec2<bool>(false, true), vec3<i32>(-41272i, 56303i, 2147483647i)), Struct_1(vec2<f32>(-1275f, 1000f), -773f, vec4<u32>(1u, 0u, 13031u, 4294967295u), vec2<bool>(false, true), vec3<i32>(40567i, 32401i, i32(-2147483648))), Struct_1(vec2<f32>(-1165f, -279f), 1000f, vec4<u32>(59384u, 0u, 40817u, 4294967295u), vec2<bool>(false, false), vec3<i32>(-34773i, 3118i, -1i)), Struct_1(vec2<f32>(-514f, 1607f), -754f, vec4<u32>(24764u, 26883u, 80454u, 4294967295u), vec2<bool>(true, true), vec3<i32>(2147483647i, -31574i, i32(-2147483648))), Struct_1(vec2<f32>(-569f, -1677f), -1000f, vec4<u32>(71501u, 4110u, 4294967295u, 1u), vec2<bool>(true, true), vec3<i32>(-1i, 52073i, 10923i)), Struct_1(vec2<f32>(911f, 390f), 367f, vec4<u32>(4294967295u, 47328u, 4294967295u, 19006u), vec2<bool>(true, true), vec3<i32>(2147483647i, -35152i, i32(-2147483648))), Struct_1(vec2<f32>(552f, 1077f), 1000f, vec4<u32>(0u, 0u, 0u, 0u), vec2<bool>(true, false), vec3<i32>(i32(-2147483648), -44138i, 2147483647i)), Struct_1(vec2<f32>(447f, -484f), -1000f, vec4<u32>(55197u, 1u, 1u, 1u), vec2<bool>(false, false), vec3<i32>(-11795i, 6804i, i32(-2147483648))), Struct_1(vec2<f32>(-1835f, -872f), 2626f, vec4<u32>(30432u, 35062u, 21560u, 0u), vec2<bool>(true, false), vec3<i32>(44013i, -37828i, -1i)));

var<private> global3: array<Struct_1, 8>;

var<private> global4: array<u32, 23>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = firstTrailingBit(vec3<u32>(~select(u_input.b, firstLeadingBit(arg_2.c.x), select(false, arg_2.d.x, false)), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(global4[_wgslsmith_index_u32(1u, 23u)], 0u), _wgslsmith_div_u32(_wgslsmith_add_u32(70468u, u_input.e), 18386u << (u_input.b % 32u))), max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), arg_2.c.yw | vec2<u32>(u_input.b, arg_2.c.x)), countOneBits(abs(60181u)))));
    global0 = array<vec3<f32>, 5>();
    global0 = array<vec3<f32>, 5>();
    global2 = array<Struct_1, 25>();
    let var_1 = arg_2.e;
    return countOneBits(~(~vec3<u32>(1u, 1u, _wgslsmith_dot_vec3_u32(arg_2.c.wyx, arg_2.c.wxy))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>) -> f32 {
    global4 = array<u32, 23>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, ~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_3(0i, vec4<i32>(0i, u_input.a, 33992i, 63306i), global3[_wgslsmith_index_u32(39469u, 8u)]), abs(vec3<u32>(9394u, global4[_wgslsmith_index_u32(4294967295u, 23u)], u_input.b))), 23u)], u_input.e) ^ (global4[_wgslsmith_index_u32(func_3(0i, vec4<i32>(24663i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, u_input.d, u_input.a, 43957i), vec4<i32>(u_input.c, -57571i, arg_1.x, 0i)), 7162i, ~0i), Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1385f, -662f), vec2<f32>(-181f, 896f))), _wgslsmith_f_op_f32(sign(-909f)), ~vec4<u32>(0u, u_input.e, u_input.b, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(142980u, 23u)], 23u)], 23u)], 23u)]), vec2<bool>(false, true), arg_0)).x, 23u)] | _wgslsmith_sub_u32(27246u, global4[_wgslsmith_index_u32(countOneBits(global4[_wgslsmith_index_u32(65248u, 23u)]), 23u)] ^ 1u)), 25u)];
    let var_1 = arg_1.x;
    let var_2 = global2[_wgslsmith_index_u32(u_input.b, 25u)];
    global1 = var_0.e.x;
    return var_0.b;
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1772f)), 2794f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -259f), -574f))));
    global2 = array<Struct_1, 25>();
    let var_1 = _wgslsmith_f_op_f32(floor(-763f));
    let var_2 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.d, -13223i, u_input.c), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, u_input.a), vec2<i32>(1i, -15676i), vec2<i32>(-2147483647i, u_input.a)))) * var_0.x));
    let var_3 = global3[_wgslsmith_index_u32(u_input.b, 8u)];
    return -2218f;
}

fn func_4(arg_0: f32) -> u32 {
    var var_0 = vec2<bool>(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(func_3(35347i, vec4<i32>(2147483647i, -1i, u_input.c, u_input.a), Struct_1(vec2<f32>(-1064f, arg_0), arg_0, vec4<u32>(global4[_wgslsmith_index_u32(68452u, 23u)], global4[_wgslsmith_index_u32(0u, 23u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(55193u, 23u)], 23u)], 4294967295u), vec2<bool>(true, true), vec3<i32>(u_input.a, 1i, -18781i))).x, 23u)] | reverseBits(33444u), 23u)], abs(27107u)) >= 1u, any(vec3<bool>(u_input.c <= -u_input.d, any(vec2<bool>(true, true)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))))));
    let var_1 = _wgslsmith_f_op_f32(-932f * -716f);
    global0 = array<vec3<f32>, 5>();
    var var_2 = global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~firstTrailingBit(abs(u_input.b)), 23u)], 8u)];
    global2 = array<Struct_1, 25>();
    return countOneBits(max(~var_2.c.x, var_2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(min(-1i, u_input.a));
    var_0 = u_input.a << (~u_input.e % 32u);
    var var_1 = ~(~(~vec2<i32>(-4679i, countOneBits(1i))));
    var var_2 = global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~select(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(~(14746u >> (0u % 32u)), 23u)], ~(~global4[_wgslsmith_index_u32(59590u, 23u)])), abs(func_4(_wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.b, 4294967295u))))), !all(vec3<bool>(true, true, true))), 23u)], 25u)];
    var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(25255i, _wgslsmith_clamp_i32(-_wgslsmith_mult_i32(2147483647i, -1i), 4555i, -var_1.x)), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~global4[_wgslsmith_index_u32(~var_2.c.x, 23u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 1000f, 449f, var_2.b))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b, 172f, 1039f, 576f), vec4<f32>(-787f, var_2.a.x, var_2.b, var_2.a.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_2.b, var_2.a.x, var_2.a.x)), vec4<f32>(var_2.a.x, var_2.b, var_2.a.x, var_2.b), vec4<bool>(true, false, var_2.d.x, true))))), vec4<f32>(1486f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.a, var_2.e.x, -11446i), _wgslsmith_add_vec2_i32(vec2<i32>(var_2.e.x, -1i), var_2.e.zy))) * _wgslsmith_f_op_f32(exp2(var_2.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.a.x - var_2.b)))), _wgslsmith_f_op_f32(min(var_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1424f + -641f), _wgslsmith_f_op_f32(min(-1932f, var_2.b)))))), ~u_input.e);
}

