struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(true, vec4<f32>(-1238f, -617f, 981f, 383f)), Struct_3(false, vec4<f32>(-123f, -625f, 1379f, -1265f)), Struct_3(true, vec4<f32>(548f, 329f, 590f, -109f)), Struct_3(true, vec4<f32>(2523f, -127f, -722f, 2853f)), Struct_3(false, vec4<f32>(-932f, -1122f, 2034f, -504f)), Struct_3(false, vec4<f32>(376f, -460f, 1449f, -754f)), Struct_3(true, vec4<f32>(795f, 870f, 456f, -1001f)), Struct_3(true, vec4<f32>(-1032f, 1065f, 572f, 1720f)), Struct_3(true, vec4<f32>(-106f, -946f, -410f, 746f)), Struct_3(true, vec4<f32>(882f, -1890f, -1453f, -1832f)), Struct_3(false, vec4<f32>(-822f, -262f, 170f, 529f)), Struct_3(false, vec4<f32>(-1003f, -1204f, 648f, 879f)), Struct_3(false, vec4<f32>(-1000f, 559f, 1488f, 300f)), Struct_3(true, vec4<f32>(2012f, 237f, -393f, 120f)), Struct_3(true, vec4<f32>(-1098f, 1925f, 826f, 2284f)), Struct_3(false, vec4<f32>(-880f, -1263f, 858f, -889f)), Struct_3(true, vec4<f32>(1367f, 289f, -870f, 867f)), Struct_3(true, vec4<f32>(-1149f, -549f, 819f, -567f)), Struct_3(false, vec4<f32>(968f, 1743f, -1251f, -574f)), Struct_3(true, vec4<f32>(-1810f, -355f, 757f, -800f)), Struct_3(true, vec4<f32>(-599f, 496f, 1000f, 870f)), Struct_3(true, vec4<f32>(286f, -448f, -352f, 1547f)));

var<private> global3: Struct_1;

var<private> global4: array<vec4<bool>, 10>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    var var_0 = true;
    let var_1 = global1.x;
    global1 = vec3<bool>(arg_0.a, true, arg_0.a);
    var_0 = abs(_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(1u, 1u)), global3.b.zw)) != ~countOneBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 71697u), vec2<u32>(4294967295u, 0u)), ~0u));
    global0 = array<f32, 8>();
    return 2147483647i <= ~_wgslsmith_div_i32(2147483647i, global3.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<u32> {
    let var_0 = -407f;
    var var_1 = Struct_3(func_3(global2[_wgslsmith_index_u32(min(u_input.a, global3.b.x) & min(select(14405u, global3.b.x, global1.x), u_input.a), 22u)], vec3<i32>(arg_0.a.x, arg_2.a.x, -(i32(-1i) * -1i)), Struct_2(_wgslsmith_mult_u32(42862u, 2112u), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, 629f))), 1u | u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(17656u, 8u)], 239f, global0[_wgslsmith_index_u32(46904u, 8u)], arg_1))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-891f, _wgslsmith_f_op_f32(f32(-1f) * -1706f), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(75435u, 8u)], -1000f)), -239f) * vec4<f32>(_wgslsmith_f_op_f32(-1000f + arg_1), _wgslsmith_f_op_f32(round(673f)), _wgslsmith_f_op_f32(-var_0), var_0))));
    var var_2 = arg_2.a.x;
    global4 = array<vec4<bool>, 10>();
    var var_3 = 0u;
    return ~vec4<u32>(arg_3.x, _wgslsmith_mult_u32(reverseBits(~arg_3.x), global3.b.x), _wgslsmith_clamp_u32(1u, 7420u, _wgslsmith_add_u32(~0u, ~global3.b.x)), 0u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> vec2<f32> {
    var var_0 = Struct_1(global3.a ^ global3.a, func_2(Struct_1(~firstTrailingBit(arg_1.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global3.b.x, u_input.a, arg_0.b.x) | global3.b, vec4<u32>(arg_1.b.x, 37286u, 53601u, 21453u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 8u)] * 601f) * _wgslsmith_f_op_f32(arg_3.x + -1633f)) * 225f), Struct_1(countOneBits(abs(vec2<i32>(1i, -2147483647i))), _wgslsmith_clamp_vec4_u32(~arg_0.b, _wgslsmith_mult_vec4_u32(arg_0.b, arg_0.b), global3.b)), arg_0.b));
    var var_1 = Struct_3(all(!select(select(vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, arg_2, false), vec3<bool>(false, true, arg_2)), vec3<bool>(global1.x, global1.x, false), true && arg_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 611f, arg_3.x, 866f)), vec4<f32>(global0[_wgslsmith_index_u32(1u, 8u)], 862f, global0[_wgslsmith_index_u32(arg_1.b.x, 8u)], 2439f), vec4<bool>(true, false, true, true)))))));
    let var_2 = ~(~_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(-1i, 3353i, arg_1.a.x, var_0.a.x) >> (vec4<u32>(arg_0.b.x, global3.b.x, 20843u, 1u) % vec4<u32>(32u))), ~abs(vec4<i32>(2147483647i, -2147483647i, arg_1.a.x, 2147483647i))));
    let var_3 = min(~vec4<u32>(~arg_1.b.x, 0u, global3.b.x, abs(33881u)), ~max(vec4<u32>(4294967295u, 1u, global3.b.x, var_0.b.x) | global3.b, vec4<u32>(667u, 14713u, 4294967295u, 101249u))) ^ _wgslsmith_mult_vec4_u32(firstTrailingBit(~vec4<u32>(arg_0.b.x, 0u, global3.b.x, 34720u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.b.x, arg_0.b.x, 82939u), vec4<u32>(global3.b.x, 4294967295u, arg_0.b.x, global3.b.x)));
    let var_4 = Struct_3(arg_2 || (_wgslsmith_clamp_u32(~0u, ~u_input.a, arg_1.b.x) >= ~4294967295u), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), 402f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u ^ ~u_input.a, 8u)] + global0[_wgslsmith_index_u32(~var_0.b.x ^ 0u, 8u)]), -327f));
    return arg_3.wz;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<bool>, 10>();
    global4 = array<vec4<bool>, 10>();
    let var_0 = ~55116i;
    global4 = array<vec4<bool>, 10>();
    global0 = array<f32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)])), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(global3.a, global3.b), Struct_1(global3.a, vec4<u32>(12887u, global3.b.x, 13283u, 64488u)), global1.x, vec4<f32>(-507f, -650f, -1810f, -331f)))))))), _wgslsmith_f_op_f32(-855f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 8u)] + -612f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 8u)] + 1352f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1218f - 206f)) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 8u)] + _wgslsmith_f_op_f32(115f + -382f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-652f * global0[_wgslsmith_index_u32(69175u, 8u)]) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 8u)])) + global0[_wgslsmith_index_u32(global3.b.x, 8u)])), -vec3<i32>(~(-46027i), -1i, var_0));
}

