struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(436f, global0.x));
    let var_0 = arg_2;
    var var_1 = arg_3;
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-731f, -465f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-789f)), _wgslsmith_f_op_f32(f32(-1f) * -1129f), true)) - 1322f)), _wgslsmith_f_op_f32(-var_0.b));
    var_1 = arg_3;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b, -693f) + vec2<f32>(-490f, 663f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-336f, 435f)))) * vec2<f32>(468f, _wgslsmith_f_op_f32(floor(var_0.b)))) * vec2<f32>(-727f, arg_2.b));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<i32> {
    global0 = vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-721f)) + -1461f));
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(arg_1, arg_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-147f, arg_0.b) * vec2<f32>(1038f, _wgslsmith_f_op_f32(ceil(arg_1.x)))) - _wgslsmith_f_op_vec2_f32(max(arg_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, arg_0.b) + _wgslsmith_f_op_vec2_f32(step(arg_1, vec2<f32>(arg_0.b, arg_1.x)))))))));
    let var_0 = vec2<bool>(true, any(vec2<bool>(!(u_input.c <= u_input.d.x), _wgslsmith_clamp_i32(-1i, arg_0.c.x, 0i) != 0i)));
    let var_1 = u_input.d.wz;
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(u_input.c > var_1.x, !var_0.x, arg_0, Struct_2(arg_0.a.x)))))));
    return -(vec2<i32>(-1i) * -var_1);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>) -> vec2<f32> {
    let var_0 = 1u;
    let var_1 = true;
    global0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-680f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b, -171f) - _wgslsmith_f_op_f32(global0.x * 1522f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, arg_1.b) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_1.b)))))));
    let var_2 = arg_1;
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 - -1000f), _wgslsmith_f_op_f32(sign(1f))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -447f))) - vec2<f32>(_wgslsmith_f_op_f32(global0.x + var_2.b), arg_0)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(301f, global0.x)))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_2) -> bool {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(393f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(657f * 2098f)), _wgslsmith_f_op_f32(f32(-1f) * -1723f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(-784f, Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(-55470i, -2147483647i), u_input.d.xw), _wgslsmith_div_f32(global0.x, global0.x), u_input.d.zwy), func_2(Struct_1(u_input.d.zy, -1000f, vec3<i32>(u_input.a, -1i, 5058i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(312f, -1000f)))))));
    return true;
}

fn func_5(arg_0: vec4<bool>) -> u32 {
    var var_0 = all(!vec4<bool>(arg_0.x, any(arg_0.xyy), true != !arg_0.x, 35334u == firstTrailingBit(u_input.b.x)));
    var var_1 = countOneBits(~(~min(29520u, u_input.b.x)));
    var_0 = arg_0.x;
    var var_2 = _wgslsmith_div_f32(global0.x, global0.x);
    var var_3 = 1u;
    return ~(4294967295u | u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~u_input.b.x >> (func_5(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), func_1(vec3<u32>(u_input.b.x, 28910u, 6749u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, 35391u), Struct_2(1i)))) % 32u), 0u, 0u);
    let var_1 = false;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3(true, true, Struct_1(vec2<i32>(u_input.a, u_input.c) | vec2<i32>(u_input.a, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -1506f), countOneBits(u_input.d.xxz)), Struct_2(u_input.a))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_vec2_f32(func_4(-640f, Struct_1(u_input.d.yy, -1009f, vec3<i32>(countOneBits(u_input.a), 0i, 0i)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, u_input.a), vec2<i32>(44816i, 39173i), vec2<i32>(u_input.c, u_input.c)) ^ ~vec2<i32>(u_input.a, u_input.a))).x, global0.x, -682f, 489f);
    global0 = _wgslsmith_f_op_vec2_f32(var_2.xy - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(1000f, Struct_1(vec2<i32>(-23518i, 2147483647i), global0.x, u_input.d.xyy), vec2<i32>(-29682i, -17075i))).x)), 271f));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.zz, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + var_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(425f, -1910f)), global0.x)), vec2<bool>(true, !var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, _wgslsmith_div_f32(var_2.x, global0.x)) - _wgslsmith_f_op_vec2_f32(-var_2.zz)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(472f, var_2.x)), -1841f))), abs(var_0), -201f, var_2.wwy, _wgslsmith_f_op_vec4_f32(round(var_2)));
}

