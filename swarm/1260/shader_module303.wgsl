struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(28070u), Struct_1(4294967295u), Struct_1(41689u), Struct_1(39472u));

var<private> global1: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global2: u32;

var<private> global3: array<vec3<f32>, 21>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    global1 = array<vec2<bool>, 29>();
    let var_0 = Struct_3(vec2<bool>(false, all(vec4<bool>(true, true, true, false))), abs(~vec4<u32>(1u, 39952u, 4294967295u, 1u)) ^ _wgslsmith_div_vec4_u32(~(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 36862u) | vec4<u32>(u_input.a.x, 4294967295u, u_input.b, 6233u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(0u, 0u)), u_input.a.x, u_input.a.x, ~u_input.b)));
    var var_1 = vec4<u32>(abs(min(~var_0.b.x, 4294967295u)) & u_input.b, _wgslsmith_dot_vec3_u32(~u_input.a, _wgslsmith_sub_vec3_u32(u_input.a, ~_wgslsmith_mod_vec3_u32(var_0.b.wyx, u_input.a))), _wgslsmith_mult_u32(~u_input.b, var_0.b.x), ~10934u);
    global0 = array<Struct_1, 4>();
    global2 = ~u_input.b << (1u % 32u);
    return !vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(782f * -473f) - 810f) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -853f), -379f, var_0.a.x)), select(true, !var_0.a.x && (var_0.a.x && true), any(select(vec2<bool>(var_0.a.x, true), vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(true, var_0.a.x)))));
}

fn func_2() -> Struct_4 {
    var var_0 = select(!func_3(), vec3<bool>(true, !any(vec4<bool>(true, false, false, false)) || any(vec3<bool>(true, true, true)), all(vec3<bool>(false, true, true))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), -1i < u_input.d.x)));
    let var_1 = ~1u;
    let var_2 = u_input.d.xzy;
    var var_3 = 14099i;
    var var_4 = ~(-_wgslsmith_add_i32(u_input.c, var_2.x));
    return Struct_4(vec2<i32>(var_2.x, var_2.x));
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_div_u32(~14315u, _wgslsmith_dot_vec4_u32(~reverseBits(~vec4<u32>(u_input.b, u_input.a.x, 1u, 4294967295u)), ~(~vec4<u32>(25821u, 41908u, 23096u, 4294967295u) << (max(vec4<u32>(1u, u_input.b, 0u, u_input.a.x), vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x)) % vec4<u32>(32u)))));
    global3 = array<vec3<f32>, 21>();
    global1 = array<vec2<bool>, 29>();
    global0 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1050f)));
    return Struct_2(global0[_wgslsmith_index_u32(~(~(u_input.a.x ^ 2897u)), 4u)], arg_1.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_1(47339u);
    let var_1 = arg_0.b;
    let var_2 = !(!func_3());
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2053f - 991f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1730f, -1527f))), !any(global1[_wgslsmith_index_u32(4294967295u, 29u)]))) - 683f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(373f, _wgslsmith_f_op_f32(f32(-1f) * -915f))))));
    let var_4 = func_2();
    return min(_wgslsmith_mult_u32(arg_0.a.a, ~var_0.a), 42161u) & arg_1.a.a;
}

fn func_1() -> Struct_3 {
    global1 = array<vec2<bool>, 29>();
    global2 = _wgslsmith_add_u32(func_5(Struct_2(global0[_wgslsmith_index_u32(1u, 4u)], ~u_input.d.x), func_4(false, -u_input.d.xzz, func_2())), select(u_input.b >> (_wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(u_input.b, u_input.a.x)) % 32u), u_input.b, true));
    let var_0 = ~(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), u_input.a.xx)) | ~u_input.a.x) | 1577u;
    var var_1 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)));
    var var_2 = Struct_1(1u);
    return Struct_3(func_3().zz, select(~((vec4<u32>(29096u, 0u, 30385u, u_input.b) | vec4<u32>(1u, 4294967295u, var_2.a, 0u)) | (vec4<u32>(var_0, var_2.a, var_2.a, 26319u) ^ vec4<u32>(16549u, var_0, 77728u, 3288u))), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 0u, var_0, var_2.a), ~vec4<u32>(u_input.a.x, 4294967295u, 7640u, 4294967295u)), select(select(select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, false), var_1.x), !vec4<bool>(false, var_1.x, false, true), !vec4<bool>(var_1.x, true, false, var_1.x)), vec4<bool>(true, !var_1.x, var_1.x, !var_1.x), vec4<bool>(u_input.a.x > 4294967295u, !var_1.x, any(global1[_wgslsmith_index_u32(17030u, 29u)]), var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_4(true, vec3<i32>(_wgslsmith_add_i32(~u_input.e.x >> (4294967295u % 32u), u_input.e.x), (i32(-1i) * -1i) & (_wgslsmith_dot_vec3_i32(u_input.d.zzw, u_input.d.wzz) ^ ~u_input.e.x), ~func_4(var_0.a.x, vec3<i32>(-1145i, u_input.d.x, 1i), Struct_4(vec2<i32>(u_input.c, -10753i))).b << (u_input.a.x % 32u)), func_2());
    let var_2 = select(!(!select(select(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, false, false), false), select(vec4<bool>(false, var_0.a.x, true, false), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, false, false)), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x))), !(!(!(!vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x)))), true);
    var var_3 = ~vec3<u32>(~_wgslsmith_add_u32(~25543u, firstLeadingBit(33419u)), 39299u, 1u);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-136f * -450f))));
    var var_5 = !func_1().a.x;
    var var_6 = -800f;
    var var_7 = var_1.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, global3[_wgslsmith_index_u32(41894u, 21u)], ~var_0.b.xxx, reverseBits(u_input.e) ^ u_input.e);
}

