struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: f32,
    d: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_4 {
    return Struct_4(1u, Struct_3(~_wgslsmith_clamp_u32(1u, ~1u, 1u)), _wgslsmith_f_op_f32(ceil(1000f)), false);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5) -> Struct_5 {
    var var_0 = select(vec2<bool>(all(vec2<bool>(true, true)) && arg_0.d, true), select(vec2<bool>(1f == arg_0.c, false), vec2<bool>(!(!arg_0.d), !arg_0.d), all(!vec4<bool>(false, arg_0.d, true, true))), !vec2<bool>(true, !arg_0.d));
    var_0 = vec2<bool>(!any(vec2<bool>(true, true)), var_0.x);
    var_0 = select(vec2<bool>(false, !(_wgslsmith_f_op_f32(-arg_0.c) == _wgslsmith_f_op_f32(-arg_0.c))), vec2<bool>(true, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mod_i32(16357i, -1i)) < -(u_input.a & -40005i)), !any(select(vec2<bool>(var_0.x, false), !vec2<bool>(false, arg_0.d), arg_0.d)));
    var var_1 = Struct_1(reverseBits(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 9086u, arg_1.a, arg_1.a), vec4<u32>(arg_0.b.a, arg_1.a, arg_1.a, 0u) ^ vec4<u32>(arg_1.a, arg_0.b.a, 4294967295u, 0u)), vec4<u32>(_wgslsmith_clamp_u32(23801u, arg_1.a, 4294967295u), ~arg_1.a, 1u, ~4294967295u))), abs(select(abs(vec3<u32>(arg_0.a, 0u, 4294967295u)) | firstTrailingBit(vec3<u32>(arg_1.a, arg_1.a, 1u)), ~firstLeadingBit(vec3<u32>(arg_0.a, arg_0.b.a, arg_0.b.a)), !select(vec3<bool>(var_0.x, true, arg_0.d), vec3<bool>(arg_0.d, arg_0.d, false), true))), vec3<f32>(386f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(642f, -556f)) - _wgslsmith_f_op_f32(abs(-1308f)))), func_2().c), _wgslsmith_f_op_f32(f32(-1f) * -1132f));
    var_0 = !vec2<bool>(1u <= ~firstTrailingBit(0u), select(true, arg_0.d, false));
    return Struct_5(arg_1.a);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_4, arg_3: i32) -> Struct_5 {
    var var_0 = Struct_1(firstTrailingBit(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.b.a, 1u, arg_1.a, 4294967295u), vec4<u32>(arg_0.a, arg_0.a, arg_2.b.a, arg_2.b.a)))), ~_wgslsmith_mod_vec3_u32(~(~vec3<u32>(75587u, 1u, 1u)), ~(vec3<u32>(4294967295u, 4294967295u, 0u) & vec3<u32>(1u, arg_1.a, arg_0.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_2.c, arg_2.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.c * 1397f), 1862f)), _wgslsmith_f_op_f32(-arg_2.c))), _wgslsmith_f_op_f32(step(arg_2.c, 146f)));
    let var_1 = !arg_2.d;
    var var_2 = _wgslsmith_add_i32(-26477i, abs(~(~u_input.a)) ^ -22249i);
    var var_3 = 37108i;
    var var_4 = var_0.b.x;
    return Struct_5(~abs(var_0.b.x));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = func_4(func_3(func_2(), Struct_5(firstLeadingBit(43109u) << (countOneBits(0u) % 32u))), func_3(Struct_4(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(23695u, 1u, 0u, 33219u), vec4<u32>(101936u, 52644u, 4294967295u, 8021u)), vec4<u32>(1u, 1u, 1u, 1u)), func_2().b, _wgslsmith_f_op_f32(ceil(-271f)), true), func_3(func_2(), func_3(Struct_4(4294967295u, Struct_3(0u), 588f, arg_0), Struct_5(4294967295u)))), Struct_4((~1u << (firstTrailingBit(0u) % 32u)) & 27292u, func_2().b, 1521f, arg_0), max(u_input.a, u_input.a));
    let var_1 = Struct_1(abs(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a)) ^ ~vec4<u32>(1u, var_0.a, 25477u, var_0.a), ~select(vec4<u32>(var_0.a, 34051u, var_0.a, var_0.a), vec4<u32>(72189u, var_0.a, 4294967295u, var_0.a), vec4<bool>(true, arg_0, arg_0, false)))), (vec3<u32>(var_0.a, ~var_0.a, var_0.a) & vec3<u32>(max(var_0.a, var_0.a), firstTrailingBit(var_0.a), ~36471u)) & (vec3<u32>(var_0.a, var_0.a, firstTrailingBit(54422u)) | ~(~vec3<u32>(var_0.a, 82279u, var_0.a))), vec3<f32>(792f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1144f, -336f, arg_0))) - _wgslsmith_f_op_f32(f32(-1f) * -514f)), -361f), _wgslsmith_f_op_f32(ceil(-459f)));
    var var_2 = var_1.a.yx | vec2<u32>(~firstTrailingBit(25188u), var_0.a);
    let var_3 = false;
    var var_4 = _wgslsmith_sub_vec2_i32(~(countOneBits(countOneBits(vec2<i32>(u_input.a, 0i))) ^ abs(vec2<i32>(-2147483647i, u_input.a))), firstLeadingBit(vec2<i32>(u_input.a << (var_0.a % 32u), reverseBits(u_input.a | u_input.a))));
    return min(var_2.x, select(_wgslsmith_dot_vec2_u32(abs(max(var_1.b.zz, var_1.a.yz)), ~abs(var_1.a.yw)), 7039u, var_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(true));
    var var_1 = vec4<i32>(-13962i, _wgslsmith_div_i32(u_input.a, -(~1i)) << ((0u | _wgslsmith_add_u32(~var_0.a, var_0.a)) % 32u), abs(1i), u_input.a);
    let var_2 = Struct_2(vec2<f32>(func_2().c, _wgslsmith_f_op_f32(781f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-174f, -757f))))), Struct_1(abs(~(~vec4<u32>(59143u, 4294967295u, 74604u, 4294967295u))), vec3<u32>(4294967295u, ~15696u, var_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(305f * 1187f), _wgslsmith_f_op_f32(max(-2102f, 1000f)), 1704f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1127f * -446f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1157f))))), all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)))) && true, Struct_1(vec4<u32>(var_0.a, ~56844u, ~var_0.a, var_0.a), ~vec3<u32>(95582u, 0u, _wgslsmith_mod_u32(var_0.a, 4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1168f, 569f, 209f)) + vec3<f32>(963f, 1173f, 704f)) - vec3<f32>(_wgslsmith_f_op_f32(floor(338f)), -367f, -917f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-969f)), _wgslsmith_f_op_f32(-194f * 1113f), true))))), ~(~(~vec2<u32>(13105u, var_0.a))));
    var_1 = vec4<i32>(-abs(var_1.x), -_wgslsmith_clamp_i32(-abs(1i), _wgslsmith_div_i32(-57i, u_input.a ^ var_1.x), -2147483647i), _wgslsmith_add_i32(-6907i, countOneBits(u_input.a) | -(-60203i | var_1.x)), -5691i);
    var var_3 = var_0;
    var var_4 = func_2();
    let var_5 = Struct_3(var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(~_wgslsmith_sub_i32(29165i, u_input.a))), min(~(~vec4<i32>(29915i, -1i, 15473i, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 0i, -2147483647i, 2147483647i), vec4<i32>(u_input.a, -1i, 2147483647i, -57466i))) | abs(vec4<i32>(_wgslsmith_mod_i32(var_1.x, u_input.a), select(0i, u_input.a, var_2.c), -2147483647i, _wgslsmith_div_i32(var_1.x, u_input.a))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1342f, _wgslsmith_div_f32(-1338f, var_2.a.x), -1124f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.b.c.x - var_4.c), var_4.c, -222f)))));
}

