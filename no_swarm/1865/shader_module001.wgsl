struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: Struct_1) -> bool {
    var var_0 = arg_3;
    return true;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(select(firstLeadingBit(~arg_1.a), _wgslsmith_mod_vec2_u32(~arg_1.b.zz, vec2<u32>(1u, arg_1.a.x)), all(!vec3<bool>(false, arg_0, arg_0))) | arg_1.b.zz, countOneBits(firstLeadingBit(_wgslsmith_sub_vec3_u32(abs(arg_1.b), ~vec3<u32>(u_input.a, u_input.a, arg_1.a.x)))));
    let var_1 = vec4<bool>(any(vec4<bool>(any(vec4<bool>(false, arg_0, true, false)), func_3(_wgslsmith_mult_vec2_i32(arg_2, arg_2), abs(vec4<u32>(u_input.a, u_input.a, arg_1.a.x, 91030u)), arg_2, arg_1), any(vec2<bool>(false, arg_0)) & (62944u == var_0.b.x), all(vec2<bool>(true, true)))), all(vec2<bool>(all(vec2<bool>(true, arg_0)), arg_0)), !(!arg_0), 4294967295u <= var_0.b.x);
    var var_2 = var_0;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(273f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1502f, -384f, true)) - -112f))));
    var var_3 = _wgslsmith_div_vec2_i32(~firstLeadingBit(-arg_2), vec2<i32>(-firstLeadingBit(166i), ~select(1i, arg_2.x, select(false, arg_0, var_1.x))));
    return Struct_1(var_0.b.yz & firstTrailingBit(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 51557u), arg_1.a), ~vec2<u32>(arg_1.a.x, u_input.a), ~vec2<u32>(arg_1.a.x, 29108u))), vec3<u32>(0u, _wgslsmith_sub_u32(firstLeadingBit(arg_1.b.x) >> (select(0u, 53586u, true) % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.b.x, 9552u, var_0.a.x), vec3<u32>(0u, 4294967295u, arg_1.b.x))), 0u));
}

fn func_4(arg_0: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(641f, -564f)))) * -1758f), -535f));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1028f)) - 1015f) + _wgslsmith_f_op_f32(-1f));
    let var_0 = select(vec2<u32>(arg_0.b.x, _wgslsmith_mod_u32(u_input.a, ~func_2(true, arg_0, vec2<i32>(0i, -4611i)).b.x)), vec2<u32>(1u, _wgslsmith_dot_vec4_u32((vec4<u32>(64663u, 1u, u_input.a, 28335u) << (vec4<u32>(57704u, 4294967295u, u_input.a, 0u) % vec4<u32>(32u))) | select(vec4<u32>(u_input.a, 32878u, arg_0.b.x, u_input.a), vec4<u32>(0u, 0u, arg_0.a.x, u_input.a), true), vec4<u32>(60173u, ~34065u, select(68647u, 73419u, true), 84679u))), true);
    var var_1 = Struct_1(min(firstLeadingBit(~(vec2<u32>(39497u, 59318u) << (var_0 % vec2<u32>(32u)))), _wgslsmith_add_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(14067u, 0u, arg_0.b.x, arg_0.b.x), vec4<u32>(u_input.a, u_input.a, u_input.a, var_0.x)), 1u))), vec3<u32>(~1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(590u, var_0.x, 13337u, arg_0.a.x) << (vec4<u32>(23524u, 18804u, 4294967295u, arg_0.b.x) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(1u, 5507u, arg_0.a.x, 63740u))), firstTrailingBit(var_0.x | 1u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-371f, -984f)))), _wgslsmith_f_op_f32(-855f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1110f * 510f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-436f - var_2.x))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>) -> f32 {
    global0 = 1f;
    let var_0 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a, arg_1.x), arg_1.xx), firstLeadingBit(vec3<u32>(arg_1.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, u_input.a, 1u, 25978u), vec4<u32>(u_input.a, arg_1.x, arg_1.x, arg_1.x)), abs(~21856u))));
    global0 = _wgslsmith_f_op_f32(func_4(func_2(arg_0.x, var_0, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(58010i, 7503i), _wgslsmith_mod_vec2_i32(vec2<i32>(-30771i, 0i), -vec2<i32>(-13828i, 2147483647i)), -_wgslsmith_sub_vec2_i32(vec2<i32>(-1833i, -47562i), vec2<i32>(14448i, 23006i))))));
    global0 = _wgslsmith_f_op_f32(-1208f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-910f)), 1000f)), -285f)), 655f)));
    let var_1 = _wgslsmith_add_vec4_i32(-vec4<i32>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(2147483647i, 0i)), _wgslsmith_mod_i32(-46314i, -1i)), 7048i, _wgslsmith_dot_vec2_i32(vec2<i32>(12738i, -51986i), ~vec2<i32>(-20599i, 29471i)), 2147483647i), vec4<i32>(i32(-1i) * -max(-10194i, -1i), 1i, -3555i, 1i));
    return 2194f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), vec3<u32>(25661u, u_input.a >> (u_input.a % 32u), u_input.a & u_input.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-635f)) * -281f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1649f))))));
    var var_0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(563f, -305f, 1145f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1127f, 644f, -139f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -764f) - -289f), 2713f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-513f + 2891f))))), countOneBits(~select(abs(vec4<u32>(u_input.a, 40935u, 4294967295u, 4294967295u)), vec4<u32>(4294967295u, u_input.a, 5945u, u_input.a), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true))));
}

