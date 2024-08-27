struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4) -> vec2<u32> {
    var var_0 = Struct_3(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 1u, 1u), firstTrailingBit(vec3<u32>(38719u, 92384u, 0u)) ^ vec3<u32>(4294967295u, 34327u, 0u), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u))), u_input.a.x, i32(-1i) * -select(-7503i << (0u % 32u), ~u_input.b, u_input.c.x < arg_0.a), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(847f, _wgslsmith_f_op_f32(f32(-1f) * -281f)))))), vec4<bool>(true, all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, false), true)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), true))), !all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)))));
    var_0 = Struct_3(var_0.a, _wgslsmith_add_i32(0i, 6442i), var_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-1439f, -1046f)), var_0.d.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-126f, _wgslsmith_div_f32(126f, var_0.d.x)))), var_0.e);
    var var_1 = Struct_2(select(abs(abs(~vec3<u32>(4294967295u, 4294967295u, var_0.a))), vec3<u32>(_wgslsmith_clamp_u32(var_0.a ^ 0u, reverseBits(var_0.a), ~0u), 1u ^ (var_0.a >> (var_0.a % 32u)), var_0.a), vec3<bool>(true, false, !(!var_0.e.x))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(28864u << (var_0.a % 32u), 13110u), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(14063u, var_0.a), ~vec2<u32>(var_0.a, var_0.a))), var_0.e.x, vec2<bool>(var_0.e.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.a, 0u), abs(4294967295u)) <= ~var_0.a));
    var_1 = Struct_2(vec3<u32>(~firstTrailingBit(_wgslsmith_dot_vec3_u32(var_1.a, vec3<u32>(var_1.b, 1166u, 4294967295u))), var_1.b, _wgslsmith_add_u32(select(~0u, var_1.b, all(vec2<bool>(true, true))), firstTrailingBit(_wgslsmith_dot_vec2_u32(var_1.a.zx, vec2<u32>(var_1.b, 0u))))), abs(4294967295u), var_0.e.x, !select(vec2<bool>(true, true), vec2<bool>(var_1.c, var_0.d.x == var_0.d.x), vec2<bool>(true & var_1.d.x, true)));
    var var_2 = var_0.d.x;
    return ~_wgslsmith_sub_vec2_u32(firstLeadingBit(select(var_1.a.zx, max(var_1.a.yx, vec2<u32>(var_1.b, var_1.b)), var_1.d.x)), vec2<u32>(var_1.b, 4294967295u));
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-u_input.a.x & _wgslsmith_div_i32(u_input.a.x, 20340i), u_input.b ^ -12008i, i32(-1i) * -11645i), u_input.a.x & countOneBits(-u_input.a.x)), u_input.a.x, abs(i32(-1i) * -25246i));
    let var_1 = var_0.x;
    var var_2 = 2147483647i;
    var_2 = 51669i;
    var var_3 = Struct_5(vec3<bool>(all(vec2<bool>(true, all(vec4<bool>(false, true, false, true)))), true, true), u_input.c.x, Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(~var_0.x, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-24222i, var_0.x, u_input.b, u_input.c.x), vec4<i32>(var_0.x, var_0.x, var_0.x, -1i))), u_input.a), func_3(Struct_4(_wgslsmith_clamp_i32(-2147483647i, 1i, 1i)))), Struct_4(var_0.x));
    return Struct_2(vec3<u32>(~var_3.c.b.x, var_3.c.b.x, var_3.c.b.x) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(~var_3.c.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 102645u, var_3.c.b.x, 27013u), vec4<u32>(var_3.c.b.x, var_3.c.b.x, 1u, var_3.c.b.x)), ~var_3.c.b.x), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(7557u, var_3.c.b.x, 18163u), vec3<u32>(8314u, var_3.c.b.x, 1u)), reverseBits(vec3<u32>(65067u, 9153u, 0u)), vec3<u32>(var_3.c.b.x, 1u, 9078u) << (vec3<u32>(36608u, var_3.c.b.x, var_3.c.b.x) % vec3<u32>(32u)))), 64670u, !var_3.a.x, var_3.a.xz);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1075f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1289f, 515f, arg_1.c)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-466f, 1039f)))))));
    var var_1 = arg_1.a.yx | select(vec2<u32>(1u, arg_1.a.x), ~abs(arg_1.a.yx), select(!any(arg_1.d), arg_1.d.x, arg_1.d.x || all(vec3<bool>(arg_1.d.x, arg_1.c, false))));
    let var_2 = true;
    var var_3 = _wgslsmith_mult_u32(var_1.x, var_1.x & 1u) >> (max(abs(1u), 0u) % 32u);
    var_3 = 1u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -630f) * var_0));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -296f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(933f, -873f)), -1155f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, -1362f, any(vec3<bool>(true, true, true)))), -604f), _wgslsmith_f_op_f32(func_4(max(countOneBits(vec3<i32>(-7025i, arg_1.a.x, arg_0) << (vec3<u32>(4294967295u, 54237u, 23924u) % vec3<u32>(32u))), u_input.a), func_2(), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(17160i, 2343i, u_input.b) << (vec3<u32>(4294967295u, 1u, arg_1.b.x) % vec3<u32>(32u)), -arg_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(638f))));
    var var_1 = vec2<u32>(min(~arg_1.b.x, 1u), ~(~19292u));
    var_1 = vec2<u32>(9660u, 9219u | arg_1.b.x);
    var_1 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.b.x, var_1.x, var_1.x, var_1.x) << (vec4<u32>(8955u, arg_1.b.x, 44270u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b.x, 1864u, var_1.x, arg_1.b.x), vec4<u32>(4280u, 0u, 4294967295u, arg_1.b.x), vec4<u32>(arg_1.b.x, 12110u, arg_1.b.x, var_1.x))), min(~vec4<u32>(var_1.x, 103957u, arg_1.b.x, 64356u), ~vec4<u32>(0u, arg_1.b.x, arg_1.b.x, 1u))), countOneBits(func_2().b)) | arg_1.b;
    let var_2 = Struct_3(_wgslsmith_clamp_u32(arg_1.b.x, select(var_1.x, ~_wgslsmith_add_u32(87450u, arg_1.b.x), true), arg_1.b.x), arg_0, 2147483647i, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -540f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), var_0.x)))), vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))), !((-6657i <= arg_1.a.x) | true), -1000f < _wgslsmith_f_op_f32(-var_0.x), true));
    return abs(-arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(-298f));
    var var_1 = vec3<i32>(-44301i, 1i, u_input.b >> (select(firstTrailingBit(1u), ~1u, false) % 32u));
    var_1 = vec3<i32>(max(u_input.c.x << (_wgslsmith_div_u32(47444u << (1u % 32u), ~671u) % 32u), -(~u_input.a.x)), u_input.c.x, u_input.c.x);
    var_1 = vec3<i32>(u_input.c.x, func_1(u_input.c.x, Struct_1(~u_input.a, firstTrailingBit(vec2<u32>(39835u, 4294967295u)))), -_wgslsmith_clamp_i32(~0i, 53660i ^ u_input.c.x, _wgslsmith_mult_i32(-29430i, var_1.x))) | vec3<i32>(abs(max(11785i, 1i)), var_1.x, -(~13079i));
    var var_2 = Struct_3(1u & _wgslsmith_dot_vec2_u32(vec2<u32>(func_3(Struct_4(5430i)).x, ~4294967295u), _wgslsmith_mod_vec2_u32(max(vec2<u32>(32436u, 5609u), vec2<u32>(78991u, 4294967295u)), max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(12175u, 22497u)))), -u_input.b, _wgslsmith_mod_i32(var_1.x & var_1.x, ~(~var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(-121f))), vec4<bool>(any(vec2<bool>(true, true)), true, !(!all(vec4<bool>(false, false, false, true))), true));
    let var_3 = Struct_5(select(vec3<bool>(all(vec3<bool>(true, false, var_2.e.x)), var_2.e.x, var_2.e.x), vec3<bool>(all(select(var_2.e.xyw, var_2.e.zwz, var_2.e.zwx)), var_2.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(98902u, var_2.a, 39748u, var_2.a), vec4<u32>(4294967295u, 90689u, 31196u, var_2.a)) < select(var_2.a, 0u, var_2.e.x)), !select(!vec3<bool>(var_2.e.x, false, var_2.e.x), !var_2.e.wxx, select(vec3<bool>(true, false, var_2.e.x), vec3<bool>(false, var_2.e.x, true), true))), -1i | ~(~var_2.b), Struct_1(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(~u_input.c.x, var_1.x, -u_input.c.x)), vec2<u32>(var_2.a, ~4294967295u)), Struct_4(0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.d, vec2<f32>(var_2.d.x, 2173f))) * vec2<f32>(_wgslsmith_f_op_f32(var_2.d.x + var_2.d.x), _wgslsmith_f_op_f32(-var_2.d.x))))), ~(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 4294967295u, var_2.a, 4294967295u), ~vec4<u32>(var_3.c.b.x, var_3.c.b.x, 11335u, 1u)) & ~vec4<u32>(4294967295u, 31977u, var_2.a, var_2.a)));
}

