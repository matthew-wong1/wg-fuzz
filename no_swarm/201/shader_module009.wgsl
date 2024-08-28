struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec4<u32> {
    global0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(85547u, arg_1.a), ~firstLeadingBit(u_input.c), arg_1.a), vec3<u32>(arg_1.a, abs(_wgslsmith_sub_u32(17908u, 15114u)), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(arg_2.a, 20003u))));
    let var_0 = Struct_1(~(~5164u) | _wgslsmith_mult_u32(min(firstLeadingBit(u_input.a), ~4966u), ~_wgslsmith_div_u32(64242u, arg_1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b)), arg_1.c, arg_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2085f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.e)))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.e, arg_1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1172f + arg_2.b.x)), true)))));
    let var_2 = firstLeadingBit(arg_2.a | var_0.a);
    global0 = abs(~arg_2.a);
    return ~(~select(~(~vec4<u32>(9105u, arg_2.a, var_0.a, arg_0.a)), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a, u_input.b.x, 9709u, arg_2.a), vec4<u32>(4294967295u, 0u, var_0.a, var_0.a))), vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: bool, arg_3: vec4<u32>) -> u32 {
    let var_0 = Struct_1(~arg_3.x, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1080f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(236f, -301f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(413f * -1437f))))), min(vec4<i32>(-arg_1, ~min(-12781i, -7120i), -22914i, ~1i >> (1u % 32u)), min(vec4<i32>(arg_0.x, 19753i, arg_1, arg_0.x), vec4<i32>(-95i, -2147483647i, -34790i, -3561i)) << ((~vec4<u32>(1u, u_input.a, u_input.b.x, arg_3.x) >> (func_3(Struct_1(arg_3.x, vec3<f32>(-656f, -405f, -1060f), vec4<i32>(arg_1, 1i, -5992i, arg_0.x), vec2<i32>(arg_0.x, -56699i), 2098f), Struct_1(arg_3.x, vec3<f32>(677f, 502f, -3646f), vec4<i32>(-2147483647i, u_input.d, -7309i, -2147483647i), vec2<i32>(2147483647i, u_input.d), 759f), Struct_1(4294967295u, vec3<f32>(-864f, -1472f, 379f), vec4<i32>(arg_1, -7692i, -1i, 16333i), arg_0, -388f), 1i) % vec4<u32>(32u))) % vec4<u32>(32u))), arg_0, 411f);
    let var_1 = var_0;
    var var_2 = select(!any(select(select(vec3<bool>(true, false, arg_2), vec3<bool>(false, false, arg_2), arg_2), select(vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, false, false)), true)), true, true);
    return ~min(countOneBits(u_input.a), 60669u);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<bool>) -> u32 {
    global0 = _wgslsmith_add_u32(~1u >> (countOneBits(_wgslsmith_div_u32(arg_1, 40818u)) % 32u), func_2(~vec2<i32>(u_input.d, -2147483647i) | ~vec2<i32>(u_input.d, u_input.d), min(_wgslsmith_add_i32(u_input.d, u_input.d), ~(-2147483647i)), !arg_2.x, vec4<u32>(arg_1, u_input.b.x, ~49542u, 33509u))) ^ _wgslsmith_sub_u32(max(select(_wgslsmith_mult_u32(arg_1, 4294967295u), arg_1, false), _wgslsmith_dot_vec2_u32(arg_0 << (arg_0 % vec2<u32>(32u)), u_input.b)), abs(_wgslsmith_mod_u32(arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 71007u, arg_1, arg_1), vec4<u32>(u_input.c, 68112u, arg_1, arg_0.x)))));
    global0 = 17841u;
    var var_0 = vec2<f32>(1f, 1f);
    let var_1 = abs(32627i);
    let var_2 = _wgslsmith_sub_vec2_u32(select(reverseBits(arg_0) >> (vec2<u32>(1u, u_input.c) % vec2<u32>(32u)), ~u_input.b, arg_2.yz), ~arg_0 | vec2<u32>(reverseBits(arg_0.x), 0u >> (u_input.b.x % 32u))) << ((~vec2<u32>(select(50654u, 7607u, false), 31088u) & abs(abs(~vec2<u32>(52843u, 0u)))) % vec2<u32>(32u));
    return ~(~(~(~4294967295u))) | ~_wgslsmith_mod_u32(select(max(var_2.x, u_input.b.x), 1u, true), 3663u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_u32(1u, func_1(u_input.b, 1548u, !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false))));
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-486f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1303f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -181f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(720f + -1034f)), _wgslsmith_f_op_f32(step(-218f, -609f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-702f + -1000f), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f))) * vec4<f32>(-689f, -252f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2202f, 1139f)), _wgslsmith_f_op_f32(trunc(-1022f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(507f, 672f)))))));
    var var_1 = true;
    var_1 = all(!select(vec2<bool>(false, true), vec2<bool>(true, any(vec2<bool>(false, false))), true && any(vec3<bool>(false, true, true))));
    let var_2 = u_input.d;
    let var_3 = !any(!vec3<bool>(true, var_0.x == var_0.x, true));
    let var_4 = var_0.x;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1586f - _wgslsmith_f_op_f32(-var_0.x))))) >= _wgslsmith_f_op_f32(720f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(243f * var_0.x)))));
    global0 = _wgslsmith_add_u32(~0u, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 763f), vec2<f32>(var_0.x, var_0.x), select(vec2<bool>(false, var_3), vec2<bool>(var_3, var_3), vec2<bool>(var_3, true))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), -946f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - var_0.wz) * _wgslsmith_f_op_vec2_f32(select(var_0.yz, var_0.wx, var_3))))))));
}

