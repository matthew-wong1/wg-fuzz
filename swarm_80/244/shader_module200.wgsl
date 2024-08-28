struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
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

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec4<bool> {
    return select(!vec4<bool>(arg_0.x, arg_0.x, !(true == arg_0.x), any(vec2<bool>(true, arg_0.x))), !vec4<bool>(arg_0.x, any(arg_0.yx), false, !select(arg_0.x, true, arg_0.x)), (true && arg_0.x) == all(!arg_0));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: f32) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-961f * _wgslsmith_f_op_f32(step(1017f, _wgslsmith_div_f32(-266f, 587f)))), ~1i);
    var var_1 = vec2<u32>(~_wgslsmith_mod_u32(~1u, u_input.b.x), min(~24266u, _wgslsmith_dot_vec2_u32(~max(vec2<u32>(0u, u_input.b.x), vec2<u32>(u_input.b.x, 1u)), ~u_input.b.wx << (u_input.b.zz % vec2<u32>(32u)))));
    global0 = var_0;
    global0 = var_0;
    global0 = Struct_1(_wgslsmith_div_f32(1099f, _wgslsmith_f_op_f32(-1000f - 712f)), ~(-13271i));
    return select(!select(select(vec4<bool>(true, false, arg_0.x, arg_1), !vec4<bool>(true, false, arg_0.x, false), vec4<bool>(false, arg_1, true, true)), select(select(vec4<bool>(arg_1, arg_1, arg_0.x, false), vec4<bool>(arg_1, arg_1, arg_0.x, arg_0.x), vec4<bool>(true, true, arg_1, false)), !vec4<bool>(true, false, arg_1, arg_0.x), func_3(vec3<bool>(true, arg_1, arg_0.x), Struct_1(-1384f, -37071i))), func_3(vec3<bool>(arg_1, arg_0.x, arg_1), var_0)), vec4<bool>(true, all(!select(vec3<bool>(false, arg_1, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), true)), (any(vec3<bool>(true, arg_0.x, arg_1)) | all(vec4<bool>(true, arg_1, true, true))) && func_3(vec3<bool>(arg_1, false, false), var_0).x, arg_0.x), arg_1);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-455f + -382f) + _wgslsmith_f_op_f32(ceil(926f)))))));
    var var_1 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false)), all(vec3<bool>(true, true, true))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false))), select(select(vec4<bool>(false, true, true, 2656f <= global0.a), func_2(vec2<bool>(false, true), any(vec4<bool>(true, false, false, false)), _wgslsmith_f_op_f32(step(-1340f, var_0))), !any(vec4<bool>(false, false, true, false))), select(func_3(vec3<bool>(true, true, true), Struct_1(-121f, global0.b)), vec4<bool>(u_input.b.x != u_input.b.x, true, true, true), func_2(vec2<bool>(false, false), false, _wgslsmith_f_op_f32(-var_0))), func_2(vec2<bool>(true, true), any(vec4<bool>(true, true, true, true)), var_0)), false);
    var var_2 = firstTrailingBit(~u_input.e.x);
    return Struct_1(-733f, _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.b, 1i, global0.b), u_input.e, vec3<i32>(global0.b, global0.b, 18380i))), vec3<i32>(-21402i, ~(-global0.b), -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = func_1();
    global0 = func_1();
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(183f, var_0.a, global0.a, global0.a) * vec4<f32>(911f, var_0.a, 1852f, var_0.a)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-586f, var_0.a, global0.a, global0.a), vec4<f32>(1000f, var_0.a, 748f, global0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1439f, var_0.a, -1000f, 130f) - vec4<f32>(-257f, global0.a, -624f, -1271f)) - vec4<f32>(973f, var_0.a, -823f, -1722f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(1228f, _wgslsmith_f_op_f32(abs(-122f)), _wgslsmith_f_op_f32(trunc(var_0.a)), 312f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-308f, var_0.a, -306f, global0.a), vec4<f32>(var_0.a, global0.a, global0.a, -285f))))));
    var var_2 = !(!vec3<bool>(func_2(vec2<bool>(false, true), true, global0.a).x, true, true));
    var var_3 = var_0;
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b);
}

