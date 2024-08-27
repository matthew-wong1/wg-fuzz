struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: bool, arg_1: u32) -> bool {
    var var_0 = any(vec3<bool>(!arg_0, false, true));
    let var_1 = u_input.a.wz;
    let var_2 = -48537i;
    let var_3 = Struct_1(!arg_0);
    var var_4 = u_input.a;
    return !var_3.a;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    let var_0 = arg_1;
    let var_1 = ~1i;
    let var_2 = vec2<i32>(~_wgslsmith_dot_vec4_i32(abs(select(vec4<i32>(2147483647i, 14198i, var_1, var_1), vec4<i32>(-408i, 21308i, -47427i, 0i), true)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, -22937i, 2147483647i, -1i) & vec4<i32>(-2147483647i, var_1, var_1, 7621i), -vec4<i32>(var_1, -15823i, var_1, var_1))), countOneBits(var_1));
    var var_3 = arg_1;
    let var_4 = -799f;
    return u_input.a.x;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = countOneBits(-39890i);
    var var_1 = Struct_1((~abs(u_input.a.x) >= u_input.a.x) && arg_2.x);
    var_1 = Struct_1(false);
    let var_2 = func_3(false, Struct_1(false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(arg_0 + 1000f)))));
    var var_3 = vec3<bool>(all(arg_2), true & !all(!arg_2.zz), any(vec4<bool>(any(arg_1.xx) | (var_2 == 0u), false, true, false)));
    return Struct_1(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.zzy;
    var var_1 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1230f, 450f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2298f * 535f)))))), !vec3<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), !any(vec3<bool>(false, true, false))), vec3<bool>(func_1(any(vec4<bool>(true, true, false, true)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, var_0.x), u_input.a), 0u)), false, false));
    var_1 = func_2(248f, vec3<bool>(any(vec3<bool>(true, true, true && var_1.a)), any(vec2<bool>(select(var_1.a, var_1.a, var_1.a), u_input.a.x == var_0.x)), select(true, !(false || var_1.a), all(select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(var_1.a, false, var_1.a))))), !(!select(select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, false), vec3<bool>(true, var_1.a, var_1.a)), vec3<bool>(var_1.a, var_1.a, var_1.a), var_1.a)));
    var var_2 = func_2(_wgslsmith_f_op_f32(trunc(-178f)), select(!(!(!vec3<bool>(false, var_1.a, var_1.a))), !(!select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, true, var_1.a), var_1.a)), vec3<bool>(true, true, true)), vec3<bool>(true, all(select(!vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, var_1.a), select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, false, false), vec3<bool>(true, var_1.a, var_1.a)))), var_1.a));
    var var_3 = vec3<bool>(false, 120f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1076f)))), var_2.a);
    var_3 = vec3<bool>(var_1.a, false, !var_1.a);
    let var_4 = var_2.a;
    var_1 = Struct_1(true);
    var_3 = !(!(!(!select(vec3<bool>(var_1.a, true, var_3.x), vec3<bool>(true, false, false), var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~firstLeadingBit(0i)), ~vec2<u32>(~max(var_0.x, u_input.a.x), countOneBits(abs(u_input.a.x))));
}

