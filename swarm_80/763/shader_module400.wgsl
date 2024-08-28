struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: Struct_3;

var<private> global1: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false));

var<private> global2: vec2<f32> = vec2<f32>(-780f, -1169f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(false, (firstTrailingBit(vec2<u32>(4294967295u, 4170u)) & (~vec2<u32>(7680u, global0.a) | (vec2<u32>(global0.a, global0.a) | vec2<u32>(global0.a, 14909u)))) | ~abs(vec2<u32>(89925u, global0.a)));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(floor(655f)), global0.b.a.x))))) + vec2<f32>(_wgslsmith_f_op_f32(select(global0.b.a.x, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(max(global0.b.a.x, global2.x))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * -473f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-global0.b.a.xy);
    var_0 = Struct_1(any(vec3<bool>(true, true, true)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global0.a), firstTrailingBit(var_0.b), var_0.b));
    global1 = array<vec4<bool>, 10>();
    return global0.b;
}

fn func_3() -> u32 {
    global2 = vec2<f32>(-404f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f * global0.b.a.x)));
    return ~global0.a ^ ~_wgslsmith_dot_vec3_u32(max(~vec3<u32>(0u, global0.a, global0.a), ~vec3<u32>(global0.a, global0.a, global0.a)), select(vec3<u32>(global0.a, global0.a, 0u), max(vec3<u32>(global0.a, 0u, global0.a), vec3<u32>(1u, global0.a, 4294967295u)), vec3<bool>(false, true, false)));
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = Struct_3(global0.a, func_2());
    var var_1 = ~func_3();
    global1 = array<vec4<bool>, 10>();
    var var_2 = Struct_3(28438u, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(ceil(-2056f)), global0.b.a.x))));
    let var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(global0.a, reverseBits(4294967295u), 25215u << (countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 4294967295u), vec2<u32>(0u, var_2.a))) % 32u)), vec3<u32>(~(~var_2.a), ~_wgslsmith_mod_u32(global0.a ^ 45455u, var_0.a), ~(~abs(73985u))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_1(all(global1[_wgslsmith_index_u32(global0.a, 10u)]))) & true;
    var var_1 = global0.b;
    global1 = array<vec4<bool>, 10>();
    var var_2 = Struct_1(!any(vec3<bool>(any(global1[_wgslsmith_index_u32(global0.a, 10u)]), true, false)), select(abs(~reverseBits(vec2<u32>(global0.a, global0.a))), _wgslsmith_mult_vec2_u32(~vec2<u32>(global0.a, 20287u) | ~vec2<u32>(1u, global0.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global0.a) ^ vec2<u32>(global0.a, 21959u), ~vec2<u32>(global0.a, 63902u), _wgslsmith_clamp_vec2_u32(vec2<u32>(60892u, 42374u), vec2<u32>(global0.a, global0.a), vec2<u32>(8443u, global0.a)))), vec2<bool>(true, true)));
    var_1 = global0.b;
    global2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.x), global0.b.a.x))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -130f))), _wgslsmith_f_op_f32(f32(-1f) * -1170f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~20051u);
}

