struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_1) * _wgslsmith_f_op_f32(abs(1000f)));
    let var_1 = all(select(vec4<bool>(all(vec3<bool>(true, true, true)), !all(vec3<bool>(false, true, true)), false, select(any(vec4<bool>(false, true, false, false)), true, true)), !select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, false, false), any(vec3<bool>(true, true, true)))));
    var var_2 = _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.c, arg_2.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(arg_2.x, u_input.c)), ~vec2<i32>(u_input.b.x, u_input.b.x)), arg_2.x)), -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-5520i, arg_2.x, -25914i, arg_2.x), ~vec4<i32>(arg_2.x, 2147483647i, u_input.c, -4577i)), min(~(-abs(vec4<i32>(-2147483647i, arg_2.x, u_input.c, 1i))), -(-vec4<i32>(u_input.c, arg_2.x, 0i, u_input.c) & abs(vec4<i32>(arg_2.x, u_input.b.x, -2147483647i, -2147483647i)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, arg_1))) * -320f)) * _wgslsmith_f_op_f32(-var_0));
    return u_input.a.x;
}

fn func_2() -> vec3<bool> {
    var var_0 = func_3(24317u, 812f, vec2<i32>(-20331i, abs(_wgslsmith_add_i32(u_input.c, u_input.b.x))) & (-(~vec2<i32>(u_input.c, u_input.b.x)) >> (select(countOneBits(vec2<u32>(106560u, u_input.a.x)), u_input.a, vec2<bool>(true, true)) % vec2<u32>(32u))));
    let var_1 = !(abs(~(1u & u_input.d)) < _wgslsmith_clamp_u32(1u, reverseBits(u_input.a.x), 35475u));
    let var_2 = reverseBits(u_input.a);
    let var_3 = -1000f;
    var_0 = _wgslsmith_div_u32(max(countOneBits(var_2.x), 93124u), u_input.d) | (_wgslsmith_add_u32(~1141u, firstLeadingBit(var_2.x)) >> ((51433u << (abs(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(13462u, 0u))) % 32u)) % 32u));
    return vec3<bool>(false, true, select(true, var_1, var_1));
}

fn func_1() -> u32 {
    var var_0 = any(!func_2()) || true;
    var_0 = select(true, !(_wgslsmith_div_u32(~29905u, firstLeadingBit(1u)) == func_3(u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -612f), _wgslsmith_add_vec2_i32(vec2<i32>(-8535i, u_input.b.x), u_input.b))), true);
    let var_1 = Struct_2(~(-vec4<i32>(-41473i, u_input.b.x, 1i, countOneBits(28230i))), u_input.d, -2147483647i, select(vec3<bool>(true, any(vec2<bool>(true, false)), true && (898u != u_input.a.x)), func_2(), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), Struct_1(~_wgslsmith_mult_u32(u_input.a.x, ~65890u)));
    var_0 = true;
    var var_2 = (vec3<u32>(~u_input.d, var_1.e.a, min(_wgslsmith_mult_u32(2286u, 0u), ~var_1.b)) & vec3<u32>(var_1.e.a, _wgslsmith_sub_u32(74244u & var_1.e.a, var_1.b), select(1u & var_1.e.a, 6523u, true))) | _wgslsmith_div_vec3_u32(~vec3<u32>(var_1.b >> (37598u % 32u), _wgslsmith_add_u32(0u, 1u), _wgslsmith_sub_u32(73225u, 1u)), abs(abs(vec3<u32>(var_1.b, 4294967295u, var_1.e.a))) ^ vec3<u32>(70785u, 1u, abs(65315u)));
    return ~4294967295u;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b ^ u_input.d, 38829u, u_input.a.x & u_input.d), vec3<u32>(~arg_0.b, firstLeadingBit(31872u), 1u)), abs(vec3<u32>(4294967295u, 1u, u_input.d)) | ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, arg_0.e.a, arg_0.b), vec3<u32>(1u, u_input.d, u_input.d))) ^ vec3<u32>(select(firstLeadingBit(13034u), _wgslsmith_sub_u32(24191u, u_input.d), any(vec4<bool>(true, arg_1, false, arg_1))) >> ((arg_0.b ^ 42290u) % 32u), ~u_input.d, _wgslsmith_sub_u32(_wgslsmith_div_u32(6692u, 1u) | arg_0.b, u_input.a.x));
    var var_1 = -29074i & _wgslsmith_div_i32(min(10803i, _wgslsmith_add_i32(2147483647i, u_input.c)) | arg_0.c, 32086i);
    let var_2 = Struct_3(select(func_2().zx, func_2().zy, arg_1), !arg_1);
    var var_3 = !(!select(select(func_2().zy, !vec2<bool>(false, arg_1), !var_2.a), vec2<bool>(arg_1 || arg_1, 1u < var_0.x), var_2.a));
    var_1 = arg_0.c;
    return Struct_2(vec4<i32>(reverseBits(-1i), abs(abs(-17395i)), u_input.c, ~_wgslsmith_add_i32(-arg_0.a.x, _wgslsmith_dot_vec3_i32(arg_0.a.yyz, vec3<i32>(14232i, -49798i, u_input.c)))), 97216u << (u_input.d % 32u), -8312i, select(vec3<bool>(arg_1, select(true, all(arg_0.d.zy), false), false), select(arg_0.d, arg_0.d, arg_0.d), _wgslsmith_f_op_f32(max(322f, -1213f)) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(3514f - -424f)))), arg_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(abs(-(~vec4<i32>(u_input.c, u_input.c, u_input.b.x, -2147483647i))), ~(~func_1()), ~18751i, vec3<bool>(true, all(vec4<bool>(true, true, true, false)) && true, true), Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 3479u), vec2<u32>(u_input.d, 41431u)))), true);
    let var_1 = Struct_2(var_0.a, ~u_input.a.x, _wgslsmith_mod_i32(select(u_input.b.x << (~var_0.e.a % 32u), 57711i ^ var_0.c, any(vec4<bool>(true, var_0.d.x, true, false))), var_0.c), !vec3<bool>(var_0.d.x && func_4(Struct_2(vec4<i32>(u_input.b.x, u_input.c, var_0.a.x, u_input.c), var_0.e.a, var_0.a.x, vec3<bool>(false, true, false), Struct_1(1u)), true).d.x, false, all(func_2())), func_4(Struct_2(vec4<i32>(-688i, u_input.b.x, 1i, i32(-1i) * -2147483647i), max(u_input.d, _wgslsmith_clamp_u32(71797u, 27670u, 19853u)), max(55416i, u_input.c), var_0.d, var_0.e), false).e);
    var var_2 = !(!(!(!select(vec4<bool>(var_1.d.x, true, var_1.d.x, var_1.d.x), vec4<bool>(false, var_1.d.x, var_1.d.x, var_1.d.x), var_0.d.x))));
    var_2 = select(!(!(!vec4<bool>(true, false, var_2.x, true))), vec4<bool>(all(select(!vec4<bool>(false, true, var_0.d.x, var_2.x), select(vec4<bool>(false, true, false, var_2.x), vec4<bool>(true, false, false, var_1.d.x), var_2.x), any(var_2.zw))), var_2.x, true, all(select(vec4<bool>(false, var_0.d.x, var_2.x, var_0.d.x), select(vec4<bool>(false, true, false, true), vec4<bool>(true, var_0.d.x, false, var_1.d.x), vec4<bool>(var_2.x, var_2.x, var_0.d.x, false)), !vec4<bool>(true, var_1.d.x, var_0.d.x, var_0.d.x)))), false || all(!func_2()));
    var var_3 = min(-68408i, _wgslsmith_div_i32((firstTrailingBit(u_input.c) ^ 0i) | u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_0.c, 1i), _wgslsmith_clamp_i32(-1i, -29568i, u_input.c)), vec2<i32>(func_4(Struct_2(var_0.a, 12506u, 18883i, vec3<bool>(var_0.d.x, var_2.x, false), var_1.e), var_0.d.x).a.x, var_0.a.x))));
    var_0 = func_4(Struct_2(vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(63137i, var_1.a.x)), countOneBits(15391i), -2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-55694i, u_input.c), var_0.a.wz)), ~u_input.a.x, _wgslsmith_dot_vec4_i32(reverseBits(var_0.a), vec4<i32>(var_0.c, u_input.c, var_0.c, u_input.b.x)) << (_wgslsmith_mult_u32(var_1.e.a, u_input.d) % 32u), vec3<bool>(var_0.d.x, true, true), var_1.e), all(var_1.d) & true);
    var_2 = vec4<bool>(true, true, min(var_0.c, _wgslsmith_dot_vec4_i32(var_0.a & vec4<i32>(-50661i, var_1.c, var_0.c, u_input.b.x), select(var_1.a, var_1.a, vec4<bool>(var_0.d.x, false, true, var_2.x)))) > 33719i, var_0.d.x);
    var var_4 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(~(-12689i), u_input.c, u_input.c), -_wgslsmith_sub_vec3_i32(var_1.a.xxz, ~var_0.a.zwy), vec3<i32>(_wgslsmith_mod_i32(min(-2147483647i, 9765i), var_0.c), -23260i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, 0i, var_1.c, var_1.a.x), var_1.a), -vec4<i32>(var_0.a.x, 91346i, -15396i, -1i))));
    let var_5 = Struct_3(var_2.yy, true);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(vec4<i32>(2147483647i, u_input.c, 0i, 44594i) << (vec4<u32>(30194u, var_0.b, 0u, 69730u) % vec4<u32>(32u)))), vec2<u32>(1u, var_0.e.a), firstLeadingBit(vec3<u32>(1u, 1u, 1u) << (firstLeadingBit(vec3<u32>(var_0.b, u_input.a.x, 1u)) % vec3<u32>(32u))) & _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(24416u, var_0.b, 12103u), vec3<u32>(u_input.d, 45478u, 16181u)), ~vec3<u32>(var_1.b, 0u, 8158u)), vec3<u32>(0u << (u_input.d % 32u), 1u, 1u << (var_1.b % 32u))));
}

