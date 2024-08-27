struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32 = -1i;

var<private> global2: array<Struct_1, 24>;

var<private> global3: array<Struct_1, 28>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> f32 {
    global2 = array<Struct_1, 24>();
    let var_0 = arg_1;
    let var_1 = Struct_2(arg_3.a.x);
    var var_2 = 0u;
    let var_3 = ~(u_input.a >> (firstLeadingBit(countOneBits(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(1276f - _wgslsmith_f_op_f32(abs(var_0.b)));
}

fn func_2(arg_0: bool) -> vec2<f32> {
    global3 = array<Struct_1, 28>();
    let var_0 = ~vec2<u32>(0u << (select(abs(u_input.a.x), u_input.d, u_input.c.x < u_input.c.x) % 32u), u_input.a.x);
    var var_1 = arg_0;
    global0 = ~60681u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3((_wgslsmith_mult_u32(31971u, u_input.d) > max(u_input.d, 39932u)) || true, Struct_3(!vec2<bool>(arg_0, arg_0), 1000f), arg_0, Struct_3(!(!vec2<bool>(arg_0, arg_0)), -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(125f, 328f)))));
    return vec2<f32>(1000f, 590f);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-825f, 751f))), _wgslsmith_div_vec2_f32(vec2<f32>(-505f, -1904f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1222f, -506f)))) * _wgslsmith_f_op_vec2_f32(func_2(true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1652f, 243f))))));
    let var_1 = all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true), all(vec2<bool>(true, true)))) | true;
    global2 = array<Struct_1, 24>();
    global3 = array<Struct_1, 28>();
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1316f, _wgslsmith_f_op_f32(trunc(-396f)))) + vec4<f32>(_wgslsmith_f_op_f32(117f * var_0.x), -1650f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * -1000f), var_0.x))));
    return _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 1000f) * var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    global0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(~u_input.a.x, max(u_input.a.x, 4294967295u), 2780u)), ~u_input.a.zzy), firstTrailingBit(~1u));
    var var_1 = 0u;
    global3 = array<Struct_1, 28>();
    global1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~_wgslsmith_mod_u32(u_input.d, u_input.d) << (u_input.a.x % 32u), select(firstLeadingBit(1u << (u_input.d % 32u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.d, 0u), abs(u_input.a.yyx)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))))));
}

