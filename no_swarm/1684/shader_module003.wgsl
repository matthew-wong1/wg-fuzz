struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: u32,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: vec3<f32>) -> f32 {
    var var_0 = arg_3.x;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -484f);
    var var_2 = Struct_5(vec3<i32>(-18078i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.c, -2147483647i, u_input.a), vec3<i32>(u_input.a, 1i, u_input.a), true), vec3<i32>(-2147483647i, u_input.a, u_input.b) | vec3<i32>(u_input.b, -1i, u_input.b)), _wgslsmith_mod_i32(u_input.c, 16292i) ^ select(u_input.a, u_input.a, true)) << (select(vec3<u32>(arg_1.x, arg_1.x, select(arg_1.x, arg_1.x, false)), ~arg_1.yxw, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true))) % vec3<u32>(32u)), Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3) - _wgslsmith_f_op_vec3_f32(-arg_3)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_3 * vec3<f32>(1176f, arg_3.x, -988f))))), Struct_3(arg_2.x), countOneBits(0u ^ arg_1.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)))), abs(_wgslsmith_dot_vec2_u32(arg_1.yz, min(vec2<u32>(0u, arg_1.x), abs(vec2<u32>(arg_1.x, arg_1.x))))), true);
    let var_3 = var_2.b.d.x;
    var var_4 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.b.b.a))), arg_0.x, 1000f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-833f)))))) - 374f);
}

fn func_2(arg_0: f32) -> Struct_4 {
    var var_0 = Struct_2(Struct_1(~vec3<u32>(0u, ~1u, ~39267u)), Struct_1(~vec3<u32>(max(4294967295u, 43713u), 1u, 0u)));
    var var_1 = u_input.b;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(exp2(arg_0)));
    var_1 = _wgslsmith_dot_vec4_i32(reverseBits(min(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(19847i, -1i, 26683i, u_input.c), vec4<i32>(-7828i, 9421i, -21282i, u_input.c))), ~vec4<i32>(u_input.b, -61557i, 2147483647i, 2147483647i))), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-51512i, u_input.b, u_input.b, -34162i), vec4<i32>(18160i, -2147483647i, u_input.a, 1i)) >> (~vec4<u32>(var_0.b.a.x, var_0.b.a.x, 1u, 1u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, 1i, u_input.c, u_input.c), countOneBits(~vec4<i32>(u_input.a, 1i, u_input.c, u_input.a))));
    let var_3 = Struct_2(var_0.a, var_0.a);
    return Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 + arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_2.xz, vec4<u32>(var_3.b.a.x, 56108u, 41435u, var_3.a.a.x), vec2<f32>(var_2.x, var_2.x), vec3<f32>(var_2.x, 1000f, 687f))) + arg_0))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -527f) + _wgslsmith_f_op_f32(var_2.x * var_2.x)) + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(var_2.xz * var_2.yy), vec4<u32>(var_0.b.a.x, var_3.a.a.x, var_3.b.a.x, var_3.a.a.x), vec2<f32>(var_2.x, -739f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x)))))), _wgslsmith_dot_vec2_u32(var_3.b.a.xz, ~countOneBits(vec2<u32>(31767u, 81313u)) & var_0.a.a.xx), !vec4<bool>(false, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false)), var_2.x >= _wgslsmith_f_op_f32(arg_0 * -106f), true));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: bool, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = arg_1.b;
    let var_1 = abs(~(abs(_wgslsmith_sub_u32(4294967295u, 57782u)) << (~(arg_0 ^ 0u) % 32u)));
    let var_2 = ~firstTrailingBit(1u);
    let var_3 = func_2(var_0.b.a).b;
    let var_4 = arg_3;
    return Struct_2(Struct_1(var_4.yxz), Struct_1(vec3<u32>(~4294967295u, var_1, 17479u)));
}

fn func_1() -> Struct_1 {
    let var_0 = false;
    let var_1 = func_4(_wgslsmith_clamp_u32(firstLeadingBit(firstTrailingBit(_wgslsmith_mult_u32(1u, 11058u))), ~select(countOneBits(17975u), _wgslsmith_mod_u32(1u, 4294967295u), true), ~(~0u) ^ abs(select(33692u, 57034u, false))), Struct_5(_wgslsmith_sub_vec3_i32(max(vec3<i32>(2147483647i, 0i, 38260i), vec3<i32>(-9047i, 2147483647i, u_input.b)) >> (abs(vec3<u32>(21814u, 7321u, 1u)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.a, 4292i, 0i)), vec3<i32>(-1i, u_input.b, u_input.c))), func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1000f, -1548f))))), 1u, var_0), true, ~vec4<u32>(_wgslsmith_add_u32(select(4294967295u, 76889u, var_0), 1u), 76235u, ~24486u, countOneBits(~1u)));
    var var_2 = _wgslsmith_f_op_f32(func_2(357f).b.a * 1f);
    let var_3 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-571f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1031f * 124f) + _wgslsmith_f_op_f32(-442f + 1000f)), !any(vec4<bool>(false, var_0, var_0, var_0)))), 543f)).c;
    var var_4 = vec3<bool>(!var_0, true, true);
    return func_4(var_1.a.a.x, Struct_5(vec3<i32>(firstTrailingBit(u_input.b), abs(1i), u_input.c), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(113f + 593f) - 616f)), _wgslsmith_sub_u32(var_1.b.a.x, 4294967295u), true & func_2(_wgslsmith_f_op_f32(step(-228f, -1000f))).d.x), !(true || (var_3 <= var_3)), _wgslsmith_sub_vec4_u32(vec4<u32>(~75307u, 1u, 1u, var_3) | _wgslsmith_sub_vec4_u32(~vec4<u32>(24489u, 1u, 22007u, var_3), _wgslsmith_add_vec4_u32(vec4<u32>(97030u, 1u, 14745u, var_3), vec4<u32>(var_3, 4294967295u, var_3, var_3))), max(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3, var_3, 0u), var_1.a.a), 550u, firstLeadingBit(13998u), var_1.a.a.x), vec4<u32>(var_1.b.a.x & 4294967295u, 0u, var_3, 4294967295u)))).b;
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = ~(~(~(~firstLeadingBit(vec4<u32>(arg_0.a.x, 9163u, arg_0.a.x, 0u)))));
    let var_1 = !(!func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1810f))))).d);
    let var_2 = vec2<i32>(1i >> (abs(1u) % 32u), _wgslsmith_mod_i32(u_input.a ^ -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a, 1i), vec3<i32>(u_input.b, u_input.b, 3944i)), -40880i));
    let var_3 = 213f;
    let var_4 = var_1.x;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(step(-432f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(340f * -1452f)))), -1527f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(), all(vec2<bool>(true, true)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-863f, -778f, 1000f, 1000f)), vec4<f32>(-892f, -282f, -536f, 102f), vec4<bool>(true, true, false, true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-809f, 1585f, -617f, -144f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1929f, 981f, 1777f, -703f), vec4<f32>(1675f, 1548f, -648f, 1000f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-556f, 114f, 1055f, -673f), vec4<f32>(-703f, 450f, -1757f, 529f), false))))))));
    var var_1 = -1i;
    var_1 = countOneBits(~(_wgslsmith_dot_vec2_i32(vec2<i32>(-41428i, u_input.b) << (vec2<u32>(91847u, 7116u) % vec2<u32>(32u)), ~vec2<i32>(-2147483647i, u_input.b)) | -41908i));
    let var_2 = _wgslsmith_sub_u32(~1u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(13363u, func_1().a.x, 45840u), _wgslsmith_clamp_u32(~(~4294967295u), func_4(14883u, Struct_5(vec3<i32>(8119i, -2147483647i, u_input.c), Struct_4(vec3<f32>(1373f, 878f, var_0.x), Struct_3(var_0.x), 1u, vec4<bool>(false, true, true, false)), 4294967295u, false), false, vec4<u32>(4294967295u, 35973u, 16653u, 0u)).a.a.x >> (1u % 32u), 0u)));
    let var_3 = 508f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(countOneBits(func_4(0u, Struct_5(vec3<i32>(77167i, -1i, 33206i), Struct_4(vec3<f32>(var_3, var_3, var_0.x), Struct_3(var_0.x), 78504u, vec4<bool>(true, true, false, false)), var_2, false), true, vec4<u32>(12294u, 5868u, var_2, 64529u)).a.a.x) << (firstLeadingBit(max(var_2, var_2)) % 32u), countOneBits(~1u)), min(~max(vec3<u32>(0u, var_2, 21185u), vec3<u32>(0u, 6117u, var_2)), vec3<u32>(var_2 & (33172u & var_2), 41945u, ~var_2)), select(vec4<i32>(-2147483647i, i32(-1i) * -56390i, 1i, 2147483647i), vec4<i32>(u_input.a, 2147483647i, firstTrailingBit(abs(u_input.a)), min(u_input.b, -34834i)), func_2(_wgslsmith_f_op_f32(floor(1f))).d), -u_input.a);
}

