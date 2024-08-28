struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<i32> = vec2<i32>(-81549i, 30751i);

var<private> global2: array<vec2<bool>, 6>;

var<private> global3: array<f32, 16> = array<f32, 16>(1000f, -166f, -416f, -346f, -284f, 1218f, 1000f, 302f, 241f, 625f, 688f, -511f, 736f, -1000f, 888f, 2569f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec4<i32>) -> u32 {
    var var_0 = arg_2;
    global2 = array<vec2<bool>, 6>();
    var_0 = arg_2;
    var var_1 = (_wgslsmith_div_vec3_u32(~(vec3<u32>(var_0.b.a, 0u, 4294967295u) << (vec3<u32>(1u, arg_2.b.d, u_input.c.x) % vec3<u32>(32u))), u_input.b.xyx & _wgslsmith_div_vec3_u32(u_input.b.yyx, u_input.b.zyx)) >> (_wgslsmith_mult_vec3_u32(u_input.b.yyw, _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b.x, u_input.c.x, 1u), vec3<u32>(var_0.b.a, arg_2.b.d, var_0.b.d))) % vec3<u32>(32u))) | vec3<u32>(arg_2.b.a, 131644u, 0u);
    var var_2 = abs(countOneBits(-_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, arg_3.x), vec2<i32>(var_0.b.c, 0i)) ^ u_input.a.yy));
    return _wgslsmith_dot_vec3_u32(u_input.b.www, abs(u_input.b.zww));
}

fn func_2(arg_0: vec3<f32>) -> vec4<f32> {
    let var_0 = !(((global1.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 6878u), u_input.c) % 32u)) >> ((u_input.c.x << (abs(u_input.c.x) % 32u)) % 32u)) >= u_input.a.x);
    global3 = array<f32, 16>();
    var var_1 = u_input.c.x;
    var var_2 = _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~u_input.c.x, min(4294967295u, 0u)) | u_input.c.x, 16u)] - global3[_wgslsmith_index_u32(u_input.c.x, 16u)]);
    let var_3 = Struct_4((u_input.c.x | u_input.b.x) <= _wgslsmith_sub_u32(func_3(_wgslsmith_sub_i32(global1.x, u_input.a.x), vec4<f32>(arg_0.x, global3[_wgslsmith_index_u32(u_input.c.x, 16u)], 270f, -108f), Struct_3(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 16u)], 908f, 1000f), Struct_1(u_input.b.x, arg_0.xy, 2147483647i, u_input.b.x)), vec4<i32>(-10353i, global1.x, global1.x, 59791i) >> (u_input.b % vec4<u32>(32u))), 13520u), Struct_2(global2[_wgslsmith_index_u32(countOneBits(u_input.c.x), 6u)], Struct_1(u_input.c.x, vec2<f32>(_wgslsmith_f_op_f32(528f * global3[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b.x, 16u)] * global3[_wgslsmith_index_u32(1u, 16u)])), -1i, _wgslsmith_dot_vec3_u32(u_input.b.ywx, vec3<u32>(u_input.c.x, u_input.b.x, 0u))), firstLeadingBit(-(~u_input.a)), _wgslsmith_mod_vec3_i32(select(vec3<i32>(2147483647i, -37150i, global1.x), -u_input.a, !vec3<bool>(var_0, false, true)), abs(u_input.a >> (vec3<u32>(u_input.c.x, u_input.b.x, 37766u) % vec3<u32>(32u)))), Struct_1(func_3(global1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 16u)], -2821f, -1108f, 1362f)), Struct_3(arg_0, Struct_1(u_input.b.x, arg_0.zz, u_input.a.x, u_input.c.x)), vec4<i32>(1i, 5383i, global1.x, 0i)), vec2<f32>(-1658f, _wgslsmith_div_f32(1432f, -594f)), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), -vec4<i32>(-33840i, global1.x, -1i, -49331i)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(1u, 106511u)), ~vec2<u32>(4294967295u, u_input.c.x)))));
    return vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-732f - global3[_wgslsmith_index_u32(u_input.c.x, 16u)])))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(774f + _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(var_3.b.e.a, 16u)], -526f, var_0))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.e.b.x)) - var_3.b.b.b.x)), _wgslsmith_f_op_f32(floor(2614f)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(7364u, 1u), 16u)]);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_2) -> u32 {
    let var_0 = !select(arg_2.b.a, arg_3.a, true);
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.b.b.x, -227f, 117f), vec3<f32>(406f, 1525f, global3[_wgslsmith_index_u32(arg_3.e.d, 16u)])))))), arg_3.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(var_1.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(970f, -1000f, 1000f, arg_0.e.b.x) + vec4<f32>(var_1.b.b.x, 139f, arg_2.b.e.b.x, var_1.b.b.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(4294967295u, 16u)], 144f)), global3[_wgslsmith_index_u32(arg_0.b.a, 16u)], -375f, 1000f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-130f, -1155f, global3[_wgslsmith_index_u32(0u, 16u)], arg_0.b.b.x), vec4<f32>(-617f, global3[_wgslsmith_index_u32(4294967295u, 16u)], -519f, arg_1.b.e.b.x)), vec4<f32>(arg_0.b.b.x, var_1.b.b.x, 1000f, arg_1.b.b.b.x), select(vec4<bool>(false, false, arg_0.a.x, arg_2.a), vec4<bool>(arg_1.a, false, arg_2.a, arg_3.a.x), true)))))), vec4<f32>(911f, 1949f, arg_0.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + 120f)))));
    let var_3 = var_1.a;
    let var_4 = arg_0;
    return min(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.b.d, arg_2.b.e.a, arg_0.e.a, arg_3.e.d), u_input.b)), _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.c) & (u_input.c >> (u_input.b.ww % vec2<u32>(32u))), ~firstLeadingBit(vec2<u32>(4294967295u, arg_2.b.b.a)))) & ~max(var_1.b.d, ~1u ^ max(41458u, arg_0.e.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, global3[_wgslsmith_index_u32(func_1(Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], Struct_1(4294967295u, vec2<f32>(-869f, -338f), -2147483647i, 49536u), u_input.a, u_input.a, Struct_1(u_input.b.x, vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], global3[_wgslsmith_index_u32(1u, 16u)]), global1.x, 90977u)), Struct_4(false, Struct_2(global2[_wgslsmith_index_u32(u_input.c.x, 6u)], Struct_1(u_input.b.x, vec2<f32>(global3[_wgslsmith_index_u32(0u, 16u)], global3[_wgslsmith_index_u32(4294967295u, 16u)]), 3893i, 0u), u_input.a, vec3<i32>(0i, 0i, 0i), Struct_1(15670u, vec2<f32>(304f, global3[_wgslsmith_index_u32(u_input.c.x, 16u)]), u_input.a.x, u_input.b.x))), Struct_4(true, Struct_2(global2[_wgslsmith_index_u32(37736u, 6u)], Struct_1(0u, vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], global3[_wgslsmith_index_u32(4294967295u, 16u)]), -36829i, u_input.b.x), vec3<i32>(u_input.a.x, global1.x, 10971i), u_input.a, Struct_1(u_input.c.x, vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], -1574f), -101914i, 1u))), Struct_2(vec2<bool>(true, false), Struct_1(90481u, vec2<f32>(-333f, 1076f), 64948i, 4294967295u), vec3<i32>(global1.x, u_input.a.x, -1i), vec3<i32>(8721i, -2147483647i, u_input.a.x), Struct_1(u_input.c.x, vec2<f32>(-787f, -342f), 0i, 0u))), 16u)], global3[_wgslsmith_index_u32(32987u, 16u)]), vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c.x, 16u)] + -293f), 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(u_input.c.x, 16u)], 255f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(14109u, 16u)], 618f, global3[_wgslsmith_index_u32(u_input.c.x, 16u)]))))), Struct_1(1u, vec2<f32>(719f, -498f), u_input.a.x, u_input.b.x));
    var var_1 = ~(~vec3<u32>(var_0.b.a, ~24492u, max(1u, var_0.b.d))) ^ u_input.b.wzw;
    var_1 = ~abs(u_input.b.yxw);
    var_0 = Struct_3(vec3<f32>(-1386f, _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(0u, 16u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), global3[_wgslsmith_index_u32(~37640u, 16u)]), var_0.b);
    var var_2 = var_0.b;
    let var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(-311f, -29168i & -(u_input.a.x >> (~1u % 32u)));
}

