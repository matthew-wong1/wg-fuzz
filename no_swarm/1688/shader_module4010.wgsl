struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>) -> i32 {
    let var_0 = countOneBits(u_input.e.x);
    var var_1 = _wgslsmith_sub_i32(-1i, 0i) >= ~abs(arg_0.x);
    return 1i;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(~_wgslsmith_add_i32(firstTrailingBit(-2147483647i), _wgslsmith_mod_i32(50397i, -21984i)), countOneBits(5458i), _wgslsmith_add_i32(func_3(vec4<i32>(-13283i, u_input.d.x, u_input.b, u_input.d.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1547f, -329f, -955f, -1392f)))), ~(-1i) | select(-72077i, -2147483647i, false))) & _wgslsmith_mod_i32(~(u_input.b | -23750i), ~u_input.d.x);
    let var_1 = Struct_3(Struct_2(-_wgslsmith_sub_i32(u_input.b << (1u % 32u), -2147483647i), reverseBits(vec3<u32>(u_input.e.x, firstLeadingBit(u_input.e.x), ~1113u)), Struct_1(_wgslsmith_div_i32(-1i, 11328i) >= (u_input.d.x & 1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-602f, 327f, -1000f, 307f)), abs(-vec3<i32>(-16772i, -1i, var_0)), vec4<u32>(4294967295u, ~4294967295u, firstLeadingBit(u_input.e.x), _wgslsmith_clamp_u32(1u, u_input.e.x, 2627u))), true, vec4<u32>(1u, u_input.a, u_input.a, ~(u_input.e.x ^ u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2112f))))), var_0 | _wgslsmith_dot_vec2_i32(abs(~u_input.d.yy), reverseBits(reverseBits(vec2<i32>(-16612i, var_0)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(873f, 323f) * vec2<f32>(-2217f, 1100f))))))), _wgslsmith_dot_vec3_u32(u_input.e.ywz, vec3<u32>(0u, u_input.e.x, u_input.a >> (41622u % 32u))) ^ (~u_input.a << (4294967295u % 32u)));
    let var_2 = var_1.a.e.wy;
    let var_3 = select(select(!vec4<bool>(true, false, true, var_1.a.c.a), !(!vec4<bool>(false, var_1.a.c.a, true, var_1.a.d)), vec4<bool>(true, any(!vec2<bool>(var_1.a.d, true)), false, var_1.a.d)), !vec4<bool>(var_1.a.c.a, true && var_1.a.d, true, true), vec4<bool>(any(select(!vec4<bool>(var_1.a.d, var_1.a.d, var_1.a.c.a, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, var_1.a.c.a, var_1.a.d), var_1.a.d), false)), true, var_1.a.c.a, var_1.a.d));
    let var_4 = var_1;
    return Struct_1(var_1.a.d, vec4<f32>(var_4.d.x, -1447f, var_1.a.c.b.x, 981f), vec3<i32>(var_4.a.c.c.x, 13415i, u_input.c.x), ~select(_wgslsmith_div_vec4_u32(vec4<u32>(85597u, 22215u, 46140u, var_4.a.e.x), var_1.a.c.d), abs(vec4<u32>(0u, u_input.e.x, var_4.a.b.x, u_input.e.x)), !var_3) | ~vec4<u32>(~u_input.a, 1u, 1u, _wgslsmith_mult_u32(u_input.a, var_4.e)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec3<f32>) -> vec2<i32> {
    var var_0 = arg_0.a;
    var var_1 = true;
    var var_2 = ~vec4<i32>(_wgslsmith_clamp_i32(arg_2.a.a, -1i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_2.a.c.c.zy, arg_0.c.xz), arg_2.c)), ~arg_2.a.a, min(_wgslsmith_div_i32(-1i, -arg_0.c.x), -(64616i & arg_2.c)), arg_0.c.x);
    var_0 = false;
    let var_3 = select(~vec4<u32>(u_input.a, u_input.e.x, ~_wgslsmith_mod_u32(arg_2.e, 56561u), arg_2.a.c.d.x), vec4<u32>(5929u, arg_1.x, u_input.a, 4492u), select(vec4<bool>(!(822f != arg_3.x), select(true, true, false), arg_0.a, true), vec4<bool>(true, _wgslsmith_div_f32(1000f, -896f) > _wgslsmith_f_op_f32(arg_3.x * arg_2.a.c.b.x), all(vec4<bool>(arg_2.a.d, false, arg_2.a.d, false)) == (u_input.a >= 16529u), arg_0.a), select(vec4<bool>(any(vec3<bool>(arg_2.a.d, arg_0.a, true)), arg_0.a, arg_0.a, true), vec4<bool>(any(vec4<bool>(true, true, false, arg_2.a.d)), arg_2.a.c.a, arg_2.a.d, arg_0.a), vec4<bool>(func_2().a, true, var_2.x <= -21864i, arg_2.d.x <= 495f))));
    return vec2<i32>(arg_2.a.a, ~(-_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_2.x, u_input.c.x, arg_0.c.x), vec4<i32>(-2147483647i, 19316i, arg_0.c.x, 24775i)), ~vec4<i32>(-2147483647i, 0i, arg_2.c, var_2.x))));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = -647f;
    return func_4(func_2(), u_input.e.yz, Struct_3(arg_3, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_2)))), reverseBits(0i | arg_3.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(484f * -1000f) * func_2().b.x)), _wgslsmith_mult_u32(~arg_3.b.x, _wgslsmith_dot_vec2_u32(arg_3.b.xx, vec2<u32>(u_input.a, arg_3.b.x)) | (15375u << (0u % 32u)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-161f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-529f, -2056f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1924f * arg_3.c.b.x)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, var_0)) + _wgslsmith_f_op_f32(-881f + 331f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - 1054f) * _wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_f32(-var_0))));
}

fn func_5(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: f32, arg_3: f32) -> vec3<bool> {
    let var_0 = -(-26469i ^ _wgslsmith_mod_i32(u_input.b, 54263i));
    let var_1 = Struct_3(Struct_2(-43367i, vec3<u32>(abs(~u_input.e.x), firstLeadingBit(~u_input.a), ~arg_1.x), func_2(), func_2().a, u_input.e), arg_3, arg_0.a.x & _wgslsmith_sub_i32(u_input.c.x | _wgslsmith_sub_i32(5610i, 7877i), _wgslsmith_add_i32(u_input.d.x, var_0)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + -890f) * arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_2, arg_0.c, false)))) - arg_2)), _wgslsmith_add_u32(u_input.a, 1u));
    let var_2 = Struct_3(Struct_2(~reverseBits(45471i) << (var_1.e % 32u), abs(select(vec3<u32>(1u, arg_1.x, arg_1.x), ~vec3<u32>(30662u, var_1.e, 89295u), false)), var_1.a.c, true, var_1.a.c.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2)))), abs(-2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(668f, -472f), arg_0.b.xz)))), ~(~(~min(4294967295u, 4294967295u))));
    let var_3 = Struct_3(var_2.a, var_1.b, ~_wgslsmith_add_i32(_wgslsmith_div_i32(var_0, var_0) << (_wgslsmith_add_u32(u_input.e.x, 0u) % 32u), 4279i), arg_0.b.zy, ~10418u);
    let var_4 = var_3.a.a;
    return !(!select(select(!vec3<bool>(false, false, var_2.a.d), !vec3<bool>(var_2.a.d, var_3.a.c.a, false), !vec3<bool>(var_3.a.c.a, var_3.a.c.a, var_2.a.d)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(var_2.a.c.a, var_2.a.d, true)), var_1.a.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_5(max(func_1(vec3<f32>(182f, 1292f, 476f), any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(-258f - 747f), Struct_2(42121i, vec3<u32>(u_input.a, 6461u, 0u), Struct_1(false, vec4<f32>(655f, 1001f, -275f, -2440f), u_input.d, u_input.e), true, u_input.e)), _wgslsmith_add_vec2_i32(u_input.c.zz, vec2<i32>(u_input.d.x, u_input.c.x)) << (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-653f, -687f, 455f, 1225f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -845f), _wgslsmith_f_op_f32(ceil(235f))) * _wgslsmith_f_op_f32(f32(-1f) * -148f))), vec2<u32>(u_input.a, _wgslsmith_sub_u32(~1u, ~(~u_input.e.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(742f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 1000f, false)) + _wgslsmith_f_op_f32(trunc(-761f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1195f))), !any(vec3<bool>(false, true, false)))), -1471f);
    var_0 = func_5(Struct_5(u_input.c.xx, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1259f, 845f, 1680f, 579f) * vec4<f32>(-629f, -468f, 640f, -1242f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-819f, -384f, -665f, 953f), vec4<f32>(1183f, -515f, -120f, 848f), vec4<bool>(true, false, false, false)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1374f, -904f, -1694f, 1440f) * vec4<f32>(-1866f, -1913f, 122f, 193f))))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1199f - -170f) * 1f))), u_input.e.xw, _wgslsmith_f_op_f32(f32(-1f) * -2043f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -298f))) - _wgslsmith_f_op_f32(f32(-1f) * -494f))));
    var var_1 = vec4<u32>(~0u, ~_wgslsmith_mod_u32(~37283u, _wgslsmith_mult_u32(1u << (0u % 32u), _wgslsmith_sub_u32(u_input.e.x, 4294967295u))), 1u, 0u >> (~min(u_input.e.x, 1u) % 32u));
    var_0 = vec3<bool>(!func_2().a, ~(-1i) == countOneBits(u_input.d.x), false);
    let var_2 = Struct_3(Struct_2(-28057i, vec3<u32>(_wgslsmith_add_u32(u_input.e.x >> (24730u % 32u), var_1.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.e.x, 9348u), var_1.yzy), max(4294967295u, u_input.e.x >> (108391u % 32u))), Struct_1(var_0.x, vec4<f32>(_wgslsmith_f_op_f32(abs(1346f)), _wgslsmith_f_op_f32(step(1264f, -805f)), _wgslsmith_f_op_f32(146f + 1433f), _wgslsmith_f_op_f32(218f * 967f)), countOneBits(~u_input.d), vec4<u32>(max(4294967295u, u_input.e.x), 19241u << (0u % 32u), 0u, 1u)), any(var_0.xz), u_input.e), func_2().b.x, abs(func_4(func_2(), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 58197u), u_input.e.zy), Struct_3(Struct_2(-2147483647i, var_1.zxx, Struct_1(false, vec4<f32>(1000f, -1550f, -885f, 536f), vec3<i32>(4933i, u_input.c.x, u_input.b), vec4<u32>(u_input.a, 45972u, var_1.x, 16625u)), true, vec4<u32>(1u, 19656u, var_1.x, u_input.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1841f), abs(0i), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(274f, -1001f), vec2<f32>(917f, 2342f))), 36214u & u_input.e.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-140f, -833f, -638f))).x), vec2<f32>(556f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(func_2().b.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -399f), 631f))), _wgslsmith_sub_u32(reverseBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_1.x, 0u, 4294967295u), 3102u)), ~(_wgslsmith_clamp_u32(var_1.x, u_input.e.x, u_input.e.x) | ~u_input.e.x)));
    var var_3 = Struct_5(select(vec2<i32>(var_2.a.c.c.x, 0i), var_2.a.c.c.yy | vec2<i32>(var_2.c, _wgslsmith_div_i32(-1i, u_input.d.x)), false), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_2.a.c.b))), 1703f);
    let var_4 = ~((var_1.x | 4294967295u) << (~u_input.e.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(select(-vec4<i32>(var_3.a.x, firstLeadingBit(-4163i), 37064i, _wgslsmith_add_i32(-13493i, 33058i)), -vec4<i32>(-50739i, -18544i, var_3.a.x, 2147483647i) << (var_2.a.e % vec4<u32>(32u)), !(!var_0.x)), u_input.e.zwy);
}

