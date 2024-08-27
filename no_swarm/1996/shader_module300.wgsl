struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~reverseBits(~vec2<u32>(1u, 1u)));
    let var_1 = Struct_1(var_0.a);
    let var_2 = u_input.a.x & firstTrailingBit(u_input.a.x);
    let var_3 = ~(~_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, var_2, u_input.a.x), vec4<i32>(-6885i, var_2, u_input.a.x, u_input.a.x) << (vec4<u32>(21776u, var_1.a.x, var_0.a.x, 43856u) % vec4<u32>(32u)))) & -vec4<i32>(-max(-2147483647i, 1i), ~2147483647i, var_2, var_2);
    var var_4 = all(!vec2<bool>(true, all(vec3<bool>(true, false, true)))) && false;
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    return ~42114u;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2048f, -562f, 888f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1100f, 1467f, -1000f))) + vec3<f32>(-1915f, -450f, -665f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1030f + 482f)), 265f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-483f)) * -553f))));
    var var_1 = ~countOneBits(18099u);
    var var_2 = ((~(-2147483647i | u_input.a.x) | -2147483647i) & u_input.a.x) | u_input.a.x;
    let var_3 = func_2();
    var var_4 = ~(vec3<u32>(71013u, func_3(func_2(), -504f), var_3.a.x) & vec3<u32>(var_3.a.x ^ ~var_3.a.x, 14592u, firstTrailingBit(~0u)));
    return Struct_1(var_4.zz);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = vec2<i32>(-2603i, arg_2) & ~u_input.a.zx;
    var_1 = firstLeadingBit(~_wgslsmith_clamp_vec2_i32(vec2<i32>(~(-20075i), var_1.x), u_input.a.zy, countOneBits(~u_input.a.yz)));
    var var_2 = Struct_1(~vec2<u32>(abs(func_3(var_0, -457f)), 1u));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var var_1 = func_4(u_input.a.x, func_1(), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(u_input.a.x, -1i)), -(~(u_input.a.zx ^ u_input.a.yy))));
    let var_2 = u_input.a.zx;
    let var_3 = !(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), vec3<bool>(false, true, false))));
    var_1 = func_2();
    var_0 = 13053u;
    var_0 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2484f - 548f), _wgslsmith_f_op_f32(round(654f)), -1352f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1008f, 3919f, -548f))))), vec3<f32>(_wgslsmith_f_op_f32(1320f + -426f), _wgslsmith_f_op_f32(abs(-590f)), _wgslsmith_f_op_f32(-469f * 1386f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -1155f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-598f - _wgslsmith_f_op_f32(100f + -1149f))))));
}

