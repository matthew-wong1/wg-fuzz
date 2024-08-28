struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 8> = array<f32, 8>(1715f, 1643f, 363f, -876f, 2097f, 1611f, 271f, 882f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec2<u32>, arg_3: vec2<i32>) -> u32 {
    let var_0 = countOneBits(-abs(_wgslsmith_dot_vec2_i32(arg_3, abs(arg_3))));
    let var_1 = false;
    let var_2 = Struct_1(31826i, arg_3);
    var var_3 = ~_wgslsmith_div_vec3_u32(max(~vec3<u32>(arg_1, 16692u, arg_1), ~vec3<u32>(9805u, 1u, 26616u)), ~vec3<u32>(1u, 35599u, 1u)) << (vec3<u32>(_wgslsmith_add_u32(~55181u, _wgslsmith_dot_vec3_u32(vec3<u32>(5742u, 0u, arg_1), min(vec3<u32>(4294967295u, arg_2.x, 41916u), vec3<u32>(19184u, 1u, 6876u)))), 27216u, arg_1) % vec3<u32>(32u));
    global0 = true;
    return 0u;
}

fn func_2() -> Struct_3 {
    var var_0 = vec3<u32>(4185u, 50967u, ~func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 8u)])) + global1[_wgslsmith_index_u32(~87379u, 8u)]), 1u, vec2<u32>(1u, 1u), max(-vec2<i32>(u_input.b, u_input.a), ~vec2<i32>(u_input.a, -29254i))));
    global0 = false;
    var var_1 = false;
    var var_2 = Struct_3(Struct_1(u_input.b << (~(~var_0.x) % 32u), vec2<i32>(abs(_wgslsmith_add_i32(u_input.a, u_input.a)), reverseBits(u_input.a << (var_0.x % 32u)))), firstTrailingBit(_wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-36557i, 0i, -32858i)), -u_input.b >> (1u % 32u))), -(~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, 31001i))), vec3<i32>(60835i, ~0i, firstTrailingBit(u_input.a & max(2147483647i, u_input.a))));
    var var_3 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 8u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(7230u & abs(var_0.x), 8u)]) * _wgslsmith_f_op_f32(-1057f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(reverseBits(2595u), 8u)] - _wgslsmith_f_op_f32(abs(450f))))));
    return Struct_3(Struct_1(41715i, -(~vec2<i32>(var_2.a.b.x, -2147483647i))), _wgslsmith_sub_i32(countOneBits(~(~11220i)), ~u_input.a), -u_input.b, var_2.d);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> vec2<u32> {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(arg_1.d | 25632u, 8u)], _wgslsmith_f_op_f32(floor(-698f)), _wgslsmith_f_op_f32(floor(707f)))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(86581u, 8u)], _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(12826u, 8u)])), -733f)))));
    global1 = array<f32, 8>();
    let var_2 = arg_0.a;
    global1 = array<f32, 8>();
    return _wgslsmith_mod_vec2_u32(abs(vec2<u32>(arg_1.d << (arg_1.d % 32u), 5448u) >> (~(~vec2<u32>(arg_1.d, arg_1.d)) % vec2<u32>(32u))), abs(vec2<u32>(countOneBits(arg_1.d | 0u), max(0u, arg_1.d))));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = false;
    global1 = array<f32, 8>();
    var var_1 = ~(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(arg_0, arg_0)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(4294967295u, arg_0))) << ((vec2<u32>(arg_0, arg_0) >> (~vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))) % vec2<u32>(32u))) ^ func_4(func_2(), Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b) >> (vec2<u32>(70865u, 4294967295u) % vec2<u32>(32u)), vec2<i32>(u_input.a, -32662i) << (vec2<u32>(1u, 31214u) % vec2<u32>(32u))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), Struct_1(-1i, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 57460i), vec2<i32>(u_input.b, -67i))), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(arg_0, 8u)])) + _wgslsmith_f_op_f32(f32(-1f) * -727f)) >= global1[_wgslsmith_index_u32(arg_0, 8u)]);
    global0 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(22175u, 14870u, var_1.x, var_1.x), ~vec4<u32>(arg_0, 1u, arg_0, arg_0)), 28315u << (_wgslsmith_div_u32(var_1.x, arg_0) % 32u)) >= 1u;
    var var_2 = true;
    return arg_0 | ~arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~_wgslsmith_div_u32(4294967295u, 1u), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(44167u, 10303u), 4294967295u) << (func_1(1u) % 32u));
    var var_1 = Struct_2(u_input.a, vec4<bool>(any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true || any(vec3<bool>(true, true, true)), select(false, !(u_input.b > u_input.a), true), true), Struct_1(1i, -vec2<i32>(-2147483647i, u_input.b)), _wgslsmith_mod_u32(var_0.x, ~(~4294967295u)) | 1u);
    let var_2 = var_1.c;
    let var_3 = func_2().a;
    var_0 = vec2<u32>(1u, abs(var_1.d));
    let var_4 = 551f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_4 * -2143f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.d, 8u)] * _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(75716u, 8u)], var_4))) * _wgslsmith_f_op_f32(122f * -618f)))));
}

