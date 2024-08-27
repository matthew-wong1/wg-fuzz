struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_4, 14>;

var<private> global2: vec4<i32>;

var<private> global3: array<bool, 12> = array<bool, 12>(true, true, false, false, true, false, false, false, true, true, false, true);

var<private> global4: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(-43904i, 2147483647i, 42524i), vec3<i32>(0i, -13297i, -42361i), vec3<i32>(-4476i, 1i, -16536i), vec3<i32>(-3973i, 2147483647i, -15777i), vec3<i32>(36333i, -27759i, -39541i), vec3<i32>(19508i, 2147483647i, 2147483647i), vec3<i32>(i32(-2147483648), -55701i, 7723i), vec3<i32>(12101i, 8135i, -1i), vec3<i32>(-40801i, 2147483647i, 19449i), vec3<i32>(9559i, -9682i, -6795i), vec3<i32>(-30769i, i32(-2147483648), -50364i), vec3<i32>(0i, 0i, -31313i), vec3<i32>(12331i, 0i, -1787i), vec3<i32>(-10090i, -1i, -1i), vec3<i32>(1i, 0i, 18336i), vec3<i32>(75046i, 23366i, 2147483647i), vec3<i32>(3762i, 48215i, -88206i), vec3<i32>(78049i, -6198i, 1i), vec3<i32>(-35031i, -23913i, -29603i), vec3<i32>(48615i, 0i, -22398i), vec3<i32>(-23260i, 36231i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 10236i, 34574i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    global0 = global1[_wgslsmith_index_u32(~1u, 14u)];
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1042f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1700f + 812f))))));
    let var_1 = select(vec4<bool>(!arg_0.x, arg_0.x, arg_0.x && true, true), arg_0, vec4<bool>(true, !select(all(vec4<bool>(true, arg_0.x, global3[_wgslsmith_index_u32(45671u, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)])), !arg_0.x, arg_0.x), arg_0.x, true));
    let var_2 = Struct_1(true, select(~vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(countOneBits(reverseBits(vec3<u32>(1u, 4294967295u, 90223u))), vec3<u32>(countOneBits(1u), ~14530u, ~4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 17976u, 11523u))), arg_0.x), _wgslsmith_f_op_f32(global0.a - global0.a), global0.a);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d + _wgslsmith_f_op_f32(-786f * var_2.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -465f)));
}

fn func_2() -> f32 {
    global3 = array<bool, 12>();
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1006f))));
    let var_1 = select(!vec3<bool>(true, false, global3[_wgslsmith_index_u32(max(1u, 1u >> (1u % 32u)), 12u)]), !(!vec3<bool>(true, all(vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)])), true)), select(vec3<bool>(!(!global3[_wgslsmith_index_u32(27934u, 12u)]), select(all(vec3<bool>(global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(0u, 12u)], false)), global2.x != global2.x, all(vec4<bool>(global3[_wgslsmith_index_u32(1u, 12u)], false, global3[_wgslsmith_index_u32(80950u, 12u)], true))), all(vec3<bool>(true, global3[_wgslsmith_index_u32(22338u, 12u)], true))), select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(global3[_wgslsmith_index_u32(11727u, 12u)], true, global3[_wgslsmith_index_u32(1u, 12u)])), true, true), true), global3[_wgslsmith_index_u32(~1u, 12u)]));
    var var_2 = var_1;
    let var_3 = global2.xx;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(!any(vec4<bool>(var_2.x, var_1.x, true, var_2.x)), !var_2.x || (true || global3[_wgslsmith_index_u32(1011u, 12u)]), any(!vec4<bool>(global3[_wgslsmith_index_u32(31113u, 12u)], var_2.x, false, var_2.x)), !all(var_1)))));
}

fn func_1() -> Struct_5 {
    global0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -371f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * -1232f) - _wgslsmith_div_f32(global0.a, -501f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -217f))));
    let var_0 = 0i ^ -select(-global2.x & _wgslsmith_div_i32(-2147483647i, 1i), global2.x, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, ~4294967295u), 12u)]);
    global4 = array<vec3<i32>, 22>();
    var var_1 = vec3<i32>(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(u_input.c | var_0, var_0), -1485i), global2.x, firstLeadingBit(firstTrailingBit(_wgslsmith_mod_i32(~2147483647i, u_input.b))));
    var var_2 = Struct_2(!global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(25857u, 39266u, ~1u), 12u)], Struct_1(true, _wgslsmith_mult_vec3_u32(vec3<u32>(~0u, _wgslsmith_div_u32(4294967295u, 27491u), 12029u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a, global0.a)) * global0.a), global0.a), Struct_1(global3[_wgslsmith_index_u32(countOneBits(17967u), 12u)] || !global3[_wgslsmith_index_u32(reverseBits(0u), 12u)], ~(~vec3<u32>(3708u, 4294967295u, 4294967295u)), -184f, _wgslsmith_f_op_f32(-global0.a)), Struct_1(true, ~min(reverseBits(vec3<u32>(34863u, 0u, 0u)), ~vec3<u32>(121114u, 92938u, 83860u)), global0.a, _wgslsmith_div_f32(-1573f, _wgslsmith_f_op_f32(func_2()))), select(select(select(vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 12u)], true, false), select(vec4<bool>(true, global3[_wgslsmith_index_u32(811u, 12u)], false, true), vec4<bool>(false, false, true, true), global3[_wgslsmith_index_u32(48237u, 12u)]), !vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(51439u, 12u)], false)), select(!vec4<bool>(true, false, global3[_wgslsmith_index_u32(0u, 12u)], false), !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(75631u, 12u)], global3[_wgslsmith_index_u32(39484u, 12u)], true), select(vec4<bool>(global3[_wgslsmith_index_u32(25913u, 12u)], false, global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(0u, 12u)]), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 12u)], false, global3[_wgslsmith_index_u32(32293u, 12u)], false), true)), vec4<bool>(select(global3[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(17959u, 12u)]), any(vec2<bool>(global3[_wgslsmith_index_u32(9122u, 12u)], false)), select(global3[_wgslsmith_index_u32(76596u, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)], true), any(vec3<bool>(true, global3[_wgslsmith_index_u32(13988u, 12u)], false)))), !select(vec4<bool>(false, global3[_wgslsmith_index_u32(49154u, 12u)], global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)]), !vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(0u, 12u)], false), select(global3[_wgslsmith_index_u32(11770u, 12u)], true, global3[_wgslsmith_index_u32(68768u, 12u)])), vec4<bool>(any(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 12u)], false, true, false)), false, false, true)));
    return Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a + 974f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(818f + var_2.d.d)), _wgslsmith_f_op_f32(1783f * 984f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(509f - -767f)))), _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0, countOneBits(2147483647i) | (var_0 << (0u % 32u))), min(abs(u_input.b), firstLeadingBit(global2.x))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_5, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = arg_1.a;
    let var_1 = Struct_2(!all(vec4<bool>(arg_0.x, all(vec2<bool>(true, false)), all(vec2<bool>(global3[_wgslsmith_index_u32(35216u, 12u)], true)), true)), Struct_1(all(vec4<bool>(true, true, true, true)), ~vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)), func_1().a.x), Struct_1(false, ~vec3<u32>(abs(27515u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 61716u, 4294967295u), vec3<u32>(96923u, 0u, 1u)), 1u), arg_2.a.x, global0.a), Struct_1(all(arg_0), countOneBits(~vec3<u32>(0u, 4294967295u, 0u)), arg_2.a.x, -1927f), !(!select(!vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(arg_0.x, arg_0.x, false, true), !vec4<bool>(global3[_wgslsmith_index_u32(55715u, 12u)], true, global3[_wgslsmith_index_u32(4294967295u, 12u)], true))));
    var var_2 = _wgslsmith_mult_vec3_u32(~(select(var_1.c.b, vec3<u32>(var_1.c.b.x, var_1.c.b.x, var_1.b.b.x), true) | ~(~vec3<u32>(var_1.b.b.x, var_1.c.b.x, var_1.d.b.x))), ~reverseBits(var_1.d.b));
    global4 = array<vec3<i32>, 22>();
    global1 = array<Struct_4, 14>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(trunc(arg_2.a.wy)), !vec3<bool>(true, 1597f != func_1().a.x, (global3[_wgslsmith_index_u32(84106u, 12u)] | global3[_wgslsmith_index_u32(var_1.d.b.x, 12u)]) | (global2.x <= 1i)), select(~abs(vec2<u32>(0u, var_1.b.b.x)), vec2<u32>(_wgslsmith_clamp_u32(~16420u, ~31692u, ~0u), ~var_2.x >> (max(var_1.c.b.x, 4294967295u) % 32u)), !(!arg_0.xz)), Struct_2(any(var_1.e.wxz), Struct_1(global0.a != arg_1.a, var_1.c.b, _wgslsmith_f_op_f32(floor(1608f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-836f)))), Struct_1(arg_1.a >= 221f, vec3<u32>(var_1.b.b.x | 0u, 1u, _wgslsmith_mult_u32(var_1.d.b.x, var_1.b.b.x)), global0.a, 1000f), var_1.d, !var_1.e), select(!arg_0, vec3<bool>(true, global3[_wgslsmith_index_u32(min(~var_2.x, var_2.x), 12u)], !(false || global3[_wgslsmith_index_u32(0u, 12u)])), var_1.e.xxw));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(1u, 14u)];
    var var_1 = select(true, true, any(!vec3<bool>(true, true, global3[_wgslsmith_index_u32(~arg_1.c.x, 12u)])));
    var var_2 = -_wgslsmith_mult_vec3_i32(~firstLeadingBit(global2.wzy), u_input.a.wyw);
    let var_3 = 0u;
    var var_4 = vec4<bool>(any(!(!vec4<bool>(arg_1.e.x, true, false, true))), all(!select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(74869u, 12u)]), arg_1.b, vec3<bool>(false, arg_1.d.e.x, false))) | !arg_1.e.x, true, global3[_wgslsmith_index_u32(max(~(~45022u), _wgslsmith_dot_vec3_u32(~(arg_1.d.d.b >> (vec3<u32>(arg_1.c.x, var_3, 1u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(arg_1.d.c.b, vec3<u32>(4294967295u, arg_1.c.x, var_3)))), 12u)]);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global3[_wgslsmith_index_u32(~(~min(1u, 15441u)), 12u)], ~_wgslsmith_div_vec3_u32(vec3<u32>(~4294967295u, ~4294967295u, 4294967295u << (0u % 32u)), ~vec3<u32>(1u, 1u, 1u)), 867f, _wgslsmith_f_op_f32(abs(-1088f)));
    var var_1 = var_0.d;
    global3 = array<bool, 12>();
    var var_2 = vec4<u32>(0u, var_0.b.x, ~func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, -123f, -1000f, 1000f) + vec4<f32>(var_0.d, var_0.d, 1013f, 934f))), func_4(vec3<bool>(false, true, false), Struct_4(-791f), func_1(), _wgslsmith_clamp_vec2_i32(u_input.a.xy, vec2<i32>(u_input.c, u_input.b), vec2<i32>(global2.x, -29483i)))), 3053u);
    let var_3 = func_4(select(!select(vec3<bool>(false, false, true), func_4(vec3<bool>(var_0.a, true, false), global1[_wgslsmith_index_u32(0u, 14u)], Struct_5(vec4<f32>(var_0.d, var_0.c, global0.a, 569f), -88480i), vec2<i32>(global2.x, -19400i)).e, vec3<bool>(false, var_0.a, global3[_wgslsmith_index_u32(0u, 12u)])), func_4(vec3<bool>(true, true, func_4(vec3<bool>(false, true, true), global1[_wgslsmith_index_u32(var_0.b.x, 14u)], Struct_5(vec4<f32>(var_0.d, global0.a, 1707f, var_0.d), u_input.c), global2.xz).e.x), Struct_4(1f), func_1(), ~vec2<i32>(u_input.c, u_input.d) >> (var_0.b.zz % vec2<u32>(32u))).d.e.wzx, var_0.a), global1[_wgslsmith_index_u32(func_4(vec3<bool>(all(func_4(vec3<bool>(var_0.a, global3[_wgslsmith_index_u32(var_0.b.x, 12u)], true), Struct_4(1000f), Struct_5(vec4<f32>(-274f, global0.a, -426f, global0.a), global2.x), u_input.a.zw).b), !var_0.a, true || global3[_wgslsmith_index_u32(~var_0.b.x, 12u)]), Struct_4(global0.a), func_1(), vec2<i32>(0i, -21817i) >> (min(_wgslsmith_add_vec2_u32(vec2<u32>(58197u, var_2.x), var_0.b.xx), vec2<u32>(var_2.x, 1u) >> (vec2<u32>(var_2.x, var_2.x) % vec2<u32>(32u))) % vec2<u32>(32u))).d.d.b.x, 14u)], Struct_5(vec4<f32>(_wgslsmith_f_op_f32(709f - _wgslsmith_f_op_f32(select(749f, var_0.c, global3[_wgslsmith_index_u32(var_2.x, 12u)]))), -463f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * global0.a) - -120f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c, -450f)))), -2147483647i), vec2<i32>(4540i, _wgslsmith_sub_i32(34105i, u_input.b))).d;
    var var_4 = select(vec3<i32>(countOneBits(-global2.x), -abs(u_input.d), -select(0i, 1i, false)) & _wgslsmith_clamp_vec3_i32(min(select(u_input.a.yxx, vec3<i32>(-2147483647i, -12862i, u_input.d), true), global2.zyw), ~global2.ywx, u_input.a.zxz), firstTrailingBit(vec3<i32>(u_input.d, 2147483647i, reverseBits(firstTrailingBit(1i)))), func_4(func_4(vec3<bool>(false, global3[_wgslsmith_index_u32(var_2.x, 12u)], true), global1[_wgslsmith_index_u32(abs(var_2.x), 14u)], func_1(), vec2<i32>(1i, abs(0i))).b, Struct_4(var_0.d), func_1(), vec2<i32>(global2.x, (u_input.b ^ 5035i) & 13883i)).d.e.zwz);
    global3 = array<bool, 12>();
    global3 = array<bool, 12>();
    var_0 = func_4(select(var_3.e.xzx, !(!func_4(var_3.e.yxz, Struct_4(global0.a), Struct_5(vec4<f32>(1610f, 426f, -1396f, global0.a), u_input.d), vec2<i32>(2147483647i, 2147483647i)).e), all(!var_3.e)), Struct_4(-992f), Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.c - var_3.b.d), -979f, _wgslsmith_f_op_f32(var_0.c + 676f), var_0.d) * _wgslsmith_f_op_vec4_f32(vec4<f32>(256f, 187f, 569f, var_3.c.d) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_3.b.d, 1000f, 586f)))), global2.x), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(46560i, var_4.x) | vec2<i32>(var_4.x, 18661i), u_input.a.zy), -vec2<i32>(10276i, 7182i), _wgslsmith_mult_vec2_i32(~var_4.yz, countOneBits(_wgslsmith_sub_vec2_i32(var_4.xx, vec2<i32>(-23257i, 10831i)))))).d.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, var_0.c, -585f, 1107f) - vec4<f32>(653f, var_0.c, 1500f, -1000f)))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-988f, 1999f, var_3.b.d, 1023f), vec4<f32>(var_0.d, -274f, -207f, var_0.c))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, var_0.d, var_3.d.c) - vec3<f32>(-747f, var_3.b.c, var_3.b.c)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.d.d, global0.a, var_0.c)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(846f, -1000f, 1005f)))))), _wgslsmith_f_op_f32(1339f * _wgslsmith_f_op_f32(min(var_3.d.d, func_1().a.x))), _wgslsmith_mult_i32(~_wgslsmith_mult_i32(1i, var_4.x), -40764i));
}

