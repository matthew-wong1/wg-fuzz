struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<i32, 9> = array<i32, 9>(0i, 2147483647i, -20890i, -81877i, -1i, -12993i, 1i, 17319i, i32(-2147483648));

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: vec2<f32>;

var<private> global4: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(514f, -175f, -704f), vec3<f32>(-1644f, 1116f, -1000f), vec3<f32>(-332f, -163f, -203f), vec3<f32>(2171f, 130f, 464f), vec3<f32>(572f, -1232f, -1595f), vec3<f32>(733f, -741f, -231f), vec3<f32>(-1533f, -1048f, 1244f), vec3<f32>(1248f, 1376f, 1000f), vec3<f32>(-1163f, 672f, -884f), vec3<f32>(-906f, 894f, -811f), vec3<f32>(-315f, 1301f, 1460f), vec3<f32>(367f, -1010f, -1252f), vec3<f32>(2126f, -1375f, 160f));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_4(global2.x, !global2.x || global2.x, ~select(~_wgslsmith_sub_u32(23672u, u_input.b), u_input.c, select(global2.x, !global2.x, true)), _wgslsmith_f_op_f32(-global0.x), Struct_2(Struct_1(~vec3<i32>(global1[_wgslsmith_index_u32(51843u, 9u)], -2147483647i, global1[_wgslsmith_index_u32(u_input.c, 9u)]), vec4<bool>(true || global2.x, true, global2.x, global2.x), any(vec3<bool>(true, true, global2.x)) || !global2.x, max(~vec2<u32>(4294967295u, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(17542u, u_input.c), vec2<u32>(0u, 562u)))), Struct_1(firstLeadingBit(~vec3<i32>(global1[_wgslsmith_index_u32(26074u, 9u)], -11841i, global1[_wgslsmith_index_u32(u_input.b, 9u)])), vec4<bool>(global2.x, global2.x, true || global2.x, false), !(!global2.x), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b, 25245u), _wgslsmith_mod_vec2_u32(vec2<u32>(71589u, u_input.b), vec2<u32>(u_input.b, u_input.b)))), ~vec2<i32>(-global1[_wgslsmith_index_u32(1u, 9u)], ~global1[_wgslsmith_index_u32(u_input.c, 9u)]), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, global2.x, global2.x), true), !vec3<bool>(false, global2.x, true), global2.x), u_input.a));
    let var_1 = Struct_2(var_0.e.b, Struct_1(firstTrailingBit(~(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 9u)], -6768i, 2147483647i) ^ vec3<i32>(5963i, -22012i, -4118i))), select(!(!var_0.e.a.b), !select(vec4<bool>(var_0.b, var_0.a, false, global2.x), var_0.e.b.b, vec4<bool>(global2.x, true, false, false)), true), !global2.x, _wgslsmith_sub_vec2_u32(~var_0.e.b.d ^ var_0.e.a.d, firstTrailingBit(~var_0.e.b.d))), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(-(var_0.e.a.a.yz | var_0.e.a.a.xz), vec2<i32>(var_0.e.b.a.x, ~2147483647i)), ~_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.e.b.a.zx, var_0.e.c, vec2<i32>(-8133i, global1[_wgslsmith_index_u32(var_0.e.b.d.x, 9u)])), abs(vec2<i32>(7622i, u_input.a)))), select(select(vec3<bool>(all(var_0.e.b.b.xxy), global2.x, global2.x), !vec3<bool>(global2.x, var_0.a, global2.x), var_0.e.d), var_0.e.d, true), ~u_input.a);
    let var_2 = var_0.e.a.b;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-347f, -858f) + vec2<f32>(-639f, global0.x)))), global0.zx) * _wgslsmith_f_op_vec2_f32(-global0.yz));
    let var_4 = select(vec2<bool>(var_0.b, any(!(!vec3<bool>(false, var_1.d.x, true)))), !(!var_0.e.a.b.yy), !any(var_0.e.b.b));
    return var_2;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> vec3<f32> {
    global4 = array<vec3<f32>, 13>();
    let var_0 = Struct_2(Struct_1(reverseBits(vec3<i32>(-1i, _wgslsmith_div_i32(-1i, global1[_wgslsmith_index_u32(arg_1, 9u)]), u_input.a & 0i)), !func_3(), global2.x, firstTrailingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.c, 27928u)))), Struct_1(vec3<i32>(_wgslsmith_sub_i32(arg_0.x, 62457i), firstLeadingBit(24942i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(u_input.c, 9u)]), vec2<i32>(33350i, u_input.a))) ^ -reverseBits(vec3<i32>(arg_0.x, global1[_wgslsmith_index_u32(0u, 9u)], 1i)), !vec4<bool>(!global2.x, any(vec2<bool>(true, true)), 4294967295u < arg_1, !global2.x), true, ~select(vec2<u32>(u_input.b, arg_1), ~vec2<u32>(0u, 59626u), vec2<bool>(global2.x, global2.x))), vec2<i32>(-2147483647i, arg_0.x), select(!vec3<bool>(true | global2.x, true, global2.x), !vec3<bool>(1i <= global1[_wgslsmith_index_u32(72556u, 9u)], true, global2.x), !vec3<bool>(all(vec4<bool>(false, false, global2.x, global2.x)), true, global2.x)), global1[_wgslsmith_index_u32(arg_1, 9u)]);
    let var_1 = vec2<bool>(true, !all(!select(vec2<bool>(true, true), vec2<bool>(false, var_0.a.c), global2.x)));
    let var_2 = vec4<i32>(var_0.b.a.x, max(5722i, global1[_wgslsmith_index_u32(46425u, 9u)]), arg_0.x, -8434i);
    let var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -310f) * 399f) - _wgslsmith_div_f32(-1527f, -1152f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1247f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -273f), _wgslsmith_f_op_f32(f32(-1f) * -1793f)) + _wgslsmith_f_op_f32(select(-764f, _wgslsmith_f_op_f32(1000f * 888f), false))), 667f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_div_f32(global0.x, 590f), -503f, 979f))))));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(4294967295u, 13u)]))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-750f, 464f, -483f) - global4[_wgslsmith_index_u32(1u, 13u)]))))), _wgslsmith_f_op_vec3_f32(-global0.zzy), (!any(var_0.d) != true) || !(_wgslsmith_add_i32(var_0.e, u_input.a) <= var_2.x)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec4<bool>) -> Struct_3 {
    global3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1643f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-460f + global3.x))))));
    var var_0 = Struct_1(firstLeadingBit(vec3<i32>(~(~1i), 10630i, global1[_wgslsmith_index_u32(5820u | ~u_input.b, 9u)])), vec4<bool>(all(arg_2.wxx), false, true, !arg_2.x), all(select(func_3().zxy, select(vec3<bool>(false, global2.x, arg_2.x), func_3().zyy, true), !vec3<bool>(arg_2.x, false, global2.x))), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), firstLeadingBit(~vec2<u32>(u_input.c, 4294967295u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 27294u), vec2<u32>(u_input.b, 38289u), vec2<u32>(u_input.c, u_input.c) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))) & vec2<u32>(1u, max(21427u, u_input.c))));
    let var_1 = Struct_4(false, !var_0.b.x, 1u << (var_0.d.x % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.x)))) + arg_0.x), Struct_2(Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(var_0.a, arg_1.xwy), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.x, -2147483647i, u_input.a), vec3<i32>(1i, 1i, -12409i)), firstTrailingBit(vec3<i32>(18300i, u_input.a, 0i))), !vec4<bool>(var_0.b.x, var_0.b.x, global2.x, global2.x), false, vec2<u32>(_wgslsmith_mod_u32(4294967295u, var_0.d.x), abs(67534u))), Struct_1(~_wgslsmith_clamp_vec3_i32(arg_1.xyy, arg_1.yzz, var_0.a), select(var_0.b, vec4<bool>(var_0.c, false, arg_2.x, false), global2.x), any(select(vec2<bool>(true, true), var_0.b.yy, vec2<bool>(global2.x, true))), (var_0.d << (var_0.d % vec2<u32>(32u))) >> (firstTrailingBit(var_0.d) % vec2<u32>(32u))), -vec2<i32>(_wgslsmith_clamp_i32(arg_1.x, var_0.a.x, u_input.a), global1[_wgslsmith_index_u32(~var_0.d.x, 9u)]), vec3<bool>(true, var_0.c, true), max(abs(~42624i), -2147483647i | var_0.a.x)));
    var_0 = Struct_1(vec3<i32>(var_0.a.x, ~select(_wgslsmith_div_i32(-63015i, 1i), 2147483647i, true), _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(var_1.e.b.a.x ^ 3945i, ~(-70147i), 66877i, max(u_input.a, global1[_wgslsmith_index_u32(u_input.c, 9u)])))), vec4<bool>(global2.x, true, true, _wgslsmith_clamp_i32(1i, 5915i, ~u_input.a) >= u_input.a), true, ~(~(~vec2<u32>(u_input.c, u_input.c))));
    global2 = !arg_2.yzx;
    return Struct_3(arg_2);
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> vec4<bool> {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(abs(_wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(1u, 9u)], -34756i), vec2<i32>(u_input.a, u_input.a))), ~select(u_input.c, u_input.c, true)))), -(~(~vec4<i32>(-8243i, u_input.a, -23446i, 1i))), func_3());
    let var_1 = Struct_5(vec3<u32>(1u, ~1u, ~4294967295u), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.wyy * vec3<f32>(-761f, -946f, global3.x)) - vec3<f32>(arg_1, global0.x, 394f)), global0.zyz), select(_wgslsmith_mod_vec4_i32(vec4<i32>(58807i, -1i, 33688i, global1[_wgslsmith_index_u32(101230u, 9u)]), vec4<i32>(u_input.a, 26654i, global1[_wgslsmith_index_u32(1u, 9u)], u_input.a)) | _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -10129i, global1[_wgslsmith_index_u32(4294967295u, 9u)], u_input.a), vec4<i32>(u_input.a, -2147483647i, global1[_wgslsmith_index_u32(0u, 9u)], u_input.a)), ~reverseBits(vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.c, 9u)], u_input.a, 1i)), true), arg_0));
    global1 = array<i32, 9>();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-642f, 1697f, global0.x, -718f))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 1945f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(263f, global0.x, arg_1, -135f)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1355f, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(315f, 278f, global0.x, global0.x), vec4<f32>(global0.x, 1994f, arg_1, 636f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global3.x, 827f) * vec4<f32>(arg_1, global3.x, 921f, -492f))))))));
    global1 = array<i32, 9>();
    return vec4<bool>(!(_wgslsmith_f_op_f32(-global3.x) != _wgslsmith_f_op_f32(floor(-102f))), true, select(true, !any(vec4<bool>(arg_0.x, false, true, var_1.b.a.x)), true), (var_1.b.a.x || false) && true);
}

fn func_5(arg_0: Struct_3) -> f32 {
    let var_0 = ~(~vec3<u32>(select(_wgslsmith_div_u32(17165u, 4294967295u), 22612u, u_input.a <= -1i), u_input.b, u_input.b));
    let var_1 = max(var_0, var_0) | select(_wgslsmith_add_vec3_u32(vec3<u32>(firstTrailingBit(8314u), ~4758u, _wgslsmith_mult_u32(u_input.c, 56394u)), _wgslsmith_mod_vec3_u32(var_0, var_0) ^ ~var_0), vec3<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.c, 2271u), var_0.yy, global2.x), vec2<u32>(0u, 0u)), _wgslsmith_div_u32(var_0.x, ~4294967295u), ~4294967295u), all(arg_0.a.yzz));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.x, 492f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(ceil(global0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-350f - -1739f)))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.x, 621f, -537f, var_2))))))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -323f), _wgslsmith_f_op_f32(306f * -888f), _wgslsmith_f_op_f32(-768f * 1105f), _wgslsmith_f_op_f32(f32(-1f) * -2244f)))))));
    global1 = array<i32, 9>();
    return -1738f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 9>();
    let var_0 = u_input.c;
    global0 = vec4<f32>(global3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(step(-1599f, -803f)))), _wgslsmith_f_op_f32(func_5(Struct_3(func_1(vec4<bool>(global2.x, false, true, global2.x), 130f)))), true | !(-2147483647i != global1[_wgslsmith_index_u32(0u, 9u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -426f), _wgslsmith_f_op_f32(f32(-1f) * -503f)), global0.x)));
    var var_1 = vec4<f32>(-374f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, global3.x))), _wgslsmith_f_op_f32(max(global0.x, -236f)), true)))), global3.x, -430f);
    global1 = array<i32, 9>();
    let var_2 = Struct_1(vec3<i32>(max((12683i << (var_0 % 32u)) & u_input.a, firstLeadingBit(global1[_wgslsmith_index_u32(42324u, 9u)])), global1[_wgslsmith_index_u32(0u, 9u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_mult_i32(-51064i, 1i), _wgslsmith_clamp_i32(1i, 4438i, 0i), -global1[_wgslsmith_index_u32(var_0, 9u)]), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_0, 9u)], global1[_wgslsmith_index_u32(12004u, 9u)], 0i, 0i), vec4<i32>(2147483647i, -68164i, -19870i, u_input.a)), ~u_input.a, global1[_wgslsmith_index_u32(33308u, 9u)], -27872i >> (var_0 % 32u)))), !func_3(), false, countOneBits(vec2<u32>(~(~58030u), 72749u)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 0u, u_input.c), vec3<u32>(u_input.c, 4294967295u, 32916u))), ~firstLeadingBit(-_wgslsmith_dot_vec2_i32(var_2.a.xy, var_2.a.xx)), var_2.a.yz, _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -562f))), global2.x)));
}

