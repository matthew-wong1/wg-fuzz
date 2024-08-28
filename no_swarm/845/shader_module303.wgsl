struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(190f, -577f, 1018f, 431f);

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(true, vec3<i32>(43960i, -10314i, 0i), false, vec4<i32>(-1i, i32(-2147483648), 91607i, i32(-2147483648)), Struct_1(-1i, 2147483647i, vec4<i32>(11519i, 0i, i32(-2147483648), -50405i), 37i)), Struct_2(true, vec3<i32>(61614i, 24650i, -22996i), true, vec4<i32>(51986i, 0i, 49959i, 4576i), Struct_1(2147483647i, 2147483647i, vec4<i32>(-1i, 13069i, 6895i, 1i), 1i)), Struct_2(true, vec3<i32>(-1i, i32(-2147483648), 2147483647i), true, vec4<i32>(i32(-2147483648), 34799i, -12547i, 1i), Struct_1(-1i, -1i, vec4<i32>(2147483647i, -62804i, i32(-2147483648), i32(-2147483648)), 1i)), Struct_2(true, vec3<i32>(-20360i, 25137i, 2147483647i), false, vec4<i32>(-76225i, -21846i, -1i, 2147483647i), Struct_1(0i, 1i, vec4<i32>(-1i, -17147i, -1810i, i32(-2147483648)), 0i)), Struct_2(false, vec3<i32>(-18635i, 4499i, 2147483647i), true, vec4<i32>(25251i, 30559i, 47285i, 43294i), Struct_1(2630i, -1212i, vec4<i32>(27081i, 35000i, 1i, 1i), 12887i)), Struct_2(true, vec3<i32>(-1i, -11602i, -16800i), false, vec4<i32>(-15730i, -1i, -34264i, 2147483647i), Struct_1(-1i, 2147483647i, vec4<i32>(-18461i, -1i, -1i, 45406i), -1i)), Struct_2(true, vec3<i32>(i32(-2147483648), 0i, 37174i), false, vec4<i32>(50755i, i32(-2147483648), 33702i, -56906i), Struct_1(6665i, 2147483647i, vec4<i32>(-1i, 1i, -1i, 6956i), 1i)), Struct_2(false, vec3<i32>(27074i, -4302i, -18861i), true, vec4<i32>(i32(-2147483648), 5517i, 1i, 2147483647i), Struct_1(-13403i, -33309i, vec4<i32>(-1i, i32(-2147483648), 69856i, i32(-2147483648)), 0i)), Struct_2(false, vec3<i32>(2147483647i, -3023i, 0i), true, vec4<i32>(38860i, -49804i, -2630i, -13528i), Struct_1(37463i, 1i, vec4<i32>(18137i, 0i, i32(-2147483648), i32(-2147483648)), -6231i)), Struct_2(true, vec3<i32>(0i, -50631i, 1i), false, vec4<i32>(28772i, -23052i, 30263i, 2147483647i), Struct_1(2147483647i, -40740i, vec4<i32>(0i, -1i, 36044i, 0i), -53035i)), Struct_2(false, vec3<i32>(-14421i, -5579i, 0i), false, vec4<i32>(29350i, -34546i, i32(-2147483648), -37467i), Struct_1(63545i, 1163i, vec4<i32>(-1i, 2147483647i, 7634i, 17077i), 2147483647i)), Struct_2(true, vec3<i32>(0i, 25158i, i32(-2147483648)), true, vec4<i32>(1i, i32(-2147483648), 2147483647i, 0i), Struct_1(-69103i, -15281i, vec4<i32>(-1i, i32(-2147483648), 0i, 1i), -1i)), Struct_2(true, vec3<i32>(-24265i, 49998i, i32(-2147483648)), true, vec4<i32>(1i, 32424i, 2147483647i, i32(-2147483648)), Struct_1(2147483647i, 16221i, vec4<i32>(11196i, 0i, -1i, -3866i), -1i)), Struct_2(true, vec3<i32>(1i, 33858i, 19386i), true, vec4<i32>(i32(-2147483648), 29675i, -24331i, -25283i), Struct_1(13445i, -11114i, vec4<i32>(26230i, -1i, 1i, -22775i), 2147483647i)), Struct_2(false, vec3<i32>(2147483647i, 22960i, 0i), false, vec4<i32>(i32(-2147483648), 15437i, -46306i, i32(-2147483648)), Struct_1(1i, -1i, vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -2881i), 1i)));

var<private> global2: array<Struct_1, 12>;

var<private> global3: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(0u, 1u, 5695u), vec3<u32>(13943u, 2321u, 4294967295u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(0u, 19015u, 64654u), vec3<u32>(4294967295u, 45245u, 4294967295u), vec3<u32>(9588u, 20109u, 4294967295u), vec3<u32>(31477u, 0u, 46919u), vec3<u32>(11812u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 79101u), vec3<u32>(37077u, 0u, 1u), vec3<u32>(19138u, 4294967295u, 52323u), vec3<u32>(4294967295u, 51202u, 1u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec4<f32> {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(27051u, u_input.d, u_input.d, u_input.b)), u_input.a), _wgslsmith_mod_u32(~u_input.a.x, countOneBits(_wgslsmith_clamp_u32(u_input.a.x, u_input.b, u_input.b) << (1u % 32u))), 14671u);
    var var_1 = true;
    let var_2 = global0.yx;
    let var_3 = global1[_wgslsmith_index_u32(~(~(~0u) & min(u_input.d, 4294967295u)), 15u)];
    var_0 = _wgslsmith_mult_vec3_u32(~_wgslsmith_clamp_vec3_u32(global3[_wgslsmith_index_u32(u_input.b, 12u)] | global3[_wgslsmith_index_u32(min(510u, u_input.a.x), 12u)], _wgslsmith_sub_vec3_u32(max(global3[_wgslsmith_index_u32(5429u, 12u)], global3[_wgslsmith_index_u32(u_input.b, 12u)]), global3[_wgslsmith_index_u32(~4294967295u, 12u)]), ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_0.x, var_0.x), vec3<u32>(u_input.a.x, var_0.x, 4294967295u))), vec3<u32>(4294967295u ^ _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.x, 1u, 1u), ~u_input.d), var_0.x, 27635u));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(737f)), _wgslsmith_f_op_f32(trunc(1000f)), var_2.x, 1910f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(665f, global0.x, var_2.x, 1000f))))));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(floor(983f))), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(126f + arg_0), 455f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3()), vec4<f32>(global0.x, arg_0, global0.x, _wgslsmith_f_op_f32(-global0.x)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false)))));
    global1 = array<Struct_2, 15>();
    var var_0 = Struct_2(!any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), true)), -vec3<i32>(u_input.c, _wgslsmith_add_i32(u_input.c, u_input.c), u_input.c), !(!all(vec4<bool>(false, false, false, false))) || true, ~(-(~vec4<i32>(u_input.c, 0i, -2147483647i, 45001i))), Struct_1(reverseBits(countOneBits(24174i)), u_input.c, vec4<i32>(-15317i, abs(u_input.c), ~38306i << (u_input.d % 32u), _wgslsmith_mod_i32(u_input.c, ~(-2147483647i))), u_input.c));
    var_0 = Struct_2(false, _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(select(var_0.e.c.www, _wgslsmith_div_vec3_i32(var_0.e.c.xxw, var_0.b), vec3<bool>(var_0.c, true, true)), var_0.d.zwx), ~(-var_0.b)), !all(vec4<bool>(var_0.c, true, true, any(vec2<bool>(var_0.a, true)))), -(max(var_0.e.c, _wgslsmith_add_vec4_i32(var_0.e.c, vec4<i32>(-11314i, 2147483647i, 1i, -29315i))) << (vec4<u32>(u_input.a.x, abs(0u), u_input.b, firstTrailingBit(0u)) % vec4<u32>(32u))), Struct_1(u_input.c, _wgslsmith_clamp_i32(var_0.b.x, 0i, reverseBits(u_input.c)) | ~max(var_0.d.x, -44581i), var_0.e.c, _wgslsmith_sub_i32(abs(-var_0.b.x), abs(14107i))));
    var var_1 = -1157f;
    return select(select(vec3<bool>(var_0.c, false, false), !vec3<bool>(all(vec4<bool>(var_0.a, var_0.a, false, false)), var_0.c, false), var_0.e.c.x >= var_0.d.x), select(select(!(!vec3<bool>(var_0.a, true, true)), vec3<bool>(u_input.a.x >= u_input.d, any(vec3<bool>(var_0.a, true, false)), all(vec4<bool>(var_0.c, var_0.c, true, false))), true), select(vec3<bool>(var_0.c, !var_0.a, all(vec3<bool>(false, var_0.c, true))), select(!vec3<bool>(var_0.a, true, var_0.a), select(vec3<bool>(var_0.a, true, true), vec3<bool>(true, var_0.a, true), var_0.a), u_input.c >= u_input.c), vec3<bool>(u_input.e.x != 4294967295u, all(vec2<bool>(true, true)), true)), vec3<bool>(true, var_0.a, false)), select(select(!select(vec3<bool>(false, var_0.a, false), vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(var_0.c, false, true)), select(select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(var_0.c, true, var_0.a), vec3<bool>(true, true, var_0.c)), !vec3<bool>(var_0.c, var_0.a, true), select(vec3<bool>(false, var_0.c, false), vec3<bool>(var_0.a, var_0.c, false), vec3<bool>(false, var_0.c, var_0.c))), vec3<bool>(var_0.a, !var_0.c, true)), !(!select(vec3<bool>(var_0.a, true, var_0.c), vec3<bool>(false, true, false), var_0.a)), all(!vec2<bool>(var_0.c, var_0.c))));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = Struct_2(any(!func_2(1845f)) || all(vec2<bool>(any(vec4<bool>(true, false, false, true)), u_input.e.x > 67201u)), -select(min(arg_3, arg_2.zww), ~vec3<i32>(arg_2.x, 33830i, -1i), vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), arg_2, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32((u_input.a.zww & vec3<u32>(56195u, 12389u, u_input.a.x)) << ((u_input.a.zyy >> (vec3<u32>(u_input.b, u_input.b, 92623u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(4294967295u, countOneBits(u_input.e.x), u_input.e.x)), 12u)]);
    let var_1 = var_0;
    global2 = array<Struct_1, 12>();
    global1 = array<Struct_2, 15>();
    let var_2 = abs(_wgslsmith_dot_vec4_u32(u_input.a, min(abs(vec4<u32>(u_input.e.x, 2989u, 31532u, u_input.b)), ~_wgslsmith_add_vec4_u32(vec4<u32>(22873u, u_input.b, 4294967295u, 47192u), u_input.a))));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 15>();
    global1 = array<Struct_2, 15>();
    let var_0 = Struct_3(global2[_wgslsmith_index_u32(1u, 12u)], !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), 36712i, u_input.e, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(reverseBits(0i), vec3<i32>(69636i, 0i, u_input.c) << (global3[_wgslsmith_index_u32(96412u, 12u)] % vec3<u32>(32u)), -vec4<i32>(u_input.c, -1i, -1i, 1i), vec3<i32>(1i, u_input.c, 0i) & vec3<i32>(u_input.c, u_input.c, u_input.c))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -708f) * -1462f)), _wgslsmith_f_op_f32(sign(-340f)), global0.x));
    var var_1 = vec2<f32>(-603f, var_0.e.x);
    let var_2 = vec3<bool>(var_0.b.x, var_0.b.x, !var_0.b.x);
    var var_3 = firstLeadingBit(vec3<u32>(5383u, ~(~14292u), var_0.d.x) ^ global3[_wgslsmith_index_u32(_wgslsmith_div_u32(max(var_0.d.x, u_input.b), firstTrailingBit(var_0.d.x)) << (var_0.d.x % 32u), 12u)]);
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<u32>(firstTrailingBit(min(0u, 1u)), ~var_3.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 4294967295u, 18809u), ~(~18394u)), u_input.a), var_0.d.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-241f, var_1.x, var_1.x)), var_0.e)), global0.zyx, !select(vec3<bool>(false, var_0.b.x, true), var_0.b.xxz, var_0.b.x))))), _wgslsmith_mult_vec3_i32(var_0.a.c.yww, var_0.a.c.ywz) >> ((~vec3<u32>(var_0.d.x, 4347u, 4294967295u) & ~(~vec3<u32>(4294967295u, 0u, 0u))) % vec3<u32>(32u)));
}

