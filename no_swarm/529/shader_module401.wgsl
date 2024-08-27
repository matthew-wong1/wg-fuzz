struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32>;

var<private> global1: array<f32, 30> = array<f32, 30>(3237f, -999f, 1000f, -717f, 392f, 836f, -681f, -419f, -696f, -1065f, -1267f, 224f, -1794f, 556f, 1000f, -1000f, 505f, 132f, 1211f, -1000f, 769f, 586f, 843f, -1581f, 1342f, -481f, 791f, 985f, 334f, -698f);

var<private> global2: bool;

var<private> global3: Struct_1 = Struct_1(30729i, 923f, 1u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = ~arg_2.c;
    let var_1 = Struct_1((arg_1 >> (arg_2.c % 32u)) & arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 30u)]) * _wgslsmith_f_op_f32(209f - -346f))), arg_2.b), 6667u);
    var var_2 = vec2<i32>(2147483647i, ~(~1i));
    global0 = array<vec2<f32>, 32>();
    var var_3 = abs(u_input.b);
    return true;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec3<f32>) -> Struct_1 {
    global2 = true;
    global2 = true;
    let var_0 = -318f;
    var var_1 = Struct_1(12570i, _wgslsmith_f_op_f32(step(199f, 1000f)), 4294967295u);
    var_1 = Struct_1(_wgslsmith_dot_vec4_i32(countOneBits(-(~vec4<i32>(2147483647i, -1i, var_1.a, 20547i))), _wgslsmith_mod_vec4_i32(min(vec4<i32>(global3.a, 35329i, -2147483647i, 34813i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a, global3.a, var_1.a, -54477i), vec4<i32>(2147483647i, var_1.a, 2147483647i, u_input.e))), vec4<i32>(-1i) * -vec4<i32>(global3.a, arg_0, var_1.a, 2696i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(480f * -137f))), 4294967295u);
    return Struct_1(firstLeadingBit(min(var_1.a, _wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, var_1.a, var_1.a), vec3<i32>(-49878i, u_input.e, -1i), vec3<bool>(true, false, false)), _wgslsmith_div_vec3_i32(vec3<i32>(-4976i, -2147483647i, global3.a), vec3<i32>(var_1.a, global3.a, 29776i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-164f, var_1.b, all(vec4<bool>(true, true, false, false))))), 1u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global0 = array<vec2<f32>, 32>();
    var var_0 = func_2(_wgslsmith_dot_vec3_i32(abs(abs(vec3<i32>(global3.a, -2147483647i, -30879i)) & vec3<i32>(u_input.e, arg_1.a, 0i)), vec3<i32>(9316i, _wgslsmith_add_i32(7923i, select(arg_1.a, -1i, false)), _wgslsmith_sub_i32(countOneBits(-1i), _wgslsmith_sub_i32(-14405i, -1i)))), -1121f, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~4294967295u, 30u)]))), global3.b, 1928f));
    global2 = any(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(vec4<i32>(arg_1.a, var_0.a, 2147483647i, arg_1.a), -7878i, arg_1))), all(vec4<bool>(all(vec3<bool>(false, false, false)), any(vec2<bool>(false, true)), arg_0.x != global3.c, select(true, true, true)))));
    var var_1 = -(i32(-1i) * -var_0.a);
    let var_2 = Struct_1(~var_0.a, -454f, _wgslsmith_dot_vec3_u32(arg_0.zwy, arg_0.xxw));
    return Struct_1(~u_input.e, var_2.b, _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(~(~545u), _wgslsmith_mult_u32(~arg_1.c, _wgslsmith_dot_vec3_u32(arg_0.yxw, vec3<u32>(arg_0.x, u_input.b.x, 4294967295u))))));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> i32 {
    var var_0 = global3.a;
    var var_1 = arg_1.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1156f, global3.b, 808f)))) * vec3<f32>(_wgslsmith_div_f32(609f, _wgslsmith_f_op_f32(-global3.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(4294967295u, 30u)])), _wgslsmith_f_op_f32(f32(-1f) * -1374f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1163f * 854f) * _wgslsmith_f_op_f32(-933f + global3.b))))));
    let var_3 = func_2(i32(-1i) * -(~global3.a | -1i), func_3(firstTrailingBit(~vec4<u32>(79300u, arg_1.c, 22817u, arg_1.c)), func_2(-1i & global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f) + 165f), vec3<f32>(_wgslsmith_f_op_f32(global3.b - 1219f), _wgslsmith_f_op_f32(328f - -941f), _wgslsmith_f_op_f32(round(-488f)))), abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(56191u, u_input.d.x, u_input.b.x, 4294967295u), vec4<u32>(1u, arg_1.c, u_input.c, global3.c)), u_input.b.x >> (arg_1.c % 32u)))).b, vec3<f32>(-1517f, var_2.x, _wgslsmith_f_op_f32(892f * global1[_wgslsmith_index_u32(arg_1.c, 30u)]))).b;
    let var_4 = Struct_1(countOneBits(u_input.e ^ _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_1.a, arg_1.a, -1i, arg_1.a)), ~vec4<i32>(u_input.e, arg_1.a, arg_1.a, arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2(-22221i, 1374f, vec3<f32>(1000f, 1000f, -1650f)).b, _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(1u, 30u)])))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * 2020f))), global3.c);
    return -(~(-_wgslsmith_sub_i32(~(-60433i), _wgslsmith_mod_i32(var_4.a, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~21331u, ~7350u);
    global0 = array<vec2<f32>, 32>();
    var var_1 = _wgslsmith_mult_i32(-_wgslsmith_add_i32(global3.a, -abs(-2147483647i)), func_4(all(vec4<bool>(func_1(vec4<i32>(global3.a, 25272i, -70690i, u_input.e), 0i, Struct_1(-11404i, -868f, 4294967295u)), all(vec3<bool>(true, true, true)), true, true)), func_3(vec4<u32>(12393u, firstTrailingBit(40699u), _wgslsmith_div_u32(var_0.x, 10460u), _wgslsmith_mult_u32(global3.c, 0u)), func_2(i32(-1i) * -1i, 903f, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1338f, global3.b, 1169f), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], -359f, 1420f)))), u_input.c)));
    var var_2 = vec4<bool>(false, true, false, _wgslsmith_f_op_f32(773f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 30u)] * -1000f), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(var_0.x, 30u)], global3.b))))) != _wgslsmith_f_op_f32(step(331f, -527f)));
    global1 = array<f32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, abs(_wgslsmith_div_vec3_i32(~(~vec3<i32>(2147483647i, 1i, -2147483647i)), -(~vec3<i32>(2147483647i, global3.a, 2147483647i)))), abs(global3.c));
}

