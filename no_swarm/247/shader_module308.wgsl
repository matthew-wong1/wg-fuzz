struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> bool {
    let var_0 = ~(~(~(~(~vec2<u32>(1u, 99342u)))));
    let var_1 = -2465i;
    var var_2 = arg_1;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(267f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -372f)), -2034f)), _wgslsmith_add_u32(var_0.x, _wgslsmith_mult_u32(53710u, arg_0.a)) >= 29769u)), 434f);
    let var_4 = min(firstLeadingBit(vec2<u32>(max(var_0.x >> (45069u % 32u), 4294967295u), ~(var_0.x >> (1u % 32u)))), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(0u, 50745u) | vec2<u32>(26715u, var_0.x)) & var_0, ~vec2<u32>(~4294967295u, 1u | arg_0.a)));
    return any(!vec3<bool>(true, any(vec2<bool>(true, false)), true));
}

fn func_2(arg_0: vec3<f32>) -> vec3<u32> {
    let var_0 = select(select(vec3<bool>(firstLeadingBit(u_input.a.x) == 2147483647i, all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), select(any(vec3<bool>(true, false, true)), func_3(Struct_2(1u), u_input.a), true)), vec3<bool>(arg_0.x != _wgslsmith_f_op_f32(sign(arg_0.x)), true || all(vec4<bool>(true, true, true, false)), !all(vec2<bool>(false, true))), vec3<bool>(!all(vec3<bool>(true, true, true)), 1592f != arg_0.x, true)), vec3<bool>(true, false, true), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)) | true);
    let var_1 = Struct_2(_wgslsmith_dot_vec2_u32(~(~min(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 17637u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~(~vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(4294967295u, 1u))));
    let var_2 = firstTrailingBit(var_1.a);
    var var_3 = arg_0.x;
    var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x)));
    return ~max(~_wgslsmith_mult_vec3_u32(~vec3<u32>(12409u, var_1.a, var_1.a), min(vec3<u32>(var_1.a, 4294967295u, 66968u), vec3<u32>(var_2, var_1.a, var_1.a))), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a, var_1.a, var_1.a), vec3<u32>(var_2, 0u, 1u))) << (max(vec3<u32>(48399u, 63974u, 4294967295u) & vec3<u32>(4294967295u, var_1.a, var_2), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_1.a, var_1.a), vec3<u32>(var_2, var_1.a, 4294967295u))) % vec3<u32>(32u)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1412f)), _wgslsmith_mod_vec3_u32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-452f, arg_0, arg_0))) ^ ~vec3<u32>(1u, 0u, arg_3.a), ~(~func_2(vec3<f32>(-453f, -2830f, -1494f)))), _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(abs(vec2<u32>(4294967295u, arg_1)), ~vec2<u32>(4692u, arg_1)), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, ~1u))));
    var_0 = var_1.a;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 70578u;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-733f, _wgslsmith_f_op_f32(select(-524f, _wgslsmith_f_op_f32(f32(-1f) * -726f), true)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(813f, -562f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1000f, 1179f)), -170f)))))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(354f + -2039f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(505f)), _wgslsmith_f_op_f32(abs(896f)))), 1u, ~(-u_input.a), Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(3575u, 0u, 64699u), ~vec3<u32>(14437u, 63450u, 19580u)))), _wgslsmith_clamp_u32(~1u, ~(~0u), 1u));
    var_0 = var_1.b.x;
    var_0 = _wgslsmith_mod_u32(~(~var_1.b.x), var_1.b.x);
    let var_2 = u_input.b.xzx;
    var var_3 = var_1.b.xy;
    var var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(277f, _wgslsmith_f_op_f32(select(1249f, _wgslsmith_f_op_f32(-1898f + 867f), true)))), 26745u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1945f) - _wgslsmith_div_f32(var_1.a, var_1.a)))));
}

