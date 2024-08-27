struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    var var_0 = global0.zww;
    global0 = vec4<bool>(true, false && any(arg_0.d), true, arg_0.a > (~select(arg_1.x, arg_0.a, arg_0.d.x) >> (~_wgslsmith_clamp_u32(12052u, 1u, 38102u) % 32u)));
    global0 = vec4<bool>(true, global0.x, !(!(!all(vec2<bool>(arg_0.d.x, global0.x)))), _wgslsmith_f_op_f32(-1f) < _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-487f, _wgslsmith_f_op_f32(-273f - -764f)))));
    global0 = vec4<bool>(all(global0.xwz), !global0.x, true, all(var_0.zy));
    return false;
}

fn func_3(arg_0: bool) -> vec4<bool> {
    let var_0 = !select(!(!select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(global0.x, false, true, arg_0), true)), vec4<bool>(global0.x != (u_input.a.x < u_input.a.x), true, false, false), select(!(!vec4<bool>(false, global0.x, global0.x, arg_0)), !select(vec4<bool>(true, arg_0, global0.x, true), vec4<bool>(global0.x, arg_0, false, true), vec4<bool>(global0.x, arg_0, arg_0, global0.x)), global0.x));
    global0 = vec4<bool>(!global0.x, arg_0, var_0.x == var_0.x, global0.x);
    global0 = vec4<bool>(!arg_0, true, true, all(global0.xyz));
    global0 = vec4<bool>(true, false, arg_0, 1i == u_input.a.x);
    let var_1 = true;
    return var_0;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> f32 {
    global0 = func_3(abs(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0, 591i), vec3<i32>(arg_1.b.x, u_input.a.x, u_input.a.x)))) != select(-1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.x, arg_1.b.x, -3145i, arg_1.b.x), arg_1.b), arg_2));
    var var_0 = ~(-vec2<i32>(arg_0, -30651i));
    global0 = vec4<bool>(true, true, true, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1207f, 941f, 1016f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1068f, 712f, -1960f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1537f, -900f, -872f) * vec3<f32>(943f, -106f, 559f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1657f, 898f, -163f) - vec3<f32>(-1000f, -145f, 414f)))), vec3<f32>(-382f, -1023f, 1334f))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(1285f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1514f, 493f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(614f, 955f)))))));
    var_0 = abs(~reverseBits(_wgslsmith_mult_vec2_i32(u_input.a, -arg_1.c)));
    return _wgslsmith_f_op_f32(abs(1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(true, !all(vec4<bool>(true, select(global0.x, global0.x, false), global0.x & false, true)), global0.x);
    global0 = vec4<bool>(var_0, true, true && (~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 1i, -1347i)) >= 12488i), global0.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-698f, 414f, 373f, 453f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1144f, 1072f, -2249f, -296f), vec4<f32>(-337f, 182f, 1050f, -1039f)))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(190f, 369f)) + 1079f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(507f, -701f)), 634f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -812f), _wgslsmith_f_op_f32(-1265f + -693f)))) - vec4<f32>(296f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-308f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1854f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(318f, -1662f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-149f))), 1000f)));
    let var_2 = !vec3<bool>(all(vec3<bool>(any(global0.yww), all(vec2<bool>(false, var_0)), func_1(Struct_1(41201u, vec4<i32>(2147483647i, 27880i, u_input.a.x, 19839i), vec2<i32>(11829i, -2147483647i), vec2<bool>(false, var_0)), vec3<u32>(88445u, 0u, 1u)))), !var_0, var_0);
    let var_3 = Struct_1(countOneBits(1u), ~_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, 1i, 40858i) >> (vec4<u32>(4294967295u, 1u, 1u, 0u) % vec4<u32>(32u))), vec4<i32>(u_input.a.x, -2147483647i, -12303i, _wgslsmith_add_i32(-2147483647i, 2976i))), u_input.a, !select(global0.zz, vec2<bool>(true, true), global0.yy));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(984f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a.x, Struct_1(4294967295u, vec4<i32>(-1i, 10301i, 1i, u_input.a.x), u_input.a, vec2<bool>(true, global0.x)), false))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_1.x, -2133f)), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(var_1.x * -724f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 262f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 146f, var_1.x, var_1.x) + vec4<f32>(-442f, 1299f, var_1.x, 2524f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1239f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_div_i32(1i, u_input.a.x), Struct_1(var_3.a, var_3.b, vec2<i32>(2147483647i, -29300i), var_3.d), var_3.a <= var_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1879f) + -487f), var_1.x)));
    let var_4 = select(select(global0.yy, vec2<bool>(var_3.d.x, !var_2.x | select(true, var_0, false)), func_3(false).x), select(vec2<bool>(false, !var_2.x), vec2<bool>(true, true), true), var_3.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1680f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1032f - var_1.x))), _wgslsmith_f_op_f32(-var_1.x))), u_input.a.x, ~firstTrailingBit(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_3.a, 35172u, var_3.a), vec3<u32>(var_3.a, 41093u, var_3.a), vec3<u32>(var_3.a, var_3.a, var_3.a))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(721f * var_1.x)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(trunc(-802f))), _wgslsmith_mod_u32(var_3.a, var_3.a) == _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.a, var_3.a, 4294967295u), vec4<u32>(var_3.a, var_3.a, var_3.a, 1u)))), _wgslsmith_f_op_f32(abs(928f)), 217f, _wgslsmith_f_op_f32(-var_1.x)));
}

