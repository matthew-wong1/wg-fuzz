struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    let var_0 = Struct_4(select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true), true), Struct_3(Struct_1(~select(vec3<i32>(arg_0.x, 1i, arg_0.x), u_input.c, vec3<bool>(true, true, true)), vec2<i32>(max(30376i, arg_0.x), u_input.c.x)), ~1i, u_input.b, Struct_2(~max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 1u))), Struct_1(_wgslsmith_div_vec3_i32(u_input.d.wwz, arg_0), arg_0.zy)), 1244f, any(vec3<bool>(select(true, true, true), true, false | (u_input.b != u_input.b))), Struct_1(u_input.d.xxy, vec2<i32>(countOneBits(~(-9314i)), u_input.d.x)));
    let var_1 = _wgslsmith_mult_u32(~1u >> (u_input.b % 32u), u_input.b | _wgslsmith_div_u32(firstTrailingBit(abs(u_input.b)), var_0.b.c));
    let var_2 = Struct_1(_wgslsmith_add_vec3_i32(var_0.e.a, vec3<i32>(~arg_0.x, 1i, arg_0.x)), vec2<i32>(-6695i, -44193i));
    let var_3 = Struct_2(abs(var_0.b.d.a) << (vec2<u32>(var_1, ~4294967295u >> (1u % 32u)) % vec2<u32>(32u)));
    let var_4 = ~1u;
    return ~var_2.a.x;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: i32) -> vec3<u32> {
    var var_0 = Struct_4(vec4<bool>(arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-502f + 958f), _wgslsmith_f_op_f32(ceil(-1302f)))) >= -740f, all(vec3<bool>(arg_1, all(vec2<bool>(false, arg_1)), true)), any(vec4<bool>(all(vec4<bool>(true, arg_1, arg_1, arg_1)), all(vec2<bool>(true, arg_1)), true, arg_1))), Struct_3(Struct_1(u_input.a.www, vec2<i32>(_wgslsmith_div_i32(-28975i, arg_0), -5287i)), arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, ~u_input.b, ~1u, u_input.b), vec4<u32>(~u_input.b, u_input.b, firstLeadingBit(59583u), u_input.b)), Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)))), Struct_1(reverseBits(vec3<i32>(arg_0, -1i, u_input.c.x)), ~(~vec2<i32>(u_input.c.x, arg_2)))), 865f, arg_1, Struct_1(min(max(max(vec3<i32>(-2147483647i, u_input.c.x, 0i), u_input.a.wxz), ~vec3<i32>(u_input.d.x, 2147483647i, 3898i)), vec3<i32>(arg_2, 1i, 47246i)), vec2<i32>(firstTrailingBit(17770i), func_3(_wgslsmith_div_vec3_i32(vec3<i32>(6845i, 1i, u_input.c.x), u_input.c)))));
    var_0 = Struct_4(select(vec4<bool>(any(var_0.a.yww), arg_1, true, all(select(var_0.a.zy, var_0.a.xz, arg_1))), !(!select(vec4<bool>(true, var_0.a.x, arg_1, var_0.d), vec4<bool>(var_0.d, arg_1, var_0.d, false), var_0.a)), var_0.a), Struct_3(Struct_1(vec3<i32>(u_input.c.x, -u_input.d.x, -1i), vec2<i32>(-arg_2, i32(-1i) * -26532i)), var_0.b.a.b.x, 17132u, var_0.b.d, Struct_1(_wgslsmith_clamp_vec3_i32(u_input.a.zwz, vec3<i32>(arg_0, arg_0, 2147483647i), ~vec3<i32>(var_0.e.b.x, -1i, 2147483647i)), ~vec2<i32>(arg_0, u_input.d.x) & _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.e.a.x, arg_2), vec2<i32>(var_0.b.e.b.x, u_input.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_div_f32(-213f, _wgslsmith_f_op_f32(f32(-1f) * -296f))) * _wgslsmith_f_op_f32(-var_0.c)), var_0.b.c == _wgslsmith_mod_u32(countOneBits(u_input.b), _wgslsmith_clamp_u32(u_input.b >> (var_0.b.d.a.x % 32u), ~u_input.b, var_0.b.d.a.x)), var_0.e);
    let var_1 = Struct_1(var_0.e.a, u_input.c.yz);
    let var_2 = Struct_4(vec4<bool>(true, all(!vec4<bool>(var_0.a.x, arg_1, false, var_0.a.x)), var_0.a.x, select(arg_1, true, arg_1)), var_0.b, var_0.c, any(!select(select(var_0.a.zxx, vec3<bool>(true, var_0.a.x, false), var_0.a.wzx), select(vec3<bool>(false, false, false), vec3<bool>(var_0.a.x, arg_1, true), arg_1), select(vec3<bool>(false, arg_1, true), var_0.a.zxz, vec3<bool>(arg_1, true, var_0.d)))), var_1);
    var var_3 = Struct_3(Struct_1(~reverseBits(vec3<i32>(10755i, 24588i, 1i)), u_input.c.yz | vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 50516i, -12782i, var_0.e.a.x), u_input.d), countOneBits(arg_2))), -(~arg_0), ~reverseBits(u_input.b), Struct_2(var_0.b.d.a << (var_2.b.d.a % vec2<u32>(32u))), var_2.e);
    return vec3<u32>(var_0.b.d.a.x, firstTrailingBit(max(firstLeadingBit(var_2.b.d.a.x), var_0.b.c)), firstLeadingBit(~var_3.c) >> (76882u % 32u));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> vec4<bool> {
    let var_0 = firstLeadingBit(vec3<u32>(u_input.b, ~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(10369u, 42502u) | vec2<u32>(0u, u_input.b), firstLeadingBit(vec2<u32>(u_input.b, u_input.b)))) << (min(_wgslsmith_mult_vec3_u32(vec3<u32>(167u, 31156u, 1u), vec3<u32>(9169u, 1u, 4583u) ^ vec3<u32>(140978u, 10023u, u_input.b)), func_4(-1i, all(vec3<bool>(false, false, true)), func_3(vec3<i32>(u_input.c.x, u_input.a.x, -2147483647i)))) % vec3<u32>(32u)));
    var var_1 = Struct_3(Struct_1(u_input.c, countOneBits(firstLeadingBit(-u_input.c.yy))), 32221i, ~(~(~(u_input.b & 4294967295u))), Struct_2(vec2<u32>(~(~0u), u_input.b)), Struct_1(-abs(u_input.c << (vec3<u32>(2582u, var_0.x, var_0.x) % vec3<u32>(32u))), vec2<i32>(1i, -select(2313i, 81407i, true))));
    var_1 = Struct_3(var_1.e, _wgslsmith_mult_i32(u_input.a.x | var_1.e.b.x, -67861i), 4294967295u, var_1.d, var_1.e);
    let var_2 = Struct_4(select(vec4<bool>(all(vec2<bool>(true, false)), false, true, select(true, false, any(vec4<bool>(true, false, true, false)))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec2<bool>(true, false)), any(vec4<bool>(true, true, false, true)), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), Struct_3(var_1.e, 2147483647i, var_1.d.a.x, var_1.d, var_1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(select(1537f, arg_0.x, false)))), _wgslsmith_f_op_f32(ceil(arg_0.x))), true, var_1.a);
    var_1 = Struct_3(var_2.b.a, -(~firstTrailingBit(var_2.b.e.a.x) << (4294967295u % 32u)), ~u_input.b, var_1.d, Struct_1(_wgslsmith_sub_vec3_i32(var_1.e.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, var_1.b, var_1.a.a.x), vec3<i32>(u_input.a.x, 2147483647i, var_2.e.a.x), u_input.d.wzz) & (u_input.c >> (var_0 % vec3<u32>(32u)))), var_2.b.a.a.yy));
    return vec4<bool>(countOneBits(var_1.b >> (var_1.c % 32u)) < firstLeadingBit(2147483647i & var_2.b.a.a.x), all(select(select(var_2.a.yyz, select(vec3<bool>(true, true, false), var_2.a.ywy, var_2.d), vec3<bool>(var_2.d, var_2.d, false)), var_2.a.wxx, var_2.d)), var_2.a.x, true);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = 2147483647i;
    var var_1 = any(vec2<bool>(any(vec3<bool>(true, true, true)), select(true, true, !arg_2.x) != true));
    var var_2 = -((u_input.d.xz ^ (vec2<i32>(u_input.d.x, -22658i) | vec2<i32>(arg_1, 1i))) ^ vec2<i32>(u_input.c.x, _wgslsmith_add_i32(-u_input.d.x, i32(-1i) * -4430i)));
    let var_3 = u_input.d.xzw;
    var_2 = firstTrailingBit(firstLeadingBit(firstLeadingBit(~vec2<i32>(-13250i, arg_1) | -vec2<i32>(-2147483647i, var_2.x))));
    return Struct_3(Struct_1(var_3, select(u_input.d.wy, vec2<i32>(-1i) * -vec2<i32>(29248i, -2147483647i), arg_2)), var_2.x, 21304u, Struct_2(abs(_wgslsmith_sub_vec2_u32(arg_0.a, arg_0.a) << (arg_0.a % vec2<u32>(32u)))), Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yw & var_3.yx, u_input.c.zz ^ vec2<i32>(var_3.x, u_input.c.x)), -_wgslsmith_add_i32(var_2.x, -24799i), _wgslsmith_dot_vec2_i32(-var_3.yz, max(vec2<i32>(-6692i, -24578i), vec2<i32>(var_2.x, -7752i)))), max(vec2<i32>(var_2.x, 0i), min(var_3.yy << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), -vec2<i32>(arg_1, -12529i)))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec3<bool>) -> vec3<i32> {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, abs(_wgslsmith_add_i32(1i, u_input.a.x)) & -abs(u_input.d.x)), ~(-u_input.c.zx));
    var var_1 = func_5(Struct_2(~(~_wgslsmith_add_vec2_u32(vec2<u32>(997u, arg_0), vec2<u32>(52603u, u_input.b)))), 1i, select(vec2<bool>(all(func_2(vec2<f32>(-292f, -514f), -298f)), false), select(select(arg_2.yy, select(arg_2.xz, arg_2.xx, arg_1), vec2<bool>(arg_1, true)), vec2<bool>(any(vec2<bool>(false, arg_1)), all(arg_2)), !func_2(vec2<f32>(-754f, 2553f), 1000f).x), all(vec2<bool>(true, arg_2.x | true))), vec3<f32>(-202f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1493f, 156f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(429f)), 1f))), 1553f));
    var var_2 = var_1.d;
    let var_3 = ~4294967295u;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return vec3<i32>(countOneBits(u_input.a.x ^ 19175i), var_1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_1.b, -2147483647i & var_1.e.a.x), -34511i, _wgslsmith_div_i32(-var_1.b, _wgslsmith_add_i32(var_1.a.b.x, -8496i)), _wgslsmith_add_i32(_wgslsmith_div_i32(-1i, u_input.a.x), var_1.e.a.x)), _wgslsmith_sub_vec4_i32(~(~vec4<i32>(18691i, -34925i, u_input.d.x, u_input.c.x)), u_input.d)));
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: u32) -> Struct_2 {
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-2147483647i);
    var_0 = u_input.d.x;
    var var_1 = func_6(Struct_3(Struct_1(select(vec3<i32>(u_input.c.x, u_input.c.x, u_input.d.x), func_1(1u, true, vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), u_input.a.xy | u_input.a.yy), ~abs(-12104i), ~(1u >> (u_input.b % 32u)), func_5(Struct_2(vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(0u, 41913u) % vec2<u32>(32u))), 0i, select(vec2<bool>(false, false), func_2(vec2<f32>(1551f, -866f), 1589f).xx, vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1390f, -569f, -924f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1130f, 587f, 1000f)))).d, Struct_1(-u_input.a.yzy, u_input.c.zy)), !(!all(vec2<bool>(true, true))) | (-reverseBits(2147483647i) > _wgslsmith_mod_i32(-41920i, ~u_input.d.x)), ~(~u_input.b));
    var_0 = u_input.d.x;
    var var_2 = -1i;
    var var_3 = ~firstLeadingBit(61513i);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(330f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1213f) * _wgslsmith_f_op_f32(step(930f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(189f + -573f)), 831f, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(278f + _wgslsmith_f_op_f32(-1345f * 1243f)), any(vec2<bool>(true, true))))), vec4<f32>(_wgslsmith_f_op_f32(-1641f + _wgslsmith_f_op_f32(f32(-1f) * -1144f)), _wgslsmith_f_op_f32(f32(-1f) * -2526f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1395f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1761f - -1265f) + -727f))), u_input.a.x);
}

