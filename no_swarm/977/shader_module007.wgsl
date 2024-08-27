struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<f32>) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - -676f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x)))))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    let var_1 = !vec4<bool>(!(-19074i > _wgslsmith_mult_i32(arg_0, 0i)), var_0.b.x, all(select(!vec2<bool>(var_0.b.x, false), var_0.b.zz, !var_0.b.xx)), false);
    let var_2 = !(!var_1.yx);
    var var_3 = var_0.b.zy;
    var_3 = var_1.zy;
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    var var_0 = arg_0.b;
    let var_1 = Struct_2(vec4<i32>(~1i, 24985i, -1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(9650i, 1i), -_wgslsmith_mod_i32(2147483647i, 2147483647i))), Struct_1(arg_0.b.zx, vec3<f32>(1f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a.x)))), arg_1.b.x, -980f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, countOneBits(83771u)), reverseBits(reverseBits(23027u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 10932u, 0u))), _wgslsmith_sub_u32(u_input.a.x, 0u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1026f));
    var_0 = var_1.b.b;
    var var_3 = !all(vec3<bool>(-1i >= _wgslsmith_clamp_i32(var_1.a.x, 2147483647i, var_1.a.x), all(arg_1.b), arg_0.c));
    return reverseBits(var_1.a.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = ~abs(-_wgslsmith_add_i32(-20886i, func_3(Struct_1(vec2<f32>(-172f, arg_2), vec3<f32>(-1394f, arg_3.a, -210f), arg_3.b.x, 1000f, 566f), arg_3)));
    let var_1 = _wgslsmith_div_i32(-2147483647i, -countOneBits(1i) | ~_wgslsmith_mult_i32(firstTrailingBit(-13028i), 1i));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(742f, 1270f, arg_2, 327f) + vec4<f32>(arg_2, arg_3.a, arg_3.a, -360f)))))));
    return _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 - -1771f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!func_1(1i, vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec2<f32>(617f, -728f)) || (_wgslsmith_f_op_f32(-1000f + 418f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2274f, 1168f, true)) + -590f)), all(vec3<bool>(any(vec4<bool>(true, true, true, true)), select(all(vec3<bool>(true, true, true)), false, true), true)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-813f, -544f)), vec2<f32>(319f, 1387f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-477f, 278f))), _wgslsmith_f_op_vec2_f32(func_2(vec3<u32>(1u, u_input.a.x, 28247u), vec4<u32>(0u, 10553u, u_input.a.x, 4294967295u), 199f, Struct_3(323f, vec3<bool>(false, var_0.x, true)))), var_0.x)), !(!vec2<bool>(var_0.x, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-361f, -592f, 1548f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(510f, 1151f, 265f) + vec3<f32>(-915f, -109f, -1496f)))))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), -512f);
    let var_2 = select(vec3<bool>((var_0.x | (false | var_1.c)) | (-1000f > var_1.a.x), any(vec2<bool>(true, true)) && true, var_0.x), !(!select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_1.c, true), var_1.c), select(vec3<bool>(false, true, false), vec3<bool>(var_1.c, true, false), vec3<bool>(true, true, var_1.c)), select(vec3<bool>(true, var_1.c, var_0.x), vec3<bool>(false, false, false), vec3<bool>(false, var_1.c, var_0.x)))), !vec3<bool>(9968i >= func_3(Struct_1(var_1.b.zz, vec3<f32>(-1050f, -544f, 814f), var_1.c, -290f, var_1.d), Struct_3(var_1.a.x, vec3<bool>(var_0.x, true, true))), false, any(vec4<bool>(var_1.c, true, false, var_1.c)) || false));
    var_0 = vec2<bool>(var_1.c, false);
    var_0 = vec2<bool>(var_2.x, !var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~25510u), 548f);
}

