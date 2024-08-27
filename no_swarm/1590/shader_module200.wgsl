struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15>;

var<private> global1: array<bool, 17>;

var<private> global2: array<Struct_2, 13>;

var<private> global3: array<Struct_1, 26>;

var<private> global4: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1381f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(308f - arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -959f) * _wgslsmith_div_f32(arg_0.a.x, 1129f))))));
    let var_1 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1857f - 742f), arg_0.a.x) - -506f) < _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(min(arg_0.a.x, -1000f)))), true);
    global4 = 0u ^ u_input.c.x;
    let var_2 = select(!select(vec3<bool>(!var_1.x, !var_1.x, var_1.x), !select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], global1[_wgslsmith_index_u32(0u, 17u)], false), vec3<bool>(arg_2.a.x, var_1.x, true), vec3<bool>(arg_2.a.x, global1[_wgslsmith_index_u32(23549u, 17u)], var_1.x)), false), !vec3<bool>((7701u << (u_input.b % 32u)) < 27378u, arg_2.a.x, var_1.x), !var_1.x);
    global3 = array<Struct_1, 26>();
    return _wgslsmith_mult_u32(1u, (abs(u_input.a) << (~abs(u_input.b) % 32u)) | u_input.a);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_div_u32(~(~4294967295u), ~_wgslsmith_mult_u32(arg_0, 4294967295u)), arg_0), 26u)];
    let var_1 = firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-min(var_0.b.x, u_input.e.x), firstLeadingBit(reverseBits(var_0.b.x))), i32(-1i) * -30291i, ~(-1i)));
    global3 = array<Struct_1, 26>();
    let var_2 = arg_2.a;
    global1 = array<bool, 17>();
    return min(vec4<u32>(_wgslsmith_mult_u32(firstLeadingBit(arg_0 | 4294967295u), arg_0), select(11724u, select(arg_0, u_input.c.x, var_0.c), arg_1), _wgslsmith_mod_u32(arg_0, firstLeadingBit(u_input.a)), 22209u), u_input.c | ~select(abs(vec4<u32>(4294967295u, arg_0, arg_0, 15512u)), u_input.c, !vec4<bool>(arg_1, false, true, false)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = global3[_wgslsmith_index_u32(~select(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(23047u, u_input.a, 4294967295u, 12921u)), ~u_input.c), reverseBits(u_input.c)), countOneBits(_wgslsmith_clamp_u32(u_input.a, 13828u, u_input.a) | (u_input.b ^ u_input.a)), (_wgslsmith_clamp_i32(13978i, u_input.d.x, arg_0.b.x) & arg_0.b.x) < abs(abs(arg_0.b.x))), 26u)];
    global4 = 4294967295u;
    global1 = array<bool, 17>();
    var var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(func_4(~func_3(Struct_2(vec2<f32>(2109f, 1797f), vec2<i32>(0i, 18556i)), vec2<i32>(7529i, var_0.b.x), global3[_wgslsmith_index_u32(12950u, 26u)]), select(true, true, !arg_0.c), Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-901f, 1924f), vec2<f32>(1000f, 553f))), reverseBits(var_0.b.xz))), vec4<u32>(2610u, _wgslsmith_add_u32(u_input.a, countOneBits(0u)), ~16584u, u_input.b)), u_input.c, ~vec4<u32>(u_input.c.x, ~101781u, 48331u, _wgslsmith_mult_u32(u_input.a, 43670u)) << ((_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 49195u, 0u), u_input.c), u_input.c) << (countOneBits(u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = func_4((_wgslsmith_mult_u32(~u_input.a, u_input.a) | u_input.b) >> (countOneBits(_wgslsmith_add_u32(u_input.c.x & var_1.x, ~u_input.a)) % 32u), all(vec3<bool>(true, false, false)), Struct_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(520f, -581f, global1[_wgslsmith_index_u32(50415u, 17u)])), _wgslsmith_f_op_f32(1005f * 990f)), _wgslsmith_f_op_f32(f32(-1f) * -1115f)), var_0.b.yz & ~vec2<i32>(var_0.b.x, var_0.b.x))).x;
    return ~0i;
}

fn func_1(arg_0: f32) -> vec3<bool> {
    let var_0 = Struct_1(vec2<bool>(true, select(true, global1[_wgslsmith_index_u32(u_input.a, 17u)], true)), _wgslsmith_sub_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(u_input.e.yyy, u_input.e.xxz) << (u_input.c.wxy % vec3<u32>(32u))), u_input.e.wxz), global1[_wgslsmith_index_u32(u_input.c.x, 17u)]);
    let var_1 = ~(i32(-1i) * -2147483647i);
    var var_2 = u_input.e.zxx;
    let var_3 = Struct_1(!select(vec2<bool>(!var_0.c, var_0.a.x), !var_0.a, var_0.a), vec3<i32>(func_2(var_0), var_1, 2147483647i), false);
    global4 = u_input.c.x;
    return vec3<bool>(!global1[_wgslsmith_index_u32(23466u, 17u)], true, var_3.a.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<bool>) -> Struct_2 {
    global0 = array<vec4<f32>, 15>();
    global1 = array<bool, 17>();
    var var_0 = min(min(35142u, 0u), ~_wgslsmith_add_u32(~u_input.c.x, func_4(u_input.a, true, Struct_2(vec2<f32>(-101f, 2417f), u_input.d)).x));
    var_0 = ~_wgslsmith_mult_u32(~(~u_input.a) ^ max(u_input.a, ~u_input.a), u_input.a);
    global0 = array<vec4<f32>, 15>();
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-1f), 521f), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 15>();
    global0 = array<vec4<f32>, 15>();
    var var_0 = u_input.a;
    let var_1 = abs(~1u);
    let var_2 = func_5(!select(!vec3<bool>(true, global1[_wgslsmith_index_u32(9087u, 17u)], global1[_wgslsmith_index_u32(var_1, 17u)]), func_1(_wgslsmith_f_op_f32(334f * 1000f)), vec3<bool>(global1[_wgslsmith_index_u32(max(u_input.a, 43033u), 17u)], !global1[_wgslsmith_index_u32(4294967295u, 17u)], false)), select(select(!vec3<bool>(global1[_wgslsmith_index_u32(56689u, 17u)], true, global1[_wgslsmith_index_u32(0u, 17u)]), !select(vec3<bool>(global1[_wgslsmith_index_u32(var_1, 17u)], global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(1u, 17u)]), vec3<bool>(global1[_wgslsmith_index_u32(var_1, 17u)], global1[_wgslsmith_index_u32(var_1, 17u)], true), global1[_wgslsmith_index_u32(4294967295u, 17u)]), !(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 17u)], false, global1[_wgslsmith_index_u32(u_input.b, 17u)]))), vec3<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(u_input.b, 17u)], true, false)), global1[_wgslsmith_index_u32(74493u, 17u)], true), !select(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)]), select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(105894u, 17u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(49034u, 17u)], false), vec3<bool>(global1[_wgslsmith_index_u32(0u, 17u)], false, false)), vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(60905u, 17u)]))));
    var var_3 = select(vec4<bool>(true, global1[_wgslsmith_index_u32(var_1, 17u)], any(!vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 17u)])), global1[_wgslsmith_index_u32(3547u, 17u)]), select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(~var_1, 17u)], true, true), select(!vec4<bool>(false, global1[_wgslsmith_index_u32(65874u, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)], true), vec4<bool>(global1[_wgslsmith_index_u32(var_1, 17u)], true, global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(var_1, 17u)]), select(true, global1[_wgslsmith_index_u32(4294967295u, 17u)], true)), func_1(_wgslsmith_f_op_f32(var_2.a.x + var_2.a.x)).x), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.a, 17u)]), -1010f != var_2.a.x), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 17u)], true, global1[_wgslsmith_index_u32(var_1, 17u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(43598u, 17u)], true, true))), !global1[_wgslsmith_index_u32(4294967295u, 17u)]), !select(vec4<bool>(global1[_wgslsmith_index_u32(47562u, 17u)] != global1[_wgslsmith_index_u32(22091u, 17u)], true, true, false), vec4<bool>(func_1(var_2.a.x).x, global1[_wgslsmith_index_u32(1u, 17u)], true, true), select(select(vec4<bool>(global1[_wgslsmith_index_u32(98158u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)], true, false), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(40824u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)])), !vec4<bool>(global1[_wgslsmith_index_u32(var_1, 17u)], true, global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)]), true)));
    let x = u_input.a;
    s_output = StorageBuffer(select(~var_2.b, vec2<i32>(_wgslsmith_sub_i32(var_2.b.x, u_input.e.x), var_2.b.x & u_input.e.x) ^ max(countOneBits(var_2.b), _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.b.x, -5604i), u_input.e.yy)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-387f))), 2405f, ~(~_wgslsmith_mod_u32(~u_input.b, ~var_1)), firstTrailingBit(~(~var_1)));
}

