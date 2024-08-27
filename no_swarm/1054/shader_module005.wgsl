struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(-4311i, i32(-2147483648), -19618i, -11121i, i32(-2147483648));

var<private> global1: f32 = -749f;

var<private> global2: array<vec3<f32>, 10>;

var<private> global3: vec3<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(805f * 1173f), _wgslsmith_f_op_f32(-470f * -297f), -1270f, _wgslsmith_f_op_f32(f32(-1f) * -710f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -111f, 219f, -1762f)) - vec4<f32>(649f, 130f, -602f, -443f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-625f, -124f, 504f, 864f))))));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x | _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 0u) >> (arg_0.wy % vec2<u32>(32u)), vec2<u32>(20058u, 56515u)), countOneBits(~_wgslsmith_sub_u32(4294967295u, 0u)), ~(arg_0.x << (arg_0.x % 32u))), _wgslsmith_div_vec3_u32(~(_wgslsmith_clamp_vec3_u32(arg_0.yxw, arg_0.wxx, arg_0.zzz) ^ min(vec3<u32>(0u, arg_0.x, 0u), vec3<u32>(arg_0.x, 58361u, arg_0.x))), ~arg_0.wyw));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2247f, var_0.x)) - var_0.x), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(floor(var_0.x)))));
    var var_3 = Struct_1(select(select(select(!vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), true), vec2<bool>(arg_1, true), !arg_1 == arg_1), select(select(!vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), true), select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, true), select(true, true, false)), vec2<bool>(arg_1, true)), arg_1), arg_0.x, true || any(!select(vec3<bool>(arg_1, false, true), vec3<bool>(false, false, false), arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -821f), _wgslsmith_f_op_f32(select(var_2, 146f, arg_1)), _wgslsmith_f_op_f32(-843f * 257f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, -199f, var_0.x, 803f))))));
    var_1 = _wgslsmith_sub_u32(1u, ~(~arg_0.x));
    return var_2;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_5) -> f32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1351f - -132f))), false, Struct_1(!arg_1.e.a, arg_1.b, arg_0.c.c, vec4<f32>(-702f, _wgslsmith_f_op_f32(min(-516f, arg_0.a)), _wgslsmith_f_op_f32(arg_1.e.d.x + arg_1.a.d.x), _wgslsmith_f_op_f32(abs(433f))))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.a.a * _wgslsmith_f_op_f32(f32(-1f) * -175f)) - _wgslsmith_f_op_f32(func_3(select(vec4<u32>(0u, arg_0.c.b, arg_0.c.b, 47149u), vec4<u32>(arg_1.e.b, 1u, arg_1.e.b, arg_0.c.b), vec4<bool>(true, false, arg_1.a.a.x, arg_0.c.c)), false))), all(vec2<bool>(true, arg_0.c.d.x > arg_0.c.d.x)), Struct_1(vec2<bool>(any(vec3<bool>(true, arg_1.e.a.x, arg_0.c.a.x)), arg_1.d.a.c.a.x), arg_0.c.b, !arg_1.e.a.x, _wgslsmith_f_op_vec4_f32(round(arg_0.c.d)))), !(!vec3<bool>(arg_1.e.a.x, true | arg_0.c.a.x, !arg_0.c.a.x)), _wgslsmith_f_op_f32(-806f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1719f * _wgslsmith_f_op_f32(abs(arg_1.e.d.x))) - arg_0.c.d.x)));
    let var_1 = Struct_4(arg_0, vec2<i32>(~global0[_wgslsmith_index_u32(max(arg_1.d.a.c.b, ~arg_0.c.b), 5u)], 44600i));
    global0 = array<i32, 5>();
    let var_2 = Struct_2(1898f, select(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.a.c.b, var_1.a.c.b), arg_1.d.a.c.b), countOneBits(arg_0.c.b << (var_1.a.c.b % 32u)), any(vec4<bool>(false, var_1.a.c.a.x, true, arg_1.d.a.b))) <= ~(var_1.a.c.b & ~4294967295u), Struct_1(var_0.b.c.a, arg_1.e.b, !(!all(vec4<bool>(true, false, arg_0.b, var_0.a.b))), var_1.a.c.d));
    var var_3 = _wgslsmith_f_op_f32(arg_1.a.d.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1256f, arg_0.c.d.x)), _wgslsmith_f_op_f32(arg_0.c.d.x * 294f))));
    return var_1.a.a;
}

fn func_1(arg_0: bool) -> Struct_2 {
    global0 = array<i32, 5>();
    global3 = -u_input.a.zyy;
    var var_0 = ~_wgslsmith_mod_u32(_wgslsmith_add_u32(6316u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(5466u, 1u))), 50502u);
    let var_1 = Struct_2(-547f, false && (~(~0u) > select(~46925u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 18411u), vec2<u32>(1u, 4294967295u)), any(vec2<bool>(arg_0, true)))), Struct_1(vec2<bool>(arg_0, arg_0), ~(~1u), !all(!vec3<bool>(arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(639f, -293f, true)), _wgslsmith_f_op_f32(f32(-1f) * -392f), _wgslsmith_f_op_f32(min(-1497f, 1210f)), _wgslsmith_f_op_f32(func_2(Struct_2(1162f, arg_0, Struct_1(vec2<bool>(true, arg_0), 12084u, arg_0, vec4<f32>(2268f, 668f, -522f, -993f))), Struct_5(Struct_1(vec2<bool>(arg_0, arg_0), 1u, arg_0, vec4<f32>(1866f, -309f, 1829f, 619f)), 4294967295u, u_input.a, Struct_4(Struct_2(1000f, arg_0, Struct_1(vec2<bool>(true, false), 7527u, true, vec4<f32>(-1000f, 521f, -409f, 1237f))), vec2<i32>(global0[_wgslsmith_index_u32(1u, 5u)], -2147483647i)), Struct_1(vec2<bool>(arg_0, false), 4294967295u, arg_0, vec4<f32>(484f, 995f, 1447f, -433f)))))))));
    let var_2 = -682f;
    return Struct_2(_wgslsmith_f_op_f32(-var_1.c.d.x), true, var_1.c);
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_5(arg_1.c, 1u, -(~(-countOneBits(vec4<i32>(-2147483647i, global3.x, 2147483647i, -22309i)))), Struct_4(func_1(false), firstTrailingBit(u_input.a.zz)), Struct_1(!(!func_1(arg_1.c.a.x).c.a), arg_1.c.b, arg_1.c.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1.c.d, arg_1.c.d, vec4<bool>(arg_1.c.c, false, false, true)))) + vec4<f32>(-1304f, _wgslsmith_f_op_f32(-396f * arg_1.a), arg_1.a, _wgslsmith_f_op_f32(1144f * -709f)))));
    var var_1 = any(vec3<bool>(arg_1.c.a.x, true, false));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 10>();
    let var_0 = Struct_3(Struct_2(-1675f, any(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), false)), Struct_1(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, false)), ~select(111574u, 0u, true), _wgslsmith_mod_i32(4935i, global3.x) <= u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1126f + -345f) * 1429f), _wgslsmith_f_op_f32(322f + _wgslsmith_f_op_f32(f32(-1f) * -806f))), true, func_4(401f, func_1(false))), !select(vec3<bool>(true, true, func_4(1873f, Struct_2(774f, true, Struct_1(vec2<bool>(false, true), 4294967295u, true, vec4<f32>(1118f, 932f, -164f, 1913f)))).c), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-658f, -1265f)))))));
    global0 = array<i32, 5>();
    let var_1 = var_0.b.c.a;
    let var_2 = var_0.b.c.a;
    var var_3 = Struct_5(var_0.b.c, _wgslsmith_mult_u32(~(~var_0.b.c.b), 4294967295u) << (_wgslsmith_mult_u32(4294967295u, ~(~1u)) % 32u), u_input.a >> (vec4<u32>(1u, _wgslsmith_div_u32(107939u, var_0.a.c.b) ^ max(77568u, 48376u), ~0u, 4294967295u) % vec4<u32>(32u)), Struct_4(var_0.a, abs(-(vec2<i32>(global0[_wgslsmith_index_u32(1289u, 5u)], 2147483647i) | u_input.a.yz))), Struct_1(vec2<bool>(var_2.x, var_2.x), var_0.b.c.b, any(!(!vec3<bool>(var_2.x, false, var_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0.a.c.d)))));
    let var_4 = _wgslsmith_mod_i32(select(global3.x, firstTrailingBit(min(-62956i & var_3.c.x, -3365i)), true), _wgslsmith_add_i32(u_input.a.x, abs(u_input.a.x)));
    var var_5 = firstLeadingBit(u_input.a.yyy) ^ u_input.a.yzz;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x);
}

