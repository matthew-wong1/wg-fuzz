struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
    c: u32,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(977f, 1326f, -1232f, 793f, -1363f, 1392f, -1000f, 865f, 579f);

var<private> global1: array<vec4<i32>, 23>;

var<private> global2: array<bool, 4> = array<bool, 4>(true, true, true, true);

var<private> global3: vec3<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<f32>) -> u32 {
    var var_0 = ~(~u_input.a.x);
    global1 = array<vec4<i32>, 23>();
    let var_1 = !arg_1.xz;
    var var_2 = vec2<bool>(!global2[_wgslsmith_index_u32(1u, 4u)], false);
    global2 = array<bool, 4>();
    return 1u;
}

fn func_3(arg_0: u32, arg_1: bool) -> f32 {
    global3 = vec3<bool>(true, select(all(!vec3<bool>(global3.x, false, global2[_wgslsmith_index_u32(4294967295u, 4u)])) & false, all(select(global3.yz, global3.yz, arg_1)) || true, all(select(vec2<bool>(true, true), select(vec2<bool>(global3.x, true), global3.yy, true), !arg_1))), true);
    global1 = array<vec4<i32>, 23>();
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0 >> ((29977u >> (arg_0 % 32u)) % 32u), ~arg_0, _wgslsmith_div_u32(arg_0, ~arg_0), 100240u), min(vec4<u32>(arg_0, 51319u, arg_0, arg_0) & vec4<u32>(arg_0, 21469u, 4081u, arg_0), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_0, 4294967295u, 0u), vec4<u32>(0u, arg_0, arg_0, 0u))) & (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, 31049u), vec4<u32>(arg_0, arg_0, 20778u, 43136u)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(10249u, 6212u, 1u, 9753u), vec4<u32>(4294967295u, arg_0, 1u, arg_0), vec4<u32>(1u, arg_0, arg_0, arg_0)))) ^ vec4<u32>(~_wgslsmith_sub_u32(arg_0, ~12470u), 0u, arg_0, arg_0);
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-593f, _wgslsmith_f_op_f32(-1783f + global0[_wgslsmith_index_u32(var_0.x, 9u)]))))));
    var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 345f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1128f, global0[_wgslsmith_index_u32(var_0.x, 9u)]))), !arg_1))))));
    return global0[_wgslsmith_index_u32(min(arg_0, arg_0), 9u)];
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> bool {
    let var_0 = !(!vec4<bool>(any(vec3<bool>(true, true, false)), global2[_wgslsmith_index_u32(func_2(~u_input.a.x, vec3<bool>(global3.x, global2[_wgslsmith_index_u32(arg_0.x, 4u)], global3.x), _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_0.x, 9u)], 1004f, global0[_wgslsmith_index_u32(arg_0.x, 9u)], 654f), vec4<f32>(1121f, global0[_wgslsmith_index_u32(arg_0.x, 9u)], -626f, global0[_wgslsmith_index_u32(29653u, 9u)]))), 4u)], true, -arg_1 <= ~arg_1));
    global1 = array<vec4<i32>, 23>();
    let var_1 = Struct_4(~27554u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(5600u, false)) * _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(var_1.a, 9u)]))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(arg_0.x, 9u)]) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 9u)])))) - -565f);
    var var_3 = 16041u;
    return var_0.x;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_4) -> Struct_2 {
    var var_0 = arg_1;
    var var_1 = vec4<u32>(0u, 1u, ~(~(arg_2.a << (arg_2.a % 32u)) | _wgslsmith_sub_u32(arg_2.a, ~1u)), reverseBits(min(arg_2.a, arg_2.a)));
    var var_2 = arg_2;
    global0 = array<f32, 9>();
    return Struct_2(~var_1.zxy, _wgslsmith_dot_vec4_u32(vec4<u32>(~(~var_1.x), 64713u, var_2.a, 45267u), vec4<u32>(func_2(u_input.a.x, select(vec3<bool>(true, global3.x, global2[_wgslsmith_index_u32(arg_2.a, 4u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 4u)], global3.x, global2[_wgslsmith_index_u32(28990u, 4u)]), vec3<bool>(arg_0, global2[_wgslsmith_index_u32(4294967295u, 4u)], arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-798f, 826f, 210f, -1345f) * vec4<f32>(global0[_wgslsmith_index_u32(19737u, 9u)], 1209f, global0[_wgslsmith_index_u32(var_2.a, 9u)], -1000f))), arg_2.a, ~88395u, 1u)));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>) -> vec3<i32> {
    let var_0 = Struct_4(111782u);
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(func_3(1u, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.a, 9u)] + global0[_wgslsmith_index_u32(0u, 9u)]))))));
    global1 = array<vec4<i32>, 23>();
    var var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_mod_u32(min(36369u, 1u), abs(1u)), ~4294967295u), max(vec2<u32>(arg_0.b, func_4(global2[_wgslsmith_index_u32(var_0.a, 4u)] | global3.x, u_input.a.x, Struct_4(var_0.a)).a.x), vec2<u32>(_wgslsmith_div_u32(14046u, ~50186u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 60829u), arg_0.a.zz), ~vec2<u32>(var_0.a, 4294967295u)))));
    let var_3 = Struct_5(~arg_0.a.xy, Struct_4(_wgslsmith_sub_u32(58167u, 1u)), func_2(u_input.a.x, vec3<bool>(!func_1(vec4<u32>(70743u, var_2.x, 0u, 0u), u_input.a.x), all(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(0u, 4u)])), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_0.a, 9u)], -1000f, var_1.x, 769f) * vec4<f32>(858f, -1545f, arg_1.x, 1242f)), vec4<f32>(var_1.x, -1000f, 391f, global0[_wgslsmith_index_u32(arg_0.b, 9u)]))) + _wgslsmith_f_op_vec4_f32(-arg_1))), Struct_3(firstTrailingBit(arg_0.a)), arg_0);
    return _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(reverseBits(1i), ~u_input.a.x), ~(-49484i), i32(-1i) * -2147483647i), vec3<i32>((i32(-1i) * -78888i) & ~(~u_input.a.x), -max(u_input.a.x, -41304i) | _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(var_0.a, 23u)]), global1[_wgslsmith_index_u32(1u, 23u)]), abs(u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(vec4<u32>(1u, 1u, 1u, 1u), countOneBits(select(u_input.a.x, u_input.a.x, true))), -14132i, Struct_4(1u)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1029f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(852f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1090f, -1315f), _wgslsmith_f_op_f32(f32(-1f) * -990f), true)), _wgslsmith_f_op_f32(func_3(countOneBits(41832u), true))))));
    var var_1 = vec2<bool>(true & global3.x, true);
    let var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(select(~1u, ~33455u, true), countOneBits(firstLeadingBit(52769u)), _wgslsmith_mod_u32(func_4(global2[_wgslsmith_index_u32(30849u, 4u)], u_input.a.x, Struct_4(5733u)).b, ~73776u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 11515u, 0u, 42234u), vec4<u32>(0u, 293u, 0u, 5396u)) << (~81014u % 32u))) != 26239u;
    var var_3 = Struct_1(18481u, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~1u, 9u)])), select(func_5(Struct_2(vec3<u32>(19945u, 0u, 4294967295u), abs(4294967295u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1046f, global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(48385u, 9u)]))))), select(~(var_0 << (vec3<u32>(27601u, 1u, 62149u) % vec3<u32>(32u))), -vec3<i32>(var_0.x, -2147483647i, u_input.a.x), global3.x), any(!select(vec3<bool>(global3.x, false, false), vec3<bool>(false, var_2, global2[_wgslsmith_index_u32(1u, 4u)]), vec3<bool>(var_1.x, true, var_1.x)))), ~u_input.a, vec4<bool>(true, true, all(select(global3.yz, !vec2<bool>(global2[_wgslsmith_index_u32(1u, 4u)], var_1.x), true)), global2[_wgslsmith_index_u32(abs(43096u), 4u)]));
    let var_4 = ~vec2<u32>(29414u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(72840u, var_3.a, 36184u))));
    var var_5 = !var_3.e.xyz;
    var var_6 = ~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(max(var_4.x, 0u), abs(var_3.a), firstLeadingBit(var_4.x)), ~(~vec3<u32>(var_3.a, var_3.a, var_3.a)), abs(_wgslsmith_div_vec3_u32(vec3<u32>(53262u, 61979u, var_4.x), vec3<u32>(4294967295u, var_4.x, var_4.x)))));
    var_1 = vec2<bool>(global3.x, all(!vec2<bool>(var_2, global3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(27640u, 9u)], _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(498f, -1335f, global0[_wgslsmith_index_u32(var_4.x, 9u)]), vec3<f32>(var_3.b, 987f, -1576f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2436f, 762f, 711f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 9u)], 242f, -269f) + vec3<f32>(106f, global0[_wgslsmith_index_u32(52057u, 9u)], var_3.b)), vec3<f32>(var_3.b, -1281f, global0[_wgslsmith_index_u32(0u, 9u)])))))));
}

