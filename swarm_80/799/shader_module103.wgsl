struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: Struct_4,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_add_vec3_u32(~(~vec3<u32>(48251u, u_input.b.x, arg_0.e.d.x)) ^ ~max(vec3<u32>(arg_1, arg_1, 12859u), vec3<u32>(arg_0.c.a, arg_1, 1u)), vec3<u32>(~firstLeadingBit(11454u), ~_wgslsmith_sub_u32(51385u, 26607u), countOneBits(2919u))) << (~(~vec3<u32>(arg_1 & arg_0.a.d.x, 0u, abs(u_input.a))) % vec3<u32>(32u));
    var var_1 = 21134u;
    global0 = _wgslsmith_f_op_f32(abs(1847f));
    var_1 = _wgslsmith_dot_vec4_u32(countOneBits(abs(firstTrailingBit(vec4<u32>(12974u, arg_1, 13958u, 1u)))), firstLeadingBit(~vec4<u32>(10058u, arg_0.e.d.x, 2991u, 44602u)));
    var var_2 = Struct_3(arg_0.b.d.x, arg_0.b.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.c, arg_0.c.c)) * vec2<f32>(-366f, -309f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-848f, arg_0.c.c) - vec2<f32>(arg_0.e.c, 202f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(788f, arg_0.e.c) - vec2<f32>(554f, 258f))))));
    return _wgslsmith_sub_u32(~abs(select(81908u, select(15411u, 78779u, arg_0.b.b), true)), _wgslsmith_mult_u32(~reverseBits(~4294967295u), arg_1));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: f32) -> vec3<bool> {
    var var_0 = Struct_3(~u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(abs(arg_0.c.c.x), -arg_0.c.b, arg_0.c.b, arg_0.c.a.x), reverseBits(arg_1.c.a) | firstTrailingBit(arg_0.c.a)) << (max(~(vec4<u32>(36252u, 32113u, 49689u, 77424u) ^ vec4<u32>(arg_1.b, 0u, 32892u, 4294967295u)), reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.b, 12969u, arg_0.b, 4294967295u), vec4<u32>(1u, arg_0.a, u_input.a, 1u)))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, _wgslsmith_f_op_f32(trunc(arg_1.d))) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(f32(-1f) * -1899f))));
    let var_1 = select(vec4<u32>(4294967295u, ~(var_0.a >> (~73801u % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(~5982u, ~u_input.a), ~(~u_input.b)), 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(arg_0.b, 30336u, u_input.a), 1u, min(4294967295u, arg_1.a) ^ abs(arg_1.a), ~u_input.a), ~(~(~vec4<u32>(arg_1.a, var_0.a, u_input.a, var_0.a)))), false);
    var var_2 = Struct_3(_wgslsmith_mult_u32(arg_1.b, 1u), arg_0.c.a, _wgslsmith_f_op_vec2_f32(-var_0.c));
    let var_3 = ~_wgslsmith_mod_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -984i), arg_1.c.c.xz) << (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(51575u, u_input.a)) % vec2<u32>(32u))), abs(~vec2<i32>(var_2.b.x, arg_1.c.b)));
    let var_4 = Struct_2(Struct_1(u_input.b.x, firstLeadingBit(~u_input.a) > var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, arg_0.d))), ~vec2<u32>(30084u, arg_0.b), var_0.b), Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_div_u32(65273u, var_0.a)), var_2.a & var_2.a), any(select(vec4<bool>(arg_0.c.d, true, true, true), vec4<bool>(arg_0.c.d, true, arg_0.c.d, arg_1.c.d), arg_1.a != 0u)), var_2.c.x, u_input.b | _wgslsmith_add_vec2_u32(~vec2<u32>(28022u, var_0.a), vec2<u32>(104489u, 30697u)), ~abs(arg_0.c.a << (var_1 % vec4<u32>(32u)))), Struct_1(min(~23783u, _wgslsmith_sub_u32(select(var_0.a, arg_1.b, false), 4294967295u)), ~(~u_input.b.x) == u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -972f)), vec2<u32>(max(0u, arg_1.a >> (4294967295u % 32u)), abs(~var_0.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(~var_2.b.x, -arg_1.c.a.x, _wgslsmith_dot_vec4_i32(var_2.b, var_0.b), var_3.x), arg_0.c.a)), vec4<i32>(_wgslsmith_dot_vec3_i32(-var_2.b.xzz, -var_0.b.wwy), -(u_input.c | -2147483647i) >> (18092u % 32u), 0i, ~(arg_1.c.b & -var_3.x)), Struct_1(~(~func_3(Struct_2(Struct_1(arg_0.b, true, arg_0.d, u_input.b, vec4<i32>(var_0.b.x, -18420i, var_3.x, var_0.b.x)), Struct_1(23510u, arg_0.c.d, var_0.c.x, var_1.yx, arg_0.c.a), Struct_1(arg_0.a, arg_1.c.d, 372f, u_input.b, vec4<i32>(2147483647i, arg_1.c.a.x, 1i, u_input.c)), vec4<i32>(u_input.c, arg_1.c.b, u_input.c, arg_1.c.c.x), Struct_1(arg_0.b, arg_1.c.d, 1074f, vec2<u32>(u_input.a, 70533u), arg_0.c.a)), var_1.x)), true, -740f, var_1.wx, ~(-vec4<i32>(arg_1.c.b, 2147483647i, -26283i, arg_1.c.a.x))));
    return vec3<bool>(arg_1.c.d || true, any(select(!(!vec4<bool>(arg_0.c.d, true, true, arg_1.c.d)), !(!vec4<bool>(false, false, var_4.c.b, false)), arg_1.c.d & true)), all(vec2<bool>(~1u == _wgslsmith_clamp_u32(var_2.a, 14567u, var_2.a), true)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = -193f;
    global0 = arg_2.c.x;
    var var_1 = arg_2;
    var_1 = arg_2;
    var var_2 = arg_0;
    return select(select(vec3<bool>(select(var_1.a < var_1.a, -183f == arg_1.x, false), all(!var_2.zww), true), var_2.xyx, func_4(Struct_5(4294967295u, 4294967295u, Struct_4(arg_2.b, u_input.c, arg_2.b.ywy, arg_0.x), 707f), Struct_5(func_3(Struct_2(Struct_1(arg_2.a, false, var_1.c.x, u_input.b, vec4<i32>(arg_2.b.x, -1i, 1i, arg_2.b.x)), Struct_1(arg_2.a, false, var_1.c.x, vec2<u32>(1u, arg_2.a), vec4<i32>(-1i, u_input.c, 0i, arg_2.b.x)), Struct_1(u_input.b.x, true, -407f, vec2<u32>(4294967295u, 1u), var_1.b), arg_2.b, Struct_1(1u, arg_0.x, var_0, vec2<u32>(arg_2.a, var_1.a), vec4<i32>(var_1.b.x, -2147483647i, -2147483647i, arg_2.b.x))), 1u), 1u ^ arg_2.a, Struct_4(var_1.b, 30998i, vec3<i32>(u_input.c, var_1.b.x, arg_2.b.x), false), _wgslsmith_f_op_f32(f32(-1f) * -224f)), var_1.c.x)), vec3<bool>(var_2.x, all(arg_0), !all(!vec4<bool>(false, true, arg_0.x, true))), true || (arg_2.a >= arg_2.a));
}

fn func_1(arg_0: Struct_4) -> vec3<f32> {
    let var_0 = false;
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -536f), _wgslsmith_f_op_f32(floor(381f)), _wgslsmith_f_op_f32(f32(-1f) * -1336f)), func_2(!vec4<bool>(var_0, true, false, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1377f, 1000f)), Struct_3(u_input.b.x, arg_0.a, vec2<f32>(-839f, -2805f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-739f, 2049f, -1290f) + vec3<f32>(-809f, 328f, 743f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-618f, -822f), _wgslsmith_f_op_f32(f32(-1f) * -545f)));
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.c, -2147483647i) >> (vec2<u32>(14047u, 5109u) % vec2<u32>(32u)), vec2<i32>(u_input.c, ~(-(u_input.c | 8888i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_1(Struct_4(vec4<i32>(-26019i, 0i, -1i, -61954i), var_0.x, vec3<i32>(var_0.x, var_0.x, 0i), true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-228f, -263f, -232f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-247f, 448f, -1616f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1465f, 772f, -275f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-519f, 149f, -1014f))))) + vec3<f32>(_wgslsmith_f_op_f32(-1f), 1f, 1350f)));
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = false;
    var_3 = true == (firstTrailingBit(0u) != ~abs(reverseBits(1u)));
    var_3 = false & func_4(Struct_5(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(0u, 91999u, u_input.a, 4294967295u)), _wgslsmith_add_u32(33417u, _wgslsmith_mod_u32(36241u, 61440u)), Struct_4(~vec4<i32>(11156i, 41249i, 39189i, -36092i), firstTrailingBit(-2147483647i), -vec3<i32>(-1i, 31097i, 2147483647i), false), var_2), Struct_5(u_input.a, u_input.a, Struct_4(countOneBits(vec4<i32>(-2147483647i, 1i, u_input.c, -10374i)), u_input.c, vec3<i32>(23383i, 60048i, 2147483647i) ^ vec3<i32>(-8586i, u_input.c, -17601i), all(vec4<bool>(true, false, false, true))), -376f), _wgslsmith_f_op_f32(round(-553f))).x;
    var_1 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * var_1.x))), 318f);
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2, 1218f, 173f, var_1.x)))))), 35388u, ~abs(0u));
}

