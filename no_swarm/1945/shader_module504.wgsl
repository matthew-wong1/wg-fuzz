struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-213f, 749f))) - -2523f)));
    let var_1 = -757f;
    let var_2 = vec2<bool>(true, true);
    var var_3 = u_input.a ^ min(select(u_input.a, firstLeadingBit(abs(u_input.a)), vec3<bool>(true, true, true)), ~max(vec3<u32>(4294967295u, 1u, u_input.a.x), vec3<u32>(17754u, 5010u, u_input.a.x)) >> (_wgslsmith_mult_vec3_u32(max(u_input.a, u_input.a), vec3<u32>(u_input.a.x, 1u, 2828u) ^ u_input.a) % vec3<u32>(32u)));
    var var_4 = 0i;
    return vec2<bool>(var_2.x, !var_2.x);
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<bool> {
    return select(arg_1.yw, arg_1.xy, arg_1.yy);
}

fn func_1() -> bool {
    var var_0 = ~countOneBits(4294967295u);
    let var_1 = vec4<i32>(u_input.b.x, 14071i, u_input.b.x, 0i);
    var_0 = _wgslsmith_mod_u32(u_input.a.x, u_input.a.x);
    var var_2 = !select(select(func_2(), vec2<bool>(true, all(vec2<bool>(true, true))), func_3(_wgslsmith_f_op_f32(min(-513f, 1050f)), vec4<bool>(true, true, true, true), Struct_1(-1178f, vec4<u32>(20662u, 1u, 15977u, 48405u)))), !select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, false))), !(-44082i >= ~u_input.b.x));
    var_2 = func_3(-383f, !vec4<bool>(2147483647i < (u_input.b.x >> (61904u % 32u)), var_2.x, true, var_2.x), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-373f))), 1187f), abs(vec4<u32>(abs(1u), u_input.a.x, firstTrailingBit(u_input.a.x), ~4294967295u))));
    return all(select(select(vec2<bool>(true, any(vec4<bool>(false, false, true, false))), vec2<bool>(false, true), vec2<bool>(var_2.x, var_1.x != u_input.b.x)), vec2<bool>(true, var_2.x), any(vec3<bool>(var_2.x, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(firstLeadingBit(~2147483647i));
    var var_1 = vec4<bool>(true, true, !(((1u == u_input.a.x) || true) || false), select(true, false, all(vec2<bool>(true, u_input.a.x > 16360u))));
    var var_2 = vec3<bool>(func_1(), var_1.x, var_1.x & (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-373f, -2309f)))) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -772f), -1945f))));
    var var_3 = u_input.a.x;
    let var_4 = ~(-12527i);
    var_3 = ~firstTrailingBit(_wgslsmith_dot_vec3_u32(abs(u_input.a) & u_input.a, ~u_input.a));
    let var_5 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1055f - _wgslsmith_f_op_f32(159f + -597f)))))), (_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 15250u)) >> (~(vec4<u32>(0u, u_input.a.x, 21383u, u_input.a.x) ^ vec4<u32>(u_input.a.x, 55185u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))) & vec4<u32>(8100u, 18987u, 0u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a, ~(var_5.b.xwy >> (~(~u_input.a) % vec3<u32>(32u))), var_5.b, -13205i);
}

