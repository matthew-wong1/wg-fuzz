struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: u32,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<i32>(-1i, 10862i, 26381i, 85935i), vec3<bool>(true, false, true), Struct_1(vec2<bool>(true, false)), -542f);

var<private> global1: vec4<i32> = vec4<i32>(1i, 0i, 7955i, -29667i);

var<private> global2: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-235f, -1221f), vec2<f32>(-251f, -140f), vec2<f32>(1150f, -1005f), vec2<f32>(-1000f, -761f), vec2<f32>(-1631f, 2021f), vec2<f32>(-1794f, -955f), vec2<f32>(-632f, 1725f), vec2<f32>(-1500f, -1013f), vec2<f32>(-582f, 1224f), vec2<f32>(-421f, 145f), vec2<f32>(535f, -425f), vec2<f32>(1570f, -928f), vec2<f32>(-581f, 1695f), vec2<f32>(-586f, 678f), vec2<f32>(-690f, 299f), vec2<f32>(-646f, -100f), vec2<f32>(-651f, 1097f), vec2<f32>(311f, 675f), vec2<f32>(-891f, -213f), vec2<f32>(-515f, -2508f), vec2<f32>(358f, 189f), vec2<f32>(136f, 1932f), vec2<f32>(-151f, 1010f), vec2<f32>(1635f, -364f), vec2<f32>(273f, 1653f), vec2<f32>(-218f, -1551f), vec2<f32>(615f, -1269f), vec2<f32>(715f, 774f));

var<private> global3: array<bool, 27>;

var<private> global4: vec4<i32> = vec4<i32>(2147483647i, 1i, 76869i, 2147483647i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(32009i, 26540i ^ global4.x), ~0i, countOneBits(-2147483647i) | _wgslsmith_clamp_i32(13631i, 0i, -60440i), global1.x), global0.a), vec3<bool>(false, arg_0.d, arg_0.d), Struct_1(arg_1.xy), -341f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1358f * arg_2.x)))));
    let var_2 = Struct_2(Struct_1(!select(!global0.b.xz, arg_1.yy, global0.c.a.x)), reverseBits(19486u), global0.c);
    let var_3 = Struct_1(vec2<bool>(select(var_2.c.a.x, !(var_0.d > var_1), all(!global0.b.yx)), -38626i <= arg_0.a));
    global4 = -vec4<i32>(~min(_wgslsmith_mult_i32(0i, global4.x), global4.x), 1i, firstTrailingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, arg_0.a, global1.x), global4.wzz)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(72889i, -var_0.a.x), i32(-1i) * -var_0.a.x));
    return 419f;
}

fn func_2(arg_0: bool) -> f32 {
    global0 = Struct_3((vec4<i32>(-1i) * -global0.a) & vec4<i32>(-firstTrailingBit(-1i), 2147483647i, -_wgslsmith_div_i32(u_input.c, global1.x), u_input.b), select(vec3<bool>(true, true, true), vec3<bool>(false, false, arg_0), true), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(u_input.b, u_input.a.x, u_input.a.x, global3[_wgslsmith_index_u32(14149u, 27u)], global1.xwz), !vec3<bool>(arg_0, false, arg_0), vec3<f32>(global0.d, -515f, global0.d)))) + global0.d));
    var var_0 = ~_wgslsmith_add_i32(_wgslsmith_div_i32(global1.x, ~0i), global0.a.x << (_wgslsmith_mult_u32(0u, ~4249u) % 32u));
    global4 = _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, firstTrailingBit(i32(-1i) * -2147483647i), -39306i, -1i), vec4<i32>(0i, global1.x, -2147483647i, ~firstTrailingBit(24204i))) | global0.a;
    global4 = vec4<i32>(27064i, select(u_input.b, -1i, false), min(~(abs(global1.x) | 0i), ~firstLeadingBit(-2147483647i)), ~global4.x ^ _wgslsmith_mod_i32(0i, -2147483647i));
    var var_1 = 25089i;
    return _wgslsmith_f_op_f32(1508f - _wgslsmith_f_op_f32(abs(1262f)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> f32 {
    let var_0 = -select(83172i, _wgslsmith_mod_i32(-(i32(-1i) * -12638i), -3541i), ~(~arg_1) >= (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 18209u, u_input.a.x), vec3<u32>(arg_1, arg_1, u_input.a.x)) << (~1u % 32u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * -2046f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -184f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_2.d) * -1777f)) + _wgslsmith_f_op_f32(func_2(true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), -1110f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.d * _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(1000f - global0.d), u_input.a.x, Struct_3(global0.a, vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 27u)], false, global3[_wgslsmith_index_u32(14680u, 27u)]), Struct_1(vec2<bool>(global0.b.x, true)), global0.d)))))), _wgslsmith_f_op_f32(global0.d + -783f));
    let var_1 = ~_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 78585u)), _wgslsmith_div_vec4_u32(vec4<u32>(64814u, u_input.a.x, u_input.a.x, 1u), ~vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x))) > (u_input.a.x & u_input.a.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(359f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(1231f, global0.d)))))));
    let var_3 = Struct_1(global0.b.xy);
    var var_4 = countOneBits(global1.zww);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 39183u), vec3<u32>(u_input.a.x, u_input.a.x, 1u) >> (vec3<u32>(u_input.a.x, u_input.a.x, 1u) % vec3<u32>(32u)))), -global0.a, u_input.a.x);
}

