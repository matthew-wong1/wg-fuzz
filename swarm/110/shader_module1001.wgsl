struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -528f;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> bool {
    global0 = arg_0;
    return all(vec2<bool>(false, true));
}

fn func_3() -> vec3<u32> {
    var var_0 = select(vec3<bool>(true, true, true), !(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    return ~_wgslsmith_mult_vec3_u32(vec3<u32>(72039u, ~32386u, 28967u), vec3<u32>(1u, 1u, 1u));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = 21607u | firstTrailingBit(arg_2.a.a.x);
    var var_1 = !vec4<bool>((2147483647i == -u_input.a) || true, true | (_wgslsmith_sub_i32(u_input.a, 5628i) < 30672i), true, func_2(487f, -(vec2<i32>(42295i, u_input.a) << (vec2<u32>(arg_0, 4294967295u) % vec2<u32>(32u)))));
    var var_2 = Struct_1(vec4<u32>(countOneBits(~(~0u)), _wgslsmith_dot_vec3_u32(func_3(), ~arg_2.a.a.wyy << (vec3<u32>(arg_2.a.a.x, 0u, arg_0) % vec3<u32>(32u))), arg_2.a.a.x | reverseBits(147u), 75301u), 1000f);
    return !vec2<bool>(all(!var_1.wy), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!vec4<bool>(true, true, false, all(vec4<bool>(false, false, true, false))), 0i);
    var var_1 = !select(!select(func_1(69209u, vec3<f32>(-513f, -573f, 1813f), Struct_3(Struct_1(vec4<u32>(58160u, 15610u, 67099u, 1u), -578f))), var_0.a.xw, all(var_0.a.ww)), var_0.a.yz, all(select(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), var_0.a, vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x))) || any(var_0.a.xyw));
    let var_2 = var_0;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(-1449f, -341f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1380f * 844f))), 1863f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(844f * 213f)), _wgslsmith_f_op_f32(f32(-1f) * -224f))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 4294967295u, 30396u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(4294967295u, 7474u, 1u, 0u), vec4<u32>(11024u, 55863u, 4294967295u, 14457u))), vec4<u32>(1u, 1u, 1u, 1u)) >> ((~4294967295u << (1u % 32u)) % 32u));
}

