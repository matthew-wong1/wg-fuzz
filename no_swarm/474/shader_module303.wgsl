struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> vec2<u32> {
    global0 = array<vec2<bool>, 24>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a.x, global1.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, global1.x) - vec2<f32>(-1000f, global1.x)) + vec2<f32>(1915f, arg_1.a.x))), abs(~arg_1.b), u_input.b < _wgslsmith_mod_i32(1i, u_input.a.x)), ~arg_0.b, arg_0.c);
    global0 = array<vec2<bool>, 24>();
    return vec2<u32>(_wgslsmith_clamp_u32(1u, 1u << (arg_1.b % 32u), countOneBits(20441u)) | _wgslsmith_div_u32(1u ^ arg_0.b.x, ~65186u), reverseBits(4294967295u)) ^ ~vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a.b, 26323u, 46283u), vec3<u32>(29081u, 27104u, arg_1.b)), arg_0.b.x);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec4<bool> {
    global0 = array<vec2<bool>, 24>();
    var var_0 = vec3<u32>(13136u, 53311u, abs(arg_0.a.b & ~(~arg_0.a.b)));
    let var_1 = select(!all(arg_0.c), all(arg_0.c.yw), true);
    var var_2 = Struct_1(global1.xw, 6477u, var_1 & arg_0.a.c);
    let var_3 = arg_0;
    return select(var_3.c, vec4<bool>(var_1, true, true, all(arg_0.c)), vec4<bool>(!var_2.c, all(arg_0.c), all(var_3.c.xyx), all(global0[_wgslsmith_index_u32(~(~var_0.x), 24u)])));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = abs(u_input.b);
    var var_1 = min(27157u, countOneBits(arg_1.b));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, global1.x)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-281f, arg_0.a.x))))), _wgslsmith_f_op_vec2_f32(exp2(arg_0.a)), true)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.xw + vec2<f32>(-104f, arg_1.a.x)), vec2<f32>(_wgslsmith_f_op_f32(step(arg_1.a.x, 2141f)), _wgslsmith_f_op_f32(arg_0.a.x - arg_1.a.x)), global0[_wgslsmith_index_u32(~(~arg_0.b), 24u)]))), _wgslsmith_mult_u32(arg_1.b, arg_0.b), arg_0.c);
    let var_3 = select(func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(2022f, var_2.a.x) * var_2.a), 5831u, -109f >= arg_1.a.x), select(~vec2<u32>(arg_0.b, var_2.b), func_3(Struct_2(arg_0, vec2<u32>(1u, 28184u), vec4<bool>(false, var_2.c, arg_0.c, arg_1.c)), Struct_1(var_2.a, arg_1.b, false), var_2.c, true), arg_0.c), vec4<bool>(var_2.c, any(vec3<bool>(arg_1.c, false, var_2.c)), true == arg_1.c, false)), abs(-32069i) << (~arg_0.b % 32u)), select(vec4<bool>(arg_0.c, arg_1.c, true, any(!global0[_wgslsmith_index_u32(53102u, 24u)])), func_4(Struct_2(Struct_1(global1.yy, 888u, true), vec2<u32>(var_2.b, 33471u) | vec2<u32>(arg_0.b, var_2.b), vec4<bool>(var_2.c, false, true, true)), (u_input.b & u_input.b) & select(u_input.b, u_input.b, true)), select((36865i | u_input.a.x) != min(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(-var_2.a.x) == _wgslsmith_f_op_f32(-arg_0.a.x), firstTrailingBit(-2147483647i) != u_input.b)), !func_4(Struct_2(Struct_1(vec2<f32>(1632f, -895f), 50426u, arg_1.c), vec2<u32>(9129u, arg_1.b) ^ vec2<u32>(6718u, var_2.b), !vec4<bool>(arg_1.c, true, false, arg_1.c)), ~u_input.b).x);
    global1 = vec4<f32>(1000f, -109f, arg_0.a.x, 1368f);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(2203f)), -1041f) + vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), var_2.a.x))), func_3(Struct_2(arg_0, _wgslsmith_add_vec2_u32(select(vec2<u32>(35235u, 0u), vec2<u32>(var_2.b, var_2.b), arg_1.c), ~vec2<u32>(arg_1.b, arg_0.b)), func_4(Struct_2(arg_1, vec2<u32>(arg_1.b, 48222u), vec4<bool>(var_2.c, arg_0.c, arg_0.c, var_2.c)), 0i)), arg_0, true, 2147483647i >= _wgslsmith_sub_i32(u_input.b, u_input.b >> (arg_1.b % 32u))).x, !(_wgslsmith_f_op_f32(480f * _wgslsmith_div_f32(arg_1.a.x, arg_1.a.x)) < 504f));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-822f * arg_0.a.x), _wgslsmith_f_op_f32(arg_1.a.x * -297f), -323f, 2144f) - vec4<f32>(arg_1.a.x, 1f, global1.x, _wgslsmith_f_op_f32(-112f + arg_0.a.x))))));
    var var_1 = Struct_2(arg_0, vec2<u32>(31127u, abs(arg_1.b)), !select(select(func_4(Struct_2(arg_1, vec2<u32>(0u, arg_1.b), vec4<bool>(true, arg_1.c, arg_0.c, true)), u_input.a.x), vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c), vec4<bool>(arg_1.c, true, arg_1.c, arg_1.c)), !func_4(Struct_2(Struct_1(arg_1.a, 53602u, false), vec2<u32>(32703u, 4294967295u), vec4<bool>(true, arg_0.c, false, arg_1.c)), u_input.a.x), true));
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(114f)) - -1165f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-743f)) * _wgslsmith_f_op_f32(ceil(837f))), 365f, _wgslsmith_div_f32(456f, var_0.x))), _wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1795f, 987f, global1.x, global1.x), _wgslsmith_f_op_vec4_f32(-var_0))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(var_0)), _wgslsmith_div_vec4_f32(var_0, var_0))))));
    let var_2 = ~_wgslsmith_dot_vec3_i32(-(min(vec3<i32>(u_input.a.x, u_input.a.x, u_input.b), vec3<i32>(u_input.a.x, -3105i, u_input.a.x)) << ((vec3<u32>(0u, 0u, 81522u) & vec3<u32>(23151u, arg_0.b, arg_0.b)) % vec3<u32>(32u))), vec3<i32>(-1i, 2147483647i, -abs(2147483647i)));
    let var_3 = false;
    return arg_0.b;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> vec4<f32> {
    var var_0 = ~_wgslsmith_mod_vec2_u32(abs(~vec2<u32>(arg_0, 0u) ^ vec2<u32>(0u, 0u)), ~vec2<u32>(arg_0 & arg_1.b, 33167u));
    let var_1 = func_2(arg_1, func_2(Struct_1(arg_1.a, ~(~1u), any(vec2<bool>(true, true))), arg_1));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, var_1.a.x, arg_1.a.x, -2232f) * vec4<f32>(arg_1.a.x, -307f, -1272f, arg_2)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-546f, 344f, -2219f, arg_1.a.x) + _wgslsmith_div_vec4_f32(vec4<f32>(876f, -1343f, arg_2, 409f), vec4<f32>(896f, 348f, global1.x, -127f))))));
    global0 = array<vec2<bool>, 24>();
    var_0 = vec2<u32>(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(166f, -318f), vec2<f32>(-1900f, -161f), var_1.c))), ~arg_0, false), var_1).b, var_0.x);
    return vec4<f32>(global1.x, arg_1.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2002f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-940f)))), arg_1.a.x, any(vec2<bool>(var_1.c, var_1.c))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: u32) -> u32 {
    let var_0 = vec2<i32>(-1i, i32(-1i) * -u_input.a.x);
    var var_1 = _wgslsmith_div_u32(0u, ~1u);
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-473f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - 1000f), _wgslsmith_f_op_f32(-global1.x))), -1033f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), global1.x) - _wgslsmith_f_op_vec4_f32(func_6(arg_2, Struct_1(vec2<f32>(323f, _wgslsmith_f_op_f32(-global1.x)), func_5(func_2(Struct_1(global1.ww, arg_2, false), Struct_1(vec2<f32>(global1.x, 425f), 26991u, arg_0.x)), Struct_1(global1.zx, 7337u, arg_0.x), 1u), false), _wgslsmith_f_op_f32(-global1.x), firstLeadingBit(u_input.a))));
    var_1 = _wgslsmith_mod_u32(abs(14145u), 36294u);
    let var_2 = 65057u;
    return ~5885u;
}

fn func_7(arg_0: bool, arg_1: vec2<u32>, arg_2: u32) -> Struct_2 {
    global0 = array<vec2<bool>, 24>();
    let var_0 = Struct_2(func_2(func_2(func_2(Struct_1(global1.xw, arg_2, arg_0), func_2(Struct_1(global1.xw, 0u, arg_0), Struct_1(global1.wy, 4294967295u, true))), func_2(func_2(Struct_1(vec2<f32>(global1.x, global1.x), arg_1.x, true), Struct_1(global1.zy, 0u, true)), Struct_1(global1.zz, 24466u, arg_0))), func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), arg_1.x, false), func_2(func_2(Struct_1(global1.wz, arg_2, arg_0), Struct_1(global1.yy, arg_2, false)), func_2(Struct_1(global1.xy, 4294967295u, arg_0), Struct_1(global1.zw, arg_2, true))))), ~(~min(arg_1 >> (arg_1 % vec2<u32>(32u)), ~vec2<u32>(arg_1.x, 4294967295u))), !(!vec4<bool>(true, arg_0, true, true || arg_0)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.a.a.x)), -585f, -1106f);
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_0.a.a.x, 434f, var_0.a.a.x), vec4<f32>(451f, -1000f, 1000f, var_0.a.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(562f, var_1.x, var_1.x, -729f))), false)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(var_1.x - -176f)) + _wgslsmith_f_op_f32(1f + 596f)), _wgslsmith_f_op_f32(f32(-1f) * -1062f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -572f) * -1330f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.x) + var_1.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1286f, -2251f, _wgslsmith_f_op_f32(-1471f - _wgslsmith_f_op_f32(-global1.x)), var_1.x), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, 507f, 784f, var_0.a.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -220f, -556f, -156f) + vec4<f32>(var_0.a.a.x, 617f, var_0.a.a.x, var_0.a.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(644f, var_1.x, var_0.a.a.x, var_0.a.a.x))), !(!(!vec4<bool>(false, true, true, var_0.a.c))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(!(global1.x < _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1081f), global1.x)), vec2<u32>(~func_1(vec2<bool>(true, true), true, ~39745u), _wgslsmith_mod_u32(8081u >> (1u % 32u), ~func_5(Struct_1(vec2<f32>(global1.x, global1.x), 0u, true), Struct_1(global1.wz, 0u, false), 1u))), firstTrailingBit(~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.b, _wgslsmith_div_i32(u_input.b, -1i), _wgslsmith_clamp_i32(reverseBits(u_input.b ^ -18226i), u_input.b, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.b, 40908i), u_input.b >> (var_0.b.x % 32u), countOneBits(u_input.b), -11849i << (0u % 32u)), abs(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(547f - -573f), _wgslsmith_f_op_f32(global1.x - 1565f)))), var_0.a.a.x, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -752f), !var_0.c.x)));
}

