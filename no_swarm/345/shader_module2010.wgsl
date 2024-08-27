struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<vec2<f32>, 15>;

var<private> global3: array<u32, 7>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = -(vec4<i32>(-1i) * -(~vec4<i32>(arg_0.x, -2147483647i, -2147483647i, u_input.a.x)));
    global2 = array<vec2<f32>, 15>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_3.a, arg_2.a), 10u)];
    var var_1 = vec2<i32>(_wgslsmith_mod_i32(~arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, u_input.a.x, -2147483647i, 18083i) & u_input.b, vec4<i32>(u_input.b.x, arg_1.x | 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-17090i, arg_1.x, u_input.a.x), arg_1.yyz), _wgslsmith_add_i32(global0.x, arg_0.x)))), 1i);
    global0 = -_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.b.x << (arg_2.a % 32u), _wgslsmith_mod_i32(-5051i, arg_1.x), 1i, ~15917i)), ~vec4<i32>(_wgslsmith_div_i32(arg_1.x, arg_0.x), 58589i, ~1i, ~(-57511i)));
    return _wgslsmith_clamp_u32(4294967295u, 64350u, 12132u);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec3<u32>) -> u32 {
    global3 = array<u32, 7>();
    var var_0 = Struct_1(~abs(~arg_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1639f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2232f, -1000f))), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))))), 1472f, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(400f + 731f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-389f + -576f) + _wgslsmith_f_op_f32(1252f + 631f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1665f)), vec4<f32>(-615f, 2285f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(679f + 1908f)), _wgslsmith_f_op_f32(-1f))), firstTrailingBit(arg_1.yx));
    global1 = array<Struct_1, 10>();
    let var_1 = _wgslsmith_f_op_vec3_f32(var_0.d.wzy + var_0.d.xxx);
    var var_2 = arg_1;
    return var_2.x;
}

fn func_2(arg_0: vec3<u32>) -> bool {
    global0 = u_input.b;
    global2 = array<vec2<f32>, 15>();
    let var_0 = true;
    global2 = array<vec2<f32>, 15>();
    let var_1 = vec3<u32>(u_input.c.x, 130562u, func_4(vec2<u32>(46987u >> (arg_0.x % 32u), func_3(vec2<i32>(2147483647i, -4201i), u_input.b, global1[_wgslsmith_index_u32(arg_0.x, 10u)], Struct_1(57332u, -399f, -852f, vec4<f32>(161f, 426f, 305f, 673f), arg_0.zx))), _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(20026u, 43543u, u_input.c.x, global3[_wgslsmith_index_u32(u_input.c.x, 7u)])), vec3<u32>(1u, 41950u, ~u_input.c.x))) ^ firstTrailingBit(vec3<u32>(1u, _wgslsmith_mult_u32(54930u, _wgslsmith_mult_u32(u_input.c.x, arg_0.x)), ~abs(arg_0.x)));
    return true;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: i32) -> u32 {
    let var_0 = -1000f;
    let var_1 = vec2<bool>((true && (true & func_2(u_input.c.wzw))) || func_2(~(~vec3<u32>(12010u, global3[_wgslsmith_index_u32(u_input.c.x, 7u)], u_input.c.x))), func_2(~abs(u_input.c.zxx) >> (firstLeadingBit(vec3<u32>(33590u, global3[_wgslsmith_index_u32(4294967295u, 7u)], u_input.c.x) ^ u_input.c.zwy) % vec3<u32>(32u))));
    var var_2 = global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(reverseBits(49215u), 7u)], 7u)], 10u)];
    let var_3 = var_2.d;
    global2 = array<vec2<f32>, 15>();
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(~(-(~select(global0.x, global0.x, false))), 2870i, -1i, _wgslsmith_div_i32(u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(13192i, u_input.b.x & -31475i), _wgslsmith_dot_vec4_i32(-u_input.b, -vec4<i32>(global0.x, global0.x, 1i, 0i)))));
    var var_0 = 16101u;
    let var_1 = Struct_1(1u, 723f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(431f, 548f) - _wgslsmith_f_op_f32(sign(1122f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(517f, -612f, -928f, 1392f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -156f), 1f, _wgslsmith_f_op_f32(1028f + -260f), _wgslsmith_f_op_f32(f32(-1f) * -707f))) + vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -411f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1186f)) + _wgslsmith_f_op_f32(822f * 1416f)), -1049f)), _wgslsmith_clamp_vec2_u32(u_input.c.xy, u_input.c.zy, u_input.c.yz));
    var var_2 = ~var_1.a;
    let var_3 = firstTrailingBit(~_wgslsmith_mod_u32(var_1.a << (~var_1.e.x % 32u), 4294967295u));
    var var_4 = vec2<u32>(firstTrailingBit(1u), func_1(vec2<f32>(_wgslsmith_f_op_f32(-1067f + var_1.b), _wgslsmith_f_op_f32(-1251f - var_1.c)), -809f, 2147483647i));
    var_4 = _wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.c.zy, var_1.e), select(var_1.e << (vec2<u32>(~805u, var_4.x) % vec2<u32>(32u)), ~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c.zx, var_1.e, vec2<u32>(21765u, var_4.x)), countOneBits(vec2<u32>(var_3, 4294967295u))), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))));
    var var_5 = global0.x <= -2147483647i;
    var_2 = ~countOneBits(_wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.wzy, u_input.c.wyw), 7u)], ~9389u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(20917i, -13647i, -42448i), global0.wzx) << ((_wgslsmith_mult_vec3_u32(u_input.c.wwx, vec3<u32>(39621u, u_input.c.x, 45569u)) & (u_input.c.wxz ^ u_input.c.zwz)) % vec3<u32>(32u)), u_input.b.www));
}

