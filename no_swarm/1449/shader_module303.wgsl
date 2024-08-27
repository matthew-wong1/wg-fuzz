struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 8>;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec2<u32>(1u, 1u), 98463u, true, Struct_1(vec2<bool>(true, true))), Struct_2(vec2<u32>(1u, 4294967295u), 47210u, false, Struct_1(vec2<bool>(true, true))), Struct_2(vec2<u32>(0u, 1u), 1u, true, Struct_1(vec2<bool>(true, false))), Struct_2(vec2<u32>(1u, 0u), 4294967295u, false, Struct_1(vec2<bool>(false, true))), Struct_2(vec2<u32>(1u, 3261u), 70012u, true, Struct_1(vec2<bool>(false, true))), Struct_2(vec2<u32>(64524u, 79676u), 9304u, true, Struct_1(vec2<bool>(false, false))), Struct_2(vec2<u32>(4294967295u, 1u), 57726u, false, Struct_1(vec2<bool>(false, true))), Struct_2(vec2<u32>(4294967295u, 4450u), 1u, false, Struct_1(vec2<bool>(true, false))), Struct_2(vec2<u32>(1u, 17362u), 84689u, true, Struct_1(vec2<bool>(false, false))), Struct_2(vec2<u32>(4294967295u, 4294967295u), 36561u, false, Struct_1(vec2<bool>(true, false))), Struct_2(vec2<u32>(84505u, 48139u), 23098u, true, Struct_1(vec2<bool>(true, false))));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_5) -> vec3<u32> {
    let var_0 = Struct_1(!select(!(!vec2<bool>(arg_1.a.x, true)), arg_1.a.xx, arg_1.a.yx));
    global1 = array<Struct_2, 11>();
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(249f, 1681f), vec2<f32>(596f, -549f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(753f, -706f)))), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-572f, -550f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-644f, -289f) + vec2<f32>(-960f, 781f))))), var_0.a));
    var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 469f) + vec2<f32>(var_1.x, 493f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-630f, var_1.x)), true)))))));
    var var_2 = arg_0.zy;
    return vec3<u32>(_wgslsmith_mult_u32(1u, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(52784u, u_input.a, 56974u, u_input.a), reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 5405u))))), select(u_input.a, ~u_input.a, any(select(vec4<bool>(arg_1.a.x, var_0.a.x, var_0.a.x, arg_1.a.x), !vec4<bool>(var_0.a.x, false, arg_1.a.x, arg_1.a.x), true))), abs(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.a, u_input.a), 0u)));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> Struct_3 {
    global0 = array<vec2<u32>, 8>();
    var var_0 = ~(~arg_1.wyy);
    global1 = array<Struct_2, 11>();
    var_0 = vec3<u32>(1u, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(38555u, 52990u, arg_1.x), arg_1.zxz, arg_1.x > u_input.a), func_3(~vec3<i32>(arg_0, arg_0, arg_0), Struct_5(vec4<bool>(true, true, true, true)))), (select(_wgslsmith_div_u32(u_input.a, 4294967295u), ~1u, any(vec3<bool>(false, true, false))) | reverseBits(firstTrailingBit(30765u))) & ~(~var_0.x));
    global0 = array<vec2<u32>, 8>();
    return Struct_3(global1[_wgslsmith_index_u32(45997u, 11u)], true, firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~arg_1.xyw, arg_1.yzx), arg_1.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec3<bool>) -> Struct_5 {
    var var_0 = func_2(28269i, ~(~vec4<u32>(firstLeadingBit(u_input.a), 1u, _wgslsmith_add_u32(43532u, 26179u), 1u)));
    var_0 = Struct_3(Struct_2(abs(~_wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(var_0.a.a.x, 8u)], vec2<u32>(1349u, 0u))), 0u, var_0.b, var_0.a.d), func_2(max(~(-12990i), arg_2.a.x), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.a.x, 75544u, 4294967295u, arg_2.b.a.x), vec4<u32>(9504u, arg_2.b.a.x, 21834u, arg_2.b.b), vec4<u32>(1u, 1u, 5377u, 26430u)) ^ firstLeadingBit(vec4<u32>(u_input.a, 1u, 0u, 7445u)))).b, countOneBits(_wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, arg_1.c | var_0.c), _wgslsmith_sub_u32(arg_2.b.b, _wgslsmith_div_u32(4294967295u, arg_2.b.a.x)))));
    let var_1 = Struct_3(Struct_2(_wgslsmith_mult_vec2_u32(~select(arg_1.a.a, vec2<u32>(19370u, arg_1.c), true), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.b.a.x, arg_1.c) ^ vec2<u32>(0u, arg_1.a.b), vec2<u32>(var_0.c, arg_1.c))), arg_2.b.a.x, func_2(min(-1i, -arg_2.a.x), ~vec4<u32>(arg_2.b.a.x, 17232u, var_0.a.a.x, arg_1.c)).a.c, Struct_1(vec2<bool>(func_2(3991i, vec4<u32>(arg_1.c, var_0.c, arg_2.b.a.x, arg_2.b.b)).a.c, all(arg_3)))), false, 1u);
    var var_2 = vec2<i32>(countOneBits(-arg_2.a.x), -29641i);
    global1 = array<Struct_2, 11>();
    return Struct_5(vec4<bool>(false, arg_1.a.d.a.x, false, any(vec4<bool>(all(arg_3), arg_1.b, any(vec4<bool>(arg_3.x, true, var_0.a.d.a.x, var_1.b)), true))));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: vec3<f32>) -> u32 {
    var var_0 = false;
    let var_1 = Struct_4(vec3<i32>(i32(-1i) * -_wgslsmith_clamp_i32(-36080i, -2147483647i, -2147483647i), 2147483647i, -1i), Struct_2(global0[_wgslsmith_index_u32(5736u, 8u)], ~44013u, arg_2.x >= _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-arg_2.x)), func_2(reverseBits(i32(-1i) * -2147483647i), ~reverseBits(vec4<u32>(arg_1, 17704u, arg_1, 32844u))).a.d), Struct_1(!select(select(arg_0.a.zx, vec2<bool>(true, true), true), vec2<bool>(arg_0.a.x, true), !arg_0.a.xy)), arg_0.a.x);
    var var_2 = _wgslsmith_dot_vec3_u32(func_3(~var_1.a | _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.a.x, var_1.a.x, 37407i), var_1.a), ~vec3<i32>(-2147483647i, 1i, -13080i)), Struct_5(select(arg_0.a, func_1(Struct_1(vec2<bool>(var_1.b.c, var_1.c.a.x)), Struct_3(Struct_2(global0[_wgslsmith_index_u32(46799u, 8u)], 4294967295u, true, var_1.b.d), var_1.c.a.x, 10006u), Struct_4(vec3<i32>(2147483647i, 40032i, 34173i), var_1.b, Struct_1(vec2<bool>(false, var_1.c.a.x)), arg_0.a.x), arg_0.a.zyz).a, arg_0.a))), ~(~(~select(vec3<u32>(0u, 58117u, u_input.a), vec3<u32>(36985u, 9245u, 1u), var_1.b.c))));
    var var_3 = !all(arg_0.a.zy);
    return _wgslsmith_mult_u32(min(~countOneBits(4294967295u), ~_wgslsmith_clamp_u32(~23205u, arg_1, ~4294967295u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, var_1.b.a.x), ~vec3<u32>(arg_1, u_input.a, u_input.a)) & func_2(~var_1.a.x, abs(vec4<u32>(28480u, 32647u, u_input.a, var_1.b.b))).a.a.x, ~132468u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -17064i;
    let var_1 = Struct_4(~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(0i, 4658i, 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1i, -1i), vec3<i32>(-2147483647i, -1i, 40652i), vec3<i32>(-1i, 2147483647i, 49311i)) << (_wgslsmith_add_vec3_u32(vec3<u32>(6356u, 4294967295u, 47259u), vec3<u32>(33422u, u_input.a, 4294967295u)) % vec3<u32>(32u))), Struct_2(global0[_wgslsmith_index_u32(87215u, 8u)] & firstLeadingBit(~global0[_wgslsmith_index_u32(u_input.a, 8u)]), ~func_4(func_1(Struct_1(vec2<bool>(true, true)), Struct_3(global1[_wgslsmith_index_u32(31472u, 11u)], false, u_input.a), Struct_4(vec3<i32>(1i, 1i, 19483i), Struct_2(vec2<u32>(u_input.a, u_input.a), 17070u, false, Struct_1(vec2<bool>(true, true))), Struct_1(vec2<bool>(true, false)), true), vec3<bool>(true, false, true)), _wgslsmith_sub_u32(u_input.a, u_input.a), vec3<f32>(-1901f, -720f, 513f)), func_1(Struct_1(vec2<bool>(true, true)), Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(74157u, u_input.a), 11u)], all(vec3<bool>(false, false, false)), 52636u), Struct_4(-vec3<i32>(-1i, 0i, 147i), func_2(-1i, vec4<u32>(u_input.a, u_input.a, 1u, 5300u)).a, func_2(-14355i, vec4<u32>(4294967295u, 82334u, u_input.a, u_input.a)).a.d, true), vec3<bool>(true, any(vec2<bool>(true, false)), true)).a.x, func_2(-_wgslsmith_mod_i32(-1i, -13596i), ~(~vec4<u32>(u_input.a, 125301u, 63698u, 0u))).a.d), func_2(_wgslsmith_mod_i32(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(34312i, -1i, -1180i), vec3<i32>(-1i, 16480i, -35458i))), 0i), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 31877u, 4294967295u, 10499u), vec4<u32>(0u, 96593u, 0u, 4294967295u)) ^ ~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a))).a.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1080f + -2221f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-526f * 1373f) - _wgslsmith_div_f32(961f, _wgslsmith_f_op_f32(f32(-1f) * -1620f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, min(0i, _wgslsmith_mult_i32(var_1.a.x, var_1.a.x)), _wgslsmith_sub_i32(2147483647i, abs(var_1.a.x))), var_1.a), ~4294967295u);
}

