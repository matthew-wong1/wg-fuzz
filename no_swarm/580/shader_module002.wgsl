struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: vec4<f32>,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: Struct_3,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: bool) -> bool {
    var var_0 = arg_2;
    let var_1 = arg_1;
    var_0 = false;
    var_0 = arg_0 <= arg_1.c.x;
    var_0 = all(!vec3<bool>(arg_2 && !arg_2, !arg_2 | true, arg_1.b.x));
    return !var_1.b.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_1) -> bool {
    let var_0 = Struct_5(countOneBits(~vec2<i32>(arg_0.a.a, u_input.a)), _wgslsmith_f_op_f32(step(873f, 1362f)), 0i, Struct_3(reverseBits(_wgslsmith_clamp_i32(-37472i, arg_3.a, -32059i)), Struct_1(1i), vec4<f32>(1f, -2605f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(986f, -700f) - 380f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(251f, 1644f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -105f), 1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1920f - -1144f))), Struct_1(arg_3.a)), vec2<u32>(~arg_1.x >> (118007u % 32u), arg_1.x) >> (~min(select(vec2<u32>(arg_1.x, 4294967295u), vec2<u32>(4294967295u, u_input.b.x), vec2<bool>(arg_2, arg_2)), ~vec2<u32>(arg_1.x, arg_1.x)) % vec2<u32>(32u)));
    let var_1 = Struct_4(true, vec2<bool>(var_0.b > _wgslsmith_f_op_f32(exp2(var_0.b)), arg_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d.c + var_0.d.c))), ~0u, Struct_3(51738i, Struct_1(0i ^ var_0.d.b.a), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1849f), 1454f), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1762f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.d, var_0.b) - _wgslsmith_f_op_f32(round(var_0.d.d)))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.d.c.x, var_0.b), 1967f), arg_3));
    var var_2 = min(~_wgslsmith_div_u32(7031u, var_0.e.x) ^ u_input.b.x, min(~(~(var_0.e.x ^ var_0.e.x)), ~max(firstLeadingBit(5523u), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x))));
    var_2 = 4294967295u << (_wgslsmith_sub_u32(abs(_wgslsmith_dot_vec2_u32(u_input.b.wz ^ u_input.b.yz, vec2<u32>(var_0.e.x, 1u))), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e.x, 1u, var_1.d), vec3<u32>(u_input.b.x, 54329u, u_input.b.x)) | (_wgslsmith_clamp_u32(140751u, var_0.e.x, arg_1.x) >> (max(var_1.d, 15202u) % 32u))) % 32u);
    var var_3 = arg_1.x;
    return true;
}

fn func_2() -> Struct_4 {
    let var_0 = select(vec3<bool>(!((107185u & u_input.b.x) < firstTrailingBit(u_input.b.x)), func_4(Struct_2(Struct_1(8536i)), _wgslsmith_div_vec4_u32(u_input.b, ~vec4<u32>(1u, 19736u, 16723u, u_input.b.x)), any(vec4<bool>(true, false, false, false)) && func_3(728f, Struct_4(false, vec2<bool>(true, false), vec4<f32>(-297f, -1236f, -1184f, -1593f), u_input.b.x, Struct_3(u_input.a, Struct_1(u_input.a), vec4<f32>(-588f, -591f, -714f, -303f), -760f, Struct_1(-9987i))), true), Struct_1(firstLeadingBit(0i))), true), vec3<bool>(true, (u_input.b.x | ~u_input.b.x) == firstTrailingBit(~17420u), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1701f, -602f))) > -2119f), select(vec3<bool>(!func_4(Struct_2(Struct_1(-1i)), u_input.b, true, Struct_1(32301i)), true, all(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(u_input.a <= -2147483647i, false, any(vec4<bool>(false, false, false, false)))), vec3<bool>(all(vec3<bool>(true, true, true)), true, true | any(vec3<bool>(true, false, true)))));
    let var_1 = Struct_1(-28137i);
    var var_2 = max(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(_wgslsmith_mult_u32(0u, 29823u)), _wgslsmith_div_u32(~u_input.b.x, firstLeadingBit(1u)), max(u_input.b.x, firstLeadingBit(u_input.b.x))), vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 1u, 4294967295u) | _wgslsmith_mod_vec3_u32(vec3<u32>(18667u, u_input.b.x, u_input.b.x) << (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), u_input.b.yxw)), u_input.b.x & _wgslsmith_mult_u32(~1u, u_input.b.x));
    var var_3 = var_0.x;
    let var_4 = Struct_4(!any(select(!vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x), select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, false, true, var_0.x), var_0.x))), !vec2<bool>(func_4(Struct_2(var_1), ~u_input.b, var_0.x, Struct_1(u_input.a)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1926f, -473f), 326f, _wgslsmith_f_op_f32(1539f - -356f), _wgslsmith_f_op_f32(711f + 1753f)))), 4294967295u, Struct_3(_wgslsmith_mult_i32(firstLeadingBit(-2147483647i), 2258i), var_1, vec4<f32>(-1087f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(749f, 1906f, true))), _wgslsmith_f_op_f32(1081f + _wgslsmith_f_op_f32(f32(-1f) * -927f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-984f * -556f) + 658f)), _wgslsmith_f_op_f32(step(-201f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-329f))))), Struct_1(_wgslsmith_div_i32(_wgslsmith_add_i32(var_1.a, var_1.a), countOneBits(u_input.a)))));
    return var_4;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: i32) -> Struct_4 {
    var var_0 = func_2();
    var_0 = func_2();
    var_0 = func_2();
    let var_1 = abs(firstTrailingBit(vec2<u32>(~32754u, arg_0))) | u_input.b.wz;
    var_0 = Struct_4(false || var_0.b.x, !select(var_0.b, var_0.b, vec2<bool>(true, var_0.a)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1091f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -170f))), -103f, 231f))), _wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(arg_0 >> (~1u % 32u), var_1.x)), Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-38202i, -var_0.e.b.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), arg_1), -arg_2), max(vec4<i32>(18040i, 2147483647i, -1i, 14796i) << (vec4<u32>(var_1.x, 4294967295u, 36913u, 26100u) % vec4<u32>(32u)), vec4<i32>(u_input.a, u_input.a, 0i, 24378i))), var_0.e.e, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1329f) + var_0.c.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.e.c.x + var_0.e.c.x))), 1452f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x) * var_0.e.d)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1108f, var_0.e.d)))), var_0.c.x)), Struct_1(arg_1.x)));
    return Struct_4(var_0.b.x, vec2<bool>(!(reverseBits(var_0.d) <= 1u), max(4294967295u, reverseBits(u_input.b.x)) < _wgslsmith_clamp_u32(~1u, _wgslsmith_mod_u32(30994u, u_input.b.x), ~u_input.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0.c, vec4<f32>(-445f, -1766f, -1000f, var_0.e.c.x)))) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -420f))), _wgslsmith_f_op_f32(f32(-1f) * -199f), -801f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-142f, 385f)) - _wgslsmith_f_op_f32(floor(var_0.c.x))))), arg_0, Struct_3(max(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, var_0.e.e.a), arg_1), arg_1), min(u_input.a, _wgslsmith_mult_i32(var_0.e.a, 1i))), Struct_1(func_2().e.e.a), var_0.c, -728f, Struct_1(_wgslsmith_mod_i32(-33155i, _wgslsmith_dot_vec4_i32(vec4<i32>(-18423i, 11167i, 0i, arg_2), vec4<i32>(2147483647i, 2147483647i, 23075i, 2147483647i))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, u_input.b.x != 4294967295u, true), vec4<bool>(false, true, u_input.a <= 2147483647i, true)), true), vec4<bool>(!any(vec3<bool>(true, false, false)), any(vec4<bool>(true, true, true, true)), true == (true & all(vec4<bool>(false, true, true, true))), all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), vec2<bool>(true, true)))), false);
    let var_1 = func_1(abs(u_input.b.x), -vec2<i32>(u_input.a, -9590i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), ~vec3<i32>(-1715i, u_input.a, -9857i)), ~vec3<i32>(-2147483647i, -2147483647i, 2147483647i)), vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(25507i, u_input.a, u_input.a), vec3<i32>(-2147483647i, -2147483647i, u_input.a))));
    let var_2 = u_input.b;
    var var_3 = func_2().e.b;
    var var_4 = var_2.wwy;
    var var_5 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.d - var_1.e.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_add_u32(u_input.b.x, var_4.x)), _wgslsmith_clamp_u32(min(1u, 17030u), var_1.d, 1u)), 6507u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(795f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2063f, var_5.x))))), ~vec4<i32>(var_1.e.a, select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, -25586i), vec3<i32>(-33271i, 1i, -1i)), i32(-1i) * -35582i, var_1.a), u_input.a, var_1.e.b.a), var_2.x, _wgslsmith_clamp_vec2_i32(-vec2<i32>(var_1.e.a, i32(-1i) * -2147483647i), vec2<i32>(-1i) * -(vec2<i32>(var_1.e.b.a, u_input.a) | vec2<i32>(-5682i, 16657i)), abs(select(~vec2<i32>(var_1.e.e.a, 12026i), vec2<i32>(29010i, 42383i), var_1.d > u_input.b.x))));
}

