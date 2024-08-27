struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> u32 {
    var var_0 = select(!(!select(select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), false), !vec4<bool>(true, true, arg_0.a, arg_0.a), !vec4<bool>(false, true, arg_0.a, arg_0.a))), vec4<bool>(arg_0.a, (_wgslsmith_dot_vec3_i32(arg_2.wyx, vec3<i32>(arg_1, u_input.b, arg_2.x)) & arg_2.x) < firstLeadingBit(arg_1), false, !all(!vec4<bool>(true, true, arg_0.a, false))), arg_0.a & arg_0.a);
    var_0 = vec4<bool>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(trunc(-2175f))) != _wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(791f, -421f)), 273f)), any(vec4<bool>(!any(var_0.zxx), all(var_0.xxw), false, true)), max(_wgslsmith_div_u32(~u_input.a, firstTrailingBit(u_input.a)), u_input.a) < abs(~_wgslsmith_mult_u32(u_input.a, 1u)), select(any(select(var_0.zwy, select(vec3<bool>(true, true, arg_0.a), vec3<bool>(true, var_0.x, true), false), var_0.x)), false, false));
    var_0 = vec4<bool>(true || (any(select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, true))) == true), select(u_input.a != u_input.a, true, ~u_input.a <= 85051u) | var_0.x, !all(select(!vec4<bool>(false, arg_0.a, var_0.x, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), !vec4<bool>(var_0.x, true, true, true))), all(vec3<bool>(arg_0.a, all(var_0.zz), !(var_0.x || false))));
    var_0 = !(!select(!select(vec4<bool>(true, true, var_0.x, arg_0.a), vec4<bool>(var_0.x, arg_0.a, var_0.x, arg_0.a), arg_0.a), vec4<bool>(arg_0.a || false, !var_0.x, false, !arg_0.a), select(vec4<bool>(var_0.x, false, var_0.x, arg_0.a), vec4<bool>(var_0.x, true, true, true), var_0.x)));
    let var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.b, -arg_2.x, _wgslsmith_div_i32(-1i, arg_1 & u_input.b)), vec3<i32>(u_input.c.x, u_input.c.x >> (12849u % 32u), -2147483647i) ^ (vec3<i32>(-1i) * -arg_2.xwy), vec3<i32>(~reverseBits(u_input.b), -1i, arg_1 << (21771u % 32u))) ^ arg_2.wyx;
    return 26796u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>) -> bool {
    let var_0 = countOneBits(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(61053u, 14332u) ^ vec2<u32>(21840u, u_input.a), vec2<u32>(1u, 1u)), _wgslsmith_clamp_u32(~4294967295u, u_input.a, u_input.a), select(~u_input.a, ~u_input.a, !arg_1.x)));
    let var_1 = Struct_1(false, -abs(arg_0.x | _wgslsmith_sub_i32(2147483647i, u_input.c.x)));
    let var_2 = vec3<bool>(func_3(var_1, _wgslsmith_sub_i32(arg_0.x, arg_0.x), vec4<i32>(-1i) * -vec4<i32>(arg_0.x, arg_0.x, -64421i, 10635i)) > ~(~_wgslsmith_div_u32(0u, 12036u)), arg_1.x, arg_1.x);
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1019f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(367f)) + -678f))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-618f, -1848f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1375f, 426f)))), true));
    var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-236f, 322f))));
    return !(all(select(vec4<bool>(true, arg_1.x, false, var_1.a), !vec4<bool>(var_1.a, arg_1.x, true, true), vec4<bool>(false, var_1.a, true, var_2.x))) | (!var_1.a & (~9715u != min(u_input.a, 1649u))));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = Struct_1(!(func_2(u_input.c >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))) == select(true, true, 1u == u_input.a)), select(max(abs(max(-48605i, u_input.c.x)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.c, u_input.c), -45346i, -arg_0)), u_input.c.x, any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, true)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1455f - 1383f) + _wgslsmith_f_op_f32(select(1522f, 646f, false))))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(127f, 782f))))));
    let var_2 = select(select(select(select(!vec4<bool>(false, true, false, var_0.a), !vec4<bool>(false, false, var_0.a, var_0.a), vec4<bool>(true, var_0.a, var_0.a, true)), !(!vec4<bool>(var_0.a, false, var_0.a, var_0.a)), !any(vec2<bool>(true, false))), vec4<bool>(var_0.a, !var_0.a, any(vec4<bool>(true, var_0.a, true, true)), all(vec4<bool>(var_0.a, var_0.a, true, false))), select(!select(vec4<bool>(true, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, true, false), vec4<bool>(false, var_0.a, true, true)), !(!vec4<bool>(true, true, false, var_0.a)), true)), select(select(!select(vec4<bool>(var_0.a, false, var_0.a, var_0.a), vec4<bool>(true, false, var_0.a, false), var_0.a), select(select(vec4<bool>(var_0.a, var_0.a, false, var_0.a), vec4<bool>(var_0.a, var_0.a, false, var_0.a), false), vec4<bool>(var_0.a, var_0.a, var_0.a, false), select(vec4<bool>(false, false, var_0.a, false), vec4<bool>(true, false, var_0.a, var_0.a), false)), !vec4<bool>(true, true, var_0.a, var_0.a)), vec4<bool>(true, all(select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(false, var_0.a, false), vec3<bool>(false, var_0.a, var_0.a))), func_2(~vec2<i32>(8866i, u_input.c.x), vec2<bool>(false, var_0.a)), var_0.a), func_2(-max(vec2<i32>(var_0.b, var_0.b), vec2<i32>(var_0.b, 0i)), select(vec2<bool>(true, true), vec2<bool>(var_0.a, false), !var_0.a))), !(!select(true, var_0.a, u_input.a < 0u)));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1715f, 1219f))) > var_1.x, ~(-u_input.c.x & u_input.b) << (_wgslsmith_add_u32(select(1u, 14185u, true), ~u_input.a & 53649u) % 32u));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, ~(select(u_input.b, u_input.c.x, true) ^ u_input.b));
    var var_1 = ~(~_wgslsmith_clamp_u32(u_input.a, 1u, 4186u));
    let var_2 = vec4<u32>(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(56170u, 1u, u_input.a)), vec3<u32>(1u, u_input.a, u_input.a)), u_input.a, u_input.a, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a)) << (~u_input.a % 32u))) & _wgslsmith_div_vec4_u32(abs(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, 1468u, 29212u), vec4<u32>(u_input.a, u_input.a, 1u, 29357u)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), ~(vec4<u32>(u_input.a, 68439u, 1u, u_input.a) << (vec4<u32>(4294967295u, u_input.a, 4294967295u, 38571u) % vec4<u32>(32u))) << (~vec4<u32>(104094u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)));
    var_0 = Struct_1(!any(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, false), var_0.a)) == true, u_input.b);
    var var_3 = _wgslsmith_clamp_u32(4460u, ~_wgslsmith_dot_vec3_u32(var_2.wzx, abs(var_2.yxy)), var_2.x);
    let var_4 = select(reverseBits(reverseBits(vec3<i32>(39720i, var_0.b, -37448i) & vec3<i32>(1i, -1i, 1i))), -_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.b, -2147483647i, -1i), vec3<i32>(var_0.b, u_input.c.x, 4862i)), vec3<i32>(-1i, u_input.c.x, -31551i), vec3<i32>(30576i, -13621i, u_input.c.x) & vec3<i32>(-30542i, -15039i, -58130i)), select(!(!vec3<bool>(false, var_0.a, true)), !vec3<bool>(true, var_0.a, false), select(!vec3<bool>(var_0.a, var_0.a, false), !vec3<bool>(true, true, var_0.a), !vec3<bool>(var_0.a, true, true)))) >> (~vec3<u32>(firstLeadingBit(~4294967295u), 57497u, firstLeadingBit(~var_2.x)) % vec3<u32>(32u));
    var_0 = Struct_1(all(vec2<bool>(var_0.a & func_1(-1i), select(false, all(vec2<bool>(false, true)), any(vec3<bool>(var_0.a, false, true))))), reverseBits(0i));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.zy);
}

