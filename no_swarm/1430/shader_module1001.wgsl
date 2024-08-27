struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: array<Struct_5, 25>;

var<private> global2: Struct_4;

var<private> global3: array<i32, 27>;

var<private> global4: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(4294967295u, 26044u, 1u, 1u), vec4<u32>(27517u, 1u, 9717u, 44560u), vec4<u32>(47169u, 43955u, 4294967295u, 0u), vec4<u32>(33575u, 1u, 22562u, 64740u), vec4<u32>(21290u, 44783u, 46623u, 14906u), vec4<u32>(7944u, 1u, 1u, 49414u), vec4<u32>(12291u, 0u, 12272u, 1u), vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(0u, 54504u, 5311u, 51463u), vec4<u32>(98579u, 0u, 0u, 7471u), vec4<u32>(1636u, 184671u, 1u, 1u), vec4<u32>(0u, 4294967295u, 17784u, 1u), vec4<u32>(0u, 4294967295u, 36703u, 36083u), vec4<u32>(0u, 43060u, 76027u, 72491u), vec4<u32>(1u, 12503u, 4294967295u, 19359u), vec4<u32>(4294967295u, 32105u, 1u, 0u), vec4<u32>(59546u, 3407u, 1u, 10427u), vec4<u32>(1u, 0u, 47349u, 37899u), vec4<u32>(4294967295u, 13186u, 4294967295u, 4294967295u), vec4<u32>(0u, 1u, 30728u, 30775u), vec4<u32>(0u, 4294967295u, 66550u, 0u), vec4<u32>(1u, 0u, 58717u, 57137u), vec4<u32>(0u, 0u, 32760u, 12154u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: u32) -> Struct_5 {
    let var_0 = vec2<bool>(!(!((global2.b.c.a & false) && any(vec3<bool>(global2.b.c.a, global2.b.c.a, true)))), true);
    global3 = array<i32, 27>();
    global1 = array<Struct_5, 25>();
    global0 = array<i32, 19>();
    return global1[_wgslsmith_index_u32(0u, 25u)];
}

fn func_3(arg_0: f32) -> f32 {
    global1 = array<Struct_5, 25>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-843f, global2.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.b.a.x)))));
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    var var_0 = i32(-1i) * -(1i >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 95787u)) % 32u));
    let var_1 = func_2(~(~(~23834u)));
    let var_2 = max(u_input.a, -u_input.a);
    let var_3 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 1u), ~_wgslsmith_mult_vec2_u32(vec2<u32>(32133u, 4294967295u), vec2<u32>(1709u, 0u))), reverseBits(vec2<u32>(1u, 1u)));
    global2 = func_2(4294967295u).a;
    return _wgslsmith_f_op_f32(max(-554f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(var_1.a.b.a.x)), _wgslsmith_f_op_f32(sign(604f))) + var_1.a.a) - var_1.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 25>();
    let var_0 = -333f;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(!vec3<bool>(global2.b.c.a, true, global2.b.c.a))), global2.b.b)) * var_0), _wgslsmith_f_op_f32(-global2.b.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -654f)) * _wgslsmith_f_op_f32(f32(-1f) * -239f)), _wgslsmith_f_op_f32(-1360f + _wgslsmith_f_op_f32(f32(-1f) * -972f)))));
    global1 = array<Struct_5, 25>();
    global4 = array<vec4<u32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(-571f, ~abs(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(4294967295u), ~9793u), 24u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 - var_1)), vec2<f32>(-1136f, _wgslsmith_div_f32(289f, _wgslsmith_div_f32(-537f, -674f))));
}

