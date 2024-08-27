struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_3(_wgslsmith_clamp_i32(13213i, -1i, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1279f + _wgslsmith_f_op_f32(f32(-1f) * -2051f)))), _wgslsmith_mult_vec2_i32(~firstTrailingBit(-vec2<i32>(-31572i, 51437i)), vec2<i32>(countOneBits(~39891i), u_input.a)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), true)), vec2<bool>(true, true), !(firstTrailingBit(u_input.a) >= countOneBits(1i))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(i32(-1i) * -17667i, u_input.a), ~31646i, 1i));
    let var_1 = (79173i | u_input.c) ^ (reverseBits(var_0.c.x) | (~countOneBits(-32230i) << (select(u_input.d, ~57859u, false) % 32u)));
    let var_2 = _wgslsmith_add_i32(var_0.a, ~firstTrailingBit(var_1));
    var_0 = Struct_3(0i << ((_wgslsmith_sub_u32(4294967295u | u_input.b.x, u_input.d) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), u_input.b) % 32u)) % 32u), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_add_vec2_i32(vec2<i32>(~var_1, ~(-11516i) >> (u_input.b.x % 32u)), -reverseBits(var_0.c)), var_0.d, var_1);
    var var_3 = Struct_2(Struct_1(~abs(-var_0.c), vec2<i32>(select(-2147483647i, -1i, var_0.d.x) ^ firstLeadingBit(-1i), var_1), u_input.b, ((u_input.b.x | 4294967295u) | ~110431u) | u_input.b.x), _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, u_input.d, 49833u, u_input.b.x)), reverseBits(vec4<u32>(u_input.d, u_input.b.x, u_input.b.x, u_input.d))), 32945u, ~(~674u))));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -101f, -821f, _wgslsmith_f_op_f32(trunc(var_0.b))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-184f, var_0.b, var_0.b, -142f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1288f, var_0.b, -1341f, var_0.b)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, var_0.b, 2396f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, var_0.b, -329f)) - vec4<f32>(1000f, -904f, -110f, -203f)))))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.b, arg_0.b, arg_0.b)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, -684f, 189f)), _wgslsmith_div_vec4_f32(vec4<f32>(-674f, -778f, arg_0.b, arg_0.b), vec4<f32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2135f * -1019f), -2602f);
    let var_2 = Struct_1(arg_0.c, ~(~vec2<i32>(-2408i, arg_0.c.x)), ~(~arg_1.a.c), _wgslsmith_clamp_u32(_wgslsmith_add_u32(min(arg_3.x, ~arg_2.x), ~arg_1.a.c.x), u_input.d, ~1u));
    let var_3 = var_2;
    let var_4 = Struct_2(arg_1.a, arg_2);
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_1(arg_0.b, arg_0.b, select(u_input.b, abs(u_input.b), true), min(_wgslsmith_mod_u32(func_2(Struct_3(u_input.a, arg_1.x, vec2<i32>(arg_0.a.x, 2147483647i), vec2<bool>(true, false), arg_0.b.x), Struct_2(arg_0, vec3<u32>(arg_0.c.x, arg_0.c.x, arg_0.c.x)), ~vec3<u32>(u_input.d, arg_2.x, arg_2.x), vec4<u32>(4294967295u, u_input.d, arg_0.c.x, u_input.b.x)).c.x, ~(u_input.b.x >> (arg_2.x % 32u))), _wgslsmith_sub_u32(min(1u, ~62914u), arg_0.d)));
    let var_1 = ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.d ^ var_0.d, 1u, 42337u, _wgslsmith_div_u32(4294967295u, 2531u)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(69775u, 32424u, arg_2.x, 4294967295u), vec4<u32>(0u, 4294967295u, u_input.d, arg_0.d), vec4<u32>(arg_0.d, arg_0.c.x, arg_0.d, 62103u)), vec4<u32>(var_0.c.x, 1u, arg_2.x, 19474u)), ~firstTrailingBit(vec4<u32>(var_0.c.x, var_0.d, var_0.d, 32241u))));
    var var_2 = Struct_1(-vec2<i32>(var_0.a.x << (~arg_0.d % 32u), 0i), vec2<i32>(0i, 10519i) & ~(arg_0.b << (reverseBits(arg_0.c.yx) % vec2<u32>(32u))), arg_0.c, max(var_1.x, ~20901u));
    var_2 = Struct_1(var_2.b, vec2<i32>(-11332i, u_input.c), arg_0.c, select(var_1.x | 87951u, var_2.c.x, all(vec2<bool>(true, true)) || false));
    let var_3 = 2147483647i;
    return Struct_2(arg_0, var_1.wzw);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = func_4(func_2(Struct_3(arg_2.a.x, _wgslsmith_f_op_f32(sign(-694f)), arg_2.a, !vec2<bool>(true, arg_3), -29654i), Struct_2(Struct_1(arg_2.b, -vec2<i32>(21494i, arg_1.a.x), vec3<u32>(arg_2.d, arg_0.x, 1u), ~4294967295u), ~arg_1.c << (vec3<u32>(arg_0.x, 0u, 0u) % vec3<u32>(32u))), ~(~vec3<u32>(904u, u_input.b.x, 19839u)) ^ abs(select(vec3<u32>(4294967295u, u_input.b.x, 16310u), vec3<u32>(24345u, 32482u, 1u), arg_3)), vec4<u32>(32662u, _wgslsmith_dot_vec4_u32(arg_0 & vec4<u32>(u_input.d, arg_1.c.x, 4294967295u, 41657u), vec4<u32>(arg_2.d, 66972u, 1u, 4294967295u)), 9513u, _wgslsmith_mult_u32(~1u, 0u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(step(516f, _wgslsmith_f_op_f32(min(856f, -194f))))), _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -485f))) + 1798f)), ~u_input.b);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(272f, 822f)), _wgslsmith_f_op_vec4_f32(func_3()).x)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(-1057f - 307f)))), !all(!(!vec4<bool>(arg_3, arg_3, false, true)))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -123f);
    var_1 = _wgslsmith_f_op_f32(step(-2165f, _wgslsmith_f_op_f32(-276f - _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(107f * _wgslsmith_f_op_f32(min(674f, 388f)))))));
    let var_2 = Struct_3(~1i, 834f, select(select(arg_2.b, ~firstTrailingBit(vec2<i32>(1i, 0i)), arg_3), firstLeadingBit(firstTrailingBit(func_4(Struct_1(arg_2.a, arg_1.b, arg_2.c, var_0.a.c.x), vec3<f32>(1000f, -418f, -364f), u_input.b).a.b)), !any(select(vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(arg_3, false, arg_3, arg_3), vec4<bool>(true, true, arg_3, false)))), select(select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(arg_3, false, false)), true), !vec2<bool>(true, arg_3)), vec2<bool>(true, _wgslsmith_f_op_f32(round(1644f)) != _wgslsmith_f_op_f32(step(680f, 590f))), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), arg_3)), true)), 19754i);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(min(u_input.b, vec3<u32>(u_input.d, 1u, 74589u)), firstTrailingBit(vec3<u32>(25989u, 28747u, u_input.b.x))), _wgslsmith_clamp_vec3_u32(vec3<u32>(22204u, u_input.b.x, u_input.d) >> (u_input.b % vec3<u32>(32u)), ~u_input.b, u_input.b)), _wgslsmith_div_u32(u_input.b.x, ~func_1(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(vec2<i32>(-16703i, -31569i), vec2<i32>(u_input.a, u_input.c), vec3<u32>(64112u, 72367u, 75126u), u_input.d), Struct_1(vec2<i32>(u_input.a, u_input.c), vec2<i32>(u_input.a, 1i), u_input.b, u_input.d), true))));
    let var_1 = ~u_input.b;
    var_0 = ~func_4(Struct_1(abs(vec2<i32>(u_input.a, u_input.a)) << (vec2<u32>(35393u, 4294967295u) % vec2<u32>(32u)), vec2<i32>(u_input.c, _wgslsmith_mult_i32(-2147483647i, u_input.c)), u_input.b, abs(u_input.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 638f, 395f) * vec3<f32>(-1000f, 651f, 813f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(579f, 317f, 186f))))), ~_wgslsmith_add_vec3_u32(var_1, vec3<u32>(var_1.x, 14780u, 10182u)) >> (func_2(Struct_3(u_input.a, 488f, vec2<i32>(36364i, -1i), vec2<bool>(false, false), 25233i), Struct_2(Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.c), vec3<u32>(var_1.x, var_1.x, 1u), var_1.x), vec3<u32>(4294967295u, var_1.x, u_input.d)), select(vec3<u32>(0u, 1u, var_1.x), vec3<u32>(41759u, var_0.x, 6021u), true), ~vec4<u32>(u_input.b.x, var_1.x, 0u, 75336u)).c % vec3<u32>(32u))).a.c.yy;
    var var_2 = func_4(Struct_1(_wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -18590i), vec2<i32>(u_input.a, 1i)), ~vec2<i32>(25389i, u_input.a) | firstLeadingBit(vec2<i32>(u_input.a, u_input.a))), _wgslsmith_clamp_vec2_i32(select(select(vec2<i32>(-15196i, 0i), vec2<i32>(-8209i, 13379i), vec2<bool>(true, false)), vec2<i32>(0i, 1i), false), abs(-vec2<i32>(-8915i, 1i)), firstLeadingBit(vec2<i32>(u_input.a, -2147483647i))), vec3<u32>(_wgslsmith_sub_u32(abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(49950u, 0u), vec2<u32>(var_0.x, var_1.x))), 0u, func_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(46075u, 0u, var_1.x, 16239u), vec4<u32>(47508u, u_input.d, var_0.x, 45705u), vec4<u32>(4294967295u, var_1.x, var_1.x, 1u)), Struct_1(vec2<i32>(u_input.a, u_input.c), vec2<i32>(2787i, u_input.c), u_input.b, u_input.b.x), Struct_1(vec2<i32>(u_input.a, u_input.c), vec2<i32>(-38602i, -28327i), var_1, u_input.d), true)), 23071u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-872f, -171f, -1000f), vec3<f32>(358f, 388f, 329f))))), ~_wgslsmith_mult_vec3_u32(select(abs(vec3<u32>(var_1.x, 37438u, 4294967295u)), u_input.b, vec3<bool>(false, true, true)), _wgslsmith_clamp_vec3_u32(vec3<u32>(10009u, 1u, u_input.b.x), vec3<u32>(u_input.d, 1u, u_input.d) & vec3<u32>(var_1.x, 9664u, var_0.x), vec3<u32>(u_input.d, 1u, 4294967295u))));
    var var_3 = Struct_3(var_2.a.b.x, _wgslsmith_f_op_f32(-1313f - _wgslsmith_f_op_f32(select(277f, 1000f, !(1u != u_input.b.x)))), _wgslsmith_sub_vec2_i32(func_2(Struct_3(~1i, _wgslsmith_f_op_f32(149f + 1560f), vec2<i32>(var_2.a.a.x, -33360i) & vec2<i32>(-17621i, 56309i), vec2<bool>(true, true), var_2.a.b.x), Struct_2(func_4(var_2.a, vec3<f32>(1355f, 800f, -853f), var_2.b).a, _wgslsmith_mult_vec3_u32(vec3<u32>(37522u, u_input.b.x, 4294967295u), var_1)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.a.d, 44585u, 1u), var_1, ~vec3<u32>(u_input.d, var_2.a.c.x, var_1.x)), abs(vec4<u32>(u_input.d, 0u, 1u, 13148u))).b, select(-min(var_2.a.b, var_2.a.a), vec2<i32>(var_2.a.b.x, var_2.a.a.x), select(vec2<bool>(false, false), vec2<bool>(true, true), true))), vec2<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))), !all(vec4<bool>(false, true, true, true)) || false), ~(-1762i));
    var var_4 = ~_wgslsmith_clamp_vec4_u32(select(~firstLeadingBit(vec4<u32>(var_1.x, 4294967295u, 0u, 1u)), ~select(vec4<u32>(var_1.x, 4294967295u, 57485u, 1u), vec4<u32>(var_2.a.c.x, var_2.b.x, var_1.x, var_2.b.x), false), true), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(50750u, var_1.x), u_input.b.x, max(20324u, 31926u), 1u), vec4<u32>(37717u, 0u, 86495u, 4294967295u) >> (select(vec4<u32>(0u, var_2.b.x, u_input.d, 4294967295u), vec4<u32>(0u, var_2.a.d, 4294967295u, var_0.x), true) % vec4<u32>(32u))), ~vec4<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.zx), abs(u_input.d), 1u));
    let var_5 = !select(select(select(vec3<bool>(true, false, var_3.d.x), select(vec3<bool>(var_3.d.x, var_3.d.x, false), vec3<bool>(true, false, true), var_3.d.x), vec3<bool>(true, false, var_3.d.x)), vec3<bool>(var_3.d.x, var_3.d.x, any(vec3<bool>(true, var_3.d.x, var_3.d.x))), var_3.d.x), vec3<bool>(!var_3.d.x, false, var_3.d.x), !(!any(vec3<bool>(false, true, var_3.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.b, var_3.b) - _wgslsmith_f_op_f32(-2406f - var_3.b)) - -754f), var_3.b, 275f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1127f)))));
}

