struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = -106f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = true;
    let var_2 = vec4<bool>(!all(!global0.xz), (~57145u >= u_input.c.x) | false, !var_1, u_input.c.x >= ~u_input.c.x);
    let var_3 = Struct_1(2147483647i, var_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) - vec4<f32>(arg_0, -1000f, -1212f, -688f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1596f, arg_0, arg_0) + vec4<f32>(891f, 928f, arg_0, arg_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -1148f, 1443f) + vec4<f32>(arg_0, 337f, arg_0, arg_0)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(739f, -1393f, arg_0, arg_0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -576f, arg_0))))));
    return -437f;
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(520f * 566f))))) * _wgslsmith_f_op_f32(min(442f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-801f - _wgslsmith_f_op_f32(func_1(802f))))))));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(u_input.b, !select(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(global0.x, true, global0.x, true)), select(select(vec4<bool>(false, false, global0.x, false), vec4<bool>(global0.x, true, global0.x, true), global0.x), !vec4<bool>(global0.x, false, false, true), true), ~u_input.b >= 1i), vec4<f32>(-1436f, _wgslsmith_f_op_f32(-1f), 448f, -378f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-190f, var_0.c.x), var_0.c.x, -var_0.a == var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(-288f)), -306f), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1487f)) - 1021f)), true)), _wgslsmith_f_op_f32(-169f * _wgslsmith_div_f32(-402f, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(max(-790f, 1738f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1000f)), 392f, all(global0.zxy)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1028f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f), _wgslsmith_f_op_f32(f32(-1f) * -309f))))));
    let var_1 = !(!select(vec2<bool>(select(true, global0.x, global0.x), !global0.x), select(!vec2<bool>(false, global0.x), global0.yz, !global0.yw), !(!global0.wz)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) - var_0.x), var_0.x, _wgslsmith_f_op_f32(func_3()), var_0.x);
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-537f, _wgslsmith_div_f32(989f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(var_0.x * var_0.x)) + vec4<f32>(453f, _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(-1000f + var_0.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1501f)), 1125f));
    var var_2 = Struct_1(-6393i, !vec4<bool>(!all(vec2<bool>(var_1.x, true)), true, ~u_input.d.x > 1u, all(select(vec4<bool>(false, var_1.x, global0.x, var_1.x), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1770f), _wgslsmith_f_op_f32(-var_0.x), var_0.x)))));
    var var_3 = vec2<i32>(-3211i, 0i);
    global0 = vec4<bool>(var_2.b.x, countOneBits(var_3.x | abs(var_2.a)) <= var_3.x, !(!(!var_2.b.x)), false);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -506f) - _wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-var_2.c.x))), vec2<f32>(-1156f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-1921f - -379f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(733f, 128f, 425f, 656f), _wgslsmith_div_vec4_f32(var_2.c, vec4<f32>(-179f, -1720f, -950f, var_0.x)), true))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.c.x * -1019f))), 860f, 917f), var_2.b)), _wgslsmith_sub_vec2_i32(reverseBits(-vec2<i32>(-41869i, 1i)), vec2<i32>(_wgslsmith_clamp_i32(var_2.a, var_2.a, u_input.a.x), min(u_input.e.x, var_2.a) & (i32(-1i) * -47095i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(select(1687f, _wgslsmith_f_op_f32(var_0.x * 383f), !global0.x)), var_0.x)));
}

