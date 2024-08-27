struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-365f * -137f))))), -805f), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, -221f, 670f)) + vec3<f32>(813f, global0.a.x, global0.c.x))), _wgslsmith_f_op_vec3_f32(global0.c * vec3<f32>(global0.a.x, global0.c.x, 537f))), true);
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))) + _wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global0.a))))), false & global0.d, global0.c, !(any(select(vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, global0.d), global0.d)) & true));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(global0.a.x, global0.a.x, 2655f, global0.a.x))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 657f, global0.c.x, var_0.a.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(246f, var_0.a.x, 1000f, global0.c.x), var_0.a)))))), global0.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1154f), -551f, _wgslsmith_f_op_f32(-var_0.c.x))))), any(select(!vec2<bool>(global0.b, true), vec2<bool>(true, true), !global0.d)) & (all(select(vec4<bool>(false, var_0.d, global0.b, true), vec4<bool>(true, global0.d, true, global0.b), global0.b)) && false));
    var var_2 = ((var_0.d & any(vec3<bool>(true, global0.d, global0.d))) | true) != false;
    global0 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(848f, _wgslsmith_f_op_f32(1282f * _wgslsmith_f_op_f32(f32(-1f) * -1779f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.c.x)) * var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -555f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, -1461f, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-916f + -1000f)) + vec4<f32>(var_1.c.x, 168f, global0.a.x, _wgslsmith_f_op_f32(-global0.c.x)))), var_1.d, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1359f * _wgslsmith_f_op_f32(-global0.c.x)))), -966f, _wgslsmith_f_op_f32(sign(var_0.c.x))), false);
    return _wgslsmith_f_op_f32(-var_0.c.x);
}

fn func_2() -> Struct_1 {
    let var_0 = false;
    var var_1 = u_input.a.x;
    let var_2 = Struct_1(global0.a, true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.x))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.c.x)))), _wgslsmith_f_op_f32(sign(global0.c.x))), any(select(!vec4<bool>(global0.d, true, true, true), select(select(vec4<bool>(true, false, false, global0.b), vec4<bool>(true, false, true, global0.d), vec4<bool>(false, true, var_0, false)), select(vec4<bool>(false, global0.b, false, var_0), vec4<bool>(false, false, var_0, global0.b), vec4<bool>(var_0, true, false, var_0)), select(vec4<bool>(var_0, true, global0.d, global0.d), vec4<bool>(global0.b, global0.d, true, false), vec4<bool>(true, var_0, global0.d, var_0))), false)));
    global0 = var_2;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-814f, _wgslsmith_f_op_f32(f32(-1f) * -872f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global0.c.xy)), vec2<f32>(1f, 1f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.c.yz * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1645f, -2628f)))) * vec2<f32>(var_2.c.x, _wgslsmith_f_op_f32(-1109f - _wgslsmith_f_op_f32(global0.a.x - global0.a.x)))));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0.a.x, global0.a.x, global0.b)), _wgslsmith_div_f32(var_3.x, var_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, var_2.c.x) - _wgslsmith_f_op_f32(-118f * global0.c.x)) - _wgslsmith_f_op_f32(step(1963f, _wgslsmith_f_op_f32(min(-209f, var_3.x))))), 260f, _wgslsmith_f_op_f32(-var_2.a.x)), false, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)), -1000f, -253f) * _wgslsmith_f_op_vec3_f32(-var_2.a.xxz)), true);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<f32> {
    let var_0 = vec3<i32>(-2147483647i, 25157i, u_input.a.x);
    var var_1 = !(u_input.a.x == ((-2147483647i & _wgslsmith_clamp_i32(var_0.x, u_input.c.x, u_input.a.x)) & ~u_input.c.x));
    let var_2 = arg_1;
    var var_3 = func_2();
    let var_4 = u_input.b >> (arg_2.x % 32u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-105f, global0.a.x, 317f, arg_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1402f, -946f, arg_1.a.x, -569f) * _wgslsmith_f_op_vec4_f32(-var_3.a)), global0.d)), vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x - -436f) - _wgslsmith_f_op_f32(max(arg_0.x, var_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1195f)), _wgslsmith_f_op_f32(f32(-1f) * -1487f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(select(global0.a, vec4<f32>(383f, -2969f, global0.c.x, global0.a.x), global0.b))))) - _wgslsmith_f_op_vec4_f32(func_1(global0.a, Struct_1(global0.a, true, _wgslsmith_div_vec3_f32(global0.a.wzz, vec3<f32>(-257f, 929f, 279f)), !global0.b), (u_input.d & u_input.d) | u_input.d))), select(!(_wgslsmith_f_op_f32(round(global0.a.x)) == _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_add_u32(firstLeadingBit(4294967295u), 20738u) > u_input.b, !all(vec3<bool>(true, false, true))), vec3<f32>(319f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2226f) + _wgslsmith_f_op_f32(sign(global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1104f * 350f) + 1133f))), any(!(!select(vec3<bool>(false, false, true), vec3<bool>(global0.d, global0.b, global0.b), true))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1884f, 906f, var_0.c.x, var_0.a.x))))))), all(select(!vec2<bool>(true, global0.b), select(vec2<bool>(global0.b, true), !vec2<bool>(var_0.d, true), true), vec2<bool>(true, var_0.b))), global0.a.zyx, any(vec2<bool>(!any(vec4<bool>(true, global0.b, true, var_0.d)), global0.b)));
    let var_1 = abs(26688u);
    var var_2 = ~_wgslsmith_dot_vec2_u32(~(~u_input.d), select(~(~vec2<u32>(u_input.d.x, 4294967295u)), ~vec2<u32>(17002u, var_1), true));
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~u_input.b, firstTrailingBit(u_input.d.x)) & ~countOneBits(u_input.d), vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(abs(-131f)), _wgslsmith_f_op_vec4_f32(func_1(global0.a, func_2(), ~u_input.d)).x), _wgslsmith_clamp_vec3_i32(firstTrailingBit(-u_input.a.xxy), ~abs(-u_input.a.yzy), u_input.a.wyz), ~(~(-u_input.a.x)));
}

