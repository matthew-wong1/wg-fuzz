struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: bool) -> vec3<bool> {
    var var_0 = Struct_1(global0.d, 36666u, u_input.a.zwz ^ vec3<u32>(~3618u, u_input.a.x, abs(_wgslsmith_dot_vec3_u32(global0.c, vec3<u32>(u_input.a.x, 1u, 4294967295u)))), global0.a, global0.e);
    var var_1 = Struct_1(~min(_wgslsmith_div_vec4_i32(global0.d, vec4<i32>(var_0.a.x, var_0.d.x, var_0.a.x, 2147483647i)), vec4<i32>(_wgslsmith_div_i32(-17569i, var_0.a.x), firstLeadingBit(u_input.e), _wgslsmith_mult_i32(u_input.d.x, u_input.b), var_0.a.x)), var_0.b, vec3<u32>(var_0.b, ~global0.c.x << (var_0.c.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(22147u), 1u, var_0.b | global0.b), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(var_0.c, u_input.a.zzz, u_input.a.xzx), ~vec3<u32>(var_0.b, var_0.b, 17114u)))), vec4<i32>(22300i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b, -41457i, 45199i)), (global0.a.zxz >> (vec3<u32>(global0.b, var_0.b, global0.b) % vec3<u32>(32u))) ^ var_0.a.zwx), abs(min(abs(var_0.a.x), 1i)), -1i), select(!var_0.e, var_0.e, select(vec3<bool>(1000f != arg_1.x, true, global0.e.x), vec3<bool>(true, arg_2, global0.e.x), global0.e)));
    var var_2 = global0.d.wz;
    let var_3 = -var_0.a.x;
    let var_4 = vec3<u32>(max(_wgslsmith_div_u32(min(4294967295u, abs(var_1.c.x)), ~10748u), _wgslsmith_mod_u32(countOneBits(reverseBits(0u)), firstLeadingBit(~var_0.b))), 1u, var_1.b);
    return select(select(!var_1.e, select(vec3<bool>(true, !arg_2, true), vec3<bool>(var_0.e.x, true, all(var_0.e.yz)), !arg_2), vec3<bool>(global0.e.x, any(vec4<bool>(false, false, true, arg_2)), _wgslsmith_f_op_f32(-1828f - -1227f) <= _wgslsmith_f_op_f32(-arg_0.x))), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1607f - arg_0.x) + _wgslsmith_f_op_f32(sign(arg_0.x))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1173f * -1325f))), !(~15270i == abs(var_0.a.x)), true), !global0.e);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_2.a.x, 1i), arg_2.d.x), i32(-1i) * -global0.d.x, firstTrailingBit(1i), countOneBits(_wgslsmith_mult_i32(16005i, arg_2.a.x)))), _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(u_input.a, abs(vec4<u32>(1u, arg_0, 5405u, 1u))), max(~(vec4<u32>(global0.c.x, 0u, 19199u, 12875u) << (vec4<u32>(1u, 32185u, arg_0, 26123u) % vec4<u32>(32u))), max(_wgslsmith_add_vec4_u32(u_input.a, u_input.a), ~u_input.a))), _wgslsmith_add_vec3_u32(select(~vec3<u32>(1u, arg_0, 21716u) << (~vec3<u32>(1u, 4294967295u, 15027u) % vec3<u32>(32u)), ~arg_2.c, !func_3(vec3<f32>(-282f, -1553f, -1000f), vec2<f32>(-1000f, 475f), false)), ~global0.c), _wgslsmith_sub_vec4_i32(vec4<i32>(~(-1i), u_input.e, -(~(-38757i)), abs(u_input.d.x << (arg_0 % 32u))), global0.d), func_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1015f))), _wgslsmith_f_op_f32(f32(-1f) * -406f), _wgslsmith_f_op_f32(-265f + _wgslsmith_f_op_f32(f32(-1f) * -413f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-240f, -451f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-560f, 1000f))))), arg_1));
    var var_0 = arg_2;
    let var_1 = !(!(!select(select(vec4<bool>(var_0.e.x, false, var_0.e.x, true), vec4<bool>(global0.e.x, arg_1, arg_2.e.x, var_0.e.x), vec4<bool>(false, var_0.e.x, global0.e.x, arg_1)), vec4<bool>(arg_1, arg_2.e.x, true, true), vec4<bool>(arg_1, false, global0.e.x, true))));
    global0 = Struct_1(max(u_input.d, -abs(arg_2.d)), arg_2.c.x, _wgslsmith_sub_vec3_u32(arg_2.c, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.c, 0u) | vec3<u32>(u_input.a.x, arg_2.c.x, u_input.a.x), ~global0.c)), -global0.d, var_0.e);
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(280f, 333f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(996f, 632f) + vec2<f32>(2326f, 587f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(779f, -1556f) - vec2<f32>(-309f, -682f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(125f, -1163f))))), !all(arg_2.e.zx))))));
    return Struct_1(abs(_wgslsmith_sub_vec4_i32(var_0.a | vec4<i32>(u_input.b, 44545i, global0.d.x, -7126i), max(vec4<i32>(96977i, -2147483647i, 10286i, arg_2.a.x), vec4<i32>(global0.d.x, u_input.b, 0i, 1i)))) ^ vec4<i32>(45748i, abs(2147483647i), -32101i << (~global0.c.x % 32u), -2147483647i), _wgslsmith_mult_u32(27346u, 71077u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, ~var_0.b, ~arg_0), reverseBits(min(_wgslsmith_sub_vec3_u32(var_0.c, var_0.c), ~global0.c))), _wgslsmith_add_vec4_i32(global0.a, vec4<i32>(-2147483647i, select(_wgslsmith_dot_vec4_i32(global0.a, arg_2.a), _wgslsmith_add_i32(-4342i, -3739i), arg_1), ~(~(-3549i)), ~17056i)), vec3<bool>(false, !(!arg_2.e.x | arg_2.e.x), (_wgslsmith_div_f32(-577f, -1000f) > var_2.x) == false));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec3<bool> {
    let var_0 = Struct_1(func_2(~(arg_2.b & 10036u), func_2(firstLeadingBit(~global0.b), arg_1.e.x, arg_1).e.x, func_2(~arg_1.c.x, _wgslsmith_f_op_f32(select(778f, -1000f, true)) > _wgslsmith_div_f32(-924f, 684f), arg_1)).a, ~4294967295u | (~arg_1.b ^ arg_2.c.x), vec3<u32>(~44094u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global0.c.yy, global0.c.xy), ~vec2<u32>(74772u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, arg_2.b, arg_2.c.x) << (min(vec3<u32>(arg_2.b, 0u, 85004u), arg_2.c) % vec3<u32>(32u)), ~global0.c)), abs(_wgslsmith_mod_vec4_i32(countOneBits(-vec4<i32>(arg_1.a.x, 29519i, 42504i, global0.d.x)), select(vec4<i32>(-201i, global0.d.x, 2147483647i, arg_0.x), select(arg_1.d, arg_2.a, vec4<bool>(false, false, true, false)), vec4<bool>(global0.e.x, false, arg_1.e.x, arg_2.e.x)))), !(!arg_1.e));
    var var_1 = abs(vec3<i32>(8880i, -12284i, ~var_0.a.x));
    let var_2 = func_2(51928u, func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-269f, 710f, -1387f), vec3<f32>(1744f, -512f, -961f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(307f, 1349f, 1533f) - vec3<f32>(-1610f, -2625f, 904f))) * vec3<f32>(_wgslsmith_f_op_f32(abs(551f)), _wgslsmith_f_op_f32(select(-154f, 876f, arg_2.e.x)), _wgslsmith_div_f32(1662f, -1055f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(621f, -719f), vec2<f32>(210f, 353f))), vec2<f32>(466f, -1000f), func_2(var_0.c.x, true, Struct_1(global0.a, arg_1.b, arg_1.c, vec4<i32>(arg_1.d.x, 45858i, 8621i, -40671i), arg_2.e)).e.x))), true).x, Struct_1(vec4<i32>(arg_2.a.x, countOneBits(var_0.d.x), _wgslsmith_mod_i32(max(global0.d.x, var_0.d.x), _wgslsmith_mult_i32(arg_0.x, global0.a.x)), max(var_0.d.x, arg_2.a.x) << ((98967u << (u_input.c % 32u)) % 32u)), ~(~func_2(87687u, global0.e.x, var_0).b), max(global0.c, arg_1.c), ~_wgslsmith_div_vec4_i32(vec4<i32>(-53678i, 0i, arg_2.d.x, var_1.x), vec4<i32>(global0.a.x, 3726i, u_input.e, var_0.d.x)) >> (u_input.a % vec4<u32>(32u)), !arg_1.e));
    let var_3 = Struct_1(u_input.d, ~(var_2.b ^ global0.c.x), vec3<u32>(~_wgslsmith_add_u32(_wgslsmith_div_u32(var_2.c.x, 4294967295u), _wgslsmith_mult_u32(20330u, 22001u)), _wgslsmith_dot_vec4_u32(firstLeadingBit(~u_input.a), vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 0u, var_2.c.x, 45214u)), ~26483u, ~7867u, ~arg_2.b)), 0u), _wgslsmith_add_vec4_i32(var_0.d ^ select(_wgslsmith_mod_vec4_i32(var_2.a, var_2.a), select(global0.d, arg_1.d, vec4<bool>(arg_2.e.x, false, true, false)), vec4<bool>(arg_3, arg_3, global0.e.x, false)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.x, var_1.x, -48795i, global0.d.x), u_input.d), ~var_2.d.x, ~arg_2.a.x, var_2.d.x) << (u_input.a % vec4<u32>(32u))), select(func_2(func_2(_wgslsmith_clamp_u32(3068u, 40969u, 111634u), false, func_2(arg_1.c.x, true, Struct_1(var_2.a, arg_2.b, global0.c, vec4<i32>(1i, arg_0.x, u_input.b, 2147483647i), vec3<bool>(arg_2.e.x, arg_2.e.x, false)))).b, false, arg_2).e, func_2(_wgslsmith_sub_u32(21927u, _wgslsmith_dot_vec3_u32(var_2.c, var_0.c)), func_2(arg_2.c.x, !arg_3, Struct_1(arg_2.d, var_0.c.x, vec3<u32>(u_input.a.x, 19632u, 15006u), arg_1.d, vec3<bool>(var_0.e.x, var_2.e.x, global0.e.x))).e.x, arg_2).e, arg_1.e.x));
    var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(~abs(firstTrailingBit(arg_1.d.wwy)), max(~(-vec3<i32>(-1i, 59924i, arg_1.a.x)), arg_1.d.wzx)), u_input.d.x, -3719i);
    return select(!(!var_3.e), arg_1.e, true);
}

fn func_1() -> i32 {
    global0 = Struct_1(vec4<i32>(~abs(u_input.d.x), _wgslsmith_mult_i32(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.d.x, global0.d.x, 47378i), _wgslsmith_mult_vec4_i32(u_input.d, u_input.d))), _wgslsmith_sub_i32(~0i, 5967i), min(u_input.e, -18844i)), 1u, global0.c, u_input.d, !select(global0.e, vec3<bool>(true, true, 0u > u_input.c), true));
    global0 = Struct_1(global0.a, _wgslsmith_sub_u32(30274u, global0.c.x), u_input.a.wzz, -vec4<i32>(98114i, _wgslsmith_mod_i32(u_input.b, ~(-1i)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 1i), global0.a.wzw), firstTrailingBit(vec3<i32>(-21796i, u_input.d.x, global0.a.x))), -43899i), func_4(global0.d.ww, func_2(70068u, !global0.e.x, Struct_1(vec4<i32>(-7339i, u_input.b, -2147483647i, u_input.b), ~u_input.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(894u, u_input.a.x, u_input.a.x), vec3<u32>(global0.c.x, 1u, 4294967295u), vec3<u32>(global0.b, 0u, u_input.c)), u_input.d, global0.e)), func_2(1u, !any(vec3<bool>(global0.e.x, global0.e.x, true)), Struct_1(_wgslsmith_clamp_vec4_i32(global0.a, u_input.d, vec4<i32>(global0.a.x, u_input.e, -1i, global0.a.x)), 4294967295u, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, global0.c.x), u_input.a.zyx), vec4<i32>(global0.a.x, -21165i, global0.d.x, 1i), vec3<bool>(global0.e.x, global0.e.x, true))), global0.e.x));
    var var_0 = -1i;
    let var_1 = vec2<u32>(~firstLeadingBit(abs(global0.c.x)), _wgslsmith_dot_vec2_u32(~(vec2<u32>(global0.b, global0.b) & ~u_input.a.zx), vec2<u32>(u_input.a.x, 60019u)));
    var var_2 = func_2(_wgslsmith_mult_u32(var_1.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(global0.b, 496u), global0.c.yy, ~vec2<u32>(u_input.a.x, 1u)), _wgslsmith_mod_vec2_u32(var_1, u_input.a.zz))), all(!func_2(0u | u_input.a.x, global0.e.x, func_2(u_input.a.x, false, Struct_1(global0.a, var_1.x, u_input.a.ywz, u_input.d, global0.e))).e), Struct_1(~(-u_input.d), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(0u, global0.b), vec2<u32>(23139u, 1u)), vec2<u32>(1u, global0.c.x) >> (var_1 % vec2<u32>(32u))) << (_wgslsmith_div_u32(var_1.x ^ 29009u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) % 32u), ~select(u_input.a.xxy, firstTrailingBit(global0.c), true), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(14215i, -2147483647i, u_input.d.x, -33065i), u_input.d) ^ u_input.d, firstLeadingBit(abs(u_input.d))), !vec3<bool>(global0.e.x, false, any(vec4<bool>(global0.e.x, global0.e.x, true, true)))));
    return (_wgslsmith_sub_i32(u_input.d.x, countOneBits(32678i)) >> (~_wgslsmith_sub_u32(~global0.c.x, 2735u >> (var_1.x % 32u)) % 32u)) << (var_1.x % 32u);
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global0 = Struct_1(arg_2.a, ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u | u_input.c, _wgslsmith_mod_u32(4294967295u, global0.c.x)), firstTrailingBit(u_input.c)), ~_wgslsmith_div_vec3_u32(~u_input.a.yyx, vec3<u32>(arg_2.b, abs(40456u), u_input.a.x)), ~(~(arg_2.d | _wgslsmith_mod_vec4_i32(arg_2.a, global0.a))), select(arg_0.xyx, vec3<bool>(select(!arg_2.e.x, arg_0.x & true, arg_0.x || arg_2.e.x), all(select(arg_2.e, vec3<bool>(false, global0.e.x, arg_0.x), false)), false), true));
    let var_0 = select(0u, 1843u, true);
    global0 = arg_2;
    var var_1 = func_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(reverseBits(global0.c.xz << (vec2<u32>(10517u, arg_2.c.x) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_add_u32(arg_2.b, 4294967295u), arg_2.b)), vec2<u32>(4294967295u, 1u)), arg_2.e.x && arg_0.x, Struct_1(select(global0.a, vec4<i32>(-10875i, -arg_1, arg_2.d.x, global0.d.x), !(!arg_0.x)), 1u, ~global0.c, global0.d, select(!global0.e, func_2(~u_input.a.x, any(vec2<bool>(true, false)), func_2(global0.b, arg_0.x, arg_2)).e, true)));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_2.c.xz, u_input.a.wx), 4294967295u) >> (89211u % 32u), 29331u), min((~vec3<u32>(global0.c.x, global0.b, arg_2.b) ^ select(vec3<u32>(1u, global0.c.x, 71313u), vec3<u32>(global0.c.x, 6522u, 1u), false)) >> (vec3<u32>(0u << (var_0 % 32u), global0.c.x, 0u) % vec3<u32>(32u)), vec3<u32>(~_wgslsmith_clamp_u32(var_1.b, 1u, var_1.b), abs(1u), 583u)));
    return func_2(34753u, (_wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, var_1.d.x), max(-2635i, arg_2.a.x)) <= -_wgslsmith_dot_vec2_i32(u_input.d.yz, global0.d.zz)) && all(vec2<bool>(true, !global0.e.x)), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(select(vec4<bool>(!(48751i == u_input.d.x), select(true, select(global0.e.x, false, false), true), true, true), select(select(select(vec4<bool>(global0.e.x, global0.e.x, false, global0.e.x), vec4<bool>(true, true, global0.e.x, global0.e.x), true), !vec4<bool>(global0.e.x, global0.e.x, true, global0.e.x), select(vec4<bool>(global0.e.x, global0.e.x, global0.e.x, global0.e.x), vec4<bool>(false, false, true, true), global0.e.x)), select(vec4<bool>(true, global0.e.x, global0.e.x, global0.e.x), !vec4<bool>(global0.e.x, global0.e.x, false, false), global0.c.x > u_input.c), global0.e.x), global0.e.x), firstLeadingBit(firstLeadingBit(~u_input.b)) & func_1(), func_2(select(22262u, _wgslsmith_dot_vec2_u32(u_input.a.zw, vec2<u32>(16777u, u_input.a.x)) ^ u_input.a.x, select(all(vec3<bool>(global0.e.x, global0.e.x, true)), global0.e.x, global0.e.x)), !global0.e.x, Struct_1(u_input.d, ~1u, vec3<u32>(_wgslsmith_div_u32(global0.c.x, global0.b), ~0u, 72167u), -u_input.d >> (vec4<u32>(global0.c.x, global0.b, u_input.a.x, u_input.c) % vec4<u32>(32u)), !(!global0.e))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-259f, 650f), vec2<f32>(-1150f, 797f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(333f, -921f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(352f, 244f)))))));
    global0 = func_5(select(!select(vec4<bool>(global0.e.x, true, false, false), vec4<bool>(false, false, global0.e.x, true), global0.e.x && false), !vec4<bool>(false, !global0.e.x, global0.e.x, global0.e.x == true), true), ~u_input.d.x & global0.d.x, Struct_1(~_wgslsmith_clamp_vec4_i32(global0.d, global0.a, vec4<i32>(-97750i, 10068i, global0.d.x, u_input.b)) ^ (vec4<i32>(2147483647i, 2147483647i, -2147483647i, u_input.d.x) & u_input.d), 26747u, func_2(1u & _wgslsmith_mod_u32(global0.c.x, 4294967295u), true, func_2(0u, true, Struct_1(u_input.d, u_input.c, global0.c, vec4<i32>(-16593i, global0.d.x, u_input.e, u_input.b), global0.e))).c, abs(global0.d), !global0.e));
    var var_1 = func_2(_wgslsmith_clamp_u32(u_input.a.x, ~(~_wgslsmith_clamp_u32(4294967295u, 91127u, 0u)), (u_input.c | ~1u) & reverseBits(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.c, global0.b, 45598u)))), false, func_5(vec4<bool>(true, global0.e.x, global0.e.x, global0.e.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, -16394i, -14446i, 0i), ~vec4<i32>(global0.a.x, -1i, -2147483647i, global0.a.x)), Struct_1(-(vec4<i32>(u_input.e, 1i, -12433i, u_input.b) >> (u_input.a % vec4<u32>(32u))), _wgslsmith_mult_u32(0u, 0u), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(34417u, 14649u, global0.c.x)), select(u_input.a.zwy, vec3<u32>(48393u, 12639u, global0.c.x), global0.e), func_5(vec4<bool>(global0.e.x, true, true, true), u_input.b, Struct_1(global0.a, 4294967295u, u_input.a.zxy, vec4<i32>(global0.d.x, -2147483647i, u_input.d.x, u_input.e), vec3<bool>(false, true, global0.e.x))).c), global0.d, !global0.e)));
    var_1 = func_5(!select(!select(vec4<bool>(var_1.e.x, true, var_1.e.x, var_1.e.x), vec4<bool>(var_1.e.x, false, true, var_1.e.x), var_1.e.x), !vec4<bool>(global0.e.x, false, false, global0.e.x), select(vec4<bool>(false, global0.e.x, var_1.e.x, var_1.e.x), !vec4<bool>(true, var_1.e.x, false, var_1.e.x), select(vec4<bool>(var_1.e.x, true, true, false), vec4<bool>(false, false, false, var_1.e.x), false))), _wgslsmith_add_i32(0i, _wgslsmith_add_i32(0i, 1i)), func_2(~(~var_1.b), global0.e.x && true, func_5(vec4<bool>(global0.e.x, true, false && var_1.e.x, var_1.e.x), 25716i, Struct_1(max(vec4<i32>(-25850i, 2147483647i, u_input.b, var_1.d.x), vec4<i32>(var_1.a.x, 16641i, 77485i, -2147483647i)), ~4294967295u, vec3<u32>(0u, 41983u, 0u), ~vec4<i32>(var_1.a.x, 75536i, -2147483647i, 12588i), var_1.e))));
    let var_2 = var_0.x;
    global0 = func_5(vec4<bool>(!global0.e.x, !(!global0.e.x), var_0.x > -1000f, true), ~(reverseBits(global0.d.x) ^ _wgslsmith_add_i32(-22185i, ~u_input.d.x)), Struct_1(-vec4<i32>(reverseBits(u_input.b), _wgslsmith_mult_i32(var_1.d.x, var_1.d.x), ~1i, u_input.b), 71662u, var_1.c, func_2(~u_input.a.x, var_1.e.x, func_5(vec4<bool>(global0.e.x, true, true, var_1.e.x), -40631i, Struct_1(global0.d, var_1.b, global0.c, vec4<i32>(-29419i, 26102i, global0.a.x, u_input.e), var_1.e))).d >> (~_wgslsmith_mult_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u)), global0.e));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x);
}

