struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: i32;

var<private> global2: u32;

var<private> global3: array<u32, 14> = array<u32, 14>(4294967295u, 0u, 1u, 80972u, 0u, 38119u, 54870u, 0u, 30715u, 1u, 0u, 30002u, 1u, 29039u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3, arg_3: u32) -> u32 {
    global2 = 0u;
    var var_0 = Struct_2(Struct_1(max(u_input.a.x << ((1u | arg_2.b.x) % 32u), _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, global3[_wgslsmith_index_u32(0u, 14u)]), global3[_wgslsmith_index_u32(~arg_2.a.a.a, 14u)])), any(vec2<bool>(all(vec3<bool>(true, global0.x, arg_0.a.b)), arg_2.c.b && arg_2.c.b)), min(-1i, ~(1i ^ arg_0.a.d)), _wgslsmith_mod_i32(~(-36906i), _wgslsmith_add_i32(_wgslsmith_div_i32(0i, arg_0.a.d), i32(-1i) * -11326i)), arg_3));
    var_0 = Struct_2(var_0.a);
    global3 = array<u32, 14>();
    var var_1 = arg_2.c.c >= 0i;
    return select(_wgslsmith_dot_vec3_u32(select(u_input.a.zzw, vec3<u32>(arg_0.a.e, _wgslsmith_sub_u32(u_input.a.x, arg_0.a.a), global3[_wgslsmith_index_u32(countOneBits(global3[_wgslsmith_index_u32(26727u, 14u)]), 14u)]), ~global3[_wgslsmith_index_u32(arg_3, 14u)] <= ~global3[_wgslsmith_index_u32(29242u, 14u)]), vec3<u32>(19753u, 34096u, ~1u)), 0u, any(!vec2<bool>(var_0.a.b | false, var_0.a.c != arg_0.a.c)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> f32 {
    var var_0 = !global0.xx;
    var var_1 = Struct_2(Struct_1(~74657u, -1202f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), 43355i, 2147483647i, ~func_3(Struct_2(arg_1), _wgslsmith_f_op_f32(max(arg_2, -436f)), Struct_3(Struct_2(arg_1), vec2<u32>(25518u, arg_1.e), arg_1), u_input.a.x)));
    var_0 = select(!global0.yy, !vec2<bool>(!arg_1.b, var_1.a.b), !all(vec4<bool>(true, any(vec3<bool>(false, true, arg_1.b)), any(vec2<bool>(arg_1.b, var_0.x)), true)));
    let var_2 = -arg_1.c;
    var var_3 = 310f;
    return _wgslsmith_f_op_f32(-927f * arg_2);
}

fn func_4(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(Struct_1(27315u, true, 1i, 1i >> (func_3(Struct_2(Struct_1(global3[_wgslsmith_index_u32(86812u, 14u)], global0.x, -2147483647i, -10131i, 69221u)), -309f, Struct_3(Struct_2(Struct_1(21143u, global0.x, -66860i, 14299i, 0u)), vec2<u32>(u_input.a.x, 0u), Struct_1(4294967295u, true, 11548i, -14521i, global3[_wgslsmith_index_u32(88903u, 14u)])), u_input.a.x) % 32u), 1u)), u_input.a.zz << (~(~vec2<u32>(4294967295u, 67495u)) % vec2<u32>(32u)), Struct_1(1u, global0.x, -_wgslsmith_add_i32(23153i, 1i), max(countOneBits(firstLeadingBit(-3241i)), -155i), 0u));
    global1 = -725i | ~var_0.a.a.d;
    global1 = 0i;
    let var_1 = Struct_2(var_0.c);
    let var_2 = Struct_3(Struct_2(Struct_1(global3[_wgslsmith_index_u32(select(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)], 0u), var_1.a.a ^ 0u, var_0.c.b), 14u)], var_1.a.b, var_0.a.a.d, 1i, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 6459u), u_input.a.zw))), ~vec2<u32>(abs(u_input.a.x), ~1u), Struct_1(var_1.a.a, !global0.x, _wgslsmith_clamp_i32(-(var_0.a.a.c ^ var_1.a.c), 21193i, var_1.a.c), ~var_1.a.d & _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.d, var_0.a.a.d), _wgslsmith_mod_vec2_i32(vec2<i32>(52404i, var_1.a.c), vec2<i32>(var_1.a.c, var_0.c.c))), ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_1.a.e, 1u), 1u)));
    return Struct_2(Struct_1(70854u, true | global0.x, -13370i, abs(_wgslsmith_div_i32(0i, -56075i)), 1u));
}

fn func_1() -> Struct_3 {
    let var_0 = -2638i;
    var var_1 = Struct_3(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(Struct_1(0u, global0.x, var_0, -4886i, 79365u), Struct_1(2206u, global0.x, var_0, var_0, 4294967295u), -1784f, true)))))), vec2<u32>(global3[_wgslsmith_index_u32(65153u | ~u_input.a.x, 14u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(21627u, global3[_wgslsmith_index_u32(u_input.a.x, 14u)]) & 13157u, 14u)] ^ ~26139u), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(countOneBits(global3[_wgslsmith_index_u32(u_input.a.x, 14u)]), 14u)], u_input.a.x & u_input.a.x), vec2<u32>(1u, 47339u)), !all(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)), firstLeadingBit(var_0), 58486i, 55497u));
    let var_2 = vec4<bool>(var_1.c.b, global0.x, false, false);
    global0 = select(vec3<bool>(!all(!vec2<bool>(false, var_2.x)), !(_wgslsmith_div_i32(var_1.a.a.c, var_0) < _wgslsmith_mult_i32(var_1.a.a.c, -15467i)), ~u_input.a.x > (select(4294967295u, 55216u, false) >> (4294967295u % 32u))), vec3<bool>(global0.x, _wgslsmith_f_op_f32(trunc(1f)) >= _wgslsmith_div_f32(566f, _wgslsmith_f_op_f32(f32(-1f) * -1808f)), var_2.x && global0.x), var_2.wxy);
    var var_3 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(global3[_wgslsmith_index_u32(var_1.b.x, 14u)], var_1.b.x) & reverseBits(vec2<u32>(global3[_wgslsmith_index_u32(1u, 14u)], 4294967295u)), var_1.b), select(u_input.a.xw, vec2<u32>(var_1.c.e, ~4294967295u), vec2<bool>(true, false))), select(!(2147483647i > var_1.a.a.d) & true, true, global0.x), -4162i, ~(-3583i), min(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-313f - 654f), _wgslsmith_f_op_f32(-1285f - 1721f)))).a.a, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.ww, _wgslsmith_sub_vec2_u32(var_1.b, vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10441u, 14u)], 14u)], 0u))), ~(var_1.b.x >> (global3[_wgslsmith_index_u32(var_1.b.x, 14u)] % 32u)))));
    return Struct_3(var_1.a, vec2<u32>(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(var_3.e, 14u)] | 0u, 0u) | 4294967295u, min(max(var_1.b.x, global3[_wgslsmith_index_u32(~1u, 14u)]), 15403u)), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(758f * -2107f), 1799f)) - _wgslsmith_f_op_f32(func_2(func_4(1098f).a, func_4(117f).a, -148f, true)))).a);
}

fn func_5(arg_0: Struct_3) -> i32 {
    global3 = array<u32, 14>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(757f * -464f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1710f))), -1568f, 807f));
    var var_1 = select(vec3<bool>(arg_0.c.b, any(select(!vec3<bool>(true, true, arg_0.c.b), !vec3<bool>(false, arg_0.c.b, arg_0.a.a.b), vec3<bool>(true, true, true))), arg_0.a.a.b), !vec3<bool>(arg_0.c.b, !(u_input.a.x < 4294967295u), ~33657u > u_input.a.x), vec3<bool>(func_1().a.a.b, false, true));
    var var_2 = arg_0;
    var var_3 = var_2.a.a;
    return i32(-1i) * -1i;
}

fn func_6(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global3 = array<u32, 14>();
    var var_0 = arg_0;
    let var_1 = !(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(arg_3, arg_2.d, arg_1, 1i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(3645i, arg_1, -10086i, 1i), vec4<i32>(arg_2.c, arg_3, -2147483647i, -2147483647i))) >= -(arg_2.c >> (u_input.a.x % 32u)));
    let var_2 = select(select(!(!vec4<bool>(false, true, var_1, true)), !select(select(vec4<bool>(var_1, false, true, var_1), vec4<bool>(true, var_1, true, true), vec4<bool>(arg_2.b, false, var_1, false)), vec4<bool>(global0.x, false, true, var_1), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(abs(var_0.x)) > arg_0.x), select(vec4<bool>((global3[_wgslsmith_index_u32(0u, 14u)] ^ 53564u) == _wgslsmith_mult_u32(arg_2.e, u_input.a.x), !func_4(var_0.x).a.b, func_4(_wgslsmith_f_op_f32(f32(-1f) * -434f)).a.b, all(vec3<bool>(true, true, var_1))), !vec4<bool>(!arg_2.b, true && arg_2.b, arg_2.b, all(vec4<bool>(global0.x, var_1, arg_2.b, false))), select(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) != _wgslsmith_mult_u32(22019u, 24607u), _wgslsmith_f_op_f32(866f * var_0.x) >= -920f, all(!vec3<bool>(global0.x, var_1, var_1)))), true);
    let var_3 = vec4<i32>(-((-1i ^ select(arg_1, arg_1, false)) ^ func_1().a.a.d), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_3, ~11133i, ~func_5(Struct_3(Struct_2(arg_2), vec2<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 14u)], arg_2.a), Struct_1(global3[_wgslsmith_index_u32(arg_2.e, 14u)], true, arg_3, arg_1, 1u)))), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c, arg_3, -1i, arg_3), vec4<i32>(arg_2.c, arg_1, 1i, arg_2.d)), arg_3 << (global3[_wgslsmith_index_u32(65956u, 14u)] % 32u))), min(arg_2.d, ~abs(max(2147483647i, arg_1))), max(arg_2.d, arg_3) & -37020i);
    return func_4(arg_0.x).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-652f, 316f))), max(-1i, -6527i), Struct_1(firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x ^ 27764u, _wgslsmith_dot_vec4_u32(vec4<u32>(47755u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)], 24092u, global3[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec4<u32>(102857u, u_input.a.x, u_input.a.x, 50426u)))), false, func_5(func_1()), 1i, 59609u), -1877i);
    var var_1 = func_1();
    global2 = _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(var_0.a, 14u)], _wgslsmith_mod_u32(13213u, _wgslsmith_dot_vec3_u32(~abs(u_input.a.zyw), reverseBits(vec3<u32>(1u, var_0.a, 54988u)))), 4294967295u);
    global2 = ~var_1.c.a;
    var var_2 = func_4(-831f);
    var_2 = var_1.a;
    var_1 = Struct_3(func_1().a, var_1.b, func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(710f)))), 1531f))).a);
    var var_3 = Struct_2(Struct_1(_wgslsmith_clamp_u32(1u, ~global3[_wgslsmith_index_u32(43888u, 14u)] << ((var_1.c.e >> (global3[_wgslsmith_index_u32(1u, 14u)] % 32u)) % 32u), _wgslsmith_add_u32(countOneBits(global3[_wgslsmith_index_u32(var_2.a.e, 14u)]), _wgslsmith_add_u32(var_2.a.e, u_input.a.x))), !((var_2.a.c < var_2.a.d) & true), -(~47794i), func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-674f, 1000f), vec2<f32>(-2477f, -450f)))), 1i, func_6(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1016f, -625f) - vec2<f32>(-286f, 1045f)), -2147483647i, Struct_1(1u, true, -2147483647i, var_0.d, var_0.a), ~(-1i)), -var_2.a.d).d, var_2.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_1.c.a, ~func_4(-2142f).a.e, var_2.a.e >> (38148u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1056f, _wgslsmith_f_op_f32(floor(-1506f)))), countOneBits(~firstLeadingBit(vec4<u32>(3296u, 0u, 46324u, 4294967295u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(499f, 224f, -435f, 347f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(539f, -521f, -204f, -1173f) * vec4<f32>(796f, 786f, 1000f, 2200f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1173f, 503f, -301f, -879f) * vec4<f32>(522f, 379f, -407f, 1010f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(423f, -1335f, 146f, -1332f) - vec4<f32>(1774f, -351f, -672f, 2258f)))))));
}

