struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<bool> {
    let var_0 = 0u;
    var var_1 = 1609f;
    let var_2 = false;
    let var_3 = Struct_3(firstLeadingBit((max(u_input.a, u_input.a) & select(u_input.a, vec3<i32>(2147483647i, -2147483647i, 0i), vec3<bool>(false, true, false))) & (countOneBits(u_input.a) ^ (u_input.a & vec3<i32>(-45686i, -2147483647i, 2147483647i)))), 125f, vec4<bool>(true, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.a.x), vec2<i32>(30312i, 0i)) != u_input.a.x, any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1083f, -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1174f)) < 370f), Struct_1(select(vec3<bool>(!var_2, var_2, all(vec4<bool>(true, var_2, var_2, var_2))), select(vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, var_2, false), true), all(vec4<bool>(false, false, var_2, true)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1482f, 1318f) * vec2<f32>(var_3.b, var_3.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, 1796f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-784f)), _wgslsmith_f_op_f32(var_3.b * -1414f)))))));
    return vec3<bool>(var_2 | true, var_2, var_2);
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = Struct_1(arg_0.a);
    let var_1 = u_input.a;
    var var_2 = Struct_1(select(arg_0.a, select(arg_0.a, func_3(), false), var_0.a));
    global0 = true;
    let var_3 = Struct_3(firstLeadingBit(-_wgslsmith_div_vec3_i32(firstTrailingBit(u_input.a), vec3<i32>(-20913i, 0i, -79239i) | var_1)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))), vec4<bool>((var_2.a.x || !var_2.a.x) || all(select(vec4<bool>(true, var_2.a.x, arg_0.a.x, var_0.a.x), vec4<bool>(true, arg_0.a.x, var_2.a.x, var_0.a.x), true)), arg_0.a.x, true, true), Struct_1(var_2.a));
    return false;
}

fn func_1() -> Struct_2 {
    global0 = true;
    global0 = false;
    let var_0 = Struct_2(vec3<bool>(all(vec4<bool>(true, any(vec2<bool>(true, true)), func_2(Struct_2(vec3<bool>(true, false, false))), any(vec3<bool>(true, false, true)))), true, true));
    global0 = false;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1412f, 1000f)), 926f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -881f), _wgslsmith_f_op_f32(-279f * _wgslsmith_f_op_f32(ceil(-1100f))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~(~vec3<u32>(u_input.d.x, 57731u, u_input.d.x) | max(vec3<u32>(19692u, 51486u, 0u), vec3<u32>(4294967295u, u_input.e.x, u_input.d.x)))));
    var var_1 = func_1();
    var_1 = func_1();
    var_1 = Struct_2(var_1.a);
    let var_2 = func_1();
    var_1 = func_1();
    global0 = var_1.a.x;
    global0 = false;
    global0 = !var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(554f, -311f, -206f, 533f)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(70858i, -13450i, -38174i, -2147483647i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i)), -firstLeadingBit(2147483647i)), -max(~u_input.a.zz, vec2<i32>(u_input.a.x, -17132i) | u_input.a.yy), vec2<i32>(max(~u_input.a.x, -2147483647i), -abs(56725i))), _wgslsmith_sub_vec2_i32(max(~u_input.c, u_input.c), vec2<i32>(17325i, max(-2147483647i, u_input.c.x) & 1i)), ~reverseBits(u_input.a));
}

