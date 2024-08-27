struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: f32) -> bool {
    global0 = select(vec4<bool>(any(vec3<bool>(global0.x, global0.x, global0.x & true)), all(!(!vec3<bool>(false, global0.x, true))), true, false), !vec4<bool>(global0.x, any(select(global0.yx, global0.yx, global0.x)), global0.x, all(vec2<bool>(true, true))), !vec4<bool>(u_input.b.x >= -u_input.a.x, all(vec3<bool>(false, global0.x, global0.x)), u_input.a.x >= 14732i, any(!vec4<bool>(true, false, global0.x, global0.x))));
    var var_0 = reverseBits(vec4<u32>(37516u, ~u_input.c, 28785u, arg_0));
    let var_1 = u_input.a.x;
    var var_2 = ~38891i > _wgslsmith_mult_i32(u_input.a.x, var_1);
    let var_3 = Struct_4(any(select(vec4<bool>(false, select(global0.x, global0.x, false), true, all(vec4<bool>(false, global0.x, global0.x, false))), !(!vec4<bool>(global0.x, global0.x, global0.x, false)), select(!vec4<bool>(global0.x, true, true, false), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, false, global0.x), global0.x), !vec4<bool>(global0.x, global0.x, true, false)))), Struct_2(vec3<f32>(arg_2, 1435f, 1057f)), abs(0u) == ~(select(var_0.x, 63894u, false) << (_wgslsmith_dot_vec3_u32(var_0.zyw, var_0.yww) % 32u)), Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-874f + arg_2)), arg_2, u_input.b.x ^ _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 1i)), select(select(vec2<bool>(true, global0.x), select(global0.xy, global0.xz, global0.x), select(global0.x, global0.x, global0.x)), global0.zx, !global0.x), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1417f, -157f, -791f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-407f, arg_2, -394f), vec3<f32>(1686f, 1829f, -739f), vec3<bool>(true, global0.x, global0.x))))), false, var_1));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool) -> bool {
    var var_0 = Struct_4(!(!(!(true != arg_2))), arg_0, any(!select(vec3<bool>(arg_1.d.b.x, true, global0.x), vec3<bool>(global0.x, global0.x, arg_1.d.d), select(vec3<bool>(false, global0.x, true), vec3<bool>(true, arg_1.c, arg_2), global0.xxy))), Struct_3(arg_1.d.a, select(!select(vec2<bool>(true, arg_2), vec2<bool>(false, global0.x), global0.x), arg_1.d.b, vec2<bool>(false, 476f >= arg_1.b.a.x)), arg_0, u_input.e > _wgslsmith_add_u32(u_input.e >> (0u % 32u), 55750u), u_input.b.x));
    var var_1 = Struct_3(Struct_1(var_0.d.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.a.x, 502f) - _wgslsmith_f_op_f32(-arg_1.d.c.a.x))), _wgslsmith_dot_vec3_i32(select(countOneBits(vec3<i32>(u_input.a.x, 1i, 1i)), vec3<i32>(2147483647i, arg_1.d.a.c, 1i), arg_1.c || arg_2), vec3<i32>(arg_1.d.a.c, -1152i, var_0.d.a.c) ^ _wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, vec3<i32>(-14663i, 32117i, 0i)))), select(var_0.d.b, vec2<bool>(global0.x, !(!global0.x)), global0.zw), var_0.d.c, false, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 7022i), u_input.b.yz))), vec2<i32>(~arg_1.d.a.c & -1i, 2147483647i | arg_1.d.a.c)));
    let var_2 = func_3(abs(~u_input.c), 0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-768f * arg_0.a.x), arg_1.d.a.a));
    let var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-2205f, var_1.c.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(506f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_div_f32(1000f, 669f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(467f * arg_0.a.x) + -793f))));
    var_0 = Struct_4(any(!vec3<bool>(arg_1.d.b.x, func_3(u_input.e, 72605u, -1348f), true)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, 1f, _wgslsmith_f_op_f32(f32(-1f) * -398f)))), true, Struct_3(arg_1.d.a, select(vec2<bool>(!global0.x, u_input.e == u_input.e), !vec2<bool>(var_0.a, var_1.b.x), var_1.d), arg_1.d.c, countOneBits(_wgslsmith_sub_u32(u_input.e, 59223u)) > ~4294967295u, _wgslsmith_add_i32(var_0.d.a.c, ~arg_1.d.e | ~4366i)));
    return true;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_1)) - _wgslsmith_f_op_vec3_f32(arg_1 * vec3<f32>(arg_1.x, -476f, arg_1.x)))), arg_1)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1939f * -927f)), arg_1.x, _wgslsmith_f_op_f32(-arg_1.x))));
    global0 = select(!vec4<bool>(_wgslsmith_div_f32(arg_1.x, -842f) > var_0.x, any(global0.ww), arg_0, !(arg_2 & global0.x)), vec4<bool>(!(!(u_input.d >= u_input.c)), any(!global0.ywy), !func_2(Struct_2(vec3<f32>(arg_1.x, 1098f, arg_1.x)), Struct_4(true, Struct_2(vec3<f32>(-1750f, 1188f, -1962f)), true, Struct_3(Struct_1(260f, -559f, u_input.a.x), global0.zw, Struct_2(arg_1), global0.x, u_input.a.x)), true), false), any(vec4<bool>(global0.x, false, true, false)));
    let var_1 = u_input.a.zxy;
    let var_2 = ~(-26050i);
    let var_3 = false;
    return vec4<bool>(false, _wgslsmith_f_op_f32(step(var_0.x, arg_1.x)) == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(var_0.x * 1000f)))), any(global0.yxy), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(countOneBits(2147483647i), ~((u_input.b.x | u_input.b.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.c, 4294967295u)) % 32u))) >> (~(~(~(~vec2<u32>(52750u, u_input.e)))) % vec2<u32>(32u));
    global0 = !(!select(!select(vec4<bool>(false, global0.x, false, true), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false)), select(func_1(true, vec3<f32>(-1217f, 313f, 191f), true), vec4<bool>(true, global0.x, true, global0.x), !vec4<bool>(true, global0.x, false, true)), vec4<bool>(var_0.x < u_input.a.x, global0.x, true, !global0.x)));
    let var_1 = select(func_1(33262u <= (u_input.d | u_input.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(801f, -396f, -1166f))), false), vec4<bool>(global0.x & global0.x, global0.x, all(!(!vec3<bool>(global0.x, global0.x, false))), global0.x), func_1(!all(!global0.wz), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(602f, 1953f, -1000f), vec3<f32>(-960f, -1697f, -485f))) * _wgslsmith_div_vec3_f32(vec3<f32>(-1202f, 273f, 985f), vec3<f32>(355f, 299f, 106f))), vec3<f32>(_wgslsmith_f_op_f32(-556f - -1641f), _wgslsmith_div_f32(-186f, 1025f), 1834f)), global0.x));
    global0 = vec4<bool>(false, !(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-665f + -270f))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -116f), _wgslsmith_f_op_f32(-1171f - -207f)))), func_2(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(222f)), _wgslsmith_f_op_f32(f32(-1f) * -1275f), _wgslsmith_f_op_f32(round(423f)))), Struct_4(!any(vec3<bool>(global0.x, true, true)), Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-755f, 2306f, -833f)))), var_1.x, Struct_3(Struct_1(1101f, 955f, var_0.x), !vec2<bool>(var_1.x, global0.x), Struct_2(vec3<f32>(1206f, -1686f, -1374f)), var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(0i, var_0.x)))), false), false);
    let var_2 = Struct_1(-348f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1209f))))), _wgslsmith_div_i32(-u_input.a.x, -var_0.x));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.b, -2283f, var_2.b))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1521f, var_2.a)), _wgslsmith_f_op_f32(round(var_2.b)), _wgslsmith_f_op_f32(round(var_2.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~0u), vec2<u32>(~(~firstTrailingBit(31677u)), ~u_input.e ^ 52733u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(2153f, var_2.b), _wgslsmith_f_op_f32(ceil(1501f)), _wgslsmith_f_op_f32(abs(var_2.b)), _wgslsmith_f_op_f32(trunc(-186f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.b, 198f, var_3.a.x, 507f))), !(!vec4<bool>(var_1.x, var_1.x, false, true))))));
}

