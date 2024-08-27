struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

var<private> global1: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true));

var<private> global2: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * 291f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, -299f, arg_3))))));
    let var_1 = Struct_5(var_0.x);
    global2 = Struct_1(false, reverseBits(arg_1.b | abs(arg_1.b)));
    var var_2 = vec2<f32>(-1000f, var_1.a);
    return abs(4294967295u);
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    global2 = Struct_1(u_input.d == abs(31723u), u_input.b.x);
    var var_0 = 1000f;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1091f)), -2465f)), false);
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(72312u, u_input.d, 4294967295u, func_3(global2.a, arg_0, 1592f, var_1.a) << ((u_input.c | 23604u) % 32u)), ~vec4<u32>(~u_input.d, u_input.c << (1u % 32u), 1u, ~89764u)) & abs(~(~(~4294967295u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 555f, -1000f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(975f)), _wgslsmith_f_op_f32(-130f + 1423f), 1000f))))));
    return vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), 1f);
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: Struct_2) -> f32 {
    let var_0 = arg_1.b;
    var var_1 = arg_1.d.d;
    let var_2 = -abs(_wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.b.x, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, global2.b, -1i, arg_1.d.a.b), u_input.b), -67338i), u_input.b));
    let var_3 = 4294967295u;
    global1 = array<vec3<bool>, 31>();
    return arg_2.x;
}

fn func_5(arg_0: vec3<f32>, arg_1: f32) -> Struct_5 {
    var var_0 = u_input.c;
    var var_1 = Struct_1(-5187i < u_input.b.x, ~(~(-30950i)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(-609f, _wgslsmith_f_op_f32(step(arg_0.x, 130f))), any(!vec2<bool>(global2.a, var_1.a))))), all(!vec2<bool>(all(vec4<bool>(global2.a, global2.a, true, global2.a)), true)));
    let var_3 = Struct_1(all(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u, ~u_input.d), 31u)]), _wgslsmith_sub_i32(-(~(~global2.b)), 30507i));
    global0 = array<Struct_4, 31>();
    return Struct_5(arg_0.x);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> Struct_4 {
    let var_0 = func_5(vec3<f32>(-174f, _wgslsmith_f_op_f32(func_4(_wgslsmith_mult_i32(u_input.a << (4294967295u % 32u), u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), 31u)], _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(global2.a, u_input.b.x))))), arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1151f, 1799f)))), -1176f);
    global0 = array<Struct_4, 31>();
    var var_1 = -abs(abs(~vec4<i32>(arg_0.b.b, -10293i, -2147483647i, arg_1.a.b)));
    var var_2 = u_input.d;
    let var_3 = Struct_5(var_0.a);
    return global0[_wgslsmith_index_u32(0u, 31u)];
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: Struct_4) -> bool {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0)));
    var var_1 = func_5(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(714f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-281f * arg_0)), -956f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1168f, 653f)), _wgslsmith_f_op_vec2_f32(func_2(Struct_1(global2.a, global2.b))).x).a)) * -286f));
    let var_2 = false;
    global2 = func_1(func_1(Struct_2(Struct_1(var_2, arg_3.d.b.b | 10084i), func_1(func_1(arg_3.d, Struct_2(Struct_1(var_2, -16207i), Struct_1(var_2, arg_1), global2.a, arg_3.a)).d, func_1(Struct_2(Struct_1(false, arg_1), Struct_1(true, 1i), global2.a, Struct_1(true, -40533i)), Struct_2(Struct_1(arg_2, arg_3.a.b), arg_3.a, false, arg_3.a)).d).d.d, !(false || var_2), Struct_1(arg_1 > u_input.a, 2147483647i)), func_1(Struct_2(arg_3.a, func_1(arg_3.d, Struct_2(Struct_1(false, arg_1), arg_3.a, false, arg_3.a)).d.d, true, Struct_1(arg_2, u_input.a)), arg_3.d).d).d, func_1(Struct_2(func_1(func_1(arg_3.d, Struct_2(Struct_1(true, 0i), Struct_1(true, global2.b), global2.a, arg_3.a)).d, arg_3.d).a, Struct_1(any(vec4<bool>(true, false, false, true)), min(16530i, global2.b)), all(!vec2<bool>(false, var_2)), func_1(func_1(arg_3.d, Struct_2(Struct_1(true, -75000i), Struct_1(true, 44523i), global2.a, arg_3.a)).d, arg_3.d).d.d), arg_3.d).d).a;
    var var_3 = arg_0;
    return !(!all(!select(vec2<bool>(global2.a, true), vec2<bool>(var_2, var_2), arg_2)));
}

fn func_7(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), true & (~_wgslsmith_clamp_i32(arg_1.b, global2.b, global2.b) > (i32(-1i) * -39495i)));
    let var_1 = 0u;
    var var_2 = func_1(Struct_2(func_1(func_1(func_1(Struct_2(Struct_1(arg_1.a, u_input.a), arg_1, true, Struct_1(arg_1.a, global2.b)), Struct_2(Struct_1(arg_1.a, -1i), arg_1, true, Struct_1(arg_1.a, 1i))).d, func_1(Struct_2(arg_1, arg_1, true, arg_1), Struct_2(Struct_1(false, arg_1.b), arg_1, false, Struct_1(true, 0i))).d).d, func_1(func_1(Struct_2(Struct_1(true, 17618i), Struct_1(var_0.b, u_input.a), false, arg_1), Struct_2(Struct_1(var_0.b, global2.b), arg_1, var_0.b, arg_1)).d, Struct_2(Struct_1(false, 25782i), arg_1, var_0.b, arg_1)).d).d.a, arg_1, true, Struct_1(arg_1.a, -2147483647i)), func_1(Struct_2(func_1(func_1(Struct_2(arg_1, Struct_1(global2.a, -1i), true, arg_1), Struct_2(arg_1, arg_1, arg_1.a, Struct_1(var_0.b, -4020i))).d, func_1(Struct_2(Struct_1(global2.a, -2147483647i), Struct_1(false, 0i), false, Struct_1(global2.a, 42679i)), Struct_2(Struct_1(false, 9541i), Struct_1(false, 29882i), arg_1.a, Struct_1(false, 2147483647i))).d).a, Struct_1(true, arg_1.b), all(!vec4<bool>(true, true, var_0.b, global2.a)), func_1(func_1(Struct_2(Struct_1(true, u_input.a), arg_1, false, Struct_1(global2.a, arg_1.b)), Struct_2(arg_1, Struct_1(false, arg_1.b), arg_1.a, arg_1)).d, func_1(Struct_2(Struct_1(var_0.b, -2147483647i), arg_1, arg_1.a, Struct_1(false, -28965i)), Struct_2(arg_1, Struct_1(global2.a, u_input.a), false, Struct_1(true, 1i))).d).a), func_1(Struct_2(arg_1, func_1(Struct_2(Struct_1(false, 89135i), Struct_1(global2.a, global2.b), global2.a, Struct_1(var_0.b, 0i)), Struct_2(arg_1, Struct_1(var_0.b, u_input.a), global2.a, Struct_1(true, -1i))).a, true, func_1(Struct_2(arg_1, Struct_1(arg_1.a, u_input.a), global2.a, arg_1), Struct_2(Struct_1(false, u_input.a), Struct_1(true, global2.b), false, Struct_1(false, u_input.a))).d.d), Struct_2(Struct_1(var_0.b, 0i), Struct_1(false, 12805i), any(vec3<bool>(false, var_0.b, true)), func_1(Struct_2(Struct_1(false, 0i), arg_1, false, arg_1), Struct_2(Struct_1(var_0.b, arg_1.b), arg_1, true, arg_1)).d.d)).d).d).d.a;
    let var_3 = 29225u;
    var_2 = func_1(func_1(Struct_2(Struct_1(true, 2147483647i), arg_1, true, func_1(Struct_2(Struct_1(false, 0i), arg_1, var_2.a, Struct_1(true, u_input.b.x)), Struct_2(Struct_1(true, 2147483647i), arg_1, global2.a, arg_1)).a), func_1(Struct_2(func_1(Struct_2(arg_1, Struct_1(true, 1i), false, Struct_1(true, -2147483647i)), Struct_2(Struct_1(arg_1.a, arg_1.b), arg_1, var_0.b, Struct_1(var_2.a, u_input.b.x))).a, Struct_1(false, var_2.b), arg_1.a, Struct_1(true, 14095i)), Struct_2(func_1(Struct_2(Struct_1(false, global2.b), Struct_1(false, 20605i), global2.a, arg_1), Struct_2(arg_1, arg_1, arg_1.a, Struct_1(false, 2147483647i))).d.d, arg_1, any(vec2<bool>(false, var_0.b)), Struct_1(var_2.a, -50142i))).d).d, func_1(Struct_2(arg_1, Struct_1(false, ~u_input.b.x), any(!vec2<bool>(false, global2.a)), Struct_1(!arg_1.a, u_input.b.x)), Struct_2(func_1(Struct_2(arg_1, Struct_1(false, arg_1.b), var_2.a, arg_1), func_1(Struct_2(arg_1, arg_1, global2.a, Struct_1(global2.a, u_input.b.x)), Struct_2(arg_1, Struct_1(false, global2.b), false, arg_1)).d).a, arg_1, arg_1.a | func_1(Struct_2(arg_1, arg_1, var_0.b, arg_1), Struct_2(arg_1, arg_1, var_2.a, Struct_1(true, arg_1.b))).a.a, func_1(Struct_2(arg_1, Struct_1(false, arg_1.b), true, Struct_1(false, 6667i)), Struct_2(Struct_1(var_2.a, 0i), Struct_1(var_2.a, var_2.b), global2.a, arg_1)).a)).d).a;
    return func_1(Struct_2(arg_1, arg_1, true, func_1(func_1(Struct_2(arg_1, arg_1, false, Struct_1(false, -1i)), func_1(Struct_2(Struct_1(var_0.b, arg_1.b), Struct_1(var_2.a, global2.b), global2.a, Struct_1(false, var_2.b)), Struct_2(Struct_1(var_2.a, 64065i), arg_1, arg_1.a, arg_1)).d).d, Struct_2(func_1(Struct_2(Struct_1(var_0.b, 2147483647i), Struct_1(global2.a, var_2.b), var_0.b, Struct_1(true, -2147483647i)), Struct_2(arg_1, arg_1, true, arg_1)).d.a, arg_1, true, func_1(Struct_2(Struct_1(false, -2147483647i), arg_1, false, arg_1), Struct_2(arg_1, Struct_1(global2.a, u_input.b.x), global2.a, Struct_1(arg_1.a, arg_1.b))).d.a)).d.b), func_1(Struct_2(Struct_1(all(vec3<bool>(var_0.b, arg_1.a, true)), 1i), arg_1, all(select(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(var_1, 31u)], global1[_wgslsmith_index_u32(var_1, 31u)])), func_1(Struct_2(arg_1, arg_1, var_2.a, Struct_1(true, global2.b)), func_1(Struct_2(arg_1, Struct_1(var_0.b, -1i), arg_1.a, Struct_1(arg_1.a, u_input.a)), Struct_2(arg_1, arg_1, true, arg_1)).d).d.d), func_1(func_1(func_1(Struct_2(Struct_1(arg_1.a, global2.b), Struct_1(true, var_2.b), false, arg_1), Struct_2(Struct_1(var_0.b, -1i), Struct_1(var_0.b, -2147483647i), false, arg_1)).d, func_1(Struct_2(Struct_1(true, -4794i), arg_1, false, arg_1), Struct_2(Struct_1(var_2.a, 1i), Struct_1(false, var_2.b), var_0.b, arg_1)).d).d, func_1(Struct_2(arg_1, Struct_1(var_2.a, global2.b), true, Struct_1(var_2.a, global2.b)), func_1(Struct_2(Struct_1(global2.a, 80636i), arg_1, false, arg_1), Struct_2(arg_1, arg_1, var_2.a, Struct_1(true, global2.b))).d).d).d).d).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(u_input.c, Struct_1(func_6(-1000f, u_input.b.x, (global2.a == global2.a) & true, func_1(Struct_2(Struct_1(global2.a, global2.b), Struct_1(true, global2.b), true, Struct_1(global2.a, global2.b)), Struct_2(Struct_1(false, u_input.a), Struct_1(global2.a, 33353i), global2.a, Struct_1(global2.a, 2147483647i)))), ~_wgslsmith_mod_i32(u_input.b.x >> (63589u % 32u), 1i)));
    let var_1 = 2147483647i;
    global2 = func_1(Struct_2(var_0, var_0, func_7(4294967295u, func_1(Struct_2(var_0, var_0, true, var_0), func_1(Struct_2(var_0, Struct_1(false, global2.b), global2.a, Struct_1(global2.a, -1i)), Struct_2(Struct_1(false, u_input.b.x), Struct_1(true, var_0.b), false, var_0)).d).d.a).a, Struct_1(true, 31536i)), func_1(Struct_2(Struct_1(true, 7168i), func_1(func_1(Struct_2(Struct_1(false, 1i), Struct_1(global2.a, 47317i), var_0.a, Struct_1(global2.a, -4282i)), Struct_2(Struct_1(true, 0i), Struct_1(false, 0i), false, var_0)).d, func_1(Struct_2(var_0, Struct_1(false, 0i), false, Struct_1(true, global2.b)), Struct_2(var_0, var_0, true, Struct_1(var_0.a, var_1))).d).a, all(vec2<bool>(global2.a, true)) && func_7(4294967295u, Struct_1(true, -2147483647i)).a, func_7(min(u_input.d, u_input.d), func_7(u_input.d, var_0))), func_1(Struct_2(Struct_1(false, global2.b), var_0, true, var_0), func_1(func_1(Struct_2(Struct_1(var_0.a, 7195i), var_0, var_0.a, Struct_1(global2.a, 1i)), Struct_2(var_0, Struct_1(false, u_input.b.x), true, Struct_1(var_0.a, -11605i))).d, func_1(Struct_2(Struct_1(var_0.a, var_1), var_0, false, var_0), Struct_2(Struct_1(true, u_input.a), var_0, global2.a, var_0)).d).d).d).d).d.d;
    let var_2 = Struct_4(var_0, false, vec2<u32>(0u, ~51330u), Struct_2(Struct_1(true, abs(select(global2.b, var_0.b, true))), var_0, false, Struct_1(any(select(vec4<bool>(false, var_0.a, var_0.a, false), vec4<bool>(false, true, global2.a, global2.a), vec4<bool>(var_0.a, false, false, true))), countOneBits(0i))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1178f, -1291f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-496f, -652f) + _wgslsmith_f_op_f32(select(-836f, -270f, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, vec4<u32>(_wgslsmith_div_u32(1u >> ((u_input.c ^ 23950u) % 32u), select(var_2.c.x, u_input.d, var_2.b) | 1u), ~_wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.x, u_input.d), vec2<u32>(17204u, 20584u))), 4294967295u, 56301u));
}

