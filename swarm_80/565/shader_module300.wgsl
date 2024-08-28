struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(1763f, 21782u, vec4<f32>(-603f, 266f, -762f, -449f), vec4<u32>(50245u, 0u, 4294967295u, 89692u)), Struct_1(304f, 34928u, vec4<f32>(301f, 1000f, 1000f, 986f), vec4<u32>(4294967295u, 0u, 0u, 26548u)), Struct_1(668f, 1u, vec4<f32>(920f, -1402f, 1315f, -1000f), vec4<u32>(58616u, 21645u, 12853u, 1u)), Struct_1(-698f, 4294967295u, vec4<f32>(362f, 102f, 2734f, 1049f), vec4<u32>(1u, 1u, 96117u, 1u)), Struct_1(-741f, 4294967295u, vec4<f32>(-239f, -437f, 304f, -1158f), vec4<u32>(4294967295u, 4294967295u, 25784u, 16107u)), Struct_1(773f, 84646u, vec4<f32>(-796f, 405f, -219f, -3014f), vec4<u32>(0u, 4294967295u, 81155u, 26752u)), Struct_1(424f, 94896u, vec4<f32>(728f, -889f, -1000f, -1229f), vec4<u32>(6224u, 4294967295u, 8375u, 4020u)), Struct_1(1593f, 5610u, vec4<f32>(269f, -325f, -993f, 178f), vec4<u32>(22638u, 26693u, 1u, 10958u)), Struct_1(-1308f, 0u, vec4<f32>(1458f, 178f, -2340f, -230f), vec4<u32>(20368u, 4294967295u, 1u, 1u)), Struct_1(-1401f, 99566u, vec4<f32>(329f, -1000f, -2493f, -892f), vec4<u32>(0u, 17602u, 0u, 4294967295u)), Struct_1(-291f, 0u, vec4<f32>(189f, 528f, 118f, 306f), vec4<u32>(4294967295u, 63857u, 1u, 4294967295u)), Struct_1(-2846f, 1u, vec4<f32>(161f, -450f, 983f, -1194f), vec4<u32>(4294967295u, 45414u, 4428u, 1u)), Struct_1(-1648f, 0u, vec4<f32>(1167f, -1680f, 1024f, 911f), vec4<u32>(0u, 29840u, 0u, 36049u)), Struct_1(760f, 1u, vec4<f32>(425f, 328f, -1336f, 1256f), vec4<u32>(86056u, 1u, 37993u, 29569u)), Struct_1(-1110f, 100222u, vec4<f32>(-228f, 791f, -933f, 1000f), vec4<u32>(45602u, 3745u, 4294967295u, 55087u)), Struct_1(-393f, 6210u, vec4<f32>(1186f, -178f, -626f, -819f), vec4<u32>(1u, 1u, 1u, 0u)), Struct_1(1249f, 53587u, vec4<f32>(-1000f, 1437f, 587f, -1119f), vec4<u32>(4294967295u, 0u, 16573u, 25204u)), Struct_1(337f, 25371u, vec4<f32>(-1399f, -858f, -776f, -1522f), vec4<u32>(1u, 0u, 1u, 0u)), Struct_1(1240f, 0u, vec4<f32>(-2735f, 543f, 1962f, -1000f), vec4<u32>(58476u, 0u, 0u, 4294967295u)));

var<private> global2: vec2<u32>;

var<private> global3: i32 = -3159i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> vec3<i32> {
    global0 = array<i32, 12>();
    var var_0 = !any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, true)), vec3<bool>(any(vec3<bool>(true, true, true)), true, true), select(u_input.e.x > u_input.e.x, false, false)));
    var_0 = (_wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(-global0[_wgslsmith_index_u32(0u, 12u)], ~global0[_wgslsmith_index_u32(0u, 12u)])) | 0i) >= u_input.e.x;
    global1 = array<Struct_1, 19>();
    var_0 = true;
    return u_input.e.wwz;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: bool) -> i32 {
    global1 = array<Struct_1, 19>();
    let var_0 = Struct_1(855f, abs(~38500u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1406f, _wgslsmith_f_op_f32(select(741f, 1907f, true)), _wgslsmith_f_op_f32(-302f * 576f), _wgslsmith_f_op_f32(max(1088f, -180f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -687f), -1000f, _wgslsmith_f_op_f32(abs(-761f)), _wgslsmith_f_op_f32(-509f + -827f))))), u_input.c);
    var var_1 = vec2<bool>(false, true);
    var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(~0i, global0[_wgslsmith_index_u32(~firstTrailingBit(global2.x), 12u)], arg_1) >> (u_input.c.zxy % vec3<u32>(32u)), ~_wgslsmith_div_vec3_i32(func_3(var_0.d.xyz ^ u_input.c.zww, global2.x), ~vec3<i32>(arg_1, global0[_wgslsmith_index_u32(16987u, 12u)], arg_1)));
    return var_2.x;
}

fn func_1() -> i32 {
    let var_0 = 0i | -_wgslsmith_sub_i32(func_2(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)], u_input.e.x, 24861i)), true), -29060i);
    var var_1 = any(vec3<bool>(any(vec3<bool>(true, global2.x > 0u, true)), u_input.e.x < _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(4294967295u, 12u)], -89779i), all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), true))));
    global2 = ~u_input.c.ww;
    var var_2 = any(!vec2<bool>(true, all(vec3<bool>(false, true, true)) & any(vec3<bool>(false, false, false))));
    global2 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global2.x, global2.x, 127965u), vec3<u32>(global2.x, u_input.d, global2.x) | vec3<u32>(global2.x, 4294967295u, 32898u), ~u_input.c.xwz), vec3<u32>(~u_input.d, ~32177u, ~1u)), 67577u);
    return -36832i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 19>();
    global0 = array<i32, 12>();
    var var_0 = ~countOneBits(vec2<u32>(0u, global2.x));
    var_0 = firstTrailingBit(u_input.c.yx);
    var var_1 = !(~global0[_wgslsmith_index_u32(reverseBits(global2.x | 4294967295u), 12u)] >= _wgslsmith_mod_i32(_wgslsmith_add_i32(28387i, global0[_wgslsmith_index_u32(var_0.x, 12u)]) ^ func_1(), u_input.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x, ~_wgslsmith_mod_vec2_u32(~(~vec2<u32>(80926u, 38674u)), u_input.c.yx), -global0[_wgslsmith_index_u32(21041u, 12u)], firstTrailingBit(~vec3<u32>(1u, 1u, 3361u)) << (vec3<u32>(abs(_wgslsmith_dot_vec2_u32(u_input.c.zw, vec2<u32>(71455u, var_0.x))), _wgslsmith_sub_u32(select(0u, 0u, true), global2.x), min(var_0.x, ~4294967295u)) % vec3<u32>(32u)));
}

