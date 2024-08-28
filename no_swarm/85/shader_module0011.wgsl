struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-261f))))), select(select(global0[_wgslsmith_index_u32(arg_0.x, 3u)], !global0[_wgslsmith_index_u32(59746u, 3u)], vec4<bool>(true, true, true, true)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4293u, _wgslsmith_div_u32(arg_0.x, u_input.b.x)), 3u)], true));
    let var_1 = _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1425f, _wgslsmith_f_op_f32(min(var_0.a, -1001f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(160f))), true)), 291f)));
    var var_2 = ~arg_0.x;
    var_2 = 4294967295u;
    return !((var_0.b.x || var_0.b.x) || (~_wgslsmith_dot_vec3_u32(vec3<u32>(34129u, u_input.b.x, arg_0.x), vec3<u32>(u_input.b.x, 38201u, 8555u)) == ~_wgslsmith_sub_u32(u_input.b.x, arg_0.x)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - 724f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -500f))) - 122f), arg_1.b);
    var_0 = arg_1;
    return Struct_2(Struct_1(var_0.a, !vec4<bool>(arg_2, func_3(u_input.b), true, false)), arg_1.b, u_input.b.yx, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(858f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a, 1372f))))), select(select(vec4<bool>(true, var_0.b.x, arg_1.b.x, var_0.b.x), vec4<bool>(false, false, arg_1.b.x, false), arg_1.b), !var_0.b, vec4<bool>(var_0.b.x, any(vec4<bool>(false, false, arg_2, arg_1.b.x)), true, all(vec2<bool>(false, arg_2))))), vec3<bool>(true, false, true));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_2) -> bool {
    var var_0 = -2147483647i;
    global0 = array<vec4<bool>, 3>();
    global0 = array<vec4<bool>, 3>();
    var var_1 = func_2(~select(u_input.b.x, arg_2.c.x, func_2(u_input.b.x, Struct_1(arg_2.a.a, vec4<bool>(arg_2.a.b.x, true, true, arg_2.d.b.x)), !arg_2.d.b.x).b.x), Struct_1(_wgslsmith_f_op_f32(-1112f + arg_0.x), !vec4<bool>(arg_2.a.b.x, true, arg_2.b.x, !arg_2.d.b.x)), true).d.a;
    global0 = array<vec4<bool>, 3>();
    return arg_2.e.x;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: bool, arg_3: vec2<bool>) -> vec3<f32> {
    var var_0 = _wgslsmith_mult_i32(max(min(_wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(u_input.d, 34781i)), 2147483647i), ~(~(-1i))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(19443i, -292i, u_input.c)), select(vec3<i32>(-8355i, u_input.d, 1748i), vec3<i32>(17495i, u_input.d, u_input.d), arg_0.wzz)), ~(~vec3<i32>(u_input.c, -5804i, u_input.c))), _wgslsmith_mod_i32(~(-24056i), u_input.a)));
    global0 = array<vec4<bool>, 3>();
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -27591i, -36803i), vec3<i32>(970i, u_input.a, u_input.c))), vec3<i32>(0i, -u_input.c, u_input.a)), min(countOneBits(vec3<i32>(u_input.c, u_input.c, -9390i)), countOneBits(abs(vec3<i32>(u_input.a, u_input.d, -1i))))));
    let var_2 = u_input.b.x;
    var_0 = -(~var_1);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-948f, -605f))), _wgslsmith_f_op_f32(sign(-1121f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -128f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(213f, -1188f, 1324f), vec3<f32>(172f, 906f, 2083f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(623f, 294f, 1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-905f, -931f, 1958f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(400f, 948f, -2617f))))), func_2(max(_wgslsmith_add_u32(34242u, var_2), _wgslsmith_sub_u32(52513u, 1u)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -190f), arg_0), func_3(vec3<u32>(0u, u_input.b.x, 8039u))).a.b.www)));
}

fn func_1(arg_0: u32) -> vec3<i32> {
    global0 = array<vec4<bool>, 3>();
    var var_0 = _wgslsmith_f_op_vec3_f32(func_5(select(vec4<bool>(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1394f, 1479f, -1000f, -1054f) - vec4<f32>(833f, -2154f, -810f, -919f)), _wgslsmith_f_op_f32(select(653f, 690f, false)), func_2(u_input.b.x, Struct_1(1029f, global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), false)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)), false, true), vec4<bool>(true, true, true, func_3(select(u_input.b, vec3<u32>(arg_0, arg_0, 56021u), vec3<bool>(false, true, false)))), !vec4<bool>(true, true, all(vec3<bool>(false, true, true)), true)), vec3<bool>(select(u_input.c, u_input.c, true) != -(~(-37273i)), func_2(16405u, Struct_1(_wgslsmith_f_op_f32(241f - -477f), vec4<bool>(false, true, false, true)), any(func_2(4294967295u, Struct_1(-900f, global0[_wgslsmith_index_u32(73915u, 3u)]), true).b.zyw)).a.b.x, select(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(133f, -225f, 2046f, 756f) * vec4<f32>(-502f, -1218f, 113f, 1254f)), 313f, Struct_2(Struct_1(604f, global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), global0[_wgslsmith_index_u32(44322u, 3u)], u_input.b.zz, Struct_1(-1317f, global0[_wgslsmith_index_u32(1u, 3u)]), vec3<bool>(false, false, true))), !all(vec2<bool>(false, true)), !func_2(5460u, Struct_1(-152f, vec4<bool>(false, false, false, true)), false).b.x)), false, !select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), !func_2(4294967295u, Struct_1(863f, global0[_wgslsmith_index_u32(42514u, 3u)]), true).a.b.xx, false)));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_5(vec4<bool>(false, _wgslsmith_f_op_f32(-var_0.x) > -133f, all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), all(func_2(1u, Struct_1(-435f, vec4<bool>(true, true, true, false)), false).b.wwx)), !vec3<bool>(true, 52460u == arg_0, -1i <= u_input.a), any(func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 31735u, u_input.b.x, u_input.b.x), vec4<u32>(1u, u_input.b.x, 62083u, 17323u)), Struct_1(var_0.x, vec4<bool>(true, true, true, false)), true).a.b), !select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true)))));
    var var_1 = Struct_1(680f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(select(vec4<u32>(4294967295u, 4920u, 20392u, 1u), vec4<u32>(arg_0, 24833u, 1u, u_input.b.x), global0[_wgslsmith_index_u32(u_input.b.x, 3u)])), vec4<u32>(~u_input.b.x, 39828u >> (u_input.b.x % 32u), 1u, select(0u, 4294967295u, true))), countOneBits(vec4<u32>(0u, u_input.b.x, 180109u, u_input.b.x) >> (~vec4<u32>(arg_0, 77277u, 71655u, 0u) % vec4<u32>(32u)))), 3u)]);
    let var_2 = firstTrailingBit(0u);
    return abs(vec3<i32>(_wgslsmith_div_i32(1i, -u_input.d), 2147483647i, 34556i) | vec3<i32>(~(u_input.a & u_input.c), u_input.d, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 27187i, u_input.d, 18090i), vec4<i32>(384i, u_input.d, -31788i, 18199i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~vec4<i32>(_wgslsmith_add_i32(-2147483647i, 2147483647i), u_input.c, u_input.d >> (u_input.b.x % 32u), u_input.a)));
    var var_1 = -func_1(u_input.b.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-190f + -1541f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -669f) - 1132f)), 343f));
    let var_3 = Struct_2(func_2(4294967295u, Struct_1(-144f, func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(27133u, u_input.b.x, u_input.b.x), u_input.b), Struct_1(var_2.x, vec4<bool>(false, true, false, false)), 0u < u_input.b.x).d.b), false).a, vec4<bool>(!(true | func_4(vec4<f32>(-312f, -1358f, var_2.x, -1645f), 879f, Struct_2(Struct_1(1155f, global0[_wgslsmith_index_u32(0u, 3u)]), global0[_wgslsmith_index_u32(u_input.b.x, 3u)], vec2<u32>(0u, u_input.b.x), Struct_1(151f, global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), vec3<bool>(false, false, true)))), !(select(false, true, true) != true), _wgslsmith_div_i32(26484i, 1i) <= (_wgslsmith_mult_i32(var_1.x, 52619i) & -1i), all(global0[_wgslsmith_index_u32(4294967295u, 3u)]) && true), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, ~select(4294967295u, u_input.b.x, false)), ~(vec2<u32>(16635u, u_input.b.x) | u_input.b.zy)), func_2(reverseBits(18231u), Struct_1(var_2.x, !(!global0[_wgslsmith_index_u32(1u, 3u)])), false).d, vec3<bool>(!(func_2(68565u, Struct_1(358f, global0[_wgslsmith_index_u32(72517u, 3u)]), false).c.x > ~u_input.b.x), true != (func_2(1u, Struct_1(-798f, vec4<bool>(true, false, false, true)), false).c.x == (68719u >> (u_input.b.x % 32u))), false));
    var_0 = _wgslsmith_mult_vec4_i32(abs(select(-(vec4<i32>(0i, var_1.x, -1i, 1i) ^ vec4<i32>(1i, var_0.x, -1i, var_0.x)), ~(~vec4<i32>(u_input.d, 15878i, 2147483647i, var_0.x)), !var_3.e.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(34363i, -2147483647i), min(var_1.yz, vec2<i32>(var_0.x, var_0.x)) ^ var_0.xw), -u_input.a, var_1.x, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 18855i, u_input.d), ~var_0.zzx))));
    var var_4 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2645f) * _wgslsmith_f_op_f32(1002f - _wgslsmith_f_op_vec3_f32(func_5(var_4.b, vec3<bool>(var_3.e.x, true, true), false, vec2<bool>(var_4.b.x, false))).x))), vec4<i32>(0i, abs(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(21933i, var_0.x), var_1.zx, var_1.zz), var_0.xw)), ~(~var_1.x), -func_1(u_input.b.x).x), _wgslsmith_f_op_f32(-var_3.d.a));
}

