struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_2(~reverseBits(select(vec2<u32>(26707u, u_input.a), vec2<u32>(u_input.b, u_input.e), false) | (vec2<u32>(u_input.a, 59138u) >> (vec2<u32>(u_input.e, 1u) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(step(-1382f, _wgslsmith_div_f32(-1334f, -1320f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-226f * 1363f)), 1472f))));
    var_0 = Struct_2(~select(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(27535u, 4294967295u), vec2<u32>(u_input.e, 1u)), vec2<u32>(1265u, u_input.b)), vec2<u32>(4294967295u, _wgslsmith_mod_u32(var_0.a.x, 60119u)), vec2<bool>(true, true)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1525f)) - _wgslsmith_f_op_f32(floor(1879f))), var_0.b.x), 928f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(559f * 757f)))))));
    var var_1 = vec2<i32>(_wgslsmith_div_i32(~38465i, ~(~(-6658i))), -2147483647i) ^ vec2<i32>(-1i, u_input.c);
    var_0 = Struct_2(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.a.x, var_0.a.x), var_0.a.x) << (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.b, var_0.a.x, var_0.a.x), vec4<u32>(0u, 0u, var_0.a.x, var_0.a.x)), countOneBits(vec4<u32>(var_0.a.x, u_input.a, 18481u, 10244u))) % 32u), ~32611u), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(662f * 1929f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-461f + -358f)))), -397f, _wgslsmith_f_op_f32(-var_0.b.x)));
    var var_2 = Struct_1(select(!vec2<bool>(false, all(vec2<bool>(false, false))), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), vec3<bool>(!select(true, false, 1i != u_input.c), true | (_wgslsmith_clamp_u32(var_0.a.x, var_0.a.x, var_0.a.x) == ~4294967295u), !any(vec2<bool>(true, true)) && true));
    return select(var_2.b.xy, !select(select(!vec2<bool>(var_2.a.x, var_2.a.x), vec2<bool>(false, var_2.a.x), select(vec2<bool>(true, var_2.b.x), var_2.b.zx, true)), var_2.b.xy, vec2<bool>(var_2.b.x && var_2.a.x, false)), false);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: f32) -> i32 {
    var var_0 = all(!select(vec2<bool>(true, true), func_3(), any(vec2<bool>(true, true))));
    return ~select(_wgslsmith_div_i32(countOneBits(1i), _wgslsmith_add_i32(u_input.d, i32(-1i) * -1i)), _wgslsmith_clamp_i32(abs(min(u_input.d, 32304i)), arg_0.x & -14038i, _wgslsmith_dot_vec4_i32(vec4<i32>(-55608i, -24750i, 58042i, 11526i) ^ vec4<i32>(22511i, 1i, u_input.d, 2147483647i), firstLeadingBit(vec4<i32>(-2147483647i, -1i, 1i, 0i)))), true);
}

fn func_4(arg_0: u32, arg_1: i32) -> vec2<i32> {
    var var_0 = true;
    var_0 = !any(vec2<bool>(true, true));
    let var_1 = ~min(73916u | (1u << (u_input.b % 32u)), ~0u);
    var_0 = -1345f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1372f - -1000f))) * 1499f)));
    let var_2 = vec2<i32>(u_input.c, 2147483647i);
    return select(firstLeadingBit(var_2), -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-14336i, arg_1, u_input.c, arg_1), vec4<i32>(-1i, 1i, 2147483647i, var_2.x)) & u_input.c, 2147483647i), false);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(~firstLeadingBit(vec2<u32>(u_input.b, u_input.a) | vec2<u32>(u_input.b, u_input.e)) ^ _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 65597u), vec2<u32>(36911u, 21850u)), _wgslsmith_mod_vec2_u32(vec2<u32>(124694u, 0u), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(firstTrailingBit(3906u), 4531u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-958f, 288f, -1000f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-110f, -439f, -882f), vec3<f32>(-1129f, -104f, -942f)))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1714f, 280f, 476f))))))));
    var var_1 = ~(-_wgslsmith_sub_vec3_i32(vec3<i32>(~(-44715i), _wgslsmith_add_i32(u_input.d, -50334i), u_input.d), vec3<i32>(-1110i, countOneBits(2147483647i), u_input.c)));
    var var_2 = min(vec2<i32>(-1i) * -(countOneBits(var_1.xz) & (var_1.zz << (var_0.a % vec2<u32>(32u)))), func_4(25884u, _wgslsmith_div_i32(_wgslsmith_mod_i32(func_2(vec2<i32>(u_input.c, 286i), vec4<f32>(var_0.b.x, var_0.b.x, -227f, var_0.b.x), Struct_2(vec2<u32>(var_0.a.x, 4294967295u), vec3<f32>(1254f, var_0.b.x, var_0.b.x)), -1000f), ~u_input.d), _wgslsmith_sub_i32(-u_input.c, var_1.x))));
    let var_3 = Struct_1(!vec2<bool>(all(vec3<bool>(true, true, true)), true), vec3<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, true, true)), ~(0u << (var_0.a.x % 32u)) < ~select(u_input.a, u_input.b, false)));
    return Struct_2(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x) - _wgslsmith_f_op_f32(step(var_0.b.x, 494f))) - 1064f), var_0.b.x, -147f));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec3<bool>(_wgslsmith_div_u32(1u, u_input.b) < _wgslsmith_clamp_u32(~max(44451u, 63250u), 0u, 6717u), !any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true))), !any(vec3<bool>(true, true, true)));
    var var_1 = firstLeadingBit(~(-firstTrailingBit(vec4<i32>(u_input.c, 2147483647i, u_input.c, -8199i)) | ((vec4<i32>(-1i, u_input.d, u_input.c, -29570i) << (vec4<u32>(u_input.e, 4294967295u, 62835u, u_input.b) % vec4<u32>(32u))) & min(vec4<i32>(u_input.c, -27334i, 50569i, u_input.c), vec4<i32>(33002i, u_input.d, -59519i, -78713i)))));
    var_1 = reverseBits(reverseBits(abs(vec4<i32>(u_input.d, -14364i, u_input.c, u_input.d) & vec4<i32>(var_1.x, 568i, 6427i, 1i)) | abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, 15548i, 33571i, u_input.d), vec4<i32>(0i, var_1.x, -1i, u_input.c), vec4<i32>(1i, -12967i, -15764i, var_1.x)))));
    var var_2 = arg_0;
    var var_3 = func_1();
    return Struct_1(var_0.xx, !(!select(var_0, select(var_0, var_0, var_0.x), var_0.x)));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = func_1().b.x;
    var_0 = func_5(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -394f) * 1393f)), 1000f, -987f), func_1());
    var var_2 = u_input.b;
    var var_3 = Struct_2(firstLeadingBit(~vec2<u32>(0u, u_input.a)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(972f, var_1, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, arg_1, 282f))))));
    return Struct_2(vec2<u32>(4294967295u, var_3.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.x, var_3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -292f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~(~firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.a, u_input.e)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-123f, 860f, -1000f) * vec3<f32>(1000f, -680f, -946f)))))));
    var var_1 = ~(-firstTrailingBit(select(~vec4<i32>(-2147483647i, u_input.c, u_input.c, 8209i), -vec4<i32>(-2147483647i, 2147483647i, 0i, -2147483647i), false)));
    let var_2 = func_6(func_5(_wgslsmith_f_op_vec3_f32(-var_0.b), func_1()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x))), -419f);
    var var_3 = func_5(_wgslsmith_f_op_vec3_f32(-var_2.b), Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_2.a.x), select(vec2<u32>(var_2.a.x, u_input.b), var_0.a, vec2<bool>(false, true))) >> (var_2.a % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.b))))));
    var_3 = func_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(round(var_0.b.x))) * -1191f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(717f * var_0.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-183f, 974f)))), -368f), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.xy, _wgslsmith_f_op_vec2_f32(sign(var_0.b.zz)));
}

