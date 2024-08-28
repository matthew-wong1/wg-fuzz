struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 15>;

var<private> global2: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = !vec4<bool>(false, false | global1[_wgslsmith_index_u32(1u, 15u)], true, !global1[_wgslsmith_index_u32(u_input.a.x, 15u)]);
    global2 = false;
    global1 = array<bool, 15>();
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-483f)) - _wgslsmith_f_op_f32(f32(-1f) * -229f))) + -1570f)));
    let var_1 = u_input.a;
    return vec2<u32>(~25105u, 18u);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(true, ~func_3(Struct_1(true, u_input.a.xz, _wgslsmith_dot_vec4_i32(vec4<i32>(-14430i, 0i, 2502i, 2147483647i), vec4<i32>(-2147483647i, -2147483647i, 13848i, -31074i)), !global1[_wgslsmith_index_u32(32552u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)]), -(~vec4<i32>(-28503i, -1i, 17702i, 2147483647i)), vec3<i32>(1i, _wgslsmith_div_i32(-2147483647i, 18618i), ~1i), Struct_1(any(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], false, false)), _wgslsmith_mod_vec2_u32(u_input.a.zz, vec2<u32>(1u, u_input.a.x)), 1i, true, true)), min(i32(-1i) * -2147483647i, ~countOneBits(min(0i, 1i))), false, true);
    let var_1 = Struct_2(var_0, var_0.b.x, -(~_wgslsmith_add_i32(countOneBits(var_0.c), select(var_0.c, var_0.c, true))));
    let var_2 = var_1;
    global2 = (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(909f))))) < _wgslsmith_f_op_f32(abs(-353f))) != true;
    global2 = var_0.a;
    return var_2;
}

fn func_1(arg_0: vec3<u32>) -> vec4<u32> {
    var var_0 = vec2<bool>(false, arg_0.x >= ~(firstTrailingBit(23318u) ^ (arg_0.x & u_input.a.x)));
    let var_1 = -12424i;
    global1 = array<bool, 15>();
    let var_2 = func_2();
    var var_3 = _wgslsmith_clamp_i32(-6598i, _wgslsmith_dot_vec2_i32(~(~abs(vec2<i32>(var_1, -60326i))), vec2<i32>(_wgslsmith_clamp_i32(1854i, var_2.a.c, 20562i), 2147483647i) | (_wgslsmith_sub_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(0i, var_1)) & countOneBits(vec2<i32>(var_2.c, -2147483647i)))), var_2.c);
    return ~(select(firstLeadingBit(vec4<u32>(arg_0.x, u_input.a.x, 0u, u_input.a.x)), ~u_input.a, func_2().a.b.x >= ~1u) | vec4<u32>(28549u, (u_input.a.x ^ 29401u) ^ 20066u, arg_0.x, ~_wgslsmith_sub_u32(47094u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !any(vec2<bool>(global1[_wgslsmith_index_u32(~u_input.a.x, 15u)], all(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(14755u, 15u)]))));
    global0 = -113f;
    global0 = 109f;
    let var_0 = ~(firstLeadingBit(func_1(~u_input.a.wyx)) | ~(~(~vec4<u32>(10552u, u_input.a.x, u_input.a.x, 68274u))));
    var var_1 = func_2();
    let var_2 = func_2();
    let var_3 = Struct_1(!(!(!(!global1[_wgslsmith_index_u32(1u, 15u)]))), firstTrailingBit(firstTrailingBit(~func_2().a.b)), 1i, true, false);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.c, max(_wgslsmith_dot_vec3_u32(func_1(vec3<u32>(0u, var_2.a.b.x, 0u) | vec3<u32>(23370u, u_input.a.x, var_2.b)).wwz, _wgslsmith_div_vec3_u32(~vec3<u32>(var_1.b, var_3.b.x, var_3.b.x), ~vec3<u32>(var_2.b, 1u, var_3.b.x))), abs(var_3.b.x)), -countOneBits(abs(vec3<i32>(2147483647i, -2147483647i, 2147483647i) ^ vec3<i32>(-2147483647i, -2147483647i, var_3.c))), firstTrailingBit(vec3<i32>(select(var_1.c, _wgslsmith_div_i32(var_3.c, 11194i), true), ~min(-1i, 2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.c, var_2.c, var_3.c), vec3<i32>(var_3.c, var_3.c, -1i)), -vec3<i32>(27279i, -2147483647i, 1i)))), _wgslsmith_div_vec2_i32(-abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, var_1.a.c), vec2<i32>(-2147483647i, 5597i), vec2<i32>(1333i, var_1.c))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_3.c, 3387i) << (var_2.a.b % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.c, var_1.c), vec2<i32>(22510i, var_3.c)), ~vec2<i32>(0i, var_3.c))));
}

