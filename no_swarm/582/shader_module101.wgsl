struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<bool>, 26>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = !select(select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, any(vec3<bool>(true, true, true))), vec2<bool>(true, true));
    var var_1 = _wgslsmith_clamp_vec2_u32(u_input.d.xw, min(abs(u_input.e), vec2<u32>(u_input.e.x, 444u)), u_input.e);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1321f, -1200f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2707f - -531f))), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(225f, 985f)) * _wgslsmith_f_op_f32(trunc(574f)))), 712f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -474f, 849f, -295f)), vec4<f32>(-704f, 1000f, 549f, 284f))), vec4<f32>(-786f, _wgslsmith_div_f32(389f, 658f), _wgslsmith_f_op_f32(max(2969f, 398f)), _wgslsmith_f_op_f32(floor(683f))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1270f, -1119f, 778f, -1439f)))))));
    var_1 = vec2<u32>(var_1.x, abs(var_1.x));
    var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), !(!vec2<bool>(var_0.x, var_0.x))));
    return all(!select(!vec3<bool>(true, var_0.x, false), vec3<bool>(all(vec3<bool>(var_0.x, true, true)), any(vec3<bool>(false, true, var_0.x)), any(vec2<bool>(var_0.x, var_0.x))), all(vec2<bool>(var_0.x, var_0.x))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec4<bool>) -> u32 {
    var var_0 = Struct_2(!(!vec4<bool>(true, true, true, all(arg_2.zxx))));
    global0 = all(select(!(!select(vec3<bool>(true, var_0.a.x, true), vec3<bool>(true, arg_2.x, arg_2.x), arg_2.x)), arg_2.xxx, any(!vec4<bool>(false, arg_2.x, true, false)) && (var_0.a.x && false)));
    global1 = array<vec4<bool>, 26>();
    var_0 = Struct_2(vec4<bool>(arg_2.x, _wgslsmith_f_op_f32(floor(-1000f)) <= -367f, any(vec4<bool>(u_input.b.x >= u_input.b.x, func_3(), true, all(vec4<bool>(var_0.a.x, false, arg_2.x, arg_2.x)))), !arg_2.x));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-439f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-509f)) + -584f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-422f, -320f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(987f + -859f))))), arg_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1055f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1179f), 122f), _wgslsmith_f_op_f32(f32(-1f) * -1996f)) * vec3<f32>(633f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -172f)), _wgslsmith_f_op_f32(f32(-1f) * -417f))), reverseBits(_wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, u_input.b.x), ~1i)), vec4<bool>(true, any(select(vec2<bool>(true, var_0.a.x), vec2<bool>(var_0.a.x, false), var_0.a.zy)), 1u >= min(~arg_1.x, 0u), var_0.a.x));
    return _wgslsmith_dot_vec3_u32(~(~u_input.d.yyw), ~u_input.d.zxz ^ firstLeadingBit(abs(u_input.d.yww)));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    global1 = array<vec4<bool>, 26>();
    global0 = false;
    let var_0 = 0u;
    var var_1 = vec2<bool>(0u < ~_wgslsmith_mult_u32(u_input.e.x, abs(u_input.e.x)), arg_1.x);
    let var_2 = select(select(select(vec3<bool>(arg_1.x, arg_2.c.x == arg_2.c.x, !arg_2.e.x), vec3<bool>(true, false, select(arg_1.x, arg_0, var_1.x)), select(arg_2.e.ywz, arg_1.xzx, any(vec4<bool>(arg_2.e.x, var_1.x, false, true)))), select(select(arg_2.e.zzz, !arg_1.yxw, !vec3<bool>(false, true, arg_2.e.x)), vec3<bool>(true, true, true), select(arg_1.yxy, vec3<bool>(true, arg_2.e.x, arg_1.x), arg_2.e.zwy)), !arg_2.e.zzz), vec3<bool>(any(arg_2.e.xx), !(_wgslsmith_div_f32(arg_2.c.x, 169f) >= _wgslsmith_f_op_f32(arg_2.c.x - 946f)), ~_wgslsmith_mult_i32(arg_2.b, -1i) >= u_input.a), all(!vec2<bool>(arg_2.e.x && true, !arg_2.e.x)));
    return arg_2;
}

fn func_1() -> f32 {
    let var_0 = vec3<bool>(true, false, all(select(vec3<bool>(true, true, true), vec3<bool>(u_input.b.x < u_input.b.x, any(vec3<bool>(true, false, false)), true), abs(36281u) <= ~u_input.c.x)));
    var var_1 = func_4(var_0.x, vec4<bool>(!(!var_0.x), !(func_2(vec3<i32>(u_input.b.x, u_input.b.x, -25829i), u_input.d.zwy, global1[_wgslsmith_index_u32(u_input.d.x, 26u)]) != u_input.d.x), all(global1[_wgslsmith_index_u32(~4294967295u, 26u)]), all(var_0.xx) != all(select(vec4<bool>(false, var_0.x, true, var_0.x), global1[_wgslsmith_index_u32(u_input.d.x, 26u)], vec4<bool>(var_0.x, false, false, var_0.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-541f, 493f, 241f, -1267f) + vec4<f32>(530f, -1624f, -1000f, -712f)))), abs(u_input.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2818f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -999f)) * vec3<f32>(_wgslsmith_f_op_f32(abs(2321f)), -163f, 858f)), u_input.b.x >> (u_input.c.x % 32u), !vec4<bool>(any(vec4<bool>(var_0.x, false, false, var_0.x)), !var_0.x, any(var_0.yx), var_0.x)), _wgslsmith_mod_vec4_u32(u_input.d, u_input.d));
    return _wgslsmith_f_op_f32(sign(var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_sub_u32(584u, u_input.c.x)) >= 0u;
    global0 = true;
    global1 = array<vec4<bool>, 26>();
    let var_0 = Struct_1(vec4<f32>(1f, 1f, 1f, 1f), u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(func_1()), -1820f, -382f), vec3<f32>(-677f, -643f, _wgslsmith_f_op_f32(step(-484f, 925f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-720f)), _wgslsmith_f_op_f32(f32(-1f) * -467f), -1002f))), u_input.b.x, vec4<bool>((false | all(vec2<bool>(true, false))) | true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(127f - 128f))) < 1000f, !any(global1[_wgslsmith_index_u32(max(4294967295u, u_input.c.x), 26u)]), true));
    global0 = all(var_0.e);
    global1 = array<vec4<bool>, 26>();
    let var_1 = ~(~_wgslsmith_dot_vec2_u32(~(~u_input.e), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c.x, u_input.d.x), u_input.c.xz)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_0.e.x, vec4<bool>(var_0.e.x, select(var_0.e.x, var_0.e.x, true) && !var_0.e.x, var_0.e.x, var_0.e.x), var_0, ~max(~vec4<u32>(53607u, 0u, u_input.e.x, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 30259u, u_input.c.x, 0u), vec4<u32>(20316u, var_1, u_input.c.x, 106009u)))).a.x, _wgslsmith_div_vec2_u32(u_input.c.zw, ~vec2<u32>(reverseBits(var_1), u_input.c.x)));
}

