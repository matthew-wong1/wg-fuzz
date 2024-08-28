struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(980f, vec4<bool>(true, true, true, true)), vec2<f32>(134f, 1065f), vec4<bool>(false, false, false, false), -263f);

var<private> global1: i32 = 2147483647i;

var<private> global2: bool = true;

var<private> global3: array<vec4<f32>, 28>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> u32 {
    global3 = array<vec4<f32>, 28>();
    return 1u;
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_div_vec2_u32(firstLeadingBit(select(select(~u_input.a, u_input.b.yz ^ vec2<u32>(u_input.b.x, 0u), u_input.b.x == u_input.b.x), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.b.x, 0u))), true)), ~vec2<u32>(u_input.b.x, 13118u ^ _wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.zx)));
    let var_1 = global0.a;
    var var_2 = Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1802f, global0.d), _wgslsmith_f_op_f32(var_1.a - global0.b.x))) * global0.b), vec4<bool>(global0.a.b.x, true, any(global0.a.b.zy), true), _wgslsmith_f_op_f32(-global0.b.x));
    let var_3 = 1u;
    var var_4 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, 1i) ^ select(max(~vec2<i32>(-8185i, -43603i), vec2<i32>(40667i, 2147483647i) << (vec2<u32>(u_input.b.x, var_0.x) % vec2<u32>(32u))), min(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 35145i), vec2<i32>(-2147483647i, -1i)), vec2<i32>(1i, 1i)), var_1.b.zy), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(23053i, 1i, -20324i), ~(-2147483647i)), select(_wgslsmith_mod_vec2_i32(vec2<i32>(-16802i, -1i), vec2<i32>(56036i, 33377i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(42667i, 2147483647i)), true != var_1.b.x)), 1i), vec2<i32>(~firstLeadingBit(30415i), 0i));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.a), -1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.b, vec2<f32>(1787f, var_1.a))))) + var_2.b);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    global1 = -2147483647i;
    var var_0 = global0.a.b.x;
    let var_1 = ~vec3<i32>(-abs(0i), min(countOneBits(~0i), -firstTrailingBit(15240i)), 23547i);
    global3 = array<vec4<f32>, 28>();
    var var_2 = _wgslsmith_f_op_vec2_f32(func_3());
    return Struct_1(_wgslsmith_f_op_f32(global0.a.a + -1226f), !vec4<bool>(true, !global0.c.x || false, !arg_1.b.x, all(select(vec4<bool>(global0.a.b.x, true, false, true), vec4<bool>(true, true, global0.a.b.x, true), vec4<bool>(true, false, global0.a.b.x, global0.a.b.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    let var_0 = abs(34432i);
    let var_1 = global0.a.b.xx;
    var var_2 = min(~(~(8806u ^ u_input.a.x) ^ ~u_input.b.x), 29190u);
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(arg_1)), vec4<bool>(all(vec4<bool>(global0.a.b.x, global0.c.x, false, true)) | false, select(true || arg_0.b.x, var_1.x || false, !global0.a.b.x), !(!var_1.x), (u_input.b.x == 60938u) == false)), global0.b, vec4<bool>(true, true, global0.a.b.x, var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(269f, 1082f) + _wgslsmith_f_op_f32(-arg_1)))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a), vec4<bool>(all(select(vec4<bool>(global0.c.x, true, true, global0.a.b.x), func_2(vec2<f32>(1000f, arg_1), global0.a, global3[_wgslsmith_index_u32(27793u, 28u)]).b, var_0 != var_0)), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b) + _wgslsmith_f_op_vec2_f32(-global0.b)), Struct_1(-491f, !vec4<bool>(false, var_1.x, true, false)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 28u)])))).b.x, (all(vec3<bool>(var_1.x, arg_0.b.x, true)) & true) | !(arg_1 <= 1000f), all(select(select(vec3<bool>(var_1.x, false, global0.c.x), vec3<bool>(global0.a.b.x, arg_0.b.x, true), vec3<bool>(global0.a.b.x, true, true)), !arg_0.b.zwx, var_1.x))));
    return Struct_2(func_2(global0.b, var_3, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], vec4<f32>(arg_1, var_3.a, arg_0.a, var_3.a))) - _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(1u, 28u)])) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-458f, -155f, arg_1, arg_0.a))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2806f) - _wgslsmith_f_op_f32(round(var_3.a))), _wgslsmith_f_op_f32(f32(-1f) * -1296f)), func_2(_wgslsmith_f_op_vec2_f32(global0.b - _wgslsmith_div_vec2_f32(global0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(103f, -621f) + global0.b))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.b))), Struct_1(_wgslsmith_f_op_f32(abs(875f)), vec4<bool>(false, true, false, arg_0.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1422f, arg_1, var_3.a, global0.d))) - vec4<f32>(var_3.a, arg_0.a, arg_0.a, var_3.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(22984u, 28u)]))).b, arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 28>();
    global0 = func_4(func_2(global0.b, global0.a, _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(func_1(global0.c.x, -vec3<i32>(-1i, -2147483647i, -29411i)), 28u)])), -825f);
    let var_0 = func_4(global0.a, _wgslsmith_f_op_f32(round(global0.b.x))).c.xx;
    var var_1 = func_4(Struct_1(global0.d, !(!global0.c)), _wgslsmith_f_op_f32(ceil(-140f)));
    let var_2 = func_4(Struct_1(var_1.d, func_4(global0.a, global0.a.a).c), _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-var_1.a.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-38474i), min(vec4<i32>(reverseBits(2147483647i) >> (countOneBits(33794u) % 32u), -reverseBits(1i), ~_wgslsmith_add_i32(2147483647i, -15837i), (i32(-1i) * -2147483647i) << (max(u_input.b.x, 0u) % 32u)), -vec4<i32>(-56547i, -2147483647i, i32(-1i) * -20313i, max(-3043i, 0i))), min(firstTrailingBit(i32(-1i) * -25759i), 17235i), _wgslsmith_f_op_f32(f32(-1f) * -669f));
}

