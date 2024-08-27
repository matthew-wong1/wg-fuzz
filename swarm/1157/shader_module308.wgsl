struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: bool, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-218f, 1000f)))) + -1001f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1735f + -694f))) - _wgslsmith_f_op_f32(1446f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-923f + 903f)))));
    let var_1 = max(-u_input.b.x, u_input.b.x);
    var var_2 = -481f;
    var var_3 = vec2<i32>(-2147483647i, 0i) ^ global0.yw;
    let var_4 = !arg_0.x;
    return u_input.a.x;
}

fn func_2(arg_0: u32) -> f32 {
    global0 = vec4<i32>(-_wgslsmith_div_i32(global0.x, 69025i), global0.x, -2147483647i, u_input.b.x) >> (firstTrailingBit(vec4<u32>(func_3(vec3<bool>(false, false, true), false, false, false), arg_0, firstTrailingBit(u_input.a.x), 1u) & ~(vec4<u32>(4294967295u, 0u, 0u, u_input.a.x) << (vec4<u32>(arg_0, arg_0, arg_0, arg_0) % vec4<u32>(32u)))) % vec4<u32>(32u));
    global0 = ~(~_wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, global0.x, u_input.b.x, global0.x), ~(-vec4<i32>(-30578i, 2147483647i, u_input.b.x, -4113i))));
    global0 = abs(abs(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, u_input.b.x, 0i, global0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -1i, -2147483647i, 27183i), vec4<i32>(u_input.b.x, global0.x, global0.x, 2147483647i))) >> (~(~vec4<u32>(16213u, u_input.a.x, u_input.a.x, 0u)) % vec4<u32>(32u))));
    global0 = abs(vec4<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b, ~_wgslsmith_mult_vec2_i32(u_input.b, u_input.b)), global0.x, u_input.b.x << (4294967295u % 32u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(504f))))), -624f);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0 << (arg_0 % 32u))) - _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -163f))))));
    let var_1 = Struct_1(select(arg_1.a, select(vec4<bool>(arg_1.a.x, all(arg_1.a.yxw), !arg_2, arg_2), arg_1.a, arg_2), !(!(arg_1.a.x & arg_2))));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(500f, _wgslsmith_f_op_f32(trunc(-934f)))));
    var var_2 = var_1;
    var var_3 = min(~u_input.b, global0.xw) & ~u_input.b;
    return _wgslsmith_dot_vec2_i32(global0.yx, firstLeadingBit(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(global0.x, -2147483647i)), global0.xz)) >> (u_input.a.xx % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec4<bool>(all(vec3<bool>(true, false, false)) == all(vec2<bool>(false, true)), true, false, true), select(vec4<bool>(true, true, any(vec4<bool>(true, false, true, false)), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), vec4<bool>(any(vec2<bool>(true, true)), !all(vec2<bool>(false, false)), true, (u_input.b.x & 19524i) > func_1(u_input.a.x, Struct_1(vec4<bool>(true, false, false, true)), true)));
    var var_1 = Struct_1(select(select(select(vec4<bool>(false, false, var_0.x, false), select(vec4<bool>(false, false, true, var_0.x), var_0, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false)), var_0, var_0.x), var_0, true));
    var var_2 = Struct_1(select(var_1.a, vec4<bool>(true, var_1.a.x, var_0.x, var_0.x), true));
    var_2 = Struct_1(vec4<bool>(!var_1.a.x, var_0.x, all(!select(vec3<bool>(true, var_0.x, var_0.x), var_0.xzw, vec3<bool>(var_1.a.x, var_2.a.x, false))), !(_wgslsmith_f_op_f32(step(-1099f, -910f)) == 1214f)));
    let var_3 = vec4<i32>(global0.x, abs(i32(-1i) * -27296i), countOneBits(abs(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x)) ^ ~u_input.b.x), ~global0.x);
    var var_4 = -(-max(global0.x | global0.x, -53595i) ^ var_3.x);
    var var_5 = Struct_1(var_1.a);
    var var_6 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1940f, 891f, -1038f, 1424f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1414f, -2157f, -1643f, 897f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(511f, -414f, -991f, -1002f) - vec4<f32>(1716f, -968f, 1035f, 1994f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1308f, -237f, 1137f)), true))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-2437f)))), _wgslsmith_f_op_f32(step(-775f, -528f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1851f) + _wgslsmith_f_op_f32(-395f * 661f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1621f))))))), vec4<f32>(-636f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2184f, 423f) - _wgslsmith_f_op_f32(f32(-1f) * -1015f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1000f)), -974f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1095f)))), 495f), select(select(vec4<bool>(true, true, any(var_5.a.zx), 70072u <= u_input.a.x), vec4<bool>(!var_5.a.x, !var_2.a.x, var_0.x, var_0.x), var_2.a), select(var_5.a, select(!vec4<bool>(var_5.a.x, false, var_0.x, var_1.a.x), var_1.a, !var_0.x), select(var_0, select(var_0, var_0, vec4<bool>(true, true, var_2.a.x, var_1.a.x)), vec4<bool>(var_5.a.x, true, false, true))), select(var_1.a, select(vec4<bool>(var_0.x, var_2.a.x, true, var_1.a.x), vec4<bool>(var_1.a.x, var_0.x, var_1.a.x, var_0.x), true), select(select(var_5.a, var_2.a, true), vec4<bool>(true, var_2.a.x, var_0.x, true), var_2.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-301f + _wgslsmith_f_op_f32(-var_6.x)), _wgslsmith_f_op_f32(floor(952f)), 1f, var_6.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-305f, -651f, 610f, _wgslsmith_f_op_f32(-var_6.x)))), (_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 63923u), vec4<u32>(u_input.a.x, u_input.a.x, 9459u, u_input.a.x)), select(vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<bool>(true, var_1.a.x, true, false))) | vec4<u32>(u_input.a.x, ~u_input.a.x, firstTrailingBit(4294967295u), u_input.a.x)) | ~vec4<u32>(~25429u, 70137u, 1u, u_input.a.x));
}

