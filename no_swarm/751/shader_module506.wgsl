struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(65887u, 80512u), vec2<u32>(21524u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(43498u, 81331u), vec2<u32>(1u, 0u), vec2<u32>(21825u, 1u), vec2<u32>(1u, 1u), vec2<u32>(29872u, 29360u), vec2<u32>(0u, 83224u), vec2<u32>(0u, 11358u), vec2<u32>(24427u, 0u), vec2<u32>(37834u, 1u), vec2<u32>(25243u, 9002u), vec2<u32>(42129u, 80903u), vec2<u32>(44072u, 66800u), vec2<u32>(18256u, 48970u), vec2<u32>(12231u, 0u), vec2<u32>(0u, 39988u), vec2<u32>(4294967295u, 23686u), vec2<u32>(2866u, 55952u), vec2<u32>(86161u, 16314u), vec2<u32>(44263u, 34388u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> vec3<u32> {
    var var_0 = Struct_5(vec3<i32>(~(-(~(-6966i))), i32(-1i) * -14903i, 11755i));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(2093f, -689f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1080f, 422f)));
    return vec3<u32>(_wgslsmith_mult_u32(arg_0.x, u_input.a.x), ~(~arg_0.x), 73289u);
}

fn func_2(arg_0: vec4<i32>) -> vec3<bool> {
    let var_0 = func_3(~u_input.a.zx, true);
    let var_1 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, (var_0.x ^ var_0.x) == 9261u, any(vec3<bool>(true, false, true)), (51119u <= var_0.x) && true), true), !vec4<bool>(true, !(-1i != arg_0.x), !(arg_0.x != arg_0.x), true), !select(true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), false));
    return vec3<bool>(any(vec3<bool>(true, var_1.x, any(var_1))), var_1.x, !(var_0.x == _wgslsmith_dot_vec2_u32(u_input.a.yx | vec2<u32>(41867u, 26311u), var_0.zy)));
}

fn func_1() -> i32 {
    var var_0 = select(!(!(!func_2(vec4<i32>(-68715i, -22806i, 1i, 14500i)))), vec3<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true)) && false, true, false), !(!select(func_2(vec4<i32>(13125i, 14796i, 3841i, 1i)), vec3<bool>(false, true, false), func_2(vec4<i32>(2147483647i, 2147483647i, 22579i, 20890i)))));
    let var_1 = 2162f;
    let var_2 = reverseBits(vec2<u32>(1u, _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_mult_u32(16411u, max(49994u, u_input.a.x)))));
    let var_3 = 0u;
    var var_4 = var_0.yz;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec4<i32>(i32(-1i) * -22358i, _wgslsmith_sub_i32(func_1(), -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(-1i, -12296i)), ~0i));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(1134f, -2081f)), _wgslsmith_f_op_f32(f32(-1f) * -1995f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -194f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-571f))))))));
    var var_2 = false;
    global0 = array<vec2<u32>, 22>();
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-398f, -226f, -635f, _wgslsmith_f_op_f32(1000f * 812f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 155f, var_1.x, var_1.x) - vec4<f32>(var_1.x, var_1.x, var_1.x, -770f))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-662f, 381f, 164f, var_1.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-296f, -1628f, -406f, -177f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1832f, var_1.x, -1130f, -961f), vec4<f32>(var_1.x, var_1.x, 363f, var_1.x), vec4<bool>(false, false, true, true))))))))));
    var var_4 = u_input.a >> (u_input.a % vec3<u32>(32u));
    var var_5 = ~var_4.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(u_input.a, u_input.a), ~(~firstTrailingBit(~0u)));
}

