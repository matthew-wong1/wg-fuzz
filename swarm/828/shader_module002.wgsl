struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
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

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-899f)) + _wgslsmith_div_f32(_wgslsmith_div_f32(-612f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1155f)) + -417f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-430f)), 1f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, -826f, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -284f, var_0, -844f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, -1655f, var_0, var_0))))))));
    global0 = vec4<bool>(!(_wgslsmith_f_op_f32(-var_0) > var_1.x), true, any(global0.wyz), true);
    var var_2 = Struct_1(any(global0.wyx), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_f_op_f32(round(var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_1.x) * _wgslsmith_f_op_f32(626f - 1115f)))), _wgslsmith_sub_vec3_i32(~u_input.b.wyy, abs(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x | -1i))), _wgslsmith_f_op_f32(-2086f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(813f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -1000f)))));
    var var_3 = !global0.yyy;
    return any(!select(select(vec4<bool>(true, global0.x, false, var_2.a), select(vec4<bool>(var_3.x, false, false, var_2.a), vec4<bool>(var_2.a, var_3.x, false, var_3.x), true), select(vec4<bool>(false, true, true, var_2.a), vec4<bool>(false, true, var_3.x, false), vec4<bool>(false, false, var_2.a, true))), vec4<bool>(false, true, var_3.x, true), !vec4<bool>(true, true, true, var_2.a)));
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = !global0.x | (u_input.a >= ~29187u);
    global0 = !select(!(!(!vec4<bool>(global0.x, false, true, true))), vec4<bool>(func_3(), func_3(), !(74652i > u_input.b.x), !any(vec4<bool>(false, global0.x, false, var_0))), select(select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(true, var_0, true, var_0), select(vec4<bool>(global0.x, false, false, false), vec4<bool>(global0.x, var_0, global0.x, true), vec4<bool>(global0.x, false, global0.x, false))), !vec4<bool>(global0.x, true, false, global0.x), false));
    global0 = vec4<bool>(var_0, !(!var_0), global0.x || false, select(false, !global0.x, true));
    let var_1 = Struct_1(all(vec3<bool>(true, var_0 != false, global0.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-366f, arg_0) * vec2<f32>(arg_0, arg_0)))))))), u_input.b.wwy, _wgslsmith_div_f32(145f, -885f));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1314f))))) == _wgslsmith_f_op_f32(abs(var_1.b.x));
    return var_1.a;
}

fn func_1(arg_0: vec2<bool>) -> StorageBuffer {
    let var_0 = Struct_1(!global0.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1271f, -916f), vec2<f32>(-914f, -111f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(228f, 1132f) + vec2<f32>(-2166f, -711f))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(358f, -1412f) - vec2<f32>(1000f, -168f)), vec2<f32>(-722f, 1000f)))))), _wgslsmith_mult_vec3_i32(~(~vec3<i32>(2147483647i, u_input.b.x, -3566i)), max(-vec3<i32>(u_input.b.x, u_input.b.x, 1i), vec3<i32>(-7950i, u_input.b.x, u_input.b.x) ^ vec3<i32>(u_input.b.x, u_input.b.x, -1i))), -262f);
    global0 = select(vec4<bool>(arg_0.x, true, !(!(!arg_0.x)), func_2(var_0.b.x)), vec4<bool>(any(!global0.zzw), var_0.a, !(!all(vec3<bool>(true, arg_0.x, global0.x))), arg_0.x || var_0.a), arg_0.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1346f, 322f))))), var_0.b.x, 481f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-314f)), -1000f))), vec4<f32>(_wgslsmith_f_op_f32(-573f - 398f), _wgslsmith_f_op_f32(-1471f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.x, var_0.d))), _wgslsmith_f_op_f32(sign(var_0.b.x))))));
    global0 = select(select(!vec4<bool>(true, true, all(global0.wxx), any(vec4<bool>(false, var_0.a, false, arg_0.x))), !(!vec4<bool>(global0.x, global0.x, false, false)), vec4<bool>(false, !var_0.a, true, select(true, all(vec4<bool>(false, true, true, true)), var_0.a || arg_0.x))), vec4<bool>(!arg_0.x, false, true, any(!vec4<bool>(false, false, arg_0.x, global0.x)) & arg_0.x), true);
    let var_2 = Struct_4(~(~vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(9481u, u_input.c)), u_input.a)), Struct_3(_wgslsmith_sub_vec2_u32(select(abs(vec2<u32>(u_input.c, u_input.a)), vec2<u32>(33782u, u_input.a), arg_0.x), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(86906u, u_input.c)), vec2<u32>(u_input.c, u_input.a) | vec2<u32>(42564u, 54567u))), Struct_1(true, var_0.b, ~var_0.c, 861f)), var_1.x);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(step(var_1, vec4<f32>(1177f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(961f, var_1.x))), var_1.x, -211f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global0.yw);
}

