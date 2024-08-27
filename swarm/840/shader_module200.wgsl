struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    let var_0 = reverseBits(min(~firstLeadingBit(_wgslsmith_div_u32(78807u, u_input.d.x)), min(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d.xx))));
    global0 = array<Struct_1, 25>();
    let var_1 = Struct_4(~vec4<u32>(~u_input.d.x, firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.d.wyz, vec3<u32>(u_input.d.x, u_input.d.x, 24893u))), reverseBits(~18958u), reverseBits(countOneBits(32465u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 573f, 150f, -396f), vec4<f32>(492f, 392f, 1064f, 1244f)))))), true, Struct_3(select(vec3<bool>(true, select(false, true, false), true), vec3<bool>(select(true, false, true), true, all(vec2<bool>(false, true))), any(vec4<bool>(true, false, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-641f)) * _wgslsmith_f_op_f32(select(435f, -398f, false))) * -1000f), Struct_2(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1017f, -2367f) * vec2<f32>(1048f, 851f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-846f, -1000f), vec2<f32>(-476f, 486f)))), global0[_wgslsmith_index_u32(min(~4294967295u, countOneBits(u_input.d.x)), 25u)], 1257f));
    var var_2 = select(~var_1.a.zx, vec2<u32>(14140u, _wgslsmith_mod_u32(~(~var_1.a.x), (var_1.a.x << (var_0 % 32u)) | ~var_0)), vec2<bool>((_wgslsmith_mod_u32(50808u, var_1.a.x) ^ ~var_1.a.x) <= _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(30591u, var_1.a.x, 24592u, var_1.a.x), vec4<u32>(var_0, var_0, u_input.d.x, 0u)), ~var_0), (all(vec3<bool>(var_1.d.d.b, false, false)) == var_1.d.a.x) | all(select(vec4<bool>(false, var_1.d.a.x, var_1.d.c.a, var_1.c), vec4<bool>(true, var_1.c, var_1.d.c.a, false), vec4<bool>(var_1.c, false, false, false)))));
    var var_3 = var_1;
    return abs(var_2.x);
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 25>();
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -963f)), -174f));
    let var_1 = Struct_3(!vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-673f + -1113f))) * 2059f)), Struct_2(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -1362f), vec2<f32>(-1151f, 999f)))))), global0[_wgslsmith_index_u32(func_3(), 25u)], _wgslsmith_f_op_f32(min(787f, -1116f)));
    global0 = array<Struct_1, 25>();
    var var_2 = var_1.c.a;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)), _wgslsmith_f_op_f32(-var_1.b)));
}

fn func_1() -> StorageBuffer {
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-249f + -334f), _wgslsmith_f_op_f32(func_2())) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -245f), _wgslsmith_f_op_f32(func_2())) + _wgslsmith_f_op_f32(abs(1391f))));
    return StorageBuffer(-abs(u_input.c.x), firstLeadingBit((~u_input.b.x << (_wgslsmith_add_u32(1u, u_input.d.x) % 32u)) ^ u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(1929u, u_input.d.x) | _wgslsmith_div_u32(10357u, u_input.d.x);
    var var_1 = u_input.d.x;
    let var_2 = ~countOneBits(max(_wgslsmith_mult_u32(1u, select(u_input.d.x, 12u, true)), ~(~92u)));
    let var_3 = 1f;
    var var_4 = vec2<u32>(var_2, 1u);
    var var_5 = global0[_wgslsmith_index_u32(~5206u, 25u)];
    global0 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = func_1();
}

