struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> vec2<i32> {
    let var_0 = Struct_2(1u, Struct_1(_wgslsmith_mult_vec3_u32(select(~arg_0, arg_0, true), max(~arg_0, ~arg_0)), arg_0.zy), Struct_1(~(~arg_0), _wgslsmith_clamp_vec2_u32(countOneBits(u_input.a) ^ _wgslsmith_mult_vec2_u32(u_input.a, arg_0.zz), vec2<u32>(18556u, _wgslsmith_sub_u32(u_input.a.x, arg_0.x)), u_input.a)), Struct_1(vec3<u32>(countOneBits(u_input.a.x), ~u_input.a.x, 1u), vec2<u32>(firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, 4294967295u, arg_0.x), vec3<u32>(u_input.a.x, arg_0.x, 0u)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -226f)));
    let var_2 = true;
    var var_3 = vec2<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -489f));
    var var_4 = true;
    return vec2<i32>(14309i, select(1i, 1i, !var_2) & countOneBits(-firstLeadingBit(33473i)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = func_3(abs(vec3<u32>(3749u >> (_wgslsmith_clamp_u32(arg_0.a.x, 1u, u_input.a.x) % 32u), 62087u, reverseBits(_wgslsmith_sub_u32(arg_0.a.x, 5171u)))));
    let var_1 = true;
    var var_2 = var_0.x;
    var_0 = ~vec2<i32>(~(~var_0.x), _wgslsmith_sub_i32(~var_0.x, 0i));
    var var_3 = firstLeadingBit(arg_0.a);
    return _wgslsmith_clamp_u32(u_input.a.x, select(_wgslsmith_dot_vec3_u32(arg_0.a, abs(vec3<u32>(arg_0.a.x, 0u, 1u))), firstTrailingBit(1u), true) << (~_wgslsmith_clamp_u32(abs(12443u), arg_0.b.x, 31609u) % 32u), 1u);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = func_2(arg_1);
    let var_1 = arg_1;
    var var_2 = 1i;
    return -332f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1154f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1174f))))), _wgslsmith_f_op_f32(-180f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-394f * 863f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<u32>(4294967295u, 1u, 1u, u_input.a.x), Struct_1(vec3<u32>(1u, u_input.a.x, u_input.a.x), vec2<u32>(1u, u_input.a.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-320f, -298f)))), 109f);
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), func_2(Struct_1(~vec3<u32>(u_input.a.x, 76224u, 0u), ~vec2<u32>(u_input.a.x, u_input.a.x))), 1u), _wgslsmith_mult_vec2_u32(select(u_input.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 12730u) & u_input.a, ~vec2<u32>(1u, 32963u), _wgslsmith_mult_vec2_u32(vec2<u32>(2342u, u_input.a.x), u_input.a)), true), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, u_input.a.x), ~vec2<u32>(4294967295u, 27514u))));
    var_1 = Struct_1(firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 8928u, u_input.a.x), var_1.a), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.x, u_input.a.x, 0u), vec3<u32>(4294967295u, var_1.b.x, var_1.a.x)), reverseBits(var_1.a)), ~(var_1.a ^ vec3<u32>(0u, 27118u, 14514u)))), ~(var_1.b & ~min(vec2<u32>(var_1.b.x, 1788u), u_input.a)));
    let var_2 = _wgslsmith_sub_vec4_u32(abs(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(var_1.b.x, 4294967295u, 4294967295u, var_1.a.x)), ~(~vec4<u32>(var_1.b.x, 4294967295u, u_input.a.x, u_input.a.x)))), vec4<u32>(var_1.b.x, 4294967295u, 5049u, min(firstLeadingBit(_wgslsmith_clamp_u32(var_1.b.x, 0u, 1u)), 71477u)));
    let var_3 = vec3<u32>(~u_input.a.x, _wgslsmith_sub_u32(func_2(Struct_1(var_1.a, vec2<u32>(43208u, var_1.a.x))), abs(~var_1.a.x)) | min(var_2.x, var_1.a.x), ~33957u);
    var_1 = Struct_1(_wgslsmith_sub_vec3_u32(reverseBits(abs(vec3<u32>(0u, 1u, u_input.a.x)) ^ _wgslsmith_add_vec3_u32(var_3, vec3<u32>(1u, var_3.x, var_1.b.x))), var_2.yww), vec2<u32>(~firstTrailingBit(~var_1.a.x), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(u_input.a.x, var_3.x) << (_wgslsmith_mult_u32(~4294967295u, var_1.a.x) % 32u)));
}

