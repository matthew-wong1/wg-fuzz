struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 13>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = (_wgslsmith_f_op_f32(_wgslsmith_div_f32(732f, 1198f) + _wgslsmith_f_op_f32(min(208f, _wgslsmith_f_op_f32(-257f + -528f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1973f)))) | true;
    global0 = array<vec3<f32>, 13>();
    global0 = array<vec3<f32>, 13>();
    let var_1 = !(all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))) && (!(global2.b > 469f) | true));
    let var_2 = Struct_1(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - global2.b) - arg_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(317f)))), vec2<i32>(58207i, 2147483647i), 26345u);
    return ~(~_wgslsmith_div_u32(~global2.a.x, global1.d ^ global1.d)) ^ ~(((6085u & global1.a.x) | ~56487u) ^ ~var_2.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>) -> i32 {
    global2 = Struct_1(countOneBits(global2.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b))))), firstTrailingBit(-(~u_input.b)), arg_2.x);
    global0 = array<vec3<f32>, 13>();
    var var_0 = all(select(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(select(true, true, true), true, any(vec2<bool>(true, true)), true), select(vec4<bool>(any(vec4<bool>(true, false, false, false)), all(vec4<bool>(true, false, true, true)), 4294967295u > arg_2.x, any(vec4<bool>(true, false, true, true))), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true))));
    var_0 = false;
    var var_1 = arg_0;
    return -firstLeadingBit(2147483647i);
}

fn func_2() -> vec2<i32> {
    global1 = Struct_1(firstTrailingBit(~_wgslsmith_add_vec4_u32(~global1.a, global2.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.b))), global2.b))), vec2<i32>(-global2.c.x, func_4(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(36917u, 84170u, 17089u, 24106u), vec4<u32>(4294967295u, u_input.a.x, global1.d, global2.a.x)), _wgslsmith_f_op_f32(369f * -440f), u_input.b & global2.c, ~4464u), countOneBits(func_3(global2.b)), abs(global2.a))), ~(~(~37425u)));
    global0 = array<vec3<f32>, 13>();
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.b, global1.b)));
    var var_1 = global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(0u, firstTrailingBit(global2.a.x))), 31u)];
    var var_2 = global3[_wgslsmith_index_u32(select(abs(firstTrailingBit(4294967295u)), _wgslsmith_mult_u32(global1.d, _wgslsmith_sub_u32(min(52u, abs(17033u)), u_input.a.x)), all(vec4<bool>(false, _wgslsmith_div_f32(1114f, global2.b) > _wgslsmith_f_op_f32(f32(-1f) * -1479f), global2.a.x > var_1.a.x, true))), 31u)];
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, global2.c.x), global1.c, -(~_wgslsmith_sub_vec2_i32(global2.c, select(global1.c, global2.c, false))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = global1.d;
    global1 = Struct_1(vec4<u32>(~_wgslsmith_mod_u32(u_input.a.x | global1.d, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(arg_2.d, u_input.a.x))), _wgslsmith_add_u32(arg_1.a.x, 1u), ~(~_wgslsmith_mod_u32(4294967295u, arg_1.a.x)), ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, 0u), 66965u, arg_3.d & global2.a.x)), 1000f, global2.c, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_mult_u32(16588u, ~global2.a.x), min(~10333u, _wgslsmith_dot_vec2_u32(u_input.a, arg_1.a.wx))), global2.a.xyx));
    let var_1 = arg_3.b;
    let var_2 = global2.c.x;
    var var_3 = arg_3;
    return global3[_wgslsmith_index_u32(~abs(~1u), 31u)];
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = reverseBits(_wgslsmith_div_i32(0i, _wgslsmith_div_i32(global1.c.x, global2.c.x)));
    return func_5(vec3<f32>(818f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1303f * _wgslsmith_div_f32(1553f, arg_1.x)), _wgslsmith_f_op_f32(-arg_0.b), !(global1.d <= global1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -340f) - func_5(arg_1, global3[_wgslsmith_index_u32(arg_0.d, 31u)], global3[_wgslsmith_index_u32(arg_0.a.x, 31u)], arg_0).b))), Struct_1(~global2.a, _wgslsmith_f_op_f32(sign(global1.b)), vec2<i32>(global2.c.x, -firstTrailingBit(0i)), ~global1.d), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1857f, 1070f, global2.b))), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(min(global2.a.xxz, arg_0.a.yzy), global2.a.zxx), 31u)], Struct_1(~(~vec4<u32>(1u, 59123u, u_input.a.x, global1.a.x)), _wgslsmith_f_op_f32(max(global2.b, -739f)), max(firstLeadingBit(vec2<i32>(0i, 0i)), arg_0.c), 4294967295u | _wgslsmith_add_u32(arg_0.a.x, arg_0.d)), global3[_wgslsmith_index_u32((u_input.a.x ^ countOneBits(u_input.a.x)) << (_wgslsmith_dot_vec3_u32(global2.a.xxw ^ vec3<u32>(1u, 1u, 44833u), vec3<u32>(4294967295u, global1.d, arg_0.a.x)) % 32u), 31u)]), Struct_1(_wgslsmith_add_vec4_u32(firstLeadingBit(~arg_0.a), arg_0.a), 713f, global2.c, global1.a.x));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    global1 = func_6(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-111f, 577f, arg_0.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, arg_0.x, arg_0.x))), true)) + arg_0), Struct_1(global1.a, global2.b, min(vec2<i32>(u_input.b.x, global1.c.x), firstLeadingBit(u_input.b)), countOneBits(u_input.a.x) >> (~18116u % 32u)), global3[_wgslsmith_index_u32(1u, 31u)], Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, 4294967295u), vec4<u32>(global2.d, 0u, 4294967295u, 4294967295u)), -1000f, func_2(), 4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(4294967295u, 13u)]))), arg_0))));
    global0 = array<vec3<f32>, 13>();
    var var_0 = !vec3<bool>(select(true, select(global1.b != global2.b, global2.d >= global1.a.x, false), all(vec2<bool>(false, false))), (18180i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(46718i, 36654i, 37847i), vec3<i32>(-28151i, global2.c.x, global1.c.x))) > func_2().x, !select(true, true, true));
    let var_1 = Struct_1(global1.a, _wgslsmith_f_op_f32(-global2.b), abs(~(-_wgslsmith_sub_vec2_i32(u_input.b, global2.c))), 4294967295u ^ reverseBits(_wgslsmith_add_u32(min(global2.a.x, global2.a.x), func_5(global0[_wgslsmith_index_u32(1u, 13u)], Struct_1(global1.a, -286f, vec2<i32>(global2.c.x, -12361i), global1.d), Struct_1(vec4<u32>(0u, 13340u, 0u, 4791u), arg_0.x, global1.c, 5068u), Struct_1(vec4<u32>(43061u, 4294967295u, 1u, global2.d), 185f, vec2<i32>(-50289i, u_input.b.x), global2.d)).d)));
    global2 = func_5(_wgslsmith_f_op_vec3_f32(-arg_0), func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global0[_wgslsmith_index_u32(9478u, 13u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.b, var_1.b, var_1.b))) * arg_0)), var_1, func_6(Struct_1(global1.a | global1.a, arg_0.x, global1.c, _wgslsmith_mult_u32(71139u, 0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.b, var_1.b)) * _wgslsmith_f_op_vec3_f32(arg_0 * global0[_wgslsmith_index_u32(30737u, 13u)]))), Struct_1(global2.a, _wgslsmith_f_op_f32(select(-1000f, func_5(global0[_wgslsmith_index_u32(global2.d, 13u)], global3[_wgslsmith_index_u32(global2.d, 31u)], Struct_1(var_1.a, global2.b, var_1.c, 1u), var_1).b, !var_0.x)), _wgslsmith_add_vec2_i32(func_6(Struct_1(vec4<u32>(var_1.d, 16964u, 29648u, 57016u), 2978f, global1.c, 0u), arg_0).c, firstTrailingBit(var_1.c)), 0u)), global3[_wgslsmith_index_u32(4294967295u, 31u)], var_1);
    return ~u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 31>();
    let var_0 = global1.b;
    global2 = Struct_1(~vec4<u32>(~min(43090u, global1.d), max(max(0u, global2.d), ~4294967295u), _wgslsmith_sub_u32(~4294967295u, 0u), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, 847f, -1701f)))), 956f, global2.c, global2.a.x);
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(global1.b + -690f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b + 165f) + global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-198f)) * _wgslsmith_f_op_f32(min(882f, global1.b)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, global1.b, global2.b))))), Struct_1(vec4<u32>(~_wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_mult_u32(11396u, abs(global1.a.x)), ~global1.a.x, func_3(-1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1163f - _wgslsmith_f_op_f32(-global2.b)))), reverseBits(max(abs(u_input.b), global1.c)), ~68569u), global3[_wgslsmith_index_u32(min(select(~(~1u), ~(~global2.d), false), _wgslsmith_add_u32(firstLeadingBit(29946u), _wgslsmith_mult_u32(global1.d, u_input.a.x)) | _wgslsmith_clamp_u32(u_input.a.x << (global1.a.x % 32u), func_5(global0[_wgslsmith_index_u32(0u, 13u)], global3[_wgslsmith_index_u32(18636u, 31u)], global3[_wgslsmith_index_u32(0u, 31u)], Struct_1(global1.a, global1.b, global1.c, global1.a.x)).a.x, global2.d)), 31u)], Struct_1(_wgslsmith_sub_vec4_u32(global2.a, select(vec4<u32>(47497u, u_input.a.x, 8412u, 43181u), global2.a, false) | global2.a), _wgslsmith_f_op_f32(ceil(144f)), reverseBits(vec2<i32>(0i & global1.c.x, 18966i >> (global1.a.x % 32u))), ~_wgslsmith_mult_u32(~u_input.a.x, ~global2.a.x)));
    global0 = array<vec3<f32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_sub_vec4_u32(global1.a ^ reverseBits(vec4<u32>(u_input.a.x, global2.d, var_1.d, 0u)), ~(~global1.a)), -1000f);
}

