struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec2<bool> {
    var var_0 = ~vec4<u32>(~u_input.a, ~52883u, 37175u, ~1u);
    var_0 = vec4<u32>(~reverseBits(var_0.x), 1u, 80325u, ~1u);
    var var_1 = u_input.a;
    var var_2 = Struct_4(Struct_3(Struct_1(vec3<bool>(true, true, true))), Struct_2(38089i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-385f, arg_0, -263f, -1694f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-659f, arg_0, arg_0, arg_0))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, arg_0, -522f)), vec4<f32>(1704f, arg_0, arg_0, 333f))), vec4<f32>(arg_0, 1092f, arg_0, -1402f), select(vec4<bool>(true, select(true, false, true), all(vec2<bool>(false, false)), true), vec4<bool>(true, arg_0 < 125f, var_0.x >= 1u, all(vec2<bool>(false, true))), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))))));
    let var_3 = var_2.c.zy;
    return vec2<bool>(var_2.a.a.a.x, any(select(select(vec3<bool>(false, true, true), var_2.a.a.a, var_2.a.a.a.x), var_2.a.a.a, var_2.a.a.a)) || (any(vec3<bool>(false, false, true)) | false));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> f32 {
    var var_0 = Struct_1(vec3<bool>(true, true, true));
    var_0 = Struct_1(vec3<bool>(all(vec4<bool>(true, true, var_0.a.x, all(vec4<bool>(false, var_0.a.x, true, true)))), true, !all(func_3(802f))));
    var_0 = Struct_1(vec3<bool>(var_0.a.x && (-18193i > (u_input.b | u_input.b)), !(any(vec4<bool>(false, true, false, var_0.a.x)) & var_0.a.x), all(!vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x))));
    var_0 = Struct_1(select(vec3<bool>(u_input.a >= (u_input.a >> (u_input.a % 32u)), (arg_1 ^ arg_0.x) == arg_0.x, any(vec3<bool>(var_0.a.x, true, var_0.a.x))), select(var_0.a, var_0.a, true), !var_0.a));
    var var_1 = true;
    return -594f;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: vec3<i32>) -> vec2<bool> {
    var var_0 = vec3<bool>(true, arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(arg_3.x, -1i, arg_0, 2147483647i), -2147483647i)))) < _wgslsmith_f_op_f32(exp2(1f)));
    var var_1 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1 >> (_wgslsmith_div_vec3_u32(vec3<u32>(23300u, 29434u, 1u), vec3<u32>(arg_1.x, u_input.a, 2304u)) % vec3<u32>(32u)), arg_1), arg_1.x, arg_1.x, u_input.a);
    var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(~abs(~u_input.a), u_input.a, 32738u, 4294967295u), vec4<u32>(~65623u, firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_1, ~vec3<u32>(11966u, 4294967295u, arg_1.x))), abs(arg_1.x), min(17731u << (~var_1.x % 32u), 0u & reverseBits(arg_1.x))));
    var var_2 = !vec4<bool>(var_0.x, arg_2.x, false, false);
    var_1 = abs(select(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 12763u, 80693u, var_1.x), vec4<u32>(u_input.a, 6415u, arg_1.x, var_1.x)), ~(vec4<u32>(4294967295u, u_input.a, var_1.x, 22887u) >> (vec4<u32>(80870u, 4294967295u, 4294967295u, 0u) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 24184u, var_1.x, 44988u), vec4<u32>(1u, 20630u, 0u, var_1.x)), 1234u & arg_1.x, ~var_1.x, ~arg_1.x), vec4<u32>(reverseBits(27699u), max(4294967295u, var_1.x), u_input.a, ~var_1.x)), vec4<bool>(false, true, var_0.x, arg_2.x || true)));
    return arg_2.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-3780i);
    var var_1 = Struct_5(!select(vec2<bool>(true, true), func_1(u_input.b, vec3<u32>(0u, 73205u, 0u) & vec3<u32>(0u, u_input.a, u_input.a), vec3<bool>(true, true, true), countOneBits(vec3<i32>(-12952i, -2147483647i, var_0.a))), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(2147483647i, -4880i, -27657i, var_0.a), -32575i))), _wgslsmith_f_op_f32(f32(-1f) * -365f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-177f))), _wgslsmith_f_op_f32(select(1086f, -177f, all(vec3<bool>(false, var_1.a.x, var_1.a.x)))))))));
    var_1 = Struct_5(var_1.a);
    var_0 = Struct_2(46352i);
    var_0 = Struct_2(_wgslsmith_div_i32(_wgslsmith_sub_i32(-u_input.c.x, -(~u_input.c.x)), u_input.c.x));
    let var_3 = Struct_5(func_3(-891f));
    var_0 = Struct_2(-38855i);
    var_0 = Struct_2(~var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a, 12552u, 47884u) | (vec4<u32>(4105u, 1u, u_input.a, 40300u) >> (vec4<u32>(u_input.a, 0u, 57887u, 0u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 96867u, u_input.a), vec4<u32>(1u, u_input.a, 0u, u_input.a)), vec4<u32>(41119u, 32889u, u_input.a, 0u))), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(43541u, u_input.a), vec2<u32>(u_input.a, 53067u)) | ~66874u)), u_input.c, u_input.a);
}

