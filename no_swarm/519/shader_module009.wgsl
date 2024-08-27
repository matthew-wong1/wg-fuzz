struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31>;

var<private> global1: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(18363u, 1u, 4294967295u, 57076u), vec4<u32>(0u, 4294967295u, 56541u, 34011u));

var<private> global2: vec3<i32>;

var<private> global3: array<bool, 31>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_5) -> u32 {
    var var_0 = arg_1 | _wgslsmith_mod_u32(_wgslsmith_clamp_u32(36787u, reverseBits(arg_1), arg_3.d.x), 20953u);
    let var_1 = arg_3;
    let var_2 = arg_3;
    return countOneBits(countOneBits(min(_wgslsmith_div_u32(1u, ~arg_3.c.a), 4294967295u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: vec3<u32>) -> vec4<i32> {
    global1 = array<vec4<u32>, 2>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_0.a, -359f, 206f) + vec4<f32>(arg_0.a, arg_0.a, 1340f, 1019f)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -239f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a))), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, 1000f) * arg_0.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), arg_1.a, _wgslsmith_div_f32(718f, 995f), _wgslsmith_f_op_f32(floor(arg_0.a))))));
    let var_1 = Struct_3(Struct_1(~68533u, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(arg_3.yx, arg_0.d.zy), ~vec2<u32>(arg_0.d.x, arg_0.d.x)), 0i, arg_0.c), Struct_1(func_3(vec3<i32>(-1i ^ global2.x, reverseBits(1i), ~(-8521i)), arg_1.d.x << (1u % 32u), select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(1u, 31u)], false), vec2<bool>(false, arg_0.c)), Struct_5(vec3<i32>(2147483647i, arg_1.b, arg_0.b) >> (vec3<u32>(24694u, 1u, arg_3.x) % vec3<u32>(32u)), -24956i > u_input.a, Struct_1(1u, -223f, vec2<u32>(arg_1.d.x, 58822u), global2.x, arg_0.c), ~arg_0.d.yz, ~global1[_wgslsmith_index_u32(arg_2, 2u)])), arg_1.a, vec2<u32>(~arg_2, ~arg_0.d.x), 0i, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-541f, arg_0.a, true)) - -485f) * _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_mod_i32(abs(1i & arg_1.b), _wgslsmith_dot_vec2_i32(firstLeadingBit(-vec2<i32>(44134i, -1i)), -_wgslsmith_add_vec2_i32(vec2<i32>(26179i, u_input.a), vec2<i32>(u_input.a, -55181i)))));
    global2 = reverseBits(vec3<i32>(-_wgslsmith_mod_i32(arg_1.b, var_1.a.d), _wgslsmith_div_i32(min(u_input.a, global2.x), _wgslsmith_mod_i32(-25699i, arg_0.b)), -_wgslsmith_sub_i32(var_1.d, arg_1.b))) | (-reverseBits(~vec3<i32>(global2.x, var_1.b.d, 62590i)) | -_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-52094i, var_1.b.d, 20939i), vec3<i32>(u_input.a, -1i, global2.x)), vec3<i32>(-2147483647i, -2599i, var_1.d)));
    global1 = array<vec4<u32>, 2>();
    return _wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.d, global2.x | _wgslsmith_clamp_i32(-arg_1.b, -2147483647i, -30185i), countOneBits(arg_0.b) & arg_0.b, reverseBits(~firstLeadingBit(0i))), _wgslsmith_mod_vec4_i32(~countOneBits(vec4<i32>(arg_1.b, var_1.b.d, global2.x, 0i)), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(global2.x, 15691i), firstTrailingBit(var_1.d)), -arg_0.b | abs(var_1.a.d), ~(-16439i), reverseBits(1i))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_5) -> Struct_4 {
    var var_0 = global2.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.c.b * -355f), 1000f)), -402f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_1.c.b)), _wgslsmith_div_f32(arg_1.c.b, arg_1.c.b)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1244f, -1416f), vec2<f32>(arg_1.c.b, -677f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.c.b, arg_1.c.b))), false == global3[_wgslsmith_index_u32(42176u, 31u)])))) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.c.b, _wgslsmith_f_op_f32(min(arg_1.c.b, _wgslsmith_f_op_f32(-1340f * arg_1.c.b)))), vec2<f32>(503f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(348f - -1302f))))));
    let var_2 = Struct_3(arg_1.c, arg_1.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-206f, -820f)))), arg_1.c.b)), ~arg_0.x);
    var_0 = _wgslsmith_add_i32(-1i, arg_1.a.x);
    var var_3 = var_2;
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(892f, arg_1.c.b)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -125f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-216f, arg_1.c.b))) - vec2<f32>(var_2.b.b, arg_1.c.b)))), all(select(vec4<bool>(true, arg_1.c.e, true, var_2.a.e), vec4<bool>(var_3.a.e, arg_1.b, var_3.a.e, global3[_wgslsmith_index_u32(var_2.a.c.x, 31u)]), vec4<bool>(var_3.b.e, var_2.b.e, false, false))) || (-1i > (var_3.b.d | arg_0.x)))), _wgslsmith_f_op_f32(var_3.c - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1757f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -761f))), true))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = func_4(-func_2(Struct_2(1668f, -2147483647i, true, global0[_wgslsmith_index_u32(4294967295u, 31u)]), Struct_2(-807f, u_input.a, global3[_wgslsmith_index_u32(32648u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]), 0u, vec3<u32>(3087u, 4294967295u, 29639u)) >> ((global1[_wgslsmith_index_u32(~1u, 2u)] | vec4<u32>(~77455u, 1u, 49961u, ~17660u)) % vec4<u32>(32u)), Struct_5(-vec3<i32>(reverseBits(29632i), firstTrailingBit(u_input.a), u_input.a), false | any(arg_0), Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(30403u, 13094u, 7300u), vec3<u32>(67182u, 1u, 1u)), abs(14955u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1439f)), vec2<u32>(1u, _wgslsmith_mod_u32(40096u, 10416u)), firstTrailingBit(_wgslsmith_sub_i32(u_input.a, u_input.a)), all(vec2<bool>(false, arg_0.x))), ~(~vec2<u32>(4294967295u, 4294967295u)), ~firstTrailingBit(~global1[_wgslsmith_index_u32(1u, 2u)])));
    var var_1 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 26988u, 51654u), vec3<u32>(90807u, 11319u, 4294967295u) & global0[_wgslsmith_index_u32(1u, 31u)]), max(_wgslsmith_div_vec3_u32(vec3<u32>(9334u, 15483u, 4294967295u), vec3<u32>(1u, 83152u, 35606u)), ~vec3<u32>(1u, 4294967295u, 4294967295u))), vec3<u32>(~countOneBits(4294967295u), 1u, select(~61221u, _wgslsmith_mod_u32(42500u, 49571u), true)));
    var var_2 = Struct_2(var_0.c, -reverseBits(-1i), any(!select(vec4<bool>(false, false, arg_0.x, true), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, arg_0.x, global3[_wgslsmith_index_u32(4294967295u, 31u)]), false))), global0[_wgslsmith_index_u32(17255u & _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), ~min(4294967295u, 4294967295u)), 31u)]);
    global3 = array<bool, 31>();
    var var_3 = vec2<i32>(min(-_wgslsmith_clamp_i32(-2147483647i, -4597i, -37121i), var_2.b), _wgslsmith_dot_vec3_i32(-countOneBits(vec3<i32>(8201i, 1i, var_2.b)), vec3<i32>(0i, 5565i, countOneBits(-33510i)))) & vec2<i32>(~global2.x, ~(_wgslsmith_sub_i32(global2.x, 7946i) ^ func_2(Struct_2(var_0.b.x, var_2.b, false, var_2.d), Struct_2(var_0.c, 0i, true, vec3<u32>(79666u, 4294967295u, 0u)), 1u, vec3<u32>(0u, var_2.d.x, var_2.d.x)).x));
    return Struct_1(_wgslsmith_clamp_u32(var_2.d.x, ~0u, ~_wgslsmith_div_u32(var_2.d.x, 40222u) & 1u), var_0.b.x, countOneBits(~vec2<u32>(~var_2.d.x, _wgslsmith_add_u32(4294967295u, var_2.d.x))), -1i, any(select(!vec3<bool>(false, false, arg_0.x), !(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), false || (arg_0.x & true))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> bool {
    var var_0 = select(arg_1.e && true, _wgslsmith_mult_i32(abs(-49442i) | arg_1.d, _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_1.d, 1i), ~(-25376i))) < 1i, any(!select(select(vec3<bool>(false, arg_1.e, global3[_wgslsmith_index_u32(arg_1.c.x, 31u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 31u)], false), global3[_wgslsmith_index_u32(31054u, 31u)]), !vec3<bool>(true, global3[_wgslsmith_index_u32(26505u, 31u)], global3[_wgslsmith_index_u32(arg_1.c.x, 31u)]), any(vec3<bool>(arg_1.e, global3[_wgslsmith_index_u32(11786u, 31u)], false)))));
    let var_1 = ~(vec3<i32>(-1i) * -vec3<i32>(-global2.x, reverseBits(-2147483647i), reverseBits(0i)));
    global2 = vec3<i32>(arg_1.d, u_input.a, -global2.x);
    let var_2 = all(select(!(!vec4<bool>(global3[_wgslsmith_index_u32(arg_1.a, 31u)], false, arg_1.e, true)), select(!select(vec4<bool>(false, global3[_wgslsmith_index_u32(63124u, 31u)], global3[_wgslsmith_index_u32(arg_1.a, 31u)], true), vec4<bool>(true, false, arg_1.e, false), vec4<bool>(global3[_wgslsmith_index_u32(arg_1.c.x, 31u)], global3[_wgslsmith_index_u32(0u, 31u)], arg_1.e, arg_1.e)), !(!vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(1u, 31u)], false)), all(vec2<bool>(true, true))), all(vec4<bool>(false && global3[_wgslsmith_index_u32(arg_1.c.x, 31u)], select(false, false, true), true, any(vec4<bool>(arg_1.e, true, global3[_wgslsmith_index_u32(arg_1.c.x, 31u)], global3[_wgslsmith_index_u32(arg_1.a, 31u)]))))));
    var var_3 = ~_wgslsmith_div_u32(arg_1.a, 0u);
    return func_2(Struct_2(-717f, _wgslsmith_mult_i32(u_input.a, abs(global2.x)), all(vec4<bool>(false, var_2, false, true)), vec3<u32>(17372u, 17313u, 4294967295u)), Struct_2(_wgslsmith_f_op_f32(min(arg_1.b, _wgslsmith_f_op_f32(trunc(-1144f)))), arg_1.d, all(vec2<bool>(false, global3[_wgslsmith_index_u32(arg_1.c.x, 31u)])), _wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(~arg_1.a, 31u)], vec3<u32>(1u, 23053u, 63155u))), arg_1.a, global0[_wgslsmith_index_u32(~(arg_1.a ^ 109173u), 31u)]).x != arg_1.d;
}

fn func_6(arg_0: vec3<bool>) -> u32 {
    var var_0 = 1f;
    let var_1 = ~(~(~select(vec4<u32>(4294967295u, 4294967295u, 75257u, 0u), ~global1[_wgslsmith_index_u32(4294967295u, 2u)], !vec4<bool>(true, false, arg_0.x, arg_0.x))));
    var var_2 = -(~_wgslsmith_sub_vec3_i32(~countOneBits(vec3<i32>(-1i, u_input.a, 20557i)), vec3<i32>(~u_input.a, -1785i, 2147483647i)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-272f, _wgslsmith_f_op_f32(-464f + -292f)) * func_4(vec4<i32>(u_input.a, 1i, global2.x, var_2.x) & vec4<i32>(u_input.a, global2.x, 35699i, var_2.x), Struct_5(vec3<i32>(global2.x, u_input.a, -1i), arg_0.x, Struct_1(0u, 584f, var_1.zw, global2.x, false), var_1.xx, vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x))).c)), _wgslsmith_div_i32(-abs(_wgslsmith_div_i32(973i, -11265i)), var_2.x), !arg_0.x, vec3<u32>(_wgslsmith_sub_u32(min(abs(var_1.x), select(var_1.x, 3906u, true)), var_1.x), abs(abs(reverseBits(4294967295u))), ~(~16475u) | _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(global0[_wgslsmith_index_u32(1u, 31u)], vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(var_1.x, var_1.x, var_1.x)), min(var_1.yzz, global0[_wgslsmith_index_u32(23375u, 31u)]))));
    var var_4 = Struct_4(var_3.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1731f, 770f))))), -414f);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(all(vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(45745u, 31u)], false)) && false, !(global3[_wgslsmith_index_u32(69214u, 31u)] & global3[_wgslsmith_index_u32(4294967295u, 31u)]) & !(global3[_wgslsmith_index_u32(0u, 31u)] || false), false, all(select(vec3<bool>(global3[_wgslsmith_index_u32(5925u, 31u)], false, global3[_wgslsmith_index_u32(1u, 31u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 31u)], false, true), vec3<bool>(false, global3[_wgslsmith_index_u32(25201u, 31u)], false), false), !vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 31u)], true, global3[_wgslsmith_index_u32(0u, 31u)]))));
    let var_1 = func_6(vec3<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(1u, 31u)] && true, any(var_0.xyy), true, false)), !func_5(Struct_4(427f, vec2<f32>(1557f, -1205f), 1000f), func_1(var_0.zz)), !func_1(!vec2<bool>(var_0.x, false)).e));
    let var_2 = _wgslsmith_dot_vec3_i32(firstTrailingBit(-countOneBits(~vec3<i32>(2147483647i, -53711i, -1i))), vec3<i32>(-u_input.a, -(~select(105148i, u_input.a, global3[_wgslsmith_index_u32(var_1, 31u)])), u_input.a));
    global3 = array<bool, 31>();
    var var_3 = Struct_3(Struct_1(~var_1, -246f, ~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1, 1u), vec2<u32>(var_1, 48295u)), vec2<u32>(0u, var_1) ^ vec2<u32>(1u, var_1)), -2147483647i, var_0.x), func_1(var_0.ww), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1264f, 709f))) + _wgslsmith_f_op_f32(1513f * -1517f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1039f)) + _wgslsmith_f_op_f32(ceil(149f))))), u_input.a);
    var var_4 = vec3<i32>(~firstTrailingBit(var_2), -49102i, 3298i);
    let var_5 = var_1;
    let var_6 = Struct_5(vec3<i32>(0i, ~(-_wgslsmith_mult_i32(4018i, 1i)), -1i), !(~countOneBits(var_5) == 1u), var_3.a, ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, abs(var_5)), ~select(vec2<u32>(0u, 27540u), var_3.b.c, var_3.b.e)), ~vec4<u32>(~1u >> (~var_5 % 32u), ~var_3.a.a, 0u, ~max(var_5, var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstTrailingBit(~34830u), abs(var_1) & firstLeadingBit(var_5), func_1(!vec2<bool>(true, var_6.c.e)).a), ~_wgslsmith_sub_vec2_i32(var_6.a.zy, abs(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, global2.x), vec2<i32>(-5529i, var_2)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1845f, _wgslsmith_f_op_f32(-var_6.c.b), -639f))))));
}

