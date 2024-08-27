struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-2718i, 0i), 1u, vec4<i32>(-15869i, -45288i, 49276i, -36365i));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    global0 = arg_3.d;
    global0 = Struct_1(global0.a, abs(35342u), vec4<i32>(78549i, _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(58802i), ~8385i, abs(10663i), u_input.b.x), min(_wgslsmith_mod_vec4_i32(arg_0.d.c, vec4<i32>(global0.a.x, global0.c.x, -1i, -2147483647i)), global0.c)), _wgslsmith_mult_i32(-_wgslsmith_sub_i32(arg_0.d.a.x, -10036i), -select(-46871i, 17953i, arg_0.c.x)), arg_3.d.a.x | -37242i));
    var var_0 = Struct_1(vec2<i32>(-1i) * -arg_3.d.c.zy, max(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1603u, 1u), min(arg_0.a.x, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 0u, u_input.a.x, 0u)))), ~max(u_input.a.x, 25966u)), ~select(_wgslsmith_mult_vec4_i32(arg_3.d.c, vec4<i32>(-1i, arg_3.d.a.x, 8963i, arg_0.d.a.x)), arg_0.d.c, !vec4<bool>(false, arg_3.c.x, true, arg_2.e)));
    var var_1 = arg_3.d;
    var_1 = Struct_1(vec2<i32>(firstLeadingBit(countOneBits(~(-17870i))), 16969i), ~(firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)) | arg_0.a.x), ~vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -17526i, -810i), -var_0.c.x, -_wgslsmith_sub_i32(4622i, 1i), select(-1i, _wgslsmith_mod_i32(2147483647i, var_1.a.x), u_input.b.x < var_1.a.x)));
    return arg_2.a.x;
}

fn func_2() -> vec2<i32> {
    global0 = Struct_1(min(vec2<i32>(-2147483647i, min(global0.a.x, i32(-1i) * -2147483647i)), -vec2<i32>(func_3(Struct_2(u_input.a.wx, -907f, vec4<bool>(true, true, true, true), Struct_1(u_input.b, 1u, global0.c)), vec4<f32>(-1626f, -341f, -2392f, 715f), Struct_3(vec2<i32>(u_input.b.x, u_input.b.x), true, 1281f, u_input.b.x, true), Struct_2(u_input.a.zz, 1310f, vec4<bool>(false, true, true, false), Struct_1(vec2<i32>(u_input.b.x, 3527i), 4294967295u, global0.c))), global0.c.x)), reverseBits(0u), min((firstLeadingBit(vec4<i32>(1i, -1i, global0.a.x, 24370i)) ^ (vec4<i32>(global0.a.x, global0.a.x, u_input.b.x, -742i) >> (vec4<u32>(u_input.a.x, 31365u, 7856u, u_input.a.x) % vec4<u32>(32u)))) & vec4<i32>(u_input.b.x, global0.c.x, i32(-1i) * -2147483647i, u_input.b.x), global0.c | ~vec4<i32>(u_input.b.x, 105636i, u_input.b.x, u_input.b.x)));
    var var_0 = vec2<f32>(1f, 1f);
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(floor(792f)))));
    let var_1 = var_0.x;
    var var_2 = Struct_3(u_input.b, false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(floor(var_0.x))))), _wgslsmith_mult_i32(2147483647i, func_3(Struct_2(vec2<u32>(51913u, u_input.a.x), -304f, vec4<bool>(true, true, false, false), Struct_1(vec2<i32>(-32456i, -12316i), 1u, vec4<i32>(1i, 1028i, global0.c.x, -31213i))), vec4<f32>(_wgslsmith_div_f32(-1000f, -712f), _wgslsmith_f_op_f32(var_0.x * var_0.x), var_0.x, _wgslsmith_f_op_f32(-var_0.x)), Struct_3(_wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, vec2<i32>(global0.a.x, 15913i)), any(vec3<bool>(false, false, false)), var_0.x, abs(global0.c.x), true), Struct_2(abs(u_input.a.yw), var_0.x, vec4<bool>(true, true, true, true), Struct_1(global0.a, 27162u, global0.c)))), !any(vec3<bool>(false, global0.b < 1u, select(false, false, true))));
    return u_input.b ^ abs(global0.c.xw);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    let var_0 = Struct_1(~reverseBits(firstTrailingBit(vec2<i32>(-11041i, u_input.b.x))), 1u, -global0.c);
    global0 = Struct_1(abs(arg_0.c.zx), global0.b, var_0.c);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1204f + arg_1.c) * -1291f)));
    let var_2 = Struct_2(firstLeadingBit(vec2<u32>(~(~u_input.a.x), 33312u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), select(select(vec4<bool>(-2147483647i == u_input.b.x, global0.b != 57179u, !arg_1.e, false), select(vec4<bool>(arg_1.b, true, false, true), select(vec4<bool>(arg_1.e, true, arg_1.b, true), vec4<bool>(arg_1.e, true, false, arg_1.e), arg_1.b), all(vec3<bool>(arg_1.b, arg_1.b, false))), !select(vec4<bool>(true, true, false, false), vec4<bool>(arg_1.e, arg_1.e, true, arg_1.b), vec4<bool>(true, false, false, arg_1.e))), select(vec4<bool>(true, arg_1.e, any(vec2<bool>(false, false)), true), vec4<bool>(true, true, true != arg_1.b, false), select(vec4<bool>(false, arg_1.b, false, arg_1.e), vec4<bool>(false, arg_1.e, true, false), vec4<bool>(arg_1.b, false, arg_1.b, true))), all(select(!vec4<bool>(arg_1.e, false, false, true), select(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(arg_1.e, arg_1.b, arg_1.e, false), arg_1.e), true))), Struct_1(vec2<i32>(-1i, 1i), global0.b, reverseBits(arg_0.c)));
    global0 = Struct_1(~var_2.d.a, ~0u, _wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(global0.c.x, var_2.d.c.x, 0i, arg_1.a.x), vec4<i32>(-25489i, 2147483647i, global0.a.x, var_2.d.a.x)), -var_0.c) ^ vec4<i32>(u_input.b.x >> (_wgslsmith_sub_u32(var_0.b, 44071u) % 32u), 0i, global0.a.x, global0.a.x));
    return u_input.a.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> vec3<i32> {
    var var_0 = u_input.a.x;
    global0 = Struct_1(_wgslsmith_add_vec2_i32(min(_wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(16925i, arg_0.x)), vec2<i32>(2147483647i, arg_0.x) | global0.c.zz) ^ ~vec2<i32>(arg_0.x, u_input.b.x), _wgslsmith_mod_vec2_i32(-vec2<i32>(global0.a.x, global0.a.x), vec2<i32>(_wgslsmith_add_i32(-22217i, global0.c.x), firstTrailingBit(arg_0.x)))), global0.b ^ ~((u_input.a.x ^ global0.b) | 5219u), countOneBits(global0.c));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(sign(1000f)), 1000f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-491f, arg_1, -946f) - vec3<f32>(arg_1, arg_1, -1303f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-1000f - arg_1), 1372f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(110f, 1632f, arg_1) + vec3<f32>(arg_1, -848f, 538f))))));
    var var_2 = u_input.a.zy;
    global0 = Struct_1(u_input.b, ~func_4(Struct_1(func_2(), ~global0.b, abs(vec4<i32>(arg_0.x, u_input.b.x, u_input.b.x, 0i))), Struct_3(-vec2<i32>(global0.c.x, 46782i), u_input.a.x >= 4294967295u, _wgslsmith_f_op_f32(trunc(180f)), ~2103i, all(vec3<bool>(false, false, true)))), arg_0);
    return global0.c.zwy;
}

fn func_5(arg_0: vec3<i32>) -> i32 {
    let var_0 = vec3<u32>(~(~0u), _wgslsmith_mult_u32(_wgslsmith_add_u32(max(~1u, _wgslsmith_add_u32(global0.b, 1u)), u_input.a.x), ~(~global0.b >> (max(u_input.a.x, 98776u) % 32u))), 0u);
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, ~reverseBits(14608u), ~func_4(Struct_1(arg_0.yx, 70606u, global0.c), Struct_3(u_input.b, true, 201f, global0.a.x, true))), min(vec3<u32>(~112974u, 92262u, ~var_0.x), (vec3<u32>(1u, global0.b, 4294967295u) | firstTrailingBit(vec3<u32>(0u, 4294967295u, 1u))) | u_input.a.wxw));
    global0 = Struct_1(u_input.b, 0u << (global0.b % 32u), -vec4<i32>(min(global0.a.x, u_input.b.x), 34264i, -3809i, -913i) ^ firstLeadingBit(global0.c));
    global0 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, 2147483647i), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 0i)), arg_0.x), abs(global0.b), min(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(49007i, 2147483647i, global0.c.x, 8191i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-22629i, -52139i, 10282i, 1i), global0.c, vec4<i32>(-3336i, 0i, 1283i, arg_0.x)))), vec4<i32>(_wgslsmith_dot_vec2_i32(-arg_0.xx, u_input.b << (vec2<u32>(u_input.a.x, 17514u) % vec2<u32>(32u))), 59033i, -2147483647i, _wgslsmith_sub_i32(-9288i, -2147483647i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1042f, -575f))) + vec2<f32>(_wgslsmith_f_op_f32(round(958f)), _wgslsmith_f_op_f32(-661f + 540f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-928f, 1519f) * vec2<f32>(1657f, 256f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(vec2<f32>(1181f, -1000f), vec2<f32>(100f, -550f)), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1348f, -792f) - vec2<f32>(1110f, -218f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(343f, -188f) - vec2<f32>(-362f, -627f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-943f, 1796f), vec2<f32>(663f, 772f)))))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~_wgslsmith_sub_vec2_i32(-vec2<i32>(-21352i, global0.c.x), vec2<i32>(-1i, u_input.b.x)) & _wgslsmith_sub_vec2_i32(vec2<i32>(1i, _wgslsmith_mult_i32(-1i, 2147483647i)), vec2<i32>(u_input.b.x & -2147483647i, u_input.b.x)), _wgslsmith_mod_u32(global0.b, 79203u), -_wgslsmith_add_vec4_i32(vec4<i32>(43692i << (global0.b % 32u), ~u_input.b.x, global0.c.x >> (global0.b % 32u), 1i), global0.c));
    var var_0 = func_5(_wgslsmith_mod_vec3_i32(global0.c.xyx, func_1(vec4<i32>(27619i, global0.a.x << (21892u % 32u), global0.c.x, global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -741f))));
    var var_1 = -502f;
    var var_2 = Struct_3(vec2<i32>(_wgslsmith_mult_i32(~global0.c.x, ~0i) << (34083u % 32u), u_input.b.x), !(!any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-535f + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, -1648f)), _wgslsmith_f_op_f32(f32(-1f) * -822f))))), -abs(_wgslsmith_sub_i32(global0.c.x, 18209i)) ^ u_input.b.x, select(all(vec4<bool>(true, true, true, true)), 29101u < global0.b, true | select(u_input.a.x > u_input.a.x, any(vec2<bool>(false, true)), true)));
    var var_3 = reverseBits(vec3<u32>(~_wgslsmith_div_u32(firstLeadingBit(0u), global0.b), global0.b << (max(15713u, global0.b) % 32u), global0.b));
    var_3 = ~min(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.wwz, max(u_input.a.zzz, u_input.a.wzz)), ~u_input.a.wxz), ~firstTrailingBit(~vec3<u32>(global0.b, global0.b, 0u)));
    let var_4 = Struct_1(var_2.a | (var_2.a & u_input.b), ~(var_3.x >> (_wgslsmith_dot_vec4_u32(u_input.a << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, global0.b) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(1u, 42907u, 61749u, var_3.x))) % 32u)), firstLeadingBit(firstTrailingBit(select(global0.c, global0.c, select(vec4<bool>(true, var_2.b, true, true), vec4<bool>(false, false, false, var_2.e), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~min(~2158i, ~global0.c.x), i32(-1i) * -1i, _wgslsmith_clamp_i32(2147483647i, 1i, _wgslsmith_clamp_i32(~13100i, 19424i, _wgslsmith_mod_i32(var_2.d, var_4.c.x)))), u_input.a.yxx, -1i);
}

