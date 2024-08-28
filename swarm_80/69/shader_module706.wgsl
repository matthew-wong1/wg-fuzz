struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: bool,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = vec4<i32>(u_input.a.x, ~min(-firstLeadingBit(u_input.a.x), ~(u_input.a.x & u_input.a.x)), _wgslsmith_mult_i32(_wgslsmith_div_i32(countOneBits(u_input.a.x), u_input.a.x), max(u_input.a.x, -1i) >> (14516u % 32u)) << (~u_input.b.x % 32u), min(_wgslsmith_sub_i32(u_input.a.x >> ((u_input.b.x & u_input.b.x) % 32u), _wgslsmith_mod_i32(abs(-29761i), i32(-1i) * -1i)), -1i << (firstLeadingBit(firstLeadingBit(u_input.b.x)) % 32u)));
    var_0 = vec4<i32>(u_input.a.x, 0i, -2147483647i, 1i);
    var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(trunc(-581f));
    let var_2 = Struct_2(1u, ~(~reverseBits(max(vec3<i32>(var_0.x, -21812i, 29485i), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)))), u_input.a.zxz);
    return var_2.a;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_1(abs(u_input.a.xwy), _wgslsmith_sub_u32(~countOneBits(1u), 50360u), _wgslsmith_mult_vec4_u32(arg_2, vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, 1u)), _wgslsmith_div_u32(~arg_2.x, func_3(vec3<bool>(true, false, true))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, u_input.b.x), 0u), 0u)));
    var var_1 = select(!select(vec4<bool>(true, false, true, select(false, false, true)), vec4<bool>(false, true, any(vec3<bool>(true, true, false)), false), false), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true)))), vec4<bool>(true, true, true, true));
    let var_2 = vec4<i32>(-25436i, countOneBits(arg_0), _wgslsmith_add_i32(_wgslsmith_sub_i32(reverseBits(var_0.a.x), _wgslsmith_clamp_i32(-1i, u_input.a.x, -1i)), u_input.a.x) ^ _wgslsmith_clamp_i32(1i, firstLeadingBit(firstTrailingBit(0i)), max(_wgslsmith_div_i32(arg_0, var_0.a.x), ~77298i)), _wgslsmith_div_i32(~(-1i), var_0.a.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1 * arg_1), -357f, _wgslsmith_f_op_f32(select(-1592f, 732f, false)), arg_1))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(133f, arg_1, arg_1, arg_1) * vec4<f32>(arg_1, arg_1, -943f, 157f)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, -107f, -247f), vec4<f32>(554f, arg_1, arg_1, arg_1))))))));
    var_1 = vec4<bool>(true, !any(select(select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(var_1.x, true, false, var_1.x)), !vec4<bool>(true, true, true, var_1.x), !var_1.x)), false, !var_1.x);
    return Struct_2(~0u, abs(~(-var_0.a)), vec3<i32>(-1i) * -(~(-var_0.a)));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: f32) -> Struct_2 {
    let var_0 = ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(arg_0, 0u | arg_0, ~33446u)));
    var var_1 = vec3<bool>(~(~(-1i)) <= u_input.a.x, 18614u != (u_input.b.x << (_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, 12353u)) % 32u)), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1563f, 1402f, arg_2));
    let var_3 = Struct_4(Struct_2(29338u, u_input.a.wzz, u_input.a.xxy ^ _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.zxx, vec3<i32>(u_input.a.x, 5244i, 0i)), max(u_input.a.yyw, u_input.a.zxx))), Struct_3(~(~arg_0)), !(!(var_1.x | true)), func_2(-1i, arg_2, reverseBits(vec4<u32>(var_0, 4294967295u, 1u, var_0) & vec4<u32>(4294967295u, var_0, 4294967295u, arg_1)) >> (vec4<u32>(countOneBits(u_input.b.x), var_0, _wgslsmith_mod_u32(var_0, 81728u), ~arg_1) % vec4<u32>(32u))), vec2<i32>(func_2(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.zxw, u_input.a.zxx, vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), vec3<i32>(-26940i, u_input.a.x, 8376i)), arg_2, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 54804u, arg_0, 1u) & vec4<u32>(arg_0, 38317u, arg_1, arg_1), ~vec4<u32>(arg_0, arg_0, 17036u, var_0))).c.x, u_input.a.x));
    let var_4 = var_3.c;
    return Struct_2(firstLeadingBit(~(~u_input.b.x)), vec3<i32>(~(-u_input.a.x), i32(-1i) * -abs(0i), -13152i), ~vec3<i32>(-20626i, _wgslsmith_sub_i32(var_3.d.c.x & var_3.e.x, u_input.a.x), var_3.e.x));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(582f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1083f + _wgslsmith_f_op_f32(779f + -362f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1867f, -241f, true)))))));
    let var_1 = Struct_1(arg_0.c, u_input.b.x, _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(62837u, 75768u, u_input.b.x, arg_0.a), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 4294967295u, arg_0.a), vec4<u32>(4294967295u, 1u, 33300u, 14334u))), abs(vec4<u32>(1u, u_input.b.x, arg_0.a, u_input.b.x)) | max(vec4<u32>(9920u, 0u, u_input.b.x, u_input.b.x), vec4<u32>(1u, arg_0.a, u_input.b.x, u_input.b.x))) & abs(~max(vec4<u32>(1549u, 0u, arg_0.a, 0u), vec4<u32>(u_input.b.x, 2747u, arg_0.a, arg_0.a))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1338f, var_0, var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-587f, var_0, -1632f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)))), vec3<bool>(true, true, true))));
    var var_3 = Struct_1(select(arg_0.b, min(vec3<i32>(_wgslsmith_mult_i32(var_1.a.x, 10011i), ~var_1.a.x, 19111i), vec3<i32>(26397i, -var_1.a.x, arg_1)), vec3<bool>(true, true, true)), _wgslsmith_mod_u32(40840u, 1u), var_1.c);
    let var_4 = var_3.c << (_wgslsmith_div_vec4_u32(abs(abs(vec4<u32>(arg_0.a, arg_0.a, u_input.b.x, u_input.b.x))) & ~(~var_3.c), var_1.c) % vec4<u32>(32u));
    return u_input.a.xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-707f)))), _wgslsmith_f_op_f32(-770f * -633f), 1000f))));
    var var_1 = _wgslsmith_dot_vec2_i32(-func_4(func_1(u_input.b.x ^ u_input.b.x, u_input.b.x ^ 4294967295u, -885f), 1i), ~_wgslsmith_sub_vec2_i32(select(reverseBits(vec2<i32>(u_input.a.x, u_input.a.x)), select(vec2<i32>(1i, 20274i), u_input.a.yy, true), vec2<bool>(true, true)), u_input.a.xx));
    let var_2 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, var_0.x >= var_0.x), !any(vec2<bool>(false, false))));
    var_1 = min(u_input.a.x, -u_input.a.x);
    var_1 = -18949i;
    let var_3 = select(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~u_input.b.x, 60998u), func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x)), u_input.b.x, _wgslsmith_div_f32(var_0.x, -978f)).a), u_input.b.x << (~(~0u) % 32u)), vec2<u32>(max(~(u_input.b.x & 3206u), 64742u), _wgslsmith_clamp_u32(select(~96231u, 1u, true), 1u, ~countOneBits(0u))), (var_2 != var_2) != (~firstTrailingBit(0u) != (~u_input.b.x >> (~u_input.b.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(757f, 351f, -1804f, -517f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-887f, var_0.x, 205f, 408f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 627f, -1041f, -104f)))))), 13971i, 2147483647i, _wgslsmith_f_op_vec3_f32(exp2(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)))));
}

