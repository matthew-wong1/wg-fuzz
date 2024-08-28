struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = ~u_input.b.zy;
    let var_1 = abs(~_wgslsmith_sub_u32(firstTrailingBit(u_input.a | 4294967295u), _wgslsmith_sub_u32(u_input.c.x >> (u_input.c.x % 32u), 11202u)));
    let var_2 = Struct_1(firstLeadingBit(~(~(~u_input.c))));
    let var_3 = reverseBits(_wgslsmith_mult_u32(31370u, ~_wgslsmith_mod_u32(~74209u, firstTrailingBit(0u))));
    var var_4 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-521f, _wgslsmith_f_op_f32(-592f - _wgslsmith_f_op_f32(ceil(293f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1295f, 1294f))))))));
    return Struct_2(var_0.x << (~var_1 % 32u), ~(firstTrailingBit(countOneBits(1u)) | 4294967295u), var_4.x, _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(33412i, u_input.b.x, -2147483647i) & vec3<i32>(2147483647i, var_0.x, var_0.x)), u_input.b));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> Struct_2 {
    var var_0 = vec4<u32>(u_input.c.x, firstLeadingBit(arg_0.b) ^ _wgslsmith_add_u32(min(25688u, ~arg_0.b), min(arg_0.b, 46843u)), _wgslsmith_sub_u32(abs(u_input.a), 4294967295u), ~(~reverseBits(1u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.c, -2349f))) - vec2<f32>(func_2(arg_0.a).c, -521f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.c, arg_0.c)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.c)), vec2<f32>(arg_0.c, arg_0.c))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_div_f32(arg_0.c, arg_0.c)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, 690f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_0.c) + vec2<f32>(arg_0.c, var_1.x)) * vec2<f32>(-1000f, -1000f)) - vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-arg_0.c)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-536f, -169f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_0.c) + vec2<f32>(arg_0.c, arg_0.c)), vec2<bool>(arg_1, arg_1)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(517f, 108f))))), vec2<bool>(all(select(vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(true, false, false, arg_1))), all(vec3<bool>(false, arg_1, arg_1)) & select(arg_1, arg_1, true)))));
    var var_2 = abs((firstTrailingBit(abs(22381u)) >> (4321u % 32u)) | _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c.wzx, var_0.xzx), ~u_input.c.ywx));
    var var_3 = Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 158931u), vec2<u32>(arg_0.b, var_0.x)), ~57075u, arg_0.b, abs(1u)) & firstLeadingBit(u_input.c));
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = func_3(func_2(u_input.b.x & _wgslsmith_dot_vec2_i32(u_input.b.yy, ~vec2<i32>(u_input.b.x, u_input.b.x))), all(vec2<bool>(true, true)), _wgslsmith_div_i32(u_input.b.x, ~58125i));
    let var_1 = Struct_1(~(countOneBits(vec4<u32>(1u, var_0.b, 37265u, 1u) >> (vec4<u32>(arg_0.a.x, var_0.b, u_input.a, arg_0.a.x) % vec4<u32>(32u))) ^ vec4<u32>(~91u, 45617u, 24508u, 0u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_0.c) - var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1418f)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(max(var_0.c, 277f)), _wgslsmith_f_op_f32(-807f * var_0.c)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c, 441f, 1303f), vec3<f32>(529f, -1000f, 616f))))))));
    var var_3 = all(!vec2<bool>(!all(vec2<bool>(false, false)), 23485u <= var_1.a.x));
    var var_4 = _wgslsmith_f_op_f32(step(-1065f, var_0.c));
    return -reverseBits(u_input.b.x ^ -9625i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(abs(34432i), ~(_wgslsmith_sub_u32(reverseBits(u_input.a), 4294967295u) ^ (u_input.a & ~16403u)), -376f, _wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, u_input.b.x, -u_input.b.x), vec3<i32>(~5400i, _wgslsmith_div_i32(_wgslsmith_add_i32(-1i, u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(0i, 1i))), 351i)));
    var var_1 = countOneBits(~(~vec4<i32>(-1i, -19690i, var_0.d.x, 0i))) & vec4<i32>(var_0.d.x, abs(func_1(Struct_1(u_input.c))), firstLeadingBit(max(u_input.b.x, ~(-58247i))), var_0.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(799f, _wgslsmith_f_op_f32(f32(-1f) * -479f), 354f, _wgslsmith_div_f32(var_0.c, -1481f))))));
    let var_3 = Struct_3(Struct_1(u_input.c), vec4<i32>(~(i32(-1i) * -10707i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_1.x, 19273i), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.x, 0i, -2147483647i), vec4<i32>(-2147483647i, 51780i, 20064i, var_1.x)), -1521i)), -42886i, reverseBits(2147483647i)), Struct_1(vec4<u32>(30326u, ~(~var_0.b), 51284u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, 4294967295u >> (_wgslsmith_div_u32(var_0.b, _wgslsmith_add_u32(var_0.b, var_0.b) << (~var_0.b % 32u)) % 32u), vec4<u32>(0u, 0u, ~0u, 1u), _wgslsmith_f_op_vec3_f32(var_2.wzx * vec3<f32>(var_2.x, var_2.x, var_2.x)));
}

