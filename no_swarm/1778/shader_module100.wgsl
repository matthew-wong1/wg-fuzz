struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(3264i, i32(-2147483648)), false);

var<private> global2: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(-21295i, vec2<f32>(614f, 338f)), Struct_4(40021i, vec2<f32>(-475f, -1000f)), Struct_4(i32(-2147483648), vec2<f32>(323f, 239f)), Struct_4(37591i, vec2<f32>(-642f, -168f)), Struct_4(i32(-2147483648), vec2<f32>(-1352f, -1000f)), Struct_4(-20565i, vec2<f32>(806f, -1000f)), Struct_4(1i, vec2<f32>(1035f, 1638f)), Struct_4(53893i, vec2<f32>(1140f, -739f)), Struct_4(544i, vec2<f32>(247f, 1015f)), Struct_4(-51234i, vec2<f32>(1590f, -2774f)), Struct_4(-1i, vec2<f32>(-383f, 176f)), Struct_4(35378i, vec2<f32>(138f, -799f)), Struct_4(-1i, vec2<f32>(1379f, -538f)), Struct_4(-31054i, vec2<f32>(-248f, 2467f)), Struct_4(0i, vec2<f32>(-1000f, -1000f)), Struct_4(49627i, vec2<f32>(-1642f, 1581f)), Struct_4(-1i, vec2<f32>(272f, 291f)));

var<private> global3: Struct_5 = Struct_5(false, vec4<bool>(true, true, false, true), Struct_3(-593f), 70579u);

var<private> global4: array<vec4<bool>, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = global2[_wgslsmith_index_u32(global3.d, 17u)];
    let var_1 = ~(~reverseBits(~(11348u << (0u % 32u))));
    let var_2 = _wgslsmith_clamp_u32(var_1, u_input.b.x, _wgslsmith_clamp_u32(~(~(~u_input.b.x)), ~_wgslsmith_add_u32(max(global3.d, u_input.b.x), 66421u), ~global3.d ^ firstLeadingBit(max(23744u, 0u))));
    global2 = array<Struct_4, 17>();
    global0 = select(any(select(select(!vec4<bool>(global3.b.x, global1.b, false, global3.a), !vec4<bool>(global3.b.x, false, global1.b, global1.b), !global3.b), global3.b, select(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.b.x), 31u)], vec4<bool>(global3.b.x, global3.a, global3.b.x, true), vec4<bool>(false, global1.b, global3.a, true)))), !global1.b, global3.a);
    return vec4<u32>(~_wgslsmith_sub_u32(abs(firstLeadingBit(0u)), _wgslsmith_add_u32(abs(u_input.b.x), var_1)), 0u, 1u, ~(_wgslsmith_mod_u32(global3.d, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(var_1, var_1, 1u))) << (4294967295u % 32u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: i32) -> bool {
    let var_0 = arg_0.x;
    var var_1 = Struct_2(Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global1.a.x, -18709i, 29612i) >> (vec4<u32>(arg_1, arg_1, arg_1, u_input.b.x) % vec4<u32>(32u)), -vec4<i32>(2147483647i, global1.a.x, arg_2, -1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-30310i, arg_2, -6916i), ~vec3<i32>(1i, -21101i, global1.a.x))), global3.b.x), all(!arg_0));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.a));
    global2 = array<Struct_4, 17>();
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1082f + 2036f), global3.c.a, 692f, _wgslsmith_f_op_f32(global3.c.a + 116f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.c.a, 185f, 489f, global3.c.a))) - _wgslsmith_div_vec4_f32(vec4<f32>(global3.c.a, global3.c.a, global3.c.a, -256f), vec4<f32>(global3.c.a, global3.c.a, -174f, 160f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.a, -1128f, global3.c.a, global3.c.a) + vec4<f32>(1859f, 1681f, global3.c.a, global3.c.a)), vec4<f32>(-614f, -2121f, global3.c.a, global3.c.a), all(vec4<bool>(var_0, arg_0.x, false, false))))))));
    return !(var_0 & global3.b.x);
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = select(select(select(!global3.b.zzw, !(!vec3<bool>(global1.b, false, global3.a)), all(select(global3.b.xz, global3.b.zx, global3.b.zy))), vec3<bool>(-642f < global3.c.a, global1.b, true & any(global3.b)), true), !global3.b.yxx, !vec3<bool>(all(vec4<bool>(global1.b, true, global1.b, global3.b.x)), global3.b.x, func_3(vec2<bool>(global3.b.x, global3.b.x), ~67939u, _wgslsmith_mult_i32(u_input.a.x, global1.a.x))));
    global3 = Struct_5(select(global1.b, !all(global3.b.xx), !(false || (4294967295u < arg_0.x))), !select(!(!vec4<bool>(false, global1.b, true, false)), select(vec4<bool>(false, false, var_0.x, true), select(global3.b, global4[_wgslsmith_index_u32(global3.d, 31u)], global3.b), !vec4<bool>(var_0.x, true, false, global3.a)), vec4<bool>(true, global1.b, global3.a, true)), global3.c, 1u);
    var var_1 = Struct_1(~(-abs(vec2<i32>(global1.a.x, u_input.a.x) ^ vec2<i32>(global1.a.x, u_input.a.x))), func_3(select(global3.b.yx, !vec2<bool>(false, var_0.x), global3.b.zz), 28334u, i32(-1i) * -3243i));
    global1 = Struct_1(-vec2<i32>(min(select(1i, u_input.a.x, true), -10526i), _wgslsmith_clamp_i32(var_1.a.x, 2147483647i, 6638i) ^ abs(global1.a.x)), false);
    global4 = array<vec4<bool>, 31>();
    return global3.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 17>();
    global0 = true;
    global4 = array<vec4<bool>, 31>();
    let var_0 = func_2(~_wgslsmith_sub_vec4_u32(func_1(Struct_3(global3.c.a), Struct_3(global3.c.a)), vec4<u32>(global3.d, _wgslsmith_add_u32(global3.d, 1u), global3.d, global3.d & global3.d)));
    var var_1 = _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 44150u, 10472u, u_input.b.x), vec4<u32>(4294967295u, 0u, 435u, u_input.b.x)), vec4<u32>(select(4294967295u, global3.d, true), _wgslsmith_add_u32(93506u, 27869u), 1u, 0u)), func_1(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -2157f)), func_2(func_1(Struct_3(global3.c.a), func_2(vec4<u32>(u_input.b.x, 35485u, 4294967295u, u_input.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.c.a), -756f));
}

