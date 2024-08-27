struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(2147483647i, 0i, 26789i), i32(-2147483648), 27971u, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global0 = -1i;
    global0 = -(global1.a.x << (59792u % 32u));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_0.x)), 226f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -427f)))));
    let var_1 = vec3<u32>(u_input.d, reverseBits(abs(abs(arg_2.c) ^ ~1u)), reverseBits(4294967295u));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(floor(-1254f)), -6714i != arg_1.a.x)), arg_0.x, _wgslsmith_f_op_f32(ceil(arg_0.x))) * arg_0.wzw) + vec3<f32>(arg_0.x, -246f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -835f)));
    return _wgslsmith_sub_i32(abs(arg_1.a.x), max(0i, firstLeadingBit(-global1.b))) >> (10310u % 32u);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    global1 = arg_0;
    global1 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.a.x | 2147483647i, u_input.c.x | u_input.e.x) & _wgslsmith_mult_vec3_i32(u_input.c | global1.a, _wgslsmith_sub_vec3_i32(vec3<i32>(63272i, -2147483647i, 1i), arg_0.a)), vec3<i32>(func_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1424f, 384f, -528f, 1234f))), Struct_1(vec3<i32>(global1.b, 35011i, var_0.b), global1.a.x, var_0.c, false), var_0), 0i, 25049i), ~min(vec3<i32>(1i, arg_0.a.x, -30004i), abs(vec3<i32>(33855i, 15504i, global1.a.x)))), _wgslsmith_add_i32(~(1i | (arg_0.a.x & u_input.c.x)), _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(global1.a.x, -17021i), reverseBits(67227i)), -(~2147483647i))), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.d, 4294967295u, global1.c), vec3<u32>(global1.c, 11600u, var_0.c), vec3<bool>(var_0.d, true, global1.d)), ~vec3<u32>(4294967295u, 22870u, 0u)) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(22850u, u_input.d, 25391u), vec3<u32>(global1.c, global1.c, global1.c)), vec3<u32>(arg_0.c, 4294967295u, u_input.d) >> (vec3<u32>(4294967295u, 25256u, 30298u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~vec3<u32>(1u, global1.c, min(1u, 1u))), all(!vec2<bool>(true | arg_0.d, !arg_0.d)));
    let var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_mult_vec3_i32(abs(-select(u_input.c, vec3<i32>(global1.b, var_1.a.x, 2147483647i), var_0.d)), vec3<i32>(-u_input.c.x, 566i, u_input.c.x)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(~global1.b, -19471i), -1i), arg_0.c, select(all(!(!vec2<bool>(global1.d, true))), false, global1.d));
    return Struct_1(vec3<i32>(global1.b, -(abs(arg_0.b) << (var_0.c % 32u)), var_1.b), 26933i, 4294967295u, arg_0.d);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(countOneBits(~_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(global1.a, global1.a), vec3<i32>(global1.a.x, -39717i, global1.a.x))), 1i, _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_2, ~57120u), arg_2), 1u), any(vec2<bool>(true, true)));
    global1 = Struct_1(_wgslsmith_mult_vec3_i32(-(~vec3<i32>(0i, global1.b, -2147483647i)), -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.a.x, var_0.a.x, 0i), global1.a, vec3<i32>(1i, -27845i, -2147483647i)))), u_input.e.x, arg_2 | min(var_0.c & _wgslsmith_mult_u32(arg_2, 1u), ~0u), -global1.a.x != max(max(11224i, global1.b) ^ (var_0.a.x & var_0.b), 19966i));
    let var_1 = func_2(Struct_1(var_0.a, u_input.b.x, _wgslsmith_mult_u32(max(~0u, 79875u), firstTrailingBit(u_input.d >> (arg_1 % 32u))), (~var_0.b >> (3398u % 32u)) < var_0.a.x));
    global1 = Struct_1(firstTrailingBit(var_1.a), -11140i, 4294967295u, !var_1.d);
    var var_2 = select(vec2<bool>(!all(vec4<bool>(true, false, true, var_0.d)), true), select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, arg_0), vec2<bool>(var_1.d, global1.d), global1.d), vec2<bool>(true, false), vec2<bool>(true, global1.d)), !select(vec2<bool>(arg_0, false), vec2<bool>(var_1.d, false), global1.d)), vec2<bool>(true, true), any(!(!vec3<bool>(var_1.d, true, var_1.d)))), !(!vec2<bool>(all(vec2<bool>(true, arg_0)), global1.d && false)));
    return func_2(func_2(Struct_1(vec3<i32>(func_2(Struct_1(vec3<i32>(11367i, 1i, 2147483647i), -42507i, 0u, var_2.x)).b, i32(-1i) * -2147483647i, global1.a.x), var_0.a.x, ~firstTrailingBit(var_0.c), false)));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(131f, _wgslsmith_f_op_f32(-819f - _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-997f, 528f, -748f, 1184f)))), select(!(!vec4<bool>(false, true, true, arg_2.d)), vec4<bool>(true, !arg_2.d, arg_2.a.x != arg_2.a.x, func_1(true, 43116u, u_input.d).d), false))) + vec4<f32>(-686f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(246f)), _wgslsmith_f_op_f32(select(792f, -1011f, true))) + 147f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(-1000f, 1157f))))), -1657f));
    var var_1 = vec4<bool>(false, all(vec3<bool>(all(select(vec4<bool>(false, global1.d, true, arg_2.d), vec4<bool>(global1.d, false, true, global1.d), vec4<bool>(global1.d, false, global1.d, true))), false, ~0u <= u_input.d)), true, true);
    var var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yw + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xx), var_0.zz))), vec2<f32>(1322f, _wgslsmith_f_op_f32(select(738f, var_0.x, arg_2.d != select(false, true, false)))), false));
    var_1 = select(!(!vec4<bool>(true, global1.d, all(vec3<bool>(true, var_1.x, global1.d)), true)), vec4<bool>(func_2(arg_2).d, true, arg_2.d, var_2.d), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-601f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -509f))));
    return !(!var_1.yy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.b;
    let var_1 = any(select(func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.d, global1.c, u_input.d), vec4<u32>(global1.c, u_input.d, u_input.d, global1.c) << (vec4<u32>(global1.c, u_input.d, 7171u, 40974u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.c, 0u, 35010u, 63805u), vec4<u32>(65860u, u_input.d, global1.c, 40790u))), ~(~var_0.x), func_1(global1.d, 1u, _wgslsmith_div_u32(40905u, global1.c))), func_4(~vec4<u32>(u_input.d, u_input.d, global1.c, u_input.d), global1.b << (u_input.d % 32u), func_2(Struct_1(vec3<i32>(-1i, -1987i, global1.b), -2147483647i, global1.c, global1.d))), vec2<bool>(global1.d, (global1.c >= 0u) || global1.d)));
    let var_2 = func_2(Struct_1(select(-var_0.yyx, var_0.wyz, vec3<bool>(true, true, true)), -2147483647i, _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.c, 14360u), vec2<u32>(global1.c, 74905u), vec2<u32>(global1.c, 1u)), vec2<u32>(reverseBits(global1.c), ~global1.c)), global1.d));
    let var_3 = min(reverseBits(vec4<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, u_input.d, global1.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, u_input.d), vec3<u32>(41983u, 1u, 1u))), _wgslsmith_div_u32(667u, global1.c) >> (var_2.c % 32u), ~20981u, 1u)), countOneBits(select(~(~vec4<u32>(0u, 1364u, var_2.c, u_input.d)), select(reverseBits(vec4<u32>(var_2.c, 4294967295u, global1.c, 9148u)), select(vec4<u32>(1411u, 4294967295u, u_input.d, u_input.d), vec4<u32>(0u, 4294967295u, 10632u, global1.c), var_2.d), true), func_1(func_2(var_2).d, ~10442u, firstTrailingBit(var_2.c)).d)));
    var_0 = _wgslsmith_mod_vec4_i32(u_input.b, _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(5059i, -18308i, global1.a.x, var_2.a.x), vec4<i32>(-2147483647i, -23210i, -40446i, -7113i)), -(vec4<i32>(var_2.a.x, global1.a.x, -58207i, var_2.a.x) >> (vec4<u32>(16462u, var_3.x, u_input.d, global1.c) % vec4<u32>(32u)))), -(~(-vec4<i32>(-2147483647i, -1i, var_0.x, var_0.x)))));
    global0 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(1i, var_2.c, _wgslsmith_sub_vec3_i32(abs(vec3<i32>(var_2.b, u_input.c.x, 0i)), var_2.a), max(-27371i, _wgslsmith_clamp_i32(var_0.x, -17537i, _wgslsmith_div_i32(firstLeadingBit(5271i), -10837i))));
}

