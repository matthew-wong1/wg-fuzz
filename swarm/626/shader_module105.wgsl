struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: i32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1195f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))))));
    let var_1 = 1u;
    let var_2 = ~vec3<u32>(~var_1, var_1 << ((var_1 >> (0u % 32u)) % 32u), 39141u) & vec3<u32>(~reverseBits(var_1), _wgslsmith_add_u32(114296u, 18928u), var_1);
    let var_3 = Struct_3(var_2.x, arg_0, _wgslsmith_add_i32(u_input.a.x << (_wgslsmith_mod_u32(var_1, _wgslsmith_sub_u32(var_2.x, 4294967295u)) % 32u), -20023i), any(vec4<bool>(true, any(vec2<bool>(true, false)) && true, !any(vec2<bool>(true, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)))), _wgslsmith_mult_vec3_i32((u_input.a >> (var_2 % vec3<u32>(32u))) ^ u_input.a, vec3<i32>(u_input.a.x, ~u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x << (4294967295u % 32u)))));
    var var_4 = _wgslsmith_add_i32(countOneBits(-50081i & var_3.c), -u_input.a.x) != (firstLeadingBit(2147483647i) << (((1u << (0u % 32u)) ^ (13194u | var_1)) % 32u));
    return _wgslsmith_div_u32(var_2.x ^ var_2.x, _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(53687u, var_2.x, 0u, var_3.a)), ~(vec4<u32>(20484u, var_2.x, var_3.a, var_3.a) >> (vec4<u32>(42466u, var_2.x, var_2.x, 0u) % vec4<u32>(32u)))) ^ 4294967295u);
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = 1u;
    let var_1 = -u_input.a.x;
    var var_2 = firstLeadingBit(u_input.a);
    var var_3 = Struct_3(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0, 48595u, var_0, var_0) | _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 8998u, 4294967295u, 4294967295u), vec4<u32>(var_0, 1u, 0u, 4294967295u)), ~vec4<u32>(var_0, 4294967295u, var_0, var_0)), abs(~vec4<u32>(14876u, 1u, 1u, 41615u) ^ max(vec4<u32>(4294967295u, var_0, 24311u, 4294967295u), vec4<u32>(23383u, 1u, var_0, 4294967295u)))), -182f, _wgslsmith_add_i32(-u_input.a.x, ~0i), !(!arg_0), abs(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-14944i, var_2.x, u_input.a.x), vec3<i32>(-26155i, -50566i, 33891i), u_input.a) << (vec3<u32>(1u, 50231u, 40509u) % vec3<u32>(32u)))));
    let var_4 = !vec4<bool>((_wgslsmith_mult_u32(25339u, var_3.a) << (firstTrailingBit(28264u) % 32u)) >= (70197u ^ func_3(var_3.b)), var_3.d, var_3.d, arg_0);
    return Struct_1(var_2.x, reverseBits(countOneBits(-1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b - var_3.b) * 832f), vec4<bool>(false, var_4.x, var_4.x, true));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_add_i32(abs(arg_0.a.b), (i32(-1i) * -2147483647i) << (~min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(0u, 1590u, 105075u, 52847u))) % 32u));
    var var_1 = Struct_3(min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(0u, 4294967295u)), ~53602u | select(~1u, ~53094u, arg_1.x)), arg_0.a.c, 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(590f - arg_0.c.c) - 1393f) - -871f) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-124f + -1325f)), _wgslsmith_f_op_f32(abs(arg_0.b.c)), false)), vec3<i32>(_wgslsmith_sub_i32(-18761i, _wgslsmith_div_i32(-23795i, abs(u_input.a.x))), var_0 & u_input.a.x, 1i & firstTrailingBit(~var_0)));
    var_1 = Struct_3(var_1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(func_2(false).c)), -470f, true)), -747f)), -33777i, (func_2(false).d.x && !(arg_0.a.d.x || false)) && func_2(!func_2(arg_0.c.d.x).d.x).d.x, (-max(vec3<i32>(var_1.e.x, 439i, arg_0.a.a), u_input.a) << (~vec3<u32>(var_1.a, 3223u, var_1.a) % vec3<u32>(32u))) << (vec3<u32>(var_1.a, _wgslsmith_clamp_u32(1u, 0u, 4294967295u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 12157u, 12653u), vec4<u32>(var_1.a, 4294967295u, 4294967295u, 0u)), 0u << (_wgslsmith_add_u32(var_1.a, var_1.a) % 32u)) % vec3<u32>(32u)));
    let var_2 = arg_0.a.c;
    var var_3 = func_2(select(any(!select(vec3<bool>(false, false, arg_0.c.d.x), vec3<bool>(arg_0.c.d.x, arg_0.a.d.x, arg_1.x), arg_0.a.d.x)), _wgslsmith_f_op_f32(arg_0.c.c * arg_0.b.c) > -670f, true));
    return _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a, 0u, var_1.a, 4294967295u), abs(vec4<u32>(var_1.a, 0u, var_1.a, var_1.a))), select(vec4<u32>(var_1.a | 0u, var_1.a, var_1.a, ~var_1.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a, 16092u, 4294967295u, 1258u) >> (vec4<u32>(var_1.a, 4294967295u, var_1.a, var_1.a) % vec4<u32>(32u)), countOneBits(vec4<u32>(1u, 4294967295u, var_1.a, var_1.a)), ~vec4<u32>(var_1.a, var_1.a, var_1.a, 4294967295u)), vec4<bool>(any(arg_0.c.d.xzx), var_1.a <= var_1.a, true, arg_1.x))) << (vec4<u32>(_wgslsmith_mod_u32(abs(4294967295u), ~19913u), func_3(811f), firstTrailingBit((51568u ^ var_1.a) >> (~var_1.a % 32u)), _wgslsmith_clamp_u32(abs(var_1.a), 4294967295u, ~(~15490u))) % vec4<u32>(32u));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_4(Struct_2(func_2(any(vec2<bool>(true, true))), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0, u_input.a.x, arg_0), vec4<i32>(u_input.a.x, u_input.a.x, arg_0, 2147483647i)), 76768i, _wgslsmith_f_op_f32(ceil(-1000f)), vec4<bool>(true, true, true, true)), Struct_1(arg_0, -35403i, _wgslsmith_f_op_f32(floor(773f)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true)), max(countOneBits(u_input.a), -vec3<i32>(18864i, u_input.a.x, -1i))), vec4<bool>(func_2(true).d.x, false && (u_input.a.x < arg_0), true, -260f != func_2(false).c)) >> (~vec4<u32>(~4294967295u, ~1u, 9513u, 1u) % vec4<u32>(32u));
    let var_1 = !any(!vec4<bool>(any(vec3<bool>(true, false, true)), true, true, true));
    let var_2 = Struct_1(u_input.a.x, -23131i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -897f) * _wgslsmith_f_op_f32(select(139f, -817f, var_1))))), !vec4<bool>(select(false, true, var_1), true, any(vec3<bool>(var_1, var_1, true)), false));
    let var_3 = abs(var_0.x) | 1u;
    let var_4 = Struct_4(~select(var_3, func_3(712f), false));
    return func_2(all(var_2.d.xx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1i | ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -25351i, -2147483647i, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -32924i, u_input.a.x, -2147483647i), vec4<i32>(0i, 1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i))));
    let var_1 = Struct_3(57953u, var_0.c, -_wgslsmith_mult_i32(16415i, _wgslsmith_div_i32(-58616i, ~33689i)), all(func_2(_wgslsmith_clamp_u32(27602u, 1u, 22162u) < countOneBits(4294967295u)).d.zzz), vec3<i32>(~_wgslsmith_div_i32(countOneBits(u_input.a.x), ~0i), ~70721i, max(abs(u_input.a.x), reverseBits(~var_0.b))));
    var var_2 = vec2<f32>(var_1.b, _wgslsmith_f_op_f32(var_0.c - var_1.b));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-723f, var_1.b))));
    let var_4 = var_0;
    var var_5 = Struct_2(func_2(!(var_4.a != var_1.c)), func_2(true), func_2(any(vec4<bool>(false, true, false, !var_4.d.x))), u_input.a);
    var_5 = Struct_2(Struct_1(u_input.a.x, reverseBits(_wgslsmith_sub_i32(var_5.d.x, abs(var_5.c.a))), _wgslsmith_f_op_f32(-1621f * _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(sign(var_4.c)))), !var_4.d), var_4, func_2(var_0.d.x), select(max(var_1.e, vec3<i32>(_wgslsmith_dot_vec3_i32(var_5.d, vec3<i32>(u_input.a.x, -52471i, -2147483647i)), func_2(var_4.d.x).a, -1i)), max(u_input.a, select(-vec3<i32>(u_input.a.x, 1i, -41994i), vec3<i32>(-1i, -12929i, 24756i), select(var_4.d.zzz, var_5.a.d.yww, var_1.d))), var_4.d.wzy));
    var_5 = Struct_2(var_5.b, Struct_1(var_0.b, var_4.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_2.x, -481f)), -656f)), var_4.d), Struct_1(1i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(1246i, -4056i, var_0.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_5.b.c)), _wgslsmith_f_op_f32(var_2.x * var_0.c), true)))), var_0.d), ~vec3<i32>(-firstLeadingBit(var_1.c), 6852i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(1u, var_1.a, var_1.a, var_1.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a, 25856u, 93174u, var_1.a), vec4<u32>(0u, var_1.a, 1u, 4294967295u)))), ~(~max(vec4<u32>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<u32>(var_1.a, 4294967295u, 0u, 0u)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b, var_5.b.c), _wgslsmith_f_op_f32(-var_1.b)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1747f)), 887f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_5.b.d.x).c * _wgslsmith_f_op_f32(var_3 + var_4.c)) - _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, 717f), var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(func_2(var_0.d.x).c)) + _wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_sub_vec2_i32(vec2<i32>(-281i, var_1.e.x), _wgslsmith_add_vec2_i32(-vec2<i32>(-1i, 2147483647i), ~var_5.d.yy)), _wgslsmith_f_op_f32(-var_1.b));
}

