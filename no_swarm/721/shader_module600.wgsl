struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = select(firstLeadingBit(reverseBits(u_input.b.x)), _wgslsmith_dot_vec4_u32(abs(u_input.b) >> (~select(u_input.b, vec4<u32>(arg_0.x, 4294967295u, u_input.a.x, arg_0.x), vec4<bool>(false, true, false, false)) % vec4<u32>(32u)), u_input.b), 72995u >= (~4294967295u ^ u_input.a.x));
    var var_1 = false;
    let var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), abs(~(vec3<i32>(1i, -1i, 27364i) << (vec3<u32>(0u, u_input.b.x, 4294967295u) % vec3<u32>(32u))))), select(i32(-1i) * -32981i, countOneBits(1i), any(vec3<bool>(true, select(true, true, true), true))), -18428i, -2147483647i);
    let var_3 = _wgslsmith_sub_i32(~var_2.x, (~(-38486i) | var_2.x) << (~arg_0.x % 32u)) ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(var_2, var_2), ~(-1i));
    return _wgslsmith_f_op_f32(max(-172f, 1f));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = u_input.b.x;
    let var_1 = arg_1;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_1.a + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-213f - arg_2.a.x), _wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.b.x, 0u))), arg_2.a.x, -736f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_1.a)) - _wgslsmith_f_op_vec4_f32(step(arg_1.a, arg_2.a))))));
    let var_3 = Struct_1(var_1.a);
    var var_4 = ~1u;
    return !(!(!vec4<bool>(any(vec2<bool>(true, true)), true, all(vec4<bool>(true, true, true, false)), all(vec3<bool>(true, true, false)))));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec4<u32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, arg_3.x, -25665i), arg_3.wyx), ~reverseBits(reverseBits(-2147483647i)), countOneBits(arg_3.x)), -(select(arg_3.www, vec3<i32>(2147483647i, arg_3.x, arg_3.x), vec3<bool>(false, arg_1, true)) & vec3<i32>(arg_3.x, 0i, arg_3.x)) ^ max(vec3<i32>(select(arg_3.x, arg_3.x, arg_1), 1i, ~2147483647i), abs(arg_3.zzy) ^ -vec3<i32>(0i, arg_3.x, -2147483647i)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 597f, arg_0, 657f), vec4<f32>(377f, arg_0, arg_0, -2588f), vec4<bool>(false, arg_1, arg_1, true)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_0, arg_0, -860f), vec4<f32>(-1297f, arg_0, arg_0, arg_0))))))));
    var_0 = i32(-1i) * -1i;
    var var_2 = arg_2.x << (4294967295u % 32u);
    var_2 = ~7496u;
    return Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x - arg_0), var_1.a.x, -2435f), var_1.a));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<bool>, arg_3: vec4<f32>) -> vec4<f32> {
    var var_0 = _wgslsmith_sub_vec3_i32(arg_0.xww, vec3<i32>(-1i, _wgslsmith_mod_i32(arg_0.x, -arg_0.x), abs(1i))) ^ -_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, 19259i, -1i), _wgslsmith_mult_vec3_i32(vec3<i32>(-2333i, -36112i, 2147483647i), arg_0.xyy), arg_0.yzw), vec3<i32>(42906i, arg_0.x, arg_0.x) | _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, 51828i, arg_0.x), vec3<i32>(arg_0.x, 0i, -2147483647i)));
    var_0 = vec3<i32>(1i, -8264i, -2147483647i);
    var var_1 = func_4(_wgslsmith_f_op_f32(440f - _wgslsmith_f_op_f32(-1389f + _wgslsmith_f_op_f32(1428f - _wgslsmith_f_op_f32(arg_3.x + arg_3.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * arg_3.x))) < _wgslsmith_f_op_f32(-arg_3.x), ~max(~(~u_input.b), vec4<u32>(u_input.a.x, arg_1, ~0u, ~arg_1)), select(arg_0, vec4<i32>(select(~1i, -2347i, !arg_2.x), var_0.x, max(30065i, 81464i), -select(arg_0.x, 39639i, false)), any(func_2(_wgslsmith_sub_i32(0i, var_0.x), Struct_1(arg_3), Struct_1(vec4<f32>(-1847f, arg_3.x, arg_3.x, arg_3.x))))));
    let var_2 = -16958i;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) - vec4<f32>(620f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(func_3(vec2<u32>(0u, arg_1)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_3.x)), -1089f))), _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.x + arg_3.x)))), -999f));
    return vec4<f32>(func_4(func_4(1061f, !(!arg_2.x), ~abs(vec4<u32>(44820u, arg_1, arg_1, 95798u)), ~countOneBits(vec4<i32>(var_0.x, var_2, var_0.x, -12148i))).a.x, false, vec4<u32>(_wgslsmith_sub_u32(arg_1, ~arg_1), ~1135u, _wgslsmith_mult_u32(u_input.b.x | u_input.b.x, u_input.a.x), ~countOneBits(4294967295u)), arg_0).a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -398f)) - _wgslsmith_f_op_f32(-var_3.x)) * -2782f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-524f * _wgslsmith_f_op_f32(-var_1.a.x)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a.x * -1074f), _wgslsmith_f_op_f32(-arg_0.x), select(true, true, true)))), -661f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_1.a.wx)))))), select(vec2<bool>(true, false), vec2<bool>(true, arg_1.a.x > _wgslsmith_div_f32(arg_0.x, -444f)), vec2<bool>(true, true))));
    let var_1 = -_wgslsmith_div_vec3_i32(vec3<i32>(-8337i, 1i, min(-1i, ~2147483647i)), _wgslsmith_mult_vec3_i32(select(vec3<i32>(9197i, 1i, 30094i) << (vec3<u32>(1u, u_input.a.x, 6549u) % vec3<u32>(32u)), abs(vec3<i32>(-3125i, -1i, 2147483647i)), select(true, false, false)), vec3<i32>(max(-23083i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -37560i, 0i), vec3<i32>(-2147483647i, -38801i, -4254i)), _wgslsmith_mult_i32(1i, -1i))));
    var_0 = vec2<f32>(405f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))), arg_2.a.x))));
    let var_2 = u_input.a.x << (41971u % 32u);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x)))), var_0.x);
    return Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(arg_1.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, arg_0.x, 695f, arg_1.a.x), arg_1.a, vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.x, arg_0.x, var_0.x) + arg_0), vec4<bool>(true, true, true, true))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-447f, -1494f, 857f, 1000f), vec4<f32>(928f, -693f, -281f, 1709f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec4<i32>(11574i, 2147483647i, -1i, -1i), 26882u, vec4<bool>(true, false, false, true), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 806f, 388f, 1000f), vec4<f32>(929f, 516f, 787f, 260f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2046f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-269f * -1000f), _wgslsmith_div_f32(-1259f, -320f)))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(484f, -264f, -904f, 1f) + vec4<f32>(-1066f, _wgslsmith_div_f32(-155f, 644f), -249f, -273f))));
    var var_1 = Struct_1(var_0.a);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a));
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec4_f32(func_1(~vec4<i32>(-2147483647i, 31818i, 1i, 0i), 1u, vec4<bool>(false, true, true, true), var_2.a)).x)), -493f)));
    let var_4 = countOneBits(-(i32(-1i) * -36828i));
    let var_5 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(645f, _wgslsmith_div_f32(var_0.a.x, var_0.a.x), 1245f, _wgslsmith_div_f32(var_1.a.x, var_2.a.x))), var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_4), u_input.a.x >> (4294967295u % 32u), var_5.a.x);
}

