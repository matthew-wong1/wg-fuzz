struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: Struct_2,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> f32 {
    var var_0 = reverseBits(-countOneBits(u_input.a));
    var_0 = reverseBits(max(-(vec2<i32>(-1i) * -u_input.a), u_input.d.yy & arg_1.a.a));
    var var_1 = select(arg_1.b.yxz, vec3<bool>(u_input.b != ~(~u_input.c.x), all(arg_1.b.zwy), true), vec3<bool>(all(!vec4<bool>(arg_1.b.x, false, false, arg_1.e)) != false, arg_1.e, true));
    var_1 = vec3<bool>(any(arg_1.b), arg_0 || false, !arg_1.e);
    let var_2 = _wgslsmith_add_u32(u_input.c.x, 72011u);
    return 1779f;
}

fn func_2() -> bool {
    var var_0 = Struct_1(u_input.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(742f * -443f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(506f)), _wgslsmith_f_op_f32(func_3(false, Struct_3(Struct_2(u_input.d.zx), vec4<bool>(false, false, false, false), vec4<f32>(503f, -517f, -338f, 923f), vec3<bool>(false, true, true), true)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))))));
    var var_1 = Struct_1(abs(u_input.a.x), var_0.c.x, var_0.c);
    var_1 = Struct_1(38533i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - var_0.c.x) * var_0.c.x), -665f)), vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -943f) + var_0.b), 2417f))));
    var var_2 = Struct_2(reverseBits(firstTrailingBit(u_input.d.xz)));
    let var_3 = ~firstTrailingBit(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 71799u), 4294967295u, 113229u) >> (_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(82533u, u_input.c.x, u_input.b)), vec3<u32>(40235u, 0u, 23803u)) % vec3<u32>(32u)));
    return _wgslsmith_sub_u32(reverseBits(firstTrailingBit(var_3.x)) >> (~(46650u << (var_3.x % 32u)) % 32u), firstTrailingBit(firstLeadingBit(1u | u_input.c.x))) > _wgslsmith_dot_vec4_u32((~vec4<u32>(var_3.x, var_3.x, u_input.b, var_3.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 31380u, 21199u, var_3.x), vec4<u32>(u_input.c.x, 61576u, var_3.x, 0u)) % vec4<u32>(32u))) | vec4<u32>(~u_input.b, _wgslsmith_div_u32(var_3.x, u_input.b), 76779u, var_3.x), _wgslsmith_sub_vec4_u32(~firstTrailingBit(vec4<u32>(82602u, var_3.x, 1u, 37506u)), ~(~vec4<u32>(var_3.x, u_input.b, 1u, 1u))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec2<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(round(-1139f));
    var_0 = 2892f;
    let var_1 = -931f;
    var var_2 = ~_wgslsmith_mod_vec4_u32(select(firstTrailingBit(vec4<u32>(u_input.b, 125157u, arg_2.x, arg_2.x)) ^ abs(vec4<u32>(4294967295u, 0u, 0u, 41305u)), vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 4294967295u) >> (vec4<u32>(1u, arg_2.x, 4294967295u, 24074u) % vec4<u32>(32u)), !select(vec4<bool>(true, arg_0.x, true, true), vec4<bool>(false, arg_0.x, false, true), vec4<bool>(false, true, false, true))), ~firstLeadingBit(vec4<u32>(u_input.c.x, 0u, 1u, arg_2.x)) ^ vec4<u32>(0u, arg_2.x, 25269u, arg_2.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-var_1)));
    return Struct_3(Struct_2(vec2<i32>(_wgslsmith_mult_i32(-u_input.a.x, -37428i), 31024i)), select(select(!(!vec4<bool>(true, true, arg_1.x, true)), select(select(vec4<bool>(false, true, arg_1.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_1.x, arg_0.x), vec4<bool>(true, true, arg_0.x, true)), !vec4<bool>(arg_1.x, true, arg_0.x, true), arg_1.x), !(arg_0.x | false)), !(!select(vec4<bool>(arg_0.x, false, arg_0.x, arg_1.x), vec4<bool>(arg_0.x, arg_0.x, false, arg_1.x), vec4<bool>(false, arg_0.x, true, arg_1.x))), select(vec4<bool>(any(arg_1), all(vec2<bool>(false, arg_0.x)), arg_1.x, true), !vec4<bool>(arg_0.x, false, true, arg_1.x), !(!vec4<bool>(true, arg_1.x, false, arg_1.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -538f), _wgslsmith_f_op_f32(select(-989f, 1646f, !arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - 1496f), _wgslsmith_f_op_f32(trunc(var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1))))), vec3<bool>(select(false, all(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(true, true, arg_1.x, arg_1.x), arg_0.x)), true), all(vec3<bool>(true, true, any(vec3<bool>(true, arg_0.x, false)))), !arg_0.x), !(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.d.x, 1i), _wgslsmith_add_i32(u_input.a.x, 30519i)) != (u_input.a.x ^ ~1i)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = true;
    let var_1 = func_4(!select(vec2<bool>(true, false), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), !select(vec2<bool>(true, false), vec2<bool>(false, false), true)), vec2<bool>(func_2(), any(vec2<bool>(true, false))), u_input.c);
    let var_2 = vec3<u32>(u_input.b, u_input.c.x, 75767u ^ _wgslsmith_dot_vec2_u32(~u_input.c, countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 53293u), u_input.c, u_input.c))));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.c.x - var_1.c.x), var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -781f), func_4(select(vec2<bool>(var_1.d.x, true), !var_1.b.zy, true), vec2<bool>(true, true), ~abs(var_2.yy)).c.x) * var_1.c);
    var var_4 = var_1.b;
    return Struct_2(vec2<i32>(1i, ~abs(1i)));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_4) -> Struct_4 {
    let var_0 = !select(vec2<bool>(arg_2.d, !select(false, true, true)), vec2<bool>(arg_0, false), true);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -344f);
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-357f, 718f, -815f, 1632f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, 1000f, arg_2.a.x, 134f) - vec4<f32>(arg_2.e.x, -821f, -1000f, -534f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.e.x, arg_2.e.x, arg_2.e.x, 394f))) * vec4<f32>(-2316f, arg_2.e.x, arg_2.e.x, -532f)))))));
    let var_3 = true;
    var var_4 = _wgslsmith_div_vec3_u32(min(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(52038u, 4294967295u, arg_2.b), vec3<u32>(arg_2.b, 8152u, u_input.c.x) ^ vec3<u32>(1u, 0u, arg_2.b)), vec3<u32>(1u, select(84565u, 24288u, true), ~arg_2.b)), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 5332u, 17464u), vec3<u32>(firstLeadingBit(arg_2.b), ~4294967295u, arg_2.b))), countOneBits(max(max(vec3<u32>(40094u, 4294967295u, u_input.b), vec3<u32>(1u, 7641u, u_input.b)), countOneBits(vec3<u32>(0u, u_input.b, 1u)))) & ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_2.b, u_input.c.x, 0u), vec3<u32>(1u, 76278u, arg_2.b), vec3<bool>(arg_0, var_0.x, true)), firstTrailingBit(vec3<u32>(arg_2.b, 1u, u_input.b))));
    return Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(var_3, Struct_3(Struct_2(arg_2.c.a), vec4<bool>(true, true, arg_2.d, arg_0), vec4<f32>(-936f, 3053f, 1000f, arg_2.e.x), vec3<bool>(true, true, false), arg_2.d))), _wgslsmith_f_op_f32(501f * 1148f), var_2.x))), 4294967295u, arg_2.c, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(774f - _wgslsmith_f_op_f32(sign(arg_2.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.a.x), 552f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(false, u_input.d.x | -37342i, Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1164f)), -273f, _wgslsmith_f_op_f32(sign(-1446f))), 14537u, func_1(_wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(u_input.d.x, u_input.a.x))), true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(396f, 195f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2796f, -324f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(221f, 890f))), any(vec2<bool>(true, true))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + 2048f));
    var var_2 = !(!func_4(select(vec2<bool>(false, false), vec2<bool>(false, var_0.d), 255f <= var_1), func_4(select(vec2<bool>(var_0.d, false), vec2<bool>(true, false), false), vec2<bool>(var_0.d, var_0.d), max(u_input.c, vec2<u32>(1u, 0u))).b.wy, max(~u_input.c, u_input.c)).d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_0.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - 1177f), var_0.e.x), var_0.e.x) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 + 1152f), _wgslsmith_f_op_f32(-var_1), var_1)))), firstTrailingBit(-_wgslsmith_div_i32(u_input.d.x & var_0.c.a.x, u_input.d.x)), u_input.a.x ^ _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, var_0.c.a.x), reverseBits(~u_input.d.zz)), select(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(1i, var_0.c.a.x, 2147483647i, 62331i)), -vec4<i32>(var_0.c.a.x, 1i, 16690i, -16359i)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.a.x, u_input.a.x, 355i, u_input.a.x), vec4<i32>(-1i, 0i, u_input.d.x, 1i) << (vec4<u32>(42691u, 0u, u_input.b, 1u) % vec4<u32>(32u))) << (firstLeadingBit(vec4<u32>(var_0.b, 71613u, 4294967295u, 4347u)) % vec4<u32>(32u)), true), abs(~(~(vec4<u32>(1u, 1984u, 1u, 113300u) | vec4<u32>(33496u, var_0.b, 1u, 32995u)))));
}

