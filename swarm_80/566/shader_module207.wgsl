struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_5) -> vec2<bool> {
    var var_0 = min(reverseBits(~arg_0.b.wyx), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(~(-u_input.c), vec3<i32>(arg_0.b.x, -55800i, -1i) >> (u_input.a.xxy % vec3<u32>(32u)), max(u_input.b, vec3<i32>(u_input.c.x, u_input.c.x, 1i))), u_input.c, vec3<i32>(_wgslsmith_sub_i32(max(2147483647i, -44817i), 29084i), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.a, 4705i, u_input.b.x, 28178i), _wgslsmith_clamp_vec4_i32(arg_0.b, arg_0.b, vec4<i32>(1i, 12174i, 0i, 1i))), u_input.b.x)));
    var var_1 = u_input.a.yyx;
    var_1 = u_input.a.zyz;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1482f, 2000f, 422f, -1091f) + vec4<f32>(-1779f, 215f, -2157f, 2356f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 538f, -826f, 312f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    var_1 = _wgslsmith_mult_vec3_u32(u_input.a.xwz, vec3<u32>(~abs(4294967295u), ~(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(8326u, 23803u, u_input.a.x, var_1.x))), reverseBits(1u)));
    return !select(vec2<bool>(var_0.x >= (var_0.x | -16748i), false), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), true);
}

fn func_2() -> u32 {
    var var_0 = Struct_1(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), false), vec2<bool>(true, false), select(vec2<bool>(true, true), func_3(Struct_5(-2147483647i, vec4<i32>(u_input.b.x, 1i, -17525i, -1i))), true)), all(vec4<bool>(reverseBits(u_input.c.x) > u_input.b.x, (u_input.c.x != -5693i) & true, true, func_3(Struct_5(u_input.c.x, vec4<i32>(-1i, u_input.c.x, 9903i, u_input.b.x))).x)), abs((select(4294967295u, u_input.a.x, false) & 4294967295u) >> (_wgslsmith_sub_u32(~u_input.a.x, 22708u) % 32u)));
    var_0 = Struct_1(var_0.a, var_0.a.x, 1u | firstLeadingBit(firstTrailingBit(~1u)));
    let var_1 = Struct_1(func_3(Struct_5(_wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(u_input.b.x, u_input.c.x)), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(u_input.c.x, u_input.c.x, 72682i, 37351i)), firstLeadingBit(vec4<i32>(-2147483647i, 21738i, u_input.c.x, u_input.b.x))))), func_3(Struct_5(_wgslsmith_mod_i32(~(-44820i), u_input.c.x), vec4<i32>(-2147483647i, 2147483647i, select(-1i, -40915i, var_0.b), select(u_input.b.x, u_input.c.x, var_0.b)))).x, 4294967295u);
    var var_2 = Struct_5(u_input.c.x, vec4<i32>(-1i) * -vec4<i32>(~(-19859i), -2147483647i, u_input.b.x, -u_input.c.x));
    let var_3 = Struct_2(vec2<bool>(false, any(!vec2<bool>(var_0.b, false))), vec4<u32>(_wgslsmith_add_u32(~1u, ~35019u | var_0.c), u_input.a.x, 9164u, u_input.a.x), Struct_1(!(!select(vec2<bool>(var_0.b, var_0.a.x), vec2<bool>(var_0.b, true), var_1.a)), -2147483647i < _wgslsmith_div_i32(abs(u_input.c.x), var_2.b.x << (1u % 32u)), ~7040u));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_3.b.yw, abs(~vec2<u32>(var_0.c, 1u) | vec2<u32>(29127u, 9118u))), firstLeadingBit(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(var_3.b.yz << (var_3.b.zw % vec2<u32>(32u)), vec2<u32>(1u, 40918u) >> (u_input.a.xx % vec2<u32>(32u))), vec2<u32>(countOneBits(22747u), ~var_3.c.c))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_5) -> vec4<f32> {
    var var_0 = ~arg_1.x <= 5106u;
    var_0 = true;
    var var_1 = arg_3;
    var_1 = arg_3;
    let var_2 = ~func_2();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1401f, 676f, -110f, 889f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(764f, 1000f, -1000f, -1000f)), vec4<bool>(true, true, true, true)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = all(!vec2<bool>(!(arg_0.x == arg_1.x), !select(true, false, false)));
    return Struct_4(Struct_2(!(!vec2<bool>(false, var_0)), firstTrailingBit(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 53270u, 1u, u_input.a.x), vec4<u32>(83697u, 1120u, 0u, u_input.a.x)))), Struct_1(vec2<bool>(all(vec2<bool>(var_0, true)), false), (var_0 && false) && true, u_input.a.x)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec3<bool>) -> Struct_4 {
    var var_0 = arg_0;
    var var_1 = Struct_5(-30183i, vec4<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(max(~vec4<i32>(arg_0.x, var_0.x, var_0.x, -1i), reverseBits(vec4<i32>(-344i, var_0.x, var_0.x, arg_0.x))), vec4<i32>(var_0.x, u_input.c.x, 0i, var_0.x) | firstLeadingBit(vec4<i32>(u_input.b.x, -15378i, -1i, -1i))), 30896i, 0i));
    let var_2 = Struct_3(arg_1.a.c.a.x, true);
    var_0 = vec2<i32>(1i, i32(-1i) * -1i);
    let var_3 = ~max(var_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-54823i, 2935i, arg_0.x) << (u_input.a.zyy % vec3<u32>(32u)), ~vec3<i32>(var_0.x, -1i, -1i)), (u_input.b & vec3<i32>(arg_0.x, -2147483647i, -16458i)) ^ _wgslsmith_clamp_vec3_i32(var_1.b.ywz, vec3<i32>(-21555i, var_0.x, 5426i), vec3<i32>(2147483647i, 32657i, -25417i))));
    return arg_1;
}

fn func_6(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_4, arg_3: u32) -> f32 {
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(3103f, -708f)) * 1f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(503f + 377f), _wgslsmith_f_op_f32(-352f * 886f), u_input.a.x == u_input.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(u_input.b.x, u_input.b.x, 1i, _wgslsmith_div_i32(2147483647i, i32(-1i) * -(~u_input.b.x)));
    let var_1 = _wgslsmith_f_op_f32(func_6(Struct_5(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_mod_i32(23335i, var_0.x)), vec4<i32>(-23573i, select(u_input.b.x, _wgslsmith_dot_vec3_i32(var_0.yyy, var_0.wzw), true), i32(-1i) * -24378i, ~var_0.x)), func_5(var_0.zy & (_wgslsmith_mod_vec2_i32(u_input.c.zz, vec2<i32>(u_input.c.x, var_0.x)) ^ var_0.xy), func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1099f, -1180f, -649f, -302f) * vec4<f32>(177f, 457f, -1000f, -1782f)), _wgslsmith_f_op_vec4_f32(func_1(var_0.ww, vec2<u32>(26189u, u_input.a.x), var_0.x, Struct_5(1i, vec4<i32>(var_0.x, 2147483647i, var_0.x, u_input.c.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1752f, -1672f, -1000f, -816f) - vec4<f32>(-317f, 196f, 570f, 395f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1214f, -1827f, -1034f, 104f)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(func_3(Struct_5(u_input.b.x, vec4<i32>(-1i, var_0.x, 0i, var_0.x))).x, true, all(vec2<bool>(false, false))))), func_5(vec2<i32>(select(6465i, u_input.c.x, true), u_input.b.x), Struct_4(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-532f, -886f, 1430f, -171f) * vec4<f32>(2108f, -627f, 1001f, 422f)), vec4<f32>(-1970f, -943f, 117f, -2158f)).a), select(vec3<bool>(true, true, true), vec3<bool>(true, u_input.a.x == 65113u, true), vec3<bool>(true, true, true))), (((u_input.a.x & u_input.a.x) & 1u) << (u_input.a.x % 32u)) >> (1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(select((u_input.b.zy & vec2<i32>(u_input.b.x, var_0.x)) | _wgslsmith_add_vec2_i32(var_0.wx, firstLeadingBit(vec2<i32>(2147483647i, u_input.c.x))), vec2<i32>(~(-u_input.b.x), abs(-35125i)), func_3(Struct_5(firstTrailingBit(-5332i), _wgslsmith_mod_vec4_i32(var_0, var_0))).x), firstTrailingBit(min(8620i | -u_input.c.x, min(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(33484i, u_input.b.x, var_0.x), vec3<i32>(-8629i, 7254i, -1i))))));
}

