struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 30>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global2: array<vec4<f32>, 4>;

var<private> global3: array<u32, 14> = array<u32, 14>(4294967295u, 9280u, 43895u, 18339u, 39042u, 4294967295u, 1u, 0u, 80198u, 0u, 0u, 68253u, 4294967295u, 86095u);

var<private> global4: Struct_2 = Struct_2(false, Struct_1(i32(-2147483648), true, vec3<u32>(0u, 9176u, 0u), 25575u), vec4<i32>(-22133i, 2147483647i, -30515i, -3486i));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> u32 {
    let var_0 = global4.c;
    global3 = array<u32, 14>();
    global2 = array<vec4<f32>, 4>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1963f, -804f, 127f) + vec3<f32>(-151f, -1000f, 287f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1024f, -264f, 647f), vec3<f32>(1287f, 800f, 1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-731f, -842f, -1014f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1236f, -491f, -1632f) * vec3<f32>(-1442f, -840f, 407f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-167f, 1326f, 1000f)))), _wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(1u, 4u)], vec4<f32>(1100f, -857f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1335f)) * _wgslsmith_f_op_f32(sign(2304f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(380f)) + _wgslsmith_f_op_f32(-840f * -424f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(592f * -649f), 1000f)) - _wgslsmith_f_op_f32(ceil(531f))), 466f), ~(~u_input.b), -19952i);
    var var_2 = global4.b;
    return (abs(_wgslsmith_add_u32(select(20278u, 25632u, global1.x), abs(arg_1))) | 37877u) >> (~u_input.c % 32u);
}

fn func_2() -> Struct_2 {
    global1 = vec4<bool>(false, true, true, all(vec4<bool>(all(!vec4<bool>(global4.b.b, global1.x, false, global4.a)), true, global1.x, (global3[_wgslsmith_index_u32(u_input.b.x, 14u)] & global3[_wgslsmith_index_u32(0u, 14u)]) != func_3(Struct_3(0i), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 14u)]))));
    var var_0 = Struct_1(-1i, select(false, !any(!vec4<bool>(global4.b.b, true, global1.x, global4.b.b)), true), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(firstTrailingBit(u_input.b.yzz), vec3<u32>(global3[_wgslsmith_index_u32(u_input.c, 14u)], ~u_input.c, 12818u)), vec3<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 14u)], _wgslsmith_mod_u32(1u, u_input.b.x), _wgslsmith_add_u32(global4.b.d, ~global3[_wgslsmith_index_u32(6108u, 14u)]))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(u_input.b.wx, ~u_input.b.yz, vec2<bool>(true, true)), ~vec2<u32>(0u, 26133u)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.b.c.x, 19838u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 41631u), vec2<u32>(1u, u_input.c))), countOneBits(~global4.b.c.x))));
    global2 = array<vec4<f32>, 4>();
    var_0 = Struct_1(_wgslsmith_dot_vec2_i32(global4.c.ww | global4.c.zx, _wgslsmith_div_vec2_i32(~(~vec2<i32>(u_input.a.x, u_input.a.x)), ~vec2<i32>(var_0.a, -42963i))), !global1.x, vec3<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(countOneBits(~u_input.b), max(~u_input.b, abs(u_input.b))), var_0.d), _wgslsmith_sub_u32(global4.b.c.x, _wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(var_0.c.x, 14u)], _wgslsmith_add_u32(global4.b.c.x, 22225u)) ^ 53753u));
    var var_1 = Struct_3(2147483647i);
    return Struct_2(!(global4.b.c.x < firstLeadingBit(global4.b.c.x)), global4.b, ~global4.c);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>) -> Struct_4 {
    let var_0 = func_2();
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1427f)), -255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -219f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(271f, 426f, -594f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-468f, -285f, -274f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1109f, 1859f, -1212f) + vec3<f32>(-1452f, 665f, -766f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(1661f, 1000f, -866f, 744f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1016f, -126f, 663f, -106f) + global2[_wgslsmith_index_u32(27271u, 4u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.b.c.x, 14u)], 4u)]) * _wgslsmith_f_op_vec4_f32(min(global2[_wgslsmith_index_u32(var_0.b.c.x, 4u)], vec4<f32>(-1000f, -250f, -1438f, 927f)))) * vec4<f32>(_wgslsmith_f_op_f32(-1924f * 170f), _wgslsmith_f_op_f32(f32(-1f) * -1426f), _wgslsmith_f_op_f32(f32(-1f) * -193f), _wgslsmith_f_op_f32(-731f + 243f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - 231f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(523f - -760f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1321f, 107f))))), ~vec4<u32>(1u, abs(59239u), ~global4.b.c.x << (func_2().b.d % 32u), _wgslsmith_sub_u32(12493u, _wgslsmith_dot_vec3_u32(vec3<u32>(75162u, u_input.b.x, 20523u), vec3<u32>(0u, 1u, 0u)))), -59043i);
    return Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(var_1.a, vec3<f32>(734f, var_1.a.x, -908f))), _wgslsmith_f_op_vec3_f32(var_1.a - vec3<f32>(340f, var_1.c, var_1.a.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.b.wwz, var_1.a) + var_1.a)) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), -398f, var_1.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_1.a.x, -1190f) - vec3<f32>(-499f, -1062f, -1032f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1000f, 329f, arg_1.x)), _wgslsmith_f_op_f32(-var_1.b.x))), var_1.c, -946f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(920f * var_1.b.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(global2[_wgslsmith_index_u32(max(28883u, arg_0.x), 4u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2099f + _wgslsmith_div_f32(257f, 124f)), _wgslsmith_f_op_f32(-1754f + var_1.c))), abs(var_1.d), ~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    var var_1 = true;
    var var_2 = 22330i;
    let var_3 = func_1(u_input.b.yy, global1.xwy);
    let var_4 = _wgslsmith_div_vec4_i32(-vec4<i32>(43568i, -1i, 1i, 40723i), global4.c) >> (_wgslsmith_add_vec4_u32(~(~vec4<u32>(35800u, 65426u, var_3.d.x, global4.b.d)), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.d.x, u_input.b.x, 4294967295u, global3[_wgslsmith_index_u32(10144u, 14u)]) & u_input.b, var_3.d ^ var_3.d), global4.b.d, var_3.d.x)) % vec4<u32>(32u));
    global0 = array<vec2<bool>, 30>();
    var_1 = var_3.a.x <= var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -(~(-vec3<i32>(1i, -43390i, var_4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) + _wgslsmith_f_op_f32(1421f * var_3.c)))) * var_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.a.x), var_3.c))))), vec2<i32>(19870i, abs(countOneBits(1i) << (~var_3.d.x % 32u))), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(10095i, _wgslsmith_mult_i32(u_input.a.x, global4.b.a >> (0u % 32u)))));
}

