struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_4) -> i32 {
    var var_0 = vec3<u32>(u_input.a.x, 4294967295u, ~u_input.a.x) | _wgslsmith_sub_vec3_u32(select(min(~vec3<u32>(u_input.d, u_input.d, 0u), vec3<u32>(u_input.d, u_input.d, 1u) | vec3<u32>(u_input.d, 1u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 1u, 6248u), vec3<u32>(u_input.a.x, 42966u, 4294967295u) << (vec3<u32>(89978u, u_input.a.x, 4294967295u) % vec3<u32>(32u)), reverseBits(u_input.a)), true), vec3<u32>(u_input.d, 34904u, 76546u));
    var var_1 = vec2<i32>(34880i, arg_2.d.b);
    let var_2 = _wgslsmith_f_op_vec3_f32(arg_1.a * arg_2.c);
    var var_3 = Struct_1(var_2.x, _wgslsmith_div_i32((_wgslsmith_clamp_i32(5434i, -21161i, -12652i) & var_1.x) ^ abs(min(arg_0, -3882i)), abs(arg_0)));
    var_3 = arg_2.d;
    return -arg_2.d.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool) -> bool {
    let var_0 = abs(-55388i);
    var var_1 = ~_wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 21629u), u_input.a.yx) ^ vec2<u32>(~0u, u_input.a.x), u_input.a.yz);
    let var_2 = (((firstTrailingBit(vec4<i32>(1i, arg_0.b, arg_1.x, arg_0.b)) << (vec4<u32>(4294967295u, var_1.x, var_1.x, 37380u) % vec4<u32>(32u))) & (vec4<i32>(-1i) * -vec4<i32>(arg_1.x, arg_1.x, var_0, 2147483647i))) << (~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(7142u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(56346u, 61930u, 0u, 33168u), vec4<u32>(var_1.x, u_input.d, var_1.x, u_input.d)), select(vec4<u32>(var_1.x, 24479u, 37632u, var_1.x), vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x), vec4<bool>(arg_2, arg_2, true, true))) % vec4<u32>(32u))) >> (~_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.d, u_input.a.x, var_1.x, 4294967295u), ~vec4<u32>(u_input.a.x, 39801u, u_input.d, u_input.d), select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, false, arg_2), true)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_1.x, 0u, var_1.x), abs(vec4<u32>(u_input.a.x, var_1.x, 1u, u_input.a.x)))) % vec4<u32>(32u));
    let var_3 = _wgslsmith_sub_i32(select(-1i, _wgslsmith_dot_vec3_i32(u_input.b, ~_wgslsmith_div_vec3_i32(arg_1, vec3<i32>(arg_1.x, 2147483647i, arg_0.b))), arg_2), ~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_0, arg_0.b, arg_0.b), vec4<i32>(var_0, var_0, arg_0.b, arg_0.b)), var_2 & vec4<i32>(var_0, arg_1.x, 1i, var_0)), min(abs(var_2), var_2)));
    var_1 = u_input.a.xx;
    return any(vec3<bool>(false, false, (_wgslsmith_f_op_f32(-arg_0.a) > 1712f) | (!arg_2 || arg_2)));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: f32) -> f32 {
    let var_0 = !(any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), true)) | !(_wgslsmith_f_op_f32(step(arg_2, -1602f)) < _wgslsmith_div_f32(arg_2, arg_2)));
    let var_1 = select(vec4<bool>(!var_0, true, false, func_4(Struct_1(_wgslsmith_f_op_f32(771f + -1905f), 0i), u_input.b, ~0i <= func_3(u_input.b.x, Struct_3(vec3<f32>(arg_2, arg_2, arg_2)), Struct_4(arg_2, vec4<f32>(440f, -424f, -210f, arg_2), vec3<f32>(arg_2, -725f, arg_2), Struct_1(1062f, 0i))))), vec4<bool>(any(!select(vec3<bool>(true, false, var_0), vec3<bool>(var_0, false, true), false)), !((u_input.b.x >> (u_input.d % 32u)) <= 10848i), var_0, !any(vec2<bool>(var_0, true)) | true), vec4<bool>(!any(vec2<bool>(var_0, var_0)), var_0, true, true));
    var var_2 = Struct_4(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_2, arg_2), _wgslsmith_f_op_f32(exp2(arg_2)), arg_2, _wgslsmith_f_op_f32(-arg_2)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-580f, -1000f, arg_2, -638f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1054f, -604f, arg_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, -275f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2, -1000f, arg_2)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1361f, arg_2, 898f)))) - vec3<f32>(arg_2, _wgslsmith_f_op_f32(arg_2 + -374f), _wgslsmith_f_op_f32(-arg_2)))), Struct_1(-181f, -42705i));
    var var_3 = 74600u;
    let var_4 = u_input.b;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_2.c.x))));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_1(712f, u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a, -2147483647i, var_0.a)))), var_0.a, _wgslsmith_f_op_f32(1214f - -1198f)));
    var_0 = Struct_1(121f, min(0i, ~_wgslsmith_add_i32(abs(19843i), _wgslsmith_mult_i32(u_input.c, u_input.c))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1198f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x + var_1.x))), _wgslsmith_f_op_f32(ceil(var_1.x)))));
    let var_2 = false;
    return Struct_4(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(472f * -390f)), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-559f * var_1.x) - _wgslsmith_f_op_f32(var_0.a * var_0.a)))), vec3<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 1241f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(exp2(var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_1.x)))))), Struct_1(925f, _wgslsmith_div_i32(-1003i, u_input.c ^ -77467i)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_3) -> vec3<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b), vec4<f32>(-1122f, 967f, -229f, arg_0.d.a))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(539f * -878f), arg_1.a.x, _wgslsmith_div_f32(arg_0.b.x, -360f), arg_2.a.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b * arg_0.b)))), func_1().d);
    let var_1 = true;
    var var_2 = _wgslsmith_sub_i32(abs(_wgslsmith_sub_i32(u_input.c, ~(arg_0.d.b | 0i))), select(u_input.b.x, 1i, true));
    var var_3 = ~vec4<u32>(~(~_wgslsmith_mult_u32(u_input.d, u_input.d)), _wgslsmith_mult_u32(8381u, u_input.a.x), u_input.a.x, abs(16111u));
    var_0 = Struct_2(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(1811f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1186f)))), -809f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-957f, _wgslsmith_f_op_f32(arg_2.a.x + var_0.a.x), -1476f == arg_2.a.x)) + _wgslsmith_f_op_f32(-1159f - _wgslsmith_f_op_f32(sign(arg_1.a.x))))), var_0.b);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b.wwy * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(982f, arg_2.a.x, _wgslsmith_f_op_f32(-arg_1.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_div_f32(1500f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1173f + -1072f) * _wgslsmith_f_op_f32(ceil(194f))) + _wgslsmith_f_op_f32(f32(-1f) * -196f))), vec4<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(199f, 120f, false)), _wgslsmith_div_f32(-1000f, 311f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2029f + -1475f), 1f), -711f), 1936f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-325f + _wgslsmith_f_op_f32(floor(-2038f))))), _wgslsmith_f_op_vec3_f32(func_5(func_1(), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1852f, -605f, 1868f) + vec3<f32>(-1032f, 1000f, -661f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-634f, 1000f, -1000f))))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(805f, -1493f, 714f), vec3<f32>(-602f, 1449f, 1403f), vec3<bool>(true, true, true))))))), Struct_1(-751f, u_input.b.x));
    let var_1 = var_0.d;
    var var_2 = Struct_2(var_0.b, var_0.d);
    let var_3 = _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32((abs(vec4<u32>(54420u, u_input.a.x, 4294967295u, u_input.a.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 48494u, u_input.a.x)) % vec4<u32>(32u))) | ~firstTrailingBit(vec4<u32>(1u, 0u, u_input.a.x, 1u)), abs(~vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), firstLeadingBit(u_input.d)), 52293u >> (0u % 32u)), u_input.d, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.d, u_input.a.x)), vec2<u32>(u_input.a.x, 46382u) ^ u_input.a.zx), _wgslsmith_sub_u32(4294967295u, 15617u)), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.d) ^ vec4<u32>(u_input.d, 1u, 1462u, 4294967295u)), min(~vec4<u32>(u_input.a.x, u_input.d, 76242u, 54527u), vec4<u32>(0u, 1126u, u_input.a.x, 4294967295u)))));
    var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-469f + _wgslsmith_f_op_f32(ceil(-1153f))), var_1.a, var_2.a.x, 1169f), Struct_1(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(435f + 1274f)), -(_wgslsmith_mult_i32(2147483647i, var_1.b) & ~var_2.b.b)));
    let var_4 = Struct_2(vec4<f32>(1000f, 1008f, -344f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1349f + _wgslsmith_f_op_f32(-var_0.c.x)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a), -515f)))), var_1);
    let var_5 = ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(abs(~u_input.b), ~_wgslsmith_div_vec3_i32(vec3<i32>(-46842i, u_input.b.x, var_2.b.b), u_input.b)), i32(-1i) * -reverseBits(33912i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_sub_i32(abs(_wgslsmith_clamp_i32(u_input.b.x, -1i, var_2.b.b)), 0i), ~var_1.b << (35845u % 32u)), firstLeadingBit(~min(15564u >> (u_input.a.x % 32u), max(31971u, 23481u))), var_4.b.a);
}

