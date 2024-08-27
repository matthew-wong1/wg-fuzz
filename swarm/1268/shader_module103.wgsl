struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: i32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 23053u;

var<private> global1: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(31420u, 121052u, 69997u), vec3<u32>(1u, 4294967295u, 609u), vec3<u32>(4294967295u, 24679u, 1u), vec3<u32>(8162u, 44236u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 48519u, 61680u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 0u, 1u), vec3<u32>(15054u, 5553u, 1u), vec3<u32>(1u, 112343u, 50178u), vec3<u32>(4294967295u, 4294967295u, 53102u), vec3<u32>(13688u, 31446u, 48559u), vec3<u32>(1u, 16567u, 0u), vec3<u32>(7456u, 9195u, 1u), vec3<u32>(0u, 70418u, 56069u), vec3<u32>(18786u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 50746u), vec3<u32>(37069u, 4294967295u, 0u), vec3<u32>(0u, 1u, 52851u), vec3<u32>(54694u, 1u, 4294967295u), vec3<u32>(4294967295u, 1u, 34187u), vec3<u32>(1u, 4294967295u, 58231u));

var<private> global2: vec3<u32> = vec3<u32>(88475u, 1u, 0u);

var<private> global3: f32 = -1000f;

var<private> global4: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<i32>(-1i, -41341i, 1i, 1i), vec4<bool>(true, false, false, false)), Struct_1(vec4<i32>(1i, -1i, -1i, -53068i), vec4<bool>(true, false, false, false)), Struct_1(vec4<i32>(15977i, 90773i, i32(-2147483648), 0i), vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(1i, 26780i, i32(-2147483648), 2147483647i), vec4<bool>(true, true, false, false)), Struct_1(vec4<i32>(-43627i, 1i, -61875i, -43122i), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(1i, -61353i, 8106i, 0i), vec4<bool>(false, false, false, false)), Struct_1(vec4<i32>(2147483647i, -1i, -1i, 4470i), vec4<bool>(true, true, false, true)), Struct_1(vec4<i32>(62414i, 2147483647i, 8028i, 1i), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(-20175i, 39855i, 2147483647i, 0i), vec4<bool>(false, false, true, true)), Struct_1(vec4<i32>(19601i, i32(-2147483648), -42514i, i32(-2147483648)), vec4<bool>(true, false, true, true)), Struct_1(vec4<i32>(2147483647i, -63670i, -36151i, 0i), vec4<bool>(false, false, true, true)));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1168f * -1444f), arg_0, !arg_1.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 2056f) * arg_0), false)) * 600f), 504f);
    var var_1 = arg_1.a.b.xy;
    let var_2 = Struct_3(vec2<bool>(true, arg_1.a.b.x), !arg_1.a.b.xw, 0i, 1365f, arg_1);
    global1 = array<vec3<u32>, 22>();
    var var_3 = var_2.e;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -257f) + _wgslsmith_f_op_f32(sign(arg_0)))))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), Struct_2(arg_0.e.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(679f * 196f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1160f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 636f, -1147f, arg_0.d) * vec4<f32>(253f, arg_1.d, arg_2, -329f)))))));
    global1 = array<vec3<u32>, 22>();
    let var_1 = arg_1.e;
    var var_2 = Struct_4(Struct_2(Struct_1(~vec4<i32>(arg_3.a.x, -13153i, arg_0.c, arg_0.e.a.a.x), vec4<bool>(any(var_1.a.b.ww), false, select(true, false, arg_1.e.a.b.x), true))), vec2<i32>(arg_0.e.a.a.x & ~(~27001i), min(_wgslsmith_div_i32(arg_1.e.a.a.x, 29952i), firstTrailingBit(-2147483647i)) << (16889u % 32u)), arg_1.e, u_input.e);
    var var_3 = vec3<bool>(!any(arg_1.e.a.b), true, (arg_2 > _wgslsmith_f_op_f32(floor(arg_1.d))) == arg_3.b.x);
    return var_2.a;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> f32 {
    let var_0 = select(vec4<bool>(true | arg_1.x, -_wgslsmith_mod_i32(2147483647i, u_input.b.x) > -1i, false, false != any(!vec2<bool>(true, arg_1.x))), arg_0.a.b, arg_1.x);
    global0 = select(23215u, u_input.e.x, var_0.x);
    var var_1 = 0i;
    let var_2 = abs(firstTrailingBit(firstTrailingBit(25193u)));
    global3 = _wgslsmith_f_op_f32(158f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1f))))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(-529f, func_1(Struct_3(vec2<bool>(true, arg_1.x), vec2<bool>(arg_0.a.b.x, arg_0.a.b.x), -12673i, -283f, Struct_2(Struct_1(vec4<i32>(2147483647i, arg_0.a.a.x, arg_0.a.a.x, u_input.c.x), var_0))), Struct_3(vec2<bool>(arg_1.x, var_0.x), vec2<bool>(true, arg_0.a.b.x), 31692i, 455f, Struct_2(Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, -32627i, 0i), vec4<bool>(arg_1.x, false, true, false)))), _wgslsmith_div_f32(-625f, 577f), func_1(Struct_3(var_0.yw, vec2<bool>(arg_0.a.b.x, arg_1.x), 2147483647i, 1666f, Struct_2(global4[_wgslsmith_index_u32(u_input.e.x, 11u)])), Struct_3(vec2<bool>(arg_0.a.b.x, arg_0.a.b.x), arg_1, 55022i, -2157f, arg_0), 1120f, global4[_wgslsmith_index_u32(35416u, 11u)]).a))))), _wgslsmith_f_op_f32(1570f + 1f)));
}

fn func_4(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(687f, 298f, _wgslsmith_f_op_f32(f32(-1f) * -1957f), arg_0) + vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3239f)), _wgslsmith_f_op_f32(-636f - 241f), _wgslsmith_f_op_f32(floor(arg_0))));
    var var_1 = global4[_wgslsmith_index_u32(1u, 11u)];
    var var_2 = true;
    global4 = array<Struct_1, 11>();
    global1 = array<vec3<u32>, 22>();
    return func_1(Struct_3(var_1.b.zx, !select(var_1.b.ww, var_1.b.yx, true), 1i, _wgslsmith_div_f32(arg_0, var_0.x), Struct_2(global4[_wgslsmith_index_u32(24393u, 11u)])), Struct_3(!var_1.b.zw, vec2<bool>(firstTrailingBit(u_input.e.x) != ~41133u, true), 31537i, _wgslsmith_f_op_f32(trunc(-154f)), Struct_2(func_1(Struct_3(vec2<bool>(false, true), var_1.b.ww, var_1.a.x, arg_0, Struct_2(Struct_1(vec4<i32>(var_1.a.x, var_1.a.x, -2147483647i, var_1.a.x), var_1.b))), Struct_3(var_1.b.zy, vec2<bool>(var_1.b.x, var_1.b.x), u_input.a.x, -693f, Struct_2(global4[_wgslsmith_index_u32(13435u, 11u)])), 1235f, global4[_wgslsmith_index_u32(u_input.d.x, 11u)]).a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2231f + var_0.x), _wgslsmith_f_op_f32(-1000f + 1461f))), _wgslsmith_f_op_f32(floor(1788f))), Struct_1(_wgslsmith_clamp_vec4_i32(func_1(Struct_3(vec2<bool>(var_1.b.x, var_1.b.x), var_1.b.zw, 0i, 1524f, Struct_2(global4[_wgslsmith_index_u32(43046u, 11u)])), Struct_3(var_1.b.wx, vec2<bool>(true, var_1.b.x), u_input.a.x, -429f, Struct_2(global4[_wgslsmith_index_u32(47231u, 11u)])), -825f, global4[_wgslsmith_index_u32(~global2.x, 11u)]).a.a, ~u_input.a, min(u_input.a, var_1.a) ^ select(vec4<i32>(0i, 12215i, 46277i, u_input.c.x), u_input.a, var_1.b)), vec4<bool>(_wgslsmith_f_op_f32(exp2(var_0.x)) != _wgslsmith_f_op_f32(-arg_0), var_1.b.x, u_input.e.x <= _wgslsmith_sub_u32(0u, u_input.e.x), !func_1(Struct_3(var_1.b.xy, vec2<bool>(var_1.b.x, var_1.b.x), u_input.c.x, -284f, Struct_2(global4[_wgslsmith_index_u32(49837u, 11u)])), Struct_3(vec2<bool>(var_1.b.x, var_1.b.x), var_1.b.xx, var_1.a.x, arg_0, Struct_2(global4[_wgslsmith_index_u32(4294967295u, 11u)])), 2733f, Struct_1(var_1.a, vec4<bool>(var_1.b.x, var_1.b.x, true, var_1.b.x))).a.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 11>();
    global1 = array<vec3<u32>, 22>();
    var var_0 = Struct_4(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-238f + _wgslsmith_f_op_f32(f32(-1f) * -297f)) * _wgslsmith_f_op_f32(func_3(func_1(Struct_3(vec2<bool>(false, true), vec2<bool>(false, false), u_input.b.x, -1009f, Struct_2(Struct_1(vec4<i32>(u_input.b.x, u_input.a.x, -2147483647i, u_input.c.x), vec4<bool>(true, true, false, false)))), Struct_3(vec2<bool>(false, true), vec2<bool>(true, true), u_input.a.x, -355f, Struct_2(global4[_wgslsmith_index_u32(77056u, 11u)])), -1259f, Struct_1(u_input.c, vec4<bool>(false, false, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))))), firstTrailingBit(u_input.a.yz), Struct_2(func_1(Struct_3(func_4(-1136f).a.b.wy, vec2<bool>(false, false), ~1i, -371f, Struct_2(global4[_wgslsmith_index_u32(0u, 11u)])), Struct_3(vec2<bool>(true, true), vec2<bool>(true, true), 2147483647i, _wgslsmith_f_op_f32(round(-1567f)), func_1(Struct_3(vec2<bool>(true, false), vec2<bool>(true, true), -13403i, 1091f, Struct_2(Struct_1(vec4<i32>(u_input.b.x, 6552i, u_input.c.x, 2215i), vec4<bool>(true, false, true, true)))), Struct_3(vec2<bool>(true, false), vec2<bool>(true, true), u_input.b.x, -261f, Struct_2(Struct_1(u_input.a, vec4<bool>(false, false, false, false)))), 555f, global4[_wgslsmith_index_u32(70438u, 11u)])), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, u_input.a.x), vec4<bool>(false, true, false, false))), vec2<bool>(true, true))), func_1(Struct_3(vec2<bool>(true, true), vec2<bool>(false, false), -2147483647i, 578f, Struct_2(global4[_wgslsmith_index_u32(global2.x, 11u)])), Struct_3(vec2<bool>(false, true), vec2<bool>(true, true), -2147483647i, -454f, Struct_2(Struct_1(vec4<i32>(48043i, 37083i, u_input.c.x, -15400i), vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_f32(floor(-1000f)), global4[_wgslsmith_index_u32(~1u, 11u)]).a).a), u_input.e);
    let var_1 = _wgslsmith_f_op_f32(floor(2811f));
    let var_2 = Struct_3(var_0.a.a.b.xw, func_1(Struct_3(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), var_0.a.a.b.xw, !vec2<bool>(var_0.a.a.b.x, false)), !var_0.a.a.b.yz, var_0.a.a.a.x, var_1, Struct_2(func_1(Struct_3(var_0.c.a.b.zy, var_0.a.a.b.wz, -37262i, 1000f, Struct_2(global4[_wgslsmith_index_u32(13991u, 11u)])), Struct_3(var_0.c.a.b.yx, vec2<bool>(false, var_0.a.a.b.x), 2147483647i, var_1, var_0.a), var_1, var_0.a.a).a)), Struct_3(var_0.a.a.b.wx, var_0.c.a.b.yz, 1i, 1902f, Struct_2(global4[_wgslsmith_index_u32(0u, 11u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1636f + _wgslsmith_f_op_f32(var_1 * var_1))), var_0.a.a).a.b.wx, u_input.c.x, var_1, Struct_2(func_1(Struct_3(vec2<bool>(true, true), !vec2<bool>(false, var_0.a.a.b.x), var_0.a.a.a.x, _wgslsmith_f_op_f32(max(-185f, var_1)), Struct_2(var_0.c.a)), Struct_3(!var_0.a.a.b.yy, select(vec2<bool>(var_0.c.a.b.x, var_0.c.a.b.x), var_0.c.a.b.xx, false), -1i, -917f, func_4(var_1)), _wgslsmith_f_op_f32(388f + _wgslsmith_f_op_f32(min(var_1, -1000f))), func_4(-2448f).a).a));
    let x = u_input.a;
    s_output = StorageBuffer(~(-(var_0.b | u_input.c.xx)) & _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.yy, _wgslsmith_mult_vec2_i32(var_0.b, vec2<i32>(-11124i, u_input.c.x))), vec2<i32>(func_1(var_2, Struct_3(var_2.e.a.b.yy, vec2<bool>(false, true), var_0.b.x, -481f, Struct_2(var_0.c.a)), var_1, Struct_1(vec4<i32>(var_2.c, var_0.a.a.a.x, var_2.c, 23917i), var_0.a.a.b)).a.a.x, var_0.b.x >> (var_0.d.x % 32u))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(552f, var_2.d, -695f) + vec3<f32>(var_1, 1501f, var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-188f, -235f, -357f))))))));
}

