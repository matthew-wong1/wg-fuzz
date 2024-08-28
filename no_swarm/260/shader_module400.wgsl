struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(1u, 1u, 4294967295u, 26853u, 4294967295u, 0u, 1u, 1u, 23165u, 1u, 49914u, 4294967295u, 50182u, 1u, 1u, 20830u, 21930u);

var<private> global1: array<bool, 5> = array<bool, 5>(true, false, false, true, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> f32 {
    let var_0 = false || !(!any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 5u)], false)));
    let var_1 = vec4<bool>(true, true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-2378f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(978f, -156f) * 996f))) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(473f)), _wgslsmith_f_op_f32(floor(-707f))) * _wgslsmith_f_op_f32(-1102f - _wgslsmith_f_op_f32(1471f + 1772f))), all(select(select(vec2<bool>(false, false), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 5u)], false), !vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 5u)])), !select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), true), !(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 5u)], var_0)))));
    let var_2 = u_input.b.x;
    let var_3 = 102534u;
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-296f, -348f, 978f, -1795f), vec4<f32>(154f, 1529f, 602f, 1494f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1475f, -1000f, -1372f, -309f), vec4<f32>(1810f, -404f, 1000f, 783f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-937f, 446f, -1005f, 905f), vec4<f32>(-2436f, -1415f, -288f, 121f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(518f, -271f, 979f, -624f)), select(vec4<bool>(var_0, true, var_1.x, true), !vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 5u)], true, var_0), true))), var_1)), var_1, firstLeadingBit(vec3<i32>(var_2, _wgslsmith_sub_i32(~(-36933i), 1i), 1i)), var_0);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -917f))))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    global1 = array<bool, 5>();
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-744f, arg_1, 124f, arg_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(542f, arg_1, -227f, -2429f) - vec4<f32>(arg_1, -2275f, arg_1, arg_1)))), vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(select(arg_1, arg_1, arg_0.x)), _wgslsmith_f_op_f32(-arg_1), -1357f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -660f), arg_1, _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(1078f + arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2125f * arg_1)))), select(select(select(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 5u)], arg_0.x, global1[_wgslsmith_index_u32(20659u, 5u)]), vec4<bool>(true, true, true, true), false), !arg_0, !vec4<bool>(false, arg_0.x, false, arg_0.x)), arg_0, all(select(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(105242u, 17u)], 5u)], false), select(arg_0, arg_0, vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.a, 5u)])), any(arg_0.xzy)))), vec3<i32>(u_input.b.x, select(-u_input.b.x, -u_input.b.x, false), max(0i << (1u % 32u), 7918i)) ^ vec3<i32>(-7947i, reverseBits(reverseBits(-1i)), u_input.b.x), !arg_0.x);
    var var_1 = Struct_2(vec3<u32>(1u, u_input.a, reverseBits(_wgslsmith_div_u32(u_input.a, global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 17u)]), 17u)]))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(~29048u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, 34227u), vec4<u32>(u_input.a, 25217u, u_input.a, u_input.a)), reverseBits(vec4<u32>(34152u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21414u, 17u)], 17u)], 69958u)))), 4294967295u), Struct_1(var_0.a, vec4<bool>(!(!arg_0.x), true, all(vec3<bool>(true, global1[_wgslsmith_index_u32(36654u, 5u)], arg_0.x)), true), -(_wgslsmith_sub_vec3_i32(u_input.b.wwz, vec3<i32>(0i, -1i, 13665i)) ^ u_input.b.xxz), true), u_input.b, ~_wgslsmith_sub_vec4_u32(firstTrailingBit(select(vec4<u32>(1u, u_input.a, 1u, 95476u), vec4<u32>(121944u, 47587u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)]), false)), ~vec4<u32>(global0[_wgslsmith_index_u32(48212u, 17u)], u_input.a, 13459u, 30297u)));
    return ~u_input.a;
}

fn func_1() -> vec3<u32> {
    global0 = array<u32, 17>();
    let var_0 = all(vec4<bool>(any(!vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9192u, 17u)], 5u)], global1[_wgslsmith_index_u32(10172u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(41386u, 5u)])), true, select(global1[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(func_2(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 5u)], true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 5u)], global1[_wgslsmith_index_u32(1u, 5u)]), -527f), 17u)] > _wgslsmith_div_u32(39711u, 54847u), !all(vec3<bool>(global1[_wgslsmith_index_u32(76238u, 5u)], false, true))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(38296u, ~_wgslsmith_mod_u32(u_input.a, 0u)), 5u)]));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1433f * 462f) - -463f), _wgslsmith_f_op_f32(1523f + _wgslsmith_f_op_f32(min(-1581f, _wgslsmith_f_op_f32(203f + 449f)))), _wgslsmith_f_op_f32(1123f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(450f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(168f + 900f) + -600f) * 1f)), select(select(!select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(false, global1[_wgslsmith_index_u32(41712u, 5u)], true, true), global1[_wgslsmith_index_u32(4294967295u, 5u)]), !vec4<bool>(var_0, false, true, var_0), global1[_wgslsmith_index_u32(40952u, 5u)]), vec4<bool>(true, true, 26216u == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65650u >> (1u % 32u), 17u)], 17u)], _wgslsmith_div_i32(u_input.b.x, -1i) == min(u_input.b.x, u_input.b.x)), u_input.b.x == select(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), u_input.b.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(102928u, 17u)], 4294967295u, 0u), vec3<u32>(u_input.a, 72174u, 55169u)), 5u)])), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(reverseBits(vec3<i32>(29101i, 0i, u_input.b.x))), vec3<i32>(-7855i, countOneBits(-1i), 1i)), vec3<i32>(_wgslsmith_clamp_i32(reverseBits(u_input.b.x), u_input.b.x, max(u_input.b.x, u_input.b.x)), _wgslsmith_mod_i32(~u_input.b.x, 1i), ~_wgslsmith_mult_i32(u_input.b.x, -128i))), !var_0);
    let var_2 = select(vec3<u32>(4294967295u, u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], u_input.a), vec2<u32>(1u, 1u))) & vec3<u32>(abs(min(u_input.a, 0u)), min(select(1u, global0[_wgslsmith_index_u32(59219u, 17u)], var_0), 67333u), ~(~u_input.a)), (vec3<u32>(global0[_wgslsmith_index_u32(1u, 17u)] & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 0u, ~u_input.a) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(21883u, 17u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13580u, 17u)], 17u)]), vec3<u32>(1u, 1u, u_input.a)) % vec3<u32>(32u))) >> (~(reverseBits(vec3<u32>(1u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)], 17u)])) & (vec3<u32>(u_input.a, 17067u, u_input.a) | vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 17u)], 1u))) % vec3<u32>(32u)), (!any(vec3<bool>(global1[_wgslsmith_index_u32(33501u, 5u)], false, false)) & any(!var_1.b.xwy)) && false);
    var var_3 = _wgslsmith_mod_i32(var_1.c.x << (_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(var_2.x, 17u)] ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)]), 17u)], _wgslsmith_mult_u32(1u, var_2.x) & firstLeadingBit(u_input.a)) % 32u), 1097i);
    return countOneBits(var_2);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<i32>) -> Struct_2 {
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    var var_0 = arg_0.c;
    let var_1 = Struct_2(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(min(arg_0.a, vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], 1u, 6957u)), abs(vec3<u32>(global0[_wgslsmith_index_u32(68262u, 17u)], 11154u, 0u))), arg_0.a), func_1()), abs(func_1().x), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a.x)) + arg_0.c.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.c.a.x - -185f))), -151f, -644f), select(!arg_1.b, vec4<bool>(-1i > var_0.c.x, global1[_wgslsmith_index_u32(~arg_0.b, 5u)], arg_0.c.d, true | arg_0.c.b.x), select(!vec4<bool>(true, var_0.b.x, var_0.d, global1[_wgslsmith_index_u32(2640u, 5u)]), vec4<bool>(arg_0.c.d, var_0.d, arg_1.b.x, arg_0.c.b.x), arg_1.d)), _wgslsmith_add_vec3_i32(-(~vec3<i32>(1i, arg_0.d.x, 44026i)), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-10714i, 2147483647i, arg_1.c.x)), vec3<i32>(-24707i, 36722i, 19123i))), all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 17u)] != arg_0.a.x, arg_1.b.x || global1[_wgslsmith_index_u32(1u, 5u)], arg_0.c.a.x < var_0.a.x))), u_input.b >> (arg_0.e % vec4<u32>(32u)), min(abs(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, arg_0.e.x, 1u, arg_0.a.x), vec4<u32>(1u, u_input.a, 27609u, 1u) | arg_0.e)), ~arg_0.e));
    let var_2 = ~(~(u_input.a >> ((arg_0.e.x ^ arg_0.a.x) % 32u)));
    return Struct_2(firstLeadingBit(vec3<u32>(~(~17008u), func_2(!arg_1.b, -1925f), func_1().x)), countOneBits(4294967295u), var_1.c, firstLeadingBit(-arg_0.d), min(~vec4<u32>(1u, 26255u, 1u, ~var_1.b), ~arg_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(max(func_1(), vec3<u32>(max(global0[_wgslsmith_index_u32(4294967295u, 17u)], 10243u), min(30467u, 90329u), 0u)), 1u, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(622f, -362f, -1760f, 397f), vec4<f32>(-1252f, -876f, -1450f, 124f), global1[_wgslsmith_index_u32(4788u, 5u)])) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1614f, -1881f, -1245f, -787f)))), vec4<bool>(!global1[_wgslsmith_index_u32(0u, 5u)], 13173u != global0[_wgslsmith_index_u32(94806u, 17u)], true, false), u_input.b.zxx, global1[_wgslsmith_index_u32(43720u, 5u)]), _wgslsmith_div_vec4_i32(u_input.b, u_input.b), ~firstLeadingBit(countOneBits(vec4<u32>(4294967295u, 5214u, 18015u, 4294967295u)))), Struct_1(vec4<f32>(-1203f, _wgslsmith_f_op_f32(-544f - -509f), _wgslsmith_div_f32(-1524f, -175f), -336f), vec4<bool>(true, global1[_wgslsmith_index_u32(~27040u, 5u)], abs(-4173i) != firstTrailingBit(0i), all(vec3<bool>(false, false, false))), vec3<i32>(2147483647i << (global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 0u), 17u)] % 32u), i32(-1i) * -6026i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 2076i, u_input.b.x, u_input.b.x)), abs(-1i))), !global1[_wgslsmith_index_u32(~74532u, 5u)] && (57184u == _wgslsmith_add_u32(u_input.a, u_input.a))), ~vec4<i32>(1i, _wgslsmith_dot_vec2_i32(u_input.b.wy, vec2<i32>(-32141i, 861i) ^ u_input.b.ww), 21378i, u_input.b.x), ~u_input.b);
    let var_1 = vec3<u32>(func_2(!func_4(func_4(Struct_2(vec3<u32>(27205u, 49162u, u_input.a), global0[_wgslsmith_index_u32(var_0.b, 17u)], var_0.c, vec4<i32>(-2147483647i, 4599i, -7156i, var_0.d.x), var_0.e), var_0.c, vec4<i32>(u_input.b.x, 1i, -42810i, var_0.d.x), u_input.b), Struct_1(var_0.c.a, vec4<bool>(false, var_0.c.b.x, false, var_0.c.d), var_0.c.c, false), ~vec4<i32>(u_input.b.x, var_0.c.c.x, -29227i, var_0.d.x), ~var_0.d).c.b, var_0.c.a.x), _wgslsmith_div_u32(112118u, 4294967295u), reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~u_input.a), 17u)], 17u)]));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.x)), 271f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yy << (vec2<u32>(u_input.a >> (firstTrailingBit(var_0.b) % 32u), select(33192u, 10678u, var_0.c.d) << (select(var_1.x, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 5u)]) % 32u)) % vec2<u32>(32u)), ~vec4<i32>(var_0.c.c.x, _wgslsmith_sub_i32(-4862i, ~(-74042i)), 1i >> (var_1.x % 32u), _wgslsmith_div_i32(-u_input.b.x, var_0.c.c.x)), _wgslsmith_div_i32(_wgslsmith_sub_i32(abs(-2147483647i), 1i), min(_wgslsmith_sub_i32(~0i, var_0.d.x), u_input.b.x)));
}

