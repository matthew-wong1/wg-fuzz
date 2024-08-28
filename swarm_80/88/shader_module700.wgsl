struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec3<f32>;

var<private> global2: array<i32, 11>;

var<private> global3: array<i32, 29> = array<i32, 29>(1i, -16726i, 26482i, 2147483647i, i32(-2147483648), 1i, -25602i, 0i, 14961i, 0i, i32(-2147483648), 2147483647i, i32(-2147483648), 43855i, -1i, -28406i, -1i, 25586i, 0i, 19896i, -13199i, 0i, 1i, -20595i, 17710i, 20651i, -13658i, 0i, -1i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>) -> vec4<f32> {
    let var_0 = u_input.a;
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, 963f, global1.x, 520f), vec4<f32>(global1.x, 296f, -1996f, 1000f), vec4<bool>(true, global0.x, true, arg_0.a))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1189f, global1.x, arg_2.x, -1207f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.x, 1037f, 2080f, arg_2.x)))))), global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-global1.x)), -827f), _wgslsmith_f_op_f32(f32(-1f) * -255f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2 * _wgslsmith_f_op_vec2_f32(arg_2 * global1.yy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1294f, -453f)))))));
    global1 = var_1.a.wwz;
    let var_2 = -vec3<i32>(arg_1, global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)]);
    global3 = array<i32, 29>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1192f, -174f, global1.x, 918f), vec4<f32>(-689f, arg_2.x, -1048f, arg_2.x))), _wgslsmith_div_vec4_f32(vec4<f32>(-738f, -401f, -1792f, -1000f), var_1.a))))), !vec4<bool>(false, true, arg_0.a, !arg_0.a))));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> vec4<f32> {
    var var_0 = ~(~arg_1);
    let var_1 = arg_0.wzy;
    let var_2 = Struct_3(Struct_2(firstTrailingBit(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(1u, 29u)], -1i)) >= -38713i), select(vec4<bool>(!global0.x, !global0.x, global0.x, any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, global0.x), global0.x))), vec4<bool>(true & (global0.x != global0.x), !(global0.x != true), global0.x, true), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-232f - -364f), 435f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2461f, _wgslsmith_f_op_f32(min(-1000f, -891f)))));
    global3 = array<i32, 29>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_0))) - _wgslsmith_f_op_vec4_f32(func_3(var_2.a, -26199i, global1.yz)))), _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_2.d) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1349f + arg_0.x)))))), -1000f, _wgslsmith_f_op_vec4_f32(func_3(var_2.a, ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 29u)], global2[_wgslsmith_index_u32(arg_1, 11u)]))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(global1.x * 2599f), _wgslsmith_f_op_f32(284f + -341f)))))).x, _wgslsmith_f_op_vec2_f32(arg_0.xx * vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(false), global2[_wgslsmith_index_u32(13769u, 11u)], vec2<f32>(444f, 650f))).x)), _wgslsmith_f_op_f32(-arg_0.x))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(178f, arg_0.x, var_2.c, var_1.x) + vec4<f32>(-1173f, global1.x, -118f, arg_0.x)) - var_3.a) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_3.a, arg_0))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    var var_0 = Struct_3(Struct_2(((false | global0.x) | all(vec3<bool>(global0.x, true, false))) & global0.x), select(vec4<bool>(any(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), global0.x)), all(vec3<bool>(true, true, false)), false, all(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), global0.x))), select(select(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, false), false), select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(false, false, global0.x, global0.x), true), select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(true, false, false, global0.x))), vec4<bool>(any(vec4<bool>(global0.x, global0.x, true, false)), global0.x, true, global1.x != global1.x), vec4<bool>(false, false, arg_1.b <= 900f, true)), vec4<bool>(true || (u_input.a.x == 1u), !any(vec2<bool>(true, false)), true, global0.x)), 1519f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)));
    let var_1 = var_0.a;
    return -503f;
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_4(~vec3<i32>(1856i, u_input.c.x, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x ^ u_input.b.x, ~76125u, u_input.b.x), 29u)]), Struct_1(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2036f, global1.x, global1.x, -1000f), vec4<f32>(arg_1, global1.x, -1069f, -284f)))), ~(~u_input.b.x))), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-823f - 1246f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, global1.x, true)) + -322f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(true), -3449i, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, 2278f), vec2<f32>(579f, 1103f))))).x + global1.x), global1.xy), vec4<i32>(1i, firstTrailingBit(_wgslsmith_add_i32(~(-52026i), global3[_wgslsmith_index_u32(~4294967295u, 29u)])), global2[_wgslsmith_index_u32(u_input.a.x, 11u)] & 6356i, global3[_wgslsmith_index_u32(1u, 29u)])));
    var var_1 = vec3<f32>(-2209f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_div_f32(-1509f, _wgslsmith_f_op_f32(func_4(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], -17879i, 75894i), Struct_1(vec4<f32>(global1.x, -522f, 952f, -360f), 384f, 1000f, arg_1, global1.yz), vec4<i32>(-1i, global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], 60290i))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1047f, arg_1))))), var_0);
    global3 = array<i32, 29>();
    var var_2 = var_1.zx;
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(428f, var_2.x)))) + arg_1), 664f, arg_1, var_2.x), _wgslsmith_f_op_f32(276f * 848f), _wgslsmith_f_op_f32(floor(-118f)), _wgslsmith_f_op_f32(454f - 655f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.zx, _wgslsmith_div_vec2_f32(vec2<f32>(-419f, -903f), var_1.zx)))));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_4(abs(vec3<i32>(global2[_wgslsmith_index_u32(108842u, 11u)], 2147483647i, global2[_wgslsmith_index_u32(39684u, 11u)])) ^ vec3<i32>(1i, u_input.c.x, global2[_wgslsmith_index_u32(0u, 11u)]), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.c, var_2.x, var_2.x, var_1.x), vec4<f32>(-1225f, -251f, var_1.x, global1.x), vec4<bool>(true, true, arg_0.x, global0.x))), _wgslsmith_f_op_f32(trunc(539f)), 291f, arg_1, _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_2.x), global1.xz)), vec4<i32>(-9152i, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.b.x), 29u)], -12649i, abs(-24332i)))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 1178f)), arg_1), global1.x, 1646f, _wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(245f, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -713f, var_3.a.x, var_2.x)), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x))).xz))));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_2.a, vec4<f32>(-532f, -1065f, -1688f, 425f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(arg_2.a)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, 1710f, arg_2.a.x, arg_3.c))), vec4<bool>(global0.x, global0.x, true, false))))), _wgslsmith_f_op_f32(f32(-1f) * -2112f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1292f)) + -1156f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(-1f), any(!vec3<bool>(global0.x, true, global0.x)))))), arg_3.e);
    global1 = _wgslsmith_f_op_vec3_f32(-arg_2.a.yzx);
    var var_1 = arg_2;
    global2 = array<i32, 11>();
    let var_2 = vec4<bool>(select(global0.x, any(!(!global0.yy)), global0.x), any(select(select(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, true, true), false), select(vec3<bool>(true, true, global0.x), vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, global0.x, false)), vec3<bool>(false, global0.x, false)), !select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), false), (41980u >= u_input.a.x) | (u_input.a.x < 4294967295u))), false, true);
    return Struct_3(Struct_2(global0.x), select(vec4<bool>(false && (var_1.e.x >= arg_2.b), true, global0.x, all(vec4<bool>(true, false, false, true))), select(vec4<bool>(var_2.x, var_2.x & true, !var_2.x, arg_0 != var_1.b), vec4<bool>(2147483647i <= global3[_wgslsmith_index_u32(u_input.a.x, 29u)], any(var_2.xxx), any(vec2<bool>(var_2.x, global0.x)), 1u >= u_input.b.x), any(select(vec2<bool>(false, var_2.x), vec2<bool>(false, false), false))), 514f > arg_2.e.x), 322f, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-285f - arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.x))), all(vec4<bool>(false, global0.x, false, global0.x)) || !global0.x))));
}

fn func_6(arg_0: f32, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_3) -> f32 {
    var var_0 = func_1(select(func_5(_wgslsmith_f_op_f32(-1000f + arg_3.d), u_input.c >> (arg_1.yy % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1022f, global1.x, -588f, 1000f))), 1342f, _wgslsmith_f_op_f32(-arg_3.c), _wgslsmith_f_op_f32(max(arg_0, arg_3.c)), _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global1.x), vec2<f32>(arg_0, arg_0))), func_1(global0.xz, _wgslsmith_f_op_f32(227f + -872f))).b.zz, !vec2<bool>(true, arg_3.a.a), any(func_5(_wgslsmith_f_op_f32(f32(-1f) * -1844f), vec2<i32>(0i, 0i), func_1(vec2<bool>(true, false), arg_3.d), Struct_1(vec4<f32>(1281f, arg_0, global1.x, 1000f), arg_3.c, 366f, arg_3.d, global1.yx)).b)), _wgslsmith_f_op_f32(-global1.x));
    let var_1 = firstTrailingBit(vec4<i32>(-(global3[_wgslsmith_index_u32(0u, 29u)] | u_input.c.x) >> (1u % 32u), arg_2, -2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 29u)], 2147483647i, arg_2, 1i), max(vec4<i32>(global2[_wgslsmith_index_u32(0u, 11u)], 10238i, -2147483647i, 2147483647i) ^ vec4<i32>(-57159i, u_input.c.x, global3[_wgslsmith_index_u32(arg_1.x, 29u)], -1i), ~vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global2[_wgslsmith_index_u32(arg_1.x, 11u)], 1i, 9733i)))));
    var var_2 = (false | any(vec4<bool>(false, !global0.x, arg_3.b.x, global0.x))) || (arg_3.b.x || false);
    let var_3 = abs(~(~(~vec4<u32>(arg_1.x, arg_1.x, 12826u, u_input.a.x))));
    let var_4 = _wgslsmith_f_op_f32(149f * -1220f);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-893f, 926f, arg_3.b.x)) - _wgslsmith_f_op_f32(var_0.b + arg_3.d))))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool, arg_3: vec3<f32>) -> vec4<bool> {
    global2 = array<i32, 11>();
    global1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, 509f, 552f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a.xyz + _wgslsmith_f_op_vec3_f32(vec3<f32>(-2901f, arg_0.a.x, -296f) - vec3<f32>(1108f, -1396f, 511f))), vec3<f32>(2388f, -624f, -345f)))));
    var var_0 = func_5(arg_0.e.x, _wgslsmith_mult_vec2_i32(select(~(vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 11u)]) ^ u_input.c), vec2<i32>(28008i, reverseBits(global2[_wgslsmith_index_u32(22166u, 11u)])), select(vec2<bool>(arg_2, true), arg_1.b.ww, all(arg_1.b))), _wgslsmith_div_vec2_i32(-vec2<i32>(-71322i, global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), u_input.c)), arg_0, func_1(select(!arg_1.b.wx, vec2<bool>(true, arg_2), !arg_1.a.a == arg_2), -266f));
    global1 = vec3<f32>(-354f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-417f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - arg_0.e.x)));
    let var_1 = vec4<bool>(true, any(!select(select(var_0.b.xxy, var_0.b.xwy, arg_1.b.zxy), vec3<bool>(arg_2, arg_1.a.a, false), true)), any(select(vec4<bool>(true, arg_2, false, var_0.b.x), arg_1.b, !(!var_0.b))), !any(!global0.zy));
    return vec4<bool>(true, global0.x, var_0.a.a, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_1(vec4<f32>(-1640f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -111f)), _wgslsmith_div_f32(-500f, _wgslsmith_f_op_f32(floor(global1.x)))), global1.x, _wgslsmith_f_op_f32(func_6(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(step(-478f, 1000f))), firstLeadingBit(u_input.b), -45711i, func_5(_wgslsmith_f_op_f32(-global1.x), vec2<i32>(u_input.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), func_1(vec2<bool>(false, global0.x), global1.x), Struct_1(vec4<f32>(-1000f, global1.x, global1.x, -2042f), 869f, global1.x, 216f, global1.zx)))), global1.x, vec2<f32>(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(864f, global1.x, global1.x, global1.x), vec4<f32>(1000f, 452f, -2284f, -489f), global0.x)), max(u_input.a.x, u_input.a.x))).x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_6(global1.x, u_input.b, global3[_wgslsmith_index_u32(u_input.a.x, 29u)], Struct_3(Struct_2(global0.x), vec4<bool>(true, false, false, false), 465f, global1.x))))))), Struct_3(func_5(-381f, ~_wgslsmith_mult_vec2_i32(u_input.c, u_input.c), func_1(global0.yx, _wgslsmith_div_f32(-1089f, global1.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 109f, global1.x)), _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(ceil(-676f)), -342f, _wgslsmith_f_op_vec2_f32(-global1.zy))).a, vec4<bool>(true, any(select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(true, true, true, global0.x), true)), global2[_wgslsmith_index_u32(1u, 11u)] <= -20139i, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-global1.x))) - global1.x), global1.x), u_input.b.x < _wgslsmith_div_u32(~_wgslsmith_div_u32(u_input.a.x, u_input.b.x), _wgslsmith_div_u32(u_input.b.x | 143786u, ~u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2532f, global1.x, -198f))))));
    let var_1 = _wgslsmith_f_op_f32(-global1.x);
    global3 = array<i32, 29>();
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1822f, -1000f, var_1, global1.x), vec4<f32>(global1.x, -926f, var_1, 1266f)) + vec4<f32>(-644f, 815f, var_1, -1128f))))));
    global0 = var_0.xxy;
    let x = u_input.a;
    s_output = StorageBuffer(~1i << (~(~1u) % 32u), global1.x, (u_input.a.x | ~countOneBits(42083u)) >> ((68531u << (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u)) % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(986f * -727f)))), reverseBits(u_input.a));
}

