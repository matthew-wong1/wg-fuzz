struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: f32, arg_3: vec2<f32>) -> bool {
    var var_0 = u_input.e;
    let var_1 = countOneBits(select(_wgslsmith_sub_vec4_u32(vec4<u32>(abs(arg_1.x), reverseBits(0u), ~0u, 24184u), ~abs(vec4<u32>(20794u, 0u, 31635u, u_input.b))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(67909u, 35985u, arg_1.x, u_input.a)), countOneBits(vec4<u32>(45497u, arg_0.c.d, u_input.a, u_input.a)) & (vec4<u32>(0u, arg_1.x, 89267u, arg_0.d) | vec4<u32>(arg_0.d, 0u, 127784u, u_input.c)), vec4<u32>(4294967295u, arg_1.x, 1u, u_input.c >> (arg_1.x % 32u))), any(!(!vec4<bool>(arg_0.b, arg_0.a.x, arg_0.a.x, arg_0.c.b.a)))));
    var_0 = _wgslsmith_mult_vec2_i32(abs(-firstLeadingBit(_wgslsmith_sub_vec2_i32(u_input.e, u_input.d.xy))), u_input.e);
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(var_0.x, 1i, 0i, var_0.x) ^ ~(-u_input.d)), var_0.x | (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 29870i, arg_0.c.e), u_input.d.zyw) ^ -(i32(-1i) * -23300i)));
    return true;
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1689f, 1323f)), _wgslsmith_f_op_f32(-1671f - -176f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(250f))))), -179f));
    let var_1 = all(vec4<bool>(any(!arg_0.zw), func_3(Struct_4(vec3<bool>(true, false, arg_0.x), arg_0.x, Struct_2(4294967295u, Struct_1(arg_0.x, -170f), Struct_1(arg_0.x, var_0.x), 1u, u_input.e.x), 1u), vec3<u32>(u_input.b, u_input.a, 1u), var_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(668f, 131f))) || true, u_input.a > 1u, arg_0.x));
    let var_2 = 341f;
    let var_3 = Struct_3(abs(_wgslsmith_sub_i32(~(-u_input.d.x), -15915i)), Struct_2(_wgslsmith_add_u32(~max(121643u, 92235u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 38807u), vec2<u32>(u_input.a, u_input.b)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.c, u_input.c)))), Struct_1(-695f != var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-706f))))), Struct_1(any(!vec3<bool>(false, true, var_1)), var_0.x), _wgslsmith_div_u32(firstLeadingBit(u_input.c), u_input.b), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.e.x, 0i), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.e, u_input.d.xw, u_input.e), vec2<i32>(2147483647i, u_input.e.x)))), var_1);
    let var_4 = Struct_1(any(select(arg_0, !vec4<bool>(var_1, arg_0.x, true, false), arg_0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(594f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - -1645f)))))));
    return var_3.b.d;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<i32>) -> f32 {
    let var_0 = ~(~1u) == abs(arg_1.b.d);
    var var_1 = vec4<u32>(~11189u, 3916u << (~_wgslsmith_dot_vec4_u32(vec4<u32>(87546u, arg_2.b.a, 1u, 1u) | vec4<u32>(arg_1.b.d, 21739u, u_input.a, u_input.a), vec4<u32>(85311u, arg_2.b.a, arg_1.b.d, 4294967295u)) % 32u), countOneBits(81922u >> (func_2(!vec4<bool>(false, arg_1.c, var_0, var_0)) % 32u)), 1u);
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(~(arg_2.b.e | arg_2.b.e), u_input.d.x & arg_3.x), firstTrailingBit(u_input.e));
    var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(select(u_input.c, 36612u, var_0), arg_1.b.a << (53385u % 32u), 0u << (u_input.a % 32u), 79602u), ~(~vec4<u32>(121691u, arg_2.b.a, arg_1.b.a, arg_2.b.a))), ~(~(~vec4<u32>(6191u, 61922u, 0u, 4294967295u))) << (_wgslsmith_add_vec4_u32(vec4<u32>(18806u, firstLeadingBit(arg_1.b.a), 1u, arg_2.b.d), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, var_1.x, 1u, u_input.a), firstTrailingBit(vec4<u32>(arg_1.b.d, 1u, arg_1.b.d, 221u)))) % vec4<u32>(32u)));
    var var_3 = Struct_5(Struct_4(vec3<bool>(arg_2.c, true, select(all(vec3<bool>(arg_1.b.b.a, false, arg_1.c)), select(arg_2.b.b.a, false, false), !arg_2.b.c.a)), var_0, arg_1.b, 1u));
    return var_3.a.c.c.b;
}

fn func_1() -> vec4<u32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(85949i, Struct_3(u_input.e.x, Struct_2(func_2(vec4<bool>(false, true, false, false)), Struct_1(false, -186f), Struct_1(false, 417f), 47692u, u_input.d.x), select(true, any(vec3<bool>(true, false, true)), true)), Struct_3(~(~0i), Struct_2(_wgslsmith_sub_u32(u_input.a, u_input.c), Struct_1(false, -1687f), Struct_1(false, -974f), 25051u ^ u_input.c, 13173i), true), vec4<i32>(u_input.d.x, u_input.d.x, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.d.x, u_input.e.x, u_input.d.x), vec3<i32>(u_input.d.x, 2147483647i, u_input.d.x), false), ~vec3<i32>(u_input.e.x, u_input.d.x, u_input.d.x)), ~firstTrailingBit(2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1238f + -1096f))))) + _wgslsmith_f_op_f32(func_4(-9538i, Struct_3(36485i, Struct_2(u_input.a, Struct_1(false, 1642f), Struct_1(true, 171f), 4294967295u, 0i), select(true, false, true)), Struct_3(-1i, Struct_2(u_input.c, Struct_1(false, 1000f), Struct_1(false, 1297f), u_input.b, u_input.e.x), true), ~vec4<i32>(17924i, 1i, u_input.e.x, u_input.d.x)))));
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), 354f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -377f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(996f, 866f) + var_0.x)))));
    var var_1 = Struct_4(!(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), true)), !all(select(vec2<bool>(true, true), vec2<bool>(false, true), u_input.b <= 33361u)), Struct_2(u_input.c, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.d.x), vec2<i32>(u_input.e.x, u_input.d.x)) == _wgslsmith_sub_i32(u_input.e.x, u_input.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1584f, var_0.x, true)))), Struct_1(func_3(Struct_4(vec3<bool>(false, true, true), false, Struct_2(18915u, Struct_1(false, -120f), Struct_1(false, -716f), u_input.a, -50715i), u_input.a), abs(vec3<u32>(u_input.b, 1u, 83692u)), _wgslsmith_div_f32(315f, -458f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x * var_0.x)))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.c, ~1u, 0u >> (1u % 32u)), 57285u), -(~u_input.e.x)), firstTrailingBit(0u));
    var_1 = Struct_4(select(!(!select(var_1.a, var_1.a, vec3<bool>(var_1.b, var_1.c.b.a, true))), select(vec3<bool>(var_1.a.x, var_1.c.e <= 0i, true), !(!vec3<bool>(false, false, var_1.a.x)), false), true), true, var_1.c, (~var_1.c.a | var_1.d) << (22464u % 32u));
    let var_2 = var_1.c.c;
    return ~(vec4<u32>(0u, 1u, ~u_input.b, ~(~u_input.a)) ^ abs(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, var_1.c.a, 2531u), vec4<u32>(u_input.c, var_1.c.d, 95094u, u_input.c)))));
}

fn func_5(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_5) -> u32 {
    let var_0 = vec2<bool>(arg_0, _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(arg_2.a.d, arg_2.a.c.d, 1u), _wgslsmith_dot_vec3_u32(~arg_1.xxz, vec3<u32>(arg_1.x, arg_2.a.d, 28475u))) == _wgslsmith_dot_vec3_u32(~arg_1.zzz, vec3<u32>(~1u, 4294967295u, func_1().x)));
    let var_1 = !(var_0.x | ((0i == firstTrailingBit(-54026i)) || true));
    var var_2 = u_input.e.x;
    var_2 = arg_2.a.c.e;
    var var_3 = Struct_3(-2147483647i, Struct_2(~(~arg_2.a.d & ~102731u), Struct_1(!arg_2.a.a.x & arg_2.a.c.b.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_2.a.c.c.b))))), arg_2.a.c.b, ~4294967295u, 37053i), any(vec2<bool>(arg_2.a.b, arg_2.a.c.b.b == 681f)));
    return abs(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(arg_1.wxx), _wgslsmith_mod_vec3_u32(arg_1.xyx, vec3<u32>(22159u, arg_2.a.c.a, arg_2.a.d))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, 8904u), arg_1.xwz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = ~func_5(!(u_input.d.x == -1i), min(select(~vec4<u32>(34020u, u_input.b, var_0, 64390u), ~vec4<u32>(var_0, 0u, 1u, var_0), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false))), func_1()), Struct_5(Struct_4(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), true, Struct_2(1u, Struct_1(false, -1202f), Struct_1(true, -235f), var_0, 2147483647i), _wgslsmith_clamp_u32(u_input.c, u_input.c, 0u))));
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(30681u, _wgslsmith_sub_u32(var_1, _wgslsmith_sub_u32(func_2(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true))), ~var_1)), max(-u_input.e.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.e.x, firstTrailingBit(u_input.e.x)), ~75111i, -28422i)), u_input.a, max(-2147483647i, -_wgslsmith_mult_i32(u_input.d.x, ~u_input.e.x)));
}

