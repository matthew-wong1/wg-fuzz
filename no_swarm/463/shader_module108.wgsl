struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_2,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: bool) -> f32 {
    global0 = any(select(select(vec2<bool>(select(true, arg_0, arg_0), true), select(!vec2<bool>(arg_0, true), select(vec2<bool>(true, arg_0), vec2<bool>(false, false), vec2<bool>(false, arg_0)), any(vec4<bool>(arg_0, arg_0, true, false))), vec2<bool>(true, true)), !select(!vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), true), true));
    global0 = !arg_0;
    let var_0 = 1u;
    let var_1 = vec4<u32>(~23359u, ~var_0, 10412u, _wgslsmith_add_u32(33786u, select(~8531u, min(~0u, _wgslsmith_sub_u32(var_0, var_0)), all(select(vec3<bool>(arg_0, true, true), vec3<bool>(true, arg_0, true), vec3<bool>(false, arg_0, false))))));
    let var_2 = false;
    return 1002f;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1453f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1298f), -707f)), _wgslsmith_f_op_f32(ceil(-425f)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false | arg_1))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-396f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1264f) * 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-254f)) - -1258f)));
    global0 = arg_1;
    var_0 = _wgslsmith_f_op_f32(func_3(0i != -u_input.a));
    global0 = any(vec3<bool>(true, any(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(false, false))), !arg_1));
    return abs(~min(max(vec3<u32>(4294967295u, arg_0.x, 4294967295u), vec3<u32>(62146u, arg_0.x, arg_0.x)) & min(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec3<u32>(20945u, 0u, 47994u)), abs(abs(vec3<u32>(arg_0.x, 32187u, arg_0.x)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = ~(-(~vec2<i32>(u_input.a, ~(-2147483647i))));
    var var_1 = Struct_3(Struct_1(4089u, min(vec2<i32>(abs(25408i), var_0.x), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.b), -vec2<i32>(var_0.x, u_input.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1986f, -843f, 561f))))), _wgslsmith_div_vec3_i32(min(select(vec3<i32>(2147483647i, 11993i, -17995i), vec3<i32>(var_0.x, -2147483647i, 46917i), arg_1.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<i32>(var_0.x, 2147483647i, u_input.a), vec3<i32>(u_input.a, -1i, -53181i))), ~abs(vec3<i32>(u_input.b, u_input.b, 1795i)))), _wgslsmith_dot_vec4_u32(min(firstTrailingBit(~vec4<u32>(0u, arg_0.x, 94742u, 0u)), vec4<u32>(~arg_0.x, 73744u >> (arg_0.x % 32u), ~1u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(~0u, arg_0.x, _wgslsmith_mult_u32(11938u, 0u), _wgslsmith_mult_u32(arg_0.x, 4294967295u)), vec4<u32>(select(1u, 1u, arg_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, arg_0.x, 18571u), vec4<u32>(arg_0.x, 25537u, arg_0.x, arg_0.x)), ~arg_0.x, 4294967295u))), ~select(~(~arg_0.x), arg_0.x << (arg_0.x % 32u), arg_1.x), Struct_2(-1000f, Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 1u, 51222u, 4294967295u), vec4<u32>(1u, 0u, 25684u, 30295u) ^ vec4<u32>(60130u, arg_0.x, 67947u, arg_0.x)), ~(vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(arg_0.x, arg_0.x) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(213f, 1081f, 2133f))))), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, var_0.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -1i, 1i), vec3<i32>(-6356i, u_input.b, -36514i))))), Struct_1(15313u, vec2<i32>(countOneBits(1i ^ var_0.x), ~u_input.b), vec3<f32>(-1599f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1135f - -1998f) + _wgslsmith_f_op_f32(-855f - 1478f))), vec3<i32>(~(-1i), 1716i, _wgslsmith_mult_i32(-1i, var_0.x)) << (~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_0.x, 0u), arg_0) % vec3<u32>(32u))));
    var_1 = Struct_3(Struct_1(arg_0.x, _wgslsmith_sub_vec2_i32(~select(var_1.e.d.zz, var_1.a.d.zx, false), var_1.e.b), var_1.a.c, _wgslsmith_sub_vec3_i32(vec3<i32>(abs(var_0.x), countOneBits(var_0.x), ~17826i), reverseBits(_wgslsmith_div_vec3_i32(var_1.e.d, vec3<i32>(var_0.x, -31233i, var_0.x))))), ~arg_0.x, countOneBits(~1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 37274u, 1u, arg_0.x), vec4<u32>(0u, var_1.a.a, 0u, 24119u)) % 32u)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.e.c.x))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.d.b.c.x + var_1.a.c.x)))), var_1.d.b), var_1.a);
    let var_2 = Struct_4(Struct_3(var_1.e, select(~var_1.b, ~select(1u, var_1.d.b.a, arg_1.x), arg_1.x), var_1.b, Struct_2(var_1.d.a, var_1.a), var_1.d.b), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, -53467i), u_input.b) & min(reverseBits(580i), 0i), _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(-39528i, var_0.x, 2147483647i, var_1.d.b.b.x), vec4<i32>(2142i, -35753i, 4322i, 2147483647i)), ~(-vec4<i32>(u_input.b, -1i, 1i, var_0.x))), ~var_0.x, 1i), Struct_2(var_1.a.c.x, var_1.e), -((~18144i ^ u_input.b) | 28896i), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = true;
    return Struct_1(_wgslsmith_add_u32(countOneBits(min(var_1.d.b.a, arg_0.x)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.x, 17215u), ~arg_0.x)) & 39091u, vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(select(var_2.b.wxz, var_1.d.b.d, true), vec3<i32>(var_0.x, -18995i, -26091i)), _wgslsmith_add_vec3_i32(var_1.e.d, vec3<i32>(var_2.c.b.d.x, var_1.e.d.x, u_input.b))), var_1.e.d.x), vec3<f32>(_wgslsmith_f_op_f32(func_3(arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(131f)), _wgslsmith_f_op_f32(f32(-1f) * -2817f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c.x) * -930f)), vec3<i32>(~(-max(var_2.a.e.b.x, u_input.b)), -(var_1.e.d.x | (-42854i << (arg_0.x % 32u))), ~(~min(14578i, -2147483647i))));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: bool, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_3(func_4(_wgslsmith_sub_vec3_u32(~vec3<u32>(87871u, arg_1, arg_1), reverseBits(arg_0)) & _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, 29247u, 4294967295u), arg_0, vec3<u32>(4294967295u, 1u, arg_0.x)), func_2(arg_0.yy, false)), vec3<bool>(any(select(vec4<bool>(arg_2, false, false, arg_2), vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(arg_2, true, true, false))), all(vec3<bool>(arg_2, false, false)) & false, all(!vec4<bool>(true, arg_2, arg_2, true)))), firstLeadingBit(18350u) >> (~arg_1 % 32u), _wgslsmith_dot_vec4_u32(reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(81630u, arg_1, arg_1, 1u), vec4<u32>(59435u, arg_1, arg_0.x, arg_0.x))), select(vec4<u32>(4294967295u | arg_1, ~3360u, arg_0.x, 1u), min(vec4<u32>(arg_0.x, 4294967295u, 4294967295u, 4294967295u), firstTrailingBit(vec4<u32>(arg_0.x, 40572u, arg_0.x, arg_0.x))), select(select(vec4<bool>(arg_2, false, false, true), vec4<bool>(false, arg_2, arg_2, false), arg_2), !vec4<bool>(arg_2, arg_2, arg_2, arg_2), 76040u <= arg_1))), Struct_2(_wgslsmith_f_op_f32(sign(-113f)), Struct_1(~(arg_0.x << (arg_0.x % 32u)), vec2<i32>(max(3793i, arg_3), u_input.b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -1941f, -259f), vec3<f32>(109f, -1757f, -115f))))), reverseBits(vec3<i32>(-16638i, -21862i, arg_3)))), func_4(arg_0, vec3<bool>(arg_2, false, any(vec4<bool>(true, arg_2, arg_2, true)))));
    var var_1 = var_0.e.b.x;
    global0 = !(4294967295u > (arg_1 >> (_wgslsmith_dot_vec4_u32(vec4<u32>(43718u, var_0.d.b.a, arg_1, arg_0.x) >> (vec4<u32>(arg_1, arg_0.x, 1u, arg_1) % vec4<u32>(32u)), vec4<u32>(0u, arg_1, arg_0.x, arg_1) ^ vec4<u32>(var_0.a.a, 45634u, 28097u, 0u)) % 32u)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(637f + var_0.d.a), _wgslsmith_f_op_f32(f32(-1f) * -539f))), var_0.e.c.x))), Struct_1(~_wgslsmith_add_u32(~1u, _wgslsmith_clamp_u32(var_0.b, 0u, 1u)), var_0.e.b, var_0.d.b.c, var_0.d.b.d));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.c.x, -1000f))), -959f, any(vec4<bool>(true, !arg_2, !arg_2, false))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1349f)) * -1491f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + _wgslsmith_f_op_f32(step(1766f, var_3))), var_0.e.c.x))), func_4(~arg_0, select(vec3<bool>(true, var_2.a >= 978f, arg_2), !select(vec3<bool>(arg_2, true, false), vec3<bool>(false, arg_2, false), arg_2), select(select(vec3<bool>(arg_2, true, false), vec3<bool>(false, false, arg_2), vec3<bool>(false, arg_2, false)), select(vec3<bool>(true, false, arg_2), vec3<bool>(true, arg_2, false), vec3<bool>(true, false, arg_2)), vec3<bool>(true, arg_2, arg_2)))));
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> u32 {
    var var_0 = 41334u;
    var var_1 = vec4<bool>(any(!(!(!vec3<bool>(true, true, arg_0)))), false, !arg_0, arg_1.b.a != firstLeadingBit(func_2(firstTrailingBit(vec2<u32>(arg_1.b.a, 36139u)), !arg_0).x));
    var var_2 = func_2(vec2<u32>(~17762u, ~arg_1.b.a), _wgslsmith_div_f32(-1635f, _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(max(arg_1.b.c.x, arg_1.b.c.x)))) == arg_1.b.c.x).x;
    global0 = true;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))) - arg_1.b.c.x));
    return _wgslsmith_div_u32(57775u, _wgslsmith_clamp_u32(reverseBits(~58493u | arg_1.b.a), _wgslsmith_mod_u32(arg_1.b.a | _wgslsmith_div_u32(arg_1.b.a, arg_1.b.a), 42782u), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(arg_1.b.a, 4294967295u), (4294967295u & arg_1.b.a) ^ _wgslsmith_clamp_u32(arg_1.b.a, 1u, arg_1.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(abs(vec4<u32>(_wgslsmith_sub_u32(20211u, 1u), firstLeadingBit(~1u), _wgslsmith_div_u32(~0u, 100776u << (1u % 32u)), func_5(true, func_1(vec3<u32>(25000u, 68900u, 0u), 32359u, true, u_input.b)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-995f, 575f, -1209f, -228f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(602f, 151f, 533f, 809f)))), vec4<f32>(_wgslsmith_f_op_f32(-477f - -1417f), 1161f, _wgslsmith_f_op_f32(-447f - -194f), _wgslsmith_f_op_f32(step(1523f, -1654f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1876f, 241f, 1000f, _wgslsmith_div_f32(1137f, -881f))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1824f, 1539f, 571f, 462f)) + vec4<f32>(1777f, 357f, 385f, -1236f)), all(vec4<bool>(true, true, true, true)))))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(892f + 1068f), func_4(~vec3<u32>(var_0.x, var_0.x, 291u), vec3<bool>(true, true, true)).c.x) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(all(vec4<bool>(true, true, true, true)))) + _wgslsmith_f_op_f32(var_1.x + -1066f));
    let var_2 = func_1(vec3<u32>(~_wgslsmith_clamp_u32(97359u, 50047u, func_4(vec3<u32>(var_0.x, var_0.x, 61689u), vec3<bool>(true, true, false)).a), firstTrailingBit(7738u) ^ 26418u, max(var_0.x, var_0.x)), countOneBits(max(var_0.x, var_0.x)) | 0u, all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), true), false), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), true)), _wgslsmith_clamp_i32(u_input.b, -_wgslsmith_mod_i32(0i, -1i) & ~u_input.a, reverseBits(0i | u_input.a) << (~var_0.x % 32u)));
    var var_3 = vec2<bool>(true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x))) < _wgslsmith_f_op_f32(-var_2.a));
    let var_4 = countOneBits(-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b), ~var_2.b.b), 6836i));
    var_0 = firstLeadingBit(vec4<u32>(var_0.x, 4294967295u, var_0.x, 73158u));
    var_3 = vec2<bool>(!any(vec3<bool>(var_2.b.c.x >= var_2.a, var_3.x, true)), all(!(!select(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec3<u32>(1u, ~_wgslsmith_sub_u32(1050u, ~var_0.x), 72064u), 91380u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)) + var_1.x));
}

