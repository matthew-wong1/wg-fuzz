struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = select(true, false, true && !(!any(vec4<bool>(false, true, true, true))));
    var var_1 = 1120f;
    var var_2 = -1473f;
    var_2 = _wgslsmith_f_op_f32(sign(751f));
    return -202f;
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> f32 {
    var var_0 = all(vec4<bool>(arg_1, arg_3.a.x <= -838f, arg_0.x, false));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -184f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(-247f, vec4<f32>(-1983f, arg_3.a.x, -1176f, -1341f), arg_3)))) - -401f)), 171f);
    let var_2 = arg_3;
    var_0 = false;
    var var_3 = -min(vec3<i32>(arg_2, ~44020i, -select(-29201i, 36553i, arg_1)), ~vec3<i32>(reverseBits(-14455i), _wgslsmith_sub_i32(arg_2, 2147483647i), i32(-1i) * -15381i));
    return var_1.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32, arg_3: f32) -> u32 {
    let var_0 = Struct_1(vec2<f32>(arg_0.a.x, arg_3));
    let var_1 = _wgslsmith_clamp_u32(select(4294967295u, u_input.a.x, true), _wgslsmith_dot_vec2_u32(select(u_input.b.zz, u_input.b.yw, select(vec2<bool>(false, false), vec2<bool>(true, false), false)), min(firstTrailingBit(vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(0u, 8144u))), 60890u) << (0u % 32u);
    var var_2 = min(arg_1, -reverseBits(arg_1) & vec2<i32>(~(~(-19318i)), -2147483647i));
    var var_3 = Struct_1(var_0.a);
    var var_4 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(706f * -955f) - _wgslsmith_f_op_f32(f32(-1f) * -512f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-611f + var_3.a.x))), -1000f, true)))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1271f, -2587f), _wgslsmith_f_op_f32(func_1(vec2<bool>(false, true), false, -42512i, Struct_1(vec2<f32>(-114f, 461f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1187f, -613f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-712f, 805f)))))));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x * -693f), var_0.a.x));
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(-var_0.a.x)));
    var var_3 = u_input.b.x;
    var_3 = ~3769u;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1u, u_input.b.x, func_3(Struct_1(var_0.a), vec2<i32>(-57000i, 2147483647i), _wgslsmith_f_op_f32(min(var_0.a.x, 1369f)), _wgslsmith_div_f32(var_1.a.x, var_1.a.x)), 36919u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x - var_1.a.x) * var_0.a.x)));
}

