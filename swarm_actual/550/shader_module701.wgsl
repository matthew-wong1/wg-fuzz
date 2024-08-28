struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 12>;

var<private> global2: array<vec4<u32>, 27>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, true), 0u, vec2<bool>(false, true), vec2<u32>(6574u, 24374u)), vec2<f32>(-647f, -1050f), true, Struct_1(vec2<bool>(true, false), 418u, vec2<bool>(false, false), vec2<u32>(0u, 29273u)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> i32 {
    let var_0 = vec3<bool>(global3.d.c.x, !all(select(!vec4<bool>(global0.c.x, global3.d.c.x, false, global0.a.x), select(vec4<bool>(true, global3.d.a.x, global0.a.x, true), vec4<bool>(global0.a.x, global3.a.c.x, global3.d.c.x, false), vec4<bool>(global3.c, global0.c.x, false, true)), vec4<bool>(true, false, false, global3.c))), true);
    global1 = array<vec3<f32>, 12>();
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 31177i, 0i), vec4<i32>(40393i, 16262i, arg_0, u_input.a)), -arg_0, 8389i), ~firstLeadingBit(vec3<i32>(31551i, arg_0, 12876i)) ^ ~(vec3<i32>(u_input.a, -1i, u_input.a) >> (arg_1.zzy % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, -22635i, 35490i), -vec3<i32>(u_input.a, 0i, -1i))), _wgslsmith_clamp_vec3_i32(~(vec3<i32>(2147483647i, -750i, arg_0) << (arg_1.zxz % vec3<u32>(32u))), -_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(-1i, arg_0, 1i)), vec3<i32>(1i, u_input.a, 22735i)), vec3<i32>(~max(1i, 19970i), 1i, 2070i)));
    var_1 = u_input.a;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(min(-1165f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.x * global3.b.x) - _wgslsmith_f_op_f32(-global3.b.x)))))), global0.b << (~global0.b % 32u));
    return select(arg_0, ~2147483647i, global3.a.c.x);
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_4 {
    var var_0 = ~abs(min(vec4<i32>(u_input.a, func_3(u_input.a, vec4<u32>(75525u, global3.d.b, global0.d.x, arg_3.d.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 37520i, u_input.a), vec4<i32>(-6939i, u_input.a, u_input.a, u_input.a)), abs(1i)), vec4<i32>(i32(-1i) * -43060i, 0i >> (arg_2.b % 32u), u_input.a, max(-17710i, u_input.a))));
    var_0 = vec4<i32>(2147483647i, -2147483647i, -(-(~0i) | -func_3(-34706i, global2[_wgslsmith_index_u32(1u, 27u)])), ~_wgslsmith_mod_i32(var_0.x, -min(0i, u_input.a)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(437f, arg_3.b.x, arg_3.b.x, global3.b.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(677f, global3.b.x, arg_3.b.x, -182f) - vec4<f32>(-383f, arg_3.b.x, 139f, arg_3.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(134f, global3.b.x, arg_3.b.x, global3.b.x)) - vec4<f32>(global3.b.x, arg_3.b.x, global3.b.x, -1522f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.b.x, global3.b.x, -591f, arg_3.b.x), vec4<f32>(global3.b.x, arg_3.b.x, 685f, 566f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b.x, 1260f, global3.b.x, arg_3.b.x) - vec4<f32>(1084f, global3.b.x, -1056f, -103f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.x, arg_3.b.x, global3.b.x, global3.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-240f, arg_3.b.x, global3.b.x, 700f) - vec4<f32>(1f, 1f, 1f, 1f)))));
    global2 = array<vec4<u32>, 27>();
    global0 = Struct_1(!arg_1.xz, arg_3.d.d.x ^ ~_wgslsmith_div_u32(arg_2.b, 0u), !vec2<bool>(arg_0, false), (abs(vec2<u32>(4294967295u, arg_3.d.b)) << (vec2<u32>(~55024u, global0.d.x) % vec2<u32>(32u))) | vec2<u32>(1u, arg_2.d.x));
    return Struct_4(firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, 16487i, 0i), vec3<i32>(25842i, u_input.a, var_0.x), vec3<bool>(global3.c, global0.a.x, true)), -var_0.wzw), -7684i)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1193f, -926f, _wgslsmith_f_op_f32(round(303f))) * vec3<f32>(global3.b.x, _wgslsmith_f_op_f32(-arg_3.b.x), -141f)))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: i32) -> u32 {
    var var_0 = global0.b;
    var var_1 = global3.a.b << (_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(global3.d.b, global0.d.x & 47059u), ~global0.d.x), abs(_wgslsmith_clamp_u32(global3.a.b ^ 4294967295u, ~global3.d.b, global0.d.x)), countOneBits(~5881u)) % 32u);
    var var_2 = Struct_1(vec2<bool>(all(select(!global3.a.c, global3.a.a, true)), true), _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(global3.d.d.x, 61081u, global0.d.x), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(50504u, global3.a.b, global0.d.x, global0.d.x)), max(vec4<u32>(51808u, global3.d.b, 74261u, global3.a.d.x), global2[_wgslsmith_index_u32(84348u, 27u)])), ~global3.a.d.x << (~global0.b % 32u), select(_wgslsmith_mult_u32(1u, 1u), 8769u, all(vec4<bool>(false, true, global3.d.a.x, true)))), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b, global3.d.b, global0.b), vec3<u32>(global3.a.d.x, global3.a.b, arg_2.b)), _wgslsmith_mult_u32(1u, global0.d.x)), 17721u, 51803u, firstTrailingBit(13472u))), vec2<bool>(!global3.c, (4294967295u ^ global0.b) == _wgslsmith_clamp_u32(global0.b, 53042u, 9116u)), firstLeadingBit(vec2<u32>(~max(4294967295u, 38252u), arg_2.b)));
    global2 = array<vec4<u32>, 27>();
    global2 = array<vec4<u32>, 27>();
    return reverseBits(_wgslsmith_add_u32(_wgslsmith_add_u32(~max(0u, var_2.d.x), ~_wgslsmith_mult_u32(1u, 12781u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global0.d, ~vec2<u32>(4294967295u, 1u)), _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, global3.a.d.x), ~76985u))));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: u32) -> bool {
    var var_0 = global3.b.x;
    var var_1 = !global3.d.a;
    var var_2 = Struct_2(Struct_1(global3.d.c, ~0u, global3.a.a, ~countOneBits(vec2<u32>(0u, arg_0.b))), _wgslsmith_f_op_vec2_f32(global3.b + _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, -128f), _wgslsmith_div_vec2_f32(global3.b, _wgslsmith_div_vec2_f32(vec2<f32>(815f, global3.b.x), vec2<f32>(arg_1, global3.b.x))))), true, Struct_1(global3.a.a, 27866u, global0.c, global0.d));
    var var_3 = 211f;
    global0 = var_2.a;
    return !global3.d.c.x;
}

fn func_6(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    let var_0 = vec4<u32>(0u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(10986u, 59093u, 99782u), vec3<u32>(arg_2.b, 106774u, 0u)), 4294967295u), ~0u, arg_2.b);
    var var_1 = Struct_2(arg_3.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(689f, _wgslsmith_div_f32(global3.b.x, _wgslsmith_f_op_f32(exp2(arg_0.b.x)))) - arg_0.b.xy), !(!arg_1), Struct_1(global0.a, _wgslsmith_dot_vec4_u32(~var_0, firstTrailingBit(global2[_wgslsmith_index_u32(1u, 27u)] | global2[_wgslsmith_index_u32(1u, 27u)])), vec2<bool>(true, true), vec2<u32>(var_0.x & 37151u, 1u)));
    var_1 = Struct_2(global3.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 2078f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, 789f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.b, vec2<f32>(arg_3.b.x, 234f)) * arg_0.b.xx), var_1.d.a.x | all(vec4<bool>(false, global3.d.c.x, arg_3.a.a.x, global0.a.x))))), !select(false && any(vec2<bool>(arg_1, true)), var_1.a.a.x, _wgslsmith_clamp_u32(0u, var_0.x, global0.d.x) >= min(1u, global3.a.b)), var_1.a);
    global2 = array<vec4<u32>, 27>();
    global2 = array<vec4<u32>, 27>();
    return arg_2;
}

fn func_7(arg_0: u32, arg_1: Struct_3, arg_2: bool) -> Struct_4 {
    global2 = array<vec4<u32>, 27>();
    let var_0 = Struct_4(~vec2<i32>(i32(-1i) * -u_input.a, 0i), vec3<f32>(_wgslsmith_f_op_f32(-639f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1424f)), _wgslsmith_f_op_f32(654f * -821f), true))), -340f, _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x + -144f)))));
    global1 = array<vec3<f32>, 12>();
    var var_1 = ~(~(~min(1u, _wgslsmith_add_u32(global3.a.d.x, arg_1.b))));
    var var_2 = vec2<i32>(-51621i, _wgslsmith_add_i32(-var_0.a.x, u_input.a));
    return Struct_4((select(~var_0.a, -var_0.a, select(global3.a.a, global0.a, vec2<bool>(global0.a.x, false))) << (~firstLeadingBit(vec2<u32>(arg_1.b, global3.d.b)) % vec2<u32>(32u))) | func_2(all(!vec3<bool>(false, global0.c.x, global3.a.a.x)), !vec4<bool>(true, true, arg_2, global0.c.x), Struct_1(!vec2<bool>(true, arg_2), ~21527u, !vec2<bool>(global0.c.x, true), countOneBits(global3.a.d)), Struct_2(global3.a, vec2<f32>(arg_1.a, 1000f), any(vec2<bool>(global3.c, arg_2)), Struct_1(vec2<bool>(arg_2, arg_2), global3.d.d.x, global0.c, vec2<u32>(28899u, global3.d.b)))).a, global1[_wgslsmith_index_u32(global0.b, 12u)]);
}

fn func_1() -> Struct_4 {
    let var_0 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(~(~1u), ~global3.a.d.x, 6668u), select(~(~vec3<u32>(global0.d.x, global0.d.x, global0.d.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(18626u, global3.a.d.x, global3.a.b), vec3<u32>(36751u, global3.d.b, 53998u)) | ~vec3<u32>(0u, 60275u, global3.a.d.x), true));
    var var_1 = func_7(abs(~global3.d.d.x), func_6(Struct_4(vec2<i32>(~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 29688i, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, u_input.a, 0i))), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~global3.a.b, 12u)])), func_5(Struct_3(_wgslsmith_f_op_f32(round(global3.b.x)), 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -314f)), 2147483647i, func_4(func_2(global0.a.x, vec4<bool>(true, false, global0.a.x, global3.a.a.x), Struct_1(global0.c, global0.d.x, vec2<bool>(true, global0.a.x), var_0.xy), Struct_2(global3.a, vec2<f32>(global3.b.x, global3.b.x), global0.c.x, Struct_1(global0.c, global0.b, vec2<bool>(global3.c, global0.a.x), vec2<u32>(global0.d.x, global3.d.d.x)))), _wgslsmith_f_op_vec2_f32(floor(global3.b)), Struct_3(global3.b.x, 1u), 2147483647i)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.x - 167f) + _wgslsmith_f_op_f32(-global3.b.x)), var_0.x), Struct_2(Struct_1(global3.a.c, global3.d.d.x | global3.d.b, !vec2<bool>(global0.c.x, global0.a.x), _wgslsmith_sub_vec2_u32(var_0.yz, vec2<u32>(4294967295u, 18706u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global3.b, global3.b)), func_5(Struct_3(global3.b.x, 11213u), -781f, u_input.a, ~var_0.x), global3.d)), global3.a.c.x);
    global0 = global3.d;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-func_7(~max(4294967295u, 1u), func_6(func_7(global0.d.x, Struct_3(global3.b.x, 1u), global0.c.x), func_5(Struct_3(global3.b.x, var_0.x), var_1.b.x, var_1.a.x, 4294967295u), Struct_3(717f, 15658u), Struct_2(global3.a, global3.b, global3.c, Struct_1(global0.a, var_0.x, global0.c, global0.d))), any(!vec3<bool>(global3.d.c.x, global0.a.x, false))).b.x), var_0.x);
    var_1 = func_2(global3.c, !(!select(vec4<bool>(true, true, false, global3.a.c.x), vec4<bool>(global0.c.x, false, global3.c, global3.d.c.x), select(vec4<bool>(global3.a.c.x, true, false, global3.c), vec4<bool>(false, global3.d.a.x, false, true), vec4<bool>(true, global0.c.x, global0.a.x, global3.c)))), Struct_1(global0.a, var_2.b, global0.c, ~_wgslsmith_add_vec2_u32(global0.d, vec2<u32>(0u, global3.a.d.x))), Struct_2(Struct_1(select(select(vec2<bool>(false, global0.a.x), global0.c, global3.c), vec2<bool>(global3.c, global0.a.x), vec2<bool>(false, global3.a.c.x)), ~(var_0.x >> (47987u % 32u)), global3.a.a, vec2<u32>(4294967295u, 26189u)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1416f)), 884f), _wgslsmith_f_op_f32(step(var_2.a, -516f))), all(!select(vec3<bool>(true, global0.c.x, false), vec3<bool>(global0.a.x, false, global0.a.x), vec3<bool>(global3.c, true, global3.a.c.x))), Struct_1(select(!vec2<bool>(global3.d.c.x, global0.a.x), global3.a.a, global3.c), _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(4294967295u, 1u, 28885u) << (var_0 % vec3<u32>(32u))), global3.a.a, select(min(vec2<u32>(23640u, global3.a.d.x), vec2<u32>(global3.d.d.x, var_2.b)), vec2<u32>(16288u, 1u), global0.a.x))));
    return Struct_4(vec2<i32>(~_wgslsmith_sub_i32(u_input.a, i32(-1i) * -10285i), var_1.a.x), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(func_6(Struct_4(vec2<i32>(-26741i, -9473i), global1[_wgslsmith_index_u32(global3.d.b, 12u)]), true, Struct_3(global3.b.x, 6662u), Struct_2(Struct_1(vec2<bool>(true, true), global3.a.d.x, global0.a, vec2<u32>(global0.b, 42758u)), var_1.b.xz, true, global3.a)).a)), func_7(_wgslsmith_clamp_u32(41154u, 28739u, 33646u), Struct_3(-1059f, var_0.x), global0.c.x | global0.a.x).b.x), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(step(1000f, global3.b.x))))));
}

fn func_8(arg_0: Struct_4, arg_1: Struct_4) -> vec3<i32> {
    let var_0 = 4294967295u;
    var var_1 = vec4<bool>(all(vec3<bool>(all(vec3<bool>(true, global3.d.a.x, global0.a.x)), true, !global0.a.x)) && false, false, global0.c.x, true);
    global0 = global3.d;
    global1 = array<vec3<f32>, 12>();
    var var_2 = func_1();
    return min(~vec3<i32>(var_2.a.x, arg_1.a.x, ~(u_input.a & u_input.a)), vec3<i32>((~37573i ^ _wgslsmith_sub_i32(-1i, var_2.a.x)) ^ _wgslsmith_mult_i32(-11728i, countOneBits(-37941i)), abs(-52482i), countOneBits(_wgslsmith_mod_i32(2084i, 1i))));
}

fn func_9(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(324f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(abs(-363f)), any(global3.d.a))), -2096f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(reverseBits(41624u), 12u)] - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.b.x, global3.b.x, 940f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(317f, arg_1.b.x, global3.b.x)), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(arg_1.a.b, 12u)]))), select(vec3<bool>(false, true, false), vec3<bool>(false, false, arg_1.d.c.x), vec3<bool>(false, global0.a.x, false))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_6(Struct_4(vec2<i32>(u_input.a, 45078i), global1[_wgslsmith_index_u32(arg_1.a.b, 12u)]), all(vec3<bool>(arg_1.a.c.x, arg_1.d.a.x, false)), func_6(Struct_4(arg_0.zx, vec3<f32>(global3.b.x, -1000f, 1216f)), true, Struct_3(global3.b.x, 0u), Struct_2(global3.a, vec2<f32>(-753f, 992f), global3.d.a.x, Struct_1(vec2<bool>(arg_1.d.a.x, arg_1.d.c.x), arg_1.d.b, arg_1.d.a, global3.d.d))), Struct_2(Struct_1(arg_1.d.c, arg_1.a.b, global0.c, global3.d.d), vec2<f32>(619f, global3.b.x), false, arg_1.a)).a, -865f, 435f)));
    global1 = array<vec3<f32>, 12>();
    global1 = array<vec3<f32>, 12>();
    global3 = Struct_2(global3.a, _wgslsmith_f_op_vec2_f32(-global3.b), true, global3.a);
    var var_1 = ~(-27186i);
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_9(select(vec3<i32>(firstTrailingBit(1i), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(8855i, 0i, 1i, 2147483647i), vec4<i32>(48910i, 1i, -1i, 0i))), -(~58660i)), func_8(func_1(), Struct_4(_wgslsmith_mult_vec2_i32(vec2<i32>(18014i, 2147483647i), vec2<i32>(u_input.a, -7777i)), _wgslsmith_f_op_vec3_f32(select(global1[_wgslsmith_index_u32(52718u, 12u)], vec3<f32>(724f, 230f, -812f), vec3<bool>(true, true, global0.c.x))))), false), Struct_2(global3.a, vec2<f32>(-1204f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -442f))), global0.a.x, global3.d));
    let var_0 = func_6(Struct_4(_wgslsmith_sub_vec2_i32(select(abs(vec2<i32>(-511i, u_input.a)), -vec2<i32>(-2147483647i, u_input.a), global3.d.a), ~(~vec2<i32>(u_input.a, u_input.a))), vec3<f32>(_wgslsmith_f_op_f32(212f * _wgslsmith_f_op_f32(f32(-1f) * -288f)), _wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_div_f32(global3.b.x, _wgslsmith_f_op_f32(global3.b.x - global3.b.x)))), global0.a.x && true, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1042f)), _wgslsmith_dot_vec3_u32(~min(vec3<u32>(global0.b, 5441u, global3.d.b), vec3<u32>(global0.d.x, 4294967295u, 22531u)), abs(vec3<u32>(1398u, global3.d.b, 0u)))), Struct_2(Struct_1(!(!global0.a), firstTrailingBit(firstLeadingBit(global0.b)), global0.c, ~vec2<u32>(global0.d.x, global3.a.d.x)), global3.b, func_5(func_6(func_1(), false, func_6(Struct_4(vec2<i32>(64121i, -57810i), vec3<f32>(global3.b.x, -485f, -1095f)), true, Struct_3(1022f, 19075u), Struct_2(Struct_1(global0.a, 652u, vec2<bool>(global0.a.x, true), vec2<u32>(global0.d.x, 4294967295u)), global3.b, global3.d.a.x, Struct_1(vec2<bool>(false, global3.a.a.x), global0.b, global3.a.a, vec2<u32>(40758u, 4294967295u)))), Struct_2(global3.d, global3.b, true, global3.d)), _wgslsmith_f_op_f32(f32(-1f) * -1294f), min(u_input.a >> (44717u % 32u), u_input.a), ~global0.b), func_9(abs(-vec3<i32>(u_input.a, 28180i, -4035i)), Struct_2(Struct_1(global0.c, global0.d.x, vec2<bool>(true, global0.a.x), vec2<u32>(global3.a.d.x, 0u)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -1247f))), global0.c.x, func_9(vec3<i32>(-2147483647i, -19137i, u_input.a), Struct_2(Struct_1(vec2<bool>(true, global0.a.x), global0.b, global0.a, global3.a.d), vec2<f32>(global3.b.x, global3.b.x), global0.a.x, global3.a))))));
    var var_1 = global0.c.x;
    var var_2 = Struct_2(func_9(abs(countOneBits(func_8(Struct_4(vec2<i32>(u_input.a, u_input.a), global1[_wgslsmith_index_u32(global0.b, 12u)]), Struct_4(vec2<i32>(5781i, 2147483647i), global1[_wgslsmith_index_u32(4294967295u, 12u)])))), Struct_2(global3.a, global3.b, true, Struct_1(!global0.a, 1u, global3.d.a, global0.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(135f * global3.b.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.b) * global3.b)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global3.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.x, 908f) - vec2<f32>(404f, var_0.a)), !vec2<bool>(global3.d.a.x, global3.a.c.x))))), !(0u < reverseBits(4294967295u << (var_0.b % 32u))), global3.a);
    var var_3 = _wgslsmith_f_op_vec3_f32(-func_7(_wgslsmith_dot_vec2_u32(global0.d | abs(var_2.d.d), countOneBits(~var_2.a.d)), var_0, global0.c.x).b);
    var var_4 = reverseBits(select(reverseBits(vec3<u32>(var_2.d.d.x, var_2.a.b, global3.d.b)), ~vec3<u32>(25189u, global3.a.b, 17581u), global0.c.x)) | vec3<u32>(_wgslsmith_div_u32(0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.d.d.x, 74053u), global0.d)), ~(~66770u), 1u);
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.x)))) + -412f) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -638f), _wgslsmith_div_f32(-804f, func_6(Struct_4(vec2<i32>(0i, u_input.a), vec3<f32>(182f, 579f, var_3.x)), true | global3.a.c.x, Struct_3(var_2.b.x, global0.d.x), Struct_2(Struct_1(vec2<bool>(var_2.c, true), global3.d.b, vec2<bool>(false, false), global3.a.d), var_2.b, false, global3.a)).a), !global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_div_f32(global3.b.x, _wgslsmith_f_op_f32(step(func_7(0u, func_6(Struct_4(vec2<i32>(u_input.a, u_input.a), vec3<f32>(var_0.a, 1759f, var_0.a)), true, Struct_3(var_0.a, 4294967295u), Struct_2(var_2.d, vec2<f32>(-1023f, global3.b.x), var_2.a.a.x, global3.d)), any(vec4<bool>(true, global3.a.a.x, global3.c, false))).b.x, _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(ceil(572f)))))), ~var_0.b, u_input.a, var_2.d.b);
}

