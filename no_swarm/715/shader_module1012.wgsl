struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: bool) -> vec3<u32> {
    var var_0 = 1u;
    var_0 = u_input.c.x;
    var var_1 = -arg_0;
    var_0 = firstLeadingBit(u_input.c.x);
    var_0 = 1u;
    return vec3<u32>(u_input.c.x ^ u_input.c.x, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c.x << (28672u % 32u), ~u_input.c.x)), (vec2<u32>(4294967295u, u_input.c.x) ^ ~vec2<u32>(54619u, u_input.c.x)) << (u_input.c.yx % vec2<u32>(32u))), u_input.c.x);
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.c.x, u_input.c.x | u_input.c.x, 4294967295u, _wgslsmith_div_u32(u_input.c.x, u_input.c.x)) ^ (firstTrailingBit(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x)) >> ((vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x) << (vec4<u32>(4294967295u, u_input.c.x, 4294967295u, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(u_input.c.x, u_input.c.x, ~1u, abs(u_input.c.x))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(665f, 509f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-123f, 1639f)))))) - _wgslsmith_f_op_f32(1284f - _wgslsmith_div_f32(603f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -327f) - _wgslsmith_div_f32(361f, 934f)))));
    var var_2 = Struct_4(Struct_1(~(vec4<u32>(0u, 33024u, 4294967295u, u_input.c.x) & vec4<u32>(32029u, u_input.c.x, u_input.c.x, 23365u))), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-253f, -299f, 1060f, -738f)), vec4<f32>(-759f, -1000f, 178f, -1282f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1537f, -1000f, -465f, -1274f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1276f, 1000f, -684f)), vec2<u32>(~abs(_wgslsmith_clamp_u32(var_0.a.x, u_input.c.x, 18195u)), 1u));
    return select(vec4<bool>(!((i32(-1i) * -1i) > (u_input.e.x | -38859i)), var_2.b, var_2.c.x > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.c.x))), any(!vec2<bool>(true, var_2.b))), select(!select(!vec4<bool>(var_2.b, false, true, true), !vec4<bool>(true, true, false, var_2.b), any(vec4<bool>(var_2.b, var_2.b, var_2.b, var_2.b))), !(!select(vec4<bool>(var_2.b, var_2.b, true, true), vec4<bool>(var_2.b, false, var_2.b, var_2.b), var_2.b)), !vec4<bool>(true, false, var_2.b, 4294967295u < var_0.a.x)), true);
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = vec3<bool>(0i != min(arg_0, _wgslsmith_dot_vec4_i32(select(u_input.d, u_input.d, false), firstLeadingBit(u_input.d))), !all(func_3()), false);
    let var_1 = -630f;
    let var_2 = !(!vec2<bool>(var_0.x, false));
    let var_3 = Struct_2(Struct_1(~vec4<u32>(u_input.c.x, func_1(vec2<i32>(arg_0, arg_0), var_1, var_2.x).x, u_input.c.x & u_input.c.x, ~u_input.c.x)), Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 75735u, u_input.c.x), vec4<u32>(u_input.c.x, 18591u, 6743u, u_input.c.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(1u, u_input.c.x, 0u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x))), ~(~vec4<u32>(u_input.c.x, 0u, 0u, 4294967295u)), ~vec4<u32>(u_input.c.x, 1u, u_input.c.x, 0u))), Struct_1(min(~vec4<u32>(u_input.c.x, 1u, 11867u, 23241u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x), vec4<u32>(36744u, u_input.c.x, 24257u, 70114u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))) ^ ~(vec4<u32>(u_input.c.x, 5322u, 1u, u_input.c.x) | vec4<u32>(u_input.c.x, u_input.c.x, 9018u, u_input.c.x))));
    let var_4 = ~33966u;
    return var_3;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4) -> Struct_1 {
    let var_0 = arg_1.a.a.x;
    let var_1 = Struct_3(43369u, func_2(u_input.e.x).c, -vec4<i32>(~_wgslsmith_mod_i32(-42705i, u_input.e.x), 1i, u_input.d.x | 2147483647i, u_input.d.x), Struct_1(arg_1.a.a), u_input.d.x);
    let var_2 = _wgslsmith_dot_vec2_i32(select(-vec2<i32>(var_1.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, -2147483647i, var_1.e), var_1.c)), vec2<i32>(_wgslsmith_mod_i32(max(var_1.e, 2147483647i), _wgslsmith_sub_i32(u_input.a.x, 1530i)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, var_1.e), var_1.e, ~1i)), vec2<bool>(arg_2.b, true)), vec2<i32>(u_input.a.x, var_1.e));
    var var_3 = arg_2;
    var var_4 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.d.x >> (27794u % 32u), var_0, var_3.a.a.x, firstTrailingBit(var_1.b.a.x)), vec4<u32>(1u, _wgslsmith_mod_u32(0u, arg_2.d.x), var_3.d.x, _wgslsmith_mult_u32(4294967295u, u_input.c.x))) << (vec4<u32>(29995u, countOneBits(_wgslsmith_mod_u32(4294967295u, var_1.d.a.x)), ~67783u, arg_2.a.a.x) % vec4<u32>(32u)));
    return Struct_1(vec4<u32>(4294967295u, abs(~(~42025u)), ~27144u, 1u));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4) -> Struct_1 {
    return func_4(35558u, Struct_2(Struct_1(vec4<u32>(~4294967295u, arg_1.d.x, ~0u, min(arg_1.a.a.x, 0u))), Struct_1(arg_1.a.a), func_4(_wgslsmith_add_u32(firstTrailingBit(arg_1.a.a.x), 0u), func_2(firstTrailingBit(8343i)), Struct_4(Struct_1(arg_1.a.a), all(vec3<bool>(arg_1.b, true, arg_1.b)), arg_1.c, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, arg_1.d.x), arg_0.yx, arg_0.yx)))), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_5(_wgslsmith_mult_vec3_u32(~func_1(vec2<i32>(u_input.a.x, 751i), 1693f, true), ~(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u) ^ vec3<u32>(u_input.c.x, u_input.c.x, 1u))), Struct_4(func_4(~u_input.c.x, func_2(0i), Struct_4(Struct_1(vec4<u32>(29683u, u_input.c.x, u_input.c.x, 0u)), false, vec4<f32>(1135f, 1037f, 235f, -1431f), vec2<u32>(u_input.c.x, u_input.c.x))), all(vec3<bool>(false, false, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(855f, 2006f, -1619f, 103f) - vec4<f32>(1617f, -1229f, 2452f, -985f)) + vec4<f32>(514f, -1641f, -221f, 2430f)), abs(vec2<u32>(43795u, u_input.c.x)))), !(!all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1308f, _wgslsmith_f_op_f32(select(-1918f, -131f, true)), 1388f, 263f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-891f, _wgslsmith_f_op_f32(1762f - -1096f), -946f, 111f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1416f, 333f, 1378f, 1000f) + vec4<f32>(1955f, 569f, -407f, -1759f))), all(vec2<bool>(false, false)))))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(7329u, 0u, 96972u)), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4154u, 1u, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, 1u, u_input.c.x, 30504u)))), 1u));
    let var_1 = func_2(-1i);
    let var_2 = Struct_2(func_5(~firstTrailingBit(~var_0.a.a.wyz), var_0), func_4(var_0.d.x, func_2(-1i), Struct_4(var_0.a, !var_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-758f, -189f, 1326f, var_0.c.x)), reverseBits(var_1.b.a.xx) >> (var_1.a.a.wy % vec2<u32>(32u)))), var_1.b);
    var var_3 = func_2(firstTrailingBit(~(u_input.b.x << (u_input.c.x % 32u)) ^ _wgslsmith_dot_vec3_i32(u_input.a << (vec3<u32>(var_2.a.a.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), countOneBits(u_input.a))));
    var_3 = Struct_2(func_4(_wgslsmith_mult_u32(~(~1u), var_1.c.a.x), func_2(-abs(u_input.a.x)), Struct_4(Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(59437u, 49304u, 87434u, u_input.c.x), vec4<u32>(4622u, var_0.d.x, 15768u, var_1.b.a.x))), _wgslsmith_div_f32(var_0.c.x, -605f) <= -2065f, vec4<f32>(_wgslsmith_f_op_f32(246f * var_0.c.x), -489f, _wgslsmith_f_op_f32(var_0.c.x + -171f), var_0.c.x), (var_2.c.a.zz << (vec2<u32>(4294967295u, 76795u) % vec2<u32>(32u))) ^ _wgslsmith_sub_vec2_u32(var_2.a.a.xx, vec2<u32>(var_1.c.a.x, 28819u)))), Struct_1(vec4<u32>(4377u, u_input.c.x, var_2.c.a.x, _wgslsmith_dot_vec4_u32(var_1.a.a, var_2.b.a)) & ~abs(vec4<u32>(var_3.c.a.x, 1u, var_3.c.a.x, 4294967295u))), func_4(~_wgslsmith_clamp_u32(~var_3.c.a.x, var_1.b.a.x, ~u_input.c.x), var_2, Struct_4(Struct_1(select(var_3.a.a, vec4<u32>(var_1.b.a.x, 63592u, 1u, 37966u), vec4<bool>(var_0.b, var_0.b, false, var_0.b))), var_0.b || true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x) - var_0.c), var_0.c, true)), var_0.d)));
    var_3 = Struct_2(Struct_1(vec4<u32>(u_input.c.x, var_3.a.a.x, 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(95464u, var_3.a.a.x, 3154u), var_1.b.a.ywx >> (var_1.b.a.wzw % vec3<u32>(32u))))), func_4(13094u, var_2, Struct_4(func_2(select(-1i, u_input.e.x, var_0.b)).a, false, var_0.c, vec2<u32>(31842u, 48670u))), var_1.a);
    var_3 = Struct_2(func_4(abs(~(~var_0.a.a.x)), func_2(abs(u_input.d.x)), var_0), Struct_1(var_2.b.a), Struct_1(func_4(u_input.c.x, func_2(u_input.d.x), Struct_4(func_5(var_3.b.a.xzx, var_0), !var_0.b, var_0.c, ~var_3.b.a.xz)).a));
    let var_4 = Struct_3(abs(1u), Struct_1(max(vec4<u32>(firstTrailingBit(0u), 34542u, ~4294967295u, ~0u), vec4<u32>(30625u, var_3.b.a.x, 1u, func_2(u_input.b.x).c.a.x))), vec4<i32>(firstLeadingBit(-countOneBits(22513i)), u_input.a.x, i32(-1i) * -10354i, -8353i), var_1.a, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.e.yy);
}

