struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(403f, 371f, -613f, 137f), vec4<f32>(-1254f, 180f, -1502f, -2096f), vec4<f32>(-1315f, 1000f, -1000f, 1811f), vec4<f32>(1000f, -918f, -1000f, -1641f), vec4<f32>(1194f, 118f, -124f, 674f), vec4<f32>(737f, -1171f, 116f, 1036f), vec4<f32>(-210f, 761f, 1209f, -1203f), vec4<f32>(863f, -996f, -1066f, -440f), vec4<f32>(3224f, 491f, 1000f, 722f), vec4<f32>(-870f, 314f, 240f, -787f), vec4<f32>(356f, 109f, -230f, -187f), vec4<f32>(400f, 1119f, 288f, -1809f), vec4<f32>(-1271f, 727f, 658f, 2271f));

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_2, 16>;

var<private> global3: Struct_2;

var<private> global4: f32 = -933f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> f32 {
    global0 = array<vec4<f32>, 13>();
    var var_0 = Struct_1(~select(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(10743u, 0u), vec2<u32>(u_input.c, global1.x))), firstTrailingBit(vec2<u32>(global1.x, 3125u)) ^ select(vec2<u32>(0u, u_input.c), vec2<u32>(global1.x, u_input.c), true), true));
    var var_1 = u_input.b.x;
    var_1 = -2147483647i;
    let var_2 = 216f;
    return -1059f;
}

fn func_1() -> vec3<f32> {
    global1 = ~(~vec2<u32>(4294967295u | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1.x), vec2<u32>(global1.x, u_input.c)), _wgslsmith_dot_vec2_u32(~vec2<u32>(48536u, 69502u), countOneBits(vec2<u32>(1u, 1u)))));
    var var_0 = -38919i;
    global0 = array<vec4<f32>, 13>();
    let var_1 = 19032u;
    global0 = array<vec4<f32>, 13>();
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1404f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f)) * 425f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(19175u, 13u)] * vec4<f32>(1f, 1f, 1f, 1f)), Struct_2(!vec3<bool>(false, global3.b.x, true), vec4<bool>(true, true, true, true), global3.c))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32, arg_3: vec4<i32>) -> vec3<bool> {
    global1 = ~vec2<u32>(min(reverseBits(1u), min(4294967295u, 32953u)), reverseBits(2267u)) & ~(~abs(vec2<u32>(global1.x, 48576u)) & ~(~vec2<u32>(global1.x, 44619u)));
    var var_0 = reverseBits(arg_3);
    var var_1 = select(select(!select(!arg_1.b, select(global3.b, vec4<bool>(true, arg_1.b.x, false, true), arg_1.b), false), vec4<bool>(true, !(true & global3.b.x), true, global3.b.x), select(!select(global3.b, vec4<bool>(arg_1.b.x, true, false, false), global3.a.x), !select(arg_1.b, arg_1.b, false), true)), arg_1.b, vec4<bool>(true, false, global3.a.x, true));
    global0 = array<vec4<f32>, 13>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(min(select(global1.x, 4294967295u, true), global1.x), 13u)])) - vec4<f32>(arg_0.x, 1268f, arg_0.x, arg_0.x));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~0u, 16u)];
    global2 = array<Struct_2, 16>();
    let var_1 = firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(4294967295u, ~(~7020u)), 4294967295u, u_input.c));
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.c & 69524u, _wgslsmith_mult_u32(32086u, ~u_input.c) | ~(~global1.x)), var_1.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_1()))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, 657f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(130f, -292f, -1000f) - vec3<f32>(1328f, 518f, -467f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1069f, -248f, 224f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1229f, 1388f, -1000f))), vec3<f32>(_wgslsmith_f_op_f32(1270f + -851f), -174f, _wgslsmith_f_op_f32(sign(961f)))))));
    global4 = -1532f;
    var var_4 = func_3(vec3<f32>(_wgslsmith_f_op_f32(197f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + -830f))), _wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-384f - _wgslsmith_div_f32(var_3.x, var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(select(487f, var_3.x, false)))))), Struct_2(select(var_0.a, var_0.b.zww, !vec3<bool>(true, global3.a.x, true)), !var_0.b, -1i), -24340i, _wgslsmith_sub_vec4_i32(u_input.b, u_input.b ^ _wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(34244i, -40594i, u_input.a, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-114i, ~(-52572i), _wgslsmith_dot_vec4_i32(min(_wgslsmith_div_vec4_i32(vec4<i32>(-116973i, 59272i, -1i, -2147483647i), vec4<i32>(var_0.c, -35658i, 18934i, -66015i)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, global3.c, var_0.c, 2147483647i), u_input.b)), countOneBits(~u_input.b)), 0i), _wgslsmith_f_op_f32(round(var_3.x)), var_1, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(global3.c, -30409i) | (u_input.b.yx & u_input.b.zz), -_wgslsmith_div_vec2_i32(u_input.b.xy, u_input.b.zz)), -26801i), select(vec4<u32>(0u, _wgslsmith_mult_u32(var_2, ~143713u), ~14178u, 24997u), vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(61312u), var_1.x), var_2, 4294967295u, 1u), !vec4<bool>(false, all(global3.b), all(global3.b.wzw), true)));
}

