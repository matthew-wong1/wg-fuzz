struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(true));

var<private> global1: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec2<i32> {
    let var_0 = countOneBits(vec3<u32>(u_input.e, max(firstTrailingBit(_wgslsmith_sub_u32(u_input.a, u_input.a)), 1u), countOneBits(~60932u)));
    global1 = array<vec2<bool>, 24>();
    let var_1 = _wgslsmith_f_op_f32(floor(-1325f));
    global1 = array<vec2<bool>, 24>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(1584f - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_div_f32(640f, -1504f), true)))) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -1210f), var_1))));
    return vec2<i32>(_wgslsmith_add_i32(-36812i, u_input.c.x), u_input.d.x) >> (firstTrailingBit(var_0.xy) % vec2<u32>(32u));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: vec3<u32>) -> vec3<f32> {
    var var_0 = select(select(!select(select(vec4<bool>(arg_1.x, true, true, arg_1.x), vec4<bool>(true, false, false, arg_1.x), vec4<bool>(true, false, true, true)), !vec4<bool>(arg_1.x, global0.a.a, arg_1.x, arg_1.x), !global0.a.a), !vec4<bool>(true, !global0.a.a, global0.a.a & global0.a.a, true), vec4<bool>(all(vec2<bool>(true, arg_1.x)) | true, true, (arg_3.x != u_input.e) & true, false)), select(vec4<bool>(true, global0.a.a, select(102165u >= arg_3.x, arg_1.x, false), global0.a.a), vec4<bool>(!arg_1.x, global0.a.a, false, true), !(!select(vec4<bool>(true, global0.a.a, true, true), vec4<bool>(false, false, arg_1.x, true), vec4<bool>(true, true, false, arg_1.x)))), false);
    global0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1001f)) < _wgslsmith_f_op_f32(373f + _wgslsmith_f_op_f32(-917f * arg_0.x))));
    let var_1 = vec4<i32>(u_input.c.x, ~(i32(-1i) * -2147483647i), u_input.b, 24297i);
    var var_2 = Struct_3(all(vec2<bool>(all(select(vec2<bool>(arg_1.x, global0.a.a), vec2<bool>(false, arg_1.x), true)), true)));
    global0 = Struct_4(global0.a);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.xyx), _wgslsmith_f_op_vec3_f32(arg_0.wyy + vec3<f32>(arg_0.x, arg_0.x, -1017f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1510f, arg_0.x, -1913f)))))));
}

fn func_2() -> Struct_3 {
    var var_0 = global0.a;
    let var_1 = -(~vec2<i32>(abs(_wgslsmith_mult_i32(u_input.b, -2147483647i)), 47644i));
    var var_2 = 1i;
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-943f, 1656f, 639f, -631f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-450f, -594f, 234f, -512f))), !(!global1[_wgslsmith_index_u32(4294967295u, 24u)]), func_3(-796f, -1i), vec3<u32>(u_input.e ^ 4294967295u, u_input.a, ~21950u)))))));
    global1 = array<vec2<bool>, 24>();
    return Struct_3(all(vec4<bool>(true, true, var_3.x == _wgslsmith_f_op_f32(var_3.x - -908f), false)));
}

fn func_5(arg_0: Struct_5) -> vec4<bool> {
    let var_0 = arg_0.a.x == func_2().a;
    global0 = Struct_4(Struct_3(true));
    global1 = array<vec2<bool>, 24>();
    global0 = Struct_4(arg_0.c);
    global1 = array<vec2<bool>, 24>();
    return vec4<bool>((!(u_input.b <= 2147483647i) | all(vec4<bool>(arg_0.d, global0.a.a, arg_0.d, false))) | any(vec2<bool>(true, var_0)), arg_0.d & !global0.a.a, true, any(select(select(arg_0.a, vec3<bool>(false, true, var_0), vec3<bool>(false, var_0, arg_0.d)), select(arg_0.a, vec3<bool>(true, false, false), global0.a.a), global0.a.a)) && all(!(!global1[_wgslsmith_index_u32(u_input.e, 24u)])));
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: u32) -> Struct_4 {
    let var_0 = func_5(Struct_5(vec3<bool>(arg_0, false, !arg_0), Struct_1(~4294967295u, _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 27916i, 10601i) ^ vec3<i32>(u_input.c.x, -21870i, 17870i), vec3<i32>(-4117i, 0i, u_input.b) << (vec3<u32>(0u, 1u, u_input.e) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-617f, -224f, global0.a.a)) * _wgslsmith_div_f32(616f, -526f))), Struct_3(true), false)).wwy;
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(select(11697u, u_input.a, arg_0), ~4294967295u, 0u), vec3<u32>(~(u_input.e >> (firstLeadingBit(1u) % 32u)), 21690u, _wgslsmith_div_u32(u_input.e, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a, arg_2, u_input.a), 75591u))));
    let var_2 = !select(vec4<bool>(true, true, ~arg_1 == u_input.e, false), !(!vec4<bool>(global0.a.a, var_0.x, global0.a.a, global0.a.a)), true);
    var var_3 = Struct_5(!vec3<bool>(!func_2().a, ~4294967295u != u_input.a, global0.a.a), Struct_1(~u_input.a, vec3<i32>(1i, _wgslsmith_clamp_i32(6666i, -67560i << (u_input.e % 32u), ~u_input.d.x), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-68693i, u_input.c.x, u_input.c.x)), firstTrailingBit(vec3<i32>(50305i, u_input.b, u_input.d.x)))), _wgslsmith_f_op_f32(-451f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-294f + 1000f), -1906f))), global0.a, any(var_2.wzz));
    var var_4 = func_5(Struct_5(!var_2.xyx, var_3.b, func_2(), true)).ww;
    return Struct_4(global0.a);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3) -> bool {
    global0 = func_6(all(func_5(Struct_5(vec3<bool>(arg_1.a, true, global0.a.a), Struct_1(1u, vec3<i32>(-9206i, u_input.d.x, 0i), -1520f), func_2(), arg_1.a))), ~_wgslsmith_dot_vec2_u32(~(vec2<u32>(4294967295u, u_input.e) >> (vec2<u32>(u_input.e, u_input.a) % vec2<u32>(32u))), ~(~vec2<u32>(1u, u_input.e))), firstTrailingBit(~_wgslsmith_clamp_u32(u_input.a, min(u_input.a, u_input.a), ~u_input.a)));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(632f, 101f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(393f, -386f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-838f, -1616f) + vec2<f32>(-639f, 344f)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -215f), 693f, 885f));
    var var_2 = Struct_5(vec3<bool>(global0.a.a, false, false), Struct_1(~max(4294967295u, _wgslsmith_mult_u32(u_input.a, 0u)), vec3<i32>(-25499i, 20461i, 35980i), var_1.x), arg_0.a, _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.e, 9094u)), vec2<u32>(1u, select(4294967295u, 4294967295u, false))) > 54503u);
    var_2 = Struct_5(!(!func_5(Struct_5(var_2.a, Struct_1(u_input.e, vec3<i32>(-36280i, u_input.d.x, var_2.b.b.x), var_1.x), Struct_3(false), arg_1.a)).zxw), Struct_1(_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(var_2.b.a, 0u, var_2.b.a)), _wgslsmith_div_vec3_u32(vec3<u32>(2970u, u_input.e, u_input.a), select(vec3<u32>(17246u, 1u, 1u), vec3<u32>(4294967295u, 61086u, 53524u), vec3<bool>(arg_0.a.a, arg_1.a, global0.a.a)))), -var_2.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f))), func_2(), arg_0.a.a);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1000f)))))) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_4(vec4<f32>(305f, _wgslsmith_div_f32(1266f, var_2.b.c), 3110f, _wgslsmith_f_op_f32(ceil(var_0.x))), select(select(vec2<bool>(arg_1.a, false), var_2.a.xy, true), global1[_wgslsmith_index_u32(reverseBits(var_2.b.a), 24u)], select(vec2<bool>(true, arg_0.a.a), var_2.a.yy, var_2.a.zy)), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-36599i, -50018i), vec2<i32>(var_2.b.b.x, var_2.b.b.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.b.b.x, var_2.b.b.x), vec2<i32>(-4171i, -31148i)), u_input.d), min(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(u_input.a, 4294967295u, var_2.b.a)) | min(vec3<u32>(48257u, 1u, 18512u), vec3<u32>(0u, u_input.a, var_2.b.a)))).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(false, -2147483647i, abs(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, u_input.a)), 0u)), any(vec4<bool>(global0.a.a, !(!global0.a.a), all(!global1[_wgslsmith_index_u32(u_input.a, 24u)]), global0.a.a)), 4294967295u);
    let var_1 = Struct_5(select(vec3<bool>(true, var_0.a, -u_input.c.x >= var_0.b), vec3<bool>(var_0.a, any(vec2<bool>(var_0.d, false)), var_0.a), !vec3<bool>(true, func_1(Struct_4(global0.a), global0.a), false)), Struct_1(~u_input.e, vec3<i32>(-37498i, ~(u_input.c.x | var_0.b), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, 2147483647i, u_input.b, -1i), vec4<i32>(11755i, 0i, var_0.b, var_0.b) ^ vec4<i32>(var_0.b, u_input.d.x, 2147483647i, var_0.b))), _wgslsmith_f_op_f32(480f + 1063f)), global0.a, any(vec4<bool>(true, true, global0.a.a, func_5(Struct_5(vec3<bool>(false, true, false), Struct_1(1u, vec3<i32>(var_0.b, 0i, 2147483647i), -949f), Struct_3(false), global0.a.a)).x)) | global0.a.a);
    global1 = array<vec2<bool>, 24>();
    global0 = Struct_4(Struct_3(false));
    var var_2 = -vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(2147483647i, var_1.b.b.x), var_0.b), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_1.b.b, vec3<i32>(var_0.b, 0i, var_1.b.b.x)), 1i)) << (vec2<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(45733u, 62650u, 47333u, var_0.e)), abs(vec4<u32>(13324u, u_input.e, 18482u, 37672u))), ~var_1.b.a) % vec2<u32>(32u));
    global0 = func_6(true, 35080u, u_input.a);
    global1 = array<vec2<bool>, 24>();
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-259f + var_1.b.c)));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_1.b.b.x, var_2.x << (_wgslsmith_div_u32(var_1.b.a, 1u) % 32u), all(vec3<bool>(true, true, false))), vec2<u32>(~(~0u), min(countOneBits(4294967295u), _wgslsmith_clamp_u32(u_input.e, 0u, var_1.b.a))) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 10968u), vec2<u32>(var_1.b.a, u_input.e)) % vec2<u32>(32u)));
}

