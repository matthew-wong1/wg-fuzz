struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false));

var<private> global1: array<vec2<bool>, 9>;

var<private> global2: u32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_4) -> u32 {
    global0 = array<vec3<bool>, 31>();
    global1 = array<vec2<bool>, 9>();
    let var_0 = arg_0.x;
    global1 = array<vec2<bool>, 9>();
    var var_1 = u_input.a.x;
    return 33192u;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_3) -> f32 {
    let var_0 = arg_2;
    global0 = array<vec3<bool>, 31>();
    var var_1 = max(min(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, 74437u, 25274u), ~0u), countOneBits(~(~1u))), 52068u);
    let var_2 = (func_2(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u), ~4294967295u), false, Struct_4(arg_0.xx)) == (1u | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 67124u, 62316u, 4294967295u), min(vec4<u32>(56901u, 39086u, 40513u, 1u), vec4<u32>(1u, 25877u, 1u, 12559u))))) && var_0.a;
    return -216f;
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_1(_wgslsmith_div_u32(20872u, ~29198u) != select(_wgslsmith_add_u32(firstTrailingBit(14663u), 1u), ~18224u, false));
    global1 = array<vec2<bool>, 9>();
    global1 = array<vec2<bool>, 9>();
    var var_1 = min(vec4<u32>(1u, ~_wgslsmith_dot_vec2_u32(min(vec2<u32>(0u, 4294967295u), vec2<u32>(26025u, 1u)), countOneBits(vec2<u32>(0u, 0u))), _wgslsmith_add_u32(max(24834u, 13036u), countOneBits(33930u)), ~1u), vec4<u32>(1u, ~reverseBits(firstLeadingBit(13634u)), 4294967295u, ~(~(~1u))));
    var var_2 = false;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<f32>(1947f, 542f, -1081f), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), true), Struct_3(false))) + -1756f)));
    var var_2 = Struct_2(Struct_1(func_3(true)), vec4<u32>(1u, 1u, 1u, 1u), i32(-1i) * -5255i, _wgslsmith_div_i32(u_input.b, 1i), false);
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_1) + 2248f), -3511f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-651f, var_1), vec2<f32>(-184f, 1537f), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1084f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 329f) * vec2<f32>(var_1, -995f))))));
    let var_4 = var_3.a;
    var var_5 = global0[_wgslsmith_index_u32(var_2.b.x, 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.xx);
}

