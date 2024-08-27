struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = ~(abs((vec3<u32>(global0.x, 10583u, 1u) >> (vec3<u32>(u_input.a, 24974u, u_input.b.x) % vec3<u32>(32u))) | ~vec3<u32>(global0.x, u_input.a, u_input.a)) << (~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 33038u, 1u), vec4<u32>(global0.x, 0u, u_input.a, 1u)), 4294967295u, 0u) % vec3<u32>(32u)));
    let var_1 = countOneBits(reverseBits(reverseBits(vec3<i32>(-67693i, _wgslsmith_add_i32(9409i, u_input.c.x), u_input.c.x))));
    global0 = vec3<u32>(4294967295u, firstLeadingBit(28623u) >> (global0.x % 32u), 46721u);
    var var_2 = -2147483647i;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1218f))), arg_0.x, vec4<u32>(firstLeadingBit(u_input.b.x), u_input.b.x >> (0u % 32u), select(1u, select(4294967295u, var_0.x, arg_0.x), arg_0.x) & ~(~92560u), 0u));
    return _wgslsmith_f_op_f32(abs(849f));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(arg_0.x, true)))))), all(vec4<bool>(false, false, all(arg_0.zxx), all(vec4<bool>(true, true, true, true)))), vec4<u32>(u_input.b.x, ~66210u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, global0.x), vec3<u32>(1u, 4294967295u, u_input.a))), 83584u));
    global0 = (~var_0.c.yxy | _wgslsmith_clamp_vec3_u32(countOneBits(var_0.c.zwy), ~(~vec3<u32>(1u, var_0.c.x, 4294967295u)), vec3<u32>(_wgslsmith_mod_u32(0u, 1u), _wgslsmith_sub_u32(6809u, global0.x), 1u))) << (max(vec3<u32>(u_input.b.x | 0u, ~var_0.c.x, 4191u), var_0.c.xzx) % vec3<u32>(32u));
    var var_1 = var_0;
    var var_2 = select(!select(!(!vec3<bool>(arg_0.x, var_1.b, false)), vec3<bool>(true, false, false), select(arg_0.ywx, arg_0.ywy, true)), select(vec3<bool>(any(arg_0.xy), any(select(arg_0.yzx, arg_0.yyz, vec3<bool>(true, var_0.b, false))), false | (var_1.a == -1503f)), select(!select(vec3<bool>(var_1.b, var_1.b, false), arg_0.zzy, vec3<bool>(var_1.b, false, true)), arg_0.zyy, !select(var_0.b, var_0.b, var_0.b)), arg_0.xzz), !vec3<bool>(any(!arg_0), true, any(select(vec2<bool>(true, var_1.b), arg_0.yx, false))));
    return -320f;
}

fn func_1() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -975f)) * _wgslsmith_f_op_f32(func_2(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-168f * -1172f)))))));
    var var_1 = ~(-1i);
    var var_2 = ~select(_wgslsmith_dot_vec3_u32(max(_wgslsmith_div_vec3_u32(vec3<u32>(50789u, 4294967295u, 29229u), vec3<u32>(global0.x, 64383u, 1u)), ~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), abs(vec3<u32>(2265u, 41417u, 75389u) >> (vec3<u32>(19671u, u_input.b.x, 14908u) % vec3<u32>(32u)))), 4294967295u, u_input.c.x > abs(9533i));
    let var_3 = firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(abs(max(0u, u_input.b.x)), 1725u), 24582u, ~(~11895u), ~(~abs(24756u))));
    var_2 = ~1u;
    return _wgslsmith_div_vec3_u32(vec3<u32>(16078u, reverseBits(~42075u), ~4294967295u), ~_wgslsmith_mod_vec3_u32(max(var_3.zwx, vec3<u32>(7962u, u_input.a, var_3.x)), ~var_3.wyw) << (var_3.zxz % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, all(vec4<bool>(false, false, false, true))), all(vec2<bool>(true, false))), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))));
    let var_1 = vec3<f32>(-944f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-846f)))), 1486f), -2226f);
    global0 = countOneBits(vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(26396u, u_input.a, u_input.a, 2915u), vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.a))), 16262u, ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))) + -1035f), abs(-2147483647i), 97067u);
}

