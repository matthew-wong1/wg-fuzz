struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(1638f, 1581f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(global0.a)));
    return !vec2<bool>(true || !(arg_0.a.x != -1772f), !(u_input.a != -63573i));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: Struct_1) -> bool {
    let var_0 = arg_2.x;
    global0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(arg_3.a.x, 1644f), 628f));
    let var_1 = global0.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3.a.x, _wgslsmith_f_op_f32(global0.a.x + 860f), arg_3.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.x, arg_3.a.x, global0.a.x) * vec3<f32>(global0.a.x, -468f, arg_3.a.x))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, -1547f, _wgslsmith_f_op_f32(global0.a.x + -216f))), !arg_0.x));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(570f - -161f), _wgslsmith_div_f32(var_2.x, global0.a.x)), _wgslsmith_f_op_f32(613f * _wgslsmith_f_op_f32(-207f + arg_3.a.x))))));
    return arg_1.x;
}

fn func_3(arg_0: bool) -> Struct_1 {
    let var_0 = 1i;
    global0 = Struct_1(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-893f + _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(sign(1037f))))));
    var var_1 = Struct_1(global0.a);
    let var_2 = -15318i;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a));
    return Struct_1(vec2<f32>(_wgslsmith_div_f32(var_1.a.x, 375f), 388f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_3(any(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, global0.a.x < global0.a.x), func_2(func_1(Struct_1(global0.a), u_input.a), vec3<bool>(false, false, false), ~vec2<u32>(17919u, 4456u), Struct_1(vec2<f32>(global0.a.x, 1917f))))));
    var var_0 = Struct_1(global0.a);
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~591u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(20869u, 0u, 4294967295u, 0u), vec4<u32>(1u, 1u, 1u, 1u)), min(~vec4<u32>(4294967295u, 70154u, 4294967295u, 1u), ~vec4<u32>(1873u, 1u, 1u, 0u))), abs(4294967295u)), ~1u);
    var var_2 = vec4<u32>(firstLeadingBit(~4294967295u), firstLeadingBit(~1u), _wgslsmith_div_u32(firstTrailingBit(~(~11322u)), firstLeadingBit(1u)), 1u);
    var var_3 = func_3(!all(vec4<bool>(true, true, any(vec3<bool>(false, false, false)), true)));
    let var_4 = select(~vec3<i32>(countOneBits(u_input.a), 0i, ~(-13164i)), vec3<i32>(u_input.a, i32(-1i) * -2147483647i, 1i), select(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), true), any(vec3<bool>(var_2.x >= 92688u, true, true))));
    var var_5 = ~(~firstTrailingBit(~abs(4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(firstLeadingBit(~(~vec3<u32>(var_2.x, var_2.x, var_2.x))), ~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(var_2.xyw, vec3<u32>(var_2.x, 0u, var_2.x)), var_2.yww >> (var_2.wxy % vec3<u32>(32u)))));
}

