struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec4<i32>, 7>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = -global0.xxz & max(vec3<i32>(1i, -2147483647i, firstLeadingBit(-5102i)), u_input.e.xzy);
    global0 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, global0.x, var_0.x, 4306i) ^ ~vec4<i32>(0i, var_0.x, global0.x, u_input.e.x), vec4<i32>(global0.x, -4714i, -1i, 22755i) & vec4<i32>(global0.x, 0i, u_input.c.x, u_input.c.x)) ^ global1[_wgslsmith_index_u32(~u_input.b, 7u)], -_wgslsmith_div_vec4_i32(u_input.e, vec4<i32>(-u_input.e.x, ~1i, u_input.c.x, abs(var_0.x))));
    let var_1 = _wgslsmith_mod_u32(~u_input.d >> (0u % 32u), u_input.d);
    var var_2 = ~vec3<u32>(4294967295u, 4294967295u, ~((u_input.d << (var_1 % 32u)) & ~var_1));
    let var_3 = u_input.a;
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = u_input.a.zz;
    return select(arg_1.yy, select(arg_0.b.zz, !select(select(arg_0.b.yy, arg_1.zx, arg_1.x), select(vec2<bool>(arg_0.b.x, true), vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(false, true)), true), true), all(!select(!vec3<bool>(arg_0.a, arg_1.x, arg_1.x), !arg_0.b, vec3<bool>(false, false, arg_1.x))));
}

fn func_2(arg_0: u32) -> vec4<i32> {
    let var_0 = func_4(Struct_1(!any(vec2<bool>(true, true)), vec3<bool>(-2147483647i <= abs(u_input.c.x), true, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-137f, -851f, -582f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-557f, 392f, 1389f), vec3<f32>(387f, 1376f, 1343f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(277f, -243f, -441f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(700f, -1503f, -853f), vec3<f32>(-513f, 544f, -940f)))))), vec3<bool>(true, func_3(), true), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-304f)), 2041f)))));
    var var_1 = Struct_2(vec4<bool>(true, var_0.x, var_0.x, true), Struct_1(var_0.x, select(select(!vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, var_0.x), u_input.d == 0u), vec3<bool>(var_0.x, true, true), all(select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false), true))), vec3<f32>(850f, _wgslsmith_f_op_f32(-1258f - _wgslsmith_f_op_f32(-1539f + -1430f)), _wgslsmith_f_op_f32(f32(-1f) * -770f)), vec3<f32>(1644f, _wgslsmith_f_op_f32(max(-1135f, _wgslsmith_f_op_f32(-1424f * 1523f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1233f))))), !(!vec4<bool>(all(vec3<bool>(false, var_0.x, true)), false, true, true)), Struct_1(true, select(vec3<bool>(var_0.x, !var_0.x, var_0.x), !vec3<bool>(false, true, var_0.x), vec3<bool>(113873u <= u_input.d, var_0.x, func_3())), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -482f), -377f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1000f, 887f)), _wgslsmith_f_op_f32(abs(-878f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(301f * -672f))), vec3<f32>(-157f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(488f + -980f)), _wgslsmith_f_op_f32(-460f - _wgslsmith_f_op_f32(f32(-1f) * -804f)))));
    let var_2 = var_1.b;
    var var_3 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(1i, -30642i), global0.x), _wgslsmith_add_i32(-2147483647i, -global0.x), 1i);
    let var_4 = select(_wgslsmith_sub_vec3_i32(abs(global0.zzx ^ vec3<i32>(-2147483647i, 21974i, 1i)), u_input.e.xwy), vec3<i32>(_wgslsmith_mod_i32(~(-7150i), 12480i), _wgslsmith_mult_i32(-19111i, -24923i), var_3.x & ~(-1i)), var_1.c.yyy) ^ vec3<i32>(~u_input.e.x, ~_wgslsmith_sub_i32(max(global0.x, u_input.e.x), abs(global0.x)), i32(-1i) * -2147483647i);
    return -(~vec4<i32>(global0.x, _wgslsmith_mod_i32(-2147483647i, u_input.c.x), 44293i, ~global0.x)) & u_input.e;
}

fn func_1() -> Struct_2 {
    let var_0 = -abs(~(global0.x >> (u_input.b % 32u))) != -1i;
    global0 = func_2(7291u);
    var var_1 = Struct_1(var_0, vec3<bool>(var_0, (1u << (firstLeadingBit(u_input.b) % 32u)) < reverseBits(7485u), var_0 | func_4(Struct_1(var_0, vec3<bool>(var_0, true, false), vec3<f32>(1486f, -435f, -1309f), vec3<f32>(-232f, -1783f, -766f)), select(vec3<bool>(var_0, false, true), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(179f, 3523f) * vec2<f32>(2185f, -314f))).x), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(150f, -1081f)) * _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1327f * 2080f)))), _wgslsmith_f_op_f32(max(1f, 577f)), 787f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -447f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(539f)) - _wgslsmith_f_op_f32(min(-277f, 382f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-835f, 948f, false)))))), _wgslsmith_f_op_f32(1076f + -1511f)));
    var var_2 = -2147483647i ^ max(-u_input.e.x, _wgslsmith_mod_i32(u_input.e.x, -2147483647i));
    let var_3 = _wgslsmith_div_u32(abs(~_wgslsmith_sub_u32(51508u, u_input.a.x) ^ 1u), 47599u);
    return Struct_2(select(select(vec4<bool>(!var_1.b.x, true, true, false), !select(vec4<bool>(var_1.b.x, false, var_0, var_0), vec4<bool>(false, var_0, false, var_0), vec4<bool>(true, false, var_0, true)), select(!vec4<bool>(var_1.a, false, var_0, var_1.a), select(vec4<bool>(true, true, var_0, true), vec4<bool>(true, var_1.b.x, true, true), var_0), !vec4<bool>(true, var_0, true, var_0))), !(!vec4<bool>(false, var_1.a, var_1.a, false)), true), Struct_1(!all(!var_1.b.yy), !(!(!var_1.b)), _wgslsmith_f_op_vec3_f32(var_1.c + var_1.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-463f, 155f, -586f), var_1.d)), var_1.d) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -555f), var_1.d.x, var_1.c.x))), !(!select(select(vec4<bool>(var_1.a, true, false, true), vec4<bool>(false, var_1.a, true, var_0), true), vec4<bool>(true, true, true, true), !var_1.b.x)), Struct_1(all(select(select(vec4<bool>(false, var_0, var_1.a, false), vec4<bool>(true, var_0, false, true), vec4<bool>(true, var_0, true, var_1.a)), !vec4<bool>(var_0, false, false, var_0), vec4<bool>(var_0, var_1.a, false, true))), var_1.b, _wgslsmith_f_op_vec3_f32(var_1.d + var_1.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(select(1441f, 302f, true))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, 648f, var_1.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -636f;
    global0 = -(vec4<i32>(2147483647i, -global0.x, -1i, global0.x) & _wgslsmith_add_vec4_i32(firstLeadingBit(u_input.e & u_input.e), firstTrailingBit(~vec4<i32>(global0.x, global0.x, -2147483647i, 0i))));
    let var_1 = func_1();
    let var_2 = select(~u_input.a.xx, u_input.a.zz, func_1().a.yw);
    var var_3 = func_1().b;
    var var_4 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, -2147483647i), u_input.c.x, -(i32(-1i) * -2147483647i));
    var_0 = -152f;
    var var_5 = abs(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, reverseBits(u_input.d)), abs(var_2.x | 23444u)), abs(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-711f, -516f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-628f, _wgslsmith_f_op_f32(var_1.b.c.x + 992f), _wgslsmith_f_op_f32(min(117f, var_1.d.c.x)), _wgslsmith_f_op_f32(abs(1771f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d.x, var_1.d.d.x, -1000f, 641f) - vec4<f32>(1888f, 604f, -447f, var_3.c.x))))));
}

