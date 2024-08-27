struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(396f, -415f, vec3<f32>(-1420f, -1164f, 1104f));

var<private> global1: Struct_1 = Struct_1(458f, 1531f, vec3<f32>(1000f, 754f, -1773f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    var var_1 = global0.b;
    global0 = Struct_1(1000f, _wgslsmith_f_op_f32(1460f * var_0.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, -830f, -1380f) * vec3<f32>(arg_0.x, 1051f, global0.c.x)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b))))), _wgslsmith_f_op_f32(-157f + global0.c.x));
    var var_3 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_0.x, arg_1.b)))))), 652f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2680f)) * 1082f))));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: bool, arg_3: vec2<f32>) -> bool {
    global0 = Struct_1(-580f, -1017f, global0.c);
    let var_0 = 0u;
    var var_1 = -u_input.b.wx;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1239f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, arg_3.x) + vec2<f32>(global1.c.x, global0.c.x)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -693f), _wgslsmith_f_op_f32(global0.b * -509f), global0.c)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_3.x, arg_1.x), 826f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.c.x * 896f), -538f))) + global0.c));
    var_1 = -(firstTrailingBit(u_input.b.xz) >> (~vec2<u32>(67640u, ~var_0) % vec2<u32>(32u)));
    return !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(894f + global0.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - -702f))) > _wgslsmith_div_f32(arg_3.x, 580f));
}

fn func_4(arg_0: bool) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(global0.b - -485f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-431f, global0.c.x), _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(155f))))))), global0.c);
    let var_0 = _wgslsmith_f_op_f32(floor(global1.c.x));
    global0 = Struct_1(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.c.zz, Struct_1(global1.a, 1423f, global1.c)))) - var_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c) + global1.c) + vec3<f32>(_wgslsmith_f_op_f32(round(global0.b)), _wgslsmith_div_f32(-741f, var_0), _wgslsmith_f_op_f32(var_0 + 540f))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0), -423f, _wgslsmith_f_op_f32(622f - _wgslsmith_f_op_f32(-global1.c.x)))));
    var var_1 = -(~vec4<i32>(52237i, -firstTrailingBit(u_input.b.x), u_input.b.x, u_input.a.x));
    var var_2 = Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(-global0.a))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.b))), 781f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global1.b, global1.b)), -967f)))));
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1134f, _wgslsmith_f_op_f32(exp2(var_2.b))))))), _wgslsmith_f_op_f32(1000f + -708f), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-540f, global0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a)) - var_0), arg_0)), -109f, 234f));
}

fn func_1() -> Struct_1 {
    let var_0 = 1101f;
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.c.x, 311f)), _wgslsmith_f_op_f32(-global1.c.x)) - var_0), _wgslsmith_f_op_f32(min(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(114f * var_0) + -655f))), global0.c);
    global1 = func_4(all(vec3<bool>((u_input.c.x > 19423u) | true, true & func_2(u_input.b.x, vec4<f32>(-370f, -228f, 1000f, -1851f), false, global0.c.yx), any(vec4<bool>(true, true, true, true)))));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -808f))))), 1141f, global0.c);
    let var_1 = false;
    return func_4(false);
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = func_1();
    let var_1 = Struct_1(271f, global1.c.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(round(global1.c.zy)), arg_3)) - -617f), func_4(!func_2(-1i, vec4<f32>(-269f, global0.c.x, 100f, var_0.b), false, global1.c.xx)).b, 1f));
    let var_2 = firstLeadingBit(_wgslsmith_mod_vec2_i32(u_input.a.yw, vec2<i32>(~22519i, ~u_input.a.x) ^ u_input.a.wx));
    global1 = arg_3;
    var var_3 = _wgslsmith_div_u32(countOneBits(~u_input.c.x), _wgslsmith_sub_u32(u_input.c.x, ~_wgslsmith_clamp_u32(countOneBits(u_input.c.x), 838u << (u_input.c.x % 32u), u_input.c.x & 11487u)));
    return -476f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1374f * _wgslsmith_f_op_f32(-540f + -1227f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-521f - _wgslsmith_div_f32(global0.b, 1101f)) + _wgslsmith_f_op_f32(func_5(_wgslsmith_dot_vec3_i32(u_input.b.wxw, u_input.b.xwy), _wgslsmith_f_op_vec2_f32(vec2<f32>(388f, global0.b) * var_0.yx), vec2<bool>(true, false), func_1())))), -598f, _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(global0.c.x, -924f), _wgslsmith_f_op_f32(func_3(vec2<f32>(357f, global0.a), Struct_1(global0.a, -298f, global0.c))))), func_4(true).c));
    let var_2 = Struct_1(1827f, _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_vec3_f32(-var_1.c));
    global1 = Struct_1(_wgslsmith_f_op_f32(1517f + 2340f), var_1.c.x, _wgslsmith_f_op_vec3_f32(-var_2.c));
    global0 = Struct_1(131f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.c.x, func_4(false).c.x))), 100f)), vec3<f32>(_wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(899f, var_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -584f)), 735f));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(~(-2147483647i), -19797i, u_input.b.x, 18217i), func_1().c.x, -1i);
}

