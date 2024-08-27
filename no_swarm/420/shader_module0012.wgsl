struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: Struct_4,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(vec3<f32>(427f, -1000f, 917f), true, Struct_4(-465f, 1u), -22693i, false), Struct_5(vec3<f32>(-716f, -1000f, -1346f), false, Struct_4(-689f, 0u), -29718i, true), Struct_5(vec3<f32>(-561f, 703f, -1026f), true, Struct_4(-1261f, 1u), 0i, true), Struct_5(vec3<f32>(361f, -1109f, 805f), true, Struct_4(1209f, 10753u), i32(-2147483648), false), Struct_5(vec3<f32>(495f, -1388f, -2135f), false, Struct_4(-1058f, 0u), 1i, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a)))));
    var var_1 = -u_input.a;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-573f, -1000f)))), ~31611u);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-1194f * -559f));
    var_2 = Struct_4(_wgslsmith_f_op_f32(-748f - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.a, -100f)), -1229f)))), abs(~105953u));
    return -min(arg_1, ~arg_1 << (35152u % 32u));
}

fn func_2() -> Struct_5 {
    let var_0 = vec4<i32>(func_3(Struct_1(-415f), -abs(u_input.a)), 1i, u_input.a, _wgslsmith_mod_i32(1i, u_input.a | -(~2147483647i)));
    return global1[_wgslsmith_index_u32(firstTrailingBit(~(((4294967295u >> (u_input.b % 32u)) & u_input.b) | 4294967295u)), 5u)];
}

fn func_1(arg_0: vec3<f32>) -> Struct_5 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(~select(~2147483647i & u_input.a, ~(~u_input.a), (u_input.a != u_input.a) && true), -u_input.a, u_input.a);
    var_0 = abs(vec3<i32>(-var_0.x, max(20057i, -1i), -50714i));
    var var_1 = _wgslsmith_div_i32(var_0.x, ~reverseBits(-1i)) | u_input.a;
    var var_2 = func_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))));
    var_0 = min(firstTrailingBit(firstLeadingBit(abs(-vec3<i32>(var_2.d, var_2.d, var_0.x)))), ~(~(~(vec3<i32>(0i, -1i, var_0.x) >> (vec3<u32>(u_input.b, u_input.b, 1u) % vec3<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(882f, var_2.a.x, 479f, -241f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1435f, -803f, 166f, 1852f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 467f, 1982f, var_2.c.a))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(692f, var_2.a.x, -1390f, 1825f))) - vec4<f32>(var_2.a.x, var_2.c.a, var_2.c.a, var_2.a.x)))));
}

