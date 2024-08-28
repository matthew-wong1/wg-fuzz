struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true));

var<private> global2: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: u32) -> vec4<u32> {
    var var_0 = -1i;
    global1 = array<vec4<bool>, 23>();
    var_0 = _wgslsmith_div_i32(_wgslsmith_div_i32(-(~_wgslsmith_mult_i32(52575i, arg_0.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(3247i, arg_0.x, arg_0.x, 7961i), countOneBits(vec4<i32>(arg_0.x, -9051i, arg_0.x, -1i))), arg_0.x)), _wgslsmith_mod_i32(arg_0.x, 3978i));
    var var_1 = !select(vec3<bool>(false, false, select(true, global0.b == global0.b, global0.b)), select(vec3<bool>(false, global0.b, true), !vec3<bool>(false, global0.b, false), select(vec3<bool>(global0.b, global0.b, false), vec3<bool>(global0.b, false, true), vec3<bool>(global0.b, false, false))), !((global0.a.x <= arg_2) | true));
    global0 = Struct_4(global0.a, true);
    return vec4<u32>(~arg_2, arg_2, abs(u_input.a), 0u << (~arg_1.x % 32u));
}

fn func_2(arg_0: vec3<u32>) -> vec3<u32> {
    var var_0 = Struct_1(vec3<u32>(arg_0.x ^ countOneBits(~u_input.a), 4294967295u, ~28803u));
    var_0 = Struct_1(~(~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, global0.a.x), vec3<u32>(var_0.a.x, global0.a.x, 0u)), vec3<u32>(1u, global0.a.x, 0u))));
    global2 = arg_0.x;
    let var_1 = Struct_5(~abs(arg_0.x), (func_3(min(vec2<i32>(-1i, -864i), vec2<i32>(0i, 45138i)), global0.a.xy, global0.a.x >> (0u % 32u)) ^ vec4<u32>(arg_0.x, ~49618u, ~u_input.a, var_0.a.x)) << ((select(~vec4<u32>(0u, 123625u, 4294967295u, 4294967295u), max(vec4<u32>(4294967295u, 11391u, arg_0.x, 27720u), vec4<u32>(0u, global0.a.x, global0.a.x, 84209u)), select(vec4<bool>(false, false, true, global0.b), vec4<bool>(false, global0.b, false, true), global0.b)) << (~select(vec4<u32>(global0.a.x, global0.a.x, u_input.a, 8986u), vec4<u32>(global0.a.x, u_input.a, 4294967295u, var_0.a.x), global1[_wgslsmith_index_u32(var_0.a.x, 23u)]) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f)))), Struct_3(Struct_1(vec3<u32>(var_0.a.x, ~0u, 0u)), Struct_1(vec3<u32>(~u_input.a, arg_0.x, 1u)), !(!select(vec2<bool>(global0.b, false), vec2<bool>(global0.b, false), global0.b))));
    let var_2 = Struct_5(19367u, select(var_1.b, vec4<u32>(u_input.a, countOneBits(37468u), max(0u, 64179u), 0u) & vec4<u32>(~global0.a.x, var_1.b.x, reverseBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 35387u, 89925u, var_1.b.x), vec4<u32>(global0.a.x, arg_0.x, 17364u, var_1.a))), ((i32(-1i) * -1145i) << (min(global0.a.x, global0.a.x) % 32u)) > firstTrailingBit(1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.c.x, 1212f), var_1.c))), var_1.d);
    return vec3<u32>(_wgslsmith_clamp_u32(u_input.a, var_1.b.x, u_input.a), 4294967295u, firstTrailingBit(global0.a.x));
}

fn func_1() -> vec3<u32> {
    let var_0 = global0.a.x;
    global1 = array<vec4<bool>, 23>();
    global2 = _wgslsmith_dot_vec3_u32(func_2(~(~vec3<u32>(u_input.a, 1044u, u_input.a) >> ((global0.a | vec3<u32>(28054u, 4294967295u, 4294967295u)) % vec3<u32>(32u)))), ~_wgslsmith_clamp_vec3_u32(global0.a ^ ~global0.a, ~(~global0.a), func_2(global0.a)));
    global0 = Struct_4(~_wgslsmith_add_vec3_u32(min(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, global0.a.x)), global0.a), reverseBits(vec3<u32>(u_input.a, global0.a.x, global0.a.x))), !(!(!(35924u >= u_input.a))));
    global1 = array<vec4<bool>, 23>();
    return ~(~(~reverseBits(vec3<u32>(u_input.a, 10043u, global0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 23>();
    let var_0 = -777f;
    global0 = Struct_4(max(func_1(), global0.a), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~select(46411u, 1u, false), u_input.a, min(0u, 4294967295u >> (global0.a.x % 32u))) & (_wgslsmith_clamp_vec3_u32(~global0.a, global0.a, ~vec3<u32>(u_input.a, u_input.a, global0.a.x)) >> (~(~vec3<u32>(6895u, u_input.a, 0u)) % vec3<u32>(32u))), vec4<i32>(-1i, 16317i, ~(-1i), 0i), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_0, 386f, var_0), vec4<f32>(-679f, -1676f, 1952f, 1677f), global1[_wgslsmith_index_u32(12660u, 23u)])) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, var_0, var_0, 947f)))))))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(max(global0.a.xz & vec2<u32>(80372u, global0.a.x), abs(global0.a.xx)), vec2<u32>(func_3(vec2<i32>(1i, 2147483647i), global0.a.yx, 4294967295u).x, countOneBits(global0.a.x))), global0.a.yx, global0.a.yz), vec2<i32>(-1i) * -(~select(vec2<i32>(0i, -27471i), vec2<i32>(11233i, -10183i), false)));
}

