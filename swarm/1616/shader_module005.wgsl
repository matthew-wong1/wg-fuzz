struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(209f, -1179f, 265f, -251f, 262f, 429f, 1211f, 635f, 1535f, 653f, 315f, 163f, 1074f, 136f, -2381f, -1068f, -1200f, -609f, 1869f, -696f, 577f, -957f, 1260f, 827f, 1246f, -1000f, 1000f);

var<private> global1: array<vec4<u32>, 19>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(398f, _wgslsmith_f_op_f32(682f + -939f))) * _wgslsmith_f_op_f32(768f - arg_0.c.c.x)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>) -> i32 {
    var var_0 = vec4<bool>(select(select(false, true, true), true, !(reverseBits(1i) >= arg_1.x)), true, true, all(vec2<bool>(true, true)));
    var var_1 = !vec3<bool>(!any(!vec4<bool>(false, var_0.x, false, var_0.x)), false, all(!vec4<bool>(var_0.x, var_0.x, false, false)));
    let var_2 = abs(-(~arg_1.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(firstLeadingBit(11893u >> (0u % 32u)) ^ ~u_input.b.x, 27u)], -532f, -1000f, _wgslsmith_f_op_f32(select(595f, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], var_1.x))), vec4<f32>(738f, global0[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_f_op_f32(func_1(Struct_2(arg_1.x >> (u_input.a % 32u), countOneBits(u_input.b), Struct_1(arg_0.x, 33967i, vec3<f32>(3257f, 113f, 570f), true)))), global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(u_input.a, 4294967295u)), 27u)]), !var_1.x || false));
    global1 = array<vec4<u32>, 19>();
    return min(i32(-1i) * -6047i, reverseBits(_wgslsmith_add_i32(_wgslsmith_mod_i32(72635i, var_2), arg_0.x)) | (i32(-1i) * -18371i));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], _wgslsmith_f_op_f32(min(-1415f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 27u)] - 1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-537f, 202f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(70178u, 27u)]) - vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], 2330f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-342f, global0[_wgslsmith_index_u32(u_input.b.x, 27u)])))))));
    let var_1 = Struct_1(-2147483647i, _wgslsmith_div_i32(~(reverseBits(-14365i) << (u_input.b.x % 32u)), 1i), vec3<f32>(_wgslsmith_f_op_f32(var_0.x * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -408f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 27u)] * -691f)), 0u < u_input.a);
    let var_2 = var_1.d;
    let var_3 = Struct_2(~var_1.a, countOneBits(~u_input.b), Struct_1(_wgslsmith_mod_i32(func_3(abs(vec3<i32>(var_1.b, -2147483647i, 1i)), vec3<i32>(46629i, var_1.b, 1i)), _wgslsmith_mult_i32(var_1.b, -1i << (1u % 32u))), -11647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c))), !(!var_1.d)));
    var var_4 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(719f, _wgslsmith_f_op_f32(-347f + _wgslsmith_f_op_f32(995f * _wgslsmith_f_op_f32(func_1(var_3)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1961f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -417f)))), var_0.x)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_3.c.c.x)), -938f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~(-abs(-24543i)) | abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-43008i, 2147483647i, -49827i, 56667i))), u_input.b, Struct_1(-17973i, _wgslsmith_mult_i32(-1i, ~(-9783i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(23500u, 27u)], 899f))))), true));
    let var_1 = var_0.b.x;
    let var_2 = Struct_2(-48013i, var_0.b >> (var_0.b % vec3<u32>(32u)), Struct_1(abs(2147483647i), _wgslsmith_add_i32(var_0.a, var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1938f, -1159f, var_0.c.c.x)), _wgslsmith_div_vec3_f32(var_0.c.c, vec3<f32>(-1979f, var_0.c.c.x, 535f))))), var_0.c.d));
    global0 = array<f32, 27>();
    let var_3 = vec2<bool>(true, (_wgslsmith_f_op_f32(func_1(var_2)) >= _wgslsmith_f_op_f32(func_2())) || (var_0.c.c.x != _wgslsmith_f_op_f32(-var_0.c.c.x)));
    global0 = array<f32, 27>();
    let var_4 = Struct_1(var_0.a, firstTrailingBit(_wgslsmith_div_i32(-func_3(vec3<i32>(-19034i, var_2.c.a, -1i), vec3<i32>(-2147483647i, -28701i, var_2.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.a, var_0.a, -1i, var_2.c.b), vec4<i32>(20425i, var_2.a, var_2.a, 0i)) >> (var_0.b.x % 32u))), vec3<f32>(var_0.c.c.x, 921f, _wgslsmith_f_op_f32(f32(-1f) * -375f)), !(!var_2.c.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -countOneBits(1i), (var_2.a ^ var_4.b) >> (~1u % 32u)), vec3<i32>(var_4.b, 1i, ~(~1i))));
}

