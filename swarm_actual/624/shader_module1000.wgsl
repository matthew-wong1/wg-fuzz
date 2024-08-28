struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec4<u32>) -> bool {
    global0 = vec3<bool>(arg_0.x, true, arg_0.x);
    var var_0 = select(vec3<bool>(all(vec2<bool>(global0.x & arg_0.x, all(vec4<bool>(false, global0.x, global0.x, arg_0.x)))), arg_0.x, all(!arg_0.ywx)), !arg_0.zxy, !select(arg_0.yxw, vec3<bool>(true, select(global0.x, false, arg_0.x), all(arg_0)), vec3<bool>(true, false, true)));
    var_0 = arg_0.wzy;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-586f, -211f, -175f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-175f, -1000f, 1400f), vec3<f32>(2150f, 641f, -553f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(521f, -296f, 1836f, 1215f), _wgslsmith_div_vec4_f32(vec4<f32>(1621f, 332f, -1404f, 790f), vec4<f32>(-417f, -1848f, -1435f, -173f))))), u_input.d.x, false));
    let var_2 = -1570f;
    return !all(vec4<bool>(select(var_1.b.c, true, true), !arg_0.x, !var_0.x, var_0.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: vec4<u32>) -> f32 {
    global0 = arg_1.xyz;
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(269f, arg_0.a.x))) - 529f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.x))), -326f, -381f), arg_0.a);
    global0 = select(select(vec3<bool>((27599u ^ u_input.c) <= u_input.c, all(select(arg_1.zx, arg_1.zz, global0.xx)), false), vec3<bool>(false, true, all(select(vec4<bool>(false, arg_2, true, false), vec4<bool>(arg_2, true, arg_1.x, global0.x), true))), vec3<bool>(all(vec3<bool>(arg_2, global0.x, arg_0.c)), func_3(arg_1, ~vec4<u32>(arg_3.x, arg_3.x, arg_3.x, 45693u), select(arg_3, vec4<u32>(1u, arg_3.x, 8634u, arg_3.x), arg_2)), !select(true, true, arg_1.x))), vec3<bool>(-1i < _wgslsmith_mult_i32(u_input.d.x, _wgslsmith_mult_i32(u_input.a.x, arg_0.b)), arg_1.x, !all(!arg_1.wyw)), !(!vec3<bool>(true, any(arg_1.yx), !global0.x)));
    var var_1 = !vec3<bool>(u_input.d.x > u_input.a.x, global0.x, any(vec3<bool>(u_input.b != -72i, true, select(arg_1.x, arg_2, arg_0.c))));
    global0 = arg_1.yzx;
    return arg_0.a.x;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-1124f * _wgslsmith_f_op_f32(step(-1328f, 599f)));
    global0 = select(vec3<bool>(~abs(u_input.c) != (~36693u >> (u_input.c % 32u)), any(vec2<bool>(!global0.x, true)), global0.x), !vec3<bool>(global0.x, !any(global0.yz), true), !vec3<bool>(false, false & all(vec4<bool>(true, global0.x, arg_1.c, true)), !(global0.x || false)));
    global0 = vec3<bool>(!(!(-642f >= var_0)), false, 1158f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(var_0, 1631f, -943f, arg_0), arg_1.b, true), vec4<bool>(arg_1.c, global0.x, true, true), global0.x, _wgslsmith_clamp_vec4_u32(vec4<u32>(52184u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 1u), vec4<u32>(u_input.c, 26149u, u_input.c, u_input.c))))));
    var var_1 = arg_1;
    return !select(vec3<bool>(any(!vec4<bool>(false, false, arg_1.c, arg_1.c)), any(!vec4<bool>(true, false, global0.x, false)), arg_1.c | false), vec3<bool>(false, any(!vec3<bool>(global0.x, true, arg_1.c)), any(!vec3<bool>(arg_1.c, true, arg_1.c))), !vec3<bool>(true, false, u_input.c < u_input.c));
}

fn func_1() -> Struct_1 {
    global0 = !func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(113f, 930f, 896f, 1000f), 0i, false), select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(false, global0.x, global0.x, false), false), global0.x, vec4<u32>(55102u, 0u, 10745u, u_input.c) & vec4<u32>(u_input.c, 45001u, u_input.c, 4054u))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-717f + -245f))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1518f), _wgslsmith_div_f32(574f, 377f), -1269f, _wgslsmith_f_op_f32(floor(785f))), -2147483647i, all(global0.zx)));
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -587f), _wgslsmith_f_op_f32(1324f * _wgslsmith_f_op_f32(max(-781f, _wgslsmith_f_op_f32(-750f - -567f)))), -619f, 1391f), _wgslsmith_mult_i32(~u_input.d.x, _wgslsmith_div_i32(~(-2147483647i), u_input.d.x | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -4589i, -3950i), vec3<i32>(-1i, -4331i, u_input.b)))), all(!vec4<bool>(true, true, any(global0.yz), u_input.a.x <= u_input.a.x)));
    var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(var_0.a.x - -1855f)), _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(round(var_0.a.x)), 285f), 1i, all(vec2<bool>(global0.x, all(select(vec4<bool>(true, false, var_0.c, global0.x), vec4<bool>(var_0.c, global0.x, true, global0.x), var_0.c)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), -21130i, !func_4(_wgslsmith_f_op_f32(f32(-1f) * -376f), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-769f, 377f, -988f, var_0.a.x) - var_0.a), _wgslsmith_sub_i32(56i, 12348i), global0.x)).x);
    global0 = vec3<bool>(false, global0.x, all(vec2<bool>(!(false && var_0.c), _wgslsmith_f_op_f32(trunc(var_0.a.x)) >= var_0.a.x)));
    return Struct_1(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(1359f + _wgslsmith_f_op_f32(1f + 1752f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x))))), firstLeadingBit(-(~u_input.a.x)), (4294967295u < u_input.c) != !var_0.c);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> vec2<f32> {
    global0 = vec3<bool>(true, true, global0.x);
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + arg_0.a.x), _wgslsmith_f_op_f32(-arg_1.x)), arg_0.a.x)), func_1());
    global0 = func_4(1137f, func_1());
    global0 = vec3<bool>(all(vec3<bool>(var_0.b.c, all(select(vec3<bool>(false, var_0.b.c, true), vec3<bool>(true, global0.x, true), false)), all(vec3<bool>(var_0.b.c, false, arg_0.c)) | true)), func_4(arg_0.a.x, Struct_1(vec4<f32>(var_0.a.x, 1174f, 1000f, arg_1.x), _wgslsmith_clamp_i32(arg_0.b, 0i, -2594i), func_3(vec4<bool>(arg_0.c, global0.x, var_0.b.c, arg_0.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), vec4<u32>(4294967295u, u_input.c, 21093u, u_input.c)))).x || global0.x, false);
    var var_1 = u_input.c;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.x - var_0.a.x), var_0.a.x))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), arg_0.a.x) * var_0.b.a.zy), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.a.zz)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, false);
    let var_1 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, 4294967295u, 2399u), ~vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c, 2112u, 4294967295u)), vec3<u32>(u_input.c, u_input.c, 20604u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, 1u), max(vec4<u32>(1u, u_input.c, 54333u, u_input.c), vec4<u32>(44112u, 43460u, u_input.c, u_input.c))), u_input.c) & ~(~(~vec3<u32>(25998u, u_input.c, u_input.c)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(351f)), _wgslsmith_f_op_f32(select(-585f, -1074f, true))), _wgslsmith_f_op_vec2_f32(func_5(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1097f, 315f, 466f) * vec3<f32>(-1818f, -432f, -1091f)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -267f)), -934f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -779f), -911f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(404f, 1867f)))));
    var var_3 = ~var_1.zy;
    var var_4 = u_input.d.yy;
    let var_5 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wy, -abs(select(var_4.x << (94990u % 32u), ~u_input.b, false)));
}

