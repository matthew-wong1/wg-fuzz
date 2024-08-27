struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_1, 24>;

var<private> global3: vec3<u32>;

var<private> global4: f32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(46647u, 24u)], u_input.c, Struct_2(!global0.c.d, Struct_1(vec2<bool>(false, false), global0.e || true), global0.d.a.x, true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(firstTrailingBit(vec4<u32>(u_input.a.x, 15380u, 41772u, 0u))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global3.x, 1u, 4294967295u, u_input.a.x), vec4<u32>(1u, 48946u, 0u, global0.b)), abs(vec4<u32>(u_input.c, u_input.c, 1u, u_input.a.x)))), 24u)]), global0.c.b, false);
    var var_1 = 0i;
    let var_2 = _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(~_wgslsmith_div_i32(2147483647i, u_input.b.x), _wgslsmith_add_i32(u_input.b.x << (4294967295u % 32u), _wgslsmith_clamp_i32(23195i, u_input.b.x, u_input.b.x)))), _wgslsmith_div_vec2_i32(vec2<i32>(~_wgslsmith_add_i32(0i, 1i), 33943i ^ u_input.b.x), vec2<i32>(abs(-u_input.b.x), u_input.b.x)));
    return -1861i & var_2.x;
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = -2147483647i;
    global0 = Struct_3(global2[_wgslsmith_index_u32(55035u, 24u)], _wgslsmith_sub_u32(1u, 0u), global0.c, global2[_wgslsmith_index_u32(global0.b, 24u)], false);
    var var_1 = select(!(!select(!vec4<bool>(global0.c.c, global0.c.e.b, global0.e, global0.e), vec4<bool>(true, global0.d.b, global0.d.a.x, global0.c.e.a.x), select(vec4<bool>(global0.a.a.x, global0.a.b, false, false), vec4<bool>(true, false, global0.e, global0.d.b), vec4<bool>(global0.c.c, global0.c.e.a.x, true, false)))), select(!select(select(vec4<bool>(true, global0.c.e.a.x, global0.d.b, false), vec4<bool>(global0.c.b.b, global0.a.b, true, global0.d.a.x), vec4<bool>(global0.d.a.x, false, false, global0.a.b)), select(vec4<bool>(global0.c.a, false, false, global0.d.b), vec4<bool>(global0.d.a.x, global0.e, false, global0.a.b), vec4<bool>(false, false, global0.d.b, global0.e)), true), !vec4<bool>(false, false, false, !global0.e), vec4<bool>(true, true, ~u_input.a.x >= global0.b, all(vec3<bool>(global0.a.a.x, global0.a.b, false)) && true)), false || global0.d.a.x);
    global0 = Struct_3(Struct_1(vec2<bool>(false, false), var_1.x), _wgslsmith_sub_u32(abs(~1u), 88033u), global0.c, global0.d, var_1.x & select(var_1.x, false, false));
    var var_2 = vec3<i32>(2147483647i, func_3(), func_3());
    return abs(abs(1u));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = u_input.b.xy;
    let var_1 = arg_0;
    global0 = Struct_3(Struct_1(arg_0.a, true), func_2(global0.b), global0.c, Struct_1(!global0.c.b.a, !any(vec2<bool>(var_1.b, true))), true);
    let var_2 = -u_input.b;
    let var_3 = global0.b;
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: i32, arg_3: u32) -> Struct_1 {
    global0 = arg_0;
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global1.yy), global1.xy))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1053f) + _wgslsmith_f_op_f32(-global1.x)), 375f, global1.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.x * 1000f), _wgslsmith_f_op_f32(-global1.x), var_0.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-426f, var_0.x, -997f) * vec3<f32>(-459f, global1.x, global1.x))))));
    let var_1 = true && (false && (false && !(true == arg_0.d.b)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global1.x) - var_0.x);
    return func_1(Struct_1(vec2<bool>(all(func_1(Struct_1(vec2<bool>(false, var_1), false), true, vec3<bool>(true, false, false)).a), !arg_0.c.c), false), var_2 >= var_2, vec3<bool>(func_1(func_1(global0.d, global0.e, !vec3<bool>(var_1, false, true)), false, !vec3<bool>(arg_0.d.b, global0.a.a.x, var_1)).b, arg_1.x <= 1i, !global0.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.d <= _wgslsmith_sub_u32(30238u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, global0.b), vec4<u32>(u_input.d, 0u, 4294967295u, 31339u)))), global0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(179f * global1.x)))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(max(global1.x, -504f))), select(global0.c.e.a.x, global0.a.a.x, !any(select(global0.c.e.a, global0.c.e.a, global0.a.a))), func_4(Struct_3(func_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, global0.b), global3.zx), 24u)], global0.d.b, !vec3<bool>(global0.a.b, global0.d.b, true)), 0u, Struct_2(true, global2[_wgslsmith_index_u32(global0.b, 24u)], true, true, func_1(Struct_1(vec2<bool>(true, global0.a.b), global0.d.b), global0.a.a.x, vec3<bool>(false, global0.d.b, true))), func_1(func_1(Struct_1(vec2<bool>(true, global0.a.b), true), true, vec3<bool>(global0.a.b, global0.d.a.x, global0.c.c)), all(vec4<bool>(false, global0.d.b, global0.c.b.a.x, true)), !vec3<bool>(true, global0.c.a, global0.a.b)), global0.e), ~abs(countOneBits(u_input.b.xx)), u_input.b.x, global0.b));
    let var_1 = ~(~firstTrailingBit(vec4<u32>(~1u, 0u, u_input.d, ~1u)));
    var var_2 = Struct_1(vec2<bool>(var_0.b.a.x | false, any(!global0.c.e.a)), 414f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-668f)) - _wgslsmith_f_op_f32(f32(-1f) * -1642f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-205f + 1000f)))));
    var var_3 = global0.b;
    global0 = Struct_3(global0.c.b, ~_wgslsmith_add_u32(39393u | global3.x, ~_wgslsmith_add_u32(var_1.x, 1u)), Struct_2(false, global2[_wgslsmith_index_u32(63328u, 24u)], true, func_1(Struct_1(vec2<bool>(true, var_2.a.x), true), func_4(Struct_3(global0.c.b, 14926u, global0.c, var_0.b, false), vec2<i32>(u_input.b.x, 1i), -1i, 4294967295u).b, select(vec3<bool>(true, var_0.c, var_0.d), vec3<bool>(true, true, true), vec3<bool>(var_2.b, true, var_0.c))).b == (all(vec2<bool>(true, var_0.d)) | var_2.a.x), Struct_1(global0.a.a, true)), Struct_1(var_2.a, true), false);
    var_0 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b), global1.x, vec3<i32>(u_input.b.x, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(39269i, u_input.b.x), -1i), u_input.b.yy)));
}

