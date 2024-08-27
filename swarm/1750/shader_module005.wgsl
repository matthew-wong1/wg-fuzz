struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1043f, 820f, 1329f);

var<private> global1: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(10672i, 8879i, -72243i, -26677i), vec4<i32>(-10584i, 1i, -1i, i32(-2147483648)), vec4<i32>(-1i, 1i, 39267i, 1i), vec4<i32>(80032i, -11587i, 51498i, 0i), vec4<i32>(-15325i, -23226i, 2147483647i, -1077i), vec4<i32>(71730i, -23771i, -4937i, 0i), vec4<i32>(0i, -23682i, -20829i, 2147483647i), vec4<i32>(-1i, 49776i, 0i, 36048i), vec4<i32>(-10232i, 63978i, 0i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 1i), vec4<i32>(34051i, 0i, 334i, i32(-2147483648)), vec4<i32>(-1i, 0i, 0i, 2147483647i), vec4<i32>(32452i, i32(-2147483648), -37906i, 36114i), vec4<i32>(0i, -6998i, 0i, -420i), vec4<i32>(2147483647i, 3520i, -42130i, 33746i), vec4<i32>(0i, -17167i, 3069i, -128i), vec4<i32>(i32(-2147483648), 1i, 52311i, 1i), vec4<i32>(0i, 39816i, -1i, 2147483647i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 2294i), vec4<i32>(i32(-2147483648), 34414i, -46820i, -32923i), vec4<i32>(2147483647i, i32(-2147483648), -56178i, 32309i), vec4<i32>(-27620i, 2147483647i, i32(-2147483648), -4066i), vec4<i32>(0i, -24194i, 10828i, i32(-2147483648)), vec4<i32>(-1i, 4982i, 1i, -32112i), vec4<i32>(2147483647i, 4307i, 1i, 42494i));

var<private> global2: array<u32, 27> = array<u32, 27>(4157u, 34397u, 22817u, 51387u, 4294967295u, 56820u, 4294967295u, 4294967295u, 11575u, 21127u, 78864u, 19835u, 5101u, 0u, 31277u, 49972u, 0u, 14648u, 4294967295u, 3815u, 0u, 47143u, 4294967295u, 1u, 1u, 1u, 1u);

var<private> global3: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(2147483647i, -56261i, -21681i, -2129i), vec4<i32>(-54441i, 2147483647i, i32(-2147483648), 8842i), vec4<i32>(1i, 2147483647i, 52393i, 2147483647i), vec4<i32>(0i, 1i, 1i, 0i), vec4<i32>(14491i, 32802i, 2147483647i, -18105i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 1i), vec4<i32>(-1i, i32(-2147483648), -24214i, 1i), vec4<i32>(0i, -1i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), -1i, 1i, 37836i), vec4<i32>(19053i, i32(-2147483648), 1i, -1i), vec4<i32>(2147483647i, 43248i, 1i, -6960i), vec4<i32>(2418i, -40580i, 11037i, -43863i), vec4<i32>(2147483647i, 50969i, 2147483647i, 32073i), vec4<i32>(0i, 0i, 21817i, 22260i), vec4<i32>(1i, -51052i, 21211i, 0i), vec4<i32>(i32(-2147483648), -1i, 65970i, 2390i), vec4<i32>(15445i, i32(-2147483648), -1i, 2147483647i), vec4<i32>(2147483647i, 1442i, 29202i, 0i), vec4<i32>(45016i, 1i, 1i, 1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<bool> {
    var var_0 = Struct_2(~min(vec3<i32>(u_input.e.x, -12621i, i32(-1i) * -1i), select(u_input.e, select(vec3<i32>(u_input.a.x, 31951i, 2147483647i), u_input.a, arg_1.a.x), arg_1.a)), arg_1, _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1358f, 1479f)) * _wgslsmith_f_op_f32(f32(-1f) * -213f)), -108f, _wgslsmith_f_op_f32(step(-538f, 1602f)))), !(!all(select(vec2<bool>(false, true), vec2<bool>(arg_2.x, true), arg_2.x))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), var_0.c)))) + var_0.d.x);
    var var_2 = Struct_2(vec3<i32>(35880i, 19915i, select(63847i, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.e.x, 2147483647i), i32(-1i) * -12240i), true)), var_0.b, var_0.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) * var_0.d), !any(vec4<bool>(true || var_0.b.a.x, any(arg_1.a), arg_2.x, var_0.b.a.x)));
    var_0 = Struct_2(~(~vec3<i32>(var_0.a.x, 0i, -2147483647i) >> (countOneBits(~u_input.b) % vec3<u32>(32u))), arg_1, 153f, _wgslsmith_f_op_vec4_f32(round(var_0.d)), arg_2.x);
    var var_3 = any(select(arg_1.a, !select(var_0.b.a, vec3<bool>(arg_1.a.x, false, arg_1.a.x), var_0.b.a), var_0.b.a));
    return !select(select(!(!vec4<bool>(var_0.b.a.x, false, var_2.e, var_2.b.a.x)), select(select(vec4<bool>(true, false, true, var_2.e), vec4<bool>(var_2.b.a.x, true, true, var_2.b.a.x), false), select(vec4<bool>(true, var_0.e, true, var_0.b.a.x), vec4<bool>(arg_2.x, true, false, var_2.e), var_0.e), true & arg_1.a.x), select(vec4<bool>(true, var_0.e, arg_0, false), vec4<bool>(false, arg_2.x, var_2.b.a.x, false), select(vec4<bool>(var_0.e, var_0.e, var_0.e, var_2.e), vec4<bool>(true, false, true, true), arg_1.a.x))), vec4<bool>(arg_1.a.x, arg_2.x, var_2.e, !var_2.e), !arg_2.x);
}

fn func_2(arg_0: vec2<i32>) -> vec2<bool> {
    global2 = array<u32, 27>();
    let var_0 = ~vec4<u32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, u_input.c.x), 27u)], global2[_wgslsmith_index_u32(~1u, 27u)], 1u, _wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(reverseBits(0u), 27u)], max(global2[_wgslsmith_index_u32(u_input.d.x, 27u)], u_input.c.x) & max(9774u, 28063u)));
    global3 = array<vec4<i32>, 19>();
    global3 = array<vec4<i32>, 19>();
    var var_1 = select(func_3(true, Struct_1(vec3<bool>(true, true, true)), vec2<bool>(false, true)), select(vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), !(u_input.a.x == 2147483647i), !(113394u == global2[_wgslsmith_index_u32(4294967295u, 27u)]), true), vec4<bool>(global0.x == _wgslsmith_f_op_f32(global0.x - global0.x), true, u_input.a.x > firstTrailingBit(18676i), select(all(vec2<bool>(true, false)), true, any(vec3<bool>(false, false, false)))), true), true);
    return !(!var_1.ww);
}

fn func_1() -> Struct_1 {
    var var_0 = select(func_2(u_input.a.yy), vec2<bool>(all(vec2<bool>(true, true)), !any(vec3<bool>(true, false, false)) || false), vec2<bool>(false, !((85228u <= global2[_wgslsmith_index_u32(u_input.d.x, 27u)]) & false)));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, global0.x, 552f))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(round(global0.x)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(661f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-449f * 559f))))), _wgslsmith_div_f32(-553f, _wgslsmith_f_op_f32(f32(-1f) * -745f))));
    global1 = array<vec4<i32>, 25>();
    let var_1 = Struct_3(Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, 43913i, 2147483647i), _wgslsmith_sub_i32(-2147483647i, -32584i), u_input.e.x), u_input.a), Struct_1(!select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, true, var_0.x), vec3<bool>(true, true, false))), -1000f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -1112f, 1650f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(578f, global0.x, global0.x, 836f) - vec4<f32>(global0.x, 132f, global0.x, global0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-2106f, -1748f, global0.x, global0.x) + vec4<f32>(global0.x, global0.x, 444f, 1096f))), !(!(!var_0.x))));
    global1 = array<vec4<i32>, 25>();
    return var_1.a.b;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2.a;
    var_0 = !arg_2.a;
    var var_1 = ((~(vec4<u32>(u_input.c.x, 0u, global2[_wgslsmith_index_u32(u_input.d.x, 27u)], 88950u) >> (vec4<u32>(u_input.b.x, arg_0, global2[_wgslsmith_index_u32(0u, 27u)], 4294967295u) % vec4<u32>(32u))) | vec4<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33899u, 27u)], 27u)], global2[_wgslsmith_index_u32(arg_0, 27u)] >> (u_input.c.x % 32u), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], 27u)], 17164u), ~0u)) | ~(~(~vec4<u32>(arg_0, global2[_wgslsmith_index_u32(0u, 27u)], 23874u, 24648u)))) >> (select(reverseBits(max(_wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.d.x, 27u)], 0u, arg_0, 4198u), vec4<u32>(u_input.c.x, 70589u, 4294967295u, 2037u)), reverseBits(vec4<u32>(arg_0, 24711u, 4294967295u, 501u)))), vec4<u32>(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 27u)], 27u)], u_input.d.x, 0u), ~global2[_wgslsmith_index_u32(22820u, 27u)], _wgslsmith_mult_u32(4294967295u, u_input.c.x), _wgslsmith_mod_u32(u_input.c.x, arg_0)) ^ _wgslsmith_mod_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(arg_0, 27u)], 4294967295u, global2[_wgslsmith_index_u32(1u, 27u)], 0u), ~vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], arg_0, arg_0, u_input.c.x)), arg_2.a.x) % vec4<u32>(32u));
    let var_2 = arg_2;
    var var_3 = Struct_3(Struct_2(countOneBits(u_input.a ^ firstTrailingBit(vec3<i32>(u_input.a.x, -1i, u_input.e.x))), var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2053f + arg_1))), global0.x), vec4<f32>(global0.x, -147f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), global0.x), false));
    return ~_wgslsmith_mod_u32(31800u, 42176u);
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    var var_0 = select(~u_input.c, firstTrailingBit(u_input.c) >> (u_input.b.xy % vec2<u32>(32u)), vec2<bool>(arg_0 | true, arg_0));
    var var_1 = vec4<bool>(!(!(arg_3 < -1000f)), all(!(!select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, true)))), true, arg_0);
    let var_2 = Struct_2(abs(vec3<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.e.x), 2147483647i, -1i)) << ((vec3<u32>(0u, min(u_input.b.x, 102245u), u_input.b.x) >> (vec3<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 27u)], 27u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 27u)], 27u)], ~19799u) % vec3<u32>(32u))) % vec3<u32>(32u)), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1089f, global0.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 507f)), arg_1.x)), all(var_1.zwy));
    let var_3 = var_2.b;
    let var_4 = !(!(var_1.x & ((var_2.a.x & -2147483647i) != u_input.a.x)));
    return var_2.b;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~(~abs(u_input.d));
    let var_1 = firstTrailingBit(~reverseBits(~vec3<u32>(0u, var_0.x, u_input.b.x)));
    let var_2 = ~0u;
    var var_3 = Struct_2(u_input.e, Struct_1(!func_3(global0.x >= global0.x, func_5(false, vec3<f32>(-1008f, 129f, global0.x), 47791u, global0.x), !arg_0.a.yx).xzw), _wgslsmith_f_op_f32(-812f + _wgslsmith_f_op_f32(sign(-931f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1807f)), 1000f, 1309f, global0.x))), arg_0.a.x);
    let var_4 = firstLeadingBit(u_input.e.x);
    return func_5(func_3(true, arg_0, vec2<bool>(any(func_3(var_3.e, arg_0, vec2<bool>(arg_0.a.x, true))), any(!vec4<bool>(arg_0.a.x, var_3.e, var_3.b.a.x, true)))).x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_div_f32(-321f, var_3.c))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_3.d.xyw)))))), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(firstTrailingBit(countOneBits(var_0.x)), 27u)], var_1.x), 1f);
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = countOneBits(min(0i, 45079i));
    var var_1 = any(!(!(!vec4<bool>(arg_1.a.x, arg_1.a.x, true, false))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_2, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-675f, arg_2.x, arg_2.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-837f))), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1320f))), !arg_1.a)));
    global0 = arg_2;
    let var_2 = arg_1.a;
    return Struct_3(Struct_2((u_input.a & -u_input.a) ^ vec3<i32>(max(u_input.e.x, u_input.a.x), 83210i, -21519i), Struct_1(!select(var_2, var_2, var_2)), _wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(312f, 659f, 614f, global0.x) * vec4<f32>(arg_2.x, 777f, 1941f, arg_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-350f, arg_2.x, arg_2.x, global0.x)), vec4<bool>(false, arg_1.a.x, false, false))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.x, global0.x, global0.x, -1190f)))), !var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 25>();
    let var_0 = func_7(_wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, ~(~u_input.c.x)), ~(reverseBits(29851u) ^ ~global2[_wgslsmith_index_u32(4294967295u, 27u)])), func_6(func_5(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.x, global0.x) * vec3<f32>(global0.x, global0.x, 1000f))), func_4(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.d.x, 0u)), global0.x, func_1()), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-328f))), -2030f, global0.x) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 1000f) + vec3<f32>(565f, global0.x, -2000f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -2490f, global0.x))))))));
    var var_1 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~(0u >> ((0u & (12281u << (u_input.c.x % 32u))) % 32u))), 27u)], 27u)];
    let var_2 = _wgslsmith_f_op_f32(exp2(var_0.a.d.x));
    let var_3 = Struct_2(_wgslsmith_mult_vec3_i32(var_0.a.a, ~u_input.e), Struct_1(var_0.a.b.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.c, _wgslsmith_f_op_f32(round(-1138f)))), _wgslsmith_f_op_f32(-var_0.a.d.x))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1508f)))))), _wgslsmith_f_op_f32(f32(-1f) * -131f), _wgslsmith_f_op_f32(-var_2), 941f), false);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.d, vec4<u32>(1u, 14561u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, u_input.d.x, u_input.b.x, global2[_wgslsmith_index_u32(0u, 27u)])) & ~vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35810u, 27u)], 27u)], global2[_wgslsmith_index_u32(u_input.c.x, 27u)], 3093u), ~vec4<u32>(u_input.b.x, u_input.c.x, global2[_wgslsmith_index_u32(u_input.b.x, 27u)], u_input.d.x)), max(~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.b.x, 27u)], 27u)], 7362u)), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], global2[_wgslsmith_index_u32(39881u, 27u)], global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)]) >> (vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(28207u, 27u)], u_input.c.x, 24673u) % vec4<u32>(32u)), countOneBits(vec4<u32>(0u, global2[_wgslsmith_index_u32(u_input.d.x, 27u)], 45400u, 4294967295u))) & (_wgslsmith_add_vec4_u32(vec4<u32>(0u, global2[_wgslsmith_index_u32(24516u, 27u)], u_input.d.x, global2[_wgslsmith_index_u32(0u, 27u)]), vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(4294967295u, 27u)], u_input.d.x, 14608u)) | vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], 27u)], 36169u, global2[_wgslsmith_index_u32(24708u, 27u)], 1u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c, 2498f, 1395f, -129f) * _wgslsmith_f_op_vec4_f32(-var_0.a.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, var_3.d.x, var_3.c, 1515f) - vec4<f32>(-1000f, 1000f, -1548f, -2032f)))))));
}

