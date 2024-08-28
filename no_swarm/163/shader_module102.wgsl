struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: Struct_2,
    d: i32,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-700f, 638f);

var<private> global1: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(4950u, 61256u), vec2<u32>(8442u, 0u), vec2<u32>(1u, 16888u), vec2<u32>(6000u, 56294u), vec2<u32>(0u, 47696u), vec2<u32>(4294967295u, 1u), vec2<u32>(294u, 4294967295u), vec2<u32>(16012u, 34941u), vec2<u32>(5114u, 1u), vec2<u32>(31237u, 4294967295u), vec2<u32>(43579u, 0u), vec2<u32>(4294967295u, 28530u), vec2<u32>(4294967295u, 66822u), vec2<u32>(4946u, 56334u), vec2<u32>(4294967295u, 1u), vec2<u32>(35968u, 1u), vec2<u32>(1151u, 64931u), vec2<u32>(4294967295u, 199u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    var var_0 = Struct_2(true, select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), !all(vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, global0.x >= -322f, all(vec3<bool>(false, true, false)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(false, true)), false))), 13261u >> (u_input.b % 32u), global0.x, Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, true, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(14197u, 41685u), 4405u, u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 42647u, 4294967295u, 13150u))), ~select(vec4<u32>(u_input.b, u_input.b, 96962u, 0u), vec4<u32>(u_input.b, 10379u, u_input.b, u_input.b), false))));
    let var_1 = true || all(!select(vec2<bool>(var_0.e.a.x, var_0.a), vec2<bool>(true, false), true));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-136f, global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(414f * -1487f))))));
    var var_3 = 13199i;
    var var_4 = ~vec3<u32>(~var_0.e.b, abs(~(4294967295u << (u_input.b % 32u))), ~var_0.e.b);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x - -600f)));
}

fn func_2() -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global0.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.x * -120f), _wgslsmith_f_op_f32(f32(-1f) * -1493f)) - vec2<f32>(_wgslsmith_f_op_f32(func_3()), -414f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-102f, 1732f), vec2<f32>(global0.x, -510f)))) + vec2<f32>(_wgslsmith_f_op_f32(global0.x + -1365f), _wgslsmith_f_op_f32(global0.x - global0.x)))));
    let var_0 = vec3<i32>(-71242i, u_input.a, -_wgslsmith_sub_i32(u_input.a, u_input.a));
    var var_1 = u_input.a;
    global1 = array<vec2<u32>, 18>();
    var var_2 = select(select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), true), false), vec2<bool>(!any(vec4<bool>(true, true, false, false)), false), false), select(vec2<bool>(var_0.x >= ~55123i, true), select(vec2<bool>(false, global0.x < global0.x), vec2<bool>(true, true), true), -445f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x)))), all(vec3<bool>(true, true, true)));
    return max(u_input.b, min(_wgslsmith_add_u32(_wgslsmith_add_u32(~2062u, _wgslsmith_mod_u32(u_input.b, 4294967295u)), 4294967295u), u_input.b));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_5) -> f32 {
    var var_0 = vec4<i32>(-1i) * -max(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-2147483647i, -1i, -2147483647i, -1i)), vec4<i32>(0i, 32957i, 2147483647i, u_input.a)), ~firstTrailingBit(vec4<i32>(u_input.a, u_input.a, arg_3.d, 12589i)));
    var_0 = vec4<i32>(~(1i | arg_3.d), u_input.a, 1i >> (arg_2.b % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-21667i, 0i, ~min(2147483647i, 0i)), abs(var_0.yyz)));
    var_0 = firstLeadingBit(~reverseBits(min(vec4<i32>(2147483647i, var_0.x, var_0.x, arg_3.d), vec4<i32>(arg_3.d, -1i, arg_3.d, -2147483647i) & vec4<i32>(var_0.x, arg_3.d, var_0.x, var_0.x))));
    var var_1 = _wgslsmith_f_op_f32(func_3());
    return _wgslsmith_f_op_f32(func_3());
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1.a.x;
    let var_1 = arg_1.a.x;
    let var_2 = vec2<f32>(-1528f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(global0.x, 790f)) + vec2<f32>(global0.x, -260f))), true, Struct_1(!select(vec3<bool>(true, arg_1.a.x, false), vec3<bool>(true, var_1, var_1), arg_1.a.x), countOneBits(func_2())), Struct_5(vec4<u32>(select(4294967295u, arg_1.b, false), arg_1.b, 49522u, ~arg_1.b), _wgslsmith_f_op_f32(f32(-1f) * -153f), arg_1.a.xy, -firstLeadingBit(u_input.a)))));
    let var_3 = Struct_3(Struct_2(var_1, arg_1.a, ~arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1212f)))), Struct_1(select(vec3<bool>(var_1, true, arg_1.a.x), select(arg_1.a, vec3<bool>(arg_1.a.x, false, false), arg_1.a.x), !vec3<bool>(arg_1.a.x, false, true)), arg_1.b)), true);
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-var_3.a.d)))))));
    return var_3.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1204f - _wgslsmith_f_op_f32(global0.x * -996f)), _wgslsmith_f_op_f32(f32(-1f) * -187f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1163f + global0.x) + _wgslsmith_f_op_f32(f32(-1f) * -412f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, global0.x, -686f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-141f, global0.x, global0.x) - vec3<f32>(global0.x, global0.x, 527f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, global0.x, -655f), vec3<f32>(-968f, -1273f, global0.x))))))));
    let var_1 = _wgslsmith_mod_i32(-31757i | (_wgslsmith_sub_i32(select(-2147483647i, 66022i, false), 20025i ^ u_input.a) >> (u_input.b % 32u)), -(~2147483647i));
    let var_2 = ~reverseBits(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(~u_input.b, 18u)], countOneBits(global1[_wgslsmith_index_u32(1u, 18u)])), _wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(~u_input.b, 18u)], vec2<u32>(13652u, 16876u))));
    global1 = array<vec2<u32>, 18>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), global0.x, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(func_1(u_input.b, Struct_1(vec3<bool>(true, false, false), 1u))))))));
    global1 = array<vec2<u32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstLeadingBit(_wgslsmith_mod_u32(~u_input.b, max(54482u, var_2.x))), var_2.x, 4294967295u));
}

