struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<i32, 30>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3) -> bool {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(~arg_2.a, arg_2.a), arg_1, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a, 0u, 45690u), arg_2.a.x, min(4294967295u, abs(0u)) & ~_wgslsmith_dot_vec3_u32(arg_2.a, vec3<u32>(21760u, 38754u, arg_2.a.x))), select(4294967295u, ~u_input.a, all(vec3<bool>(all(vec2<bool>(false, false)), global0.x, global0.x))));
    var var_1 = _wgslsmith_f_op_f32(1427f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.d.x + arg_0.d.x), _wgslsmith_f_op_f32(-arg_0.d.x)))))));
    var_1 = arg_0.d.x;
    let var_2 = vec4<bool>(global0.x, arg_2.b, true, !(!(72901i != -arg_0.a.x)));
    var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(max(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, 35080u, arg_1), vec4<u32>(arg_2.a.x, 21102u, arg_1, arg_2.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, arg_1, var_0.x), vec4<u32>(108995u, 4294967295u, 4294967295u, 21282u))), vec4<u32>(var_0.x, abs(33343u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 31871u), vec2<u32>(4294967295u, 35369u)), ~4294967295u)), vec4<u32>(23955u, _wgslsmith_sub_u32(7715u, ~arg_2.a.x), ~(0u | arg_2.a.x), _wgslsmith_add_u32(~4294967295u, arg_1 << (4294967295u % 32u))), ~vec4<u32>(u_input.a, ~u_input.a, 4294967295u, _wgslsmith_mult_u32(5237u, 57674u))) >> ((vec4<u32>(~reverseBits(arg_1), 0u, ~(~arg_2.a.x), u_input.a) << (firstLeadingBit(reverseBits(vec4<u32>(58774u, 0u, 113547u, arg_1))) % vec4<u32>(32u))) % vec4<u32>(32u));
    return global0.x;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: bool) -> Struct_2 {
    let var_0 = any(!(!select(!vec2<bool>(true, global0.x), !vec2<bool>(false, global0.x), vec2<bool>(true, arg_2))));
    let var_1 = -1019f;
    global0 = select(select(select(!select(vec2<bool>(global0.x, false), vec2<bool>(false, false), vec2<bool>(arg_2, false)), select(vec2<bool>(arg_2, false), vec2<bool>(true, false), vec2<bool>(var_0, global0.x)), global0.x || !arg_2), select(select(vec2<bool>(false, arg_2), vec2<bool>(false, false), false), select(!vec2<bool>(var_0, false), !vec2<bool>(false, arg_2), var_0), !vec2<bool>(global0.x, true)), !select(select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, true), vec2<bool>(global0.x, arg_2)), !vec2<bool>(arg_2, false), all(vec4<bool>(true, arg_2, global0.x, false)))), select(vec2<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(global0.x, var_0, global0.x), var_0)), func_3(Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(2980u, 30u)], global1[_wgslsmith_index_u32(31350u, 30u)], -1i, -2147483647i), vec3<i32>(46695i, global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(1254u, 30u)]), vec2<i32>(global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<f32>(var_1, 592f, var_1, var_1)), 0u, Struct_3(vec3<u32>(44878u, arg_0, 1u), false)) & global0.x), vec2<bool>(false, arg_0 != (16639u | u_input.a)), true), !vec2<bool>(!global0.x, global0.x));
    global1 = array<i32, 30>();
    var var_2 = Struct_1(vec4<i32>(i32(-1i) * -abs(1i), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(33696u, ~83518u & arg_1, u_input.a), 30u)], i32(-1i) * -abs(26518i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, i32(-1i) * -1i, firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 30u)])), (vec3<i32>(global1[_wgslsmith_index_u32(arg_0, 30u)], 9359i, 0i) << (vec3<u32>(u_input.a, u_input.a, arg_0) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, 2312u, arg_0), vec3<u32>(0u, arg_1, arg_0)) % vec3<u32>(32u)))), -(~(vec3<i32>(-1i) * -vec3<i32>(1i, 1i, -8491i))), vec2<i32>(-_wgslsmith_div_i32(select(global1[_wgslsmith_index_u32(36765u, 30u)], 0i, true), reverseBits(-19803i)), _wgslsmith_sub_i32(abs(global1[_wgslsmith_index_u32(0u, 30u)]) << (1u % 32u), i32(-1i) * -1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-767f, -1174f, var_1, var_1))))) + vec4<f32>(var_1, var_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 * 364f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -509f) * -1393f))));
    return Struct_2(Struct_1(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(12925i, -1i, -1i, global1[_wgslsmith_index_u32(arg_1, 30u)]), var_2.a), reverseBits(var_2.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_2.b.x, var_2.a.x), -vec2<i32>(var_2.c.x, var_2.b.x) << (firstTrailingBit(vec2<u32>(0u, 1u)) % vec2<u32>(32u)), var_2.a.xw), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-563f, 673f, -1097f, var_1) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, var_2.d.x, 168f, -1465f))) * var_2.d)), Struct_1(var_2.a >> (~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<u32>(37082u, u_input.a, 33791u, 7649u)) % vec4<u32>(32u)), var_2.b, min(abs(-var_2.b.xx), vec2<i32>(var_2.b.x, -35535i) & var_2.b.yx), var_2.d), Struct_1(vec4<i32>(-1261i, 1i | -global1[_wgslsmith_index_u32(4294967295u, 30u)], -1i, var_2.a.x), -(~(-vec3<i32>(var_2.a.x, 1i, 0i))), reverseBits(vec2<i32>(global1[_wgslsmith_index_u32(2003u, 30u)], var_2.b.x)) >> ((max(vec2<u32>(arg_0, 4294967295u), vec2<u32>(arg_1, arg_0)) >> (~vec2<u32>(u_input.a, 18961u) % vec2<u32>(32u))) % vec2<u32>(32u)), var_2.d));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = func_2(~_wgslsmith_mod_u32(min(arg_2.x, arg_2.x), 1u), 4294967295u | u_input.a, global0.x);
    let var_2 = all(vec4<bool>(global0.x, true, select(arg_0 | true, true, arg_0), true));
    var_1 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.c.x, 2147483647i, arg_3.b.x, arg_3.c.x), func_2(4294967295u, 17708u, global0.x).c.a, ~arg_1.a) ^ -(arg_3.a >> (vec4<u32>(25734u, 84148u, 1u, arg_2.x) % vec4<u32>(32u))), firstLeadingBit(arg_1.b), arg_1.b.zz ^ vec2<i32>(2147483647i, abs(arg_1.a.x)), _wgslsmith_f_op_vec4_f32(step(arg_3.d, vec4<f32>(_wgslsmith_f_op_f32(min(1150f, var_1.b.d.x)), -838f, -218f, var_1.c.d.x)))), Struct_1(vec4<i32>(-select(arg_3.a.x, arg_3.c.x, var_2), var_1.b.b.x, _wgslsmith_mod_i32(arg_1.b.x >> (u_input.a % 32u), 1i), -1i), -select(vec3<i32>(arg_3.b.x, arg_3.b.x, var_1.b.c.x), var_1.c.b, any(vec2<bool>(true, false))), _wgslsmith_add_vec2_i32(~vec2<i32>(-49021i, arg_1.b.x), var_1.b.c) & arg_3.a.wy, var_1.c.d), Struct_1(_wgslsmith_mod_vec4_i32(~arg_3.a, vec4<i32>(var_1.a.c.x, -1i, 35959i, global1[_wgslsmith_index_u32(4294967295u, 30u)]) | arg_1.a), ~firstLeadingBit(_wgslsmith_div_vec3_i32(arg_3.b, vec3<i32>(arg_3.b.x, -35048i, var_1.a.c.x))), firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], 18756i)), arg_3.d));
    let var_3 = abs(~39798i & var_1.b.a.x);
    return func_2(33177u, u_input.a, true).a;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    let var_0 = -52830i;
    var var_1 = arg_2.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_f32(f32(-1f) * -538f), _wgslsmith_f_op_f32(941f + -1457f)), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.d.x), 987f, _wgslsmith_f_op_f32(-arg_1.b.d.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-598f, arg_2.d.x)), _wgslsmith_div_f32(arg_2.d.x, arg_1.a.d.x)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_2.d.xzz * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1462f, -1451f, -227f)))))));
    let var_3 = arg_1;
    global1 = array<i32, 30>();
    return _wgslsmith_add_i32(var_0, func_1(true, arg_2, vec3<u32>(abs(arg_0), 44315u, _wgslsmith_div_u32(4412u, 1u) >> (~u_input.a % 32u)), Struct_1(vec4<i32>(-1i, -14320i, global1[_wgslsmith_index_u32(arg_0, 30u)], var_3.c.b.x) >> (abs(vec4<u32>(1u, arg_0, 0u, arg_0)) % vec4<u32>(32u)), arg_1.c.a.wzy, var_3.c.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.d.x, arg_1.a.d.x, arg_2.d.x, arg_1.c.d.x) * vec4<f32>(arg_1.b.d.x, 633f, arg_1.a.d.x, var_3.b.d.x)))).a.x);
}

fn func_5(arg_0: i32, arg_1: Struct_4) -> vec3<bool> {
    let var_0 = Struct_1(func_1(any(arg_1.b), func_1(true, Struct_1(~arg_1.c.a, vec3<i32>(-1i, 2147483647i, -22514i), -arg_1.d, _wgslsmith_f_op_vec4_f32(arg_1.c.d - arg_1.c.d)), ~countOneBits(vec3<u32>(u_input.a, 57527u, u_input.a)), arg_1.c), reverseBits(reverseBits(vec3<u32>(u_input.a, 0u, u_input.a))), arg_1.c).a, vec3<i32>((-global1[_wgslsmith_index_u32(4294967295u, 30u)] << (arg_1.a.x % 32u)) | _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 0i), arg_1.c.a.xxx), arg_0), -(~global1[_wgslsmith_index_u32(u_input.a, 30u)]), func_4(~arg_1.a.x, Struct_2(func_1(true, Struct_1(vec4<i32>(1i, 3053i, -19163i, global1[_wgslsmith_index_u32(99823u, 30u)]), arg_1.c.b, arg_1.c.c, arg_1.c.d), vec3<u32>(2958u, u_input.a, u_input.a), arg_1.c), func_1(arg_1.b.x, arg_1.c, vec3<u32>(1u, 1u, 93616u), arg_1.c), arg_1.c), func_1(u_input.a != 57658u, func_1(false, Struct_1(vec4<i32>(arg_1.d.x, -1i, 0i, global1[_wgslsmith_index_u32(arg_1.a.x, 30u)]), vec3<i32>(arg_0, 0i, global1[_wgslsmith_index_u32(11403u, 30u)]), arg_1.d, arg_1.c.d), vec3<u32>(u_input.a, arg_1.a.x, u_input.a), arg_1.c), vec3<u32>(94484u, u_input.a, 27436u) | vec3<u32>(u_input.a, arg_1.a.x, u_input.a), arg_1.c))), arg_1.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.c.d), _wgslsmith_div_vec4_f32(vec4<f32>(-1610f, arg_1.c.d.x, arg_1.c.d.x, 1076f), vec4<f32>(arg_1.c.d.x, arg_1.c.d.x, arg_1.c.d.x, 546f))))));
    let var_1 = arg_1.c.d.wz;
    let var_2 = -1839f;
    var var_3 = var_0;
    return arg_1.b.zww;
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_4) -> Struct_2 {
    let var_0 = ~vec2<u32>(u_input.a, ~arg_1.a.x);
    global0 = !select(vec2<bool>(true, true), func_5(_wgslsmith_sub_i32(-2147483647i, -2147483647i), Struct_4(~var_0, arg_1.b, Struct_1(vec4<i32>(arg_1.d.x, -2147483647i, global1[_wgslsmith_index_u32(22508u, 30u)], 40251i), vec3<i32>(1i, arg_1.c.c.x, global1[_wgslsmith_index_u32(52483u, 30u)]), arg_1.c.c, vec4<f32>(-592f, arg_1.c.d.x, 308f, -1451f)), func_2(var_0.x, 4294967295u, global0.x).b.b.zz)).yz, true);
    var var_1 = func_4(37199u, func_2(_wgslsmith_sub_u32(arg_1.a.x, abs(u_input.a)), arg_1.a.x, arg_0.x), Struct_1(firstTrailingBit(arg_1.c.a ^ vec4<i32>(global1[_wgslsmith_index_u32(var_0.x, 30u)], arg_1.d.x, 5111i, global1[_wgslsmith_index_u32(17232u, 30u)])), vec3<i32>(-global1[_wgslsmith_index_u32(arg_1.a.x, 30u)], arg_1.d.x, -arg_1.c.a.x), vec2<i32>(-1i) * -vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.d.x, 1000f, arg_1.c.d.x, 1704f))))) >= 244i;
    let var_2 = Struct_2(arg_1.c, Struct_1(_wgslsmith_clamp_vec4_i32(~arg_1.c.a, -arg_1.c.a, vec4<i32>(reverseBits(global1[_wgslsmith_index_u32(u_input.a, 30u)]), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(88510u, 30u)], arg_1.d.x), -global1[_wgslsmith_index_u32(u_input.a, 30u)], ~global1[_wgslsmith_index_u32(u_input.a, 30u)])), vec3<i32>(func_4(reverseBits(0u), Struct_2(Struct_1(vec4<i32>(-2147483647i, arg_1.d.x, global1[_wgslsmith_index_u32(var_0.x, 30u)], -31090i), vec3<i32>(-6985i, -53145i, arg_1.d.x), arg_1.c.b.xy, vec4<f32>(-1117f, 673f, 780f, arg_1.c.d.x)), arg_1.c, arg_1.c), Struct_1(arg_1.c.a, vec3<i32>(12209i, 20642i, 2147483647i), vec2<i32>(7372i, -1i), vec4<f32>(-325f, arg_1.c.d.x, arg_1.c.d.x, arg_1.c.d.x))), global1[_wgslsmith_index_u32(var_0.x, 30u)], arg_1.d.x), arg_1.d, vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.d.x), arg_1.c.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.d.x - arg_1.c.d.x)), arg_1.c.d.x)), arg_1.c);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -380f);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(!func_5(func_4(~u_input.a, Struct_2(Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], -18307i, global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(1u, 30u)]), vec3<i32>(43572i, global1[_wgslsmith_index_u32(u_input.a, 30u)], 1i), vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a, 30u)]), vec4<f32>(-1139f, -503f, -146f, -237f)), Struct_1(vec4<i32>(1052i, -21438i, 67943i, global1[_wgslsmith_index_u32(60170u, 30u)]), vec3<i32>(11702i, -2147483647i, global1[_wgslsmith_index_u32(u_input.a, 30u)]), vec2<i32>(17337i, 17833i), vec4<f32>(-399f, -213f, 199f, 412f)), Struct_1(vec4<i32>(0i, global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)], -1i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], 18588i, global1[_wgslsmith_index_u32(1068u, 30u)]), vec2<i32>(global1[_wgslsmith_index_u32(27234u, 30u)], 2147483647i), vec4<f32>(-1047f, -423f, -521f, -967f))), func_1(true, Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(103507u, 30u)], 11842i, -12943i, 0i), vec3<i32>(-1i, -25354i, -36897i), vec2<i32>(38405i, global1[_wgslsmith_index_u32(u_input.a, 30u)]), vec4<f32>(1000f, -416f, -184f, -189f)), vec3<u32>(0u, u_input.a, 1u), Struct_1(vec4<i32>(2147483647i, 0i, -18707i, global1[_wgslsmith_index_u32(0u, 30u)]), vec3<i32>(global1[_wgslsmith_index_u32(0u, 30u)], 39946i, -32960i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)]), vec4<f32>(-1929f, 1192f, -2143f, -1040f)))), Struct_4(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.a)), select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(false, global0.x, true, global0.x), false), func_2(1u, u_input.a, global0.x).b, vec2<i32>(0i, 31393i))), Struct_4(~vec2<u32>(1u, ~u_input.a), select(!vec4<bool>(true, true, global0.x, false), vec4<bool>(global0.x, all(vec2<bool>(false, true)), global0.x, !global0.x), !(!vec4<bool>(true, false, true, global0.x))), Struct_1(_wgslsmith_sub_vec4_i32(~vec4<i32>(-45966i, global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)], -2147483647i), -vec4<i32>(2147483647i, 1i, global1[_wgslsmith_index_u32(49706u, 30u)], 2147483647i)), firstTrailingBit(-vec3<i32>(global1[_wgslsmith_index_u32(21485u, 30u)], -23440i, global1[_wgslsmith_index_u32(71619u, 30u)])), vec2<i32>(0i, global1[_wgslsmith_index_u32(52588u, 30u)]) >> (vec2<u32>(0u, 15292u) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1613f, 667f, 1453f, 275f) * vec4<f32>(243f, -774f, -1286f, -307f)))), -_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], -40869i), vec2<i32>(1i, global1[_wgslsmith_index_u32(11766u, 30u)])), -vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(52173u, 30u)]))));
    let var_1 = var_0;
    global1 = array<i32, 30>();
    let var_2 = 9447u;
    let var_3 = var_1.a.a.xww;
    global0 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.a.x, var_0.c.a.zw & func_2(_wgslsmith_clamp_u32(4294967295u, firstLeadingBit(var_2), var_2 & 4294967295u), var_2, true).b.b.zz);
}

