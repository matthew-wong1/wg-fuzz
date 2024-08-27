struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, true), 1074u, vec2<bool>(false, false));

var<private> global2: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(true, true, Struct_2(-1i, Struct_1(vec3<bool>(true, false, false), 0u, vec2<bool>(false, true))), true), Struct_4(true, true, Struct_2(i32(-2147483648), Struct_1(vec3<bool>(true, false, false), 0u, vec2<bool>(false, true))), true), Struct_4(true, true, Struct_2(i32(-2147483648), Struct_1(vec3<bool>(true, true, true), 19931u, vec2<bool>(true, true))), true), Struct_4(false, true, Struct_2(2147483647i, Struct_1(vec3<bool>(false, true, false), 0u, vec2<bool>(false, false))), true), Struct_4(true, false, Struct_2(-11379i, Struct_1(vec3<bool>(true, true, true), 33376u, vec2<bool>(true, false))), false), Struct_4(false, false, Struct_2(1i, Struct_1(vec3<bool>(false, true, false), 56901u, vec2<bool>(true, false))), false), Struct_4(false, false, Struct_2(2123i, Struct_1(vec3<bool>(true, false, true), 1u, vec2<bool>(true, false))), true));

var<private> global3: u32 = 1u;

var<private> global4: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1948f, 607f) * vec2<f32>(-501f, -604f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1143f, -575f)), all(vec4<bool>(false, arg_0.b.a.x, false, global1.a.x)))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec2<i32>) -> f32 {
    let var_0 = arg_0.c.b.b;
    global4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-1000f * -901f))))));
    let var_1 = select(global1.a, global1.a, !all(!vec4<bool>(arg_0.d, true, true, true)) || (-35459i < arg_2.x));
    global0 = array<vec2<i32>, 15>();
    global2 = array<Struct_4, 7>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1088f, 561f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_div_f32(336f, _wgslsmith_f_op_f32(func_4(Struct_4(u_input.a.x != u_input.a.x, !(false && global1.a.x), Struct_2(u_input.a.x, Struct_1(vec3<bool>(global1.c.x, false, true), global1.b, global1.c)), _wgslsmith_f_op_f32(-arg_2) != arg_1.x), _wgslsmith_f_op_vec2_f32(arg_1 * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(u_input.a.x, Struct_1(global1.a, 36175u, global1.a.yy)), global1.c, u_input.a.x)), arg_1))), select(vec2<i32>(~72621i, _wgslsmith_mult_i32(34262i, 0i)), u_input.a.yx, select(select(vec2<bool>(false, global1.c.x), vec2<bool>(global1.a.x, global1.a.x), false), select(global1.a.xy, vec2<bool>(true, global1.c.x), global1.a.xx), select(vec2<bool>(global1.c.x, global1.a.x), global1.a.yz, vec2<bool>(true, global1.c.x)))))));
    global3 = _wgslsmith_mod_u32(67349u, 25491u);
    global0 = array<vec2<i32>, 15>();
    global2 = array<Struct_4, 7>();
    global1 = Struct_1(global1.a, _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(global1.b, 4294967295u, global1.b, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(29189u, global1.b, 22618u, global1.b) & vec4<u32>(4294967295u, 14684u, 66614u, 4661u), ~vec4<u32>(global1.b, global1.b, global1.b, global1.b))) ^ global1.b, vec2<bool>(false, all(vec3<bool>(!global1.a.x, true, true))));
    return -552f;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> u32 {
    global4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))) - _wgslsmith_f_op_f32(-1166f - 120f)), _wgslsmith_div_f32(-144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(-2870f, -778f, 257f, 395f), vec2<f32>(870f, -311f), 1f))))));
    let var_0 = global2[_wgslsmith_index_u32(arg_2.b.b, 7u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1350f - -402f)))) - -2798f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(-317f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-376f)), _wgslsmith_f_op_f32(-var_1)))));
    global3 = firstLeadingBit(firstLeadingBit(76992u));
    return 1u & _wgslsmith_mult_u32(global1.b, select(var_0.c.b.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(2396u, 18047u, arg_2.b.b, global1.b), reverseBits(vec4<u32>(var_0.c.b.b, arg_0, 4294967295u, var_0.c.b.b))), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_u32(_wgslsmith_div_u32(global1.b, global1.b), 4294967295u);
    global1 = Struct_1(global1.a, _wgslsmith_add_u32(0u, max(~(~56613u), 0u)), global1.c);
    let var_1 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(26337i & u_input.a.x, _wgslsmith_mod_i32(~24654i, u_input.a.x)), vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x)), Struct_1(select(select(!vec3<bool>(true, false, global1.c.x), global1.a, !global1.a), !(!vec3<bool>(global1.a.x, global1.c.x, false)), global1.a.x), 0u, vec2<bool>(!(true & global1.a.x), global1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(var_1.b.b, ~1u), 2947u, ~reverseBits(global1.b), ~global1.b) | select(vec4<u32>(~var_1.b.b, 1u, global1.b, func_1(37553u, var_1.b.c.x, var_1, 1i)), ~vec4<u32>(global1.b, var_1.b.b, var_1.b.b, 3269u), select(!vec4<bool>(false, var_1.b.c.x, global1.c.x, global1.c.x), !vec4<bool>(false, global1.c.x, global1.c.x, true), select(vec4<bool>(var_1.b.a.x, false, global1.c.x, var_1.b.a.x), vec4<bool>(var_1.b.a.x, true, global1.c.x, var_1.b.c.x), global1.a.x))));
}

