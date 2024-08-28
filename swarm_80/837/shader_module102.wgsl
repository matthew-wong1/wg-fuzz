struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_div_vec2_i32(-min(max(u_input.b.zx, _wgslsmith_sub_vec2_i32(u_input.b.xx, vec2<i32>(-92951i, 70076i))), u_input.b.xy), abs(u_input.b.yy));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(171f + _wgslsmith_div_f32(-340f, -1434f))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = Struct_2(_wgslsmith_add_i32(~(-(~6084i)), u_input.b.x), 1000f);
    var var_1 = min(0i, _wgslsmith_mod_i32(arg_1.a, u_input.b.x));
    var var_2 = ~vec3<i32>(~(~(i32(-1i) * -1i)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.zx, u_input.b.xz, vec2<i32>(26350i, 22709i)), u_input.b.xz) ^ _wgslsmith_add_i32(arg_1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(46199i, arg_0.a), u_input.b.yy)), 72890i);
    var var_3 = arg_3;
    return Struct_1(arg_3.a);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = func_3(Struct_2(arg_1.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -511f), _wgslsmith_f_op_f32(func_2(select(vec3<bool>(arg_0.x, false, arg_0.x), arg_0.yyx, vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), -1i))))), arg_1, vec2<bool>(!arg_0.x, false), arg_1);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(202f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(sign(-326f)))), 758f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -887f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(283f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-497f - 951f)))));
    var var_2 = var_1.x;
    var_0 = arg_2;
    var var_3 = func_3(Struct_2(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-674f, var_1.x)) - var_1.x), 158f)), arg_2, !vec2<bool>(true, arg_0.x), Struct_1(arg_2.a));
    return _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-787f)) + _wgslsmith_f_op_f32(-1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(true, false, false, false), Struct_1(u_input.c), Struct_1(0i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(345f, 1849f) - vec2<f32>(-1000f, 1000f))) * _wgslsmith_f_op_vec2_f32(func_1(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), Struct_1(1i), func_3(Struct_2(u_input.c, 305f), Struct_1(u_input.c), vec2<bool>(true, false), Struct_1(-69555i))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(244f, 428f))))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -298f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-655f, 683f))))), select(vec2<bool>(select(all(vec3<bool>(false, false, true)), true, true), false), vec2<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, true, true))), vec2<bool>(true, true))));
    let var_1 = u_input.b.x;
    var var_2 = Struct_2(var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1569f + -126f) + _wgslsmith_div_f32(-498f, 1260f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, true), var_1)))), false)))));
    var_2 = Struct_2(var_2.a, _wgslsmith_f_op_f32(floor(-1413f)));
    var var_3 = u_input.c;
    var_2 = Struct_2(_wgslsmith_dot_vec3_i32(select(~vec3<i32>(var_2.a, -1i, 21312i), vec3<i32>(select(var_2.a, -2361i, false), abs(-2147483647i), var_1), any(vec3<bool>(true, true, true))), vec3<i32>(~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(73666i, var_2.a, u_input.b.x, -1i), vec4<i32>(3647i, -3070i, var_1, var_2.a)) << (78294u % 32u), var_1)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(584f, -594f) - var_2.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(true, true, true, true), Struct_1(var_1), Struct_1(0i))).x)))));
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(firstTrailingBit(vec3<u32>(47000u, 0u, 1u)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1266f, 1000f, 629f, var_0.x) - vec4<f32>(-2330f, 1000f, -1558f, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(241f, -1485f, var_0.x, 1098f)))))))));
}

