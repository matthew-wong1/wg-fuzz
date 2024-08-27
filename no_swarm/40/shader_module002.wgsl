struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> i32 {
    var var_0 = Struct_1(!(any(vec4<bool>(true, true, true, true)) || (select(true, false, true) != true)), vec4<bool>(true, true, ~countOneBits(0i) > _wgslsmith_add_i32(-2147483647i, -global0.x), true));
    var_0 = Struct_1(false, !var_0.b);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-957f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))) * 1822f);
    let var_2 = _wgslsmith_f_op_f32(trunc(1217f));
    let var_3 = 46025u;
    return u_input.a.x;
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(any(arg_0.b) & arg_0.a, vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, arg_0.a), false)) | !arg_0.a, true, false, !(!arg_0.a)));
    var_0 = arg_0;
    var_0 = Struct_1(all(vec3<bool>(!var_0.a, any(!arg_0.b), any(select(vec3<bool>(true, true, true), var_0.b.xyx, arg_0.b.wwx)))), arg_0.b);
    global1 = ~(1u | _wgslsmith_clamp_u32(firstTrailingBit(11602u) << (~4294967295u % 32u), reverseBits(~69794u), 36352u));
    var_0 = arg_0;
    return u_input.a;
}

fn func_2(arg_0: vec3<i32>) -> vec2<bool> {
    var var_0 = arg_0.xy;
    let var_1 = i32(-1i) * -1i;
    var var_2 = 1u;
    global0 = firstTrailingBit(~func_3(Struct_1(true, vec4<bool>(true, true, true, true))));
    var var_3 = true;
    return select(vec2<bool>(any(vec2<bool>(true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))) & (_wgslsmith_f_op_f32(f32(-1f) * -1575f) != _wgslsmith_f_op_f32(step(-213f, -546f)))), !(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(true, true, true, true))), vec2<bool>(true, !(u_input.a.x <= var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(func_1() == global0.x, false));
    var_0 = select(select(!func_2(-global0.wxy), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(var_0.x, false), var_0.x), select(vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false))), vec2<bool>(all(!vec2<bool>(var_0.x, var_0.x)), any(vec4<bool>(true, true, true, var_0.x)))), vec2<bool>(!var_0.x, global0.x != (u_input.a.x & u_input.a.x)), true);
    let var_1 = Struct_1(false, vec4<bool>(var_0.x, var_0.x, all(vec3<bool>(!var_0.x, var_0.x, u_input.a.x > global0.x)), all(select(func_2(u_input.a.wwz), vec2<bool>(false, false), var_0.x))));
    let var_2 = 209f;
    let var_3 = countOneBits(countOneBits(~select(max(vec3<u32>(33372u, 4294967295u, 1u), vec3<u32>(65408u, 65692u, 15015u)), abs(vec3<u32>(7489u, 25176u, 37567u)), var_1.b.yww)));
    let var_4 = var_3.x > _wgslsmith_clamp_u32(0u, var_3.x, 90343u);
    global1 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, 1u, 30531u, 1u), vec4<u32>(var_3.x, 4294967295u, var_3.x, var_3.x)), ~vec4<u32>(41180u, var_3.x, var_3.x, var_3.x)), vec4<u32>(var_3.x << (var_3.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, var_3.x), vec2<u32>(var_3.x, var_3.x)), ~var_3.x, ~var_3.x)), vec4<u32>(var_3.x, ~(~58211u), firstTrailingBit(select(var_3.x, 3218u, false)), firstTrailingBit(var_3.x))) << (var_3.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(1799f)), _wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(max(-275f, -1332f)))), vec3<f32>(var_2, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(114f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2)) + _wgslsmith_f_op_f32(var_2 * var_2))), var_1.b.zyy)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2), var_2)));
}

