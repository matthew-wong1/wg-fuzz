struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: array<Struct_1, 29>;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(false, vec2<i32>(-8445i, 0i), 40361i), Struct_1(false, vec2<i32>(29222i, -4152i), i32(-2147483648)), Struct_1(true, vec2<i32>(3327i, -12996i), 2147483647i), Struct_1(true, vec2<i32>(-26277i, -26284i), -1i), Struct_1(true, vec2<i32>(11272i, 12170i), 12987i), Struct_1(true, vec2<i32>(0i, 1i), 1i), Struct_1(false, vec2<i32>(41743i, 27735i), 48109i), Struct_1(true, vec2<i32>(-50639i, 2147483647i), -1i), Struct_1(false, vec2<i32>(50586i, -25952i), 1i), Struct_1(true, vec2<i32>(16841i, 9657i), -1i), Struct_1(true, vec2<i32>(-58015i, i32(-2147483648)), -50530i), Struct_1(true, vec2<i32>(26513i, -22526i), i32(-2147483648)), Struct_1(true, vec2<i32>(7770i, -1i), 0i), Struct_1(false, vec2<i32>(-37419i, 61488i), -9674i), Struct_1(true, vec2<i32>(43705i, -32357i), -1770i), Struct_1(true, vec2<i32>(0i, 0i), 2147483647i));

var<private> global3: array<u32, 27> = array<u32, 27>(4294967295u, 0u, 4294967295u, 1u, 893u, 35158u, 135521u, 4294967295u, 0u, 0u, 1u, 4294967295u, 0u, 38976u, 0u, 1u, 13151u, 63589u, 1u, 71225u, 26410u, 1u, 4175u, 86508u, 0u, 1u, 21695u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = vec4<i32>(firstLeadingBit(-2147483647i), select(2147483647i, -_wgslsmith_div_i32(u_input.b.x, _wgslsmith_div_i32(u_input.a, u_input.b.x)), true), abs(select(u_input.b.x, 1i, true)) ^ ~(u_input.a | min(u_input.b.x, u_input.a)), max(2147483647i, u_input.a));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(560f, -379f) * vec2<f32>(965f, 1000f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1458f), -288f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1703f))));
    let var_2 = ~_wgslsmith_sub_vec4_u32(arg_0.a, firstTrailingBit(arg_0.a));
    var var_3 = false;
    var var_4 = abs(_wgslsmith_clamp_vec2_i32(u_input.b, -vec2<i32>(1i, u_input.a | 1i), ~(~vec2<i32>(0i, u_input.a))));
    return ~vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -6419i, 1i, -4800i), vec4<i32>(var_4.x, -1i, var_4.x, var_0.x)) & 2147483647i, _wgslsmith_div_i32(_wgslsmith_div_i32(~var_4.x, u_input.a), 0i), 2147483647i, _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(24904i, u_input.a), ~u_input.a), countOneBits(var_4.x)));
}

fn func_2() -> vec2<i32> {
    global3 = array<u32, 27>();
    var var_0 = vec3<i32>(u_input.a, -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 14482i, -1i, u_input.b.x), vec4<i32>(13280i, 0i, 10982i, u_input.a)), -vec4<i32>(-16426i, u_input.a, u_input.b.x, u_input.b.x)), select(func_3(Struct_3(vec4<u32>(global3[_wgslsmith_index_u32(1u, 27u)], u_input.c, 37811u, u_input.d)), Struct_3(vec4<u32>(global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(7053u, 27u)], 42845u, global3[_wgslsmith_index_u32(4294967295u, 27u)]))), vec4<i32>(2147483647i, -2147483647i, u_input.a, u_input.a) >> (vec4<u32>(global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(u_input.c, 27u)], u_input.c, 0u) % vec4<u32>(32u)), global0.x)), ~1i);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(818f, 2124f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -992f) + 1113f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1482f, -753f), vec2<f32>(-472f, -609f))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), -1913f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1355f, 722f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(447f, -395f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 613f), vec2<f32>(-262f, 2758f)))))), any(!vec3<bool>(global0.x, global0.x, global0.x)) && global0.x)));
    global2 = array<Struct_1, 16>();
    var var_2 = false;
    return var_0.zx;
}

fn func_1() -> f32 {
    global3 = array<u32, 27>();
    global1 = array<Struct_1, 29>();
    var var_0 = global0.x;
    var var_1 = global1[_wgslsmith_index_u32(~firstLeadingBit(global3[_wgslsmith_index_u32(~abs(u_input.d), 27u)]), 29u)];
    let var_2 = abs(_wgslsmith_sub_vec2_i32(vec2<i32>(~var_1.b.x, firstLeadingBit(0i)) & (vec2<i32>(var_1.b.x, var_1.b.x) | func_2()), _wgslsmith_div_vec2_i32(~u_input.b ^ vec2<i32>(0i, 29287i), func_3(Struct_3(vec4<u32>(2054u, u_input.c, u_input.c, global3[_wgslsmith_index_u32(11255u, 27u)])), Struct_3(vec4<u32>(39635u, u_input.c, u_input.c, 0u))).ww)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1261f + _wgslsmith_f_op_f32(-1f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec4<bool>(select(true, false, all(vec3<bool>(true, false, true))), true, select(true, select(false, global0.x, false), !global0.x), global0.x));
    global2 = array<Struct_1, 16>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -185f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 + var_1))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1108f)), -965f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, var_1), vec2<f32>(-1138f, var_1), var_0.zz)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 + -149f)))), global0.x)), true));
    global0 = select(var_0.yww, !vec3<bool>(true, true, any(!global0.zz)), true);
    var var_3 = select(select(select(vec2<bool>(true, true), var_0.yz, false), !select(!var_0.zx, vec2<bool>(var_0.x, true), u_input.b.x >= u_input.b.x), abs(u_input.b.x) < (i32(-1i) * -26222i)), !var_0.yy, global0.x);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1897f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(540f, var_1)), -193f))) + 954f);
    global0 = !select(vec3<bool>(true, true, !(!var_3.x)), var_0.yzz, select(var_0.xxw, vec3<bool>(var_0.x, any(var_0.zz), false), any(select(var_0.xxx, var_0.zxy, true))));
    global1 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(max(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 27u)], 27u)], 27u)], u_input.d, 0u, 7024u), vec4<u32>(32980u, global3[_wgslsmith_index_u32(4102u, 27u)], 4294967295u, global3[_wgslsmith_index_u32(25889u, 27u)])) << (~vec4<u32>(4126u, u_input.c, global3[_wgslsmith_index_u32(u_input.c, 27u)], 0u) % vec4<u32>(32u)))), -1012f);
}

