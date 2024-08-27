struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = select(select(!(!select(vec4<bool>(arg_3.a.e, arg_3.a.e, false, arg_3.e.e), vec4<bool>(false, arg_3.e.e, arg_3.e.e, arg_3.a.e), vec4<bool>(arg_3.a.e, arg_3.e.e, arg_3.e.e, true))), vec4<bool>(true | (arg_3.a.e | false), arg_0.x < _wgslsmith_f_op_f32(exp2(arg_3.d.x)), true, any(vec3<bool>(false, true, arg_3.a.e)) == any(vec4<bool>(arg_3.a.e, arg_3.e.e, true, true))), select(vec4<bool>(!arg_3.e.e, true, true, any(vec2<bool>(arg_3.e.e, false))), vec4<bool>(1i >= arg_3.b.x, false, true, arg_3.e.e), false)), !vec4<bool>(!(arg_3.e.e | arg_3.e.e), true, arg_3.e.e, all(vec4<bool>(arg_3.a.e, false, false, arg_3.a.e))), all(vec2<bool>(true, countOneBits(14267i) <= _wgslsmith_div_i32(arg_3.b.x, -2147483647i))));
    var var_1 = Struct_1(select(~min(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, 4294967295u, arg_2.x), u_input.d.yzx), vec3<u32>(1u, 92552u, 7059u)), u_input.d.yzy, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1128f)), arg_3.d.x) * arg_3.e.b)), _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(ceil(-1343f)), false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_3.e.c))), arg_3.a.e)), arg_3.e.d, ~_wgslsmith_mod_u32(arg_3.e.d.x, u_input.c) > firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 37875u), vec2<u32>(arg_2.x, 20367u))));
    var var_2 = var_1.a.x & 0u;
    var_1 = Struct_1(~(vec3<u32>(arg_1 & 0u, var_1.d.x << (arg_3.a.d.x % 32u), ~54503u) ^ min(firstTrailingBit(vec3<u32>(0u, 0u, 0u)), ~vec3<u32>(u_input.d.x, 21416u, 4294967295u))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b.x, arg_3.d.x), vec2<f32>(_wgslsmith_f_op_f32(step(var_1.b.x, arg_3.d.x)), _wgslsmith_f_op_f32(-var_1.b.x)))), arg_0.x, ~(vec4<u32>(~1u, arg_3.a.a.x, firstTrailingBit(arg_1), 1u) << (vec4<u32>(~21908u, abs(u_input.d.x), ~29086u, _wgslsmith_add_u32(0u, arg_2.x)) % vec4<u32>(32u))), false);
    var var_3 = Struct_2(arg_3.e, vec4<i32>(~arg_3.b.x << (countOneBits(9565u) % 32u), arg_3.b.x, 0i, select(~(~u_input.b), arg_3.b.x, true)), vec3<u32>(~11452u << (~(0u << (var_1.d.x % 32u)) % 32u), 19069u, abs(_wgslsmith_mod_u32(arg_2.x, 8651u)) & var_1.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b.x, arg_0.x), vec2<f32>(456f, -343f), true)), arg_0), _wgslsmith_f_op_vec2_f32(max(var_1.b, vec2<f32>(var_1.c, -183f))), select(select(var_0.xy, vec2<bool>(false, false), vec2<bool>(var_1.e, var_0.x)), var_0.xw, false)))), arg_3.a);
    return var_1.d;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = !(!vec3<bool>(true, arg_0.x <= 28074u, true));
    var var_1 = ~vec2<i32>(-1i, -16177i) << (min(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_0.x) ^ u_input.d.zw, ~vec2<u32>(15378u, 13547u)), firstLeadingBit(vec2<u32>(u_input.d.x, u_input.d.x))), arg_0.zw) % vec2<u32>(32u));
    var_1 = vec2<i32>(var_1.x, 68078i);
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1255f * -1000f), -1720f, 1683f))));
    return Struct_1(~vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, u_input.d.x, 0u, u_input.d.x), vec4<u32>(u_input.d.x, 0u, 1u, 1u)), abs(vec4<u32>(17569u, 63012u, 4294967295u, u_input.d.x))), _wgslsmith_dot_vec3_u32(u_input.d.yzw, vec3<u32>(u_input.c, arg_0.x, u_input.c)), u_input.c | ~arg_0.x), var_3.xy, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -214f)), _wgslsmith_f_op_f32(1166f - 590f)) * var_3.x), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.d, ~u_input.d), func_3(var_3.xy, arg_0.x, vec2<u32>(4294967295u, arg_0.x), Struct_2(Struct_1(u_input.d.www, vec2<f32>(var_3.x, -716f), var_3.x, vec4<u32>(arg_0.x, 18449u, 17115u, u_input.d.x), var_0.x), vec4<i32>(u_input.a, 10038i, -53129i, 2147483647i), u_input.d.xyz, var_3.yz, Struct_1(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), var_3.xy, var_3.x, u_input.d, false)))) ^ ~arg_0, ~(~(~u_input.d.x)) <= abs(1u));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(arg_2.e.b.x + 1000f), arg_2.a.b.x, -780f)))), vec3<f32>(_wgslsmith_f_op_f32(592f * arg_2.a.b.x), _wgslsmith_f_op_f32(ceil(2441f)), arg_2.a.c), false));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-301f, arg_2.e.c)), arg_2.e.b.x, -1877f)))));
    let var_1 = ~(~u_input.d);
    var var_2 = arg_1.e;
    var var_3 = Struct_2(func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(arg_1.a.x, 1u), var_1.x, 4294967295u, reverseBits(u_input.d.x)), firstTrailingBit(vec4<u32>(u_input.c, 42948u, arg_1.d.x, var_1.x)))), ~vec4<i32>(_wgslsmith_dot_vec3_i32(arg_2.b.wyz, firstLeadingBit(arg_2.b.zzw)), 2147483647i, -2147483647i, -u_input.b), ~u_input.d.wwz, _wgslsmith_div_vec2_f32(arg_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1430f, arg_2.e.b.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-1050f, var_0.x), vec2<f32>(-982f, 599f)))))), Struct_1(arg_2.e.d.wxy, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + _wgslsmith_div_f32(596f, var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.c + -913f)))), -272f, arg_2.e.d, arg_2.a.e));
    return arg_2.a;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1000f * arg_2.c))) > _wgslsmith_f_op_f32(step(-1714f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = arg_2;
    var_1 = func_4(arg_2.e, func_2(var_1.d), Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(arg_2.a.x, 1u, 4063u)), countOneBits(var_1.d.wxz)), vec2<f32>(-1819f, _wgslsmith_f_op_f32(trunc(var_1.b.x))), arg_2.b.x, var_1.d, true), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-35742i, -17396i, u_input.a, -2147483647i) ^ vec4<i32>(u_input.b, 15282i, u_input.b, -4889i), -vec4<i32>(-1i, 2147483647i, u_input.b, 34202i), select(vec4<i32>(u_input.b, -54453i, u_input.b, 49566i), vec4<i32>(-1i, 2147483647i, u_input.b, u_input.b), vec4<bool>(false, arg_0, false, true))), u_input.d.xyw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.b + arg_2.b) + arg_2.b) * _wgslsmith_f_op_vec2_f32(vec2<f32>(840f, 1708f) * arg_2.b)), arg_2));
    var var_2 = Struct_2(arg_2, ~abs(~vec4<i32>(28920i, u_input.a, u_input.a, u_input.a)), ~u_input.d.xyx, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_2.b)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1.b)))))), arg_2);
    var_1 = func_2(vec4<u32>(_wgslsmith_clamp_u32(1u, arg_1.x, ~var_1.d.x) << (_wgslsmith_sub_u32(0u & var_2.e.a.x, ~1497u) % 32u), 1u, ~_wgslsmith_div_u32(u_input.c, ~0u), ~(~1u)));
    return any(select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, false), vec2<bool>(arg_0, var_2.a.e), var_2.a.e), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(var_2.e.e, true)), true), vec2<bool>(77739i < var_2.b.x, false), select(true, var_2.e.e, false) || false), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>((u_input.c <= ~0u) || any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), !(func_1(false, vec4<u32>(u_input.d.x, 1u, 1u, u_input.d.x), Struct_1(vec3<u32>(u_input.d.x, 1u, u_input.c), vec2<f32>(1826f, -704f), -415f, u_input.d, true)) | true), func_2(firstTrailingBit(select(vec4<u32>(u_input.c, 0u, u_input.d.x, u_input.c), u_input.d, vec4<bool>(true, true, false, false)))).e), vec3<bool>(!(any(vec2<bool>(false, true)) || true), true, func_4(true, Struct_1(~vec3<u32>(u_input.c, 4294967295u, u_input.d.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-522f, 992f) - vec2<f32>(-1000f, -1167f)), 767f, u_input.d, true), Struct_2(func_4(false, Struct_1(u_input.d.yxy, vec2<f32>(1000f, 785f), -272f, u_input.d, false), Struct_2(Struct_1(u_input.d.zxz, vec2<f32>(354f, 217f), 306f, u_input.d, true), vec4<i32>(15842i, -8376i, 514i, 1270i), u_input.d.xww, vec2<f32>(-666f, -455f), Struct_1(vec3<u32>(48854u, u_input.d.x, u_input.c), vec2<f32>(1065f, 360f), 223f, u_input.d, true))), -vec4<i32>(-13622i, -1i, -20473i, -21984i), vec3<u32>(0u, 4294967295u, u_input.c), vec2<f32>(-1780f, -1999f), func_2(u_input.d))).e), vec3<bool>(all(vec3<bool>(-1i > u_input.a, true, func_1(true, vec4<u32>(46044u, u_input.c, u_input.d.x, u_input.c), Struct_1(vec3<u32>(0u, 13720u, 58257u), vec2<f32>(-480f, -806f), 731f, vec4<u32>(u_input.c, 1u, u_input.c, 19575u), true)))), true, any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)))));
    var_0 = select(select(select(vec3<bool>(true, false, func_1(false, vec4<u32>(u_input.c, 76709u, 48910u, 4294967295u), Struct_1(vec3<u32>(4294967295u, u_input.c, 0u), vec2<f32>(-695f, 1000f), -270f, vec4<u32>(u_input.c, 59485u, 50577u, u_input.d.x), false))), !(!vec3<bool>(var_0.x, false, false)), false), vec3<bool>(all(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x)), var_0.x, var_0.x), vec3<bool>(true, var_0.x, all(vec3<bool>(true, var_0.x, var_0.x)))), !vec3<bool>(var_0.x, !(var_0.x & var_0.x), func_2(vec4<u32>(u_input.d.x, 4244u, u_input.d.x, 5810u)).c != _wgslsmith_f_op_f32(step(-1026f, -2140f))), false);
    var_0 = !(!vec3<bool>(var_0.x, true, (u_input.c >> (u_input.c % 32u)) > 4294967295u));
    var_0 = select(vec3<bool>(var_0.x, any(select(select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false)), !vec4<bool>(var_0.x, false, true, true), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)))), var_0.x), select(!vec3<bool>(false, any(vec3<bool>(false, false, var_0.x)), any(vec2<bool>(false, var_0.x))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, var_0.x), var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), var_0.x), var_0.x), vec3<bool>(false, any(vec4<bool>(false, var_0.x, true, true)), 27818u <= u_input.c), select(select(vec3<bool>(false, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x), var_0.x), vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x))), var_0.x), (!(!var_0.x) & true) | (var_0.x && any(!var_0.xy)));
    var_0 = !(!(!vec3<bool>(false, !var_0.x, func_2(u_input.d).e)));
    let var_1 = Struct_1(func_4((0u >> (~u_input.d.x % 32u)) <= 0u, func_4(var_0.x, func_4(!var_0.x, Struct_1(vec3<u32>(4294967295u, u_input.d.x, u_input.d.x), vec2<f32>(1306f, 234f), 1228f, vec4<u32>(u_input.c, u_input.d.x, 4294967295u, 70501u), false), Struct_2(Struct_1(vec3<u32>(0u, 21018u, 6636u), vec2<f32>(-1297f, 659f), -923f, u_input.d, false), vec4<i32>(2147483647i, -2776i, u_input.b, 1289i), u_input.d.xzz, vec2<f32>(1768f, -1689f), Struct_1(u_input.d.xzy, vec2<f32>(-128f, -443f), -979f, vec4<u32>(u_input.c, 24473u, u_input.c, 1u), true))), Struct_2(func_2(vec4<u32>(1u, 15318u, 24365u, 1u)), min(vec4<i32>(u_input.b, u_input.b, 15691i, 1i), vec4<i32>(0i, u_input.b, u_input.b, u_input.a)), func_3(vec2<f32>(-1734f, -101f), 1u, u_input.d.yw, Struct_2(Struct_1(vec3<u32>(0u, u_input.d.x, u_input.c), vec2<f32>(-972f, 779f), 556f, vec4<u32>(u_input.c, 4294967295u, 42556u, u_input.c), var_0.x), vec4<i32>(u_input.a, u_input.a, -2147483647i, 2147483647i), u_input.d.wwy, vec2<f32>(661f, -232f), Struct_1(vec3<u32>(0u, u_input.d.x, u_input.d.x), vec2<f32>(781f, -123f), 894f, u_input.d, true))).yzx, vec2<f32>(-1203f, -845f), Struct_1(u_input.d.zzz, vec2<f32>(-1357f, -479f), -1220f, vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 0u), true))), Struct_2(func_2(u_input.d), vec4<i32>(-u_input.a, u_input.a, u_input.b, -15990i), vec3<u32>(1u, u_input.c, 1u) | reverseBits(vec3<u32>(u_input.c, 44708u, u_input.d.x)), vec2<f32>(289f, -1000f), func_4(var_0.x, Struct_1(vec3<u32>(u_input.d.x, u_input.c, 45633u), vec2<f32>(-230f, -1524f), -1000f, vec4<u32>(u_input.c, 4294967295u, 4294967295u, 41661u), var_0.x), Struct_2(Struct_1(vec3<u32>(56029u, u_input.d.x, 78303u), vec2<f32>(-231f, -228f), -202f, vec4<u32>(u_input.c, u_input.d.x, 48551u, 49695u), false), vec4<i32>(u_input.a, 8867i, u_input.a, u_input.a), vec3<u32>(0u, 0u, u_input.d.x), vec2<f32>(-670f, 1000f), Struct_1(vec3<u32>(4294967295u, u_input.c, u_input.d.x), vec2<f32>(190f, 286f), 290f, vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.d.x), var_0.x))))).a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-523f - _wgslsmith_f_op_f32(f32(-1f) * -165f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(403f + -207f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-218f)) - _wgslsmith_div_f32(-762f, 1926f))))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 19339u, 23433u), u_input.d.zyx), max(37227u, u_input.d.x)) << (~(66631u ^ u_input.d.x) % 32u), u_input.c, _wgslsmith_div_u32(~(~u_input.c), 75182u), _wgslsmith_add_u32(u_input.c, abs(0u))), func_4(false, func_4(false, Struct_1(~vec3<u32>(4294967295u, 1u, 37127u), vec2<f32>(-1224f, -159f), _wgslsmith_f_op_f32(-1373f - 168f), select(u_input.d, vec4<u32>(u_input.d.x, u_input.d.x, 1u, 15615u), var_0.x), var_0.x | var_0.x), Struct_2(Struct_1(vec3<u32>(37233u, 4294967295u, u_input.c), vec2<f32>(432f, -448f), -1000f, u_input.d, var_0.x), -vec4<i32>(u_input.b, 11940i, 83100i, u_input.b), u_input.d.wzx >> (u_input.d.xwx % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-643f, -1473f) - vec2<f32>(2218f, -2126f)), func_4(var_0.x, Struct_1(u_input.d.yzy, vec2<f32>(-122f, 1362f), -681f, vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u), var_0.x), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 0u), vec2<f32>(125f, -1722f), 1734f, u_input.d, false), vec4<i32>(u_input.b, -96822i, u_input.a, -54979i), vec3<u32>(u_input.d.x, u_input.d.x, 19680u), vec2<f32>(272f, -158f), Struct_1(u_input.d.zzw, vec2<f32>(-704f, -1744f), 1744f, vec4<u32>(u_input.c, u_input.d.x, 0u, 87444u), var_0.x))))), Struct_2(Struct_1(u_input.d.ywx, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-120f, 674f))), -1581f, func_3(vec2<f32>(893f, 842f), 54031u, u_input.d.zw, Struct_2(Struct_1(vec3<u32>(u_input.d.x, 22541u, 1u), vec2<f32>(1077f, -174f), -180f, vec4<u32>(4294967295u, u_input.c, 4294967295u, 0u), false), vec4<i32>(u_input.a, -38845i, u_input.a, u_input.b), u_input.d.xzz, vec2<f32>(-498f, -296f), Struct_1(u_input.d.wzw, vec2<f32>(-1035f, 1034f), 1375f, u_input.d, var_0.x))), var_0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -1i, -1i, -19947i), vec4<i32>(2147483647i, 2147483647i, u_input.b, 0i) >> (vec4<u32>(1u, 62415u, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), -vec4<i32>(u_input.a, u_input.b, u_input.b, -1i)), u_input.d.xxy, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(578f, 962f), vec2<f32>(-395f, 1242f))))), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.d.x, u_input.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(692f, 590f) + vec2<f32>(698f, -335f)), -671f, vec4<u32>(u_input.c, u_input.c, u_input.d.x, u_input.c), true))).e);
    var var_2 = _wgslsmith_sub_vec3_u32(min(var_1.d.xxz, _wgslsmith_clamp_vec3_u32(~u_input.d.ywz, var_1.d.wzw, vec3<u32>(var_1.a.x, var_1.d.x, var_1.d.x) | _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.d.x, var_1.a.x, var_1.a.x), vec3<u32>(16467u, var_1.a.x, 49645u)))), var_1.a);
    var var_3 = !(!select(!vec4<bool>(var_0.x, true, var_1.e, var_1.e), !(!vec4<bool>(var_1.e, false, true, false)), !(!vec4<bool>(true, var_0.x, var_1.e, var_1.e))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - -1589f)) + 738f)), vec4<f32>(-454f, 193f, _wgslsmith_f_op_f32(-var_1.b.x), var_1.c), _wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(-32920i, u_input.a), vec2<i32>(-19395i, u_input.a)), ~select(vec2<i32>(u_input.a, u_input.b), abs(vec2<i32>(u_input.a, u_input.b)), vec2<bool>(var_0.x, false))), var_1.d, _wgslsmith_f_op_f32(-1055f - _wgslsmith_f_op_f32(f32(-1f) * -518f)));
}

