struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: vec4<f32> = vec4<f32>(405f, -1000f, -477f, -916f);

var<private> global2: array<vec2<u32>, 4>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(arg_0, reverseBits(~(u_input.d << (u_input.a % vec3<u32>(32u)))), vec3<f32>(global1.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-806f)))), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.d & vec3<i32>(u_input.d.x, 0i, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)), min(u_input.d, u_input.d)), _wgslsmith_add_u32(4294967295u << (~4294967295u % 32u), arg_1)));
    return arg_0;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: f32) -> u32 {
    global0 = ~(~(~(~_wgslsmith_mod_u32(33615u, u_input.e))));
    return _wgslsmith_div_u32(_wgslsmith_clamp_u32(32005u, ((arg_0.a.a.e | arg_1.x) & ~1u) & 1u, 1u), 1u);
}

fn func_1() -> u32 {
    var var_0 = -285f;
    var var_1 = func_2(vec4<bool>(true, true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - -1000f)), _wgslsmith_clamp_u32(countOneBits(_wgslsmith_clamp_u32(4294967295u, u_input.a.x | 4294967295u, u_input.c.x)), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), u_input.e ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.e, 54009u, 4294967295u), vec4<u32>(u_input.b, 62014u, 0u, 1u))));
    let var_2 = func_3(Struct_3(Struct_2(Struct_1(select(vec4<bool>(true, false, var_1.x, true), vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x)), abs(u_input.d), vec3<f32>(global1.x, -1260f, 204f), u_input.d | vec3<i32>(u_input.d.x, 8218i, 1i), 0u & u_input.b))), firstLeadingBit(firstTrailingBit(global2[_wgslsmith_index_u32(0u, 4u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global1.x))))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1400f * -1000f), _wgslsmith_f_op_f32(938f + global1.x), -1342f, _wgslsmith_f_op_f32(step(global1.x, global1.x))))));
    let var_3 = all(!vec4<bool>(!all(var_1.xw), false, false, var_1.x || (global1.x != global1.x)));
    return ~_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(var_2, var_2)), reverseBits(vec2<u32>(u_input.e, 33037u) & vec2<u32>(1u, 1u)) & abs(~global2[_wgslsmith_index_u32(1u, 4u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(min(u_input.d.x, -1i), -(~u_input.d.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(-24953i, u_input.d.x, -26712i, -31788i), countOneBits(vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, u_input.d.x))) << (func_1() % 32u)), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, u_input.d.x);
}

