struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(1384f, 608f, -279f, 1263f, 1000f, -1484f, 1745f, -259f, 771f, -327f, -148f, -493f, -288f, 1575f, 1504f, 1969f);

var<private> global1: array<vec2<f32>, 15>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> i32 {
    let var_0 = Struct_2(_wgslsmith_div_i32(u_input.a, 2147483647i ^ u_input.a));
    var var_1 = vec3<bool>(true, true, ((21371i <= _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, var_0.a), vec2<i32>(var_0.a, -1i))) | (true || select(true, true, true))) || all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.zwz), arg_1.yyy, vec3<bool>(var_1.x || var_1.x, true, var_1.x))) * arg_1.ywy), vec4<u32>(arg_2.x, 23049u, arg_0.x, ~1u ^ arg_0.x));
    let var_3 = abs(arg_0.x);
    var var_4 = Struct_1(15259u, firstTrailingBit(var_0.a), arg_2, vec2<bool>(~(u_input.c.x >> (22296u % 32u)) > ~0u, var_1.x), vec2<i32>(_wgslsmith_div_i32(~u_input.a, u_input.a), 2147483647i) >> (select(select(vec2<u32>(var_3, 0u) >> (vec2<u32>(arg_2.x, 109473u) % vec2<u32>(32u)), var_2.b.xy, vec2<bool>(var_1.x, false)), max(arg_0, vec2<u32>(38009u, arg_0.x)) & ~vec2<u32>(var_2.b.x, 20811u), var_1.x) % vec2<u32>(32u)));
    return min(-(i32(-1i) * -32226i), ~(-u_input.a)) ^ u_input.a;
}

fn func_2() -> i32 {
    let var_0 = -1185f;
    return -_wgslsmith_div_i32(u_input.a, select(func_3(vec2<u32>(4294967295u, u_input.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(25239u, 16u)], 1375f, var_0, global0[_wgslsmith_index_u32(1u, 16u)])), vec3<u32>(u_input.b.x, 0u, 0u)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 2147483647i) & vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(22338i, u_input.a, u_input.a) ^ vec3<i32>(0i, u_input.a, u_input.a)), all(vec4<bool>(true, true, true, true))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: vec2<bool>) -> i32 {
    return -_wgslsmith_clamp_i32(~u_input.a, 1i, func_2());
}

fn func_4(arg_0: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(4294967295u, 16u)], -552f, any(vec3<bool>(true | any(vec4<bool>(true, false, true, true)), true, all(vec3<bool>(true, true, true)) || true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -415f))));
    var_0 = _wgslsmith_f_op_f32(func_4(Struct_2(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1134f, 654f)), vec3<f32>(_wgslsmith_f_op_f32(round(1115f)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, 1u), 16u)], _wgslsmith_f_op_f32(abs(1058f))), ~vec2<u32>(u_input.c.x, u_input.b.x) << ((u_input.c & u_input.b) % vec2<u32>(32u)), vec2<bool>(false, true)))));
    global0 = array<f32, 16>();
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(min(vec4<u32>(u_input.b.x, u_input.c.x, 7389u, 22081u), vec4<u32>(u_input.b.x, 7574u, 0u, 0u))), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, 0u) | (vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x) << (vec4<u32>(u_input.c.x, 0u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), 15u)], _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(~u_input.c.x, 15u)] * global1[_wgslsmith_index_u32(0u, 15u)]))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~(~vec4<u32>(u_input.c.x, 93214u, 49590u, 1u))));
}

