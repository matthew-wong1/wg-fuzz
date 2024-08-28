struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(!select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    let var_1 = vec4<i32>(max(1i, ~(-14553i)), -34701i, -42067i, -29822i);
    let var_2 = select(select(select(!select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.a.xxz, vec3<bool>(false, true, var_0.a.x)), vec3<bool>(all(var_0.a.wwy), !var_0.a.x, all(var_0.a.yxx)), var_0.a.yxy), !select(vec3<bool>(true, var_0.a.x, var_0.a.x), !var_0.a.yzz, var_0.a.x), true), !var_0.a.zyw, select(vec3<bool>(false, !any(vec4<bool>(false, true, var_0.a.x, var_0.a.x)), var_0.a.x), !select(select(var_0.a.xyy, var_0.a.wwx, true), var_0.a.ywx, false), var_0.a.wyz));
    let var_3 = ~countOneBits(max(u_input.a, vec2<u32>(4294967295u, u_input.a.x) ^ u_input.a));
    let var_4 = false;
    return _wgslsmith_f_op_f32(ceil(959f));
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 468f))), _wgslsmith_f_op_f32(f32(-1f) * -318f), 120f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_3())) - -975f)));
    var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-600f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_f32(936f - _wgslsmith_f_op_f32(sign(261f))), 505f))));
    let var_1 = firstLeadingBit(vec2<i32>(min(-33917i, min(i32(-1i) * -30036i, 1i)), 0i));
    var var_2 = Struct_1(select(!(!vec4<bool>(arg_0, arg_0, false, true)), !vec4<bool>(!arg_0, arg_0, any(vec2<bool>(arg_0, arg_0)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(193f * var_0.a.x)) < var_0.a.x), reverseBits(_wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-19811i, var_1.x, var_1.x), vec3<i32>(var_1.x, 17764i, -32815i)), var_1.x)), vec2<i32>(~(-42098i), var_1.x));
    var var_3 = countOneBits(firstLeadingBit(vec3<i32>(var_2.c.x, countOneBits(-1i), -25129i)));
    return Struct_3(select(!select(select(vec4<bool>(false, false, arg_0, arg_0), var_2.a, vec4<bool>(arg_0, true, var_2.a.x, arg_0)), var_2.a, true), var_2.a, true));
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: vec4<f32>) -> bool {
    let var_0 = arg_0.a.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1341f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1023f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1082f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-933f * 1196f), arg_2.x))))));
    var var_2 = func_2(var_0.x);
    var var_3 = vec2<bool>(true, var_2.a.x);
    let var_4 = true;
    return any(func_2(var_4).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec4<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), true, func_1(Struct_4(Struct_3(vec4<bool>(true, true, true, true))), u_input.a.x, vec4<f32>(-161f, 206f, -456f, -1035f)), true), vec4<bool>(any(vec3<bool>(false, false, false)) & true, true, all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)), any(vec2<bool>(false, false)) || true), !func_2(true).a);
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1698f), 562f))), 1411f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-227f + 1000f)))))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    let var_3 = -2147483647i;
    let var_4 = Struct_4(Struct_3(var_0));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, 1971u, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x))) & _wgslsmith_mod_u32(62953u, u_input.a.x)) >> (11300u % 32u));
}

