struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec2<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = !select(select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec4<bool>(true, true, false, true))), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), select(true, true, true)), true);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -275f), _wgslsmith_f_op_f32(floor(arg_0.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.a)), _wgslsmith_f_op_f32(min(arg_0.a, arg_0.a))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-838f, arg_0.a))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, arg_0.a)))))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> vec3<f32> {
    var var_0 = -max(u_input.a | max(max(vec2<i32>(-63927i, -17056i), u_input.c.zy), vec2<i32>(global1.x, u_input.d) >> (vec2<u32>(4294967295u, global0.x) % vec2<u32>(32u))), abs(select(vec2<i32>(-49658i, 45249i), u_input.c.zz, vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1425f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(423f - arg_0.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-401f, -539f))) + -212f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(-2064f))) * _wgslsmith_f_op_f32(ceil(arg_0.a))))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(arg_0.a - 121f));
    var var_3 = Struct_1(-434f);
    let var_4 = 1014f;
    return vec3<f32>(_wgslsmith_f_op_f32(928f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_4 + 1109f), _wgslsmith_f_op_f32(var_3.a * -1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(202f - 103f) + _wgslsmith_f_op_f32(sign(var_1.x))))), 1000f, var_2.a);
}

fn func_1() -> Struct_1 {
    let var_0 = ~0u;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1100f) - _wgslsmith_f_op_f32(1000f - -604f))), -35116i, ~13693i ^ (u_input.c.x | ~global1.x))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-154f, _wgslsmith_f_op_f32(ceil(-1997f)), _wgslsmith_f_op_f32(max(-508f, 288f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1778f, -705f, -347f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(166f, -464f, -231f))))))));
    global1 = u_input.c.xz;
    global0 = select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(100550u, global0.x, u_input.b.x, global0.x) & vec4<u32>(47270u, ~4294967295u, ~1u, ~global0.x), vec4<u32>(global0.x, 1u, ~_wgslsmith_mult_u32(global0.x, 0u), firstLeadingBit(_wgslsmith_dot_vec3_u32(global0.zxx, vec3<u32>(global0.x, 1u, 54813u)))), abs(firstTrailingBit(vec4<u32>(u_input.b.x, 4294967295u, 44352u, u_input.b.x) >> (vec4<u32>(global0.x, 1u, 0u, 1u) % vec4<u32>(32u))))), vec4<u32>(~(~u_input.b.x), ~1u, ~var_0, max(4124u, global0.x & 22293u)) << (~(~(~vec4<u32>(var_0, u_input.b.x, 1u, 6460u))) % vec4<u32>(32u)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), !all(select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    global0 = vec4<u32>(var_0, ~(~global0.x), var_0, u_input.b.x);
    return Struct_1(-1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1419f;
    var var_1 = func_1();
    let var_2 = Struct_1(var_1.a);
    global0 = abs(select(vec4<u32>(firstTrailingBit(4294967295u), u_input.b.x >> (4294967295u % 32u), global0.x, 1u ^ min(0u, u_input.b.x)), max(abs(~vec4<u32>(u_input.b.x, global0.x, u_input.b.x, global0.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.b.x, global0.x), vec4<u32>(global0.x, u_input.b.x, u_input.b.x, global0.x)), ~vec4<u32>(u_input.b.x, u_input.b.x, 0u, 4294967295u))), all(vec3<bool>(true, true, true))));
    var_0 = _wgslsmith_f_op_f32(abs(var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(-u_input.a.x) << (34540u % 32u), firstLeadingBit(-global1.x) & global1.x, ~global1.x, -reverseBits(~u_input.a.x)));
}

