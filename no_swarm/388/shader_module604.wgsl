struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(false, vec3<u32>(1u, 1u, 1u), 990f), Struct_2(true, vec3<u32>(0u, 1u, 0u), -1832f), Struct_2(false, vec3<u32>(32413u, 18562u, 9960u), 1985f), Struct_2(true, vec3<u32>(4294967295u, 1u, 48674u), -377f), Struct_2(false, vec3<u32>(0u, 4294967295u, 1u), 592f), Struct_2(true, vec3<u32>(0u, 20821u, 8772u), -212f), Struct_2(false, vec3<u32>(4294967295u, 4294967295u, 0u), -778f), Struct_2(true, vec3<u32>(43753u, 1u, 1u), -2192f), Struct_2(false, vec3<u32>(13112u, 10921u, 1u), -1000f), Struct_2(true, vec3<u32>(95399u, 4775u, 13994u), -373f), Struct_2(true, vec3<u32>(4294967295u, 0u, 39014u), -324f), Struct_2(true, vec3<u32>(26228u, 1u, 1u), 1143f), Struct_2(false, vec3<u32>(11251u, 4294967295u, 0u), -1960f), Struct_2(false, vec3<u32>(1u, 111u, 75828u), 413f), Struct_2(true, vec3<u32>(43522u, 45610u, 96061u), -360f), Struct_2(true, vec3<u32>(11953u, 4294967295u, 0u), 329f), Struct_2(false, vec3<u32>(52647u, 4294967295u, 6327u), 524f), Struct_2(false, vec3<u32>(1u, 40650u, 11732u), 441f), Struct_2(true, vec3<u32>(19562u, 4294967295u, 38755u), -1209f), Struct_2(false, vec3<u32>(97981u, 0u, 35376u), 2124f), Struct_2(false, vec3<u32>(80653u, 7816u, 1u), 583f), Struct_2(false, vec3<u32>(27626u, 12641u, 0u), -1000f), Struct_2(true, vec3<u32>(36371u, 0u, 0u), 1599f), Struct_2(false, vec3<u32>(4294967295u, 28112u, 1u), -289f), Struct_2(false, vec3<u32>(0u, 2895u, 26577u), -847f));

var<private> global1: vec2<bool>;

var<private> global2: array<bool, 27> = array<bool, 27>(true, true, false, true, false, false, false, false, true, false, false, false, false, false, false, true, true, false, true, true, true, false, true, true, false, true, true);

var<private> global3: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global4: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(false, vec3<u32>(1u, 48569u, 21048u), -909f), Struct_2(false, vec3<u32>(74442u, 0u, 74312u), 172f), Struct_2(true, vec3<u32>(0u, 35959u, 0u), 307f), Struct_2(true, vec3<u32>(4294967295u, 1u, 4294967295u), 690f), Struct_2(true, vec3<u32>(113613u, 37154u, 4294967295u), 1362f), Struct_2(true, vec3<u32>(23831u, 79581u, 1u), -813f), Struct_2(true, vec3<u32>(118u, 1u, 6649u), -255f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    let var_0 = u_input.c.x;
    global1 = global3.yy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(337f * -613f));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-arg_0.b))) + arg_0.b), _wgslsmith_f_op_f32(trunc(arg_0.b)), 623f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.a, 1000f), 1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-625f, arg_0.a)), arg_0.a, -1410f, _wgslsmith_f_op_f32(-arg_0.a)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.a, arg_0.a, -1416f) - vec4<f32>(429f, -525f, arg_0.a, -714f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1540f, arg_0.b, arg_0.a, -475f) + vec4<f32>(-153f, 380f, -1000f, arg_0.b)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(618f, arg_0.b, arg_0.a, -2443f), vec4<f32>(arg_0.a, arg_0.b, -1040f, -1000f), vec4<bool>(false, false, global3.x, global1.x)))))));
    global2 = array<bool, 27>();
    global3 = select(select(!select(!vec4<bool>(true, arg_0.c.x, global2[_wgslsmith_index_u32(37058u, 27u)], true), select(vec4<bool>(global1.x, global2[_wgslsmith_index_u32(0u, 27u)], arg_0.c.x, arg_0.c.x), vec4<bool>(global1.x, global1.x, false, arg_0.c.x), true), true), !(!select(vec4<bool>(global3.x, global1.x, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), !vec4<bool>(true, true, global2[_wgslsmith_index_u32(35102u, 27u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(76902u, 23850u, 56763u), vec3<u32>(13663u, 88823u, 4294967295u)), 27u)])), !select(!(!vec4<bool>(global1.x, arg_0.c.x, global2[_wgslsmith_index_u32(0u, 27u)], arg_0.c.x)), select(vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(1u, 27u)]), !vec4<bool>(global2[_wgslsmith_index_u32(1u, 27u)], true, global2[_wgslsmith_index_u32(94097u, 27u)], global3.x), true), global3.x), !(!any(select(arg_0.c, global3.wxy, arg_0.c.x))));
    global3 = !(!vec4<bool>(global3.x, true, !global1.x, any(vec2<bool>(true, true))));
    var var_1 = vec2<u32>(0u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, 1u)), reverseBits(vec2<u32>(1u, 1u))));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec2<f32> {
    global3 = select(vec4<bool>((_wgslsmith_f_op_f32(round(985f)) >= -331f) | (arg_0.a <= arg_0.b), ~4294967295u >= ~max(arg_1, 15188u), global3.x, global3.x), select(vec4<bool>(true, global3.x, _wgslsmith_f_op_f32(select(arg_0.a, arg_0.b, global3.x)) > _wgslsmith_div_f32(arg_0.a, 258f), any(select(vec2<bool>(global2[_wgslsmith_index_u32(3743u, 27u)], true), vec2<bool>(global3.x, true), true))), select(vec4<bool>(global1.x, arg_0.a < arg_0.b, arg_0.c.x, true), select(vec4<bool>(global3.x, global3.x, arg_0.c.x, global3.x), vec4<bool>(true, true, true, false), true), false), vec4<bool>(all(global3.wz), arg_0.c.x, false, false)), global1.x);
    let var_0 = Struct_2(_wgslsmith_div_u32(~arg_1, 1u) >= 0u, countOneBits(~abs(vec3<u32>(4294967295u, 4294967295u, 118034u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * -748f) * arg_0.b));
    var var_1 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(firstLeadingBit(~1u), 4294967295u, _wgslsmith_dot_vec3_u32(var_0.b, var_0.b), var_0.b.x), max(vec4<u32>(99086u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(64424u, arg_1)), 67133u | var_0.b.x, ~arg_1), ~abs(vec4<u32>(var_0.b.x, 50612u, arg_1, arg_1))) ^ (vec4<u32>(62590u ^ arg_1, ~arg_1, abs(var_0.b.x), 28529u) >> (~select(vec4<u32>(arg_1, 36734u, arg_1, 4294967295u), vec4<u32>(var_0.b.x, 4294967295u, var_0.b.x, arg_1), vec4<bool>(global1.x, global3.x, global2[_wgslsmith_index_u32(29560u, 27u)], var_0.a)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 0u, 0u, var_0.b.x), vec4<u32>(arg_1, 18213u, 25875u, 5998u)), vec4<u32>(arg_1, 4294967295u, arg_1, var_0.b.x) & vec4<u32>(var_0.b.x, 0u, 3414u, arg_1)), ~vec4<u32>(firstTrailingBit(arg_1), max(785u, 47195u), select(1u, arg_1, global3.x), ~4294967295u)));
    var_1 = vec4<u32>(arg_1, (arg_1 | ~countOneBits(23963u)) ^ var_0.b.x, _wgslsmith_div_u32(0u, abs(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_0.b.x, 0u, arg_1, var_1.x)), vec4<u32>(arg_1, 4294967295u, arg_1, 36742u)))), 9994u);
    global2 = array<bool, 27>();
    return _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1212f)) + _wgslsmith_f_op_f32(f32(-1f) * -1105f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c), var_0.c)))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    global2 = array<bool, 27>();
    var var_0 = global0[_wgslsmith_index_u32(arg_0.x, 25u)];
    var var_1 = vec2<f32>(_wgslsmith_div_f32(1891f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1826f)))), -1417f);
    var_1 = _wgslsmith_f_op_vec2_f32(func_4(func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 361f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) - var_1.x), vec3<bool>(!var_0.a, all(global3.zxy), true))), reverseBits(0u)));
    var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - var_1.x)), var_0.c) * _wgslsmith_div_vec2_f32(vec2<f32>(-227f, var_0.c), vec2<f32>(-452f, _wgslsmith_f_op_f32(var_0.c * var_1.x))))));
    return global0[_wgslsmith_index_u32(firstLeadingBit(arg_0.x) & ~25959u, 25u)];
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-arg_0.c), !global3.wzy), ~_wgslsmith_div_u32(arg_2, arg_2))).x, _wgslsmith_f_op_f32(1373f + 746f), global3.zyz));
    var var_1 = ~_wgslsmith_mult_i32(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(max(arg_1.x, 2147483647i), _wgslsmith_mod_i32(arg_1.x, arg_1.x)), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(arg_1.zx, vec2<i32>(u_input.c.x, 1i)), vec2<i32>(25998i, 2147483647i))));
    global3 = select(!select(!select(vec4<bool>(var_0.c.x, var_0.c.x, false, global3.x), vec4<bool>(false, true, arg_0.a, true), global1.x), !vec4<bool>(true, false, global2[_wgslsmith_index_u32(arg_0.b.x, 27u)], global3.x), !select(vec4<bool>(true, false, var_0.c.x, var_0.c.x), vec4<bool>(true, false, true, var_0.c.x), true)), select(select(vec4<bool>(arg_0.a, var_0.c.x, arg_2 >= 1u, !global1.x), select(!vec4<bool>(arg_0.a, var_0.c.x, arg_0.a, var_0.c.x), vec4<bool>(global1.x, global2[_wgslsmith_index_u32(0u, 27u)], global1.x, true), !vec4<bool>(global1.x, true, global3.x, arg_0.a)), vec4<bool>(true || arg_0.a, global1.x, false, !global1.x)), !select(vec4<bool>(global3.x, global2[_wgslsmith_index_u32(82029u, 27u)], true, true), !vec4<bool>(global3.x, false, false, global3.x), false), vec4<bool>(true, all(vec4<bool>(false, false, true, global1.x)), global3.x, !global1.x != true)), true);
    var var_2 = reverseBits(~(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, 1368u, 814u), arg_0.b), 1u)));
    return func_2(func_2(Struct_1(arg_0.c, var_0.b, global3.wzx)));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-func_1(reverseBits(~vec3<u32>(1u, 4294967295u, 3744u))).c), arg_0.b, func_2(func_5(Struct_2(arg_0.c.x, max(vec3<u32>(0u, 43257u, 34220u), vec3<u32>(7522u, 1u, 78066u)), 199f), reverseBits(vec3<i32>(0i, u_input.d.x, u_input.c.x) | vec3<i32>(-592i, u_input.b.x, u_input.c.x)), ~0u)).c);
    var_0 = arg_0;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~1u, ~4294967295u, ~38117u)), _wgslsmith_dot_vec3_u32(max(abs(vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u))), 27u)];
    global1 = global3.wx;
    var var_1 = ~_wgslsmith_add_u32(func_6(func_5(func_1(vec3<u32>(59947u, 21063u, 12809u)), _wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(-2147483647i, u_input.c.x, u_input.b.x)), 44364u), func_2(Struct_1(-1000f, -1035f, vec3<bool>(global3.x, global1.x, global3.x))).b, countOneBits(abs(vec2<i32>(-31218i, 7840i)))), 1u);
    var var_2 = func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-156f)) * _wgslsmith_f_op_vec2_f32(func_4(func_5(Struct_2(false, vec3<u32>(37167u, 14554u, 1u), -656f), vec3<i32>(-15588i, u_input.b.x, u_input.a), 0u), 1u)).x), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2306f), 998f), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(1380f + -429f))))), global3.zyz)).c;
    global1 = select(global3.xw, !vec2<bool>(global2[_wgslsmith_index_u32(~1u, 27u)], !var_2.x), vec2<bool>(false, !all(vec3<bool>(false, true, var_2.x))));
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-758f * 454f), _wgslsmith_f_op_f32(1000f - -1334f), _wgslsmith_f_op_f32(ceil(-818f)))), vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1257f, 152f)), -1304f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-385f, 1512f, 1081f), vec3<f32>(-1566f, 314f, -1037f), false)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-393f, 676f, 624f) + vec3<f32>(-733f, 486f, -776f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-459f, 729f, -470f) * vec3<f32>(-970f, -1234f, -325f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2366f, 2292f, -183f) - vec3<f32>(-993f, -872f, 992f)), vec3<f32>(-104f, -2365f, 1000f), all(var_2.xz))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-419f, 1603f, 852f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-342f, 814f, -685f) * vec3<f32>(327f, -224f, 795f)))), select(global3.wxw, select(func_2(Struct_1(667f, 486f, global3.wxx)).c, global3.xxx, !global3.yyx), !global3.ywx)))));
    let var_4 = global3.yxw;
    global0 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-618f - _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(f32(-1f) * -620f))), _wgslsmith_f_op_f32(f32(-1f) * -594f), var_3.x, 775f));
}

