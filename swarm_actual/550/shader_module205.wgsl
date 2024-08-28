struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(82987u, 110504u, 4294967295u, 49775u), vec4<u32>(7584u, 4294967295u, 0u, 2274u), vec4<u32>(24022u, 1036u, 7889u, 4294967295u), vec4<u32>(0u, 5237u, 4294967295u, 1u), vec4<u32>(1u, 2430u, 94530u, 13483u), vec4<u32>(27349u, 1u, 1u, 22730u), vec4<u32>(54258u, 25542u, 1u, 14359u), vec4<u32>(6509u, 0u, 0u, 4294967295u), vec4<u32>(64411u, 9154u, 1u, 0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(any(arg_1.a) != true, true, true, all(arg_1.a)));
    let var_1 = arg_1;
    let var_2 = 32792u;
    global0 = array<vec4<u32>, 9>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))));
    return Struct_1(!(!(!vec4<bool>(false, false, var_1.a.x, var_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]), ~global0[_wgslsmith_index_u32(0u, 9u)], min(vec4<u32>(u_input.c, 4294967295u, 51058u, 1u), global0[_wgslsmith_index_u32(u_input.c, 9u)])), ~(~vec4<u32>(1u, u_input.c, 4294967295u, u_input.c))), ~(~u_input.c) ^ 34955u) <= u_input.c;
    let var_1 = _wgslsmith_sub_i32(2147483647i, max(u_input.d >> (u_input.c % 32u), u_input.b));
    var var_2 = func_1(firstTrailingBit(_wgslsmith_mod_vec2_i32(-vec2<i32>(1i, 23143i), vec2<i32>(1i, 1i))) << ((_wgslsmith_mult_vec2_u32(vec2<u32>(54508u, 1u), max(vec2<u32>(75988u, u_input.c), vec2<u32>(1u, u_input.c))) << (abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, u_input.c))) % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_1(!select(select(vec4<bool>(var_0, var_0, false, true), vec4<bool>(false, var_0, true, true), vec4<bool>(false, false, var_0, false)), !vec4<bool>(true, false, false, var_0), true)));
    var_2 = Struct_1(func_1(u_input.a, Struct_1(var_2.a)).a);
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~((~vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c) & ~vec4<u32>(u_input.c, 44582u, u_input.c, u_input.c)) & vec4<u32>(_wgslsmith_clamp_u32(u_input.c, 4294967295u, u_input.c), _wgslsmith_sub_u32(u_input.c, u_input.c), 17045u >> (0u % 32u), u_input.c ^ u_input.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-328f, 731f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1359f) + _wgslsmith_f_op_f32(abs(-534f)))) - vec3<f32>(1f, _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-1084f * _wgslsmith_f_op_f32(f32(-1f) * -232f)))), u_input.c);
}

