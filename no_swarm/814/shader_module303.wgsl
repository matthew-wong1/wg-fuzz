struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    let var_0 = true;
    let var_1 = vec2<f32>(-892f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-706f, -540f))))));
    return any(!select(vec3<bool>(true, var_0 || var_0, false), select(vec3<bool>(true, false, var_0), !vec3<bool>(true, var_0, true), true), select(!vec3<bool>(var_0, var_0, true), !vec3<bool>(var_0, true, var_0), all(vec2<bool>(false, var_0)))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> f32 {
    var var_0 = -1699f;
    let var_1 = Struct_1(arg_0, _wgslsmith_sub_i32(u_input.b, 9038i >> (1u % 32u)));
    var var_2 = all(select(vec3<bool>(0i <= _wgslsmith_add_i32(arg_0, arg_1.x), true, any(vec3<bool>(true, true, false))), select(vec3<bool>(func_3(), false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), false), !vec3<bool>(true, any(vec3<bool>(true, true, true)), false)));
    var_0 = -449f;
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1180f + 477f), -1095f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(351f + _wgslsmith_div_f32(1707f, 514f)))));
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = -1215f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(532f, _wgslsmith_f_op_f32(func_2(u_input.b, vec2<i32>(u_input.b, u_input.b))), true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1120f + _wgslsmith_div_f32(581f, 180f)))), true)));
    let var_1 = vec4<bool>(false, ~1u >= _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.yy >> (u_input.a.yx % vec2<u32>(32u)), ~u_input.a.xx), ~(79113u << (arg_0 % 32u))), !(!(abs(u_input.b) > 49915i)), true);
    var_0 = _wgslsmith_f_op_f32(-145f + 751f);
    var_0 = _wgslsmith_f_op_f32(-908f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-320f, _wgslsmith_f_op_f32(func_2(u_input.b, vec2<i32>(-1087i, 2147483647i)))) - _wgslsmith_f_op_f32(668f + _wgslsmith_f_op_f32(1810f + -1651f)))));
    return firstLeadingBit(1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(max(_wgslsmith_div_i32(0i, min(u_input.b, u_input.b)), func_1(~u_input.a.x)) & u_input.b, i32(-1i) * -81304i);
    let var_1 = u_input.a;
    let var_2 = var_0;
    var var_3 = var_2;
    var_3 = var_2;
    var var_4 = vec2<f32>(-682f, 1f);
    var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1036f)))))), -1085f));
    var_4 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(374f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(-1000f - -1033f)))), vec2<f32>(var_4.x, _wgslsmith_f_op_f32(func_2(-15050i, abs(abs(vec2<i32>(var_3.b, var_2.b)))))), true));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(var_1.x, firstTrailingBit(30324u))), -2147483647i, -firstTrailingBit(countOneBits(-vec4<i32>(var_3.a, 199i, var_2.b, 2823i))), abs(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_3.b, var_3.a), u_input.b ^ var_3.a)) | (select(-u_input.b, ~(-58575i), true) >> (~4546u % 32u)));
}

