struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true));

var<private> global1: array<vec3<f32>, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(min(-(~(~u_input.a.x)), 49121i));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-223f - _wgslsmith_f_op_f32(1458f - _wgslsmith_f_op_f32(232f * _wgslsmith_f_op_f32(step(173f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_div_f32(521f, -528f)))), !(false & any(vec4<bool>(false, false, false, true)))));
}

fn func_2() -> Struct_4 {
    let var_0 = vec3<bool>(!all(vec3<bool>(any(vec2<bool>(false, false)), true, true)), any(select(vec3<bool>(u_input.a.x <= 2147483647i, false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))), any(vec4<bool>(!any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(func_3()) <= _wgslsmith_f_op_f32(abs(417f)), true, 32992u > _wgslsmith_mult_u32(u_input.c, u_input.b))));
    global1 = array<vec3<f32>, 1>();
    global0 = array<vec4<bool>, 13>();
    global1 = array<vec3<f32>, 1>();
    global1 = array<vec3<f32>, 1>();
    return Struct_4(u_input.d.x, Struct_2(~(-u_input.d.x << (~4294967295u % 32u))), Struct_3(u_input.d));
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> Struct_3 {
    let var_0 = func_2().b;
    let var_1 = min(u_input.a, vec4<i32>(u_input.d.x, 0i, -26375i, min(arg_1.b.a, arg_1.c.a.x) | var_0.a) >> (_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(7971u, u_input.e.x, u_input.c, 0u)), ~vec4<u32>(0u, u_input.c, u_input.b, u_input.b)), firstLeadingBit(min(vec4<u32>(u_input.e.x, u_input.b, u_input.e.x, 39238u), vec4<u32>(1u, 14391u, u_input.c, u_input.c)))) % vec4<u32>(32u)));
    global0 = array<vec4<bool>, 13>();
    var var_2 = -138f;
    var var_3 = u_input.a.x;
    return arg_1.c;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = func_4(reverseBits(32741u) > ~arg_1.a.x, func_2());
    global1 = array<vec3<f32>, 1>();
    var var_1 = vec2<bool>(arg_0.x, all(select(vec4<bool>(u_input.d.x > 30982i, false, all(vec4<bool>(arg_0.x, true, arg_0.x, false)), any(arg_0.zz)), global0[_wgslsmith_index_u32(abs(4294967295u) ^ ~arg_1.a.x, 13u)], vec4<bool>(-1274f < arg_1.b.x, true, !arg_0.x, arg_0.x))));
    let var_2 = arg_0.x;
    var var_3 = any(vec2<bool>(all(vec4<bool>(var_1.x, true, var_2, true)), false));
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-461f, 812f)), _wgslsmith_f_op_f32(func_1(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false), Struct_1(u_input.e, vec2<f32>(491f, 322f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -384f) - _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-132f, 2123f)), -642f)))));
    let var_2 = _wgslsmith_mod_i32(-5496i, u_input.a.x);
    let var_3 = Struct_3(-vec2<i32>(firstTrailingBit(~var_2), u_input.a.x));
    let var_4 = false;
    var var_5 = _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(select(u_input.a.zyz, max(select(u_input.a.xww, vec3<i32>(57239i, 11064i, var_3.a.x), vec3<bool>(false, var_4, false)), _wgslsmith_clamp_vec3_i32(u_input.a.wxw, vec3<i32>(var_2, var_3.a.x, u_input.d.x), vec3<i32>(7334i, var_2, u_input.d.x))), select(select(vec3<bool>(false, false, false), vec3<bool>(var_4, true, false), vec3<bool>(var_4, var_4, true)), !vec3<bool>(var_4, var_4, false), vec3<bool>(true, var_4, true))), vec3<i32>(firstLeadingBit(4791i), -u_input.d.x, -2147483647i) & u_input.a.yxy, vec3<i32>(-2147483647i >> (1u % 32u), 1i, -var_2)), vec3<i32>(max(abs(41283i), ~(-36428i >> (u_input.b % 32u))), 25474i, var_3.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~13446i, ~reverseBits(~u_input.c));
}

