struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(0i, i32(-2147483648), -36205i, 12342i), vec4<i32>(-1i, -1i, -27093i, 1i), vec4<i32>(1i, 2147483647i, 0i, 31508i), vec4<i32>(-1i, -25923i, i32(-2147483648), 26122i), vec4<i32>(0i, 21120i, 21426i, -30635i), vec4<i32>(-25668i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(-1i, 4127i, 47450i, 29258i), vec4<i32>(0i, 50278i, 31148i, 0i), vec4<i32>(2147483647i, 1i, 63790i, 0i), vec4<i32>(31095i, 33690i, 24920i, -1i), vec4<i32>(0i, 6015i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, 47521i, 6648i, -27097i), vec4<i32>(-1i, -17859i, 24521i, 77036i));

var<private> global1: array<vec3<f32>, 6>;

var<private> global2: array<u32, 26>;

var<private> global3: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = vec2<i32>(u_input.d, u_input.c);
    var var_1 = Struct_5(false);
    var var_2 = ~vec3<u32>(firstLeadingBit(69665u & u_input.e.x), u_input.b.x, u_input.a);
    var var_3 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(125f, 769f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1842f)), -154f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(890f * -2465f), -2214f)), -2147483647i | ~_wgslsmith_mult_i32(var_0.x, 18670i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1048f))) - 1f), vec3<u32>(select(18225u, select(1u, 32065u, false), arg_0 == false), abs(u_input.a) | 17614u, 4294967295u)), -1157f, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(2151f, _wgslsmith_f_op_f32(946f * -167f)) - vec2<f32>(_wgslsmith_f_op_f32(floor(713f)), -1076f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(341f)), 1272f))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(415f, -958f)), _wgslsmith_f_op_f32(abs(2469f)), -753f), 26041i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(904f)) + _wgslsmith_f_op_f32(floor(-250f))), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_2.x, 7214u), vec3<u32>(var_2.x, 1u, u_input.b.x)))), vec2<bool>(!arg_0, all(vec2<bool>(true, false)) && false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-690f + 738f)))), u_input.b);
    let var_4 = select(var_3.d, countOneBits(countOneBits(vec2<u32>(_wgslsmith_mult_u32(38971u, global2[_wgslsmith_index_u32(u_input.b.x, 26u)]), 60782u))), any(!select(vec4<bool>(arg_0, arg_0, true, var_3.c.d.x), !vec4<bool>(var_3.c.d.x, false, true, var_3.c.d.x), vec4<bool>(false, var_3.c.d.x, true, true))));
    return firstTrailingBit(-23736i);
}

fn func_2(arg_0: f32) -> f32 {
    global3 = _wgslsmith_mod_i32(1i, _wgslsmith_div_i32(u_input.d, func_3(-u_input.c < -u_input.d)));
    var var_0 = -min(~vec3<i32>(~u_input.d, i32(-1i) * -4401i, u_input.d), vec3<i32>(~u_input.d << ((0u & u_input.b.x) % 32u), abs(-u_input.c), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-85504i, u_input.d)), reverseBits(vec2<i32>(u_input.c, u_input.d)))));
    var var_1 = _wgslsmith_mult_vec2_i32(~(-vec2<i32>(_wgslsmith_add_i32(35054i, u_input.d), abs(-8767i))), _wgslsmith_add_vec2_i32(var_0.zz, -((vec2<i32>(14433i, 0i) >> (vec2<u32>(1u, u_input.e.x) % vec2<u32>(32u))) << (_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(1u, 0u)) % vec2<u32>(32u)))));
    global1 = array<vec3<f32>, 6>();
    var var_2 = _wgslsmith_add_i32(var_0.x | (i32(-1i) * -var_1.x), -14851i) & var_1.x;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = ~(((_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d.x, 0u), u_input.b) & _wgslsmith_sub_u32(4294967295u, 4294967295u)) >> (~(6544u ^ arg_3.a.d.x) % 32u)) ^ 4294967295u);
    global1 = array<vec3<f32>, 6>();
    let var_1 = Struct_4(u_input.c != (i32(-1i) * -8710i), vec2<i32>(arg_3.c.c.b, 13625i));
    let var_2 = Struct_5(any(select(vec2<bool>(false, arg_3.a.d.x == 9044u), vec2<bool>(true, any(vec4<bool>(true, arg_3.c.d.x, false, true))), false)));
    var var_3 = arg_3.c;
    return Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.b, -331f, var_3.e), global1[_wgslsmith_index_u32(4294967295u, 6u)])))), vec3<f32>(arg_0.a.x, arg_3.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-872f + var_3.e) * _wgslsmith_f_op_f32(min(-1000f, 931f)))))), -47899i, _wgslsmith_f_op_f32(max(-748f, _wgslsmith_f_op_f32(f32(-1f) * -527f))), countOneBits(_wgslsmith_mult_vec3_u32(~(vec3<u32>(1u, arg_3.d.x, 59726u) | arg_3.c.c.d), _wgslsmith_clamp_vec3_u32(arg_3.a.d, vec3<u32>(23367u, 72201u, 51928u), arg_0.d | arg_3.a.d))));
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(164f)) - _wgslsmith_f_op_f32(f32(-1f) * -935f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(1000f + 777f))), _wgslsmith_f_op_f32(trunc(-447f))), -(1i & u_input.d), 718f, _wgslsmith_add_vec3_u32(vec3<u32>(84512u >> (global2[_wgslsmith_index_u32(0u, 26u)] % 32u), 1u, ~4294967295u), ~vec3<u32>(u_input.b.x, 4294967295u, 0u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(8317u, global2[_wgslsmith_index_u32(796u, 26u)], 1u), vec3<u32>(u_input.e.x, 417u, 4294967295u)) % vec3<u32>(32u)))), vec3<bool>(false, all(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false))), ~firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 26u)], 26u)]) >= global2[_wgslsmith_index_u32(43707u, 26u)]), vec2<i32>(2147483647i << (u_input.a % 32u), u_input.d) & ~firstLeadingBit(abs(vec2<i32>(u_input.c, u_input.c))), Struct_3(Struct_1(vec3<f32>(_wgslsmith_div_f32(-333f, 727f), 1041f, _wgslsmith_f_op_f32(f32(-1f) * -584f)), u_input.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1776f)))), (vec3<u32>(1u, 66617u, u_input.b.x) & vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], 35017u, global2[_wgslsmith_index_u32(1u, 26u)])) << (abs(vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6031u, 26u)], 26u)], global2[_wgslsmith_index_u32(u_input.e.x, 26u)])) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1401f * 1f)), Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-491f, 912f), _wgslsmith_f_op_vec2_f32(vec2<f32>(530f, -171f) + vec2<f32>(-1000f, -1921f)), vec2<bool>(true, true))), -682f, Struct_1(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(59233u, 6u)]), -6703i, -905f, abs(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62861u, 26u)], 26u)], 26u)], u_input.a, 0u))), vec2<bool>(all(vec4<bool>(true, false, false, true)), any(vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1112f, -449f))), u_input.b));
    global1 = array<vec3<f32>, 6>();
    let var_1 = Struct_5(all(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))))));
    global2 = array<u32, 26>();
    var var_2 = _wgslsmith_div_vec3_f32(var_0.a, var_0.a);
    return Struct_3(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -545f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.x - 1178f))), var_0.a.x))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1023f, var_0.a.x), _wgslsmith_f_op_f32(max(var_2.x, -982f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-230f, -403f) + var_2.zy)))), var_2.x, func_4(func_4(var_0, select(vec3<bool>(var_1.a, true, true), vec3<bool>(true, true, true), true), vec2<i32>(u_input.d, 17796i) | vec2<i32>(var_0.b, 2147483647i), Struct_3(var_0, var_2.x, Struct_2(vec2<f32>(var_0.a.x, var_0.c), var_0.c, Struct_1(vec3<f32>(var_2.x, 317f, var_2.x), var_0.b, -789f, var_0.d), vec2<bool>(var_1.a, true), var_2.x), vec2<u32>(0u, 0u))), vec3<bool>(var_1.a, var_0.b > u_input.d, select(true, var_1.a, true)), vec2<i32>(-var_0.b, u_input.c), Struct_3(func_4(var_0, vec3<bool>(var_1.a, true, var_1.a), vec2<i32>(1i, -12409i), Struct_3(Struct_1(vec3<f32>(var_2.x, 1000f, var_2.x), u_input.c, var_0.a.x, vec3<u32>(global2[_wgslsmith_index_u32(59307u, 26u)], var_0.d.x, 7496u)), -1370f, Struct_2(var_2.xz, -793f, Struct_1(var_0.a, u_input.c, 1910f, vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(var_0.d.x, 26u)], 10949u)), vec2<bool>(var_1.a, true), var_0.c), u_input.e)), 694f, Struct_2(vec2<f32>(-1000f, var_2.x), var_2.x, Struct_1(var_0.a, var_0.b, var_2.x, vec3<u32>(1u, global2[_wgslsmith_index_u32(57380u, 26u)], global2[_wgslsmith_index_u32(var_0.d.x, 26u)])), vec2<bool>(false, var_1.a), 393f), var_0.d.yy)), vec2<bool>(any(vec4<bool>(true, var_1.a, var_1.a, true)), true), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(568f, -500f)))), ~vec2<u32>(1u, ~min(0u, u_input.a)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_5) -> Struct_2 {
    global0 = array<vec4<i32>, 13>();
    var var_0 = !(!select(!vec4<bool>(arg_1.c.d.x, arg_1.c.d.x, arg_1.c.d.x, arg_1.c.d.x), !(!vec4<bool>(false, true, arg_1.c.d.x, arg_1.c.d.x)), vec4<bool>(select(arg_3.a, true, false), !arg_1.c.d.x, true, select(arg_3.a, arg_3.a, true))));
    global3 = _wgslsmith_mult_i32(arg_0.x, func_3(true));
    var var_1 = Struct_4(any(func_1().c.d), arg_0);
    return func_1().c;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<i32>) -> i32 {
    global3 = abs(~u_input.c & 33321i);
    global0 = array<vec4<i32>, 13>();
    global2 = array<u32, 26>();
    global0 = array<vec4<i32>, 13>();
    global2 = array<u32, 26>();
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 26>();
    var var_0 = false;
    var var_1 = vec3<i32>(5681i, -func_6(func_5(vec2<i32>(22226i, 39320i), func_1(), ~vec4<u32>(u_input.a, u_input.b.x, 78507u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 26u)]), Struct_5(false)), global0[_wgslsmith_index_u32(countOneBits(1u), 13u)]), firstLeadingBit(_wgslsmith_div_i32(firstLeadingBit(0i ^ u_input.c), 1i)));
    var var_2 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), func_1().c.d));
    var var_3 = vec3<u32>(_wgslsmith_mod_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(1u, 26u)], 4294967295u), vec2<u32>(10875u, global2[_wgslsmith_index_u32(69806u, 26u)]))), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~u_input.e, vec2<u32>(u_input.a, 96407u)), 26u)]), global2[_wgslsmith_index_u32(u_input.b.x, 26u)], _wgslsmith_dot_vec3_u32(func_1().a.d, vec3<u32>(reverseBits(1u), 1u >> (select(16013u, u_input.a, true) % 32u), ~u_input.b.x)));
    var var_4 = ~(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(24323u, var_3.x, 16430u), vec3<u32>(u_input.a, 24004u, 4294967295u)) ^ vec3<u32>(var_3.x, u_input.a, 62379u), firstLeadingBit(firstTrailingBit(vec3<u32>(55988u, var_3.x, 4294967295u)))) << (_wgslsmith_mult_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_3.x, 28263u, var_3.x), vec3<u32>(var_3.x, 4294967295u, var_3.x))), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, var_3.x), vec3<u32>(0u, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)])))) % vec3<u32>(32u)));
    var var_5 = ~vec3<i32>(u_input.d, ~(-2147483647i), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<i32>(1i, var_1.x) >> (vec2<u32>(~0u, ~58347u) % vec2<u32>(32u))), max(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~4294967295u), 13u)], vec4<i32>(~_wgslsmith_div_i32(u_input.c, 1i), -1i, ~(-3294i), var_1.x)), ~var_1.x, global1[_wgslsmith_index_u32(var_4.x, 6u)]);
}

