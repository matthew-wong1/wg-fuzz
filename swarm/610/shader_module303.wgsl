struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = select(!vec3<bool>(any(vec3<bool>(true, true, false)), true, all(vec3<bool>(true, true, false)) & true), vec3<bool>(true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true))), false), select(!vec3<bool>(true, 8381u <= u_input.a, true), vec3<bool>(!select(true, false, true), true, true), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))));
    return u_input.a;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-428f, -1409f, 266f)), vec3<f32>(-198f, -1285f, -558f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(498f, -1205f, 890f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1246f, -103f, 253f), vec3<f32>(182f, 141f, 1000f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-1577f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -706f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(585f, 1012f, 236f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-406f, 1689f, 1184f) - vec3<f32>(-2366f, -310f, 277f))))));
    var var_1 = Struct_1(~(~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 92153u), vec4<u32>(51163u, 1u, u_input.a, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 34127u, u_input.a, u_input.a), vec4<u32>(17336u, 32312u, u_input.a, 71585u)))), var_0.x, ~(vec2<u32>(~16447u, u_input.a) | (~vec2<u32>(u_input.a, 65322u) >> ((vec2<u32>(4294967295u, u_input.a) >> (vec2<u32>(u_input.a, 27831u) % vec2<u32>(32u))) % vec2<u32>(32u)))), abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), ~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)) << ((~vec4<u32>(u_input.a, 0u, u_input.a, 1u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(419f - _wgslsmith_f_op_f32(-var_0.x)));
    var_1 = Struct_1(var_1.a >> (firstTrailingBit(var_1.d) % vec4<u32>(32u)), -1000f, min(vec2<u32>(~(u_input.a >> (var_1.d.x % 32u)), u_input.a | 1u), firstTrailingBit(select(vec2<u32>(31810u, var_1.c.x), ~var_1.a.wz, true))), vec4<u32>(17200u, max(reverseBits(51966u), var_1.d.x | var_1.a.x) << ((max(0u, u_input.a) | _wgslsmith_add_u32(0u, 66238u)) % 32u), var_1.a.x, u_input.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x * var_1.b), _wgslsmith_f_op_f32(-1000f + var_1.b))) + _wgslsmith_f_op_f32(exp2(var_0.x))))));
    var var_2 = func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.e, var_1.e))), var_0.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_1.e + -196f))), var_0, !(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false)))), Struct_1(vec4<u32>(var_1.a.x, 4294967295u, 0u, ~(~var_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1837f), vec2<u32>(~_wgslsmith_mod_u32(0u, u_input.a), countOneBits(var_1.c.x)), ~var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -295f))))));
    var_1 = Struct_1(var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2488f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e - -426f))))), abs(~var_1.c), ~_wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(var_1.d.x), ~u_input.a, firstLeadingBit(21773u), _wgslsmith_mod_u32(u_input.a, u_input.a)), vec4<u32>(abs(24004u), _wgslsmith_mult_u32(4294967295u, u_input.a), u_input.a, select(u_input.a, 35610u, true))), _wgslsmith_f_op_f32(ceil(var_0.x)));
    return Struct_1(~(~vec4<u32>(55114u, u_input.a ^ 30660u, ~19633u, _wgslsmith_div_u32(63107u, var_1.c.x))), var_1.e, var_1.d.wz << (reverseBits(~vec2<u32>(var_1.a.x, u_input.a)) % vec2<u32>(32u)), ~vec4<u32>(_wgslsmith_add_u32(0u, var_1.c.x), var_1.d.x, var_1.d.x | var_1.d.x, u_input.a) ^ var_1.d, var_0.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = any(vec2<bool>(~(~u_input.a) < countOneBits(~arg_1.c.x), true));
    var var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - arg_1.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.b)))) + arg_1.b) * arg_1.b);
    let var_3 = Struct_1(arg_1.d, _wgslsmith_f_op_f32(abs(arg_1.e)), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(arg_1.a.x, 0u)), min(vec2<u32>(91371u, 50625u) | arg_1.c, vec2<u32>(u_input.a, 4294967295u))) & vec2<u32>(1u, ~1u), arg_1.d >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(arg_1.a.ww, vec2<u32>(28949u, 0u)), u_input.a, ~arg_1.d.x), (vec4<u32>(19561u, 113269u, u_input.a, u_input.a) << (vec4<u32>(0u, 14274u, arg_1.d.x, 1u) % vec4<u32>(32u))) & ~arg_1.a) % vec4<u32>(32u)), _wgslsmith_f_op_f32(select(-2282f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-792f)), arg_1.b)), _wgslsmith_f_op_f32(select(-1115f, _wgslsmith_f_op_f32(abs(var_2)), false))), select(any(vec3<bool>(false, true, true)), !(-1328f >= arg_1.b), true))));
    var var_4 = ~(~var_3.d);
    return func_2();
}

fn func_1() -> vec4<f32> {
    var var_0 = func_4(abs(-firstTrailingBit(vec4<i32>(9752i, -21138i, 2147483647i, -29218i)) << (~vec4<u32>(31218u, 11564u, u_input.a, u_input.a) % vec4<u32>(32u))), func_2());
    var_0 = func_4(~(~vec4<i32>(max(1i, -2147483647i), i32(-1i) * -55934i, _wgslsmith_mod_i32(-44267i, 2147483647i), firstLeadingBit(42839i))), Struct_1(vec4<u32>(~0u, abs(98228u), firstLeadingBit(u_input.a), countOneBits(1u)) << (var_0.a % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_clamp_vec2_u32(vec2<u32>(5247u, var_0.a.x), var_0.a.wz, var_0.d.zx) ^ _wgslsmith_clamp_vec2_u32(func_2().a.zw, var_0.a.wx, var_0.d.zz), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, u_input.a, 12641u, u_input.a), var_0.a), abs(_wgslsmith_dot_vec4_u32(var_0.d, vec4<u32>(29696u, u_input.a, 2248u, 4294967295u))), ~func_3(vec3<f32>(var_0.e, -326f, 377f), Struct_1(var_0.d, 1536f, vec2<u32>(var_0.a.x, var_0.d.x), vec4<u32>(var_0.c.x, var_0.d.x, u_input.a, 1u), var_0.e)), _wgslsmith_clamp_u32(u_input.a, var_0.a.x, 4294967295u)), _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.e, var_0.b)) - _wgslsmith_f_op_f32(var_0.b * 285f)))));
    let var_1 = Struct_1(countOneBits(func_2().d), _wgslsmith_f_op_f32(abs(-346f)), func_2().c, ~countOneBits(~(vec4<u32>(0u, 4294967295u, 0u, 1u) | var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -822f));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e, -256f, var_1.e, 1985f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e, 364f, 2061f, -874f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_1.b, -1020f, 1511f)))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-824f, _wgslsmith_f_op_f32(select(1635f, -190f, true)), -1000f, _wgslsmith_f_op_f32(-var_0.b))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.e, 1751f, -959f, var_1.b), vec4<f32>(var_0.b, var_0.e, 1378f, -1886f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1007f, 1000f, var_0.b, var_0.e)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-609f, -436f, var_0.b, var_1.b))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, -166f, var_0.b, -913f), vec4<f32>(1000f, var_1.e, var_0.b, var_1.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1052f, 260f, -1260f, var_1.e)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i >> (u_input.a % 32u), 1i), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(6747i, -1i), vec2<i32>(13646i, 0i)), select(vec2<i32>(-50919i, -1i), vec2<i32>(28422i, -30449i), vec2<bool>(true, false)))));
    let var_1 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0) & vec2<i32>(var_0, var_0), vec2<i32>(var_0, 0i) ^ vec2<i32>(var_0, -2147483647i)), firstTrailingBit(1i)), _wgslsmith_mod_vec2_i32(select(-vec2<i32>(var_0, var_0), vec2<i32>(-2147483647i, 34359i), true), max(vec2<i32>(var_0, -20191i), ~vec2<i32>(0i, var_0))), select(vec2<i32>(1i, _wgslsmith_add_i32(var_0, var_0)), vec2<i32>(-15930i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, -1i, var_0, -1i), vec4<i32>(1i, -56282i, var_0, -30293i))), false)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-401f, 890f, -347f, -1393f)))), _wgslsmith_f_op_vec4_f32(func_1())), -reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, var_0), vec2<i32>(var_0, 1i))) ^ (abs(~vec2<i32>(-1i, var_0)) << (vec2<u32>(~var_1, var_1) % vec2<u32>(32u))), ~var_1, ~u_input.a & 122958u);
}

