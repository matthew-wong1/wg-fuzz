struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 14>;

var<private> global1: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(-10258i, -84824i, 57092i), vec3<i32>(i32(-2147483648), -7238i, 1i), vec3<i32>(0i, 17386i, 2951i), vec3<i32>(-29011i, 1i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(-37972i, 0i, 0i), vec3<i32>(1611i, -3663i, 1i), vec3<i32>(-8933i, 1i, 28296i), vec3<i32>(1i, 24937i, 0i), vec3<i32>(-17558i, 6343i, 60975i), vec3<i32>(-1i, 1i, i32(-2147483648)), vec3<i32>(26663i, 2496i, -65i), vec3<i32>(10055i, 70676i, -28107i), vec3<i32>(54559i, -32713i, 26534i), vec3<i32>(56530i, 25626i, 10902i), vec3<i32>(0i, i32(-2147483648), -32738i), vec3<i32>(-18502i, 23060i, 6990i), vec3<i32>(0i, 38798i, 0i), vec3<i32>(27896i, 1i, -14056i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = vec3<bool>(true, true, true);
    var var_1 = abs(u_input.c.x);
    let var_2 = Struct_1(arg_2.c.x, countOneBits(4294967295u), arg_2.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), -805f, !(_wgslsmith_f_op_f32(floor(arg_1.x)) > _wgslsmith_div_f32(arg_2.d, arg_3.d)))));
    let var_3 = Struct_2(!(_wgslsmith_add_u32(22524u, arg_3.c.x) < (4294967295u << (arg_2.b % 32u))) && false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global0[_wgslsmith_index_u32(0u, 14u)], vec2<f32>(var_2.d, arg_1.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.ww * vec2<f32>(arg_1.x, arg_1.x)) - _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(var_2.c.x, 14u)]))))));
    return 69629u;
}

fn func_2() -> vec2<u32> {
    let var_0 = abs(u_input.d) & _wgslsmith_dot_vec4_u32(u_input.e, ~select(vec4<u32>(1u, u_input.e.x, u_input.e.x, 0u), ~vec4<u32>(1u, u_input.e.x, u_input.b, u_input.d), true));
    var var_1 = u_input.e.yyy;
    let var_2 = Struct_1(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), ~(~1u), ~vec2<u32>(44691u, (4294967295u << (var_0 % 32u)) | var_0), -308f);
    let var_3 = Struct_1(1u, 16735u, select(vec2<u32>(func_3(true, vec4<f32>(var_2.d, var_2.d, -904f, -780f), Struct_1(var_0, u_input.e.x, var_1.xz, var_2.d), var_2), _wgslsmith_dot_vec2_u32(abs(var_1.xz), max(vec2<u32>(var_1.x, 95874u), vec2<u32>(4294967295u, var_2.a)))), ~vec2<u32>(var_0, _wgslsmith_div_u32(var_0, var_2.a)), true), 318f);
    global1 = array<vec3<i32>, 19>();
    return vec2<u32>(~var_2.a, ~var_2.c.x);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-754f, arg_2, arg_2))) + vec3<f32>(2248f, 776f, arg_3.d)))));
    var var_1 = all(!vec3<bool>(all(vec2<bool>(true, true)), true, true));
    global1 = array<vec3<i32>, 19>();
    var var_2 = Struct_2(all(select(vec4<bool>(all(vec4<bool>(false, true, false, true)), true, true, true), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), false, true), any(vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(4294967295u, 14u)]));
    let var_3 = 45587u;
    return var_3;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global1 = array<vec3<i32>, 19>();
    var var_0 = arg_0.a;
    global1 = array<vec3<i32>, 19>();
    global0 = array<vec2<f32>, 14>();
    var var_1 = any(vec4<bool>(~_wgslsmith_mod_u32(arg_2.a, arg_2.c.x) < arg_2.a, ~(-2147483647i) < min(i32(-1i) * -510i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c.x, -24760i), vec3<i32>(10483i, -50823i, arg_1))), !all(vec4<bool>(true, true, arg_0.a, arg_0.a)), false));
    return Struct_1(_wgslsmith_clamp_u32(35793u, ~_wgslsmith_mod_u32(~39064u, reverseBits(u_input.d)), ~arg_2.c.x), ~func_4(_wgslsmith_f_op_f32(-477f * _wgslsmith_div_f32(arg_0.b.x, arg_2.d)), u_input.c.x >> ((arg_2.c.x ^ 4294967295u) % 32u), -429f, Struct_1(0u, ~0u, func_2(), _wgslsmith_f_op_f32(-716f + arg_0.b.x))), arg_2.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_2.d)), arg_0.b.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_2(!all(select(select(vec3<bool>(arg_2.x, true, arg_2.x), vec3<bool>(arg_2.x, true, arg_2.x), arg_2.x), !vec3<bool>(true, false, arg_2.x), !vec3<bool>(false, false, arg_2.x))), global0[_wgslsmith_index_u32(~(abs(~arg_0.c.x) & 22934u), 14u)]);
    global1 = array<vec3<i32>, 19>();
    var var_1 = _wgslsmith_mod_vec4_u32(~u_input.e, ~(~u_input.e));
    let var_2 = func_1(var_0, -1i, func_1(var_0, u_input.c.x, Struct_1(4294967295u, abs(arg_0.c.x), vec2<u32>(~1u, ~0u), 470f)));
    global0 = array<vec2<f32>, 14>();
    return _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.e.x, ~1u), arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 14>();
    let var_0 = vec3<bool>(false, all(!vec3<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(false, true, true)), all(vec4<bool>(false, true, true, false)))), any(vec4<bool>(true, true, true, true)));
    let var_1 = vec4<u32>(~u_input.b, _wgslsmith_add_u32(select(u_input.e.x & 0u, 14603u << (u_input.b % 32u), !var_0.x), 0u) << (~24430u % 32u), ~(44323u << (u_input.b % 32u)) << (u_input.d % 32u), 54927u);
    var var_2 = Struct_1(u_input.d >> (0u % 32u), ~select(u_input.b, _wgslsmith_dot_vec3_u32(u_input.e.wxz, u_input.e.zzx), false) << (~_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 64043u), ~4294967295u) % 32u), (select(vec2<u32>(0u, 0u), var_1.xx, !vec2<bool>(false, var_0.x)) & ~(~var_1.yw)) ^ u_input.e.xz, 834f);
    var var_3 = _wgslsmith_div_vec4_u32(min(~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, var_2.a, var_2.a, u_input.d), ~u_input.e), ~(~abs(vec4<u32>(u_input.d, var_1.x, 4294967295u, var_2.b)))), vec4<u32>(~var_1.x, _wgslsmith_mult_u32(0u, func_5(func_1(Struct_2(true, global0[_wgslsmith_index_u32(u_input.e.x, 14u)]), u_input.a, Struct_1(var_2.a, 1u, vec2<u32>(4294967295u, 25193u), 2017f)), vec3<i32>(u_input.c.x, u_input.c.x, -17268i) ^ vec3<i32>(u_input.c.x, -1i, u_input.a), select(vec2<bool>(var_0.x, true), var_0.xz, vec2<bool>(true, var_0.x)))), func_4(var_2.d, 8938i, _wgslsmith_f_op_f32(min(1103f, -154f)), Struct_1(30794u, 1u, var_2.c, 1540f)) >> (min(func_1(Struct_2(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 14u)]), u_input.c.x, Struct_1(10536u, var_2.b, var_1.xx, var_2.d)).c.x, ~1u) % 32u), 4294967295u));
    let var_4 = Struct_2(!any(var_0.zy), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(~23467u, 14u)] * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.d, var_2.d)))), vec2<f32>(1422f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(~func_2().x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(var_3.x ^ u_input.d, 14u)] - _wgslsmith_div_vec2_f32(vec2<f32>(134f, var_2.d), var_4.b)))) * _wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(~func_2().x, 14u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.b.x, 115f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1406f, var_2.d) + vec2<f32>(-118f, var_2.d))))), _wgslsmith_mod_u32(70102u, ~(~1u)), vec2<u32>(var_1.x, ~var_3.x), vec3<f32>(-1625f, _wgslsmith_f_op_f32(floor(var_4.b.x)), var_2.d));
}

