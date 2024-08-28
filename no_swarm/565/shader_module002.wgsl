struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = Struct_4(Struct_1(min(_wgslsmith_sub_vec3_i32(~vec3<i32>(-25135i, -24826i, -2147483647i), vec3<i32>(0i, 0i, 0i)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i))), _wgslsmith_mod_u32(~(~64904u), 1u), 7773u, ~_wgslsmith_sub_u32(~u_input.a, 8801u)));
    var var_1 = Struct_4(var_0.a);
    let var_2 = false;
    var_0 = Struct_4(var_1.a);
    var var_3 = vec4<bool>(!var_2, all(vec4<bool>(all(!vec2<bool>(var_2, var_2)), false, true, select(var_0.a.a.x == 1i, true, select(false, var_2, var_2)))), !(!any(vec4<bool>(var_2, true, var_2, false))) & var_2, var_2);
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> u32 {
    let var_0 = arg_1;
    var var_1 = Struct_3(!select(vec4<bool>(!arg_0.b.x, false, true, func_3(vec2<f32>(-1000f, -394f))), select(select(vec4<bool>(true, false, arg_0.b.x, true), vec4<bool>(arg_0.c, arg_0.c, false, false), false), vec4<bool>(true, true, true, true), true), !(!vec4<bool>(arg_0.b.x, arg_0.c, arg_0.b.x, true))), vec2<i32>(arg_0.a.a.x, select(arg_0.d.a.x & arg_0.d.a.x, countOneBits(arg_0.d.a.x), select(true, true, true))) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(33091u, u_input.a) >> (vec2<u32>(97220u, arg_0.a.b) % vec2<u32>(32u)), vec2<u32>(arg_1, 1u), ~(~vec2<u32>(20299u, u_input.a))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1394f, _wgslsmith_f_op_f32(-1529f + _wgslsmith_f_op_f32(sign(899f))), _wgslsmith_f_op_f32(sign(-1869f)), 1669f))));
    var var_2 = Struct_3(!var_1.a, vec2<i32>(reverseBits(_wgslsmith_mult_i32(~arg_0.d.a.x, countOneBits(2147483647i))), ~var_1.b.x), var_1.c);
    var var_3 = var_2.c.ww;
    var var_4 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(arg_0.d.a.x, -1i), arg_0.d.a.x), -min(2147483647i, -37305i), _wgslsmith_clamp_i32(-var_1.b.x, -1144i >> (arg_0.a.c % 32u), ~(-2147483647i))), 0u, arg_0.d.d, 41779u), !arg_0.b, !arg_0.c | true, Struct_1(vec3<i32>(_wgslsmith_mult_i32(18494i, arg_0.a.a.x), firstLeadingBit(-36412i), firstTrailingBit(41267i)) | vec3<i32>(var_2.b.x, _wgslsmith_dot_vec3_i32(arg_0.d.a, arg_0.a.a), _wgslsmith_mod_i32(var_2.b.x, -17780i)), arg_0.d.b, 34507u, 1u));
    return ~4294967295u;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = vec2<bool>(true, !all(arg_0.b.zx));
    var_0 = arg_0.b.yz;
    var_0 = vec2<bool>(false, true);
    var var_1 = arg_0.a;
    return arg_0.d;
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(496f, -817f), _wgslsmith_f_op_f32(f32(-1f) * -448f), _wgslsmith_f_op_f32(f32(-1f) * -815f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1812f, 205f, -887f, 504f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-530f, 283f, -1543f, 1220f)))))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1195f + 1315f), -310f)), 686f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(500f * 966f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-987f, -1153f, arg_0))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, 1299f, var_0.x, var_0.x)))))));
    var var_2 = func_4(Struct_2(Struct_1(vec3<i32>(1i, -1i, max(2147483647i, -2147483647i)), abs(1u) >> (1u % 32u), func_2(Struct_2(Struct_1(vec3<i32>(8607i, -1i, 23424i), u_input.a, 33380u, u_input.a), vec3<bool>(arg_0, true, arg_0), true, Struct_1(vec3<i32>(-2147483647i, -40897i, 1674i), u_input.a, 1u, 1u)), u_input.a) ^ countOneBits(u_input.a), firstLeadingBit(max(u_input.a, 4294967295u))), vec3<bool>(true, !arg_0 && !arg_0, select(arg_0 || arg_0, false, arg_0)), !select(arg_0, true, u_input.a == 56595u), Struct_1(vec3<i32>(1i, 1i, 1i), 43870u, u_input.a | 36636u, ~7102u)), vec3<u32>(4294967295u, u_input.a, _wgslsmith_div_u32(firstLeadingBit(4294967295u), reverseBits(4294967295u))));
    var var_3 = _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(-var_2.a, ~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 87859i, var_2.a.x) << (vec3<u32>(0u, var_2.c, var_2.b) % vec3<u32>(32u)), vec3<i32>(var_2.a.x, var_2.a.x, var_2.a.x))), -(-vec3<i32>(var_2.a.x, var_2.a.x, 17253i) >> (~(~vec3<u32>(var_2.b, u_input.a, 45479u)) % vec3<u32>(32u))));
    var var_4 = false;
    return Struct_3(vec4<bool>(false, true, all(select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), vec2<bool>(true, true)), !vec2<bool>(arg_0, false), !arg_0)), arg_0), ~var_3.zz >> (~vec2<u32>(1u, var_2.d) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -233f, -1305f, -1579f) * var_1), _wgslsmith_f_op_vec4_f32(var_0 + vec4<f32>(1733f, var_1.x, -676f, var_1.x))))));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3, arg_3: u32) -> f32 {
    let var_0 = -1000f;
    let var_1 = reverseBits(_wgslsmith_mult_vec4_u32(countOneBits(max(firstTrailingBit(vec4<u32>(arg_3, u_input.a, 61473u, 1u)), ~vec4<u32>(92080u, 4294967295u, 45832u, arg_3))), _wgslsmith_clamp_vec4_u32(min(~vec4<u32>(u_input.a, 0u, arg_3, 5422u), vec4<u32>(u_input.a, u_input.a, arg_3, 7323u)), ~vec4<u32>(arg_3, 1u, u_input.a, 24461u), select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, arg_3, arg_3), vec4<u32>(1u, u_input.a, 1u, 14114u)), max(vec4<u32>(u_input.a, 0u, 1u, 31646u), vec4<u32>(47055u, 4294967295u, 15879u, 72900u)), arg_0.a))));
    var var_2 = func_4(Struct_2(func_4(Struct_2(Struct_1(vec3<i32>(arg_2.b.x, arg_2.b.x, 23353i), 4294967295u, 1u, arg_3), select(arg_2.a.wxx, vec3<bool>(arg_0.a.x, false, arg_0.a.x), arg_0.a.zxw), true && arg_0.a.x, Struct_1(vec3<i32>(arg_2.b.x, 15493i, arg_2.b.x), arg_3, 13863u, 30011u)), firstTrailingBit(min(var_1.wzw, var_1.xxz))), vec3<bool>(!arg_2.a.x, func_3(vec2<f32>(710f, 1274f)), !(arg_2.a.x | true)), arg_2.a.x, func_4(Struct_2(Struct_1(vec3<i32>(arg_2.b.x, arg_0.b.x, arg_2.b.x), 0u, var_1.x, arg_3), !vec3<bool>(true, false, arg_0.a.x), arg_0.a.x, Struct_1(vec3<i32>(arg_2.b.x, -1i, arg_2.b.x), var_1.x, 0u, 0u)), _wgslsmith_clamp_vec3_u32(var_1.zww, ~vec3<u32>(var_1.x, 4294967295u, u_input.a), vec3<u32>(arg_3, var_1.x, arg_3)))), vec3<u32>(58178u, _wgslsmith_add_u32(~2940u & _wgslsmith_dot_vec4_u32(var_1, vec4<u32>(3424u, var_1.x, 68692u, arg_3)), u_input.a | ~u_input.a), 0u));
    var var_3 = var_1;
    var var_4 = Struct_4(Struct_1(max(vec3<i32>(arg_2.b.x, -1i, 13764i), var_2.a), u_input.a, var_1.x, ~var_1.x));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(func_1(true).c.x)), 361f, true)), arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(1i, -6479i, ~firstLeadingBit(12809i) << ((u_input.a ^ ~u_input.a) % 32u)), u_input.a, u_input.a, u_input.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_div_f32(-636f, -1035f))), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(1000f + 1f), _wgslsmith_f_op_f32(func_5(func_1(true), -1507f, Struct_3(vec4<bool>(true, true, true, true), vec2<i32>(0i, -50550i), vec4<f32>(512f, -1058f, -1557f, 1000f)), abs(var_0.b)))) * vec4<f32>(_wgslsmith_f_op_f32(514f - -160f), 583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1379f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-646f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x * var_1.x))), _wgslsmith_f_op_f32(-func_1(false).c.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, -457f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) - _wgslsmith_f_op_f32(307f * -1048f))), _wgslsmith_f_op_f32(round(-1335f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(392f + 433f), -860f))))));
    var_1 = vec4<f32>(-1291f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), var_1.x, all(vec2<bool>(true, false)))))), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1482f * var_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), 950f))));
    let var_2 = -1i;
    let var_3 = var_0;
    var var_4 = Struct_2(func_4(Struct_2(Struct_1(var_0.a & vec3<i32>(var_3.a.x, var_0.a.x, 1i), u_input.a, 42922u, ~1u), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), var_1.x < -819f, var_0), ~vec3<u32>(u_input.a, 22160u, 52480u) ^ vec3<u32>(1u, 4294967295u << (u_input.a % 32u), 4294967295u)), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true)), Struct_1(vec3<i32>(~var_3.a.x, var_2, var_0.a.x), func_2(Struct_2(func_4(Struct_2(var_0, vec3<bool>(false, false, false), true, var_3), vec3<u32>(0u, 4294967295u, 0u)), vec3<bool>(true, true, true), all(vec2<bool>(true, false)), func_4(Struct_2(var_3, vec3<bool>(false, true, true), true, Struct_1(var_0.a, 122576u, 1u, u_input.a)), vec3<u32>(11758u, 29137u, var_0.c))), 1u), u_input.a, ~firstLeadingBit(2067u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(11957i, -57305i), var_0.a.x), -2147483647i, abs(countOneBits(776i)), 40792i)), ~var_2);
}

