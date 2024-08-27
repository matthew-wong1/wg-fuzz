struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

var<private> global1: array<vec4<bool>, 11>;

var<private> global2: vec3<u32>;

var<private> global3: array<vec3<f32>, 19>;

var<private> global4: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(82286u, 18275u, 84305u, 40719u), vec4<u32>(39636u, 0u, 69607u, 4294967295u), vec4<u32>(38178u, 0u, 13023u, 38384u), vec4<u32>(1u, 86349u, 20548u, 1u), vec4<u32>(13292u, 1u, 2357u, 42439u), vec4<u32>(19407u, 91316u, 70341u, 4294967295u), vec4<u32>(56811u, 61154u, 54743u, 21646u), vec4<u32>(0u, 14713u, 66730u, 1u), vec4<u32>(0u, 0u, 10103u, 4294967295u), vec4<u32>(10511u, 1u, 29798u, 1u), vec4<u32>(2235u, 1u, 4294967295u, 55102u), vec4<u32>(18431u, 4294967295u, 0u, 20137u), vec4<u32>(23042u, 0u, 1u, 4294967295u), vec4<u32>(86121u, 43576u, 0u, 95312u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1113f)));
    let var_1 = !(!arg_0.a.yz);
    let var_2 = Struct_2(arg_0, var_0, ~(~(~_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(1u, 1u)))), arg_0);
    let var_3 = -1235f;
    global3 = array<vec3<f32>, 19>();
    return !global1[_wgslsmith_index_u32(~(global2.x ^ arg_1) | var_2.c, 11u)];
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec4<bool> {
    global4 = array<vec4<u32>, 14>();
    let var_0 = 7706u;
    var var_1 = global0[_wgslsmith_index_u32(~(~(~(~(~var_0)))), 32u)];
    let var_2 = 37137i;
    var var_3 = global0[_wgslsmith_index_u32(global2.x, 32u)];
    return func_2(var_3.d, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, ~var_0, ~8912u), _wgslsmith_mult_vec3_u32(u_input.b | u_input.b, vec3<u32>(48002u, var_0, 4294967295u) & vec3<u32>(121404u, global2.x, 23725u))), _wgslsmith_mod_u32(~17503u, reverseBits(_wgslsmith_mult_u32(var_3.c, 1u)))));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> vec4<f32> {
    var var_0 = _wgslsmith_mult_vec2_u32(global2.zx, _wgslsmith_sub_vec2_u32(~(~vec2<u32>(0u, 47753u)), countOneBits(vec2<u32>(arg_0, global2.x)) ^ vec2<u32>(_wgslsmith_sub_u32(42064u, 1u), _wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(arg_0, 14u)], global4[_wgslsmith_index_u32(1u, 14u)]))));
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(773f * 244f))), 509f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -761f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -417f)), global2.x > var_0.x)), _wgslsmith_f_op_f32(186f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1127f)) - _wgslsmith_f_op_f32(-381f + 2027f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(firstTrailingBit(14292u >> (_wgslsmith_dot_vec2_u32(global2.zx, global2.yy) % 32u)), func_1(!all(vec2<bool>(true, false)), Struct_1(vec3<bool>(true, true, true)), 1f, max(~38071u, ~46572u) | _wgslsmith_div_u32(_wgslsmith_div_u32(1u, u_input.b.x), abs(global2.x)))));
    var var_1 = Struct_1(!vec3<bool>((-2147483647i >> (1u % 32u)) < (1i | u_input.a), func_2(Struct_1(vec3<bool>(false, false, true)), global2.x).x, false));
    let var_2 = Struct_1(vec3<bool>(true & (var_1.a.x || all(global1[_wgslsmith_index_u32(0u, 11u)])), false, true));
    global3 = array<vec3<f32>, 19>();
    var_1 = Struct_1(func_2(Struct_1(select(vec3<bool>(false, false, var_1.a.x), !var_2.a, vec3<bool>(var_1.a.x, var_1.a.x, false))), 24119u).zxz);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1248f, var_0.x, var_0.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1527f - -1000f), var_0.x, _wgslsmith_f_op_f32(sign(var_0.x)), 1559f) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 399f, 118f, var_0.x), vec4<f32>(var_0.x, -113f, 638f, 974f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -358f) * _wgslsmith_f_op_f32(sign(758f))))), ~(~select(~global2.x, 1u, var_2.a.x)), 2033f, 4294967295u);
}

