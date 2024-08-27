struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_2.a, arg_2.b);
    let var_1 = 1656f;
    var var_2 = true;
    let var_3 = vec2<bool>(false, -472f > _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_1) * -414f))));
    let var_4 = Struct_2(arg_2);
    return var_4.a;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = min(39u, _wgslsmith_add_u32(u_input.b, _wgslsmith_clamp_u32(abs(~u_input.b), 19620u, 24865u)));
    var_0 = u_input.c.x;
    var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-219f, 1723f, -711f) + vec3<f32>(-526f, -1170f, -1207f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-254f, -536f, 193f) * vec3<f32>(1516f, -1727f, 240f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-559f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -922f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1308f + -721f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1231f, -825f, -1974f) + vec3<f32>(668f, -2426f, -114f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-444f, 155f, 706f) - vec3<f32>(654f, 794f, -1000f)))))));
    let var_2 = func_2(~abs(firstTrailingBit(vec4<u32>(u_input.c.x, u_input.a.x, 0u, u_input.b))) << (_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a.x, 8692u, u_input.a.x, u_input.c.x)), reverseBits(vec4<u32>(u_input.b, u_input.b, 1542u, 27033u))) % vec4<u32>(32u)), min(vec3<u32>(1u, u_input.b ^ _wgslsmith_mod_u32(645u, 87006u), 24849u), ~(~u_input.c << (abs(vec3<u32>(u_input.b, 1u, 4294967295u)) % vec3<u32>(32u)))), arg_1);
    return ~vec4<i32>(select(arg_1.b, _wgslsmith_add_i32(var_2.a, u_input.e), select(false, true, false)), -var_2.a, ~(-select(u_input.e, var_2.a, arg_0.x)), firstTrailingBit(firstTrailingBit(~(-14465i))));
}

fn func_1(arg_0: u32) -> vec3<bool> {
    var var_0 = Struct_2(func_2(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(52835u, arg_0, 4294967295u, 4096u), vec4<u32>(arg_0, arg_0, 52369u, 4294967295u), false), vec4<u32>(0u, u_input.a.x, arg_0, 4294967295u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c.x, 1u, 2211u), vec4<u32>(arg_0, 25858u, 4294967295u, u_input.a.x))), u_input.c | ((u_input.c ^ u_input.c) | vec3<u32>(0u, 1u, 21075u)), Struct_1(reverseBits(u_input.e), abs(-68252i))));
    let var_1 = func_3(!(!vec3<bool>(all(vec3<bool>(false, true, true)), true, any(vec4<bool>(false, false, false, true)))), func_2(vec4<u32>(~(~90678u), _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0, 4294967295u), ~arg_0), 1u, u_input.b), vec3<u32>(~_wgslsmith_div_u32(28240u, u_input.b), _wgslsmith_dot_vec2_u32(u_input.a & vec2<u32>(u_input.a.x, 1u), ~vec2<u32>(1u, arg_0)), _wgslsmith_add_u32(4294967295u, u_input.c.x | 29026u)), func_2(~vec4<u32>(u_input.a.x, u_input.a.x, arg_0, u_input.a.x) & vec4<u32>(37852u, 0u, arg_0, u_input.c.x), vec3<u32>(_wgslsmith_mod_u32(45985u, 54094u), ~0u, 1u), Struct_1(var_0.a.a, abs(-7077i)))));
    let var_2 = _wgslsmith_sub_i32(-2147483647i, countOneBits(~_wgslsmith_dot_vec3_i32(var_1.xww, vec3<i32>(u_input.d.x, var_1.x, var_1.x))) >> (u_input.c.x % 32u));
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(Struct_1(-var_1.x, reverseBits(func_3(vec3<bool>(true, false, true), var_0.a).x)));
    return select(vec3<bool>(true, !((var_2 >= 2147483647i) && select(false, false, true)), false), !(!vec3<bool>(false, any(vec4<bool>(false, false, true, true)), any(vec4<bool>(true, true, true, true)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(vec3<bool>(true, true, true), func_1(firstTrailingBit(u_input.c.x)), vec3<bool>(true, true, true)), vec3<bool>(true, true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))), vec3<bool>(~firstTrailingBit(0u) <= max(_wgslsmith_mod_u32(11670u, 4294967295u), ~u_input.b), true, u_input.b > 71748u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2482f - -942f)))) - -354f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -539f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, -245f, var_0.x)))))));
    var var_2 = Struct_2(Struct_1(-6671i, 1i >> ((~48829u & (u_input.b & 0u)) % 32u)));
    var_2 = Struct_2(func_2(~vec4<u32>(u_input.a.x, reverseBits(u_input.c.x), abs(0u), 4294967295u), max(~vec3<u32>(u_input.a.x, 24180u, 0u), vec3<u32>(26157u, 95522u, 14266u)) << ((u_input.c ^ reverseBits(vec3<u32>(u_input.a.x, u_input.b, 1u))) % vec3<u32>(32u)), var_2.a));
    let var_3 = var_2.a;
    let var_4 = Struct_2(Struct_1(0i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(12438i, -2147483647i, var_3.b), vec3<i32>(-52056i, var_3.b, var_3.b) << (u_input.c % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(vec3<i32>(var_2.a.b, u_input.e, 11926i), -vec3<i32>(-2147483647i, var_2.a.b, 23551i)))));
    let var_5 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1222f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f + 1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(var_5.x - _wgslsmith_div_f32(760f, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2046f, var_5.x))))), _wgslsmith_sub_i32(func_2(~vec4<u32>(1u, 0u, u_input.a.x, u_input.c.x), vec3<u32>(~64350u, abs(46626u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(0u, 0u))), func_2(~vec4<u32>(u_input.c.x, 4294967295u, 38302u, 36439u), _wgslsmith_div_vec3_u32(u_input.c, u_input.c), func_2(vec4<u32>(0u, u_input.b, u_input.c.x, u_input.b), u_input.c, Struct_1(2987i, -7168i)))).b, 2147483647i), vec3<u32>(firstLeadingBit(21039u), u_input.a.x, u_input.b) & vec3<u32>(countOneBits(1u), 4294967295u, ~(~u_input.a.x)), 1u, _wgslsmith_f_op_f32(abs(609f)));
}

