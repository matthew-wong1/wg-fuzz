struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 2>;

var<private> global1: Struct_1 = Struct_1(-1466f, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_5) -> f32 {
    let var_0 = Struct_1(arg_1.a, false);
    var var_1 = ~max(_wgslsmith_div_u32(abs(min(u_input.b.x, u_input.b.x)), 0u), ~(~u_input.a.x) & ~abs(17793u));
    let var_2 = arg_0;
    var var_3 = vec4<u32>(u_input.b.x << (~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 10311u, u_input.a.x)) << ((6634u << (u_input.a.x % 32u)) % 32u)) % 32u), _wgslsmith_mult_u32(firstLeadingBit(firstLeadingBit(~u_input.b.x)), u_input.a.x), u_input.b.x & abs(68338u), abs(firstTrailingBit(1u)));
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1951f * arg_3.a))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-global1.a)))), var_0.a));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-506f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -430f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4, global1.a) - arg_3.b.x))))));
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(global1.b, vec2<f32>(1610f, global1.a), Struct_1(global1.a, true), vec4<f32>(global1.a, -1528f, global1.a, global1.a)), Struct_1(694f, false), select(vec4<bool>(false, true, global1.b, global1.b), vec4<bool>(true, global1.b, global1.b, global1.b), global1.b), Struct_5(798f, vec3<f32>(global1.a, global1.a, global1.a)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.a)) * 359f)) - _wgslsmith_f_op_f32(f32(-1f) * -1912f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.a)) - -712f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.a, var_0, var_0, var_0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 246f, 211f, 657f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, global1.a, 1000f, global1.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-325f - -190f) * global1.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0, var_0)), _wgslsmith_div_f32(global1.a, var_0))), var_0, var_0))));
    global0 = array<vec3<i32>, 2>();
    var var_2 = reverseBits(vec4<u32>(~(~u_input.b.x), 46333u, 1u, _wgslsmith_mod_u32(abs(0u), 7192u) << (~u_input.a.x % 32u)));
    let var_3 = max(-1i >> (~((var_2.x & 62854u) & firstTrailingBit(u_input.b.x)) % 32u), _wgslsmith_mod_i32(u_input.d.x, _wgslsmith_mod_i32(u_input.d.x, u_input.d.x) << (var_2.x % 32u)));
    return Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2033f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0))))) - global1.a), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -324f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -248f)), var_1.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> f32 {
    let var_0 = func_2();
    return 1848f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 726f;
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f - 163f)) * _wgslsmith_f_op_f32(func_1(vec3<bool>(global1.b, true, true), -27915i))) - -163f), global1.b);
    var var_1 = Struct_2(false, u_input.c, global1.a, Struct_1(-608f, global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - -1042f) + 215f)));
    let var_2 = u_input.a.x;
    let var_3 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(var_2 << (~14572u % 32u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.a, -918f, global1.a))))), vec4<f32>(var_1.d.a, _wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(var_1.c + -137f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-850f)) + -140f), var_1.c))));
}

