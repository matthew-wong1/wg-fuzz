struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec3<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: array<vec4<i32>, 27>;

var<private> global3: array<vec2<bool>, 17>;

var<private> global4: Struct_1 = Struct_1(vec4<f32>(-940f, 510f, 828f, 782f), 2147483647i, 153f, true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: f32, arg_3: Struct_4) -> u32 {
    var var_0 = true;
    let var_1 = arg_3.e;
    return 4294967295u;
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<bool>) -> u32 {
    var var_0 = global0.c;
    var var_1 = reverseBits(func_1(~max(vec3<i32>(global0.b, 0i, global4.b) ^ vec3<i32>(global0.b, -7124i, global4.b), ~vec3<i32>(global4.b, global0.b, global4.b)), _wgslsmith_mult_u32(firstLeadingBit(arg_0) & _wgslsmith_mult_u32(arg_0, arg_2.x), u_input.a.x), global4.a.x, Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-global4.a), _wgslsmith_sub_i32(-30585i, -1i), _wgslsmith_f_op_f32(ceil(115f)), true, any(vec3<bool>(arg_1, global0.d, global4.e))), -(global0.b | -1i), any(!arg_3), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global4.c, global0.a.x, 1773f), global4.a.yyy)), _wgslsmith_f_op_vec3_f32(-global0.a.xwz), select(vec3<bool>(global4.e, arg_1, arg_3.x), vec3<bool>(false, arg_1, arg_1), vec3<bool>(global4.d, true, global4.e)))), Struct_3(arg_2.x << (4294967295u % 32u)))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global4.a, global4.a)), ~2147483647i, -228f, !((0i < global4.b) && true), false), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1215f, -1000f, 2213f, global0.a.x)), _wgslsmith_f_op_vec4_f32(-global0.a), true))), 2147483647i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global4.c, 1f, any(vec4<bool>(global0.d, false, global4.e, global0.e)))))), arg_3.x, any(!select(vec4<bool>(arg_1, false, global0.e, global4.e), vec4<bool>(arg_3.x, true, false, global4.d), vec4<bool>(true, arg_1, false, true)))), firstLeadingBit(_wgslsmith_div_vec3_i32(~(-vec3<i32>(global4.b, global4.b, global0.b)), ~(-vec3<i32>(7942i, -2147483647i, 16726i)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(2006f)), global4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), 192f), ~2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * _wgslsmith_f_op_f32(394f * -1093f))), !(all(global3[_wgslsmith_index_u32(arg_2.x, 17u)]) & (global4.b == global4.b)), !(!(arg_3.x & arg_3.x))));
    var var_3 = Struct_3(arg_2.x);
    var var_4 = Struct_2(var_2.b, Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-993f, global4.c, global4.a.x, global0.c)), var_2.d.a, all(!arg_3))), global4.b, var_2.a.c, !var_2.a.e, global0.e), vec3<i32>(1i, var_2.c.x, min(_wgslsmith_sub_i32(global0.b, _wgslsmith_add_i32(1i, var_2.c.x)), -(global0.b << (u_input.a.x % 32u)))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c, global0.a.x, 904f, var_2.a.a.x)), vec4<f32>(global0.a.x, var_2.d.a.x, -155f, -1001f))))), ~global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.c, 687f, global4.e))) - _wgslsmith_div_f32(global0.a.x, global4.c)), !(!all(vec3<bool>(arg_3.x, true, var_2.a.d))), true));
    return countOneBits(~0u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: u32) -> u32 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global0.a, vec4<f32>(global0.c, arg_0.x, global0.a.x, arg_0.x)), vec4<f32>(global0.c, 1040f, _wgslsmith_div_f32(305f, global4.a.x), global0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.x, global4.a.x, global0.c, 1368f)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -382f, global0.a.x, _wgslsmith_f_op_f32(-global4.c))), true)), global4.b, arg_0.x, global0.e, !arg_1.x);
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.a.yz), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-459f, global4.a.x))), any(vec2<bool>(true, false))))) + _wgslsmith_f_op_vec2_f32(trunc(arg_0))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c * global4.a.x) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1811f), _wgslsmith_f_op_f32(max(1917f, -668f)), arg_1.x))), _wgslsmith_f_op_f32(floor(global0.a.x))));
    var var_1 = all(vec4<bool>(all(arg_1.yxw) | false, !global0.d, arg_1.x, true));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, arg_0.x, arg_0.x, -1019f)), _wgslsmith_f_op_vec4_f32(global4.a + _wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(1696f, var_0.x, global0.c, -1014f))))))), global0.b, arg_0.x, false, false);
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-267f * _wgslsmith_f_op_f32(arg_0.x - -138f)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -199f)))), global4.c), 26695i, _wgslsmith_f_op_f32(1540f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.a.x, global4.a.x)), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(round(1946f))), any(!arg_1.xxx)))), !global0.d, 81353u <= func_3(u_input.a.x, !all(arg_1), firstTrailingBit(~u_input.a.zzz), !global3[_wgslsmith_index_u32(0u, 17u)]));
    return firstLeadingBit(58367u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3((32031u >> ((func_1(vec3<i32>(global4.b, 24906i, 2147483647i), 4294967295u, -1902f, Struct_4(Struct_1(vec4<f32>(global4.c, -1000f, -1000f, global4.c), global0.b, 1946f, false, global4.d), global0.b, global4.d, vec3<f32>(262f, 1674f, global4.a.x), Struct_3(0u))) << (~16404u % 32u)) % 32u)) ^ func_2(_wgslsmith_f_op_vec2_f32(-global0.a.xx), vec4<bool>(false, !global0.d, false, true), u_input.b));
    let var_1 = false;
    let var_2 = Struct_2(Struct_1(global4.a, ((global0.b >> (81576u % 32u)) >> (~var_0.a % 32u)) ^ countOneBits(global0.b), global0.a.x, var_1, -(1i ^ global4.b) != _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, 79292i, global0.b, global4.b), -vec4<i32>(2147483647i, -18277i, global4.b, global4.b))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c, -2213f, _wgslsmith_f_op_f32(exp2(global0.a.x)), _wgslsmith_f_op_f32(min(global4.c, global4.a.x)))), -10374i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global4.a.x)))), false, var_1), min(firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(70927u, 27u)], global2[_wgslsmith_index_u32(1u, 27u)]), -96809i, ~(-9733i))), vec3<i32>(global0.b, 0i, global0.b)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global4.a.x, global4.c, 126f, global4.a.x))))), global4.b, _wgslsmith_f_op_f32(f32(-1f) * -795f), global4.d, _wgslsmith_f_op_f32(exp2(global4.a.x)) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.c)))));
    global2 = array<vec4<i32>, 27>();
    var var_3 = 0i;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1379f)) - -715f);
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-562f, 1f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.d.c)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -406f))), _wgslsmith_f_op_f32(-var_2.d.a.x));
    let var_6 = ~u_input.a;
    global4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(11744u, 12793u);
}

