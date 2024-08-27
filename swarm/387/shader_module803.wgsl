struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<bool>,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: i32,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(1i, 66010i, 284i, 0i), vec4<i32>(14335i, -1i, -642i, -16001i), vec4<i32>(-1590i, 66989i, 2147483647i, -36587i), vec4<i32>(-20588i, -76878i, 0i, i32(-2147483648)), vec4<i32>(61862i, 43478i, -18353i, -24851i), vec4<i32>(-41941i, 1i, -4558i, i32(-2147483648)), vec4<i32>(2147483647i, -65608i, 17247i, 13139i), vec4<i32>(-1i, 0i, -28921i, -6998i), vec4<i32>(28914i, 2147483647i, 0i, 2147483647i), vec4<i32>(1i, 1i, -41101i, 2147483647i), vec4<i32>(i32(-2147483648), -48106i, 31521i, -1i), vec4<i32>(-1i, -46582i, 0i, -30679i));

var<private> global1: array<bool, 6>;

var<private> global2: array<u32, 17> = array<u32, 17>(37613u, 4294967295u, 15744u, 4878u, 52538u, 37042u, 20245u, 0u, 4294967295u, 4294967295u, 61080u, 19433u, 4294967295u, 1u, 1u, 16728u, 1u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    let var_0 = arg_0;
    global0 = array<vec4<i32>, 12>();
    global1 = array<bool, 6>();
    var var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(reverseBits(-27032i), ~arg_1.c)), ~_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.c, 35631i), vec2<i32>(-1i, 1051i)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-2147483647i, 1i)))), ~(_wgslsmith_clamp_vec2_i32(-vec2<i32>(arg_1.c, 2147483647i), -vec2<i32>(0i, 9138i), ~vec2<i32>(arg_1.e.e, arg_1.e.e)) ^ vec2<i32>(arg_1.a.e, 1i)), vec2<i32>(arg_1.e.e, 15921i));
    global2 = array<u32, 17>();
    return all(select(select(select(select(vec3<bool>(arg_1.e.a.x, var_0.a.x, arg_1.a.a.x), var_0.c, var_0.c), select(vec3<bool>(true, arg_0.a.x, var_0.c.x), vec3<bool>(var_0.a.x, var_0.a.x, true), true), true), !select(arg_1.e.d.a.xzw, vec3<bool>(var_0.c.x, false, false), global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), var_0.a.x), select(!(!vec3<bool>(arg_1.e.c, var_0.a.x, global1[_wgslsmith_index_u32(16816u, 6u)])), arg_1.e.d.c, select(vec3<bool>(arg_1.b.x, false, true), select(arg_0.a.xzw, vec3<bool>(false, true, false), arg_1.a.d.c.x), !vec3<bool>(global1[_wgslsmith_index_u32(arg_1.a.b, 6u)], false, true))), !(true | select(arg_0.c.x, var_0.c.x, false))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(arg_1.d.e.x * _wgslsmith_f_op_f32(trunc(arg_1.d.d.x)));
    let var_1 = vec3<bool>(false, func_3(arg_0.e.d, Struct_3(Struct_2(vec2<bool>(true, true), u_input.a.x, true, arg_1.d, _wgslsmith_add_i32(arg_0.a.e, arg_1.e)), vec3<bool>(arg_0.b.x, any(arg_1.d.a.zyx), false), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.e, 0i, 1i, -28453i), vec4<i32>(arg_1.e, -1923i, arg_1.e, -82930i) & vec4<i32>(-61394i, -1i, arg_0.c, arg_0.c)), arg_1.d.d.x, Struct_2(vec2<bool>(arg_0.b.x, false), min(u_input.b, arg_1.b), any(arg_0.b), Struct_1(arg_0.a.d.a, arg_1.d.d.x, vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49716u, 17u)], 6u)], arg_1.a.x, false), vec4<f32>(-1047f, -2005f, -375f, -1100f), vec4<f32>(var_0, arg_0.a.d.b, 1673f, -1000f)), -arg_0.a.e))), !(select(arg_1.a.x, select(true, false, false), true) & all(!vec4<bool>(true, true, arg_1.d.a.x, arg_2.x))));
    var var_2 = Struct_3(arg_1, select(!vec3<bool>(arg_1.d.b > arg_1.d.d.x, arg_0.e.b < 0u, false), select(arg_0.e.d.c, var_1, var_1), !select(vec3<bool>(var_1.x, false, true), vec3<bool>(arg_0.a.d.a.x, arg_0.b.x, false), select(var_1, vec3<bool>(var_1.x, true, true), arg_1.a.x))), arg_1.e, -928f, arg_1);
    var var_3 = -(~countOneBits(vec2<i32>(abs(arg_1.e), arg_0.e.e ^ -2147483647i)));
    global2 = array<u32, 17>();
    return Struct_2(select(vec2<bool>(all(vec2<bool>(false, true)) & arg_0.a.d.c.x, any(!var_1.xz)), select(vec2<bool>(var_2.b.x, any(vec3<bool>(true, false, true))), vec2<bool>(arg_0.c < 17966i, true), !arg_2.x), select(select(!vec2<bool>(var_1.x, false), !vec2<bool>(true, var_2.e.c), true), !(!arg_2.zz), select(select(arg_0.b.xy, var_2.e.a, true), select(vec2<bool>(true, true), var_1.yy, var_1.zz), vec2<bool>(false, true)))), ~4294967295u, any(!select(select(arg_0.e.d.c, arg_0.b, vec3<bool>(false, var_1.x, arg_1.d.a.x)), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), Struct_1(vec4<bool>(arg_0.a.c, any(!var_1.zy), true, all(!var_2.e.d.c.zy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1790f * _wgslsmith_f_op_f32(var_0 * 559f))), !select(select(vec3<bool>(false, false, false), var_1, vec3<bool>(var_1.x, var_2.b.x, var_2.a.a.x)), var_1, func_3(var_2.e.d, Struct_3(Struct_2(vec2<bool>(false, var_1.x), var_2.e.b, arg_0.a.c, arg_1.d, var_2.e.e), vec3<bool>(var_2.b.x, true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 6u)]), -16002i, arg_0.e.d.b, Struct_2(vec2<bool>(false, false), global2[_wgslsmith_index_u32(35585u, 17u)], arg_0.a.d.a.x, var_2.a.d, arg_1.e)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(1224f)), var_0, arg_1.d.d.x, _wgslsmith_f_op_f32(-arg_1.d.e.x)))), _wgslsmith_f_op_vec4_f32(-arg_1.d.d)), -_wgslsmith_sub_i32(var_3.x & var_3.x, _wgslsmith_clamp_i32(1i << (arg_0.a.b % 32u), max(1i, 0i), _wgslsmith_clamp_i32(var_2.e.e, var_2.a.e, -4676i))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    global1 = array<bool, 6>();
    var var_0 = Struct_3(Struct_2(vec2<bool>(all(arg_1.a.d.a), arg_1.b.x), _wgslsmith_dot_vec4_u32(u_input.d, ~firstLeadingBit(u_input.d)), func_2(arg_1, func_2(arg_1, Struct_2(arg_1.e.a, 32542u, false, arg_0.d, arg_1.e.e), arg_0.d.a), !arg_0.d.a).a.x, Struct_1(arg_0.d.a, _wgslsmith_f_op_f32(649f + -1026f), func_2(Struct_3(Struct_2(vec2<bool>(arg_0.a.x, true), arg_0.b, true, Struct_1(arg_1.a.d.a, -808f, vec3<bool>(global1[_wgslsmith_index_u32(27722u, 6u)], arg_1.a.c, false), arg_1.a.d.e, vec4<f32>(arg_1.a.d.e.x, 1411f, 187f, 570f)), arg_1.c), arg_0.d.c, arg_0.e, -516f, arg_1.e), Struct_2(arg_1.a.d.a.xz, 0u, false, arg_0.d, -2147483647i), vec4<bool>(true, arg_1.b.x, arg_1.e.c, global1[_wgslsmith_index_u32(43696u, 6u)])).d.c, arg_1.e.d.e, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.d.x, arg_0.d.d.x, 1321f, 732f) - _wgslsmith_f_op_vec4_f32(-arg_1.e.d.e))), _wgslsmith_mod_i32(~arg_0.e, 26437i)), arg_1.b, _wgslsmith_div_i32(min(arg_1.a.e, -1i), 0i), _wgslsmith_f_op_f32(step(arg_1.a.d.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d))))), Struct_2(arg_0.d.a.zz, u_input.a.x, _wgslsmith_add_i32(arg_0.e & -24743i, -19176i) > arg_0.e, Struct_1(!arg_0.d.a, _wgslsmith_f_op_f32(-arg_1.d), arg_0.d.a.wyw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.d.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.d, arg_1.d, 381f, -440f))) * arg_0.d.e)), 0i));
    var var_1 = arg_1;
    var var_2 = !var_0.b.x;
    var var_3 = true;
    return func_2(arg_1, func_2(arg_1, Struct_2(vec2<bool>(true, any(vec2<bool>(var_1.b.x, arg_1.e.a.x))), abs(28365u), !(!var_0.a.d.a.x), func_2(Struct_3(Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.e.b, 17u)], 6u)], var_1.e.a.x), arg_0.b, global1[_wgslsmith_index_u32(51926u, 6u)], arg_1.a.d, 74849i), vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22712u, 17u)], 6u)], global1[_wgslsmith_index_u32(1u, 6u)], true), var_0.e.e, -235f, var_1.a), arg_0, !vec4<bool>(false, global1[_wgslsmith_index_u32(55655u, 6u)], var_0.b.x, arg_1.a.c)).d, arg_1.e.e), !(!vec4<bool>(false, arg_0.c, false, arg_0.a.x))), arg_0.d.a);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.d.e.x);
    return arg_1.d.d.yy;
}

fn func_1(arg_0: bool, arg_1: f32) -> vec2<f32> {
    global1 = array<bool, 6>();
    global2 = array<u32, 17>();
    global1 = array<bool, 6>();
    global0 = array<vec4<i32>, 12>();
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_5(!(!vec3<bool>(false, global1[_wgslsmith_index_u32(9744u, 6u)], false)), func_4(Struct_2(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], true), 0u, true, Struct_1(vec4<bool>(arg_0, arg_0, arg_0, false), arg_1, vec3<bool>(false, arg_0, arg_0), vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec4<f32>(arg_1, arg_1, -1569f, arg_1)), 1i), Struct_3(Struct_2(vec2<bool>(false, false), 1u, false, Struct_1(vec4<bool>(arg_0, true, global1[_wgslsmith_index_u32(23276u, 6u)], arg_0), arg_1, vec3<bool>(arg_0, false, global1[_wgslsmith_index_u32(11410u, 6u)]), vec4<f32>(arg_1, -2252f, 1449f, 835f), vec4<f32>(arg_1, 1510f, 876f, arg_1)), 2147483647i), select(vec3<bool>(arg_0, true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 6u)], false, false), vec3<bool>(arg_0, true, global1[_wgslsmith_index_u32(0u, 6u)])), -2147483647i, _wgslsmith_f_op_f32(arg_1 - -415f), func_2(Struct_3(Struct_2(vec2<bool>(false, false), u_input.a.x, global1[_wgslsmith_index_u32(1u, 6u)], Struct_1(vec4<bool>(arg_0, false, false, false), 2768f, vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27373u, 17u)], 17u)], 6u)], false, global1[_wgslsmith_index_u32(0u, 6u)]), vec4<f32>(349f, 413f, arg_1, 1000f), vec4<f32>(1678f, 537f, arg_1, arg_1)), 0i), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 6u)], false), 2876i, -1442f, Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(u_input.e, 6u)], arg_0), u_input.c, true, Struct_1(vec4<bool>(true, true, arg_0, false), 154f, vec3<bool>(arg_0, false, arg_0), vec4<f32>(-976f, -268f, -705f, 1088f), vec4<f32>(arg_1, -570f, arg_1, 1124f)), 0i)), Struct_2(vec2<bool>(true, arg_0), 70629u, arg_0, Struct_1(vec4<bool>(true, false, arg_0, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20669u, 17u)], 6u)]), arg_1, vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 6u)], arg_0), vec4<f32>(-609f, -259f, 320f, arg_1), vec4<f32>(arg_1, arg_1, 1000f, -302f)), 38591i), vec4<bool>(arg_0, global1[_wgslsmith_index_u32(92198u, 6u)], true, false)))), false)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 1028f), vec2<f32>(-115f, -971f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1919f, arg_1))))), func_4(Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 6u)], true), ~u_input.d.x, true, func_4(Struct_2(vec2<bool>(false, false), u_input.c, arg_0, Struct_1(vec4<bool>(arg_0, global1[_wgslsmith_index_u32(8806u, 6u)], arg_0, arg_0), 309f, vec3<bool>(false, arg_0, false), vec4<f32>(-734f, arg_1, -711f, arg_1), vec4<f32>(778f, arg_1, arg_1, arg_1)), 0i), Struct_3(Struct_2(vec2<bool>(true, true), 0u, true, Struct_1(vec4<bool>(arg_0, arg_0, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)], 6u)], false), -468f, vec3<bool>(true, arg_0, true), vec4<f32>(arg_1, -1874f, -813f, arg_1), vec4<f32>(arg_1, arg_1, -1030f, -219f)), -2147483647i), vec3<bool>(true, false, global1[_wgslsmith_index_u32(49783u, 6u)]), 0i, arg_1, Struct_2(vec2<bool>(arg_0, arg_0), 22951u, false, Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 17u)], 6u)], arg_0, false), -1300f, vec3<bool>(arg_0, arg_0, true), vec4<f32>(654f, arg_1, 1071f, arg_1), vec4<f32>(arg_1, -764f, -1427f, arg_1)), 0i))).d, reverseBits(-2147483647i)), Struct_3(Struct_2(vec2<bool>(true, true), global2[_wgslsmith_index_u32(u_input.d.x, 17u)], false, Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(u_input.d.x, 6u)], global1[_wgslsmith_index_u32(u_input.e, 6u)]), arg_1, vec3<bool>(arg_0, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10946u, 17u)], 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<f32>(arg_1, -1000f, arg_1, -111f), vec4<f32>(arg_1, 265f, 549f, arg_1)), -62534i), !vec3<bool>(arg_0, arg_0, arg_0), -2147483647i, -293f, Struct_2(vec2<bool>(true, arg_0), 4294967295u, global1[_wgslsmith_index_u32(0u, 6u)], Struct_1(vec4<bool>(false, false, arg_0, false), 189f, vec3<bool>(false, arg_0, arg_0), vec4<f32>(arg_1, -514f, arg_1, -1335f), vec4<f32>(-1345f, -231f, 356f, -145f)), -23419i))).d.e.zx))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -1292f))))) + func_2(Struct_3(func_2(Struct_3(Struct_2(vec2<bool>(false, false), u_input.a.x, false, Struct_1(vec4<bool>(arg_0, true, arg_0, global1[_wgslsmith_index_u32(4294967295u, 6u)]), 221f, vec3<bool>(true, true, arg_0), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, -1222f, 110f, var_0.x)), 9336i), vec3<bool>(arg_0, global1[_wgslsmith_index_u32(0u, 6u)], arg_0), 0i, var_0.x, Struct_2(vec2<bool>(arg_0, arg_0), 65188u, true, Struct_1(vec4<bool>(false, true, false, arg_0), arg_1, vec3<bool>(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e, 17u)], 6u)], true), vec4<f32>(var_0.x, var_0.x, var_0.x, arg_1), vec4<f32>(var_0.x, arg_1, -289f, -1118f)), 30859i)), Struct_2(vec2<bool>(arg_0, arg_0), global2[_wgslsmith_index_u32(u_input.c, 17u)], arg_0, Struct_1(vec4<bool>(arg_0, global1[_wgslsmith_index_u32(0u, 6u)], true, false), arg_1, vec3<bool>(global1[_wgslsmith_index_u32(1u, 6u)], true, false), vec4<f32>(arg_1, var_0.x, arg_1, -1943f), vec4<f32>(var_0.x, arg_1, 690f, var_0.x)), 2147483647i), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 6u)], true, true, global1[_wgslsmith_index_u32(u_input.b, 6u)])), vec3<bool>(global1[_wgslsmith_index_u32(72916u, 6u)], arg_0, false), ~559i, _wgslsmith_f_op_f32(var_0.x - 168f), func_4(Struct_2(vec2<bool>(false, true), 0u, false, Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(40226u, 6u)], false, false, global1[_wgslsmith_index_u32(0u, 6u)]), var_0.x, vec3<bool>(true, arg_0, arg_0), vec4<f32>(653f, 3773f, -951f, -1208f), vec4<f32>(arg_1, arg_1, 759f, var_0.x)), -1i), Struct_3(Struct_2(vec2<bool>(true, false), u_input.c, false, Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 6u)], arg_0, global1[_wgslsmith_index_u32(42340u, 6u)]), var_0.x, vec3<bool>(global1[_wgslsmith_index_u32(47621u, 6u)], true, global1[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<f32>(var_0.x, -585f, 1000f, 1580f), vec4<f32>(-128f, arg_1, arg_1, var_0.x)), -1i), vec3<bool>(false, true, false), 1i, var_0.x, Struct_2(vec2<bool>(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37865u, 17u)], 17u)], 6u)]), 73197u, arg_0, Struct_1(vec4<bool>(arg_0, true, false, global1[_wgslsmith_index_u32(1u, 6u)]), arg_1, vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.c, 6u)]), vec4<f32>(var_0.x, var_0.x, 1064f, var_0.x), vec4<f32>(arg_1, arg_1, -777f, -349f)), -8554i)))), func_2(Struct_3(Struct_2(vec2<bool>(arg_0, true), 1u, arg_0, Struct_1(vec4<bool>(false, arg_0, arg_0, true), -546f, vec3<bool>(false, false, global1[_wgslsmith_index_u32(58892u, 6u)]), vec4<f32>(arg_1, arg_1, 284f, 568f), vec4<f32>(500f, arg_1, -2090f, 557f)), 84812i), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], false, arg_0), 343i, var_0.x, Struct_2(vec2<bool>(arg_0, true), global2[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 17u)], 17u)], 6u)], Struct_1(vec4<bool>(true, arg_0, arg_0, global1[_wgslsmith_index_u32(4294967295u, 6u)]), var_0.x, vec3<bool>(global1[_wgslsmith_index_u32(41397u, 6u)], true, false), vec4<f32>(1868f, arg_1, 143f, var_0.x), vec4<f32>(543f, arg_1, -582f, 1000f)), 23076i)), func_2(Struct_3(Struct_2(vec2<bool>(arg_0, false), 15519u, false, Struct_1(vec4<bool>(false, arg_0, arg_0, false), 290f, vec3<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.c, 6u)], true), vec4<f32>(var_0.x, arg_1, 2240f, var_0.x), vec4<f32>(arg_1, var_0.x, arg_1, -1201f)), 1i), vec3<bool>(true, arg_0, false), 0i, arg_1, Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(43903u, 6u)], arg_0), 47808u, false, Struct_1(vec4<bool>(arg_0, true, arg_0, false), -832f, vec3<bool>(true, false, false), vec4<f32>(var_0.x, 510f, var_0.x, 1130f), vec4<f32>(var_0.x, arg_1, arg_1, var_0.x)), -65526i)), Struct_2(vec2<bool>(arg_0, true), 4294967295u, true, Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 6u)], true, true, false), 456f, vec3<bool>(false, global1[_wgslsmith_index_u32(82044u, 6u)], global1[_wgslsmith_index_u32(58253u, 6u)]), vec4<f32>(arg_1, arg_1, arg_1, var_0.x), vec4<f32>(var_0.x, 1000f, arg_1, 1095f)), 16404i), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 6u)], true, arg_0, true)), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(1464u, 6u)], arg_0)), vec4<bool>(true, any(vec3<bool>(arg_0, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 17u)], 6u)], false)), true, func_3(Struct_1(vec4<bool>(arg_0, false, arg_0, arg_0), 1900f, vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 6u)], true, global1[_wgslsmith_index_u32(0u, 6u)]), vec4<f32>(var_0.x, var_0.x, 566f, arg_1), vec4<f32>(-180f, var_0.x, 572f, arg_1)), Struct_3(Struct_2(vec2<bool>(true, true), global2[_wgslsmith_index_u32(u_input.b, 17u)], false, Struct_1(vec4<bool>(arg_0, true, false, arg_0), var_0.x, vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.d.x, 6u)]), vec4<f32>(arg_1, var_0.x, -140f, var_0.x), vec4<f32>(-942f, var_0.x, 219f, arg_1)), -2147483647i), vec3<bool>(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13138u, 17u)], 6u)], false), 1i, 690f, Struct_2(vec2<bool>(true, false), 1u, false, Struct_1(vec4<bool>(true, false, true, arg_0), -770f, vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 6u)], arg_0, arg_0), vec4<f32>(1345f, 1000f, -432f, 522f), vec4<f32>(1825f, -1051f, -236f, 1167f)), -2147483647i))))).d.d.zx) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1986f, -1789f))), vec2<f32>(var_0.x, var_0.x), select(vec2<bool>(global1[_wgslsmith_index_u32(31221u, 6u)], false), vec2<bool>(arg_0, true), true)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1467f, -1000f)) * func_2(Struct_3(Struct_2(vec2<bool>(true, global1[_wgslsmith_index_u32(72200u, 6u)]), 7053u, arg_0, Struct_1(vec4<bool>(false, arg_0, false, arg_0), var_0.x, vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], false, global1[_wgslsmith_index_u32(0u, 6u)]), vec4<f32>(1060f, 361f, 1532f, arg_1), vec4<f32>(-1445f, arg_1, 1000f, arg_1)), 2147483647i), vec3<bool>(arg_0, true, true), -1i, 119f, Struct_2(vec2<bool>(true, true), global2[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(1u, 6u)], Struct_1(vec4<bool>(true, arg_0, arg_0, arg_0), arg_1, vec3<bool>(arg_0, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23217u, 17u)], 6u)], arg_0), vec4<f32>(var_0.x, -288f, var_0.x, -1152f), vec4<f32>(arg_1, 336f, 800f, 1651f)), -14246i)), Struct_2(vec2<bool>(false, true), u_input.e, arg_0, Struct_1(vec4<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.c, 6u)], true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 17u)], 6u)]), 1057f, vec3<bool>(true, true, false), vec4<f32>(1044f, 547f, 198f, var_0.x), vec4<f32>(arg_1, arg_1, arg_1, arg_1)), 2147483647i), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(54061u, 6u)], arg_0, arg_0)).d.d.yw), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, var_0.x), vec2<f32>(292f, -985f), true)) + vec2<f32>(var_0.x, 107f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_1(any(vec3<bool>(any(vec3<bool>(true, global1[_wgslsmith_index_u32(22849u, 6u)], false)), true, any(vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.d.x, 6u)], false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -927f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-368f, -226f)), -870f)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(942f, var_0.x, var_0.x) + vec3<f32>(var_0.x, 1000f, 338f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1544f, 216f, var_0.x) + vec3<f32>(964f, var_0.x, var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-269f, -1112f, -973f) + vec3<f32>(-934f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(176f, 731f, 826f), vec3<f32>(-1088f, -449f, var_0.x))))))));
    let var_2 = Struct_2(!select(!(!vec2<bool>(global1[_wgslsmith_index_u32(45299u, 6u)], global1[_wgslsmith_index_u32(u_input.c, 6u)])), vec2<bool>(!global1[_wgslsmith_index_u32(u_input.e, 6u)], false), !(!vec2<bool>(false, global1[_wgslsmith_index_u32(40828u, 6u)]))), reverseBits(1u), false, func_2(Struct_3(func_4(func_4(Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28878u, 17u)], 17u)], 17u)], 6u)]), u_input.c, false, Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(87077u, 17u)], 6u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19698u, 17u)], 6u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), var_1.x, vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(31663u, 6u)], false), vec4<f32>(var_1.x, var_1.x, 331f, var_1.x), vec4<f32>(-175f, 450f, var_1.x, var_0.x)), -58494i), Struct_3(Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 17u)], 6u)]), u_input.b, false, Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)], 6u)], true, true, true), var_0.x, vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], true, false), vec4<f32>(-1335f, 932f, var_0.x, var_1.x), vec4<f32>(var_1.x, -1263f, 1441f, -1000f)), 26468i), vec3<bool>(global1[_wgslsmith_index_u32(0u, 6u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), -1i, var_0.x, Struct_2(vec2<bool>(false, false), u_input.b, global1[_wgslsmith_index_u32(72114u, 6u)], Struct_1(vec4<bool>(false, false, true, true), var_1.x, vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 6u)], true, global1[_wgslsmith_index_u32(61248u, 6u)]), vec4<f32>(var_0.x, -1000f, var_1.x, -482f), vec4<f32>(-819f, var_0.x, 594f, -621f)), 27546i))), Struct_3(Struct_2(vec2<bool>(true, global1[_wgslsmith_index_u32(72217u, 6u)]), 4294967295u, false, Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(9787u, 6u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 17u)], 6u)], false), var_1.x, vec3<bool>(global1[_wgslsmith_index_u32(0u, 6u)], true, true), vec4<f32>(1270f, var_0.x, var_1.x, var_1.x), vec4<f32>(-466f, var_0.x, var_1.x, -947f)), 41414i), vec3<bool>(global1[_wgslsmith_index_u32(0u, 6u)], false, true), -22352i, var_0.x, Struct_2(vec2<bool>(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], 6u)]), 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 6u)], Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)], false), var_0.x, vec3<bool>(true, global1[_wgslsmith_index_u32(20095u, 6u)], false), vec4<f32>(var_1.x, 412f, 129f, 1692f), vec4<f32>(var_0.x, var_1.x, 412f, var_0.x)), 1i))), vec3<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(78283u, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], false)), true, var_0.x <= var_1.x), 1i, _wgslsmith_f_op_f32(-var_1.x), Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e, 17u)], 6u)], true), 25221u, all(vec4<bool>(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 6u)], true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e, 17u)], 6u)])), func_4(Struct_2(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 6u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38329u, 17u)], 17u)], true, Struct_1(vec4<bool>(true, true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 17u)], 6u)], false), var_1.x, vec3<bool>(global1[_wgslsmith_index_u32(18371u, 6u)], false, false), vec4<f32>(-360f, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, 1000f, 293f, var_1.x)), -1i), Struct_3(Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)], 6u)], false), 0u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 17u)], 6u)], Struct_1(vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.d.x, 6u)], global1[_wgslsmith_index_u32(2721u, 6u)]), var_1.x, vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 17u)], 6u)]), vec4<f32>(var_1.x, 532f, 1343f, 512f), vec4<f32>(-469f, var_1.x, var_0.x, -1000f)), -27974i), vec3<bool>(true, global1[_wgslsmith_index_u32(37772u, 6u)], global1[_wgslsmith_index_u32(42912u, 6u)]), -1i, 1927f, Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(11914u, 6u)], global1[_wgslsmith_index_u32(140u, 6u)]), 0u, false, Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26463u, 17u)], 6u)], global1[_wgslsmith_index_u32(u_input.d.x, 6u)], true), var_1.x, vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], true), vec4<f32>(-167f, -842f, var_1.x, var_0.x), vec4<f32>(-1400f, var_0.x, var_0.x, var_1.x)), 1i))).d, ~1i)), Struct_2(func_4(func_2(Struct_3(Struct_2(vec2<bool>(false, false), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], false, Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(62232u, 6u)], true, true), var_0.x, vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 6u)], false), vec4<f32>(var_0.x, var_0.x, -1000f, var_1.x), vec4<f32>(var_0.x, var_1.x, var_0.x, var_1.x)), 0i), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.e, 6u)], true), 1i, -151f, Struct_2(vec2<bool>(true, true), 52632u, global1[_wgslsmith_index_u32(0u, 6u)], Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(43593u, 6u)], global1[_wgslsmith_index_u32(u_input.e, 6u)], false), -347f, vec3<bool>(true, false, global1[_wgslsmith_index_u32(1u, 6u)]), vec4<f32>(var_1.x, -1868f, 1088f, 393f), vec4<f32>(var_1.x, var_0.x, var_0.x, -1000f)), -19438i)), Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e, 17u)], 17u)], 6u)]), 43731u, global1[_wgslsmith_index_u32(u_input.e, 6u)], Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(60820u, 6u)], global1[_wgslsmith_index_u32(69107u, 6u)], global1[_wgslsmith_index_u32(u_input.c, 6u)], false), 170f, vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c, 6u)]), vec4<f32>(var_0.x, var_1.x, var_0.x, -659f), vec4<f32>(var_1.x, 273f, 346f, 751f)), -1i), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.e, 6u)], true, false)), Struct_3(Struct_2(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 6u)]), global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(81161u, 6u)], Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], global1[_wgslsmith_index_u32(u_input.d.x, 6u)], true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 6u)]), var_0.x, vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.d.x, 6u)]), vec4<f32>(826f, 1564f, var_0.x, -859f), vec4<f32>(231f, 146f, 859f, var_1.x)), 0i), vec3<bool>(false, true, true), 30477i, var_0.x, Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 6u)], global1[_wgslsmith_index_u32(10632u, 6u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], global1[_wgslsmith_index_u32(u_input.b, 6u)], Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], false, global1[_wgslsmith_index_u32(u_input.c, 6u)], false), 815f, vec3<bool>(true, false, false), vec4<f32>(var_0.x, 371f, var_0.x, -730f), vec4<f32>(-215f, -692f, var_1.x, var_0.x)), 0i))).d.c.zz, global2[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(39375u, global2[_wgslsmith_index_u32(0u, 17u)]), countOneBits(48801u), global1[_wgslsmith_index_u32(u_input.c, 6u)] & true), 17u)], !global1[_wgslsmith_index_u32(u_input.d.x | 0u, 6u)], func_2(Struct_3(Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(40969u, 6u)], false), u_input.e, true, Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(76378u, 6u)], false), 358f, vec3<bool>(false, true, true), vec4<f32>(232f, var_0.x, var_0.x, -2301f), vec4<f32>(-1316f, var_1.x, var_0.x, var_1.x)), -65128i), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 6u)], global1[_wgslsmith_index_u32(u_input.d.x, 6u)], false), -14504i, var_1.x, Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(12174u, 6u)], global1[_wgslsmith_index_u32(u_input.d.x, 6u)]), global2[_wgslsmith_index_u32(4294967295u, 17u)], true, Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(1u, 6u)], true, global1[_wgslsmith_index_u32(u_input.e, 6u)], global1[_wgslsmith_index_u32(0u, 6u)]), -1000f, vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)], 6u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 17u)], 6u)], false), vec4<f32>(var_0.x, 264f, -1292f, var_1.x), vec4<f32>(-681f, -285f, 573f, 1578f)), 18864i)), func_2(Struct_3(Struct_2(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 6u)]), 4294967295u, global1[_wgslsmith_index_u32(0u, 6u)], Struct_1(vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b, 6u)], global1[_wgslsmith_index_u32(47949u, 6u)]), 328f, vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 6u)], true, false), vec4<f32>(var_0.x, 238f, -250f, var_1.x), vec4<f32>(246f, 776f, 595f, 392f)), -2147483647i), vec3<bool>(true, false, true), -52637i, var_0.x, Struct_2(vec2<bool>(false, true), 26004u, global1[_wgslsmith_index_u32(41162u, 6u)], Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(39033u, 6u)], false, false, true), -1357f, vec3<bool>(false, false, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)], 17u)], 6u)]), vec4<f32>(573f, var_0.x, -587f, var_0.x), vec4<f32>(114f, var_1.x, -1068f, var_0.x)), 2147483647i)), Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(6582u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)]), global2[_wgslsmith_index_u32(u_input.d.x, 17u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17204u, 17u)], 6u)], Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.e, 6u)], false, false), var_0.x, vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 6u)], global1[_wgslsmith_index_u32(u_input.d.x, 6u)]), vec4<f32>(var_1.x, -528f, -260f, 1817f), vec4<f32>(var_0.x, var_1.x, -345f, -893f)), 1i), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 6u)], global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 6u)], global1[_wgslsmith_index_u32(100793u, 6u)])), !vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 6u)], false, true)).d, _wgslsmith_mult_i32(1i, 0i)), vec4<bool>(true, any(!vec3<bool>(global1[_wgslsmith_index_u32(2343u, 6u)], false, false)), global1[_wgslsmith_index_u32(abs(abs(global2[_wgslsmith_index_u32(68123u, 17u)])), 6u)], global1[_wgslsmith_index_u32(~u_input.e, 6u)])).d, ~_wgslsmith_dot_vec4_i32(vec4<i32>(20085i, max(59879i, -1i), 1i, _wgslsmith_sub_i32(1i, -25213i)), vec4<i32>(~2147483647i, min(4013i, 35937i), 70261i, firstLeadingBit(5182i))));
    global1 = array<bool, 6>();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1), _wgslsmith_f_op_vec3_f32(floor(var_2.d.d.wxz)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_2.d.b, -533f)))))));
    let var_4 = select(_wgslsmith_mod_vec2_i32(reverseBits(~reverseBits(vec2<i32>(var_2.e, var_2.e))), vec2<i32>(max(_wgslsmith_sub_i32(36873i, 57510i), firstTrailingBit(var_2.e)), -14091i)), -vec2<i32>(reverseBits(var_2.e), 84450i), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], u_input.a.x < min(_wgslsmith_add_u32(u_input.c, 1u), u_input.d.x)));
    var_3 = _wgslsmith_f_op_vec3_f32(-var_1);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2406f * var_3.x), var_3.x, true))), ~_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(max(countOneBits(u_input.c), ~0u), 12u)], ~global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(var_2.b, 17u)], 17u)], 12u)]), reverseBits(0i), _wgslsmith_clamp_u32(u_input.a.x, 4294967295u & ~var_2.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8050u >> (global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, ~u_input.b), 17u)] % 32u), 17u)], 17u)]));
}

