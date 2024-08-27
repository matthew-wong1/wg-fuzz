struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: Struct_2,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-564f, -492f) - _wgslsmith_f_op_f32(564f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(280f, -1178f)))))));
    var var_1 = ~(~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), ~vec3<u32>(46364u, 35265u, 4294967295u)), ~vec3<u32>(1u, 1u, 1u)));
    var var_2 = _wgslsmith_mult_i32(1i, ~_wgslsmith_mod_i32(u_input.a.x, max(0i, u_input.a.x)));
    let var_3 = 234f;
    var var_4 = false;
    return ~_wgslsmith_mult_u32(var_1.x, var_1.x);
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(!vec3<bool>(true, true, select(true, true, true)), 57193u >> ((~46209u << (firstTrailingBit(21011u) % 32u)) % 32u), reverseBits(select(-7308i, ~u_input.a.x, any(vec2<bool>(false, true)))), vec4<u32>(39212u | select(39441u, 10869u, false), 15768u, firstTrailingBit(4294967295u), ~1u), _wgslsmith_clamp_u32(26495u, 24603u, _wgslsmith_dot_vec3_u32(vec3<u32>(29193u, 22303u, 14816u), ~vec3<u32>(4294967295u, 4294967295u, 4294967295u)))), 34341i, vec4<u32>(select(64585u, _wgslsmith_sub_u32(4294967295u, 62541u), true), ~_wgslsmith_dot_vec3_u32(vec3<u32>(99814u, 1u, 7743u), vec3<u32>(1u, 72244u, 1u)), _wgslsmith_add_u32(~4294967295u, firstLeadingBit(1u)), ~(~1u)) >> (vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(23969u, 0u, 4294967295u))), 1u, ~1u, ~23654u) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1293f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 708f), _wgslsmith_f_op_f32(sign(1660f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -101f), _wgslsmith_f_op_f32(step(-1849f, -1219f)))), _wgslsmith_f_op_f32(1145f - -1084f)))), vec3<f32>(-328f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(979f + -229f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2037f)) * -292f) - _wgslsmith_f_op_f32(f32(-1f) * -1490f)))));
    return select(vec4<bool>(any(!(!vec3<bool>(true, false, var_0.a.a.x))), false, !var_0.a.a.x, (!var_0.a.a.x && true) & false), select(!(!vec4<bool>(var_0.a.a.x, var_0.a.a.x, false, false)), select(select(select(vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), vec4<bool>(var_0.a.a.x, var_0.a.a.x, true, false), vec4<bool>(var_0.a.a.x, false, var_0.a.a.x, false)), vec4<bool>(var_0.a.a.x, false, var_0.a.a.x, false), !var_0.a.a.x), select(select(vec4<bool>(true, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), vec4<bool>(true, var_0.a.a.x, false, var_0.a.a.x), true), select(vec4<bool>(false, false, var_0.a.a.x, true), vec4<bool>(var_0.a.a.x, var_0.a.a.x, true, true), vec4<bool>(false, var_0.a.a.x, var_0.a.a.x, false)), select(vec4<bool>(true, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), vec4<bool>(true, false, var_0.a.a.x, true), vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, false))), !select(vec4<bool>(false, true, var_0.a.a.x, var_0.a.a.x), vec4<bool>(false, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, false))), !vec4<bool>(true, all(vec3<bool>(var_0.a.a.x, var_0.a.a.x, true)), true, any(vec2<bool>(true, false)))), any(var_0.a.a) || !var_0.a.a.x);
}

fn func_2() -> vec2<u32> {
    let var_0 = _wgslsmith_sub_i32(175i, u_input.a.x);
    let var_1 = max(~vec3<u32>(1u, 1u, 1u), max(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(50494u, 1u, 1u)), _wgslsmith_div_vec3_u32(~vec3<u32>(14835u, 1u, 1u), ~vec3<u32>(0u, 26382u, 50945u))), vec3<u32>(~9778u, 1u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(32270u, 49958u), _wgslsmith_dot_vec4_u32(vec4<u32>(10716u, 16039u, 9997u, 65069u), vec4<u32>(1u, 4294967295u, 0u, 0u))))));
    var var_2 = vec4<bool>(!all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), false)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), 2147483647i <= ~u_input.a.x)), true || (true | (~var_1.x > _wgslsmith_mult_u32(var_1.x, 1u))), true);
    let var_3 = max(~u_input.a.zzz, u_input.a.yxw);
    var_2 = select(!select(select(select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(true, var_2.x, true, false), var_2.x), vec4<bool>(var_2.x, true, true, var_2.x), vec4<bool>(var_2.x, false, var_2.x, true)), func_3(), false), select(!vec4<bool>(all(vec4<bool>(var_2.x, var_2.x, false, true)), false && var_2.x, var_2.x | var_2.x, var_2.x | true), func_3(), true), select(!(!func_3()), vec4<bool>(all(vec2<bool>(false, var_2.x)), true, var_2.x, !select(true, false, var_2.x)), var_2.x));
    return ~vec2<u32>(var_1.x, min(var_1.x, reverseBits(~var_1.x)));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = 1496f;
    var var_1 = true;
    var var_2 = ~reverseBits(~((26203u >> (arg_2.x % 32u)) & firstLeadingBit(arg_2.x)));
    let var_3 = _wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(arg_2, arg_2), arg_2);
    var var_4 = select(func_3().wwz, select(func_3().xwx, func_3().zwy, !vec3<bool>(0u < arg_2.x, all(vec4<bool>(true, true, true, false)), true)), true);
    return Struct_1(func_3().zwy, arg_0, _wgslsmith_sub_i32(firstLeadingBit(u_input.a.x), _wgslsmith_add_i32(-2147483647i, u_input.a.x) | -26842i) ^ arg_1, firstLeadingBit(max(countOneBits(vec4<u32>(var_3.x, var_3.x, 81251u, var_3.x) ^ vec4<u32>(45100u, 0u, 0u, 4294967295u)), vec4<u32>(~4294967295u, select(103477u, 40011u, var_4.x), select(1u, var_3.x, false), ~28119u))), 51649u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(-376f));
    var var_1 = func_4(abs(~func_1()), u_input.a.x, firstTrailingBit(func_2()));
    var var_2 = Struct_3(~firstLeadingBit(max(4294967295u, 60464u)), vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(min(1347f, _wgslsmith_f_op_f32(abs(var_0))))), Struct_2(Struct_1(select(vec3<bool>(true, false, true), vec3<bool>(false, var_1.a.x, false), true), select(4294967295u, ~1u, all(var_1.a)), u_input.a.x, var_1.d, var_1.e), 0i, vec4<u32>(var_1.b, _wgslsmith_dot_vec3_u32(var_1.d.yyw, vec3<u32>(var_1.b, var_1.d.x, var_1.b)), var_1.b, 1u)), !select(var_1.a, var_1.a, false));
    let var_3 = u_input.a.wz;
    var_2 = Struct_3(~var_1.b, _wgslsmith_f_op_vec3_f32(-var_2.b), Struct_2(func_4(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, 0u), var_1.d.wy)), -firstTrailingBit(0i), vec2<u32>(31050u, ~16820u)), ~_wgslsmith_dot_vec3_i32(abs(u_input.a.wzw), _wgslsmith_div_vec3_i32(vec3<i32>(1368i, u_input.a.x, var_1.c), vec3<i32>(61913i, -39358i, 1i))), vec4<u32>((var_2.a ^ 0u) | abs(var_1.d.x), var_1.e, var_1.b, var_2.c.a.d.x << (~1u % 32u))), vec3<bool>(all(vec2<bool>(true, true)), func_3().x, all(func_4(var_1.d.x, var_1.c, abs(vec2<u32>(35157u, var_2.a))).a.yz)));
    var var_4 = Struct_2(var_2.c.a, var_2.c.a.c, _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(var_1.d, ~var_2.c.a.d), var_2.c.a.d));
    var_1 = var_4.a;
    let var_5 = var_2.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-5150i, var_3.x), countOneBits(-2147483647i)) >> (_wgslsmith_mult_vec2_u32(var_4.a.d.xy, var_4.a.d.yx) % vec2<u32>(32u)), countOneBits(_wgslsmith_mult_vec2_i32(var_3, vec2<i32>(var_4.a.c, -21277i))), vec2<i32>(-u_input.a.x, 2147483647i)), _wgslsmith_f_op_f32(var_2.b.x + var_2.b.x), var_5.d.ww, 4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.b.x, var_2.b.x, var_2.b.x), var_2.b)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(var_2.b, vec3<f32>(var_2.b.x, var_0, var_2.b.x))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2.b.x)), _wgslsmith_f_op_f32(-1866f - var_0), _wgslsmith_f_op_f32(ceil(var_0))), vec3<bool>(true, false, false)))));
}

