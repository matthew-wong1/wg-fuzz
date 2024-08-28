struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_2(vec3<bool>(any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, false), true)), -863i >= u_input.c, true), select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, false), true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), false), true), true), 4294967295u | u_input.a.x, select(~_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(67233u, u_input.e.x, u_input.e.x)) < (~u_input.e.x << (_wgslsmith_div_u32(22773u, u_input.e.x) % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -930f) >= _wgslsmith_f_op_f32(step(773f, 1f)), all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), false))));
    let var_1 = Struct_5(Struct_4(Struct_2(vec3<bool>(any(var_0.b), true, var_0.d), !(!var_0.b), u_input.a.x, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(316f, 876f, 1386f, -1166f)) * vec4<f32>(1000f, -392f, -197f, 389f)) - vec4<f32>(-579f, 1204f, -2103f, 1000f))), Struct_2(!vec3<bool>(var_0.b.x || false, !var_0.b.x, select(var_0.a.x, false, var_0.d)), vec2<bool>(true, true), 4294967295u, any(!select(vec2<bool>(var_0.d, false), var_0.a.zz, false))));
    let var_2 = Struct_1(~vec4<u32>(_wgslsmith_div_u32(~var_0.c, _wgslsmith_mult_u32(1u, 13662u)), _wgslsmith_mod_u32(39961u, _wgslsmith_mult_u32(4294967295u, var_0.c)), 1u, var_1.a.a.c), vec3<u32>(_wgslsmith_div_u32(1u, var_1.a.a.c), var_1.b.c, var_0.c), vec2<bool>(all(select(select(var_1.b.a.yx, var_1.a.a.a.xy, vec2<bool>(false, true)), var_0.a.yy, select(vec2<bool>(true, var_0.a.x), var_1.a.a.b, var_0.b))), any(select(vec3<bool>(false, var_0.d, false), select(var_1.b.a, vec3<bool>(var_1.b.a.x, var_0.b.x, var_1.a.a.b.x), var_0.d), any(var_0.a.yz)))));
    global0 = array<Struct_3, 17>();
    var_0 = Struct_2(select(!select(var_1.a.a.a, select(var_1.a.a.a, var_1.a.a.a, var_1.b.a), select(vec3<bool>(true, var_0.d, var_2.c.x), var_1.b.a, var_1.b.a.x)), var_1.a.a.a, all(var_0.a)), vec2<bool>(true, true | !(13771i <= u_input.c)), var_2.b.x, !select(var_2.c.x && true, false, false) | var_1.a.a.b.x);
    return vec3<u32>(66677u, ~var_2.b.x, reverseBits(~4294967295u));
}

fn func_2() -> bool {
    global0 = array<Struct_3, 17>();
    let var_0 = u_input.a;
    global0 = array<Struct_3, 17>();
    global0 = array<Struct_3, 17>();
    let var_1 = func_3();
    return true;
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> StorageBuffer {
    global0 = array<Struct_3, 17>();
    global0 = array<Struct_3, 17>();
    var var_0 = select(true, func_2(), any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))) && true;
    let var_1 = vec3<u32>(u_input.e.x, u_input.a.x, countOneBits(countOneBits(4294967295u) << (~u_input.e.x % 32u)) | (34050u ^ ~u_input.a.x));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-610f)) - _wgslsmith_f_op_f32(960f + -2174f)), _wgslsmith_f_op_f32(f32(-1f) * -690f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f) - 685f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-729f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1404f), _wgslsmith_div_f32(-1054f, -1519f)))));
    global0 = array<Struct_3, 17>();
    let x = u_input.a;
    s_output = func_1(vec4<i32>(u_input.b, u_input.c, 1i, -35920i), ((5775i >> (1u % 32u)) | u_input.d) ^ -2147483647i);
}

