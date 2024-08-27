struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(548f * -1430f), 646f))), Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), false), _wgslsmith_mod_vec4_u32(u_input.a, u_input.a)), ~90181u, 1u ^ ~u_input.a.x, ~(~4294967295u)), !(!(u_input.a.x != 15786u)), vec3<bool>(true, true, true), _wgslsmith_sub_vec2_i32(-(vec2<i32>(-1i, arg_0) >> (vec2<u32>(0u, 60311u) % vec2<u32>(32u))), abs(-vec2<i32>(arg_0, arg_0)))), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 62991u, _wgslsmith_clamp_u32(u_input.a.x, 60857u, u_input.a.x), u_input.a.x), ~firstTrailingBit(u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a.x, 303u, 12207u), _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 0u, 21410u)))), any(vec3<bool>(true, true, true)), vec3<bool>(true, true, true), ~firstTrailingBit(vec2<i32>(u_input.c, u_input.b))), 9522u, Struct_1(~(~u_input.a), !any(vec2<bool>(true, true)), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), vec3<bool>(false, false, false), false), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), true)), ~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 0i), vec2<i32>(u_input.b, u_input.b)), u_input.b)));
    var_0 = Struct_2(-670f, Struct_1(u_input.a, true, select(!vec3<bool>(var_0.e.b, false, true), vec3<bool>(any(var_0.c.c), 2147483647i > u_input.b, true), all(select(vec2<bool>(var_0.c.b, var_0.b.c.x), vec2<bool>(var_0.c.b, var_0.b.c.x), vec2<bool>(var_0.c.b, var_0.c.c.x)))), vec2<i32>(6793i, arg_0) | ~(var_0.c.d ^ var_0.c.d)), var_0.e, _wgslsmith_div_u32(7524u, _wgslsmith_dot_vec2_u32(var_0.b.a.wy, u_input.a.xx)), Struct_1(~max(u_input.a & vec4<u32>(98401u, 1u, var_0.d, var_0.e.a.x), vec4<u32>(var_0.e.a.x, 1u, var_0.d, 27399u)), var_0.e.c.x, !(!(!var_0.e.c)), min(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b) >> (u_input.a.zw % vec2<u32>(32u)), abs(var_0.b.d)), firstLeadingBit(var_0.e.d))));
    var var_1 = Struct_2(var_0.a, var_0.b, Struct_1(vec4<u32>(4227u, 25195u, ~58768u >> (0u % 32u), 10197u), (var_0.a <= var_0.a) && var_0.e.c.x, select(vec3<bool>(true, true, var_0.b.c.x), var_0.e.c, vec3<bool>(!var_0.e.c.x, all(vec2<bool>(false, var_0.c.c.x)), true)), select(-var_0.b.d, vec2<i32>(-2147483647i, -2147483647i) >> (u_input.a.wy % vec2<u32>(32u)), !(!vec2<bool>(true, var_0.e.c.x)))), _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(1u, abs(36879u), _wgslsmith_mult_u32(31813u, u_input.a.x), 0u))), var_0.c);
    let var_2 = _wgslsmith_f_op_f32(trunc(1032f));
    var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), var_2))))), Struct_1(vec4<u32>(firstLeadingBit(_wgslsmith_mod_u32(4294967295u, var_1.b.a.x)), ~var_1.e.a.x, abs(var_1.c.a.x) & _wgslsmith_sub_u32(1u, var_1.e.a.x), _wgslsmith_clamp_u32(1u, var_1.d, firstLeadingBit(var_0.c.a.x))), true, select(vec3<bool>(true, var_1.b.c.x, true), vec3<bool>(!var_1.c.b, false, true), false), select(var_1.c.d, vec2<i32>(arg_0, max(-2147483647i, -2147483647i)), select(var_0.c.c.xx, !vec2<bool>(var_1.c.b, true), !var_0.e.b))), Struct_1(firstLeadingBit(var_1.e.a | countOneBits(vec4<u32>(22389u, var_1.e.a.x, 9996u, var_0.c.a.x))), (_wgslsmith_div_f32(-675f, var_2) >= var_1.a) | true, select(!var_0.c.c, !vec3<bool>(var_1.b.b, false, true), select(var_1.e.c, var_1.e.c, var_0.c.b && true)), firstLeadingBit(firstTrailingBit(select(vec2<i32>(u_input.b, 14369i), var_1.e.d, var_0.c.b)))), _wgslsmith_sub_u32(select(1u, firstTrailingBit(1u), true), 0u), var_0.c);
    return var_0.e.a.x;
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_mod_u32(0u, ~u_input.a.x);
    var var_1 = 42302u;
    let var_2 = Struct_5(vec4<u32>(~(~arg_0.d), ~firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, arg_0.c.a.x)), func_3(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.b, 1i), 1i, arg_0.c.d.x)), ~u_input.a.x));
    var_1 = arg_0.d;
    let var_3 = vec4<bool>(true, true, arg_0.e.b, !arg_0.b.c.x);
    return _wgslsmith_clamp_u32(~(~var_2.a.x), ~arg_0.c.a.x, _wgslsmith_mod_u32(38923u, ~_wgslsmith_div_u32(var_2.a.x, ~1u)));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(-1128f));
    var_0 = arg_1.x;
    var var_1 = -(~firstLeadingBit(~vec3<i32>(arg_0, u_input.c, u_input.b) & _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 13789i, u_input.b), vec3<i32>(10116i, arg_3, 1i))));
    return vec4<u32>(_wgslsmith_div_u32((~1u >> (func_2(Struct_2(arg_1.x, Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 36723u, u_input.a.x), arg_2.x, arg_2.yyw, vec2<i32>(-549i, arg_0)), Struct_1(u_input.a, arg_2.x, vec3<bool>(true, true, arg_2.x), vec2<i32>(-1i, arg_3)), u_input.a.x, Struct_1(u_input.a, true, vec3<bool>(arg_2.x, arg_2.x, arg_2.x), var_1.zy))) % 32u)) | func_3(_wgslsmith_div_i32(1i, arg_0)), 58485u), 1u, 31596u, _wgslsmith_div_u32(~(u_input.a.x << (18536u % 32u)) << (_wgslsmith_mult_u32(u_input.a.x, 4294967295u) % 32u), _wgslsmith_dot_vec4_u32(u_input.a, ~(~vec4<u32>(4294967295u, 91955u, u_input.a.x, u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(reverseBits(vec4<u32>(u_input.a.x, _wgslsmith_div_u32(0u, u_input.a.x), 4294967295u, 4294967295u >> (u_input.a.x % 32u))) & func_1(29739i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(592f, 118f, -1522f), vec3<f32>(871f, 754f, 1087f))), vec4<bool>(true, true, true, true), select(abs(u_input.c), max(u_input.c, u_input.b), false)), true, vec3<bool>(false, any(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), all(vec3<bool>(false, true, true)))), true), vec2<i32>(2147483647i, u_input.b));
    let var_1 = var_0;
    var var_2 = Struct_5(min(u_input.a, var_0.a));
    let var_3 = Struct_5(~vec4<u32>(min(u_input.a.x, var_0.a.x), ~1u, 4294967295u, select(var_0.a.x, ~4294967295u, false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 382f, 609f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(126f, -872f, 337f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1226f, 1299f, -890f))))) + vec3<f32>(1065f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -204f) - _wgslsmith_f_op_f32(f32(-1f) * -202f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-220f, -946f)), -975f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-359f))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-261f, 828f) * _wgslsmith_f_op_f32(step(-993f, -1708f)))))), 0u);
}

