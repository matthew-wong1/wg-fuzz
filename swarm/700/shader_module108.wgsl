struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>) -> u32 {
    var var_0 = ~u_input.c;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1139f, arg_1.x, 270f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1134f, arg_1.x, -1670f, 187f) * vec4<f32>(arg_1.x, 761f, 936f, 1518f))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(arg_1, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_1), arg_1, any(vec2<bool>(false, false))))))));
    var_0 = u_input.d.x | u_input.b.x;
    let var_2 = Struct_2(Struct_1(_wgslsmith_add_u32(_wgslsmith_clamp_u32(48541u >> (u_input.e % 32u), ~u_input.e, u_input.e), 25744u)), vec4<bool>(true, var_1.x != _wgslsmith_f_op_f32(ceil(501f)), true, true), Struct_1(12345u));
    var_0 = max(max(-20318i ^ arg_0.x, 25154i) ^ u_input.c, ~(i32(-1i) * -4285i)) << (~(~u_input.e) % 32u);
    return 0u;
}

fn func_2(arg_0: f32) -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_u32(u_input.e, ~4990u)), vec4<bool>(true, true, true, true), Struct_1(abs(func_3(firstTrailingBit(vec2<i32>(u_input.c, 13196i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1067f, 1084f, 1000f, arg_0))))));
    let var_1 = var_0.c;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-511f * 1007f) - arg_0)));
    var var_3 = Struct_2(var_0.c, !var_0.b, Struct_1(_wgslsmith_add_u32(37634u, var_0.a.a)));
    let var_4 = Struct_1(abs(57071u));
    return var_3.b;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    var var_0 = u_input.b.xyy;
    var_0 = ~u_input.b.zwx;
    let var_1 = Struct_2(Struct_1(arg_1.x), func_2(-1186f), Struct_1(func_3(var_0.zx, vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(1024f, arg_0)), 2008f, 251f))));
    var var_2 = var_1.b.x;
    var_0 = vec3<i32>(-1i, ~_wgslsmith_div_i32(u_input.a, -20895i), ~u_input.d.x) ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(-u_input.d.zzy, select(-u_input.d.wzz, ~vec3<i32>(-1i, 2147483647i, u_input.a), vec3<bool>(false, true, var_1.b.x))), -countOneBits(abs(u_input.b.wyw)), ~(-vec3<i32>(var_0.x, var_0.x, u_input.d.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -2181f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(u_input.e, ~(~u_input.e >> (~4294967295u % 32u)), u_input.e, 55053u);
    var var_1 = vec3<bool>(true, true, true);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-1988f, vec2<u32>(u_input.e, var_0.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1556f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-543f, -1484f) * _wgslsmith_f_op_f32(max(-463f, 594f))), var_1.x))));
    let var_3 = Struct_3(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.e, var_0.x), max(firstLeadingBit(u_input.e), var_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 33077u, 4294967295u), firstLeadingBit(vec3<u32>(u_input.e, u_input.e, 12169u)))), _wgslsmith_mult_u32(1u, ~59684u) & (91531u ^ _wgslsmith_mod_u32(42588u, u_input.e)), ~(~3328u ^ ~u_input.e)), u_input.a, u_input.b.x, var_2.x);
    var_1 = select(vec3<bool>(all(!select(vec3<bool>(false, false, true), vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, var_1.x, false))), u_input.e < _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u) << (vec2<u32>(0u, var_3.a.x) % vec2<u32>(32u))), all(!vec4<bool>(true, false, var_1.x, false))), select(vec3<bool>(!all(vec3<bool>(false, true, var_1.x)), true, true), !func_2(var_2.x).xyw, vec3<bool>(true, any(!var_1.xz), var_1.x)), vec3<bool>(var_1.x, select(var_1.x, false, true && var_1.x), false));
    let var_4 = vec2<i32>(~var_3.b, var_3.c);
    let var_5 = i32(-1i) * -var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d);
}

