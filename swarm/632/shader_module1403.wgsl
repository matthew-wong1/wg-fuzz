struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, 1000f, vec4<u32>(0u, 2216u, 1u, 55099u), Struct_1(vec2<u32>(0u, 1u), 24998u), Struct_1(vec2<u32>(0u, 43584u), 19422u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_sub_u32(~(~_wgslsmith_add_u32(u_input.b, 15426u)), 1u), abs(_wgslsmith_clamp_u32(4294967295u, global0.e.a.x, reverseBits(4294967295u))));
    global0 = Struct_2(!(!(!global0.a)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(floor(-913f)))), global0.b), global0.b)), _wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, global0.e.b, arg_0, 4322u) & vec4<u32>(global0.d.b, 3595u, global0.d.a.x, 12429u)), ~select(global0.c, vec4<u32>(0u, 0u, global0.d.a.x, arg_0), !vec4<bool>(global0.a, global0.a, false, global0.a))), global0.e, global0.e);
    let var_1 = select(select(select(vec3<bool>(global0.a, any(vec3<bool>(global0.a, true, true)), true), select(vec3<bool>(true, global0.a, true), select(vec3<bool>(global0.a, false, global0.a), vec3<bool>(global0.a, global0.a, global0.a), false), false), u_input.a.x >= u_input.a.x), vec3<bool>(true, all(select(vec4<bool>(global0.a, global0.a, true, false), vec4<bool>(global0.a, false, false, true), global0.a)), any(select(vec2<bool>(global0.a, false), vec2<bool>(global0.a, false), vec2<bool>(false, false)))), !(~1i < u_input.a.x)), select(!vec3<bool>(global0.a, all(vec2<bool>(global0.a, false)), any(vec4<bool>(global0.a, false, global0.a, global0.a))), vec3<bool>(true, true, false), any(vec3<bool>(true, true, true))), any(!select(!vec2<bool>(false, global0.a), select(vec2<bool>(true, global0.a), vec2<bool>(global0.a, true), false), vec2<bool>(global0.a, global0.a))));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, 221f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2586f), _wgslsmith_f_op_f32(max(-708f, global0.b))) + _wgslsmith_div_vec2_f32(vec2<f32>(655f, 1188f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, global0.b), vec2<f32>(global0.b, global0.b)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-139f, global0.b)), vec2<f32>(global0.b, global0.b))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.b)), -446f)), select(var_1.yy, !var_1.yz, var_1.x)));
    let var_3 = ~vec2<u32>(13776u, firstTrailingBit(~u_input.b));
    return _wgslsmith_dot_vec3_u32(reverseBits(global0.c.xxy), global0.c.zxz);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = Struct_1(~(vec2<u32>(_wgslsmith_add_u32(arg_1.a.x, u_input.b), u_input.b) & vec2<u32>(~global0.e.b, firstLeadingBit(arg_1.b))), global0.e.b);
    let var_1 = global0.b;
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, arg_0.b, 4833u), global0.c.wzy)), global0.c.yyw), max(arg_1.a.x, ~func_3(arg_1.b))), firstLeadingBit(~select(~arg_1.a.x, ~30376u, true)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1096f, 742f, arg_2)))), 312f) + global0.b), global0.b, 1564f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1362f, _wgslsmith_f_op_f32(floor(global0.b)))));
    var var_4 = select(!select(!vec3<bool>(global0.a, true, arg_2), vec3<bool>(arg_2, !global0.a, arg_2), select(select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(global0.a, arg_2, true), vec3<bool>(arg_2, true, true)), vec3<bool>(false, true, true), !global0.a)), select(select(select(vec3<bool>(global0.a, arg_2, arg_2), select(vec3<bool>(false, arg_2, false), vec3<bool>(arg_2, false, global0.a), true), true), select(select(vec3<bool>(false, global0.a, true), vec3<bool>(true, arg_2, false), true), select(vec3<bool>(global0.a, arg_2, false), vec3<bool>(global0.a, false, false), arg_2), true), !select(vec3<bool>(arg_2, global0.a, false), vec3<bool>(arg_2, global0.a, arg_2), vec3<bool>(true, false, arg_2))), vec3<bool>(all(vec4<bool>(true, arg_2, arg_2, true)) == any(vec3<bool>(true, global0.a, false)), true, true | arg_2), ~7125u > var_0.a.x), !(!vec3<bool>(global0.a, arg_2, any(vec3<bool>(true, global0.a, false)))));
    return false | !any(select(select(vec3<bool>(true, global0.a, arg_2), vec3<bool>(var_4.x, global0.a, var_4.x), vec3<bool>(true, false, global0.a)), select(vec3<bool>(true, true, global0.a), vec3<bool>(arg_2, true, global0.a), global0.a), true));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> Struct_1 {
    return global0.d;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global0 = Struct_2(false, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b))), global0.c, arg_3, func_4(-427f, select(select(!vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), select(arg_1, arg_1, arg_1), vec4<bool>(false, true, false, arg_2)), vec4<bool>(18038u < u_input.b, arg_1.x, global0.d.b < u_input.b, func_2(Struct_1(vec2<u32>(1u, 63626u), arg_3.a.x), Struct_1(arg_3.a, arg_3.b), false)), arg_1)));
    global0 = Struct_2(arg_1.x, -1054f, vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.a.x, arg_3.b, 41677u, 100672u), vec4<u32>(1u, 70379u, u_input.b, arg_0)), select(vec4<u32>(u_input.b, u_input.b, 1u, arg_3.b), global0.c, vec4<bool>(arg_1.x, global0.a, false, arg_2))), firstLeadingBit(u_input.b)), arg_0, 34072u, max(arg_3.b, ~arg_0)), global0.d, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1059f - -1881f)), vec4<bool>(func_2(Struct_1(global0.c.xz, u_input.b), func_4(-163f, vec4<bool>(true, false, arg_2, global0.a)), arg_1.x), arg_1.x, (global0.a & true) || true, false)));
    var var_0 = Struct_3(Struct_2(func_2(func_4(1470f, !arg_1), func_4(_wgslsmith_f_op_f32(-global0.b), select(arg_1, vec4<bool>(arg_1.x, true, global0.a, arg_1.x), true)), !all(arg_1.yw)), global0.b, global0.c, global0.e, func_4(global0.b, arg_1)), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1041f, _wgslsmith_f_op_f32(step(global0.b, global0.b)), _wgslsmith_f_op_f32(391f * global0.b), _wgslsmith_div_f32(622f, global0.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, 3044f, -1383f, 895f)))), vec4<f32>(-2230f, 2259f, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), any(vec2<bool>(39356u == u_input.b, 0i == u_input.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1952f)) - _wgslsmith_f_op_f32(global0.b - 465f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b - global0.b))), 239f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1503f, global0.b)))), select(global0.a, all(vec3<bool>(arg_2, arg_1.x, !global0.a)), true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1631f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.b))) - -655f)));
    var_0 = Struct_3(Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(910f, global0.b), -420f) - global0.b), var_0.a.c, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -104f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !arg_1), arg_3), 2083f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1363f, -1123f, -555f, global0.b) + var_0.c)) - _wgslsmith_f_op_vec4_f32(-var_0.d)) - _wgslsmith_f_op_vec4_f32(var_0.d + vec4<f32>(-1148f, _wgslsmith_f_op_f32(f32(-1f) * -1122f), _wgslsmith_f_op_f32(f32(-1f) * -1045f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec4<f32>(global0.b, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, global0.b))), -1000f), var_0.e);
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.d.b, 0u), ~vec2<u32>(28993u ^ global0.c.x, func_4(global0.b, vec4<bool>(global0.a, global0.a, false, global0.a)).b)), func_1(abs(~_wgslsmith_mult_u32(67531u, global0.d.a.x)), select(vec4<bool>(!global0.a, !global0.a, global0.a, false), select(select(vec4<bool>(false, global0.a, global0.a, true), vec4<bool>(false, false, true, false), vec4<bool>(global0.a, false, global0.a, true)), select(vec4<bool>(false, global0.a, global0.a, global0.a), vec4<bool>(global0.a, true, global0.a, global0.a), vec4<bool>(false, global0.a, global0.a, global0.a)), all(vec2<bool>(global0.a, false))), select(vec4<bool>(false, global0.a, true, global0.a), vec4<bool>(true, true, false, false), vec4<bool>(global0.a, global0.a, global0.a, global0.a))), global0.a, func_4(_wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(-739f + global0.b))), select(select(vec4<bool>(true, true, false, global0.a), vec4<bool>(true, global0.a, true, true), vec4<bool>(global0.a, true, global0.a, false)), vec4<bool>(global0.a, true, false, global0.a), vec4<bool>(global0.a, global0.a, true, true)))).a);
    global0 = Struct_2(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(floor(global0.b)), any(vec4<bool>(false, false, global0.a, false))))))), global0.c, Struct_1(arg_0.a, global0.c.x), global0.e);
    global0 = Struct_2(!any(select(vec3<bool>(false, true, false), vec3<bool>(true, global0.a, global0.a), false)) & all(!vec2<bool>(global0.a, false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1232f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -558f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec4<u32>(1u, abs(var_0.x), _wgslsmith_sub_u32(_wgslsmith_div_u32(global0.e.b, 0u) ^ global0.d.a.x, u_input.b), var_0.x), Struct_1(_wgslsmith_mod_vec2_u32(arg_0.a, ~arg_2.xz), _wgslsmith_add_u32(_wgslsmith_div_u32(~4294967295u, 65936u), _wgslsmith_dot_vec2_u32(vec2<u32>(17610u, 35368u), arg_0.a))), Struct_1(arg_0.a, ~(~(~arg_2.x))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-327f - global0.b)))))));
    var var_2 = abs(u_input.a.x);
    return Struct_3(Struct_2(true || (global0.a & select(false, false, false)), _wgslsmith_f_op_f32(ceil(global0.b)), global0.c, Struct_1(reverseBits(min(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_0.a.x, global0.e.b))), var_0.x), global0.e), global0.b, vec4<f32>(global0.b, _wgslsmith_f_op_f32(global0.b - global0.b), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1904f - _wgslsmith_f_op_f32(global0.b - global0.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.b, 2329f, global0.b))))), global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~(-u_input.a.x));
    var var_1 = func_5(func_1(max(min(15009u, 1u), 1u), !select(vec4<bool>(global0.a, true, global0.a, global0.a), vec4<bool>(true, global0.a, global0.a, false), !vec4<bool>(global0.a, global0.a, global0.a, false)), false, Struct_1(global0.d.a, u_input.b)), ~(~global0.e.a), vec4<u32>(global0.c.x, 1u, _wgslsmith_mod_u32(~(~u_input.b), 1u), ~min(4294967295u, global0.c.x)));
    let var_2 = func_5(Struct_1(global0.c.xy, select(u_input.b, _wgslsmith_sub_u32(firstTrailingBit(u_input.b), _wgslsmith_div_u32(4294967295u, 1u)), func_2(func_5(Struct_1(global0.d.a, 0u), global0.d.a, var_1.a.c).a.d, func_1(u_input.b, vec4<bool>(global0.a, global0.a, false, global0.a), global0.a, global0.e), any(vec3<bool>(true, false, global0.a))))), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.e.a.x, 0u), vec2<u32>(~0u, 15471u)), ~vec2<u32>(global0.e.a.x >> (1u % 32u), ~global0.d.b)), vec4<u32>(min(~_wgslsmith_sub_u32(var_1.a.c.x, 43186u), _wgslsmith_add_u32(0u, u_input.b) >> (24324u % 32u)), global0.d.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~23240u, ~30563u, 1u, 0u), ~(~vec4<u32>(31212u, 64855u, 0u, 4294967295u))), 93282u));
    global0 = func_5(Struct_1(~func_1(var_2.a.d.a.x, vec4<bool>(var_1.e, var_2.e, false, global0.a), var_1.a.a, Struct_1(global0.c.yz, var_1.a.c.x)).a << (vec2<u32>(0u >> (var_1.a.c.x % 32u), var_1.a.e.a.x) % vec2<u32>(32u)), var_2.a.d.a.x << (min(1u, u_input.b) % 32u)), countOneBits(countOneBits(_wgslsmith_sub_vec2_u32(global0.c.wz, vec2<u32>(1u, 1u)))), vec4<u32>(25148u | min(~var_2.a.d.b, var_2.a.c.x), firstTrailingBit(u_input.b) >> (1u % 32u), global0.d.a.x, var_2.a.e.b)).a;
    var var_3 = var_1.a.e;
    global0 = var_2.a;
    var var_4 = func_5(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1173f), !vec4<bool>(0u == u_input.b, global0.a && global0.a, !var_2.e, !var_2.e)), ~firstLeadingBit(vec2<u32>(u_input.b, ~9916u)), var_2.a.c).a.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(417f * -970f)))), _wgslsmith_f_op_f32(global0.b - global0.b))), ~_wgslsmith_add_u32(var_2.a.e.b, func_5(Struct_1(var_1.a.c.xy, var_3.b), func_4(var_2.d.x, vec4<bool>(var_2.a.a, false, false, var_1.a.a)).a, vec4<u32>(u_input.b, 2690u, var_2.a.e.b, global0.d.a.x) | var_1.a.c).a.c.x), vec2<f32>(641f, var_2.a.b), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1281f, var_1.c.x))))));
}

