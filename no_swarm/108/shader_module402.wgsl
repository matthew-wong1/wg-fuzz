struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7>;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<f32>(-1315f, 273f)), Struct_1(vec2<f32>(-1184f, -1000f)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<f32> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~5124u), 72327u, abs(~_wgslsmith_clamp_u32(39549u, 4294967295u, 4294967295u))) ^ ~31992u, 2u)];
    var var_1 = Struct_1(vec2<f32>(2301f, 227f));
    var var_2 = ~countOneBits(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u))) >> (select(vec4<u32>(reverseBits(1u), ~4294967295u, ~min(19169u, 4294967295u), select(37881u, 1u, any(vec3<bool>(false, true, true)))), vec4<u32>(~24394u, ~max(1u, 17721u), 1u << (_wgslsmith_mod_u32(49424u, 1u) % 32u), ~abs(1u)), !all(vec4<bool>(true, true, true, true))) % vec4<u32>(32u));
    var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, 1592f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1083f, -673f), var_1.a))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.x, -1151f)))), var_0.a));
    var_0 = Struct_1(var_0.a);
    return vec2<f32>(-104f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1756f - _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))));
}

fn func_2(arg_0: bool) -> u32 {
    global0 = array<vec3<f32>, 7>();
    global0 = array<vec3<f32>, 7>();
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2109f - -1334f))), 1819f), _wgslsmith_f_op_vec2_f32(func_3())));
    let var_1 = ~(-41273i);
    global0 = array<vec3<f32>, 7>();
    return _wgslsmith_sub_u32(abs(~(_wgslsmith_dot_vec4_u32(vec4<u32>(31607u, 4228u, 40255u, 0u), vec4<u32>(55373u, 42552u, 64550u, 4294967295u)) | ~0u)), 4294967295u);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    let var_0 = vec4<u32>(_wgslsmith_add_u32(reverseBits(1u), ~_wgslsmith_div_u32(firstTrailingBit(4294967295u), min(3514u, 78353u))), ~(~func_2(true)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~1u, 44927u), 1u), abs(~(~min(0u, 0u))));
    global1 = array<Struct_1, 2>();
    return all(vec3<bool>(!(!all(vec3<bool>(false, arg_0, true))), !(!all(vec3<bool>(false, arg_0, arg_0))), select(false, arg_0, all(select(vec2<bool>(true, true), vec2<bool>(arg_0, false), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(true | (true | select(false, false, false)), any(vec2<bool>(true, true)), false, true), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false), true), (14323i << (0u % 32u)) < -u_input.a.x), vec4<bool>(false, true && func_1(true, Struct_1(vec2<f32>(1125f, 1064f)), global1[_wgslsmith_index_u32(4294967295u, 2u)], u_input.a ^ u_input.a), any(vec3<bool>(true, true, true)) | false, any(vec2<bool>(true, true))));
    var var_1 = vec3<f32>(-580f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -695f))) - -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1196f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -426f))))));
    var var_2 = !vec2<bool>(var_0.x, any(var_0.wx));
    global1 = array<Struct_1, 2>();
    var var_3 = Struct_1(var_1.xz);
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -952f)), -813f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(50643u, max(~_wgslsmith_clamp_u32(0u, 52144u, 4294967295u), ~0u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(58005u, 1u), vec2<u32>(1u, 21697u))), ~(~func_2(var_0.x)), _wgslsmith_div_u32(35210u, countOneBits(_wgslsmith_clamp_u32(50811u, 451u, 39980u)))));
}

