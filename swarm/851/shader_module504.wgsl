struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: i32,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(-44268i, i32(-2147483648), 8645i, 0i), vec4<i32>(-1i, -35375i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, -329i, 0i), vec4<i32>(2147483647i, -10890i, 22646i, -1i), vec4<i32>(44536i, -6057i, i32(-2147483648), -1i), vec4<i32>(3363i, 46430i, -1i, 20134i), vec4<i32>(-44093i, 20183i, 18220i, 0i), vec4<i32>(-48090i, 18841i, 28096i, i32(-2147483648)), vec4<i32>(2147483647i, 1i, -1i, 1i), vec4<i32>(-1862i, 2147483647i, 1i, -43753i), vec4<i32>(-12014i, 0i, 0i, 0i));

var<private> global1: array<u32, 26>;

var<private> global2: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(51270u, 51394u, 1u, 61788u), vec4<u32>(24237u, 0u, 4294967295u, 1u), vec4<u32>(0u, 6656u, 0u, 95052u), vec4<u32>(116264u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 60387u, 9282u, 1u), vec4<u32>(12304u, 71254u, 4294967295u, 28614u), vec4<u32>(1u, 0u, 17145u, 58491u), vec4<u32>(0u, 45618u, 15046u, 31279u), vec4<u32>(1u, 121793u, 0u, 0u), vec4<u32>(1u, 4294967295u, 0u, 11602u), vec4<u32>(53521u, 15065u, 1u, 0u), vec4<u32>(14755u, 58077u, 4294967295u, 4778u));

var<private> global3: Struct_1;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<bool> {
    global4 = Struct_1(vec2<i32>(max(41121i, global4.a.x << (0u % 32u)), ~u_input.e ^ global4.c), !vec2<bool>(all(vec4<bool>(false, global4.d.x, global3.b.x, true)), select(true, false, true)), u_input.e, global3.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global3.e, _wgslsmith_f_op_vec3_f32(abs(global3.e))))));
    let var_0 = Struct_1(~global3.a, global4.d, _wgslsmith_add_i32(~(_wgslsmith_dot_vec2_i32(global3.a, vec2<i32>(956i, global4.c)) & u_input.a.x), -2147483647i), !global4.d, vec3<f32>(_wgslsmith_f_op_f32(min(global4.e.x, 1000f)), 503f, -220f));
    var var_1 = Struct_2(Struct_1(select(~_wgslsmith_mod_vec2_i32(var_0.a, vec2<i32>(var_0.c, u_input.c)), countOneBits(u_input.a.xx), vec2<bool>(global3.b.x, var_0.d.x)), vec2<bool>(all(vec4<bool>(global3.d.x, global3.d.x, true, true)) && true, max(3905u, u_input.b.x) >= ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 26u)], 26u)]), u_input.c, vec2<bool>(select(all(vec4<bool>(true, true, false, global4.b.x)), true, global4.e.x == -1079f), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.e.x, -1030f, -1000f), vec3<f32>(global4.e.x, 1114f, global3.e.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.e.x, var_0.e.x, global3.e.x))))), !select(vec4<bool>(!var_0.d.x, any(vec2<bool>(false, global3.b.x)), true, !global4.d.x), vec4<bool>(false, global4.d.x || var_0.b.x, global4.d.x, global4.b.x), all(vec3<bool>(true, global3.b.x, global3.d.x))), Struct_1(-global4.a & (vec2<i32>(-1i) * -vec2<i32>(global4.a.x, global3.a.x)), select(!select(vec2<bool>(true, global4.d.x), vec2<bool>(global3.d.x, true), var_0.d), !var_0.d, vec2<bool>(true, true)), ~_wgslsmith_add_i32(-global4.c, _wgslsmith_sub_i32(var_0.a.x, -1i)), !var_0.b, vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(-106f, var_0.e.x)), _wgslsmith_f_op_f32(-745f - _wgslsmith_div_f32(-251f, global3.e.x)))), select(vec3<bool>(!all(vec3<bool>(true, global4.b.x, true)), true, !global3.b.x), vec3<bool>(true, true, all(!vec3<bool>(true, false, global4.d.x))), !var_0.d.x), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 4294967295u, u_input.b.x), 0u), _wgslsmith_mod_u32(~1u, ~19034u), ~u_input.b.x, global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x << (16614u % 32u)), 26u)]));
    let var_2 = Struct_1(-countOneBits(min(var_0.a, var_1.a.a)), select(vec2<bool>(false, true), !(!(!vec2<bool>(var_0.d.x, var_1.d.x))), true), -(~global3.a.x), select(select(vec2<bool>(true, false || global3.b.x), vec2<bool>(global4.d.x, !global3.b.x), true), select(select(var_1.a.d, select(vec2<bool>(var_0.b.x, true), vec2<bool>(global4.b.x, false), global4.b), vec2<bool>(false, var_1.c.b.x)), vec2<bool>(true, global3.b.x), !(var_0.d.x & true)), !(!(!var_1.b.wz))), var_1.c.e);
    let var_3 = Struct_1(abs(~u_input.a.xw), vec2<bool>(var_1.e.x > (49930u >> (_wgslsmith_div_u32(var_1.e.x, 4294967295u) % 32u)), (false | global3.d.x) & (var_2.e.x <= _wgslsmith_f_op_f32(f32(-1f) * -125f))), -16450i, vec2<bool>(all(global3.d), any(vec4<bool>(any(var_1.b.yzw), all(var_1.b), false, 1u == var_1.e.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global3.e.x)))) - -853f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.e.x))), -876f));
    return global3.b;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global1 = array<u32, 26>();
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.e.x, _wgslsmith_f_op_f32(-1767f * 1304f), _wgslsmith_f_op_f32(1f * 1000f))));
    return Struct_1(firstLeadingBit(~((arg_2.a ^ arg_0.a) & -vec2<i32>(7619i, global4.c))), vec2<bool>(arg_0.d.x, true), global3.a.x, func_3(), _wgslsmith_f_op_vec3_f32(vec3<f32>(299f, arg_2.e.x, 478f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global3.e)) - vec3<f32>(global4.e.x, -1463f, arg_0.e.x)))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> vec2<bool> {
    var var_0 = ~vec3<u32>(arg_1.e.x, ~(~(~0u)), _wgslsmith_dot_vec4_u32(arg_1.e, max(arg_1.e, arg_1.e)));
    var var_1 = !select(!any(global4.d) && global3.b.x, arg_1.c.d.x, arg_1.d.x);
    let var_2 = func_2(Struct_1(select(vec2<i32>(min(-15119i, -35210i), u_input.e >> (6875u % 32u)), u_input.a.xw, select(global3.b, arg_1.a.d, func_3())), func_3(), ~u_input.d | 0i, select(vec2<bool>(all(vec3<bool>(arg_1.a.b.x, false, global4.b.x)), true | global3.d.x), global3.b, !global4.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.e) * vec3<f32>(_wgslsmith_f_op_f32(1611f + -480f), -1702f, arg_0))), abs(_wgslsmith_sub_i32(_wgslsmith_mod_i32(i32(-1i) * -50702i, 1i), abs(7919i))), func_2(func_2(func_2(func_2(Struct_1(u_input.a.yx, vec2<bool>(global4.b.x, false), -67470i, global4.d, vec3<f32>(-281f, arg_0, 162f)), arg_1.c.c, Struct_1(vec2<i32>(global3.a.x, 41711i), vec2<bool>(global4.b.x, global4.d.x), global4.a.x, vec2<bool>(false, arg_1.b.x), vec3<f32>(1480f, arg_1.a.e.x, -404f))), 271i, func_2(arg_1.c, global4.a.x, arg_1.a)), 16749i, Struct_1(vec2<i32>(arg_1.a.c, -1i), !vec2<bool>(arg_1.d.x, arg_1.a.b.x), global4.a.x & 2147483647i, func_2(Struct_1(global4.a, global4.b, arg_1.c.a.x, vec2<bool>(global3.b.x, false), global4.e), global4.a.x, Struct_1(global3.a, global3.b, 9911i, global4.b, global3.e)).b, func_2(Struct_1(global3.a, vec2<bool>(true, true), global3.a.x, vec2<bool>(true, true), vec3<f32>(arg_0, arg_0, arg_0)), global4.c, arg_1.a).e)), ~75366i, func_2(func_2(func_2(arg_1.c, -2147483647i, Struct_1(vec2<i32>(2147483647i, u_input.a.x), vec2<bool>(global4.b.x, global4.d.x), 30857i, global4.d, global4.e)), -17689i, func_2(Struct_1(vec2<i32>(-1478i, global3.c), vec2<bool>(false, global4.b.x), 1i, global3.d, global4.e), -5563i, arg_1.a)), arg_1.a.c & 7392i, func_2(arg_1.c, _wgslsmith_sub_i32(5920i, u_input.d), arg_1.c))));
    global0 = array<vec4<i32>, 11>();
    global1 = array<u32, 26>();
    return select(global4.d, select(!(!(!vec2<bool>(arg_1.b.x, true))), vec2<bool>(arg_1.a.b.x, false), vec2<bool>(func_2(arg_1.a, global4.c, Struct_1(vec2<i32>(2147483647i, 47616i), arg_1.d.yz, u_input.e, global3.b, vec3<f32>(-102f, -515f, -532f))).b.x | !var_2.b.x, !arg_1.b.x)), global4.b);
}

fn func_1(arg_0: u32) -> f32 {
    global2 = array<vec4<u32>, 12>();
    global4 = Struct_1(_wgslsmith_sub_vec2_i32(select(vec2<i32>(-18870i, 9633i) >> ((u_input.b.zy << (u_input.b.zz % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(-vec2<i32>(global3.c, -25498i), countOneBits(vec2<i32>(global4.a.x, global4.a.x))), !any(vec3<bool>(true, global4.d.x, false))), u_input.a.yw), global4.d, reverseBits(-global3.c), !func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.e.x)), Struct_2(Struct_1(vec2<i32>(global3.c, -24061i), vec2<bool>(true, false), u_input.a.x, global3.d, global3.e), vec4<bool>(global4.d.x, true, global4.d.x, false), func_2(Struct_1(u_input.a.wy, vec2<bool>(true, true), 2147483647i, vec2<bool>(global3.d.x, global4.b.x), vec3<f32>(1222f, global4.e.x, 1061f)), global3.c, Struct_1(vec2<i32>(global4.a.x, global3.a.x), global3.d, global3.a.x, vec2<bool>(true, global4.b.x), global3.e)), vec3<bool>(false, global3.d.x, global3.d.x), vec4<u32>(arg_0, 47982u, u_input.b.x, u_input.b.x) << (global2[_wgslsmith_index_u32(0u, 12u)] % vec4<u32>(32u))), min(4810u, arg_0 | arg_0), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, u_input.b.x, 1u))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1857f), 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global3.e.x))))));
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-254f, global3.e.x, 408f)) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.e.x * global4.e.x), _wgslsmith_f_op_f32(-global4.e.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global4.e.x)), _wgslsmith_f_op_f32(abs(-1071f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.e.x) * 236f))), _wgslsmith_f_op_vec3_f32(select(global3.e, global3.e, global3.b.x | any(vec3<bool>(global4.b.x, false, true)))));
    global1 = array<u32, 26>();
    let var_1 = Struct_2(Struct_1(-u_input.a.yw, !(!(!global3.b)), global3.c, !global3.d, vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.e.x))), _wgslsmith_div_f32(var_0.x, func_2(Struct_1(vec2<i32>(5387i, 1i), global4.b, -21533i, global4.d, global3.e), -18608i, Struct_1(global4.a, global3.d, 1i, vec2<bool>(false, true), vec3<f32>(-1206f, global4.e.x, global4.e.x))).e.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1742f)))))), vec4<bool>(false, global4.d.x, true, false), func_2(Struct_1(vec2<i32>(-global3.c, -2147483647i), global4.b, u_input.e, vec2<bool>(all(global3.b), true), var_0), 28556i, func_2(func_2(func_2(Struct_1(vec2<i32>(-1i, -1i), global4.d, global4.c, global4.d, vec3<f32>(1000f, global4.e.x, 556f)), u_input.d, Struct_1(u_input.a.yy, global4.b, -8407i, global3.d, global4.e)), 10945i, func_2(Struct_1(global3.a, global4.d, -1959i, global4.d, var_0), -11702i, Struct_1(vec2<i32>(global3.a.x, -56561i), vec2<bool>(global3.b.x, false), global3.c, vec2<bool>(false, global3.d.x), vec3<f32>(global4.e.x, -397f, var_0.x)))), global4.a.x, func_2(func_2(Struct_1(u_input.a.yx, vec2<bool>(false, false), global3.a.x, vec2<bool>(global4.b.x, global3.d.x), global4.e), 2147483647i, Struct_1(global4.a, global3.d, -1i, global4.b, vec3<f32>(960f, 199f, global4.e.x))), global4.a.x, func_2(Struct_1(global3.a, vec2<bool>(false, true), global4.c, vec2<bool>(global4.b.x, global3.b.x), global3.e), u_input.d, Struct_1(vec2<i32>(-2147483647i, global4.c), global4.d, -1i, vec2<bool>(false, true), global4.e))))), vec3<bool>(false, true, false), _wgslsmith_mult_vec4_u32(~(~global2[_wgslsmith_index_u32(arg_0, 12u)]), ~firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(1u, 26u)], arg_0, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], global1[_wgslsmith_index_u32(arg_0, 26u)]) ^ global2[_wgslsmith_index_u32(56514u, 12u)])));
    return -714f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(firstTrailingBit(vec2<i32>(0i, -global4.a.x)) | firstLeadingBit(~(vec2<i32>(1656i, 11438i) >> (u_input.b.xy % vec2<u32>(32u)))), vec2<bool>(all(vec3<bool>(global4.b.x, global3.b.x, global3.d.x)), global4.e.x >= -767f), _wgslsmith_mod_i32(global3.c, u_input.e) >> (_wgslsmith_sub_u32(u_input.b.x, 0u) % 32u), global4.b, vec3<f32>(453f, _wgslsmith_div_f32(-234f, global4.e.x), 338f));
    let var_0 = select(!vec4<bool>(global3.b.x, select(true || global3.b.x, all(vec4<bool>(false, global3.d.x, false, global3.b.x)), all(vec3<bool>(false, true, false))), true, true || (false | global3.d.x)), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 26u)], 26u)]))) >= -552f, true, false, true), select(!(!vec4<bool>(true, true, global3.d.x, true)), select(vec4<bool>(global4.a.x >= u_input.d, true, global3.e.x == -591f, true), select(!vec4<bool>(global3.b.x, global3.b.x, true, true), !vec4<bool>(true, false, global4.d.x, global4.b.x), vec4<bool>(true, true, global4.d.x, global4.b.x)), any(!vec3<bool>(global3.b.x, false, false))), select(!select(vec4<bool>(true, global4.d.x, true, false), vec4<bool>(global3.d.x, global4.b.x, false, true), global4.b.x), select(!vec4<bool>(true, global4.d.x, global3.d.x, global3.d.x), !vec4<bool>(false, global3.d.x, global3.b.x, global3.b.x), true), select(!vec4<bool>(true, global3.b.x, global3.b.x, true), !vec4<bool>(true, global3.b.x, global3.b.x, global4.d.x), select(false, global4.d.x, global3.d.x)))));
    var var_1 = global4.e.x;
    let var_2 = !global4.d;
    var var_3 = Struct_2(Struct_1(select(func_2(Struct_1(vec2<i32>(-2147483647i, -2147483647i), var_0.xy, global4.c, var_0.xz, global4.e), -2147483647i, func_2(Struct_1(global3.a, global4.b, global4.c, var_2, global3.e), 0i, Struct_1(vec2<i32>(global3.c, global4.a.x), vec2<bool>(false, global3.d.x), -18992i, vec2<bool>(true, var_0.x), vec3<f32>(-673f, -1000f, -1198f)))).a, vec2<i32>(global3.a.x, -1i << (global1[_wgslsmith_index_u32(0u, 26u)] % 32u)), all(vec3<bool>(true, true, true))), !global4.b, -1i << (u_input.b.x % 32u), global4.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.e.x, 1126f, global4.e.x) + global4.e) - _wgslsmith_f_op_vec3_f32(step(global3.e, vec3<f32>(-459f, global4.e.x, global4.e.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.e - vec3<f32>(global3.e.x, -598f, global3.e.x))))), var_0, func_2(Struct_1(vec2<i32>(_wgslsmith_add_i32(2147483647i, global4.a.x), -1356i ^ u_input.a.x), select(!var_0.zy, global3.d, any(vec3<bool>(var_0.x, true, var_2.x))), abs(~global3.a.x), select(!var_2, var_0.xw, var_2.x), global3.e), 21253i, func_2(func_2(Struct_1(global3.a, global4.b, 10009i, vec2<bool>(true, false), global4.e), -6115i, Struct_1(global3.a, vec2<bool>(false, true), global4.c, vec2<bool>(false, global3.d.x), vec3<f32>(-337f, -1469f, global4.e.x))), firstLeadingBit(global4.a.x << (18994u % 32u)), Struct_1(~vec2<i32>(23705i, global4.a.x), global3.b, ~16174i, !vec2<bool>(global3.d.x, var_0.x), _wgslsmith_f_op_vec3_f32(-global4.e)))), var_0.xww, vec4<u32>(~72500u, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, abs(1u)), 26u)], countOneBits(global1[_wgslsmith_index_u32(firstLeadingBit(45980u), 26u)]), ~(~global1[_wgslsmith_index_u32(~4294967295u, 26u)])));
    let var_4 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_4.e.zx)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(221f, global3.e.x))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(var_4.e.xy, global3.e.yy)), var_4.e.zy, global3.d.x && global3.b.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(665f, -594f)))))))), _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_div_u32(16937u, var_3.e.x), global1[_wgslsmith_index_u32(var_3.e.x, 26u)] & 717u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 0u) & max(vec2<u32>(u_input.b.x, 0u), u_input.b.zy), u_input.b.zz), reverseBits(vec2<u32>(1u, abs(u_input.b.x)))));
}

