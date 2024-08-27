struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32;

var<private> global2: Struct_2 = Struct_2(false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))) + arg_0));
    return true;
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    global0 = Struct_2(_wgslsmith_f_op_f32(-arg_0.x) == arg_0.x);
    global2 = Struct_2(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(980f, _wgslsmith_f_op_f32(-arg_0.x))) - arg_0.x)));
    var var_0 = Struct_1(abs(vec4<i32>(-1i, ~0i, _wgslsmith_clamp_i32(u_input.a, u_input.a, -21337i), min(u_input.a, u_input.a))));
    let var_1 = Struct_2(true);
    var_0 = Struct_1(-var_0.a);
    return ~((_wgslsmith_dot_vec3_u32(~vec3<u32>(17386u, 0u, 9357u), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 26224u, 10293u), vec3<u32>(0u, 0u, 1u))) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(17411u, 0u, 1u, 1u), vec4<u32>(3865u, 28376u, 1u, 4294967295u)), vec4<u32>(60604u, 12592u, 0u, 40557u))) & 1u);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-206f)), _wgslsmith_f_op_f32(-964f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, 1312f)) - _wgslsmith_f_op_f32(floor(arg_0.x)))))));
    var var_1 = ~(~vec3<u32>(1u, 1u, 1u));
    var var_2 = Struct_2(arg_1.a);
    let var_3 = vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(var_1.x, var_1.x, var_1.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, 64840u), max(vec2<u32>(0u, 42513u), vec2<u32>(0u, 1u)))), ~1u, ~13683u) | vec3<u32>(select(~(~1u), 4294967295u, all(select(vec3<bool>(true, arg_1.a, global2.a), vec3<bool>(false, global2.a, global2.a), false))), var_1.x, func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1541f)))));
    let var_4 = Struct_1((vec4<i32>(u_input.a, 12631i, firstTrailingBit(u_input.a), ~u_input.a) ^ ~countOneBits(vec4<i32>(-1i, 1i, -2147483647i, u_input.a))) >> (~abs(vec4<u32>(var_3.x, var_3.x, var_3.x, var_1.x) << (vec4<u32>(var_1.x, 1u, 7493u, var_1.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return var_4;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec3<bool>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 56562u, 0u), vec4<u32>(27353u, 0u, 4294967295u, 4814u)) | 1u) < ~(~_wgslsmith_div_u32(33874u, 1u)), (!(global2.a & true) && (_wgslsmith_mod_i32(u_input.a, 16208i) > (u_input.a ^ -36140i))) || true, global0.a);
    var var_1 = select(select(vec4<bool>(false, select(all(var_0.zz), all(vec2<bool>(false, global2.a)), !global2.a), true, global0.a), !(!vec4<bool>(false, true, global2.a, true)), true), select(!select(!vec4<bool>(global2.a, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, true, true), !vec4<bool>(global0.a, true, var_0.x, global2.a)), !(!select(vec4<bool>(false, global0.a, false, false), vec4<bool>(global0.a, false, global2.a, true), false)), any(select(select(vec2<bool>(var_0.x, false), vec2<bool>(true, global2.a), vec2<bool>(global2.a, global0.a)), var_0.yz, vec2<bool>(global0.a, var_0.x)))), vec4<bool>(global0.a, all(vec3<bool>(select(true, false, var_0.x), !global2.a, any(vec4<bool>(true, true, true, true)))), false, all(!(!var_0.yy))));
    let var_2 = !any(!vec3<bool>(global2.a, false, true));
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(888f - 1696f)), _wgslsmith_f_op_f32(round(-304f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1082f + -625f), -784f))), Struct_2(!any(select(var_0, vec3<bool>(false, var_0.x, false), global2.a))));
    var var_4 = ~(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(48973u, 0u, 0u), countOneBits(vec3<u32>(75196u, 60582u, 13658u))), 1u));
    return Struct_1(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), Struct_2(global0.a)).a);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1198f, _wgslsmith_f_op_f32(f32(-1f) * -1135f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1833f))))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2440f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-867f))))))));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-895f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1034f - var_0.x))))), -861f);
    var var_1 = _wgslsmith_div_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(~(~43012u), 1u, 66460u));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -175f);
    global1 = -464f;
    return Struct_2(arg_1.a);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(floor(arg_1.x)))) <= 186f);
    let var_0 = any(select(select(!vec4<bool>(arg_0.a, global2.a, true, false), !vec4<bool>(global0.a, arg_0.a, arg_0.a, arg_0.a), select(vec4<bool>(global2.a, true, global2.a, false), vec4<bool>(arg_0.a, false, global0.a, global0.a), true)), vec4<bool>(1i <= u_input.a, false, false, !global0.a), vec4<bool>(select(arg_0.a, false, true), func_5(Struct_1(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)), Struct_2(global2.a), Struct_1(vec4<i32>(-2147483647i, u_input.a, -1i, u_input.a))).a, true, true))) & true;
    var var_1 = select(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(12018i, u_input.a, u_input.a, 54649i) | vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), func_2(vec4<f32>(arg_1.x, arg_1.x, -468f, arg_1.x), arg_0).a)) << (~vec4<u32>(1u, ~26449u, firstTrailingBit(4294967295u), select(0u, 50653u, true)) % vec4<u32>(32u)), vec4<i32>(u_input.a, -reverseBits(u_input.a ^ u_input.a), -(i32(-1i) * -69997i), _wgslsmith_mod_i32(reverseBits(func_4(Struct_1(vec4<i32>(-6553i, u_input.a, 2147483647i, -36629i))).a.x), _wgslsmith_add_i32(6064i, ~u_input.a))), arg_0.a);
    var var_2 = Struct_1(((vec4<i32>(-14873i, 67940i, -64785i, var_1.x) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) >> (vec4<u32>(~0u, select(0u, 104872u, arg_0.a), ~3846u, ~4294967295u) % vec4<u32>(32u))) << ((reverseBits(abs(vec4<u32>(0u, 1u, 0u, 39652u))) << (firstTrailingBit(vec4<u32>(97594u, 85935u, 5116u, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_3 = func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(284f, arg_1.x, -769f, _wgslsmith_f_op_f32(-arg_1.x))), Struct_2(arg_0.a)));
    return var_3;
}

fn func_7(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1343f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(392f - -183f))), _wgslsmith_f_op_f32(528f - -579f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(611f, -304f, -994f) - vec3<f32>(-1702f, 780f, 185f)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1852f, -1000f, -617f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1029f, -1761f, 522f), vec3<f32>(-478f, 373f, -825f)))))))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(449f)), _wgslsmith_f_op_f32(-128f - -1060f))), 155f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-170f, -368f))))))));
    var_0 = ~(~(-u_input.a));
    var var_2 = func_4(Struct_1(arg_2.a));
    var var_3 = arg_2;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -830f;
    var var_0 = Struct_2(any(!(!vec2<bool>(global2.a, global2.a))));
    var var_1 = func_7(vec2<u32>(4294967295u, firstTrailingBit(abs(~1u))), select(global0.a, func_1(1496f), !(!func_1(325f))), func_6(func_5(func_4(func_2(vec4<f32>(1009f, -810f, -1000f, 742f), Struct_2(var_0.a))), Struct_2(all(vec3<bool>(var_0.a, true, global2.a))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-740f, 664f, -274f, 1339f) + vec4<f32>(-1151f, -738f, 128f, 1000f)), Struct_2(var_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-342f, 293f, -674f)), vec3<f32>(1f, 1f, 1f)))), Struct_2(!all(vec4<bool>(global0.a, var_0.a, false, true))));
    var var_2 = 1f;
    global2 = Struct_2(!(true || (u_input.a <= -u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1295f - -948f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1173f, -794f)))), ~vec3<u32>(37998u, _wgslsmith_div_u32(~1951u, 43164u), ~0u), 4294967295u, select(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, ~25707u), ~vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u)), firstLeadingBit(max(select(vec2<u32>(8247u, 84962u), vec2<u32>(48693u, 5800u), vec2<bool>(true, false)), ~vec2<u32>(0u, 16535u))), global2.a));
}

