struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(-1672f, ~0u);
    global0 = array<Struct_1, 17>();
    var var_1 = true;
    var var_2 = true;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(211f + _wgslsmith_f_op_f32(var_0.a - -1269f))), var_0.a)), u_input.e);
    return ~var_0.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>) -> u32 {
    global0 = array<Struct_1, 17>();
    var var_0 = reverseBits(arg_1.yzx);
    let var_1 = Struct_1(all(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))));
    var_0 = arg_1.zxy;
    return func_3();
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = u_input.c.zy;
    let var_1 = ~vec4<u32>(_wgslsmith_clamp_u32(28509u, select(arg_0.x | u_input.e, 4294967295u, false), arg_0.x), max(_wgslsmith_dot_vec2_u32(arg_0.zx, vec2<u32>(u_input.e, 1u) & vec2<u32>(u_input.b, 1u)), func_2(select(vec2<i32>(u_input.c.x, -70602i), u_input.a.yy, true), vec4<u32>(arg_0.x, u_input.e, 1u, u_input.b))), abs(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.e, u_input.e, arg_0.x), _wgslsmith_dot_vec2_u32(arg_0.zx, arg_0.yz))), min(reverseBits(1u), ~(~arg_0.x)));
    global0 = array<Struct_1, 17>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1295f));
    var_2 = _wgslsmith_f_op_f32(select(-918f, -1103f, any(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true)))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(356f * -602f), 2059f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -534f)))))), ~(select(_wgslsmith_mult_u32(4294967295u, var_1.x), u_input.d, true) << (10000u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    let var_0 = func_1(_wgslsmith_div_vec3_u32(select(~(vec3<u32>(4294967295u, 33532u, u_input.d) | vec3<u32>(4294967295u, u_input.b, 4294967295u)), countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, 17694u, 29073u), vec3<u32>(10250u, 39860u, 19119u))), vec3<bool>(true, true, true)), vec3<u32>(23731u, ~26606u, ~u_input.d)));
    let var_1 = Struct_3(Struct_1(true));
    let var_2 = !vec3<bool>(true, 589f != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -489f))), false);
    let var_3 = var_1.a;
    let var_4 = var_0.a >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -740f)) * var_0.a);
    let var_5 = Struct_3(Struct_1(!(abs(u_input.d) < _wgslsmith_mult_u32(u_input.d, var_0.b))));
    var var_6 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), -1145f, var_0.a, 136f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(562f, 590f)), var_0.a))));
}

