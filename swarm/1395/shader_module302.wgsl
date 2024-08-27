struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, 34288u, _wgslsmith_dot_vec3_u32(arg_2.d.b, arg_2.c.b), _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(arg_2.a.b, arg_2.c.b), 0u)), firstTrailingBit(vec4<u32>(u_input.a.x, ~(~arg_0), countOneBits(32118u), countOneBits(1u))), abs(vec4<u32>(arg_2.b.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 25688u, arg_0), arg_2.d.b), reverseBits(~u_input.a.x), countOneBits(u_input.a.x))));
    return _wgslsmith_f_op_f32(f32(-1f) * -2566f);
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-905f)) + _wgslsmith_f_op_f32(ceil(-484f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(866f)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_3(u_input.a.x, -18233i, Struct_2(Struct_1(vec2<f32>(-1432f, 700f), vec3<u32>(0u, u_input.a.x, u_input.a.x)), Struct_1(vec2<f32>(915f, 1000f), vec3<u32>(57420u, u_input.a.x, 4294967295u)), Struct_1(vec2<f32>(1000f, -1138f), vec3<u32>(4294967295u, u_input.a.x, 4294967295u)), Struct_1(vec2<f32>(342f, -122f), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))))))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(404f, -375f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1819f, 401f))), true)), vec3<u32>(u_input.a.x, min(u_input.a.x, 1u), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))), u_input.b, countOneBits(_wgslsmith_add_vec3_u32(abs(vec3<u32>(11078u, u_input.a.x, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 32220u), vec3<u32>(u_input.a.x, 94385u, 0u)))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(631f, 1098f))), min(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1675f) * vec2<f32>(551f, 909f)), ~vec3<u32>(u_input.a.x, 0u, 1u)), Struct_1(vec2<f32>(-1000f, -1020f), select(vec3<u32>(31501u, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<bool>(false, true, true))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 607f) + vec2<f32>(-2886f, 721f)), ~vec3<u32>(4294967295u, 41108u, 38258u)))), -2147483647i, 7768i, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(257f, _wgslsmith_f_op_f32(func_3(_wgslsmith_add_u32(107984u, 43351u), -13779i, Struct_2(Struct_1(vec2<f32>(-1598f, 582f), vec3<u32>(u_input.a.x, 6779u, 41285u)), Struct_1(vec2<f32>(-1980f, -1921f), vec3<u32>(4294967295u, u_input.a.x, 21871u)), Struct_1(vec2<f32>(-1040f, -802f), vec3<u32>(4294967295u, 38017u, 33149u)), Struct_1(vec2<f32>(-192f, 1359f), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))))))), vec2<f32>(-788f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1152f, -198f, any(vec2<bool>(true, true)))))));
    var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(var_0.a.a + _wgslsmith_div_vec3_f32(vec3<f32>(-948f, -2272f, var_0.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, var_0.e.x, var_0.a.b.a.x)))), Struct_1(vec2<f32>(var_0.e.x, _wgslsmith_f_op_f32(floor(var_0.a.e.d.a.x))), vec3<u32>(min(25811u, 0u), 4294967295u, ~3893u)), -65914i, ~(~(vec3<u32>(u_input.a.x, 51015u, var_0.a.e.d.b.x) >> (vec3<u32>(10874u, 5629u, var_0.a.d.x) % vec3<u32>(32u)))), var_0.a.e), -_wgslsmith_div_i32(_wgslsmith_sub_i32(~u_input.c, ~0i), var_0.c), var_0.a.c, _wgslsmith_f_op_vec2_f32(-var_0.e), _wgslsmith_f_op_vec2_f32(-var_0.a.b.a));
    let var_1 = var_0.a.a.x;
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-var_0.a.a), var_0.a.b, select(var_0.a.c, -1i, all(vec2<bool>(false, true))) ^ _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(-1i, -2147483647i, -17289i)), ~(~vec3<i32>(95519i, u_input.c, u_input.c))), vec3<u32>(0u, 74091u, _wgslsmith_dot_vec2_u32(var_0.a.b.b.xx, reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.e.d.b.x, u_input.a.x), vec2<u32>(u_input.a.x, 0u))))), Struct_2(var_0.a.e.a, var_0.a.b, var_0.a.b, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(182f)), _wgslsmith_f_op_f32(select(var_0.e.x, -453f, true))), var_0.a.e.a.b)));
    var_2 = var_0.a;
    return Struct_4(Struct_3(var_0.a.a, var_0.a.e.c, abs(2147483647i), firstTrailingBit(countOneBits(var_0.a.b.b)) | var_0.a.e.a.b, var_2.e), ~_wgslsmith_mod_i32(var_0.c, 34408i), u_input.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-626f * -2278f), -171f)), _wgslsmith_f_op_vec2_f32(round(var_2.e.c.a))), var_0.d);
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> vec3<bool> {
    var var_0 = min(min(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-20896i, 8643i, 42646i), vec3<i32>(1i, 26537i, -44494i))), abs(vec3<i32>(~arg_1.a.c, -10834i, -5647i))), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 59096i, 76955i) >> (arg_1.a.b.b % vec3<u32>(32u)), vec3<i32>(-2147483647i, -3275i, -1i) ^ vec3<i32>(-14357i, arg_1.c, arg_0)), _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(arg_0, u_input.c, u_input.b)), vec3<i32>(1i, 43025i, 1i) | vec3<i32>(u_input.c, -39841i, arg_0))) & -reverseBits(~vec3<i32>(-29863i, u_input.d, arg_1.b)));
    var var_1 = arg_1.e.x;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f - _wgslsmith_f_op_f32(arg_1.a.a.x - 937f)))) * 2439f);
    let var_2 = true;
    var var_3 = var_0.x;
    return vec3<bool>(var_2, !select(!var_2, true, false), select(true, true, true));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_3, arg_3: i32) -> vec4<i32> {
    let var_0 = vec4<bool>(!((select(true, true, true) == true) | (4294967295u < _wgslsmith_div_u32(16714u, arg_0))), true, all(!vec2<bool>(true, any(vec3<bool>(true, false, false)))), any(func_4(-1i, func_2())));
    var var_1 = func_2();
    let var_2 = var_1.a;
    var var_3 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(i32(-1i) * -countOneBits(3599i), var_1.c), ~reverseBits(-2147483647i), u_input.c);
    var var_4 = vec4<u32>(arg_2.e.c.b.x, var_1.a.e.c.b.x, arg_0, firstLeadingBit(57242u)) >> (~(~vec4<u32>(arg_1, _wgslsmith_add_u32(1u, 18321u), ~arg_1, arg_1)) % vec4<u32>(32u));
    return _wgslsmith_div_vec4_i32(~(select(reverseBits(vec4<i32>(0i, 2147483647i, arg_3, arg_3)), vec4<i32>(-1i, arg_2.c, u_input.c, arg_2.c), vec4<bool>(false, true, false, var_0.x)) | vec4<i32>(countOneBits(arg_2.c), -var_2.c, arg_2.c, var_2.c)), (vec4<i32>(var_1.b, 2147483647i & arg_2.c, -2147483647i, var_1.c) >> (vec4<u32>(max(arg_2.d.x, 42201u), u_input.a.x, 22570u, max(arg_2.e.c.b.x, var_4.x)) % vec4<u32>(32u))) << (~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 7146u, arg_0, 0u), vec4<u32>(4294967295u, var_4.x, 10987u, 1u)), var_4.x, var_2.d.x, ~61015u) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -select(vec4<i32>(abs(-u_input.b), u_input.b, -1i, 5601i), -func_1(49782u, u_input.a.x, Struct_3(vec3<f32>(265f, -303f, 278f), Struct_1(vec2<f32>(-312f, -1000f), vec3<u32>(19502u, 4294967295u, 11224u)), u_input.b, vec3<u32>(u_input.a.x, u_input.a.x, 1u), Struct_2(Struct_1(vec2<f32>(975f, -775f), vec3<u32>(u_input.a.x, 1u, 4294967295u)), Struct_1(vec2<f32>(250f, -1069f), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(vec2<f32>(-609f, 314f), vec3<u32>(u_input.a.x, 0u, u_input.a.x)), Struct_1(vec2<f32>(-981f, 1706f), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), 1i) << (~vec4<u32>(u_input.a.x, u_input.a.x, 7034u, u_input.a.x) % vec4<u32>(32u)), select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), false));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-247f)), _wgslsmith_f_op_f32(f32(-1f) * -1539f))))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 26293u), ~(~vec3<u32>(66606u, 0u, u_input.a.x))));
    let var_2 = firstLeadingBit(~(var_1.b.yx & vec2<u32>(1u, max(var_1.b.x, var_1.b.x))));
    let var_3 = func_4(select(u_input.b, abs(-19399i), (any(vec4<bool>(true, false, true, false)) && false) && (var_0.x != -15774i)), Struct_4(func_2().a, i32(-1i) * -46113i, u_input.d, var_1.a, vec2<f32>(_wgslsmith_f_op_f32(-1f), var_1.a.x)));
    let var_4 = var_0.x;
    var var_5 = vec3<i32>(_wgslsmith_sub_i32(var_0.x, -43040i), 2147483647i, ~min(i32(-1i) * -57130i, firstLeadingBit(2147483647i)) | u_input.b);
    var_5 = vec3<i32>(~reverseBits(u_input.d), -1i, abs(_wgslsmith_sub_i32(var_4, var_5.x) >> (17977u % 32u)) | u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, var_1.a.x, func_2().c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2005f, var_1.a.x, var_1.a.x, -826f))))), ~_wgslsmith_div_u32(~abs(3009u), select(func_2().a.d.x, 61960u, select(true, false, var_3.x))));
}

