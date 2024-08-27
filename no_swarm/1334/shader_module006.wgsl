struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global1: i32 = 7492i;

var<private> global2: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(18080u, 58844u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(6999u, 53799u), vec2<u32>(4829u, 0u), vec2<u32>(23703u, 29259u), vec2<u32>(0u, 0u), vec2<u32>(94640u, 0u), vec2<u32>(19664u, 4294967295u), vec2<u32>(33172u, 1u), vec2<u32>(289u, 4981u), vec2<u32>(72407u, 87842u), vec2<u32>(4294967295u, 0u), vec2<u32>(74389u, 94510u), vec2<u32>(37984u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(28702u, 0u), vec2<u32>(58866u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(1u, 61584u), vec2<u32>(0u, 71091u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: u32) -> u32 {
    let var_0 = Struct_3(Struct_1(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_1.x, u_input.e.x, 1u), countOneBits(u_input.e.x)), abs(69274u) | u_input.e.x)));
    return _wgslsmith_clamp_u32(reverseBits(~var_0.a.a.x), arg_2, ~9948u) ^ (~var_0.a.a.x & ~(~68752u));
}

fn func_2() -> u32 {
    global2 = array<vec2<u32>, 27>();
    var var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~u_input.d, _wgslsmith_div_vec4_u32(u_input.d, u_input.d)), (u_input.d.x << (func_3(vec3<bool>(global0.x, global0.x, global0.x), abs(global2[_wgslsmith_index_u32(0u, 27u)]), u_input.d.x) % 32u)) ^ u_input.d.x, ~countOneBits(max(4294967295u, 1u)) & _wgslsmith_dot_vec4_u32(u_input.d << ((vec4<u32>(u_input.e.x, u_input.d.x, 82630u, u_input.d.x) ^ u_input.d) % vec4<u32>(32u)), vec4<u32>(4294967295u, countOneBits(u_input.e.x), max(51806u, u_input.e.x), abs(1u))));
    global2 = array<vec2<u32>, 27>();
    global2 = array<vec2<u32>, 27>();
    var var_1 = Struct_2(9591i);
    return u_input.e.x;
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_1(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(29006u, 0u), vec2<u32>(4294967295u, u_input.d.x)) & min(u_input.e.x, 40985u), 4294967295u));
    let var_1 = all(vec4<bool>(global0.x, abs(u_input.e.x) > min(~4294967295u, 22365u), global0.x, false));
    let var_2 = vec3<u32>(var_0.a.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(51413u, 43902u, 0u), ~u_input.e)), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(min(u_input.e, vec3<u32>(42645u, 27058u, 0u)), _wgslsmith_sub_vec3_u32(u_input.e, vec3<u32>(u_input.e.x, 23232u, u_input.e.x))), vec3<u32>(var_0.a.x, var_0.a.x, u_input.d.x))), max(abs(u_input.e.x), var_0.a.x | func_2()));
    let var_3 = 57437u;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -441f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1870f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -643f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2411f, -1363f)) * _wgslsmith_f_op_f32(-544f - -1000f)), _wgslsmith_f_op_f32(min(-499f, _wgslsmith_div_f32(1333f, -1000f)))))));
    return Struct_3(var_0);
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(16213i);
    var var_1 = Struct_3(Struct_1(vec2<u32>(arg_2, ~_wgslsmith_clamp_u32(arg_2, u_input.d.x, u_input.d.x))));
    let var_2 = u_input.d.wxw | ~vec3<u32>(var_1.a.a.x, 85530u, 41315u);
    var var_3 = var_0;
    let var_4 = ~(~_wgslsmith_div_vec3_u32(~(~vec3<u32>(1u, 1u, 4294967295u)), vec3<u32>(~1u, ~26066u, arg_3.a.a.x)));
    return Struct_1(u_input.d.xz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(~u_input.c, -(vec2<i32>(u_input.b.x, u_input.a.x) >> (vec2<u32>(13295u, u_input.d.x) % vec2<u32>(32u))), countOneBits(_wgslsmith_mod_u32(~18461u, ~44949u)), func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(7392u | var_0.a.a.x, 30825u, ~abs(u_input.e.x)), countOneBits(~select(func_1().a.a.x, 86111u, true)), u_input.d.x, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(767f)), _wgslsmith_f_op_f32(select(-1828f, 876f, global0.x))))), _wgslsmith_f_op_f32(floor(-973f)), -693f));
}

