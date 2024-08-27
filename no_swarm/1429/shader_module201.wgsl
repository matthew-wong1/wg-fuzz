struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 3> = array<i32, 3>(i32(-2147483648), -33960i, 27019i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = !(!select(vec3<bool>(true, any(vec3<bool>(true, true, false)), true), vec3<bool>(true, false, true), vec3<bool>(any(vec3<bool>(true, false, true)), true, true)));
    let var_1 = Struct_1(vec4<f32>(-502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-698f, arg_0.a.x) * _wgslsmith_f_op_f32(-arg_0.a.x))), arg_0.a.x, arg_0.a.x), u_input.b);
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, var_1.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a.x, arg_0.a.x, var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + 1871f))))));
    return !all(var_0);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    global0 = -526f;
    let var_0 = !(!all(vec3<bool>(-123f == arg_0.a.x, func_3(arg_0), any(vec3<bool>(true, false, true)))));
    var var_1 = vec3<bool>(all(select(!vec3<bool>(true, arg_1, var_0), select(vec3<bool>(arg_1, true, var_0), vec3<bool>(true, true, true), u_input.d.x <= 13494u), true)), any(!vec3<bool>(false, arg_1 && var_0, true & var_0)), func_3(arg_0));
    var var_2 = arg_0;
    var var_3 = var_2.a.zxz;
    return !(!(!select(!vec4<bool>(false, arg_1, arg_1, var_1.x), select(vec4<bool>(false, false, var_0, arg_1), vec4<bool>(true, var_1.x, false, var_0), var_0), select(false, true, true))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = arg_0.a.x;
    let var_0 = func_2(arg_0, true);
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1645f * _wgslsmith_f_op_f32(-arg_0.a.x))));
    let var_1 = arg_1.a.xxw;
    let var_2 = ~7553i;
    return abs(arg_1.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = arg_1;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-751f * _wgslsmith_div_f32(var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x - 568f), _wgslsmith_div_f32(arg_0.a.x, arg_1.a.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1796f + _wgslsmith_div_f32(arg_1.a.x, arg_1.a.x)))));
    var var_1 = arg_1;
    var var_2 = vec4<bool>(~(4294967295u | select(u_input.d.x, u_input.d.x, true)) != ((1u ^ (6330u >> (u_input.d.x % 32u))) & ~4294967295u), _wgslsmith_f_op_f32(-arg_1.a.x) >= var_1.a.x, func_2(var_0, true).x | true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1787f - -564f))) * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-642f + -1000f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * arg_0.a.x)));
    var var_3 = var_0.b.xy;
    return StorageBuffer(~select(~u_input.d.zz, vec2<u32>(17210u, u_input.d.x), func_3(Struct_1(arg_0.a, vec4<i32>(-1720i, -23662i, u_input.a.x, -2147483647i)))) | _wgslsmith_mod_vec2_u32(u_input.d.zy, ~u_input.d.xz), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(866f, _wgslsmith_f_op_f32(var_0.a.x * 3277f))), var_1.a.x) - var_0.a.x), -14876i, 11035u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 3>();
    global0 = -997f;
    global1 = array<i32, 3>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1032f, 1000f, -618f, 235f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-680f + 666f)), -1000f, -502f, 1f)), vec4<i32>(global1[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(26757u, 1u, u_input.d.x)), 3u)], -32070i, countOneBits(1i), _wgslsmith_mod_i32(u_input.a.x, -2147483647i)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(768f, -314f, -433f, -290f), vec4<f32>(var_0.a.x, 1971f, -144f, var_0.a.x))) * _wgslsmith_f_op_vec4_f32(-var_0.a)), all(vec3<bool>(true, any(vec3<bool>(true, false, true)), true)))), ~var_0.b);
    var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -268f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(329f, 387f))))), _wgslsmith_f_op_f32(-2359f - -1168f), -1098f), vec4<i32>(-10106i, ~1i, global1[_wgslsmith_index_u32(u_input.d.x << (_wgslsmith_mult_u32(u_input.d.x, 69862u) % 32u), 3u)], -27939i));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(760f)));
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1178f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -614f)));
    let x = u_input.a;
    s_output = func_4(var_0, Struct_1(var_1.a, vec4<i32>(32392i, var_0.b.x, _wgslsmith_dot_vec3_i32(countOneBits(u_input.b.zxy), countOneBits(u_input.b.xxz)), ~func_1(var_0, Struct_1(var_0.a, u_input.b)))));
}

