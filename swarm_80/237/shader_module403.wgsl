struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 22>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: f32) -> i32 {
    global0 = array<vec3<bool>, 22>();
    global1 = arg_2;
    return ~countOneBits(-58696i);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: vec2<u32>) -> vec2<bool> {
    global1 = _wgslsmith_f_op_f32(-352f + arg_2);
    var var_0 = all(vec2<bool>(true, all(vec4<bool>(u_input.a == 1u, false, any(vec3<bool>(true, false, true)), all(vec3<bool>(false, true, false))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_0), -192f, arg_2))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-288f, -185f, -1914f, arg_2)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, arg_0, arg_0) - vec4<f32>(arg_2, 980f, arg_2, arg_2))))));
    var var_2 = (_wgslsmith_mult_i32(~u_input.d, ~(~(-2147483647i))) << (~((u_input.c & u_input.a) | u_input.a) % 32u)) << (~4294967295u % 32u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-898f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, arg_0)) - 379f))), (~arg_3.x > abs(1u)) & false)));
    return select(!vec2<bool>(true, select(any(vec3<bool>(false, true, false)), true, true)), !(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), any(vec2<bool>(false, true)))), all(select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, false, true)), true), select(true, false, false))));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(arg_0.c.x ^ ~arg_0.c.x, 20u)];
    global0 = array<vec3<bool>, 22>();
    var var_1 = !(!(!func_4(_wgslsmith_f_op_f32(f32(-1f) * -725f), func_3(vec4<i32>(-29720i, -626i, 1i, -38574i), vec4<f32>(303f, 454f, 1075f, -547f), 752f), _wgslsmith_f_op_f32(-1308f - 1000f), vec2<u32>(131698u, var_0.b))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1026f))));
    global1 = -328f;
    return Struct_2(select(select(!(!vec4<bool>(true, var_1.x, var_1.x, var_1.x)), select(select(vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, true, false, var_1.x)), vec4<bool>(false, true, true, var_1.x), var_1.x), select(!vec4<bool>(false, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, false, true, false), vec4<bool>(false, true, var_1.x, true), vec4<bool>(false, var_1.x, false, true)), true)), !vec4<bool>(!var_1.x, false, true, true), vec4<bool>(any(vec3<bool>(false, var_1.x, var_1.x)), true, true, false)), Struct_1(-2147483647i, var_0.c.x, reverseBits(~vec2<u32>(arg_0.d, arg_0.d)), 1u << (~var_0.d % 32u)), -firstTrailingBit(u_input.d), arg_0);
}

fn func_1() -> u32 {
    let var_0 = u_input.a;
    var var_1 = func_2(global2[_wgslsmith_index_u32(u_input.c, 20u)]);
    global0 = array<vec3<bool>, 22>();
    var var_2 = ~(-(vec4<i32>(_wgslsmith_div_i32(u_input.d, u_input.d), _wgslsmith_div_i32(u_input.d, -34177i), ~u_input.d, 0i) & vec4<i32>(-17975i, _wgslsmith_clamp_i32(u_input.d, -54268i, 0i), reverseBits(u_input.d), 736i ^ u_input.d)));
    let var_3 = Struct_2(vec4<bool>(var_1.a.x, var_1.a.x, true, true), var_1.d, u_input.d, func_2(Struct_1(-max(9499i, 2147483647i), ~(~var_0), vec2<u32>(~21055u, var_0 & 1u), 1u)).b);
    return ~_wgslsmith_sub_u32(u_input.a, var_3.d.d);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>, arg_3: f32) -> Struct_1 {
    global1 = arg_3;
    var var_0 = func_4(arg_3, arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -123f)), -901f), (vec2<u32>(u_input.b.x, firstLeadingBit(arg_0.c.x)) | ~vec2<u32>(arg_2.x, 51460u)) ^ countOneBits(arg_2.zz));
    var var_1 = Struct_2(vec4<bool>(any(vec4<bool>(var_0.x, !var_0.x, true, true)), var_0.x, true, !(true & select(var_0.x, var_0.x, var_0.x))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(63900u, _wgslsmith_clamp_u32(910u | arg_0.d, arg_0.b, ~4294967295u)) ^ ~arg_2.x, 20u)], arg_1 ^ (-31378i & arg_0.a), func_2(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(~u_input.c), func_2(Struct_1(arg_0.a, 35546u, vec2<u32>(4294967295u, 66566u), arg_2.x)).b.c.x), 20u)]).d);
    var_0 = select(!func_2(func_2(Struct_1(u_input.d, 31966u, arg_0.c, arg_2.x)).b).a.wz, !(!(!var_1.a.wz)), select(vec2<bool>(false, true), vec2<bool>(var_1.a.x, all(func_2(arg_0).a.yyx)), func_4(_wgslsmith_f_op_f32(arg_3 + arg_3), var_1.d.a, -599f, vec2<u32>(arg_0.b, 0u)).x && true));
    global2 = array<Struct_1, 20>();
    return Struct_1(1i, _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_add_u32(1u, u_input.e)), arg_0.b) << (~firstLeadingBit(~arg_2.x) % 32u), ~(~vec2<u32>(arg_2.x, u_input.c)), arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<bool>(true, !any(vec4<bool>(false, false, false, true)), all(vec4<bool>(true, true, true, true)) != false, true), global2[_wgslsmith_index_u32(1u, 20u)], -_wgslsmith_clamp_i32(u_input.d, 2147483647i, _wgslsmith_mod_i32(-1i, u_input.d)) & 0i, func_5(global2[_wgslsmith_index_u32(func_1(), 20u)], -u_input.d, u_input.b, 292f));
    global1 = _wgslsmith_f_op_f32(max(155f, 931f));
    global2 = array<Struct_1, 20>();
    global1 = -1760f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

