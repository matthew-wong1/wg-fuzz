struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: Struct_3,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(426f, vec4<bool>(false, true, false, false), Struct_3(Struct_1(vec2<bool>(false, true), true, false), vec2<bool>(true, false), Struct_1(vec2<bool>(false, false), false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), -2156f, vec4<bool>(false, true, true, true));

var<private> global1: array<f32, 3>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = global0.c.c;
    var_0 = global0.c.c;
    let var_1 = Struct_2(Struct_1(var_0.a, true, any(!(!vec3<bool>(false, var_0.b, global0.e.x)))));
    var_0 = Struct_1(var_1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0, 3u)]), _wgslsmith_f_op_f32(global0.d + global0.d), all(vec4<bool>(var_1.a.a.x, var_0.b, var_0.a.x, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -447f))) <= _wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f))), all(vec4<bool>(false, var_1.a.a.x, true, !(!var_0.a.x))));
    let var_2 = !var_1.a.a;
    return !(!select(any(global0.c.e), false, any(select(global0.e, global0.e, var_2.x))));
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    var var_0 = 36870i;
    var var_1 = vec3<u32>(0u, u_input.b.x, _wgslsmith_mult_u32(~select(103408u, 0u, false), _wgslsmith_mod_u32(u_input.b.x, u_input.d) ^ max(u_input.b.x, 1039u))) ^ ~select(~u_input.b.wxw >> (vec3<u32>(4294967295u, u_input.b.x, u_input.d) % vec3<u32>(32u)), ~u_input.b.zxy, !func_3(9794u));
    var_0 = firstLeadingBit(reverseBits(i32(-1i) * -2147483647i));
    let var_2 = Struct_2(global0.c.c);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.d, global1[_wgslsmith_index_u32(var_1.x, 3u)]))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1269f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(161f, global0.a))))))));
    return u_input.c;
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> f32 {
    var var_0 = func_2(vec4<i32>(-min(1i, u_input.a.x), _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a.x, u_input.e.x), 990i, u_input.a.x), -u_input.c, ~41381i) | abs(-(~vec4<i32>(20224i, u_input.e.x, u_input.e.x, -1i))));
    return global0.d;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: f32) -> vec2<bool> {
    global1 = array<f32, 3>();
    global0 = Struct_4(arg_3, !vec4<bool>(arg_1.x, arg_1.x, any(vec2<bool>(true, true)), !all(vec2<bool>(global0.b.x, false))), global0.c, global0.a, select(arg_1, arg_1, global0.e));
    global1 = array<f32, 3>();
    var var_0 = global0.c;
    let var_1 = false;
    return vec2<bool>((i32(-1i) * -(~23167i)) > u_input.a.x, !all(global0.e));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = -u_input.a.x;
    global1 = array<f32, 3>();
    let var_1 = true;
    return arg_1.a;
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> Struct_3 {
    global0 = Struct_4(global0.d, vec4<bool>(arg_0.a.x, func_5(select(arg_0.a, vec2<bool>(global0.e.x, false), any(global0.e)), Struct_2(func_5(vec2<bool>(true, global0.b.x), Struct_2(Struct_1(vec2<bool>(true, true), global0.b.x, true))))).a.x, true, global0.b.x), Struct_3(func_5(!arg_0.a, Struct_2(arg_0)), !vec2<bool>(arg_0.a.x, global0.b.x), Struct_1(arg_0.a, true, func_3(u_input.d)), vec3<bool>(arg_0.b, !(!global0.b.x), all(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, false))), vec3<bool>(true, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(0u, 3u)])) <= _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.b.x, 3u)])), all(select(vec4<bool>(global0.c.c.a.x, arg_0.c, global0.e.x, false), vec4<bool>(global0.e.x, true, global0.c.b.x, global0.b.x), global0.e)))), -319f, global0.e);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1395f)))))));
    global1 = array<f32, 3>();
    global0 = Struct_4(_wgslsmith_f_op_f32(271f * global1[_wgslsmith_index_u32(countOneBits(u_input.d) >> (~u_input.d % 32u), 3u)]), select(!select(global0.b, select(vec4<bool>(true, global0.b.x, arg_0.b, false), global0.b, global0.b), !global0.b), global0.e, select(vec4<bool>(func_5(vec2<bool>(true, arg_0.b), Struct_2(global0.c.a)).a.x, func_5(arg_0.a, Struct_2(Struct_1(global0.b.yw, true, false))).b, func_4(-1018f, global0.e, vec4<i32>(1i, 1150i, 25334i, 30847i), global1[_wgslsmith_index_u32(u_input.d, 3u)]).x, false), vec4<bool>(func_4(global0.d, vec4<bool>(true, true, false, true), vec4<i32>(-8578i, u_input.c, arg_1, -43437i), global0.a).x, select(arg_0.c, global0.c.b.x, true), global0.d <= 806f, true), true)), Struct_3(global0.c.a, !vec2<bool>(u_input.d == u_input.d, arg_0.a.x), Struct_1(vec2<bool>(any(vec3<bool>(arg_0.a.x, true, global0.c.a.b)), !arg_0.b), !(u_input.b.x < 63830u), false), select(!vec3<bool>(false, arg_0.a.x, false), !select(vec3<bool>(global0.e.x, global0.c.c.b, arg_0.a.x), global0.e.xyw, false), select(!global0.b.xwz, global0.b.yyz, global0.e.xwx)), select(!vec3<bool>(arg_0.b, true, arg_0.b), vec3<bool>(global0.e.x, true, 2147483647i > arg_1), !(global0.e.x | false))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(u_input.b.x << (u_input.b.x % 32u)), firstLeadingBit(u_input.b.x), firstTrailingBit(4294967295u)) | firstTrailingBit(1u), 3u)], vec4<bool>(arg_0.a.x, arg_0.b, !func_4(905f, global0.e, vec4<i32>(u_input.e.x, u_input.c, u_input.a.x, arg_1), _wgslsmith_f_op_f32(min(global0.a, global0.d))).x, !arg_0.c));
    var var_1 = Struct_2(global0.c.a);
    return Struct_3(Struct_1(var_1.a.a, global0.c.c.a.x, !(!arg_0.a.x) != true), select(select(!vec2<bool>(arg_0.b, arg_0.a.x), arg_0.a, any(!global0.c.d)), global0.c.b, global0.e.xw), Struct_1(!select(func_4(-454f, vec4<bool>(true, global0.b.x, var_1.a.b, false), vec4<i32>(u_input.c, -55571i, -4731i, 2147483647i), global1[_wgslsmith_index_u32(u_input.d, 3u)]), func_4(1054f, vec4<bool>(arg_0.b, true, global0.b.x, arg_0.c), vec4<i32>(u_input.e.x, u_input.a.x, 76165i, arg_1), 716f), select(vec2<bool>(true, false), vec2<bool>(global0.c.c.c, true), vec2<bool>(false, global0.b.x))), global0.b.x, !var_1.a.a.x), !vec3<bool>(true, !arg_0.a.x & any(vec3<bool>(var_1.a.c, true, false)), any(vec3<bool>(true, false, true))), vec3<bool>(true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(abs(-firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.a.x, -2703i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, u_input.a.x)))));
    let var_1 = func_6(func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(global0.c.a), 19953u)) * _wgslsmith_div_f32(-746f, -1086f)), !select(vec4<bool>(false, false, false, global0.b.x), vec4<bool>(global0.b.x, true, global0.e.x, true), vec4<bool>(true, global0.b.x, true, false)), ~firstTrailingBit(vec4<i32>(u_input.a.x, -2147483647i, var_0.x, var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a + -193f), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(u_input.b.x, 3u)])))), Struct_2(Struct_1(vec2<bool>(true, global0.e.x), true, !global0.c.e.x))), -1i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(func_6(global0.c.c, -u_input.a.x).a), _wgslsmith_mult_u32(abs(59415u) >> (u_input.b.x % 32u), _wgslsmith_clamp_u32(17371u >> (u_input.d % 32u), 11601u, 54581u)))));
    global1 = array<f32, 3>();
    var var_3 = u_input.d >> (u_input.b.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b.zw, u_input.b.yw), vec4<i32>(abs(~var_0.x) << (0u % 32u), _wgslsmith_mult_i32(countOneBits(u_input.e.x), u_input.e.x), _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec3_i32(var_0.ywz, u_input.a)), -1i), ~1i), u_input.b.yww);
}

