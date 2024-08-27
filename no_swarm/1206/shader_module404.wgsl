struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec3<bool>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(1i, -1i, 2147483647i, -26882i), vec4<i32>(69319i, 0i, -68979i, 2147483647i), vec4<i32>(1i, -97428i, -11305i, -23870i), vec4<i32>(-27930i, -1i, 7734i, -1i), vec4<i32>(-19311i, i32(-2147483648), 88701i, -13243i), vec4<i32>(1i, 0i, 14204i, 19454i), vec4<i32>(8175i, 0i, 79952i, -1i), vec4<i32>(0i, 68202i, 22378i, -16493i), vec4<i32>(-24636i, 15376i, 1i, 1i), vec4<i32>(-46601i, 69113i, 0i, 0i), vec4<i32>(-1i, 1i, 0i, -43465i), vec4<i32>(-55113i, -1i, 0i, 0i), vec4<i32>(-6731i, -4783i, 0i, 2147483647i), vec4<i32>(69797i, 43954i, 2147483647i, -1i), vec4<i32>(1i, -10539i, -1i, -18122i), vec4<i32>(-25372i, -1i, 1i, -38819i), vec4<i32>(i32(-2147483648), -12658i, 45842i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, 43477i, -72134i), vec4<i32>(-70322i, 2147483647i, -49465i, 40544i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -1i), vec4<i32>(2147483647i, -45768i, 2147483647i, i32(-2147483648)), vec4<i32>(-6880i, -4612i, 0i, -30895i), vec4<i32>(0i, -1i, 29448i, 11498i), vec4<i32>(48636i, 0i, 0i, 1i), vec4<i32>(-5582i, 2147483647i, 7887i, -19011i), vec4<i32>(0i, 50290i, 42007i, -47498i), vec4<i32>(-36449i, 25550i, i32(-2147483648), -1i), vec4<i32>(-29253i, 2147483647i, -41461i, -22129i), vec4<i32>(2147483647i, -34277i, 0i, -13414i), vec4<i32>(0i, 20541i, 1i, -77630i));

var<private> global1: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)])), -max(52201i, 1i)), vec2<i32>(min(956i, _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(53568u, 30u)], vec4<i32>(476i, 25655i, -17367i, 0i))), firstLeadingBit(~(-33450i)))), ~_wgslsmith_mod_i32(2147483647i, ~_wgslsmith_sub_i32(32488i, -81704i)));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1145f + arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) + arg_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0.x, -681f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -1745f))))));
    var var_2 = ~(~vec3<u32>(~countOneBits(u_input.a.x), _wgslsmith_sub_u32(0u, u_input.a.x), u_input.a.x));
    let var_3 = var_1;
    global0 = array<vec4<i32>, 30>();
    return 28003u;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(vec4<u32>(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-129f, -1000f, 965f, -1000f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(430f, 1610f, -418f, -243f))))), 3437u, ~u_input.a.x, _wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.a.x, 1u), u_input.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-255f, -1576f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(376f, 1f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(514f, -3201f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-437f, -138f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(582f, 1214f)), true)), _wgslsmith_f_op_f32(select(-927f, -1183f, true)) == _wgslsmith_f_op_f32(step(645f, -1226f))))));
    let var_1 = -310f;
    global0 = array<vec4<i32>, 30>();
    var var_2 = Struct_4(any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), true), vec2<bool>(true, all(vec4<bool>(false, false, true, false))), true)), Struct_1(countOneBits(var_0.a), -1506f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2163f, var_1)))), min(global0[_wgslsmith_index_u32(~u_input.a.x, 30u)], vec4<i32>(_wgslsmith_add_i32(abs(-22131i), firstLeadingBit(1i)), 0i, 1i, select(firstLeadingBit(24158i), -5029i, false))), max(var_0.a.x, 1u) ^ ~(~_wgslsmith_mod_u32(0u, u_input.a.x)), _wgslsmith_mult_vec3_i32(firstTrailingBit(~(~vec3<i32>(57596i, 0i, -58766i))), countOneBits(abs(abs(vec3<i32>(-1i, -50360i, 0i))))));
    global1 = ~_wgslsmith_add_u32(0u, firstLeadingBit(0u) | _wgslsmith_sub_u32(var_2.b.a.x, u_input.a.x));
    return Struct_3(any(!(!(!vec2<bool>(true, var_2.a)))), Struct_2(!vec4<bool>(any(vec4<bool>(var_2.a, false, var_2.a, var_2.a)), true, all(vec2<bool>(var_2.a, var_2.a)), var_2.a), -10197i, !(!vec3<bool>(false, var_2.a, var_2.a)), abs(var_2.c.ww), func_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.c.x, var_2.b.b, var_2.b.c.x, var_1)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> i32 {
    global1 = u_input.a.x;
    var var_0 = Struct_1(~(~firstTrailingBit(vec4<u32>(1u, u_input.a.x, 6200u, 105167u))), 954f, vec2<f32>(-257f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -592f), _wgslsmith_f_op_f32(trunc(arg_0.x)))));
    var var_1 = ~(-vec3<i32>(arg_1.b.b, 2147483647i, ~arg_1.b.d.x)) ^ vec3<i32>(arg_1.b.b, arg_1.b.d.x, 2147483647i);
    var var_2 = !select(select(select(!arg_1.b.a.www, func_2().b.c, arg_1.b.a.x), select(arg_1.b.c, !vec3<bool>(false, arg_1.b.a.x, false), true), _wgslsmith_sub_i32(var_1.x, arg_1.b.d.x) < (i32(-1i) * -1i)), arg_1.b.c, arg_1.b.c.x);
    var_2 = arg_1.b.a.zwy;
    return 62431i;
}

fn func_1() -> bool {
    let var_0 = max(firstLeadingBit(13277i), ~(-1i));
    var var_1 = select(vec4<bool>(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1540f, 1271f, 1781f, -229f)), func_2()) != ~abs(var_0), !any(vec2<bool>(true, true)), true & (false || any(vec2<bool>(false, true))), true), vec4<bool>(all(func_2().b.a), true, all(select(func_2().b.c, vec3<bool>(true, true, true), select(false, true, true))), !((var_0 < var_0) | true)), select(vec4<bool>(true, func_2().b.a.x, true, all(func_2().b.c)), !func_2().b.a, vec4<bool>(true, true, true, true)));
    global1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(38587u, 4294967295u, u_input.a.x, 1u)) | _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), select(vec4<u32>(1u, 102466u, u_input.a.x, u_input.a.x), vec4<u32>(21178u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, true, var_1.x, var_1.x))), select(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u)), min(vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(330u, 0u, u_input.a.x, 0u))), vec4<u32>(u_input.a.x | 34744u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 64525u, u_input.a.x, 283u), vec4<u32>(4294967295u, 35261u, 1u, 22097u)), u_input.a.x, 83059u), select(func_2().b.a, vec4<bool>(var_1.x, true, false, true), !var_1.x))), 0u >> (~(u_input.a.x >> (_wgslsmith_mod_u32(u_input.a.x, 0u) % 32u)) % 32u));
    var var_2 = Struct_2(vec4<bool>(false, all(select(vec4<bool>(true, var_1.x, false, var_1.x), select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, true, false, var_1.x)), all(vec4<bool>(var_1.x, var_1.x, true, false)))), var_1.x, false == all(!vec4<bool>(var_1.x, var_1.x, true, true))), select(-2147483647i, -reverseBits(firstLeadingBit(var_0)), !(!all(var_1.yyx))), select(vec3<bool>(any(var_1.xyy), any(vec4<bool>(true, true, var_1.x, true)), var_1.x), select(vec3<bool>(all(var_1.xy), true, true), vec3<bool>(all(vec3<bool>(var_1.x, var_1.x, var_1.x)), true, true), !select(var_1.zwz, vec3<bool>(true, var_1.x, var_1.x), var_1.x)), false), ~(-(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_0), vec2<i32>(-19437i, var_0)) & _wgslsmith_sub_vec2_i32(vec2<i32>(var_0, 23387i), vec2<i32>(var_0, var_0)))), _wgslsmith_mod_u32(u_input.a.x, (u_input.a.x | ~u_input.a.x) & ~1u));
    var var_3 = func_2().b.a;
    return all(vec3<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(-17372i, var_2.b), var_2.d) > (~var_2.b << (78896u % 32u)), (max(var_0, var_2.b) >= reverseBits(-29294i)) & !any(vec2<bool>(true, false)), !(func_2().b.a.x && var_3.x)));
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_4 {
    var var_0 = ~max(~(~vec3<i32>(arg_2.d.x, arg_2.b, 55731i)), vec3<i32>(select(arg_2.b, arg_2.d.x, false), 1i, _wgslsmith_dot_vec2_i32(arg_2.d, vec2<i32>(-5081i, arg_2.d.x)))) >> (reverseBits(~vec3<u32>(~0u, countOneBits(arg_1.x), u_input.a.x)) % vec3<u32>(32u));
    var var_1 = func_1();
    var_1 = !arg_2.c.x;
    global0 = array<vec4<i32>, 30>();
    var_0 = vec3<i32>(~abs(22164i), min(firstLeadingBit(~_wgslsmith_div_i32(var_0.x, var_0.x)), firstTrailingBit(firstTrailingBit(12757i) << (~u_input.a.x % 32u))), func_2().b.d.x << (arg_2.e % 32u));
    return Struct_4(func_1(), Struct_1(arg_1 >> (_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(arg_1, vec4<u32>(123592u, arg_1.x, 4294967295u, arg_1.x)), vec4<u32>(0u, u_input.a.x, u_input.a.x, arg_2.e)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1924f)), _wgslsmith_f_op_f32(max(177f, -197f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-320f - 1890f)))), vec4<i32>(firstTrailingBit(2147483647i), arg_2.d.x, _wgslsmith_sub_i32(-var_0.x, firstTrailingBit(-19635i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_2.d, firstLeadingBit(vec2<i32>(17356i, 2147483647i))), _wgslsmith_sub_i32(countOneBits(-1i), -arg_2.b))), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_2.e, 0u, 15182u, arg_2.e) << (~vec4<u32>(42575u, arg_0, arg_1.x, arg_2.e) % vec4<u32>(32u))), ~_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(arg_0, 43360u, u_input.a.x, 4294967295u)), vec4<u32>(1u, arg_0, 74858u, 77117u) & arg_1, select(vec4<u32>(arg_1.x, 4294967295u, 30850u, arg_0), arg_1, arg_3))), vec3<i32>(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), firstTrailingBit(1i), var_0.x | var_0.x), ~0i, -(-1i & var_0.x) >> (33317u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~_wgslsmith_mod_vec4_u32(~min(vec4<u32>(u_input.a.x, u_input.a.x, 43814u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), vec4<u32>(~1u, 4294967295u, ~33990u, 1u)), Struct_2(vec4<bool>(true, true, true, true), min(_wgslsmith_mult_i32(max(0i, -1i), -2147483647i), countOneBits(0i)), vec3<bool>(true, true, true), countOneBits(vec2<i32>(i32(-1i) * -1i, 0i)), abs(~0u)), vec4<bool>(any(vec4<bool>(true, true, true, true)), (true | func_1()) & true, true, true));
    global1 = ~max(_wgslsmith_div_u32(~(~74627u), abs(u_input.a.x)), 1u);
    var var_1 = var_0.d;
    global0 = array<vec4<i32>, 30>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-419f - _wgslsmith_f_op_f32(var_0.b.c.x + -585f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(867f)))), _wgslsmith_f_op_f32(-1f))) - vec3<f32>(var_0.b.c.x, 560f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1118f + 1205f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.b.b, var_0.b.b)))))));
    var var_3 = _wgslsmith_mod_i32(firstLeadingBit(2147483647i & _wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.c.x, var_0.c.x), _wgslsmith_dot_vec4_i32(var_0.c, vec4<i32>(0i, var_0.c.x, var_0.e.x, -4305i)))), firstTrailingBit(_wgslsmith_div_i32(max(_wgslsmith_div_i32(62480i, -1i), _wgslsmith_add_i32(57685i, var_0.c.x)), var_0.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b, var_2.x, var_2.x, 835f))))))), _wgslsmith_div_i32(_wgslsmith_sub_i32(~2386i, ~(var_0.c.x | var_0.e.x)), -_wgslsmith_mod_i32(-1i, var_0.e.x)));
}

