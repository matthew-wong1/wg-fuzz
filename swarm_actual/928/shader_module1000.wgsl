struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(6031i, -1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(14055i, 1i), vec2<i32>(-1i, 1i), vec2<i32>(11260i, -22477i), vec2<i32>(-83331i, 2147483647i));

var<private> global1: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(0u, 1u), vec2<u32>(6300u, 0u), vec2<u32>(1u, 98656u), vec2<u32>(1u, 18221u), vec2<u32>(39058u, 20068u), vec2<u32>(67482u, 37093u), vec2<u32>(4294967295u, 10773u), vec2<u32>(1u, 4294967295u), vec2<u32>(18376u, 41747u), vec2<u32>(1u, 0u), vec2<u32>(16179u, 0u), vec2<u32>(1u, 1u), vec2<u32>(14947u, 1u), vec2<u32>(102245u, 64411u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(1u, 1u), vec2<u32>(24363u, 4294967295u), vec2<u32>(2285u, 87321u), vec2<u32>(1u, 21759u), vec2<u32>(1u, 0u), vec2<u32>(56805u, 4032u), vec2<u32>(4294967295u, 5436u), vec2<u32>(4294967295u, 0u));

var<private> global2: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(3522u, 0u), vec2<u32>(1u, 0u), vec2<u32>(21864u, 1u), vec2<u32>(13395u, 4294967295u), vec2<u32>(4484u, 19495u), vec2<u32>(63823u, 1u), vec2<u32>(2427u, 12668u), vec2<u32>(4294967295u, 115647u), vec2<u32>(39677u, 0u), vec2<u32>(27188u, 66470u), vec2<u32>(16107u, 36483u), vec2<u32>(33809u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 64704u), vec2<u32>(4294967295u, 79636u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(65670u, 4294967295u), vec2<u32>(71718u, 4294967295u), vec2<u32>(7222u, 18009u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 49186u), vec2<u32>(39089u, 4294967295u), vec2<u32>(65110u, 0u), vec2<u32>(74928u, 1u), vec2<u32>(23552u, 27834u), vec2<u32>(1u, 0u), vec2<u32>(30210u, 57267u), vec2<u32>(1u, 0u));

var<private> global3: u32;

var<private> global4: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-19754i, vec2<u32>(9297u, 4294967295u)), Struct_1(14384i, vec2<u32>(1u, 27345u)), Struct_1(-46334i, vec2<u32>(59554u, 37176u)), Struct_1(-4928i, vec2<u32>(70150u, 4294967295u)), Struct_1(16544i, vec2<u32>(0u, 0u)), Struct_1(2147483647i, vec2<u32>(37368u, 0u)), Struct_1(33385i, vec2<u32>(4294967295u, 0u)), Struct_1(-7418i, vec2<u32>(0u, 0u)), Struct_1(18396i, vec2<u32>(3104u, 0u)), Struct_1(1i, vec2<u32>(14179u, 1u)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    global2 = array<vec2<u32>, 29>();
    global0 = array<vec2<i32>, 6>();
    let var_0 = vec2<f32>(1583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(min(-206f, _wgslsmith_f_op_f32(-1654f - arg_0.d))))));
    global4 = array<Struct_1, 10>();
    var var_1 = global4[_wgslsmith_index_u32(u_input.b, 10u)];
    return firstTrailingBit(firstTrailingBit(4294967295u)) >= ~(~(~0u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: bool) -> u32 {
    global0 = array<vec2<i32>, 6>();
    var var_0 = arg_0.a;
    global3 = _wgslsmith_mult_u32(~u_input.a, ~(~(~(~19569u))));
    global3 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(1u, (arg_1.x >> (arg_1.x % 32u)) >> (abs(4294967295u) % 32u)), ~26934u, arg_0.b.x, firstLeadingBit(4294967295u) & arg_0.b.x), ~_wgslsmith_add_vec4_u32(max(select(u_input.d, vec4<u32>(arg_1.x, u_input.b, u_input.c, 2384u), arg_2), reverseBits(vec4<u32>(arg_1.x, 4294967295u, 4294967295u, 62104u))), _wgslsmith_mod_vec4_u32(vec4<u32>(427u, 1u, 0u, arg_0.b.x), ~u_input.d)));
    var_0 = arg_0.a & 6798i;
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    let var_0 = ~max(_wgslsmith_mult_i32(~(-40807i), countOneBits(~6748i)), -1i);
    var var_1 = false;
    global2 = array<vec2<u32>, 29>();
    return Struct_1(1i, vec2<u32>(31949u, func_4(Struct_1(_wgslsmith_mult_i32(var_0, var_0), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(45978u, u_input.a, 53703u), 29u)]), firstLeadingBit(~u_input.d.zyw), vec4<bool>(true, true, any(vec4<bool>(true, false, false, true)), true), !func_3(Struct_2(var_0, global1[_wgslsmith_index_u32(20150u, 24u)], vec3<i32>(-47408i, 6404i, 2147483647i), -145f), global4[_wgslsmith_index_u32(u_input.d.x, 10u)], vec2<bool>(false, true)))));
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(0i, arg_0.a, abs(arg_0.a)) & max(~vec3<i32>(-1i, arg_0.a, -1i), vec3<i32>(arg_0.a, -1i, -15780i)), vec3<i32>(firstLeadingBit(arg_0.a), arg_0.a >> (arg_0.b.x % 32u), -51320i) & select(~vec3<i32>(0i, arg_0.a, 15801i), vec3<i32>(arg_0.a, 30889i, arg_0.a), any(vec2<bool>(false, false)))) << (reverseBits(u_input.d.zyx) % vec3<u32>(32u));
    let var_1 = Struct_2(~(-(~_wgslsmith_sub_i32(var_0.x, 11658i))), ~vec2<u32>(firstTrailingBit(27029u) | 4294967295u, select(48626u, 30133u, true)), select(vec3<i32>(-1i, var_0.x, var_0.x), vec3<i32>(3577i, 1i, arg_0.a), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, true)), vec3<bool>(func_3(Struct_2(arg_0.a, global2[_wgslsmith_index_u32(4294967295u, 29u)], vec3<i32>(arg_0.a, arg_0.a, 347i), 629f), Struct_1(6461i, vec2<u32>(arg_0.b.x, 11812u)), vec2<bool>(false, false)), true, any(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1099f))));
    var var_2 = ~(~vec2<i32>(firstLeadingBit(~2147483647i), ~(var_1.c.x << (arg_0.b.x % 32u))));
    var var_3 = var_1.b.x & ~_wgslsmith_sub_u32(abs(4294967295u), arg_0.b.x);
    global3 = ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, ~_wgslsmith_div_u32(var_1.b.x, var_1.b.x)), ~firstTrailingBit(var_1.b.x));
    return 30997u;
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    var var_0 = ~firstTrailingBit(func_2().b.x);
    global2 = array<vec2<u32>, 29>();
    let var_1 = Struct_2(arg_1.a, abs(global2[_wgslsmith_index_u32(firstLeadingBit(21289u), 29u)]) >> (vec2<u32>(u_input.b, ~u_input.b) % vec2<u32>(32u)), vec3<i32>(~(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a, arg_1.a), global0[_wgslsmith_index_u32(30430u, 6u)]) ^ arg_1.a), -16583i, -_wgslsmith_mod_i32(-6105i, ~29869i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1564f)))));
    let var_2 = ~(u_input.d >> (firstTrailingBit(vec4<u32>(4294967295u, 22165u, var_1.b.x, u_input.c) | vec4<u32>(u_input.b, arg_1.b.x, 4294967295u, 0u)) % vec4<u32>(32u)));
    let var_3 = var_1.d;
    return 1u;
}

fn func_7(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.d, -167f)) + arg_2.d) + -575f) - _wgslsmith_f_op_f32(exp2(arg_2.d)));
    var var_1 = global4[_wgslsmith_index_u32(47035u, 10u)];
    let var_2 = any(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), vec2<bool>(true, false), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))));
    global2 = array<vec2<u32>, 29>();
    var var_3 = select(vec4<bool>(true, all(select(select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(true, true, var_2), false), vec3<bool>(var_2, var_2, var_2), select(vec3<bool>(var_2, false, var_2), vec3<bool>(var_2, false, false), vec3<bool>(true, var_2, var_2)))), true, var_2), select(select(!vec4<bool>(true, true, var_2, var_2), vec4<bool>(true, true, true, true), true), select(vec4<bool>(any(vec3<bool>(var_2, var_2, var_2)), true, func_3(arg_2, arg_0, vec2<bool>(var_2, false)), 4294967295u == arg_3), !vec4<bool>(true, false, var_2, true), select(select(vec4<bool>(var_2, var_2, true, var_2), vec4<bool>(true, true, var_2, false), vec4<bool>(false, var_2, false, var_2)), select(vec4<bool>(var_2, true, false, var_2), vec4<bool>(var_2, true, var_2, var_2), vec4<bool>(var_2, true, true, var_2)), all(vec2<bool>(var_2, false)))), !((var_2 & var_2) || !var_2)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(max(-235f, -376f))))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-241f * _wgslsmith_f_op_f32(arg_2.d - arg_2.d)), var_0));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, 1546f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1413f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_2.d)))), all(select(vec2<bool>(false, var_3.x), var_3.ww, vec2<bool>(true, var_2)))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<bool>) -> f32 {
    return _wgslsmith_f_op_f32(func_7(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_6(arg_2.x, global4[_wgslsmith_index_u32(func_5(func_2()), 10u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(943f, -1000f)))), u_input.d.x >> (u_input.a % 32u)), 10u)], arg_0.x, Struct_2(_wgslsmith_sub_i32(arg_1, -15886i), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(23247u, 1u, 97372u, u_input.c), u_input.d), ~1u), vec3<i32>(28472i, -53131i, 8035i), 1183f), 18436u));
}

fn func_8(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 302f, -580f, 418f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1603f, -2263f, 1307f, -1671f))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.d)), _wgslsmith_f_op_f32(f32(-1f) * -2163f), _wgslsmith_f_op_f32(floor(arg_1.d)), arg_1.d)), vec4<f32>(_wgslsmith_f_op_f32(select(-795f, _wgslsmith_f_op_f32(-arg_1.d), false | arg_2)), 104f, _wgslsmith_f_op_f32(func_1(~vec4<i32>(-8442i, arg_1.c.x, arg_1.c.x, arg_1.a), -25453i, !vec2<bool>(arg_2, false))), _wgslsmith_f_op_f32(-arg_0.x)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.d)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * arg_1.d)))) * arg_0.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(2351f, var_1, -1112f));
    var var_3 = arg_1;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1260f, 491f))))) * 1182f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, arg_1.a, var_3.a, var_3.a), vec4<i32>(arg_1.c.x, var_3.a, 18981i, var_3.c.x)), firstTrailingBit(var_3.c.x), select(vec2<bool>(arg_2, arg_2), select(vec2<bool>(true, false), vec2<bool>(arg_2, false), false), any(vec4<bool>(arg_2, false, false, true))))) - var_3.d);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 29>();
    let var_0 = -2147483647i;
    var var_1 = func_8(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(-851f, 1099f, false)), _wgslsmith_f_op_f32(f32(-1f) * -184f), -451f, _wgslsmith_f_op_f32(f32(-1f) * -2937f)))) * vec4<f32>(439f, -1455f, 692f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -253f) - _wgslsmith_f_op_f32(func_1(vec4<i32>(1i, 0i, 16778i, 4498i), 53127i, vec2<bool>(true, true)))))), Struct_2(-abs(19878i & var_0), _wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(global2[_wgslsmith_index_u32(u_input.a, 29u)], vec2<u32>(40526u, u_input.c)), vec2<u32>(~1u, 4294967295u)), select(vec3<i32>(2147483647i, var_0, ~(-1i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(var_0, -4521i, 2147483647i), vec3<i32>(23914i, var_0, var_0)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2055f + 152f)))), u_input.a == u_input.d.x);
    let var_2 = Struct_2(_wgslsmith_mod_i32(~(firstTrailingBit(var_0) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.b, 0u)) % 32u)), ~func_8(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, var_1.d, -744f, 404f))), func_8(vec4<f32>(-540f, var_1.d, var_1.d, var_1.d), Struct_2(0i, u_input.d.ww, vec3<i32>(var_1.a, 60685i, 134i), var_1.d), true), true).a), vec2<u32>(~0u << (u_input.d.x % 32u), func_2().b.x), reverseBits(-_wgslsmith_add_vec3_i32(var_1.c, -var_1.c)), var_1.d);
    var var_3 = firstTrailingBit(func_6(!(!all(vec2<bool>(true, false))), func_2(), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1266f, var_1.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -226f) * var_1.d))));
    var_3 = ~u_input.b >> (~(_wgslsmith_dot_vec3_u32(u_input.d.wwy ^ u_input.d.zzw, vec3<u32>(var_1.b.x, 4294967295u, var_2.b.x)) & var_1.b.x) % 32u);
    let var_4 = firstTrailingBit(~min(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_1.b.x, 5856u ^ u_input.b), 6u)], var_2.c.yz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, _wgslsmith_f_op_f32(sign(var_2.d)))), 30923u, vec2<f32>(_wgslsmith_f_op_f32(-var_2.d), 253f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d, var_2.d, var_2.d) * vec3<f32>(-353f, 1294f, var_1.d))))))));
}

