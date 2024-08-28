struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21>;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, false)));

var<private> global2: array<vec2<f32>, 14>;

var<private> global3: vec2<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<i32>) -> f32 {
    var var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_f32(abs(592f));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(298f + global3.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 - global3.x))) + -539f))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(753f * 1428f);
    let var_1 = u_input.c;
    let var_2 = Struct_4(vec4<bool>(!(1i >= u_input.b.x), false, true, (max(4294967295u, 1u) != _wgslsmith_add_u32(var_1, 23566u)) | (arg_0 | true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + global3.x)), Struct_1(vec3<bool>(!(!arg_1.b.a.x), true, !any(vec3<bool>(true, false, true)))));
    global1 = array<Struct_1, 9>();
    var var_3 = arg_2.x;
    return ~select(~vec3<u32>(0u, u_input.c, var_1), ~abs(vec3<u32>(15592u, 4294967295u, 1u)), _wgslsmith_sub_u32(u_input.c, 4294967295u) < 81589u) << (max(abs(vec3<u32>(~18998u, ~var_1, 4294967295u)), ~(~vec3<u32>(12409u, 37280u, var_1))) % vec3<u32>(32u));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> vec2<bool> {
    var var_0 = ~func_4(true, Struct_2(2018f, Struct_1(arg_0.xwy)), vec2<f32>(_wgslsmith_f_op_f32(round(-724f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(-647f, global3.x), global3.x, u_input.b.yy)))));
    global1 = array<Struct_1, 9>();
    let var_1 = select(arg_0.yxx, !select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.xxx, vec3<bool>(all(vec2<bool>(arg_0.x, true)), arg_0.x, arg_1 == arg_1)), vec3<bool>(arg_0.x, arg_0.x, false));
    var var_2 = global1[_wgslsmith_index_u32(abs(~var_0.x), 9u)];
    var var_3 = Struct_5(~vec2<u32>(~var_0.x << (883u % 32u), var_0.x));
    return select(!vec2<bool>(arg_0.x, var_1.x), select(vec2<bool>(u_input.c < (44652u ^ var_3.a.x), false), var_1.yx, var_2.a.zz), vec2<bool>(true, !(!all(vec2<bool>(false, true)))));
}

fn func_1() -> u32 {
    var var_0 = Struct_2(-1000f, Struct_1(vec3<bool>(any(func_2(vec4<bool>(true, false, true, false), u_input.b.x)), ~u_input.c > 0u, false)));
    var var_1 = Struct_4(select(!vec4<bool>(var_0.b.a.x & false, var_0.b.a.x, var_0.b.a.x, all(vec2<bool>(false, true))), !vec4<bool>(u_input.b.x != 9062i, false, true, var_0.b.a.x), vec4<bool>(true, var_0.a < global3.x, _wgslsmith_f_op_f32(global3.x + -478f) <= _wgslsmith_f_op_f32(-global3.x), var_0.b.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - var_0.a) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(607f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), 154f)))), var_0.b);
    var var_2 = global0[_wgslsmith_index_u32(u_input.c, 21u)];
    let var_3 = global0[_wgslsmith_index_u32(u_input.c, 21u)];
    let var_4 = _wgslsmith_sub_u32(u_input.c, ~_wgslsmith_add_u32(u_input.c, ~u_input.c));
    return ~u_input.c ^ 1u;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = Struct_4(vec4<bool>(true, true, _wgslsmith_sub_i32(arg_0.x, ~u_input.b.x) >= ~(-53073i), false), _wgslsmith_f_op_f32(floor(global3.x)), arg_1.b);
    let var_1 = _wgslsmith_mod_i32(2147483647i, countOneBits(arg_0.x));
    var var_2 = Struct_1(select(vec3<bool>(global3.x < -322f, var_0.c.a.x | false, var_0.c.a.x), vec3<bool>(1u == u_input.c, arg_1.b.a.x, true), select(select(select(arg_1.b.a, vec3<bool>(var_0.a.x, arg_1.b.a.x, var_0.c.a.x), vec3<bool>(arg_1.b.a.x, var_0.c.a.x, arg_1.b.a.x)), var_0.c.a, false), arg_1.b.a, select(select(var_0.c.a, var_0.a.zzx, true), select(vec3<bool>(arg_1.b.a.x, false, false), arg_1.b.a, arg_1.b.a), arg_1.b.a.x))));
    let var_3 = abs(0i);
    var var_4 = arg_1.b.a.x;
    return StorageBuffer(-(~(~_wgslsmith_dot_vec4_i32(arg_0, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global2[_wgslsmith_index_u32(4294967295u, 14u)];
    global3 = _wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(u_input.c, 14u)], vec2<f32>(469f, -1249f));
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 9u)];
    var var_1 = Struct_5(vec2<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 10769u), ~vec3<u32>(4294967295u, u_input.c, u_input.c))), u_input.c));
    global0 = array<Struct_3, 21>();
    var_1 = Struct_5(min(max(firstLeadingBit(var_1.a), var_1.a), _wgslsmith_add_vec2_u32(var_1.a, ~vec2<u32>(1u, 30655u))));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(-1i, -41748i, u_input.a.x, -2147483647i) | vec4<i32>(u_input.a.x, u_input.b.x, u_input.a.x, u_input.a.x)), ~(~vec4<i32>(16475i, 7447i, u_input.a.x, u_input.a.x)), ~vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.b.x) & vec4<i32>(u_input.a.x, 0i, u_input.b.x, -2147483647i)) << (vec4<u32>(func_1() << (48253u % 32u), u_input.c, _wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.a.x, 4294967295u), var_1.a.x), func_4(true, Struct_2(global3.x, global1[_wgslsmith_index_u32(u_input.c, 9u)]), vec2<f32>(-197f, 2398f)).x) % vec4<u32>(32u)), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1210f - global3.x), -1575f), Struct_1(!var_0.a)));
}

