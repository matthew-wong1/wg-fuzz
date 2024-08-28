struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_sub_vec2_u32(max(select(vec2<u32>(50785u, 18759u), vec2<u32>(4303u, 20913u), vec2<bool>(true, true)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(29623u, u_input.a), vec2<u32>(23313u, u_input.a), vec2<u32>(8735u, u_input.a))) ^ vec2<u32>(countOneBits(8035u << (u_input.a % 32u)), ~max(0u, 1u)), ~vec2<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, 60294u, u_input.a, 9150u)), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), ~(~u_input.a)));
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -866f), 710f, _wgslsmith_f_op_f32(-824f - 1143f), _wgslsmith_f_op_f32(-989f - 1770f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-737f, -170f, -291f, -954f) + vec4<f32>(-1049f, 1172f, -939f, -1022f))))), 160f);
    var var_2 = ~var_0;
    let var_3 = u_input.b.xx;
    var var_4 = vec3<bool>(any(select(select(vec3<bool>(false, var_1.a, var_1.a), !vec3<bool>(var_1.a, var_1.a, true), true), select(vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(false, var_1.a, var_1.a), false), vec3<bool>(var_1.c > var_1.c, false, select(var_1.a, true, true)))), false, var_1.a);
    return false;
}

fn func_2() -> Struct_1 {
    let var_0 = -45023i;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1322f * -998f))) - -2675f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1641f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-847f + -632f))), true));
    var_1 = _wgslsmith_f_op_f32(min(648f, 293f));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(896f * -1040f)))));
    var var_2 = Struct_1(func_3(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1444f, -196f, _wgslsmith_f_op_f32(sign(232f)), _wgslsmith_f_op_f32(1898f - 1637f))) - vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2160f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(291f * -751f) + _wgslsmith_f_op_f32(f32(-1f) * -281f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-309f, -1109f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-586f))))), -784f);
    return Struct_1(var_2.b.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(483f, var_2.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.c)) + var_2.b.x)), var_2.b, var_2.b.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = func_2();
    let var_2 = firstTrailingBit(1u);
    let var_3 = Struct_1(any(select(vec2<bool>(var_1.a, !arg_1.x), arg_1, select(select(arg_1, vec2<bool>(true, false), false), !arg_1, vec2<bool>(var_1.a, false)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c, 1177f, 214f, 164f))))))))), var_0.c);
    let var_4 = func_2();
    return func_2();
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = !vec3<bool>(arg_1.a, true, !(_wgslsmith_div_f32(arg_1.b.x, -1000f) > _wgslsmith_f_op_f32(-arg_1.b.x)));
    var var_1 = ~(~firstTrailingBit(_wgslsmith_sub_u32(1u, u_input.a))) | 1u;
    var_1 = 41730u;
    var var_2 = arg_1;
    let var_3 = vec2<bool>(arg_1.a, arg_1.a);
    return ~abs(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a, 78445u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (abs(u_input.a) << (u_input.a % 32u)) & ~_wgslsmith_dot_vec2_u32(~select(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 0u), vec2<bool>(true, false)), func_4(~vec3<i32>(u_input.b.x, 11832i, 2147483647i), func_1(u_input.b, vec2<bool>(true, true))));
    let var_1 = _wgslsmith_div_f32(997f, -142f);
    var var_2 = u_input.b.xxz;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 666f)))) * vec2<f32>(_wgslsmith_f_op_f32(sign(-207f)), _wgslsmith_f_op_f32(floor(var_1)))))));
    var_0 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, 1615f, 1016f, -307f))), vec4<f32>(_wgslsmith_f_op_f32(min(var_3.x, var_1)), 271f, _wgslsmith_div_f32(-1372f, var_3.x), _wgslsmith_f_op_f32(var_3.x + var_1))))));
}

