struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(563f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1000f)))))), _wgslsmith_f_op_f32(select(-291f, -1470f, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), all(vec4<bool>(false, true, true, false)))))));
    let var_1 = arg_1.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 414f, -855f) * vec4<f32>(2233f, 283f, 990f, var_0.x))))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(111f * 290f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -609f)) - _wgslsmith_f_op_vec4_f32(-var_2.a)));
    var_0 = var_3.a.wwx;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2153f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: i32) -> f32 {
    var var_0 = arg_1.zz;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, -2284f, arg_0.x), vec4<f32>(arg_0.x, 1223f, arg_0.x, -1781f), vec4<bool>(true, false, arg_1.x, false)))))));
    let var_2 = all(vec3<bool>(true, arg_1.x, !(!(var_1.a.x >= var_1.a.x))));
    let var_3 = vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec4<i32>(0i, -55097i, 46542i, u_input.a), vec2<i32>(u_input.a, 19424i))), _wgslsmith_div_f32(arg_0.x, -637f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1081f));
    let var_4 = var_1;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1734f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), var_1.a.x))), 1000f));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1599f, -2224f, 931f)))) * vec3<f32>(-873f, 519f, -593f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(806f, -348f, 1308f) + vec3<f32>(-1248f, -260f, -536f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-448f, 123f, -142f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-773f, 1594f, 300f)))))));
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(626f, 1943f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-788f + var_0.x) + _wgslsmith_f_op_f32(func_2(var_0.zz, vec3<bool>(true, false, true), u_input.a))))), vec3<f32>(-609f, 1765f, 814f));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -109f) - _wgslsmith_div_vec3_f32(vec3<f32>(-221f, 375f, var_0.x), vec3<f32>(var_0.x, var_0.x, 319f))))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 666f, var_0.x))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(332f, var_0.x, false)))), _wgslsmith_f_op_f32(1487f * 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)) * var_0.x), _wgslsmith_f_op_f32(-var_0.x)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(257f, 1634f, true)), _wgslsmith_f_op_f32(-2161f * var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + _wgslsmith_f_op_f32(trunc(-1000f))), -1441f);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 132f, var_0.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = arg_1.a.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 935f, arg_1.a.x, -134f), _wgslsmith_f_op_vec4_f32(-arg_1.a)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(arg_0.a)))))));
    return (~abs(arg_2 >> (arg_2 % 32u)) <= ((max(arg_2, 34954u) & _wgslsmith_dot_vec2_u32(vec2<u32>(25550u, arg_2), vec2<u32>(arg_2, arg_2))) >> (43860u % 32u))) && all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(false, true, true), true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), func_1(), abs(0u));
    let var_1 = select(vec3<bool>(any(!vec3<bool>(true, false, var_0)), (!var_0 | var_0) && !(-2147483647i != u_input.a), true), vec3<bool>(var_0, all(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, var_0, true), select(vec3<bool>(true, true, true), vec3<bool>(true, var_0, var_0), var_0))), false), select(select(vec3<bool>(true, true, !var_0), vec3<bool>(all(vec2<bool>(false, false)), true, false || var_0), !vec3<bool>(var_0, true, var_0)), vec3<bool>(_wgslsmith_f_op_f32(-1423f + -1258f) < _wgslsmith_f_op_f32(func_2(vec2<f32>(339f, -1908f), vec3<bool>(var_0, var_0, false), u_input.a)), true, true), true));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_1().a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(388f * 1459f)))) + _wgslsmith_f_op_f32(ceil(1049f)));
    var var_3 = 505u != select(~32801u, _wgslsmith_add_u32(~0u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(10555u, 4294967295u), vec2<u32>(4294967295u, 0u)), 4294967295u)), true);
    let var_4 = func_1();
    var var_5 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(max(44888i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 43317i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(u_input.a, 0i, u_input.a) | vec3<i32>(u_input.a, 1i, -16165i))), 1i), 2147483647i);
    var var_6 = var_4;
    var var_7 = func_1();
    var var_8 = !any(var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(reverseBits(-(~vec4<i32>(34960i, u_input.a, u_input.a, u_input.a))), -countOneBits(reverseBits(vec2<i32>(-10569i, -2147483647i))))), ~0u);
}

