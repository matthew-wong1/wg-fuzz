struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<bool>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<bool>,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: vec4<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> u32 {
    var var_0 = u_input.b.wzz;
    return u_input.a;
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.b.b, arg_0.a.b.b) + _wgslsmith_f_op_f32(round(arg_2.b.b.b))) * arg_0.a.b.b)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(988f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1736f + 264f)))))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.c.x))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1013f, -798f))) + arg_3.b), ~vec4<u32>(1u, firstTrailingBit(u_input.c), ~(~0u), arg_3.a), Struct_2(~arg_3.e, arg_2.b.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0.c.ww)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b, -963f)), vec2<f32>(arg_3.b, 562f), vec2<bool>(arg_0.d.b.b.c.x, true))))), arg_2.b.b);
    var_1 = Struct_4(_wgslsmith_f_op_f32(-826f - _wgslsmith_f_op_f32(floor(-515f))), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.e, 1u, abs(arg_2.b.a), reverseBits(0u)), ~(~var_1.b))), arg_0.a, arg_0.c.xw, Struct_1(~(1u | _wgslsmith_add_u32(arg_2.d, u_input.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.b.b), var_1.e.b, false)), !arg_2.c.yz, ~vec3<i32>(firstTrailingBit(-2147483647i), _wgslsmith_add_i32(arg_3.d.x, -25624i), ~u_input.e.x), 78145u));
    let var_2 = arg_0.c.yy;
    return true | select(true, select(true, true, arg_0.d.b.b.c.x), true);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -1008f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(878f)))));
    let var_1 = _wgslsmith_mod_vec2_i32((~_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.e.x), u_input.b.wy) >> ((abs(arg_0) | countOneBits(arg_0)) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e.x, -18356i), u_input.b.yy), vec2<i32>(-15601i, u_input.d.x)), max(select(abs(vec2<i32>(u_input.d.x, -32651i)), _wgslsmith_mod_vec2_i32(u_input.d, u_input.d) ^ ~vec2<i32>(2147483647i, 29629i), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), u_input.d));
    var var_2 = true;
    var var_3 = Struct_2(u_input.a, Struct_1(~4294967295u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_1.x)))), !vec2<bool>(func_3(Struct_5(Struct_2(18662u, Struct_1(34526u, arg_1.x, vec2<bool>(true, true), u_input.b.xxx, arg_0.x)), 12026u, vec4<f32>(arg_1.x, -1173f, arg_1.x, -540f), Struct_3(4294967295u, Struct_2(u_input.c, Struct_1(arg_0.x, 259f, vec2<bool>(false, true), u_input.e, arg_0.x)), vec3<bool>(false, true, false), u_input.c)), vec3<bool>(false, true, true), Struct_3(1u, Struct_2(55654u, Struct_1(18889u, arg_1.x, vec2<bool>(true, false), u_input.e, 16305u)), vec3<bool>(true, false, false), arg_0.x), Struct_1(4294967295u, -1353f, vec2<bool>(true, false), u_input.e, 10433u)), true), firstTrailingBit(u_input.e), ~4294967295u >> (abs(0u) % 32u)));
    var var_4 = vec3<i32>(var_3.b.d.x, var_1.x, 0i);
    return true;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32, arg_3: Struct_5) -> Struct_5 {
    let var_0 = arg_1.c;
    var var_1 = Struct_1(arg_0.a, 1f, !vec2<bool>(arg_3.d.b.b.c.x, true), vec3<i32>(reverseBits(u_input.e.x), arg_3.a.b.d.x, arg_1.b.b.d.x ^ _wgslsmith_dot_vec2_i32(u_input.d | arg_0.b.b.d.zx, vec2<i32>(u_input.b.x, -1i))), arg_1.d);
    var var_2 = Struct_4(-131f, countOneBits(vec4<u32>(1u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.e, arg_3.a.a, 1u, 1u), vec4<u32>(arg_1.d, 1u, 4294967295u, arg_0.d) >> (vec4<u32>(4342u, 24765u, u_input.a, arg_3.b) % vec4<u32>(32u))), u_input.a)), arg_3.d.b, arg_3.c.wy, Struct_1(~u_input.c, arg_3.d.b.b.b, var_0.yx, vec3<i32>(arg_0.b.b.d.x ^ countOneBits(arg_3.d.b.b.d.x), -(~81900i), arg_0.b.b.d.x), var_1.a));
    let var_3 = arg_1.b.b.d.x;
    var var_4 = Struct_1(_wgslsmith_sub_u32(u_input.c, 0u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-331f * arg_2))))), select(vec2<bool>(!(!var_1.c.x), false), vec2<bool>(true, var_1.c.x), false), vec3<i32>(5747i >> (var_2.e.a % 32u), _wgslsmith_mult_i32(1i << (var_2.b.x % 32u), u_input.e.x) & -1i, arg_1.b.b.d.x), firstLeadingBit(~4437u));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(u_input.c, Struct_2(~func_1(), Struct_1(4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -2075f), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), ~u_input.e, ~20012u)), vec3<bool>(true, !(u_input.b.x == 2147483647i), func_2(~vec2<u32>(11349u, u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-233f, 2200f, 906f) + vec3<f32>(745f, 1065f, 621f)))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a << (u_input.a % 32u), 4294967295u, ~u_input.a), _wgslsmith_mod_u32(~u_input.a, 82030u >> (u_input.a % 32u)))), Struct_3(abs(~_wgslsmith_div_u32(u_input.c, 0u)), Struct_2(1u, Struct_1(abs(u_input.c), _wgslsmith_f_op_f32(select(-624f, -743f, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), ~u_input.e, func_1())), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(vec4<bool>(false, false, false, false))), select(1u, _wgslsmith_add_u32(1u, u_input.c), true) ^ (u_input.a >> (17729u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1242f * _wgslsmith_f_op_f32(min(-1686f, 376f))))), Struct_5(Struct_2(min(u_input.a, u_input.c), Struct_1(~u_input.a, _wgslsmith_f_op_f32(1474f + 316f), vec2<bool>(true, true), vec3<i32>(u_input.b.x, u_input.b.x, u_input.e.x), func_1())), 2307u ^ func_1(), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-922f, -2471f, -279f, 1000f), vec4<f32>(202f, 975f, -105f, -377f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1093f, -603f, 1091f, 532f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1657f, 1363f, 1213f, 253f) + vec4<f32>(-1512f, 759f, 477f, 729f))))), Struct_3(u_input.c & 1u, Struct_2(~u_input.c, Struct_1(u_input.c, -638f, vec2<bool>(false, false), u_input.b.xzw, u_input.c)), vec3<bool>(true, true, true), ~(~u_input.c))));
    let var_1 = vec4<u32>(12403u, u_input.a, u_input.c, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c, u_input.a)) & vec2<u32>(110061u, 0u), max(vec2<u32>(1u, var_0.a.a), ~vec2<u32>(u_input.c, var_0.a.a))), vec2<u32>(firstLeadingBit(var_0.b), _wgslsmith_dot_vec4_u32(vec4<u32>(11067u, 85738u, var_0.a.a, var_0.d.b.b.e), vec4<u32>(89473u, 0u, u_input.c, 69899u)) << (var_0.d.d % 32u))));
    var_0 = Struct_5(var_0.d.b, 1u, vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -825f) + _wgslsmith_div_f32(-1575f, -145f)) + _wgslsmith_f_op_f32(floor(804f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-363f, -965f)), var_0.a.b.b)))), 1292f), var_0.d);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_3(u_input.c, var_0.a, vec3<bool>(true, true, var_0.a.b.c.x), u_input.a), func_4(Struct_3(7536u, Struct_2(var_0.a.a, Struct_1(var_0.d.d, -898f, var_0.a.b.c, vec3<i32>(-1i, 2111i, 56339i), 44627u)), vec3<bool>(var_0.a.b.c.x, true, var_0.a.b.c.x), 30873u), Struct_3(13563u, Struct_2(39369u, Struct_1(var_1.x, var_0.c.x, var_0.a.b.c, u_input.e, var_1.x)), var_0.d.c, 0u), -443f, Struct_5(var_0.d.b, u_input.a, vec4<f32>(241f, 633f, 204f, 1771f), var_0.d)).d, _wgslsmith_f_op_f32(f32(-1f) * -497f), Struct_5(var_0.d.b, 14756u, var_0.c, Struct_3(0u, Struct_2(84739u, var_0.d.b.b), var_0.d.c, 0u))).a.b.b * 1f)), countOneBits(select(var_1, vec4<u32>(1u, var_1.x, u_input.c, 36924u), select(vec4<bool>(var_0.d.c.x, true, true, false), vec4<bool>(false, var_0.a.b.c.x, var_0.d.c.x, true), var_0.a.b.c.x))) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.b, var_1.x, 42441u, var_1.x), ~vec4<u32>(67313u, 115345u, 84806u, var_1.x), vec4<u32>(u_input.a, 1u, ~14898u, 1u)) % vec4<u32>(32u)), var_0.a, _wgslsmith_f_op_vec2_f32(-var_0.c.zx), var_0.a.b);
    var var_3 = var_0.a.b;
    var_3 = func_4(var_0.d, func_4(Struct_3(0u, Struct_2(1718u, func_4(var_0.d, var_0.d, var_0.a.b.b, Struct_5(Struct_2(4294967295u, Struct_1(45820u, var_0.d.b.b.b, vec2<bool>(true, true), vec3<i32>(var_3.d.x, u_input.d.x, u_input.e.x), 4294967295u)), 4294967295u, vec4<f32>(922f, -864f, 1264f, 1446f), var_0.d)).a.b), vec3<bool>(!var_3.c.x, var_2.c.b.c.x, !var_3.c.x), ~_wgslsmith_mult_u32(var_2.c.a, 4294967295u)), Struct_3(var_0.d.b.b.e, func_4(Struct_3(4294967295u, Struct_2(var_2.c.a, var_2.e), var_0.d.c, 52113u), Struct_3(0u, Struct_2(u_input.c, var_0.a.b), var_0.d.c, 1u), _wgslsmith_f_op_f32(select(var_2.e.b, 584f, false)), func_4(Struct_3(var_2.b.x, Struct_2(31152u, Struct_1(var_1.x, 497f, var_0.a.b.c, var_0.a.b.d, 24700u)), vec3<bool>(var_2.c.b.c.x, var_3.c.x, false), var_0.a.a), var_0.d, 1000f, Struct_5(Struct_2(4294967295u, var_0.a.b), 2932u, vec4<f32>(-1024f, -987f, -2275f, -939f), Struct_3(0u, Struct_2(u_input.c, Struct_1(u_input.a, var_0.a.b.b, vec2<bool>(false, var_3.c.x), var_0.d.b.b.d, 0u)), var_0.d.c, 4294967295u)))).d.b, select(var_0.d.c, var_0.d.c, !var_0.d.c), ~(0u ^ var_3.a)), -510f, func_4(var_0.d, func_4(Struct_3(0u, var_2.c, vec3<bool>(var_3.c.x, var_3.c.x, false), u_input.c), func_4(Struct_3(u_input.c, var_0.a, vec3<bool>(true, var_2.c.b.c.x, var_2.e.c.x), 11585u), Struct_3(var_0.b, Struct_2(u_input.a, var_0.d.b.b), vec3<bool>(false, var_2.c.b.c.x, true), u_input.c), var_0.a.b.b, Struct_5(Struct_2(var_3.e, Struct_1(0u, 1468f, var_3.c, var_3.d, var_1.x)), 18112u, var_0.c, Struct_3(1u, Struct_2(var_0.b, var_0.d.b.b), var_0.d.c, 61971u))).d, -1000f, func_4(var_0.d, Struct_3(34460u, Struct_2(0u, Struct_1(88930u, var_2.e.b, var_2.e.c, var_2.c.b.d, u_input.c)), var_0.d.c, var_3.a), 720f, Struct_5(var_0.a, var_3.a, vec4<f32>(-1317f, -2042f, var_0.c.x, 537f), var_0.d))).d, -968f, Struct_5(func_4(var_0.d, var_0.d, -1384f, Struct_5(Struct_2(4294967295u, var_0.a.b), 0u, var_0.c, var_0.d)).d.b, 1u, func_4(Struct_3(u_input.a, Struct_2(var_3.e, Struct_1(71832u, var_0.c.x, var_0.a.b.c, var_2.e.d, var_0.b)), vec3<bool>(false, var_3.c.x, var_2.c.b.c.x), 4294967295u), var_0.d, -1876f, Struct_5(Struct_2(43416u, Struct_1(82863u, 1000f, var_0.a.b.c, vec3<i32>(u_input.b.x, -41860i, 32898i), 1u)), 1u, vec4<f32>(var_2.e.b, var_2.a, -117f, -1156f), Struct_3(var_2.e.a, Struct_2(1u, var_2.e), vec3<bool>(var_2.e.c.x, true, var_3.c.x), 6192u))).c, var_0.d))).d, -498f, func_4(Struct_3(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_3.e, 1u), var_0.d.a), Struct_2(var_0.d.b.b.a, func_4(Struct_3(var_3.e, var_2.c, vec3<bool>(false, true, var_0.d.c.x), 36285u), var_0.d, var_2.a, Struct_5(var_2.c, var_1.x, var_0.c, var_0.d)).d.b.b), func_4(var_0.d, func_4(Struct_3(0u, Struct_2(1u, Struct_1(1u, 365f, vec2<bool>(var_2.c.b.c.x, var_0.a.b.c.x), vec3<i32>(u_input.e.x, 2147483647i, u_input.e.x), 0u)), vec3<bool>(var_3.c.x, var_3.c.x, var_3.c.x), var_3.e), Struct_3(var_1.x, Struct_2(17055u, var_0.a.b), var_0.d.c, 4294967295u), -625f, Struct_5(Struct_2(19310u, var_0.d.b.b), var_0.a.b.a, vec4<f32>(834f, var_2.c.b.b, -434f, -278f), var_0.d)).d, var_3.b, func_4(Struct_3(0u, Struct_2(0u, var_0.d.b.b), var_0.d.c, u_input.a), Struct_3(var_1.x, Struct_2(56943u, var_2.c.b), var_0.d.c, 39199u), 1126f, Struct_5(var_0.d.b, u_input.c, vec4<f32>(var_0.a.b.b, 419f, 876f, 960f), Struct_3(0u, Struct_2(4294967295u, Struct_1(var_3.a, 1021f, var_2.c.b.c, u_input.b.wyy, var_1.x)), vec3<bool>(false, var_0.d.c.x, false), 27941u)))).d.c, 1u), Struct_3(43126u, var_2.c, !var_0.d.c, abs(58216u)), var_3.b, Struct_5(func_4(func_4(Struct_3(49840u, Struct_2(var_1.x, Struct_1(1u, var_2.c.b.b, vec2<bool>(var_3.c.x, false), vec3<i32>(-23330i, var_3.d.x, var_2.e.d.x), var_1.x)), vec3<bool>(var_0.d.c.x, true, var_0.d.c.x), var_0.d.a), Struct_3(4294967295u, var_2.c, var_0.d.c, 67845u), -885f, Struct_5(Struct_2(var_0.a.a, Struct_1(4294967295u, 817f, vec2<bool>(var_2.c.b.c.x, false), var_3.d, var_1.x)), var_1.x, vec4<f32>(219f, var_2.a, var_0.d.b.b.b, var_3.b), Struct_3(u_input.a, Struct_2(1u, Struct_1(var_1.x, var_0.c.x, var_2.e.c, vec3<i32>(-2147483647i, u_input.e.x, var_2.c.b.d.x), 11654u)), vec3<bool>(var_3.c.x, true, false), 4294967295u))).d, func_4(var_0.d, var_0.d, -493f, Struct_5(Struct_2(3814u, Struct_1(9568u, var_2.c.b.b, vec2<bool>(false, true), var_2.c.b.d, 0u)), 1u, var_0.c, var_0.d)).d, -1666f, func_4(Struct_3(var_2.c.a, Struct_2(4294967295u, Struct_1(4294967295u, -127f, vec2<bool>(false, false), var_0.a.b.d, u_input.a)), vec3<bool>(true, true, false), 1u), var_0.d, var_0.c.x, Struct_5(Struct_2(1u, Struct_1(30244u, -449f, vec2<bool>(false, var_2.e.c.x), u_input.e, 1u)), 0u, vec4<f32>(var_2.d.x, 566f, 1790f, 384f), Struct_3(var_3.e, var_2.c, vec3<bool>(false, false, var_3.c.x), 51128u)))).d.b, 4294967295u, func_4(var_0.d, func_4(Struct_3(var_2.b.x, Struct_2(0u, Struct_1(var_1.x, var_2.c.b.b, vec2<bool>(var_3.c.x, var_2.c.b.c.x), var_0.d.b.b.d, u_input.c)), var_0.d.c, var_2.c.a), Struct_3(var_1.x, var_2.c, vec3<bool>(var_2.e.c.x, true, true), u_input.a), var_0.a.b.b, Struct_5(Struct_2(var_1.x, Struct_1(var_3.a, -685f, vec2<bool>(var_2.e.c.x, var_2.c.b.c.x), vec3<i32>(-13298i, 1903i, 1i), 0u)), 12647u, vec4<f32>(-675f, var_0.c.x, -1145f, var_0.d.b.b.b), Struct_3(var_2.e.e, Struct_2(var_1.x, Struct_1(0u, 962f, vec2<bool>(var_2.e.c.x, var_3.c.x), vec3<i32>(0i, u_input.d.x, 0i), var_3.a)), var_0.d.c, 1u))).d, _wgslsmith_f_op_f32(var_3.b * var_2.e.b), func_4(var_0.d, var_0.d, -1166f, Struct_5(var_0.a, 8875u, var_0.c, Struct_3(0u, var_0.a, var_0.d.c, 2101u)))).c, var_0.d))).a.b;
    var var_4 = func_4(Struct_3(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, u_input.a, var_2.c.a, 9321u), abs(vec4<u32>(20570u, var_0.b, 4294967295u, 0u))), var_2.b), var_0.a, select(vec3<bool>(true, var_0.d.c.x & var_0.a.b.c.x, !var_0.a.b.c.x), !var_0.d.c, !var_0.d.c), u_input.a | 51211u), func_4(Struct_3(0u, func_4(Struct_3(var_0.b, var_0.d.b, var_0.d.c, var_1.x), var_0.d, -202f, func_4(Struct_3(u_input.c, Struct_2(var_3.e, Struct_1(var_1.x, -2015f, vec2<bool>(var_2.e.c.x, true), vec3<i32>(u_input.b.x, u_input.b.x, var_0.a.b.d.x), 4294967295u)), vec3<bool>(var_0.d.c.x, var_3.c.x, var_2.c.b.c.x), 15251u), var_0.d, var_2.e.b, Struct_5(var_2.c, 19943u, vec4<f32>(var_3.b, -645f, 312f, -725f), Struct_3(1u, Struct_2(u_input.a, var_0.d.b.b), var_0.d.c, var_0.b)))).d.b, select(select(var_0.d.c, var_0.d.c, var_2.e.c.x), vec3<bool>(false, false, var_2.c.b.c.x), select(vec3<bool>(var_0.d.c.x, var_3.c.x, var_0.a.b.c.x), vec3<bool>(true, var_2.e.c.x, true), var_0.a.b.c.x)), ~firstLeadingBit(45787u)), Struct_3(firstTrailingBit(var_2.e.a), var_2.c, !(!var_0.d.c), select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, var_2.b.x, 4294967295u, 0u), var_1), 1u, true)), 171f, Struct_5(func_4(func_4(var_0.d, Struct_3(u_input.c, Struct_2(var_0.d.d, Struct_1(6926u, -1000f, var_0.a.b.c, vec3<i32>(-2147483647i, -2147483647i, u_input.b.x), 0u)), var_0.d.c, 45367u), var_0.a.b.b, Struct_5(Struct_2(56480u, var_2.e), 1u, var_0.c, Struct_3(var_2.c.b.e, var_0.d.b, var_0.d.c, 28912u))).d, Struct_3(1u, var_2.c, vec3<bool>(var_0.a.b.c.x, var_3.c.x, false), 0u), _wgslsmith_f_op_f32(abs(354f)), func_4(var_0.d, Struct_3(var_0.b, Struct_2(1u, Struct_1(44316u, var_0.a.b.b, vec2<bool>(var_0.a.b.c.x, false), var_0.a.b.d, 0u)), vec3<bool>(false, false, false), u_input.c), var_2.c.b.b, Struct_5(var_0.a, 7269u, var_0.c, var_0.d))).d.b, abs(u_input.c) << (1u % 32u), var_0.c, Struct_3(_wgslsmith_dot_vec4_u32(var_2.b, var_1), Struct_2(4294967295u, var_2.e), var_0.d.c, var_3.e ^ 25915u))).d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - var_3.b))) - 1118f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.c.b.b)))), func_4(func_4(var_0.d, func_4(Struct_3(u_input.a, Struct_2(31222u, Struct_1(1u, -788f, vec2<bool>(var_2.c.b.c.x, true), vec3<i32>(1i, 36895i, 2147483647i), var_1.x)), var_0.d.c, 0u), var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -422f), Struct_5(Struct_2(32857u, Struct_1(var_3.a, 1091f, var_2.e.c, vec3<i32>(45220i, var_3.d.x, -2147483647i), var_3.a)), 24826u, var_0.c, var_0.d)).d, _wgslsmith_f_op_f32(floor(-1000f)), func_4(Struct_3(var_1.x, var_2.c, vec3<bool>(false, var_3.c.x, false), 24372u), func_4(var_0.d, Struct_3(0u, Struct_2(0u, var_0.a.b), var_0.d.c, 1u), 1000f, Struct_5(Struct_2(42171u, Struct_1(var_0.d.a, var_0.a.b.b, vec2<bool>(false, false), vec3<i32>(var_3.d.x, var_0.d.b.b.d.x, -1i), 0u)), var_2.e.a, vec4<f32>(var_2.a, var_0.a.b.b, var_2.e.b, -1861f), var_0.d)).d, 916f, Struct_5(var_2.c, 22876u, var_0.c, Struct_3(u_input.a, Struct_2(var_2.b.x, Struct_1(var_1.x, var_2.a, var_2.c.b.c, vec3<i32>(-1i, u_input.e.x, u_input.e.x), 1u)), vec3<bool>(var_2.c.b.c.x, true, true), var_2.e.a)))).d, var_0.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.d.b.b.b))))), func_4(func_4(var_0.d, func_4(Struct_3(u_input.a, Struct_2(var_3.e, Struct_1(48157u, var_2.d.x, var_3.c, vec3<i32>(-776i, -12994i, u_input.d.x), var_0.b)), vec3<bool>(var_0.d.b.b.c.x, false, true), var_2.c.b.e), var_0.d, var_0.d.b.b.b, Struct_5(Struct_2(74324u, var_0.d.b.b), 13511u, vec4<f32>(var_2.d.x, var_0.d.b.b.b, -441f, -447f), var_0.d)).d, -730f, Struct_5(var_0.a, var_0.b, vec4<f32>(var_0.a.b.b, var_3.b, 2097f, var_0.c.x), var_0.d)).d, func_4(var_0.d, var_0.d, var_2.a, Struct_5(Struct_2(var_1.x, var_0.a.b), var_3.e, vec4<f32>(-170f, -617f, 1432f, var_3.b), Struct_3(7003u, Struct_2(23638u, Struct_1(u_input.c, var_0.a.b.b, vec2<bool>(var_2.e.c.x, false), u_input.e, var_1.x)), vec3<bool>(var_3.c.x, true, false), 1u))).d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(437f, 1008f)), func_4(func_4(Struct_3(28377u, Struct_2(41216u, Struct_1(var_2.b.x, var_0.d.b.b.b, vec2<bool>(var_3.c.x, true), vec3<i32>(0i, 1i, var_2.c.b.d.x), 14073u)), var_0.d.c, 4294967295u), Struct_3(var_2.c.a, var_0.d.b, vec3<bool>(var_0.d.c.x, false, var_3.c.x), 4294967295u), -473f, Struct_5(Struct_2(0u, Struct_1(var_1.x, -1282f, vec2<bool>(var_3.c.x, true), vec3<i32>(-2147483647i, u_input.e.x, -6959i), 4294967295u)), var_0.d.b.a, var_0.c, Struct_3(62926u, Struct_2(var_3.e, var_2.c.b), var_0.d.c, 0u))).d, func_4(var_0.d, Struct_3(1u, var_0.d.b, vec3<bool>(var_2.c.b.c.x, false, var_0.d.b.b.c.x), var_0.b), 990f, Struct_5(Struct_2(4294967295u, var_0.d.b.b), var_3.e, var_0.c, Struct_3(var_1.x, var_0.d.b, vec3<bool>(false, var_0.a.b.c.x, true), u_input.c))).d, _wgslsmith_f_op_f32(-1388f * var_2.a), Struct_5(var_0.a, u_input.a, var_0.c, Struct_3(26047u, Struct_2(4294967295u, Struct_1(50449u, var_2.d.x, vec2<bool>(true, false), var_2.c.b.d, 1u)), var_0.d.c, var_1.x)))))).d;
    var var_5 = _wgslsmith_clamp_vec2_i32(var_2.c.b.d.xy >> (~abs(var_1.yw) % vec2<u32>(32u)), vec2<i32>(u_input.e.x, _wgslsmith_dot_vec2_i32(abs(firstLeadingBit(u_input.e.yy)), vec2<i32>(~(-1i), var_0.d.b.b.d.x))), _wgslsmith_add_vec2_i32(var_3.d.yz, vec2<i32>(_wgslsmith_div_i32(max(u_input.b.x, var_0.d.b.b.d.x), _wgslsmith_add_i32(22339i, var_3.d.x)), u_input.b.x)));
    var var_6 = var_2.c.b.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(15538i, firstTrailingBit(u_input.b.x)), firstLeadingBit(select(var_3.d.x, u_input.b.x, var_0.d.b.b.c.x)), ~(var_0.a.b.d.x | var_4.b.b.d.x), var_4.b.b.d.x), select(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b) ^ (vec4<i32>(-15885i, var_0.d.b.b.d.x, 0i, var_5.x) >> (vec4<u32>(14422u, 65524u, 0u, var_4.a) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(-u_input.b, u_input.b, _wgslsmith_sub_vec4_i32(vec4<i32>(13792i, var_4.b.b.d.x, 1i, var_2.e.d.x), vec4<i32>(-1i, -2147483647i, var_3.d.x, var_4.b.b.d.x))), all(!vec4<bool>(false, var_3.c.x, var_4.b.b.c.x, var_4.b.b.c.x)))), var_1.yzz, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.c.b.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_4.b.b.b))))), _wgslsmith_f_op_f32(-var_2.d.x), var_4.b.b.b);
}

