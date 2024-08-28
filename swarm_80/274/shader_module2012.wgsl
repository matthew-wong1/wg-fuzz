struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    var var_0 = arg_2;
    return 566f;
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.b)));
    var var_1 = vec3<bool>((-13374i | firstTrailingBit(-2147483647i)) >= _wgslsmith_div_i32(_wgslsmith_div_i32(reverseBits(arg_0), -2147483647i), 2147483647i), !arg_2, false);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c));
    let var_2 = arg_1.a;
    var_0 = _wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(f32(-1f) * -2161f));
    return (_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), vec2<u32>(u_input.a.x, u_input.a.x)) | _wgslsmith_add_u32(u_input.a.x, u_input.a.x)) != u_input.a.x;
}

fn func_1(arg_0: u32) -> vec3<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-828f, _wgslsmith_f_op_f32(func_2(vec4<i32>(-49755i, 8297i, 43019i, 2147483647i), Struct_1(vec3<bool>(false, true, true), arg_0, true, vec3<i32>(-3265i, -1i, 66851i), vec4<f32>(-1376f, 391f, 400f, 747f)), Struct_3(Struct_2(439f, false, 143f), 1482f))))))), 725f)), -1513f, _wgslsmith_f_op_f32(f32(-1f) * -1831f));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -828f)), !func_3(1i, Struct_3(Struct_2(-161f, true, -456f), -1000f), true, vec4<bool>(true, true, true, true)), 822f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-209f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-281f + 423f), -1000f))) + _wgslsmith_f_op_f32(-1f)));
    var var_2 = _wgslsmith_f_op_f32(-var_1.b);
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2484f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2221f + _wgslsmith_f_op_f32(round(var_0.x))) + _wgslsmith_f_op_f32(-var_0.x)) + -1514f));
    var var_3 = ~36277i;
    return select(!(!select(select(vec3<bool>(true, var_1.a.b, false), vec3<bool>(false, var_1.a.b, var_1.a.b), vec3<bool>(var_1.a.b, var_1.a.b, true)), vec3<bool>(false, false, false), !vec3<bool>(var_1.a.b, true, var_1.a.b))), !select(vec3<bool>(true, true, var_0.x >= 1107f), select(select(vec3<bool>(var_1.a.b, var_1.a.b, false), vec3<bool>(var_1.a.b, false, true), vec3<bool>(var_1.a.b, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, var_1.a.b, var_1.a.b)), false || all(vec2<bool>(true, false))), vec3<bool>(!var_1.a.b, !all(select(vec2<bool>(var_1.a.b, true), vec2<bool>(var_1.a.b, var_1.a.b), var_1.a.b)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(select(~38733u, ~firstTrailingBit(39860u) ^ 1u, false));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, reverseBits(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(25274i, 1i, -2147483647i), 2147483647i << (u_input.a.x % 32u)), -6676i)));
}

