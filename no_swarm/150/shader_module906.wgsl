struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: array<vec3<f32>, 4>;

var<private> global2: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true));

var<private> global3: Struct_4 = Struct_4(false);

var<private> global4: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), 12470i), vec2<i32>(-14006i, -24140i), vec2<i32>(1i, -1i), vec2<i32>(-23287i, 2147483647i), vec2<i32>(1i, 31212i), vec2<i32>(4268i, 1i), vec2<i32>(-7487i, 16287i), vec2<i32>(0i, 0i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-33491i, i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-1i, 17671i), vec2<i32>(-3250i, 0i), vec2<i32>(46318i, 14183i), vec2<i32>(-37086i, -33347i), vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), -21786i), vec2<i32>(0i, -6840i), vec2<i32>(0i, 8515i), vec2<i32>(57537i, -78680i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(1009i, -1i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    global4 = array<vec2<i32>, 23>();
    var var_0 = _wgslsmith_f_op_vec3_f32(min(global1[_wgslsmith_index_u32(abs(reverseBits(4294967295u) ^ ~u_input.b.x), 4u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(33866u, 4u)] - global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(57768u, _wgslsmith_clamp_u32(0u, 25363u, u_input.b.x), abs(28036u)), 4u)]) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-458f, -1857f, arg_0.a.b.x), global1[_wgslsmith_index_u32(u_input.b.x, 4u)])) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(798f, -430f, arg_0.a.b.x), vec3<f32>(arg_0.a.b.x, -693f, -676f))))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b.x * -1000f) - var_0.x))))));
    let var_2 = true;
    var var_3 = arg_0.a.b.x;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.b) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.b.x), -1172f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.b.x, 1251f, arg_0.a.b.x)))), vec3<bool>(global3.a, arg_0.a.c.x, any(!global2[_wgslsmith_index_u32(54823u, 31u)])))));
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    let var_0 = !(!(!(!vec2<bool>(global3.a, arg_0.a.a.a.x))));
    global4 = array<vec2<i32>, 23>();
    global0 = array<i32, 15>();
    global2 = array<vec3<bool>, 31>();
    let var_1 = Struct_3(Struct_2(Struct_1(vec3<bool>(arg_0.a.a.a.x, true, any(vec4<bool>(true, arg_0.a.a.a.x, false, arg_0.a.a.a.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(global2[_wgslsmith_index_u32(35746u, 31u)], arg_0.b.b, var_0, u_input.a, vec3<i32>(-26476i, u_input.a, -53366i))))))), var_0, 17537i, arg_0.a.a.e)), Struct_1(select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), ~vec2<u32>(6515u, u_input.b.x)), 31u)], select(arg_0.a.a.a, arg_0.a.a.a, !arg_0.b.c.x), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(294f, arg_0.a.a.b.x, arg_0.b.b.x))), select(select(vec2<bool>(var_0.x, arg_0.a.a.c.x), !arg_0.b.c, select(arg_0.a.a.c, arg_0.a.a.c, false)), vec2<bool>(false, var_0.x), true), abs(select(u_input.a, min(8438i, 88871i), !arg_0.b.a.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-6617i, -69572i), max(-12216i, 53938i), reverseBits(arg_0.a.a.e.x)), vec3<i32>(-2147483647i, 48350i, 7669i) | arg_0.b.e, vec3<i32>(-55669i, 21842i, global0[_wgslsmith_index_u32(33675u, 15u)]) & reverseBits(vec3<i32>(arg_0.b.d, global0[_wgslsmith_index_u32(43926u, 15u)], 56692i)))), u_input.b.x);
    return Struct_3(var_1.a, arg_0.a.a, ~(arg_0.c >> (~92369u % 32u)));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_4) -> vec2<bool> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(trunc(-1983f)) >= _wgslsmith_f_op_vec3_f32(func_3(arg_2.a)).x);
    let var_1 = Struct_3(arg_2.a, func_2(arg_2).a.a, ~_wgslsmith_mod_u32(~(~u_input.b.x), ~u_input.b.x));
    var_0 = arg_3;
    var_0 = Struct_4(all(vec4<bool>(!arg_1.x && true, arg_3.a, !arg_3.a, true)));
    let var_2 = func_2(func_2(arg_2)).b.a;
    return !vec2<bool>(true, !select(true, arg_2.b.a.x, false));
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_2) -> Struct_3 {
    return Struct_3(func_2(Struct_3(func_2(Struct_3(arg_2, Struct_1(vec3<bool>(arg_0.x, false, global3.a), vec3<f32>(1521f, arg_2.a.b.x, 542f), arg_2.a.a.yx, arg_2.a.d, vec3<i32>(global0[_wgslsmith_index_u32(40061u, 15u)], arg_2.a.d, 37312i)), u_input.b.x)).a, Struct_1(func_2(Struct_3(arg_2, Struct_1(vec3<bool>(global3.a, false, global3.a), vec3<f32>(arg_2.a.b.x, 2266f, -513f), arg_0, -38189i, arg_2.a.e), 4294967295u)).a.a.a, vec3<f32>(619f, arg_2.a.b.x, 1999f), vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.b.x, 15u)], _wgslsmith_mult_vec3_i32(arg_2.a.e, vec3<i32>(arg_2.a.d, 29033i, 0i))), ~16239u)).a, Struct_1(!(!(!arg_2.a.a)), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(893f)), _wgslsmith_f_op_f32(floor(-414f))), select(vec2<bool>(global3.a || true, true), !func_4(arg_2.a.a.x, arg_2.a.a, Struct_3(arg_2, Struct_1(global2[_wgslsmith_index_u32(4294967295u, 31u)], arg_2.a.b, vec2<bool>(arg_1, true), u_input.a, vec3<i32>(arg_2.a.d, 2147483647i, global0[_wgslsmith_index_u32(1u, 15u)])), 1u), Struct_4(false)), vec2<bool>(!arg_1, false)), _wgslsmith_sub_i32(u_input.a, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(arg_2.a.d, -49645i, 34651i), arg_2.a.e)), 1u);
}

fn func_6(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_4 {
    let var_0 = u_input.b.x;
    let var_1 = arg_3.a.a;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.a.b.x)) * var_1.b.x)));
    let var_3 = vec3<u32>(_wgslsmith_div_u32(select(max(abs(4294967295u), 49032u), func_2(Struct_3(Struct_2(arg_3.a.a), Struct_1(vec3<bool>(global3.a, var_1.a.x, true), arg_3.b.b, vec2<bool>(arg_1.x, false), global0[_wgslsmith_index_u32(0u, 15u)], var_1.e), 1u)).c, -1i < var_1.d), _wgslsmith_dot_vec3_u32(u_input.b, ~vec3<u32>(0u, 97014u, 71546u))), 33869u, max(min(~101836u, countOneBits(0u)), countOneBits(arg_3.c)) | reverseBits(1u));
    let var_4 = _wgslsmith_f_op_vec2_f32(sign(var_1.b.yy));
    return Struct_4(global3.a);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: vec2<bool>) -> f32 {
    var var_0 = true;
    global1 = array<vec3<f32>, 4>();
    global0 = array<i32, 15>();
    global3 = func_6(-234f, select(select(!(!vec4<bool>(arg_3.x, global3.a, true, global3.a)), select(select(vec4<bool>(false, global3.a, true, arg_0.a.c.x), vec4<bool>(true, true, arg_0.a.c.x, arg_0.a.a.x), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, global3.a, arg_0.a.a.x, arg_3.x), vec4<bool>(false, true, arg_0.a.c.x, true), vec4<bool>(false, false, true, true)), false), !vec4<bool>(arg_3.x, arg_3.x, true, false)), vec4<bool>((13475i > arg_2) & !arg_0.a.a.x, !(!arg_0.a.a.x), select(arg_3.x, all(vec4<bool>(true, true, true, global3.a)), false), !arg_3.x), select(!vec4<bool>(false, arg_3.x, global3.a, global3.a), select(select(vec4<bool>(false, false, arg_0.a.a.x, false), vec4<bool>(false, true, true, false), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, global3.a, false)), select(vec4<bool>(global3.a, false, global3.a, true), vec4<bool>(false, global3.a, false, false), vec4<bool>(true, arg_3.x, true, false)), !vec4<bool>(false, arg_3.x, false, arg_3.x)), !vec4<bool>(arg_0.a.c.x, arg_3.x, true, arg_0.a.c.x))), global4[_wgslsmith_index_u32(u_input.b.x << (11011u % 32u), 23u)], func_5(select(!select(vec2<bool>(true, true), arg_3, false), func_4(true, !vec3<bool>(arg_3.x, global3.a, arg_0.a.a.x), func_2(Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), global1[_wgslsmith_index_u32(arg_1, 4u)], vec2<bool>(false, arg_0.a.a.x), u_input.a, arg_0.a.e)), Struct_1(vec3<bool>(true, true, false), vec3<f32>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x), arg_0.a.c, arg_0.a.d, vec3<i32>(-55099i, 2213i, u_input.a)), 4294967295u)), Struct_4(false)), !func_2(Struct_3(Struct_2(Struct_1(vec3<bool>(true, global3.a, true), vec3<f32>(arg_0.a.b.x, -495f, -2209f), arg_0.a.c, u_input.a, vec3<i32>(arg_2, 19062i, 30613i))), arg_0.a, 16554u)).a.a.a.zy), select(1219f == _wgslsmith_f_op_f32(select(2209f, -384f, false)), true, arg_0.a.c.x), arg_0));
    var var_1 = ~(u_input.b.zy ^ _wgslsmith_add_vec2_u32(min(vec2<u32>(0u, arg_1) ^ u_input.b.xz, vec2<u32>(u_input.b.x, 1u)), vec2<u32>(0u, _wgslsmith_div_u32(1u, u_input.b.x))));
    return arg_0.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1404f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -842f), -1000f)), -341f), _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec3<bool>(global3.a, global3.a, false), global1[_wgslsmith_index_u32(0u, 4u)], vec2<bool>(global3.a, false), -1i, vec3<i32>(u_input.a, -45664i, -53097i))), u_input.b.x, -5514i, select(vec2<bool>(global3.a, true), vec2<bool>(true, global3.a), !global3.a)))));
    let var_1 = func_5(!func_5(!select(vec2<bool>(true, true), vec2<bool>(global3.a, global3.a), vec2<bool>(true, global3.a)), true, Struct_2(func_5(vec2<bool>(global3.a, global3.a), true, Struct_2(Struct_1(vec3<bool>(global3.a, global3.a, false), vec3<f32>(var_0.x, -947f, var_0.x), vec2<bool>(global3.a, global3.a), 21728i, vec3<i32>(u_input.a, u_input.a, u_input.a)))).b)).b.c, func_5(!vec2<bool>(global3.a | true, false), global3.a, func_5(!select(vec2<bool>(global3.a, true), vec2<bool>(global3.a, global3.a), vec2<bool>(true, global3.a)), any(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(53350u, u_input.b.x), 31u)]), Struct_2(func_5(vec2<bool>(global3.a, global3.a), true, Struct_2(Struct_1(global2[_wgslsmith_index_u32(32788u, 31u)], var_0, vec2<bool>(false, global3.a), 1i, vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], -2147483647i, u_input.a)))).a.a)).a).b.a.x, func_2(func_5(select(select(vec2<bool>(global3.a, true), vec2<bool>(true, true), false), vec2<bool>(false, true), vec2<bool>(true, true)), any(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(39539u, 1u, 0u), 31u)]), func_2(Struct_3(Struct_2(Struct_1(vec3<bool>(global3.a, global3.a, global3.a), vec3<f32>(286f, -217f, var_0.x), vec2<bool>(global3.a, true), -2147483647i, vec3<i32>(-2147483647i, u_input.a, 1i))), Struct_1(vec3<bool>(global3.a, false, global3.a), vec3<f32>(var_0.x, 1196f, 1530f), vec2<bool>(global3.a, true), global0[_wgslsmith_index_u32(u_input.b.x, 15u)], vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], 1i, u_input.a)), u_input.b.x)).a)).a).a.a;
    let var_2 = Struct_2(func_5(var_1.a.yx, var_1.a.x, Struct_2(Struct_1(func_5(var_1.c, false, Struct_2(Struct_1(vec3<bool>(true, global3.a, var_1.a.x), vec3<f32>(var_0.x, var_0.x, var_1.b.x), vec2<bool>(var_1.c.x, true), var_1.e.x, var_1.e))).b.a, vec3<f32>(var_0.x, var_0.x, -1000f), vec2<bool>(false, false), _wgslsmith_sub_i32(var_1.e.x, global0[_wgslsmith_index_u32(29456u, 15u)]), -vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], 0i, u_input.a)))).a.a);
    let var_3 = ~(abs(u_input.b.yx) ^ u_input.b.yz);
    global4 = array<vec2<i32>, 23>();
    global4 = array<vec2<i32>, 23>();
    var var_4 = var_1.b.x;
    let var_5 = _wgslsmith_f_op_f32(trunc(var_1.b.x));
    global0 = array<i32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(~(-6325i), select(var_2.a.d, -2147483647i, global3.a), ~(-1i)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 16869u, u_input.b.x), _wgslsmith_mod_vec3_u32(u_input.b, u_input.b), u_input.b) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec2_i32(var_2.a.e.zz, vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_3.x, 15u)])) & 1i, -(var_2.a.e.x | global0[_wgslsmith_index_u32(4294967295u, 15u)]), 5995i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(586f)), _wgslsmith_f_op_f32(sign(1641f))), global1[_wgslsmith_index_u32(0u, 4u)]);
}

