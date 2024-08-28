struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    global0 = select(vec3<bool>(!all(select(vec3<bool>(false, true, global0.x), vec3<bool>(true, global0.x, global0.x), global0.x)), false, true), vec3<bool>(all(vec3<bool>(true, true, global0.x)), true, global0.x), !select(select(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, false), global0.x), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, true))), !(!vec3<bool>(false, global0.x, global0.x)), select(arg_0 <= arg_0, any(vec4<bool>(false, global0.x, true, global0.x)), false)));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-653f, -144f, _wgslsmith_f_op_f32(trunc(1437f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-145f, 323f, 1641f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-662f, -634f, -304f) * vec3<f32>(-172f, -891f, -382f)))));
    let var_1 = true;
    global0 = !(!vec3<bool>(global0.x, var_1, any(global0.yx)));
    let var_2 = u_input.a.x;
    return !select(vec4<bool>(true, global0.x, false, var_1), select(select(vec4<bool>(var_1, var_1, var_1, global0.x), vec4<bool>(var_1, true, var_1, true), vec4<bool>(var_1, global0.x, global0.x, false)), vec4<bool>(true, any(vec3<bool>(false, false, var_1)), any(vec3<bool>(global0.x, true, global0.x)), true), var_1), !(_wgslsmith_f_op_f32(-var_0.x) != _wgslsmith_f_op_f32(-1806f - var_0.x)));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    let var_0 = func_3(reverseBits(1u));
    global0 = select(!var_0.wwz, select(!(!select(var_0.zzy, var_0.wxx, var_0.x)), !func_3(select(13323u, 0u, true)).xxz, !any(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))), global0.x);
    global0 = func_3(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), ~min(max(vec2<u32>(4294967295u, 2385u), vec2<u32>(37246u, 0u)), ~vec2<u32>(17383u, 1u)))).yww;
    global0 = !select(var_0.xzx, func_3(_wgslsmith_dot_vec4_u32(min(vec4<u32>(1912u, 37825u, 4294967295u, 0u), vec4<u32>(0u, 40863u, 32557u, 0u)), min(vec4<u32>(7370u, 882u, 33295u, 41059u), vec4<u32>(0u, 0u, 24335u, 65622u)))).yzy, var_0.ywy);
    var var_1 = ~firstTrailingBit(~abs(arg_0 ^ arg_0));
    return 4294967295u;
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_2(select(vec4<u32>(func_2(u_input.a) << (~4315u % 32u), ~_wgslsmith_add_u32(0u, 58027u), func_2(abs(u_input.a)), 1u), ~vec4<u32>(1u, 1u, 1u, 1u), false));
    let var_1 = var_0;
    var var_2 = Struct_1(select(select(!(!vec3<bool>(true, global0.x, true)), !vec3<bool>(false, false, global0.x), -u_input.a.x <= u_input.a.x), func_3(5824u).yyx, select(vec3<bool>(global0.x, global0.x, arg_0.x >= arg_0.x), vec3<bool>(all(vec4<bool>(global0.x, false, false, false)), false, u_input.a.x <= u_input.a.x), !vec3<bool>(global0.x, true, false))), ~_wgslsmith_clamp_vec3_u32(var_1.a.wzz, vec3<u32>(_wgslsmith_div_u32(6682u, var_1.a.x), var_1.a.x, _wgslsmith_mult_u32(var_1.a.x, 39485u)), var_0.a.zzy | (var_1.a.zxw << (vec3<u32>(33570u, var_1.a.x, 1u) % vec3<u32>(32u)))), 4294967295u, _wgslsmith_div_vec2_i32(firstLeadingBit(max(max(vec2<i32>(-2147483647i, u_input.a.x), u_input.a), ~vec2<i32>(u_input.a.x, u_input.a.x))), select(vec2<i32>(u_input.a.x, u_input.a.x) << (reverseBits(vec2<u32>(var_1.a.x, 0u)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), vec2<i32>(u_input.a.x, -2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 12710i))), global0.x && global0.x)));
    global0 = !vec3<bool>(var_2.a.x, select(true, !var_2.a.x, false) || !var_2.a.x, true);
    var var_3 = 11418u;
    return Struct_2(~var_0.a);
}

fn func_4(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(63753u << (arg_0.a.x % 32u), _wgslsmith_mod_u32(66492u, arg_0.a.x), 1u, abs(arg_0.a.x)), ~(~vec4<u32>(arg_0.a.x, 33480u, arg_0.a.x, 1u)) | ~(~arg_0.a)));
    return vec3<bool>(false, true, _wgslsmith_clamp_u32(~1u, 7614u, 0u) <= var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 905f, 2007f) * vec3<f32>(-138f, 1501f, 1107f)) + vec3<f32>(-587f, 1334f, -350f)))));
    global0 = func_3(18636u ^ _wgslsmith_mult_u32(abs(~1u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, 40896u)), vec2<u32>(1u, 4294967295u)))).zyy;
    global0 = !(!(!(!vec3<bool>(global0.x, global0.x, true))));
    global0 = !vec3<bool>((~77059u ^ func_2(vec2<i32>(73853i, u_input.a.x))) < (35254u << (1u % 32u)), true, global0.x);
    let var_0 = Struct_1(vec3<bool>(true, !(!any(vec3<bool>(true, global0.x, global0.x))), global0.x), ~vec3<u32>(~1u, 4294967295u, ~1u), 1u, vec2<i32>(-1i, u_input.a.x << (4294967295u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1428f, 1649f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2412f - -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -160f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1382f, -1113f, true)))))), ~(~_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(var_0.c, 0u))));
}

