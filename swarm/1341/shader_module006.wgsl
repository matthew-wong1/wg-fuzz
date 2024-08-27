struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_4(Struct_2(vec3<u32>(u_input.a, u_input.a, ~min(26925u, 29906u)), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-925f, _wgslsmith_f_op_f32(-1170f - -1497f), -1000f)), Struct_1(vec3<i32>(1i, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(40387u, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)], 2147483647i), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)])), select(true, false, true) && true, _wgslsmith_f_op_f32(ceil(-664f)), vec4<u32>(~u_input.a, 0u, u_input.a << (0u % 32u), 1u), any(vec4<bool>(false, false, true, true)) & false), _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(~u_input.a, u_input.a), _wgslsmith_add_u32(~u_input.a, 1u))), Struct_2(firstLeadingBit(~countOneBits(vec3<u32>(93352u, 4294967295u, u_input.a))), any(vec4<bool>(true, all(vec3<bool>(true, false, false)), true, any(vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))), Struct_1(vec3<i32>(_wgslsmith_div_i32(46003i, 13998i), 1i, countOneBits(-18230i)), true, _wgslsmith_f_op_f32(f32(-1f) * -496f), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), true), u_input.a ^ 1u), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(max(-683f, _wgslsmith_div_f32(-763f, 1399f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-701f, -836f)), _wgslsmith_f_op_f32(-195f + -2246f))))), ~(~firstTrailingBit(vec4<u32>(u_input.a, 45455u, u_input.a, 1u))) ^ (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, 41217u, u_input.a), vec4<u32>(u_input.a, 14754u, u_input.a, 49393u), vec4<u32>(50339u, 124614u, u_input.a, u_input.a))) >> ((firstTrailingBit(vec4<u32>(u_input.a, 2310u, 0u, u_input.a)) & ~vec4<u32>(43078u, 1u, u_input.a, u_input.a)) % vec4<u32>(32u))));
    global0 = array<i32, 3>();
    var var_1 = -2147483647i;
    let var_2 = Struct_4(Struct_2(vec3<u32>(58316u, 5322u, var_0.b.e << (u_input.a % 32u)) | var_0.b.a, true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.c)) * vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(980f + var_0.c.x), var_0.b.d.c)), Struct_1(abs(reverseBits(var_0.a.d.a)), all(select(vec3<bool>(var_0.b.b, var_0.b.d.e, true), vec3<bool>(true, true, false), false)), var_0.b.c.x, var_0.a.d.d, true), ~(~u_input.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.b.d.d.x, u_input.a, var_0.b.d.d.x), vec4<u32>(71736u, 0u, u_input.a, 108786u)) % 32u))), var_0.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1030f, var_0.c.x))))), select(select((vec4<u32>(4294967295u, 40512u, var_0.a.d.d.x, 0u) | vec4<u32>(19175u, var_0.d.x, 66205u, 1u)) & firstTrailingBit(vec4<u32>(var_0.a.d.d.x, u_input.a, 0u, 0u)), var_0.d, select(!vec4<bool>(false, var_0.a.b, var_0.b.d.b, true), !vec4<bool>(var_0.a.b, true, var_0.a.d.e, var_0.a.b), any(vec3<bool>(var_0.b.d.e, true, var_0.a.d.e)))), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.a.x, u_input.a, u_input.a, max(24691u, var_0.b.d.d.x)), abs(vec4<u32>(57450u, 0u, u_input.a, u_input.a))), !vec4<bool>(all(vec4<bool>(true, var_0.a.d.b, var_0.a.b, var_0.a.d.e)), any(vec2<bool>(var_0.a.b, true)), !var_0.a.d.b, true)));
    var var_3 = !select(select(!(!vec3<bool>(false, true, var_0.b.b)), !vec3<bool>(var_0.a.d.e, true, false), !(!vec3<bool>(var_0.a.b, true, false))), select(vec3<bool>(-2147483647i <= global0[_wgslsmith_index_u32(0u, 3u)], var_2.b.b, all(vec3<bool>(false, var_0.a.b, false))), vec3<bool>(true, true, true), !vec3<bool>(var_2.a.b, var_0.a.b, true)), !select(!vec3<bool>(false, var_0.b.b, var_2.b.d.b), select(vec3<bool>(false, var_0.a.b, var_0.b.b), vec3<bool>(false, var_2.b.d.e, var_0.b.d.b), var_0.a.b), true));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(3041f, var_2.c.x, var_2.b.d.c, 487f) - vec4<f32>(-923f, -537f, var_0.c.x, 349f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, 212f, 1263f, 1017f)), true | var_2.a.b))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1213f, var_0.c.x, var_0.a.c.x, -741f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-697f, -453f, var_2.a.c.x, 645f), vec4<f32>(var_2.c.x, -999f, var_0.a.c.x, -1356f), vec4<bool>(var_3.x, true, var_2.b.b, var_0.b.b)))))))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_1(min(~vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], 2147483647i, 2147483647i), min(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], -24250i, global0[_wgslsmith_index_u32(u_input.a, 3u)]), vec3<i32>(global0[_wgslsmith_index_u32(5408u, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)]))) << (select(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, true, true)) % vec3<u32>(32u)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-132f, -978f), _wgslsmith_f_op_f32(max(978f, 863f))))), max(vec4<u32>(~0u, min(4294967295u, 2597u), 73580u, 0u), ~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) << (vec4<u32>(1u, u_input.a, u_input.a, 92287u) % vec4<u32>(32u))), true));
    var_0 = Struct_3(var_0.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - vec4<f32>(var_0.a.c, var_0.a.c, var_0.a.c, 672f)))));
    var var_2 = Struct_1(var_0.a.a, var_0.a.e, _wgslsmith_f_op_f32(-var_0.a.c), var_0.a.d, !any(vec3<bool>(var_0.a.b, var_0.a.a.x != var_0.a.a.x, false)));
    let var_3 = Struct_1(countOneBits(var_0.a.a) >> (vec3<u32>(_wgslsmith_clamp_u32(firstLeadingBit(60277u), _wgslsmith_add_u32(0u, 33699u), _wgslsmith_add_u32(10489u, u_input.a)), 1u, max(1u, 1u)) % vec3<u32>(32u)), var_2.e, var_0.a.c, ~vec4<u32>(var_2.d.x, u_input.a, ~(var_0.a.d.x ^ var_2.d.x), var_2.d.x), true);
    return var_3;
}

fn func_1() -> Struct_1 {
    global0 = array<i32, 3>();
    let var_0 = -205f;
    global0 = array<i32, 3>();
    let var_1 = firstTrailingBit(1u);
    global0 = array<i32, 3>();
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = select(select(vec4<bool>(true, arg_0.e, any(vec2<bool>(arg_1.b, false)), arg_1.d.e), vec4<bool>(any(select(vec4<bool>(true, false, arg_3.b, false), vec4<bool>(false, arg_1.d.b, true, arg_3.d.e), vec4<bool>(arg_0.b, true, true, false))), any(select(vec4<bool>(arg_1.d.e, arg_0.b, false, arg_0.e), vec4<bool>(arg_1.b, false, true, arg_1.d.e), vec4<bool>(arg_1.b, arg_0.e, false, arg_0.e))), func_1().b, !arg_3.d.b), !select(select(vec4<bool>(arg_0.b, true, false, true), vec4<bool>(true, arg_0.e, arg_0.b, true), arg_1.d.e), !vec4<bool>(true, false, arg_1.b, true), 1021f > arg_3.d.c)), !vec4<bool>(!select(arg_3.b, false, true), !func_2().e, arg_0.b, arg_0.e), select(!vec4<bool>(arg_0.b != arg_1.b, !arg_1.d.e, true, all(vec2<bool>(true, false))), vec4<bool>(true, arg_0.b, true, func_1().b), select(!select(vec4<bool>(false, arg_1.d.b, arg_0.e, arg_3.b), vec4<bool>(arg_1.b, true, arg_0.e, false), arg_1.b), select(!vec4<bool>(false, false, false, arg_3.d.e), select(vec4<bool>(arg_1.d.b, true, false, arg_3.d.e), vec4<bool>(true, arg_1.d.b, arg_0.e, arg_0.b), vec4<bool>(false, arg_1.b, arg_3.b, false)), arg_3.b), vec4<bool>(arg_3.a.x > arg_1.e, true, arg_0.e, any(vec3<bool>(arg_0.b, true, arg_0.b))))));
    let var_1 = arg_3.d;
    var var_2 = Struct_2(~(~(arg_3.a & arg_2.zxx) >> (~vec3<u32>(arg_0.d.x, u_input.a, arg_0.d.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.c)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.c + _wgslsmith_f_op_f32(arg_1.c.x + arg_1.c.x)) * _wgslsmith_f_op_f32(trunc(arg_3.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(arg_3.c))))) - _wgslsmith_f_op_vec3_f32(step(arg_3.c, vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(arg_0.c * -1032f), _wgslsmith_div_f32(arg_0.c, -487f))))), var_1, abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(42184u, 1u, arg_3.d.d.x), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 58708u, 64800u), _wgslsmith_mult_vec3_u32(vec3<u32>(8596u, 68248u, 0u), vec3<u32>(4294967295u, 4294967295u, arg_0.d.x))))));
    let var_3 = (func_1().a.x | max(30994i, -(arg_1.d.a.x << (11940u % 32u)))) >= arg_0.a.x;
    let var_4 = select(var_0.wxy, vec3<bool>(any(select(vec3<bool>(arg_3.d.b, false, var_2.b), vec3<bool>(arg_3.d.b, true, arg_3.d.e), var_2.b)), true, !(_wgslsmith_f_op_f32(-var_1.c) == -1534f)), true);
    return Struct_3(func_1());
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: f32, arg_3: Struct_4) -> Struct_1 {
    let var_0 = func_2();
    global0 = array<i32, 3>();
    var var_1 = select(vec3<bool>(false != !func_4(arg_0.a, Struct_2(arg_3.d.yzw, false, arg_3.a.c, Struct_1(var_0.a, true, var_0.c, arg_0.a.d, true), arg_3.a.d.d.x), arg_0.a.d, Struct_2(arg_3.b.d.d.xyz, true, vec3<f32>(arg_0.a.c, arg_1, arg_2), Struct_1(vec3<i32>(0i, 2147483647i, arg_3.a.d.a.x), true, 1106f, vec4<u32>(var_0.d.x, 34628u, arg_0.a.d.x, 1u), true), arg_3.a.e)).a.b, !arg_0.a.e, !(~arg_0.a.d.x == arg_0.a.d.x)), vec3<bool>(true, arg_0.a.e || (~4294967295u < var_0.d.x), !var_0.b), false);
    let var_2 = arg_3.d.x;
    let var_3 = vec3<u32>(reverseBits(_wgslsmith_div_u32(max(~53285u, var_2), ~arg_3.d.x)), 1u, func_2().d.x);
    return func_1();
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = false & arg_0.b;
    let var_1 = ~func_5(Struct_3(func_5(Struct_3(arg_0), -1549f, _wgslsmith_div_f32(-1510f, 811f), Struct_4(Struct_2(arg_1.d.yxx, arg_1.e, vec3<f32>(1018f, arg_0.c, arg_1.c), arg_1, 0u), Struct_2(arg_0.d.wxz, false, vec3<f32>(-471f, arg_1.c, 1680f), Struct_1(arg_0.a, true, 233f, vec4<u32>(arg_2.x, u_input.a, arg_2.x, arg_1.d.x), arg_1.e), arg_2.x), vec2<f32>(1000f, -1000f), arg_0.d))), arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1424f))), Struct_4(Struct_2(vec3<u32>(u_input.a, arg_1.d.x, 28868u), var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(804f, 463f, arg_1.c)), Struct_1(arg_0.a, arg_0.e, 317f, vec4<u32>(arg_0.d.x, arg_1.d.x, 0u, u_input.a), arg_0.e), arg_2.x), Struct_2(~arg_0.d.xzw, all(vec2<bool>(false, arg_1.e)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1720f, 773f) - vec3<f32>(382f, arg_1.c, 263f)), func_1(), _wgslsmith_mod_u32(arg_0.d.x, arg_0.d.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1270f, 150f))), firstTrailingBit(arg_1.d))).d;
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    return Struct_2(firstTrailingBit(arg_1.d.zww | arg_2) & min(arg_2, max(vec3<u32>(90352u, arg_1.d.x, 0u) & vec3<u32>(63099u, 1u, u_input.a), vec3<u32>(47651u, 71851u, 19338u))), arg_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f)), _wgslsmith_f_op_f32(-arg_0.c), arg_0.c) - vec3<f32>(-1183f, arg_1.c, _wgslsmith_f_op_f32(-arg_1.c))), arg_1, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    var var_0 = Struct_4(func_6(func_5(func_4(func_1(), Struct_2(vec3<u32>(0u, u_input.a, 31955u), true, vec3<f32>(2091f, -2315f, -531f), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], -23011i, global0[_wgslsmith_index_u32(u_input.a, 3u)]), true, -1287f, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), false), u_input.a), vec4<u32>(0u, 43482u, 4294967295u, 4179u), Struct_2(vec3<u32>(0u, u_input.a, u_input.a), true, vec3<f32>(1084f, -731f, 921f), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(0u, 3u)], 1i, 49948i), true, -2326f, vec4<u32>(u_input.a, 0u, 42351u, u_input.a), false), u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1610f)) * -1114f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1681f, -235f)) * _wgslsmith_f_op_f32(trunc(671f))), Struct_4(Struct_2(vec3<u32>(0u, 11822u, u_input.a), true, vec3<f32>(1650f, -208f, 740f), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(73383u, 3u)], global0[_wgslsmith_index_u32(11626u, 3u)], global0[_wgslsmith_index_u32(57044u, 3u)]), true, 2359f, vec4<u32>(u_input.a, 4294967295u, u_input.a, 52089u), true), 33168u), Struct_2(vec3<u32>(u_input.a, u_input.a, u_input.a), false, vec3<f32>(-673f, 1153f, 231f), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], 0i, global0[_wgslsmith_index_u32(47816u, 3u)]), false, 662f, vec4<u32>(u_input.a, 74947u, 4294967295u, 19236u), false), 1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-792f, -518f) + vec2<f32>(-295f, -903f)), ~vec4<u32>(0u, u_input.a, 7271u, u_input.a))), func_1(), _wgslsmith_clamp_vec3_u32(vec3<u32>(16118u, u_input.a, u_input.a), reverseBits(vec3<u32>(0u, u_input.a, 1u)), vec3<u32>(1u, 1u, 1u)) ^ select(vec3<u32>(49273u, 1u, u_input.a) | vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 1u, u_input.a), vec3<bool>(true, true, true))), func_6(Struct_1(select(min(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], -2147483647i, -2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], -2147483647i, 14618i)), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], 2147483647i, 18907i) >> (vec3<u32>(66913u, 45052u, u_input.a) % vec3<u32>(32u)), vec3<bool>(false, true, true)), func_2().b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -747f)), ~(vec4<u32>(0u, 54068u, u_input.a, 56882u) << (vec4<u32>(26940u, 0u, u_input.a, u_input.a) % vec4<u32>(32u))), false), func_2(), _wgslsmith_add_vec3_u32(~abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(u_input.a ^ 58449u, ~57290u, ~u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2337f, 1304f))))), vec4<u32>(_wgslsmith_mult_u32(~(~0u), _wgslsmith_mult_u32(u_input.a, 1u)), reverseBits(_wgslsmith_mod_u32(~u_input.a, u_input.a)), 1u, ~1u));
    let var_1 = var_0.b.d;
    let var_2 = Struct_1(max(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(var_1.d.x, 3u)], 1i, var_0.b.d.a.x), ~vec3<i32>(1i, -2147483647i, var_0.a.d.a.x)), vec3<i32>(~(-640i), abs(global0[_wgslsmith_index_u32(50241u, 3u)]), 31334i)), firstTrailingBit(vec3<i32>(abs(-2147483647i), _wgslsmith_mult_i32(-16864i, var_0.b.d.a.x), global0[_wgslsmith_index_u32(var_1.d.x, 3u)] ^ var_0.b.d.a.x))), var_0.b.d.e, _wgslsmith_f_op_f32(trunc(265f)), func_4(var_0.a.d, var_0.b, vec4<u32>(~var_0.a.e, ~var_1.d.x, ~max(var_0.a.a.x, u_input.a), 6669u), Struct_2(vec3<u32>(firstTrailingBit(0u), _wgslsmith_mult_u32(44864u, 1u), 72884u), false, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.d.c, var_1.c, -1000f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-421f, var_1.c, 2430f), var_0.b.c, false))), Struct_1(var_0.b.d.a, -928f >= var_1.c, _wgslsmith_f_op_f32(-var_1.c), func_2().d, all(vec2<bool>(var_0.b.b, true))), min(u_input.a, ~var_0.a.e))).a.d, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1424f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1317f);
}

