struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26>;

var<private> global1: u32 = 1u;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<vec2<u32>, 26>();
    let var_0 = global0[_wgslsmith_index_u32(min(0u, ~(~1u)), 26u)];
    global0 = array<vec2<u32>, 26>();
    global1 = ~(~var_0.x);
    var var_1 = ~(~(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, var_0.x) ^ var_0.x, 26u)]));
    return false;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> vec4<bool> {
    global0 = array<vec2<u32>, 26>();
    var var_0 = ~_wgslsmith_div_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(30358u, arg_0.x, 1u), arg_0.wxx)), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(67089u, 0u), firstTrailingBit(14219u)), ~(~arg_0.x), _wgslsmith_dot_vec3_u32(firstLeadingBit(arg_0.wzw), vec3<u32>(arg_0.x, 0u, 23434u) >> (arg_0.xyx % vec3<u32>(32u)))));
    var var_1 = Struct_1(abs(abs(_wgslsmith_sub_vec3_i32(-vec3<i32>(-3306i, u_input.b, -6716i), -vec3<i32>(u_input.b, u_input.a, 26730i)))));
    var_1 = Struct_1(~vec3<i32>(~var_1.a.x | -1i, abs(u_input.a), ~u_input.a));
    var_0 = _wgslsmith_div_vec3_u32(arg_0.ywz, _wgslsmith_mod_vec3_u32(arg_0.yzx, arg_0.xxx));
    return !select(!vec4<bool>(false, arg_1, -1i != var_1.a.x, true), vec4<bool>(arg_0.x != 1u, true, arg_1 & !arg_1, arg_1), !vec4<bool>(true, func_3(Struct_1(vec3<i32>(var_1.a.x, 1i, u_input.a))), true, !arg_1));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = !all(arg_0.zy);
    let var_1 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -837f)) > _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(222f - arg_1), arg_1))), true, func_3(Struct_1(vec3<i32>(0i << (0u % 32u), ~u_input.b, max(0i, 2147483647i)))), (!func_3(Struct_1(vec3<i32>(u_input.b, 1i, u_input.a))) != (false || arg_0.x)) | arg_0.x);
    var var_2 = arg_1;
    global0 = array<vec2<u32>, 26>();
    var_2 = _wgslsmith_f_op_f32(abs(-562f));
    return Struct_1(~(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<i32>(u_input.a, -20826i, u_input.a))));
}

fn func_1() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-687f, 858f) + vec2<f32>(1398f, -1309f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-703f, 1813f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(114f, 1757f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-654f, -733f) * vec2<f32>(-666f, 393f))))));
    var var_1 = func_4(vec3<bool>(true | (u_input.a <= -u_input.b), all(select(vec4<bool>(true, true, true, true), func_2(vec4<u32>(12566u, 39467u, 1u, 75970u), false), vec4<bool>(false, false, false, true))), any(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = ~firstTrailingBit(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(12674u, 1u, 19959u)), vec3<u32>(1u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 26083u, 1u), vec4<u32>(4294967295u, 3018u, 27565u, 1u)))));
    var var_3 = Struct_2(func_4(vec3<bool>(true, true, true), 1113f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(261f, var_0.x))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -470f), vec2<f32>(var_0.x, 419f), true))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_0.x)))))));
    var var_4 = !select(!vec3<bool>(var_0.x != var_0.x, true, all(vec2<bool>(false, false))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), func_2(vec4<u32>(var_2.x, var_2.x, var_2.x, 88839u), true).wzy), !(!func_2(vec4<u32>(var_2.x, 52035u, 4294967295u, 4294967295u), true).wzz));
    return func_4(select(vec3<bool>(false, false, var_4.x), func_2(vec4<u32>(76979u, var_2.x, 10896u, 57046u) ^ ~vec4<u32>(23225u, var_2.x, var_2.x, 14912u), select(select(true, false, false), true, select(false, false, var_4.x))).xxy, any(vec2<bool>(var_4.x, var_4.x))), var_3.b.x).a.yz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_i32(min(countOneBits(vec2<i32>(9357i, u_input.b)) >> (global0[_wgslsmith_index_u32(1u, 26u)] % vec2<u32>(32u)), func_1()), _wgslsmith_sub_vec2_i32(-firstLeadingBit(vec2<i32>(-27881i, -47613i)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 7815i), vec2<i32>(u_input.b, u_input.b)))) >> (vec2<u32>(1u, max(~14639u, 1u)) % vec2<u32>(32u));
    var_0 = _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, firstTrailingBit(u_input.b))), vec2<i32>(-1i) * -(~max(vec2<i32>(-13272i, u_input.b), vec2<i32>(u_input.a, u_input.a))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-240f, 759f, 103f, 1623f))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -513f)))), var_1.x);
    let var_3 = 39045u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_3), var_1.zww);
}

