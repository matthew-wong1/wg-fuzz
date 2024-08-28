struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32>;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<f32>(-200f, -572f, -952f, 471f), vec3<i32>(-58245i, 1i, 1i), 840f), 26882u), false, -1i, true);

var<private> global2: array<Struct_2, 23>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_3(Struct_2(global1.a.a, u_input.d), all(select(vec2<bool>(true, true), vec2<bool>(true, 0u < global1.a.b), global1.b)), -(u_input.c.x ^ u_input.a), select(true, select(global1.d && (global1.d || false), any(vec3<bool>(global1.d, true, global1.d)), false), true));
    let var_1 = !(!vec3<bool>(true, all(vec3<bool>(true, true, true)), !(!global1.d)));
    let var_2 = vec2<u32>(abs(arg_0), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(58022u, arg_0), u_input.b), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.a.b), vec2<u32>(var_0.a.b, 1u)), u_input.b & var_0.a.b)));
    var var_3 = 0u;
    let var_4 = !select(var_1.xy, vec2<bool>(true, true), var_1.yz);
    return global1.a.a.a.x;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.a.c, 1349f, _wgslsmith_div_f32(global1.a.a.c, -257f), global1.a.a.c)), global0[_wgslsmith_index_u32((max(global1.a.b, u_input.b) ^ 51893u) ^ ~global1.a.b, 32u)]) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -551f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(642f)) - _wgslsmith_f_op_f32(-global1.a.a.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(global1.a.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-465f - global1.a.a.c))))));
    let var_1 = _wgslsmith_div_u32(select(firstLeadingBit(4294967295u), 86u, all(vec3<bool>(global1.d, select(false, true, true), true))), ~(u_input.b >> (global1.a.b % 32u)));
    let var_2 = global1.a.a;
    return Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.a.c, -1312f, 642f, var_2.c)))))), firstLeadingBit(~(~vec3<i32>(global1.a.a.b.x, 1693i, 15872i)) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 1u, var_1), vec3<u32>(global1.a.b, 11305u, 0u)) % vec3<u32>(32u))), -374f);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> Struct_3 {
    let var_0 = ~global1.a.b;
    var var_1 = Struct_1(global1.a.a.a, reverseBits(global1.a.a.b), _wgslsmith_f_op_f32(f32(-1f) * -588f));
    let var_2 = func_2(vec2<bool>(true, select(true, all(select(vec3<bool>(true, false, arg_0.x), vec3<bool>(false, true, arg_0.x), arg_0)), any(select(vec4<bool>(false, false, false, true), vec4<bool>(arg_0.x, global1.b, global1.b, arg_0.x), true)))));
    global0 = array<vec4<f32>, 32>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a.x - -1368f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x + -911f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-1877f * 2645f)));
    return Struct_3(Struct_2(func_2(select(vec2<bool>(true, true), arg_0.xy, vec2<bool>(true, global1.d))), ~arg_1.b), !any(select(select(vec4<bool>(false, global1.b, true, false), vec4<bool>(global1.d, false, arg_0.x, true), true), select(vec4<bool>(global1.d, global1.b, true, true), vec4<bool>(arg_0.x, arg_0.x, true, global1.d), true), !vec4<bool>(arg_0.x, global1.d, true, true))), var_1.b.x, false && global1.b);
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    global0 = array<vec4<f32>, 32>();
    global2 = array<Struct_2, 23>();
    global1 = func_1(vec3<bool>((abs(1i) >> ((global1.a.b >> (global1.a.b % 32u)) % 32u)) < max(-16158i, _wgslsmith_sub_i32(2147483647i, global1.a.a.b.x)), false, true), arg_0.a, ~(~abs(1u)), _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(0u, u_input.d))), _wgslsmith_add_u32(arg_0.a.b, _wgslsmith_clamp_u32(125549u, arg_0.a.b, 81630u))) & ~(_wgslsmith_mod_u32(arg_0.a.b, u_input.d) & u_input.d));
    global0 = array<vec4<f32>, 32>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(arg_0.a.a.a.yxx)), _wgslsmith_f_op_vec3_f32(-arg_0.a.a.a.zyy), arg_0.b));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(global1.a.a.c, global1.a.a.c, global1.a.a.c, _wgslsmith_f_op_f32(-global1.a.a.a.x));
    let var_1 = Struct_2(global1.a.a, _wgslsmith_mod_u32(34529u, _wgslsmith_mod_u32(u_input.b, 52145u)));
    let var_2 = func_4(func_1(!vec3<bool>(true, global1.b, true), global2[_wgslsmith_index_u32(~((29865u << (global1.a.b % 32u)) | 1u), 23u)], ~firstTrailingBit(var_1.b) ^ 1u, 1u));
    global2 = array<Struct_2, 23>();
    global0 = array<vec4<f32>, 32>();
    global0 = array<vec4<f32>, 32>();
    var var_3 = ~(-(~vec4<i32>(func_2(vec2<bool>(true, false)).b.x, -global1.c, ~var_2.c, _wgslsmith_mod_i32(var_1.a.b.x, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.x), reverseBits(min(var_1.a.b.xx, ~(-vec2<i32>(u_input.a, -2147483647i)))), vec3<u32>(19237u, ~reverseBits(4294967295u) << (~4294967295u % 32u), ~_wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, var_2.a.b), var_2.a.b)));
}

