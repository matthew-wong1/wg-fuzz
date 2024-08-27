struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
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

var<private> global0: u32 = 55578u;

var<private> global1: i32;

var<private> global2: array<vec2<i32>, 13>;

var<private> global3: vec4<u32> = vec4<u32>(38281u, 0u, 0u, 0u);

var<private> global4: f32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = Struct_3(-2147483647i, arg_1.x, 26156i, _wgslsmith_div_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global3.x, 4294967295u, 16945u), vec4<u32>(4294967295u, 36797u, 0u, 0u)), global3.x), global3.yx));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1394f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1138f) - _wgslsmith_f_op_f32(f32(-1f) * -1805f)), _wgslsmith_f_op_f32(sign(-1020f)), true)), 1223f, 324f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1601f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1080f)), -1129f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-831f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(673f, 442f, -318f, 112f) * vec4<f32>(-628f, 1167f, 934f, 779f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1468f, -535f, 837f, 100f), vec4<f32>(1213f, 619f, -591f, -868f)))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(-var_1.x)))), -1375f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(139f, -1142f), _wgslsmith_f_op_f32(abs(-1954f)))))));
    var var_3 = true;
    global1 = ~(~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(21380i, 2147483647i, arg_1.x, 1i), vec4<i32>(var_0.a, var_0.a, 0i, arg_1.x), false), vec4<i32>(0i, 0i, arg_1.x, 24182i) & vec4<i32>(u_input.c, 2147483647i, arg_2.a, arg_3.a)), 2147483647i));
    return !any(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3) -> u32 {
    global1 = _wgslsmith_clamp_i32(~u_input.a, u_input.c, u_input.a) | (arg_1.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(45739u, u_input.b.x | arg_0.x, global3.x), global3.zxw) % 32u));
    var var_0 = select(select(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)))), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(all(vec2<bool>(true, true)), func_3(Struct_1(15183i), vec3<i32>(2147483647i, -55434i, ~2147483647i), Struct_1(23519i), Struct_1(i32(-1i) * -23731i)), false));
    let var_1 = Struct_2(~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(arg_0.x, u_input.b.x), 23285u), ~vec2<u32>(arg_0.x, u_input.b.x)), Struct_1(u_input.a));
    global3 = ~abs(select(arg_0, arg_0, select(select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true)), !vec4<bool>(true, false, var_0.x, var_0.x), !var_0.x)));
    var var_2 = -675f;
    return _wgslsmith_sub_u32(~arg_0.x, u_input.b.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    let var_0 = vec4<f32>(1189f, _wgslsmith_div_f32(-999f, 676f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global4 = -784f;
    let var_1 = var_0.wwx;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1614f)));
    var var_3 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(478f))), -1000f);
    return u_input.a;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    let var_0 = arg_1;
    global1 = -_wgslsmith_sub_i32(arg_3.a, -func_4(vec3<i32>(2147483647i, arg_3.a, 2147483647i), func_2(vec4<u32>(71721u, arg_0, arg_2.d.x, arg_0), Struct_3(arg_3.a, 39678i, 22805i, arg_2.d))));
    global3 = countOneBits(_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.b.x, 1u, arg_0, 6051u) | vec4<u32>(90096u, u_input.b.x, 0u, arg_0)), ~(~firstTrailingBit(vec4<u32>(arg_0, 45472u, arg_0, arg_0)))));
    var var_1 = func_3(arg_3, _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, 31277i, arg_3.a), ~vec3<i32>(1i, -33207i, arg_3.a)) ^ ~(-vec3<i32>(86663i, -59017i, 33118i)), abs(select(~vec3<i32>(-1i, u_input.c, u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(24184i, -1i, -22849i), vec3<i32>(arg_3.a, arg_3.a, 1i)), vec3<bool>(true, false, true)))), arg_3, Struct_1(_wgslsmith_add_i32(arg_2.c, arg_3.a)));
    global3 = vec4<u32>(_wgslsmith_sub_u32(global3.x, ~arg_0), global3.x, 4294967295u, u_input.b.x);
    return ~1i;
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: i32, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(floor(776f));
    var var_1 = Struct_1(~reverseBits(2147483647i));
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(countOneBits(0u), ~81946u), abs(global3.x)), ~_wgslsmith_dot_vec3_u32(~u_input.b, global3.zxw & global3.www)) << (4294967295u % 32u);
    global4 = -989f;
    global0 = 25275u;
    return Struct_2(_wgslsmith_div_vec2_u32(select(select(global3.ww >> (vec2<u32>(4294967295u, 12946u) % vec2<u32>(32u)), ~u_input.b.yx, all(vec3<bool>(true, true, true))), ~(~vec2<u32>(global3.x, 67431u)), !func_3(Struct_1(arg_2), vec3<i32>(0i, 0i, 0i), Struct_1(u_input.d), Struct_1(1i))), vec2<u32>(0u, var_2)), Struct_1(_wgslsmith_mult_i32(arg_1.a, u_input.a ^ arg_2)));
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = ~0u;
    let var_1 = arg_2;
    var var_2 = min(~vec2<i32>(u_input.c, -u_input.a), vec2<i32>(u_input.c ^ (min(-1i, arg_2.a) >> (abs(26758u) % 32u)), 1i));
    var_0 = 4294967295u;
    global3 = vec4<u32>(~reverseBits(global3.x), 12126u, 57043u, 4294967295u >> (~(arg_0 & reverseBits(20640u)) % 32u));
    return func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2498f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-425f)) * _wgslsmith_f_op_f32(select(1677f, -765f, arg_3.x))))), Struct_3(~(-21197i), countOneBits(arg_2.a), var_2.x, ~func_5(-953f, Struct_3(-40992i, 0i, var_2.x, u_input.b.zx), 65624i, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(795f, 1000f, 1062f, 1648f), vec4<f32>(-718f, -2937f, 1000f, 689f)))).a), ~(min(var_1.a, arg_2.a) << (0u % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-106f)), _wgslsmith_f_op_f32(min(367f, -173f)), -316f, -360f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6((4294967295u & u_input.b.x) >> (min(~firstLeadingBit(0u), ~_wgslsmith_div_u32(4294967295u, global3.x)) % 32u), func_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1000f)))), Struct_3(countOneBits(2147483647i), -39233i, u_input.a, vec2<u32>(global3.x, 1u)), u_input.d & (2147483647i | func_1(u_input.b.x, -174f, Struct_3(u_input.c, u_input.c, u_input.c, vec2<u32>(u_input.b.x, u_input.b.x)), Struct_1(-3269i))), vec4<f32>(-563f, 798f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1492f)) * -1077f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1162f)) - 1f))), Struct_1(-1i), select(!vec3<bool>(any(vec4<bool>(false, true, false, false)), true, true), vec3<bool>(true, false, u_input.d < _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, -58189i), vec4<i32>(33721i, u_input.d, u_input.a, u_input.c))), vec3<bool>(true || any(vec2<bool>(false, false)), select(true, true, true), false)));
    var_0 = func_6(abs(1u), func_6(_wgslsmith_div_u32(~(~72930u), ~41451u), Struct_2(~vec2<u32>(1u, 0u), var_0.b), var_0.b, !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_1(firstTrailingBit(_wgslsmith_sub_i32(func_6(4294967295u, Struct_2(global3.zw, var_0.b), Struct_1(u_input.c), vec3<bool>(false, false, true)).b.a, func_4(vec3<i32>(0i, -1i, u_input.a), 0u)))), select(vec3<bool>(_wgslsmith_f_op_f32(sign(579f)) == _wgslsmith_f_op_f32(-1336f * -1762f), false, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false))), select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), vec3<bool>(true, false, all(vec4<bool>(false, false, true, false))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), vec3<bool>(false, false, false), true)), vec3<bool>(false, select(false, false, false) & false, all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)))));
    global2 = array<vec2<i32>, 13>();
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -247f)))))));
    global3 = vec4<u32>(0u, global3.x, var_0.a.x, _wgslsmith_mult_u32(~func_5(var_2, Struct_3(u_input.d, 20059i, u_input.a, var_0.a), _wgslsmith_div_i32(var_0.b.a, var_0.b.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2, var_2, -289f, -1369f)))).a.x, global3.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.a);
}

