struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<i32>) -> vec2<u32> {
    return abs(_wgslsmith_div_vec2_u32(arg_1.zx, vec2<u32>(0u, u_input.a.x)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<u32>) -> vec3<f32> {
    let var_0 = ~abs(_wgslsmith_mult_u32(83876u, arg_2.x));
    var var_1 = any(!(!vec4<bool>(all(vec2<bool>(arg_1.x, true)), false, arg_1.x, true)));
    var_1 = true;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(~reverseBits(~arg_2.x), 4294967295u), u_input.a.yx);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(1352f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(843f)) * 100f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1074f))), -647f));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a);
    var var_1 = 1674f;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1230f * 2717f), _wgslsmith_f_op_f32(877f + 509f), _wgslsmith_f_op_f32(trunc(689f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, _wgslsmith_f_op_f32(step(-767f, 542f)), -1318f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-135f, -987f, 1000f))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1044f, 552f, 1136f) - vec3<f32>(-308f, -479f, -311f))) + _wgslsmith_f_op_vec3_f32(func_3(Struct_1(-31240i), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), false), abs(vec4<u32>(0u, 1610u, 67394u, u_input.b.x)))))));
    let var_3 = true;
    let var_4 = Struct_1(i32(-1i) * -14914i);
    return Struct_1(1i);
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = true;
    var_0 = any(vec2<bool>(true, true));
    var_0 = any(!vec2<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))));
    var_0 = all(vec4<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-152f * arg_0))) == -1104f, true, false, u_input.b.x == 25320u));
    var_0 = false;
    return ~2843u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(u_input.b.x, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 38886u), func_1(Struct_1(1i), u_input.b.www, vec3<i32>(9930i, -5847i, 9787i)))) >= 1u;
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(386f))))) - _wgslsmith_f_op_f32(abs(-452f))), func_2(Struct_1(1i >> (u_input.b.x % 32u))));
    var_1 = _wgslsmith_dot_vec2_u32(~(~(~(~u_input.b.yw))), _wgslsmith_mod_vec2_u32(u_input.a.yz, vec2<u32>(1u, ~4294967295u) | abs(_wgslsmith_add_vec2_u32(u_input.a.zy, u_input.b.yz))));
    var_1 = firstTrailingBit(firstTrailingBit(6456u ^ ~(~u_input.b.x)));
    let var_2 = ~max(4294967295u, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(-_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(65583i, 1i, -2147483647i, 2147483647i), vec4<i32>(-4634i, 0i, 1i, 34594i)), select(vec4<i32>(1i, 11469i, -2147483647i, 3100i), vec4<i32>(-1i, -1i, -21300i, -2147483647i), vec4<bool>(false, var_0, var_0, var_0))), countOneBits(-vec4<i32>(2147483647i, 48483i, -51968i, 37601i)), any(!vec2<bool>(var_0, var_0))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-457f, 318f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-493f, 1604f))))))), 1418f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1080f, -1235f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(624f, -592f), _wgslsmith_f_op_f32(f32(-1f) * -1551f))) * _wgslsmith_f_op_f32(abs(117f))), var_0)));
}

