struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(1i, -30856i, i32(-2147483648), -35i, 2147483647i, 761i, 1i, 47045i, i32(-2147483648), -23485i, -69299i, -31668i, -36870i, -24614i, 1i, -4282i, 1i, -16800i, -46484i, 2147483647i, i32(-2147483648), i32(-2147483648), 0i);

var<private> global1: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(40716u, 4294967295u), vec2<u32>(4294967295u, 9826u), vec2<u32>(133273u, 4294967295u), vec2<u32>(12011u, 4294967295u), vec2<u32>(12724u, 0u), vec2<u32>(27823u, 72562u), vec2<u32>(82861u, 1u), vec2<u32>(4294967295u, 116339u), vec2<u32>(4294967295u, 50397u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 5503u), vec2<u32>(2907u, 15064u), vec2<u32>(4294967295u, 0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    global0 = array<i32, 23>();
    var var_0 = select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false)), false), !vec4<bool>(false, all(vec3<bool>(false, false, true)), select(true, true, true), true), all(vec3<bool>(true, true, true)));
    var var_1 = any(vec2<bool>(var_0.x, var_0.x));
    var var_2 = 24816u;
    var_2 = ~1u;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-933f * _wgslsmith_f_op_f32(ceil(2896f))))), 406f, var_0.x));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(1i, arg_0.x, -62392i)))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2066f) * 1129f))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))) + _wgslsmith_f_op_f32(func_3(abs(vec3<i32>(-3811i, global0[_wgslsmith_index_u32(62467u, 23u)], 580i)) ^ u_input.a))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, 2617f))))))));
    var var_3 = ~vec3<u32>(~54540u, 1u, abs(1u));
    var_2 = -358f;
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(var_0.a, vec3<f32>(-913f, var_0.a.x, var_0.a.x))))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: f32, arg_3: bool) -> Struct_2 {
    var var_0 = func_2(reverseBits(u_input.a));
    global0 = array<i32, 23>();
    let var_1 = 1000f;
    var var_2 = select(vec3<bool>(arg_3, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, !(!(true && arg_3))));
    var_0 = Struct_1(var_0.a);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-802f, -1038f))), 745f, !(arg_3 & false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -684f;
    var var_1 = vec2<u32>(0u, 32788u);
    let var_2 = _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x), vec4<u32>(0u, var_1.x, var_1.x, 1u)), ~vec4<u32>(1u, 4294967295u, 0u, var_1.x), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true)), _wgslsmith_div_vec4_u32(max(vec4<u32>(16517u, 19879u, 4294967295u, var_1.x), vec4<u32>(var_1.x, 3725u, var_1.x, 57378u)), ~vec4<u32>(47737u, 1u, 4750u, var_1.x))), ~_wgslsmith_div_vec4_u32(~firstTrailingBit(vec4<u32>(var_1.x, 4294967295u, 19992u, var_1.x)), firstLeadingBit(vec4<u32>(var_1.x, 0u, 0u, 4294967295u))));
    let var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(-firstTrailingBit(-2147483647i), global0[_wgslsmith_index_u32(var_1.x, 23u)]), u_input.a.yx);
    var var_4 = func_1(_wgslsmith_add_vec3_u32(vec3<u32>(1u, ~var_2, min(1u, ~var_1.x)), abs(~max(vec3<u32>(4294967295u, var_2, 341u), vec3<u32>(var_1.x, var_2, 1u)))), ~global1[_wgslsmith_index_u32(~var_2, 14u)], 649f, false);
    var_1 = countOneBits(global1[_wgslsmith_index_u32(14531u, 14u)]);
    let var_5 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(-select(select(select(vec4<i32>(u_input.a.x, -1i, var_3.x, global0[_wgslsmith_index_u32(var_2, 23u)]), vec4<i32>(2147483647i, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 23u)], u_input.a.x), true), -vec4<i32>(48176i, global0[_wgslsmith_index_u32(var_2, 23u)], -18078i, -1i), select(vec4<bool>(var_5.x, var_5.x, var_5.x, var_5.x), vec4<bool>(var_5.x, var_5.x, false, true), var_5.x)), vec4<i32>(-30286i, _wgslsmith_add_i32(-10325i, u_input.a.x), var_3.x, -31548i), vec4<bool>(any(var_5.yx), var_5.x & var_5.x, true, true || var_5.x)), min(1u, var_1.x), 7356u);
}

