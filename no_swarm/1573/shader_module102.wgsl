struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: f32, arg_3: bool) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 911f) * _wgslsmith_f_op_f32(-arg_0.x)))), !vec4<bool>(arg_3 | arg_3, true, true, true), vec4<i32>(abs(~154i), select(-2147483647i, u_input.c, arg_3) & reverseBits(-9213i), _wgslsmith_dot_vec4_i32(u_input.d, _wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(arg_1.x, arg_1.x, u_input.c, arg_1.x), u_input.d)), -68844i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, u_input.d.x, -36700i, 1i), vec4<i32>(-2147483647i, 29017i, 15761i, arg_1.x)))), _wgslsmith_f_op_f32(-1f), vec4<i32>(u_input.c, 0i & reverseBits(_wgslsmith_sub_i32(u_input.a.x, -42259i)), u_input.a.x, 27517i));
    var var_1 = !all(vec2<bool>(true & !arg_3, false));
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~_wgslsmith_div_i32(28919i ^ var_0.a.c.x, 10939i)), countOneBits(u_input.d.wx));
    let var_3 = ~(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4588u, 1u), u_input.e), ~4294967295u) & _wgslsmith_mod_vec2_u32(firstLeadingBit(~vec2<u32>(u_input.b, 0u)), u_input.e << (vec2<u32>(79719u, u_input.e.x) % vec2<u32>(32u))));
    var_1 = false;
    return vec4<bool>(true && any(var_0.a.b), true, all(var_0.a.b), !arg_3);
}

fn func_2() -> f32 {
    let var_0 = Struct_2(Struct_1(-658f, select(vec4<bool>(select(true, false, true), true, true, false), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(460f, -2106f, -674f, 209f)), firstLeadingBit(vec3<i32>(u_input.c, u_input.c, 0i)), _wgslsmith_f_op_f32(sign(650f)), false), vec4<bool>(true, false, true, true)), vec4<i32>(countOneBits(-1i), -4936i, _wgslsmith_clamp_i32(-32659i, 2147483647i, 3330i), abs(u_input.d.x)) >> (firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 0u), vec4<u32>(u_input.e.x, u_input.b, u_input.e.x, 30307u))) % vec4<u32>(32u))), -1523f, vec4<i32>(max(_wgslsmith_sub_i32(u_input.a.x, 0i), -u_input.c), _wgslsmith_sub_i32(1863i, -34200i) & ~u_input.c, u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, u_input.d.x), select(-2147483647i, 9382i, true))) >> (vec4<u32>(max(0u, ~u_input.e.x), u_input.e.x, 0u, min(_wgslsmith_dot_vec2_u32(u_input.e, u_input.e), _wgslsmith_dot_vec4_u32(vec4<u32>(29397u, 47091u, 1u, u_input.b), vec4<u32>(0u, 4294967295u, 9758u, 4294967295u)))) % vec4<u32>(32u)));
    let var_1 = abs(~_wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(u_input.b, u_input.e.x, u_input.b)), select(~vec3<u32>(u_input.e.x, 1u, u_input.e.x), vec3<u32>(u_input.b, 4294967295u, 33284u), select(var_0.a.b.zyy, var_0.a.b.zwz, var_0.a.b.x))));
    let var_2 = ~57033i;
    return -397f;
}

fn func_1() -> Struct_1 {
    var var_0 = select(-countOneBits(vec4<i32>(-u_input.c, 0i, ~2147483647i, 56892i)), u_input.d, !(-(~u_input.c) < -25066i));
    let var_1 = _wgslsmith_f_op_f32(-528f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + 1759f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-700f + 2335f) + _wgslsmith_f_op_f32(func_2())))));
    var_0 = vec4<i32>(firstLeadingBit(_wgslsmith_mod_i32(u_input.c ^ -2147483647i, var_0.x)), -max(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, -67069i), var_0.xwx), _wgslsmith_dot_vec3_i32(u_input.a, u_input.d.zwy), -40882i), min(u_input.c, -1i >> (u_input.e.x % 32u))), -48085i, var_0.x);
    var var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1499f, var_1, true))), vec4<bool>(false, select(false, false, true), false, true), u_input.d), -1126f, abs(firstLeadingBit(u_input.d)) ^ select(_wgslsmith_sub_vec4_i32(u_input.d, vec4<i32>(u_input.c, u_input.c, u_input.c, -2147483647i)), countOneBits(vec4<i32>(var_0.x, u_input.c, -35227i, u_input.d.x)), vec4<bool>(true, true, true, true))));
    return Struct_1(_wgslsmith_f_op_f32(-866f + _wgslsmith_f_op_f32(func_2())), vec4<bool>(!(abs(u_input.b) != 30730u), !(var_0.x < u_input.d.x) | select(true, var_1 < var_2.a.a.a, !var_2.a.a.b.x), all(vec2<bool>(all(vec3<bool>(true, true, false)), var_2.a.a.b.x)), select(true, false, false)), firstTrailingBit(vec4<i32>(-19895i, ~var_0.x, min(~u_input.c, 0i), firstLeadingBit(_wgslsmith_add_i32(u_input.c, 2147483647i)))));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(sign(-1826f)) == arg_0;
    var var_1 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(148f, arg_0)));
    let var_2 = max(vec2<i32>(~(-(i32(-1i) * -1i)), i32(-1i) * -max(u_input.c, -1i)), vec2<i32>(-1i, arg_1.c.x) ^ ~abs(vec2<i32>(u_input.c, arg_1.c.x)));
    var_1 = -1988f;
    let var_3 = Struct_2(arg_1, arg_1.a, vec4<i32>(1i, -min(firstTrailingBit(u_input.d.x), u_input.c), 0i & countOneBits(reverseBits(u_input.c)), ~arg_1.c.x));
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_u32(u_input.e, select(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e.x, 0u), u_input.e), vec2<u32>(u_input.b, 1u)), vec2<u32>(func_4(_wgslsmith_f_op_f32(sign(-930f)), func_1()), 0u), vec2<bool>(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-389f, -1527f, 489f, 1002f) + vec4<f32>(-803f, -248f, -1015f, 1000f)), u_input.d.zww, 127f, false).x, false)));
    var_0 = ~(~_wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.x, var_0.x), countOneBits(u_input.e)) >> (select(abs(_wgslsmith_div_vec2_u32(vec2<u32>(9461u, u_input.b), vec2<u32>(var_0.x, 0u))), select(vec2<u32>(u_input.e.x, 47590u), vec2<u32>(0u, u_input.e.x), true) >> (vec2<u32>(108556u, 82818u) % vec2<u32>(32u)), vec2<bool>(true, true)) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2496f * -1594f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(873f, -1309f)), -1193f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-394f, -394f))))))));
    var var_2 = Struct_3(Struct_2(func_1(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1443f - 381f) * _wgslsmith_f_op_f32(588f - 1166f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1063f, 206f)))), abs(abs(u_input.d))));
    var var_3 = Struct_2(func_1(), var_2.a.a.a, -select(vec4<i32>(0i, 32991i, 2147483647i, var_2.a.c.x), u_input.d >> (vec4<u32>(4238u, var_0.x, u_input.e.x, u_input.e.x) % vec4<u32>(32u)), select(vec4<bool>(var_2.a.a.b.x, false, true, var_2.a.a.b.x), var_2.a.a.b, var_2.a.a.b)) & vec4<i32>(var_2.a.c.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.d.x), u_input.d.wz)), ~(~(-11306i)), reverseBits(-var_2.a.c.x)));
    let var_4 = firstLeadingBit(u_input.e);
    let var_5 = var_2.a.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstLeadingBit(u_input.e)));
}

