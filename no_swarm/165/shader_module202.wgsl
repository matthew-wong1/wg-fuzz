struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<Struct_3, 26>;

var<private> global2: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(23763i, 11843i, 0i, i32(-2147483648)), vec4<i32>(-1i, 0i, 36432i, -3338i), vec4<i32>(0i, 20779i, 34098i, 2147483647i), vec4<i32>(-65578i, 2147483647i, -51723i, -2122i), vec4<i32>(-22867i, 1i, -42387i, 1i), vec4<i32>(1i, i32(-2147483648), 0i, 1i), vec4<i32>(16082i, -1i, i32(-2147483648), 39128i), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 34445i));

var<private> global3: array<vec2<f32>, 10>;

var<private> global4: u32 = 10623u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = 152f;
    global1 = array<Struct_3, 26>();
    return Struct_2((global2[_wgslsmith_index_u32(~(~0u), 8u)] | vec4<i32>(-u_input.a, -25476i, u_input.e.x, _wgslsmith_sub_i32(-15101i, arg_0.x))) & global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(arg_2, ~arg_2), _wgslsmith_mod_u32(4294967295u, abs(4294967295u))), 8u)]);
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    global2 = array<vec4<i32>, 8>();
    global1 = array<Struct_3, 26>();
    global0 = array<Struct_1, 30>();
    global3 = array<vec2<f32>, 10>();
    let var_0 = ~vec3<u32>(min(u_input.b, _wgslsmith_mod_u32(1u, 4294967295u)) & _wgslsmith_clamp_u32(~u_input.b, 89896u, 4294967295u), 26907u, ~(~u_input.b));
    return Struct_3(func_2(-global2[_wgslsmith_index_u32(~u_input.b, 8u)], select(vec2<bool>(all(vec3<bool>(false, false, true)), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec4<u32>(_wgslsmith_mod_u32(u_input.b, _wgslsmith_mult_u32(u_input.b, 0u)), u_input.b, 11366u, select(u_input.b, 34818u, true) & min(46689u, 42984u))), 2147483647i);
}

fn func_3(arg_0: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-660f + _wgslsmith_f_op_f32(round(816f)))));
    global3 = array<vec2<f32>, 10>();
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-var_0))));
    var var_2 = Struct_2(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, firstLeadingBit(u_input.a), i32(-1i) * -2147483647i, -u_input.e.x), max(~u_input.e, ~global2[_wgslsmith_index_u32(arg_0.a.x, 8u)])), firstTrailingBit(~(u_input.e & vec4<i32>(u_input.d, u_input.e.x, -1i, u_input.a)))));
    let var_3 = func_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, var_1), _wgslsmith_f_op_vec2_f32(max(global3[_wgslsmith_index_u32(0u << (arg_0.a.x % 32u), 10u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-953f, -175f)))))))));
    return var_3;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: Struct_1) -> bool {
    let var_0 = func_2(~arg_1.a.a >> (firstLeadingBit(vec4<u32>(26177u, u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.b), 1u)) % vec4<u32>(32u)), !select(select(!vec2<bool>(true, arg_2), vec2<bool>(arg_2, true), vec2<bool>(false, false)), vec2<bool>(all(vec3<bool>(true, arg_2, false)), true), vec2<bool>(arg_2, true)), ~vec4<u32>(0u, u_input.b, select(~31702u, u_input.b ^ 4417u, true), _wgslsmith_mult_u32(18154u, _wgslsmith_sub_u32(arg_3.a.x, 99761u))));
    var var_1 = _wgslsmith_dot_vec3_u32(select(vec3<u32>(_wgslsmith_mult_u32(arg_3.a.x, ~arg_3.a.x), arg_3.a.x, ~44324u), _wgslsmith_add_vec3_u32(arg_3.a, arg_3.a), false), min(vec3<u32>(abs(abs(arg_3.a.x)), 4294967295u, u_input.b << (~0u % 32u)), max(vec3<u32>(~u_input.b, 94157u, _wgslsmith_add_u32(0u, u_input.b)), arg_3.a)));
    var var_2 = func_3(Struct_1(abs(arg_3.a)));
    global4 = _wgslsmith_sub_u32(~u_input.b, 75727u);
    let var_3 = arg_3.a.yz;
    return all(vec3<bool>(true, arg_2, true));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_mult_vec4_u32(~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, arg_2), vec4<u32>(u_input.b, 17768u, 1u, u_input.b))), vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(arg_1, 4294967295u)), ~(~1u), reverseBits(~u_input.b), ~arg_2)) & ~abs(~abs(vec4<u32>(4294967295u, arg_1, arg_2, 4294967295u)));
    global0 = array<Struct_1, 30>();
    return min(~abs(vec4<u32>(1u, arg_2, _wgslsmith_mult_u32(var_0.x, 4294967295u), 20713u)), ~var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -612f);
    let var_1 = -1i;
    let var_2 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1147f, 1946f)), global3[_wgslsmith_index_u32(u_input.b, 10u)]) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -532f), _wgslsmith_f_op_f32(f32(-1f) * -1058f))) * global3[_wgslsmith_index_u32(~4294967295u, 10u)]));
    let var_3 = var_2.a.a.x;
    var var_4 = func_2(-(~vec4<i32>(u_input.c, var_1, -13597i, _wgslsmith_clamp_i32(var_3, var_2.b, 68849i))), select(vec2<bool>(true, true), !vec2<bool>(true, all(vec4<bool>(true, false, false, true))), false), func_5(func_4(Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.b, 8u)]), -1i), func_3(Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b))), true, Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b))), 30863u, 0u, 22072u));
    let var_5 = !vec2<bool>(all(vec2<bool>(true, true)), any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true), true)));
    var var_6 = global0[_wgslsmith_index_u32(u_input.b, 30u)];
    let var_7 = -vec3<i32>(var_1, (countOneBits(1i) & var_2.b) << ((_wgslsmith_mult_u32(var_6.a.x, 70144u) >> (1u % 32u)) % 32u), firstLeadingBit(1i));
    var var_8 = Struct_2(vec4<i32>(_wgslsmith_sub_i32(min(var_3 & -37907i, func_3(global0[_wgslsmith_index_u32(4294967295u, 30u)]).a.a.x), _wgslsmith_add_i32(0i | var_7.x, func_1(global3[_wgslsmith_index_u32(1u, 10u)]).b)), _wgslsmith_div_i32(0i, max(-var_4.a.x, ~u_input.e.x)), u_input.e.x, func_3(global0[_wgslsmith_index_u32(var_6.a.x, 30u)]).a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(vec4<u32>(select(var_6.a.x, var_6.a.x, false), 1u, ~86086u, _wgslsmith_sub_u32(19217u, var_6.a.x)), vec4<u32>(abs(var_6.a.x), u_input.b, ~var_6.a.x, firstTrailingBit(var_6.a.x))), countOneBits(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(80907u, u_input.b, 8964u, 0u) ^ vec4<u32>(124855u, var_6.a.x, 1u, var_6.a.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 15377u), var_6.a.zy), 27922u >> (var_6.a.x % 32u), ~var_6.a.x, abs(38416u)))), -_wgslsmith_div_vec3_i32(vec3<i32>(37972i, -2147483647i, var_1) | vec3<i32>(var_4.a.x, -26230i, 39960i), vec3<i32>(var_7.x, countOneBits(7842i), var_4.a.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -924f), _wgslsmith_f_op_f32(-1909f + 597f))))));
}

