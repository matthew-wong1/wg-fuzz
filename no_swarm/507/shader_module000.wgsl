struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<f32>) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(arg_2.x)), 1i, arg_1.ww, vec3<i32>((u_input.b << (34119u % 32u)) << (abs(arg_1.x) % 32u), u_input.b, 0i)), 697f, Struct_1(_wgslsmith_f_op_f32(select(803f, _wgslsmith_f_op_f32(round(arg_2.x)), 16117i >= u_input.a)), -6731i, vec2<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(arg_1.x, arg_0)), ~(~1u)), vec3<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, u_input.b), reverseBits(u_input.a)), -_wgslsmith_mod_i32(u_input.a, 2147483647i))));
    var var_1 = Struct_2(var_0.c, arg_2.x, var_0.a);
    var_1 = var_0;
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(floor(-1895f)), 0i, ~firstLeadingBit(~var_0.a.c), -(-var_0.a.d >> (arg_1.xwx % vec3<u32>(32u)))), vec2<u32>(974u & (_wgslsmith_div_u32(u_input.c, arg_0) >> ((26432u & var_0.a.c.x) % 32u)), _wgslsmith_mod_u32(abs(_wgslsmith_mod_u32(arg_0, var_1.c.c.x)), _wgslsmith_mod_u32(arg_0, 35751u))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_1.c.a), ~2147483647i << (arg_0 % 32u), select(abs(vec2<u32>(4294967295u, arg_0)), firstLeadingBit(var_0.c.c), vec2<bool>(true, true)), vec3<i32>(countOneBits(u_input.a), ~var_0.c.d.x, 1i)), _wgslsmith_f_op_f32(1000f + arg_2.x), Struct_1(arg_2.x, -22466i, ~vec2<u32>(0u, 0u), vec3<i32>(-2147483647i, abs(2147483647i), 1i))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-779f, var_1.b, var_0.c.a, var_0.a.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(471f, -158f, 797f, -272f) + vec4<f32>(arg_2.x, var_1.c.a, 1159f, var_0.c.a))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.a, 1051f, 399f, arg_2.x)))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-495f + -643f), _wgslsmith_f_op_f32(var_1.a.a + var_0.b), _wgslsmith_f_op_f32(var_1.c.a * -1000f), -1578f))))), arg_1.x);
    let var_3 = var_2.a.c;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(67912u, firstTrailingBit(29769u))), 4294967295u, firstTrailingBit(9940u), 15611u), vec4<u32>(arg_0, max(_wgslsmith_sub_u32(var_1.a.c.x ^ 1u, 0u), ~(~5767u)), max(~(78712u | u_input.c), 1u), _wgslsmith_sub_u32(var_2.e, max(_wgslsmith_dot_vec2_u32(var_0.c.c, vec2<u32>(arg_1.x, arg_0)), arg_0 << (var_1.c.c.x % 32u)))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-106f, _wgslsmith_f_op_f32(1955f - _wgslsmith_div_f32(-314f, 1914f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1901f, 2654f)))));
    var var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0, var_0, true)))) - -866f) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_0)));
    let var_2 = select(vec3<bool>(true, !(func_3(1u, vec4<u32>(6404u, 0u, 1u, u_input.c), vec2<f32>(-268f, var_0)) <= u_input.c), -(u_input.b << (u_input.c % 32u)) == (max(u_input.b, u_input.b) << ((u_input.c << (4294967295u % 32u)) % 32u))), !select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), true), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(round(var_0))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1570f - var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(869f + var_0)), false)));
    var var_3 = select(select(var_2, vec3<bool>(var_2.x, all(vec2<bool>(true, true)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f)) == _wgslsmith_f_op_f32(463f - var_0)), vec3<bool>(-20100i <= ((u_input.a >> (u_input.c % 32u)) << ((u_input.c << (11793u % 32u)) % 32u)), var_2.x, all(var_2.yy)), select(false, firstTrailingBit(u_input.c) > ~9232u, all(var_2)) != (1000f < var_0));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0)), 205f, var_0) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(811f, var_0, -583f)))))));
    return Struct_1(_wgslsmith_f_op_f32(min(-543f, _wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(-(i32(-1i) * -45734i), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b, -2147483647i), ~2147483647i), _wgslsmith_div_i32(-u_input.b, abs(u_input.a)), _wgslsmith_add_i32(max(0i, -43375i), u_input.a)), vec4<i32>(select(-26703i, u_input.b, false) | 1i, _wgslsmith_mod_i32(~1i, u_input.b << (u_input.c % 32u)), -22718i, -7221i)), ~_wgslsmith_mult_vec2_u32(~(vec2<u32>(1u, 0u) | vec2<u32>(u_input.c, 1u)), vec2<u32>(~u_input.c, ~15561u)), vec3<i32>(-(~u_input.a), -1i, _wgslsmith_clamp_i32(2147483647i, -1i, u_input.a)));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_clamp_vec3_i32(arg_0.a.d, ~vec3<i32>(23682i, ~func_2().b, 4719i), firstLeadingBit(~(~vec3<i32>(-66083i, 2147483647i, 45714i) | _wgslsmith_mult_vec3_i32(vec3<i32>(83956i, u_input.a, 7173i), arg_0.c.d))));
    var_0 = ~arg_0.c.d;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)) * arg_0.c.a)));
    var var_2 = 1i;
    let var_3 = ~var_0.x;
    return _wgslsmith_sub_u32(16164u, _wgslsmith_clamp_u32(1u, arg_0.c.c.x, ~max(u_input.c, arg_0.c.c.x))) << (countOneBits(abs(1u)) % 32u);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-520f, 300f))))), u_input.a, vec2<u32>(abs(~_wgslsmith_mod_u32(u_input.c, 0u)), func_4(Struct_2(func_2(), -333f, Struct_1(394f, u_input.b, vec2<u32>(1u, u_input.c), vec3<i32>(-2147483647i, 4232i, 6054i))), u_input.b)), -vec3<i32>(i32(-1i) * -31246i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, -72449i), vec3<i32>(-1i, 2147483647i, u_input.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(u_input.b, u_input.b, 0i))) ^ vec3<i32>(u_input.b, _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b, u_input.a), _wgslsmith_clamp_i32(2147483647i, -2218i, u_input.b)), _wgslsmith_mod_i32(firstLeadingBit(u_input.a), _wgslsmith_add_i32(-1i, u_input.a))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(ceil(var_0.a)), u_input.a, _wgslsmith_mod_vec2_u32(firstLeadingBit(countOneBits(vec2<u32>(u_input.c, var_0.c.x))), max(abs(vec2<u32>(u_input.c, 1u)), var_0.c)), ~vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(21689i, var_0.d.x, var_0.d.x), i32(-1i) * -2147483647i)), ~(~var_0.c), Struct_2(func_2(), var_0.a, func_2()), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.a, var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(819f - var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + var_0.a) - var_0.a))), 0u);
    var var_2 = reverseBits(firstLeadingBit(-2147483647i));
    var_0 = var_1.a;
    var var_3 = ~2147483647i;
    return Struct_1(-576f, -1i, vec2<u32>(u_input.c, 4294967295u), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i ^ -u_input.a, ~var_1.a.b, var_1.a.d.x), vec3<i32>(-2147483647i, func_2().d.x, 2147483647i) >> ((_wgslsmith_add_vec3_u32(vec3<u32>(52511u, u_input.c, var_1.b.x), vec3<u32>(var_0.c.x, u_input.c, u_input.c)) ^ ~vec3<u32>(19047u, 6128u, 0u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, true)));
    let var_1 = func_1();
    var var_2 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a * 357f), _wgslsmith_f_op_f32(step(var_1.a, -162f)))), -var_1.b, vec2<u32>(~4294967295u, 1u), ~(~vec3<i32>(u_input.b, u_input.a, 1i))), var_1.a, func_2()), var_1.b);
    let var_3 = Struct_2(Struct_1(-184f, ~(-1i & _wgslsmith_clamp_i32(var_1.b, 42855i, var_1.b)), ~func_2().c, -vec3<i32>(-1i, 14830i, u_input.a) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, var_1.c.x, 18558u), vec3<u32>(0u, 1u, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-var_1.a), func_1());
    var_2 = var_3.c.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(reverseBits(vec4<u32>(var_3.a.c.x, u_input.c, u_input.c, 4294967295u)) ^ ~min(vec4<u32>(var_1.c.x, 0u, 1u, 0u), vec4<u32>(var_1.c.x, 50099u, 0u, 34777u))), vec3<u32>(~(~u_input.c ^ 31508u), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 50606u, var_1.c.x), vec3<u32>(var_1.c.x, var_3.a.c.x, 1u)), _wgslsmith_add_u32(4294967295u, 0u)), _wgslsmith_mod_u32(reverseBits(~var_3.a.c.x), (var_3.a.c.x >> (var_3.c.c.x % 32u)) & 4294967295u)), u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a, -791f, -987f), vec3<f32>(var_1.a, var_3.c.a, -941f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.a, -2837f, var_3.a.a))))))));
}

