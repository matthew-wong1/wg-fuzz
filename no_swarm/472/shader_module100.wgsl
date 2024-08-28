struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: f32 = -1000f;

var<private> global2: f32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> u32 {
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -958f))));
    var var_0 = Struct_1(u_input.a, u_input.d.x);
    let var_1 = 6834u;
    var var_2 = Struct_1((var_0.a ^ ~(~u_input.c)) & firstLeadingBit(firstLeadingBit(vec3<u32>(var_0.a.x, var_1, 4294967295u))), u_input.d.x);
    let var_3 = Struct_1(var_2.a, -14949i);
    return _wgslsmith_add_u32(1u, ~max(21085u, 27430u) << (~u_input.b % 32u)) ^ 10632u;
}

fn func_2(arg_0: u32) -> vec3<u32> {
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-638f)))));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-708f)))))), _wgslsmith_f_op_f32(step(-153f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1663f - -1227f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1160f * 1457f), _wgslsmith_f_op_f32(-1952f - 1210f))))));
    var var_0 = vec4<bool>(true, u_input.c.x <= ~1u, !(!all(select(vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, true, global0.x)))), func_3(vec2<f32>(-1000f, -745f), 30630u & u_input.b) < _wgslsmith_add_u32(~_wgslsmith_sub_u32(28241u, u_input.a.x), 1u));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(530f, -1540f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(364f + 1183f) + -1931f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1293f, -734f) * 285f)))));
    var_0 = !(!vec4<bool>(select(global0.x, true, true), !all(vec4<bool>(false, var_0.x, false, false)), any(vec4<bool>(false, var_0.x, var_0.x, false)), global0.x));
    return u_input.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec2<i32>) -> vec2<u32> {
    var var_0 = Struct_1(arg_0 & vec3<u32>(u_input.b, ~(~0u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 30542u, 59536u), vec3<u32>(u_input.a.x, 36932u, 4379u)))), arg_2.x);
    var var_1 = vec2<bool>(global0.x, global0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_1.zx)) + _wgslsmith_f_op_vec2_f32(-arg_1.wz));
    global2 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_3 = Struct_1(~var_0.a, arg_2.x);
    return var_0.a.yx | vec2<u32>(77819u, 0u);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>) -> vec3<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-1200f - _wgslsmith_f_op_f32(round(-677f))), -965f);
    let var_1 = _wgslsmith_sub_vec2_u32(func_4(vec3<u32>(u_input.b, _wgslsmith_dot_vec3_u32(func_2(u_input.b), _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(u_input.b, u_input.c.x, 1u))), u_input.b), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, arg_1.x, var_0.x, arg_1.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-136f, -574f, -280f, -1695f))), global0.x)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -152f, var_0.x, _wgslsmith_f_op_f32(max(1000f, arg_1.x))))), u_input.d.xy), countOneBits(firstLeadingBit(_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, u_input.c.x)), ~u_input.a.zx))));
    global1 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_2 = vec2<bool>(all(vec2<bool>(global0.x, global0.x)), select(global0.x, global0.x, false));
    var_2 = !select(select(!select(vec2<bool>(var_2.x, true), vec2<bool>(false, true), vec2<bool>(true, var_2.x)), !select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), global0.x), select(select(vec2<bool>(global0.x, true), vec2<bool>(false, false), vec2<bool>(false, true)), !vec2<bool>(var_2.x, var_2.x), vec2<bool>(false, global0.x))), select(!(!vec2<bool>(var_2.x, var_2.x)), !(!vec2<bool>(true, var_2.x)), vec2<bool>(false, true)), vec2<bool>(any(!vec2<bool>(var_2.x, true)), false));
    return firstLeadingBit(~_wgslsmith_add_vec3_u32(u_input.c, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec3<u32>(1u, min(0u, u_input.c.x), select(u_input.a.x, u_input.b, global0.x)) << (~((vec3<u32>(u_input.b, u_input.b, u_input.a.x) & vec3<u32>(76760u, u_input.b, 4294967295u)) ^ func_1(vec3<i32>(25959i, 62321i, 12200i), vec3<f32>(713f, 1266f, -1241f))) % vec3<u32>(32u)), 2147483647i << ((u_input.b ^ ~(u_input.b | 30415u)) % 32u));
    let var_1 = u_input.d.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-370f, -1193f) + vec2<f32>(945f, -938f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(266f, 422f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-731f, -665f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(641f, -331f)), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), false)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1257f, -840f), vec2<f32>(-1105f, 1437f), vec2<bool>(true, global0.x))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(294f, -1223f))), !vec2<bool>(global0.x, global0.x)))))));
    var var_3 = var_0.a.x;
    let var_4 = Struct_1(u_input.c, _wgslsmith_clamp_i32(var_0.b, max(-42966i, _wgslsmith_div_i32(var_0.b, 14221i)) | var_1, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-abs(u_input.d.x ^ var_1), firstTrailingBit(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.b, -2147483647i), vec2<i32>(63280i, -3861i))), -23651i, ~var_1), 0u, vec4<u32>(var_0.a.x, ~22933u, ~var_4.a.x, func_2(~var_0.a.x).x), var_0.b);
}

