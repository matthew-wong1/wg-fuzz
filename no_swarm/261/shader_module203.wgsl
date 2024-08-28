struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: array<Struct_3, 31>;

var<private> global2: vec3<bool>;

var<private> global3: vec3<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: f32) -> bool {
    let var_0 = Struct_2(Struct_1(14001u << (1u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-355f, 1000f)), arg_0.c.x, any(vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 6u)] * -532f)))) * _wgslsmith_f_op_f32(-arg_0.c.x)));
    var var_1 = Struct_5(true, ~_wgslsmith_dot_vec3_i32(reverseBits(u_input.a) | arg_0.d, vec3<i32>(1i, _wgslsmith_mult_i32(19610i, 0i), 1i)), arg_1.xwx, max(-min(vec3<i32>(arg_2.x, 0i, arg_0.b), arg_2.wwy), _wgslsmith_mult_vec3_i32(~(-vec3<i32>(-12965i, -52567i, -38271i)), arg_2.wwz ^ countOneBits(vec3<i32>(2147483647i, -1i, 1i)))));
    global1 = array<Struct_3, 31>();
    global3 = vec3<bool>(!(!(!var_1.a)), any(select(select(select(vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(true, var_1.a, global2.x), global2.x), vec3<bool>(true, var_1.a, arg_0.a), u_input.c.x == u_input.c.x), vec3<bool>(u_input.b.x != 2147483647i, !global2.x, arg_0.a), !select(vec3<bool>(true, arg_0.a, false), vec3<bool>(global3.x, global2.x, global2.x), true))), global3.x);
    global3 = vec3<bool>(var_1.a, true, all(!vec2<bool>(true, var_1.a)));
    return global3.x;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec2<f32>) -> Struct_4 {
    var var_0 = true;
    global2 = select(!select(select(arg_0.d.yyw, vec3<bool>(global2.x, global2.x, global3.x), select(arg_0.d.zxw, arg_0.d.zyx, global3.x)), vec3<bool>(func_3(Struct_5(global2.x, 2147483647i, vec3<f32>(275f, global0[_wgslsmith_index_u32(78749u, 6u)], arg_1.x), u_input.d.xxy), vec4<f32>(arg_1.x, 2673f, arg_1.x, 312f), vec4<i32>(u_input.e, u_input.a.x, 0i, -18979i), arg_1.x), func_3(Struct_5(global3.x, u_input.d.x, vec3<f32>(1000f, arg_0.b, global0[_wgslsmith_index_u32(0u, 6u)]), vec3<i32>(u_input.a.x, 0i, u_input.a.x)), vec4<f32>(-1000f, -1167f, arg_1.x, arg_2.x), u_input.d, -1012f), !arg_0.d.x), !func_3(Struct_5(global3.x, u_input.b.x, vec3<f32>(1068f, global0[_wgslsmith_index_u32(4294967295u, 6u)], -499f), vec3<i32>(-17282i, -1i, u_input.b.x)), vec4<f32>(-1000f, arg_0.c.b, -2659f, global0[_wgslsmith_index_u32(arg_0.c.a.a, 6u)]), u_input.d, -919f)), arg_0.d.yyx, true);
    global3 = vec3<bool>(all(vec4<bool>(true, true, !(120f > arg_0.b), true)), all(arg_0.d.xx), true);
    var var_1 = u_input.b.x;
    var_0 = any(select(!arg_0.d.zx, !select(vec2<bool>(arg_0.d.x, true), vec2<bool>(global3.x, global3.x), select(global3.yz, global2.zy, global2.x)), func_3(Struct_5(40743u <= u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.d.wxy, u_input.a), vec3<f32>(global0[_wgslsmith_index_u32(arg_0.a.a.a, 6u)], global0[_wgslsmith_index_u32(u_input.c.x, 6u)], arg_1.x), vec3<i32>(u_input.d.x, 35798i, u_input.d.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-163f, -1096f, -1000f, arg_2.x))))), vec4<i32>(28850i, u_input.e, 37334i ^ u_input.b.x, firstTrailingBit(0i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.a.a, 61102u), ~vec2<u32>(4294967295u, 4294967295u)), 6u)])));
    return Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), -2226f)))), u_input.c.x);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_5(true, select(max(53395i, firstTrailingBit(u_input.b.x | 1i)), 2147483647i, any(vec2<bool>(true, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 6u)], arg_2.x, arg_0) - vec3<f32>(1116f, arg_0, 458f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1191f, -1661f, global0[_wgslsmith_index_u32(100404u, 6u)]))) - vec3<f32>(arg_0, arg_2.x, -1803f)), vec3<i32>(abs(-2147483647i), 3414i, 21828i));
    let var_1 = !(!global3.xz);
    var var_2 = Struct_4(-349f, 67007u);
    var_2 = func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, ~(~0u), ~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), u_input.c.xwx), 31u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1862f), _wgslsmith_f_op_f32(-2040f + arg_0)) - _wgslsmith_f_op_vec2_f32(-var_0.c.zy)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~37188u, 6u)])) * -579f), 1036f));
    var var_3 = 70780u;
    return Struct_1(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_clamp_u32(countOneBits(u_input.c.x), firstTrailingBit(36765u), 1193u)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~u_input.c, countOneBits(u_input.c)), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(countOneBits(u_input.c.x << (abs(max(u_input.c.x, 37422u)) % 32u)), 6u)]);
    var var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 31u)];
    let var_2 = func_1(var_0, _wgslsmith_sub_vec3_i32(u_input.d.zzy, _wgslsmith_div_vec3_i32(u_input.d.wzz, -vec3<i32>(u_input.b.x, u_input.a.x, u_input.e))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.b, 646f) - vec2<f32>(906f, 113f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0, global0[_wgslsmith_index_u32(var_1.c.a.a, 6u)]), 914f)), all(vec4<bool>(false, global3.x, true, false)))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - func_2(global1[_wgslsmith_index_u32(64374u, 31u)], _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(154f, var_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_1.c.b) + vec2<f32>(-144f, var_0))).a) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(875f, -1168f))), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(954f * 518f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.b + var_1.b)))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.xw - vec2<f32>(global0[_wgslsmith_index_u32(50410u, 6u)], -1000f)), _wgslsmith_f_op_vec2_f32(floor(var_3.zw)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(61213u, 4294967295u, u_input.c.x, var_1.c.a.a ^ var_1.c.a.a), ~vec4<u32>(4294967295u, 33500u, u_input.c.x, var_1.a.a.a)), _wgslsmith_sub_u32(firstTrailingBit(~u_input.c.x), 20774u)), 1u, u_input.c.xxz, ~select(u_input.a, u_input.d.zxz, !(!vec3<bool>(true, global2.x, var_1.d.x))), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(var_2.a | 1u, 2841u), ~1u));
}

