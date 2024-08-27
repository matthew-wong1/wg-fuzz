struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
    c: Struct_3,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 0i, 13401i, 0i);

var<private> global1: bool = true;

var<private> global2: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(1473f, 1000f), vec2<f32>(-1000f, -1085f), vec2<f32>(-1444f, 1404f), vec2<f32>(-1015f, -1574f), vec2<f32>(1343f, -439f), vec2<f32>(1356f, 115f), vec2<f32>(-529f, 1817f), vec2<f32>(-365f, -1000f), vec2<f32>(-1460f, 1000f), vec2<f32>(-1344f, -306f), vec2<f32>(279f, 1000f), vec2<f32>(495f, -915f), vec2<f32>(-347f, 411f));

var<private> global3: vec2<f32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: u32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(floor(global3.x))) + global3.x);
    global2 = array<vec2<f32>, 13>();
    var_0 = global3.x;
    var var_1 = Struct_4(-firstTrailingBit(~global0.xyx), abs(abs(_wgslsmith_add_vec2_u32(vec2<u32>(83662u, 0u), vec2<u32>(arg_2, arg_2)))) | vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(arg_2), arg_2), firstTrailingBit(arg_2)), select(-14223i, global0.x >> (~33795u % 32u), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(783f, -165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.x, 1757f, true))))), -470f, global3.x), true));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-158f, -550f, var_2.x, var_2.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-767f, -525f, 697f, -1281f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-911f, global3.x, var_2.x, global3.x)))))))));
}

fn func_2() -> Struct_5 {
    var var_0 = any(vec3<bool>(false, select(select(true, true, true), true, true) || false, true));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(-29736i, -60507i), 12850i, 0u)), vec4<f32>(global3.x, -1016f, global3.x, 1000f)))), _wgslsmith_mult_vec2_u32(min(vec2<u32>(16507u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(5230u, 35361u), vec2<u32>(28230u, 4294967295u))), firstTrailingBit(vec2<u32>(~4563u, 55098u))), global0.x);
    global2 = array<vec2<f32>, 13>();
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * var_1.a.x), _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_div_f32(-1687f, _wgslsmith_f_op_f32(round(global3.x))))));
    global1 = (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(var_1.a.x * global3.x)))) > -717f) | false;
    return Struct_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global3.x)), 741f))), -1241f), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(select(u_input.c.wx, select(global0.ww, u_input.b.zy, true), true), vec2<i32>(firstTrailingBit(global0.x), abs(1i))), global0.zy), Struct_3(var_1.a.yw, _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(min(u_input.c, vec4<i32>(-1i, var_1.c, 0i, global0.x)), ~u_input.c, u_input.d), u_input.c), var_1, var_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1463f, -679f, 764f)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(var_1.a.xwz, vec3<f32>(-174f, global3.x, var_1.a.x))))))), vec2<i32>((-1i >> (_wgslsmith_mod_u32(var_1.b.x, var_1.b.x) % 32u)) >> (((9791u | var_1.b.x) & var_1.b.x) % 32u), _wgslsmith_mod_i32(firstLeadingBit(0i), ~global0.x) ^ 58991i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x)))))) <= -654f);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_5) -> Struct_4 {
    let var_0 = firstLeadingBit(max(~(max(vec3<u32>(arg_3.c.c.b.x, 46256u, 4294967295u), arg_2) >> (vec3<u32>(arg_1.b.x, arg_2.x, 34935u) % vec3<u32>(32u))), ~(abs(arg_2) << (arg_2 % vec3<u32>(32u)))));
    var var_1 = i32(-1i) * -1i;
    let var_2 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1.a.x)), -201f))), vec2<f32>(-431f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.x, arg_3.a.x))))), max(~abs(vec4<i32>(-2147483647i, arg_0, 2147483647i, -2512i)), abs(vec4<i32>(-65203i, arg_3.c.d, -17056i, arg_0)) ^ arg_3.c.b), arg_1, func_2().b, _wgslsmith_f_op_vec3_f32(arg_3.c.e + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a.yyw) * arg_3.c.c.a.wzy)));
    global1 = any(select(select(select(vec3<bool>(arg_3.e, false, true), vec3<bool>(arg_3.e, true, arg_3.e), any(vec4<bool>(arg_3.e, arg_3.e, arg_3.e, arg_3.e))), !vec3<bool>(arg_3.e, false, false), vec3<bool>(arg_0 != -13281i, all(vec4<bool>(false, true, arg_3.e, true)), false)), vec3<bool>(any(vec4<bool>(true, true, false, false)), true, arg_3.e), false));
    var var_3 = Struct_2(-(~(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(arg_1.c, -41399i), u_input.b.zz) | select(u_input.d.yx, vec2<i32>(-29055i, u_input.d.x), vec2<bool>(arg_3.e, arg_3.e)))), vec4<i32>(-14150i, global0.x ^ ((arg_1.c | 2147483647i) | max(-2147483647i, -55654i)), ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_2.b.yyx, var_2.b.ywx), arg_3.c.b.zwz), -25193i), vec2<bool>(true, arg_3.e));
    return Struct_4(abs(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_2.b.x, arg_1.c), vec3<i32>(-1i, -2817i, global0.x)), countOneBits(vec3<i32>(56576i, -14657i, -1i) | vec3<i32>(arg_3.b, 37892i, -9634i)))), arg_3.c.c.b, 19286i);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_4) -> f32 {
    var var_0 = -u_input.c;
    let var_1 = true;
    global2 = array<vec2<f32>, 13>();
    var var_2 = Struct_3(vec2<f32>(1429f, 792f), ~vec4<i32>(reverseBits(u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, arg_1.c, arg_1.c), var_0.yyz), -arg_1.a.x, _wgslsmith_div_i32(u_input.b.x, var_0.x)) & func_2().c.b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, 746f) + vec4<f32>(-500f, global3.x, global3.x, global3.x))))), arg_1.b, ~(-2147483647i)), _wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(arg_1.a.x, u_input.d.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(545f, global3.x, global3.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-193f, 877f, 1417f), vec3<f32>(global3.x, global3.x, global3.x)))), vec3<f32>(303f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-global3.x)))), var_1)));
    var var_3 = -vec3<i32>(-2147483647i, _wgslsmith_div_i32(73169i, -var_2.d), _wgslsmith_mod_i32(u_input.d.x, ~u_input.c.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2().a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(func_5(arg_0.c, func_4(-2147483647i, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, -840f, 907f) - arg_1.a), min(~vec2<u32>(48489u, arg_1.b.x), ~arg_1.b), arg_2.x), _wgslsmith_add_vec3_u32(~(vec3<u32>(1u, arg_1.b.x, arg_1.b.x) | vec3<u32>(arg_1.b.x, arg_1.b.x, arg_1.b.x)), firstLeadingBit(vec3<u32>(27622u, 1u, 1u))), func_2())));
    let var_1 = _wgslsmith_mult_i32(func_4(-1i, Struct_1(vec4<f32>(1219f, arg_1.a.x, 2047f, 1068f), vec2<u32>(arg_1.b.x, 62870u), 2147483647i), vec3<u32>(arg_1.b.x, 4294967295u, 1u) | vec3<u32>(1u, arg_1.b.x, arg_1.b.x), func_2()).c & (global0.x & arg_1.c), arg_2.x) != _wgslsmith_sub_i32(-26880i, firstTrailingBit(arg_1.c));
    var var_2 = select(1i, _wgslsmith_div_i32(func_4(1758i, func_2().c.c, vec3<u32>(1u, arg_1.b.x, 1u) << (vec3<u32>(arg_1.b.x, 23792u, arg_1.b.x) % vec3<u32>(32u)), Struct_5(global2[_wgslsmith_index_u32(arg_1.b.x, 13u)], -1i, Struct_3(vec2<f32>(-243f, -2164f), arg_0.b, arg_1, arg_0.a.x, arg_1.a.xzw), u_input.d.wy, var_1)).a.x, _wgslsmith_div_i32(i32(-1i) * -37936i, 29544i)), 1u < func_2().c.c.b.x) >> (30952u % 32u);
    var var_3 = !vec2<bool>(!arg_3, true);
    let var_4 = func_2().c;
    return vec2<bool>(true, arg_3);
}

fn func_6(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-999f, global3.x, global3.x, -1034f) - vec4<f32>(894f, global3.x, global3.x, global3.x)) - vec4<f32>(-2273f, global3.x, 1315f, 145f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-193f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * 1099f) + _wgslsmith_f_op_f32(415f + 1186f)))) == _wgslsmith_f_op_f32(-func_2().c.a.x);
    let var_2 = vec2<u32>(abs(_wgslsmith_mult_u32(countOneBits(1u), 1u >> (1u % 32u))) >> (_wgslsmith_div_u32(33113u, 93515u) % 32u), _wgslsmith_sub_u32(~66920u, ~0u << (_wgslsmith_div_u32(10779u, _wgslsmith_dot_vec4_u32(vec4<u32>(40978u, 1u, 0u, 20780u), vec4<u32>(31637u, 4294967295u, 39910u, 7391u))) % 32u)));
    var_0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(-global3.x), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + func_2().c.c.a.x)));
    let var_3 = reverseBits(~min(reverseBits(vec3<u32>(0u, 1u, 4294967295u)), firstTrailingBit(~vec3<u32>(28011u, 41190u, 27864u))));
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 13>();
    global1 = select(true, select(true, _wgslsmith_f_op_f32(f32(-1f) * -199f) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-global3.x)), true), abs(u_input.c.x) < -global0.x);
    var var_0 = _wgslsmith_f_op_vec2_f32(func_6(Struct_2(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, 7093i), global0.yz), global0.xw), vec4<i32>(2147483647i, u_input.c.x, _wgslsmith_sub_i32(u_input.b.x, -1i) ^ (u_input.c.x | 45662i), reverseBits(min(0i, u_input.b.x))), select(vec2<bool>(true, true), vec2<bool>(true, true), !func_1(Struct_2(u_input.b.yx, vec4<i32>(global0.x, 42145i, -2147483647i, u_input.d.x), vec2<bool>(false, false)), Struct_1(vec4<f32>(global3.x, global3.x, global3.x, global3.x), vec2<u32>(27390u, 5415u), u_input.b.x), global0.wyw, false)))));
    let var_1 = select(vec3<bool>(true, false, !((u_input.b.x >= 1i) || func_2().e)), vec3<bool>(any(vec2<bool>(1399f < var_0.x, true)), false, !any(vec2<bool>(true, true))), !vec3<bool>(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-var_0.x) >= _wgslsmith_div_f32(-1150f, var_0.x), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false))));
    global2 = array<vec2<f32>, 13>();
    var var_2 = 8493u;
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-368f, _wgslsmith_f_op_f32(-global3.x))))), firstTrailingBit(func_2().c.b >> (~firstLeadingBit(vec4<u32>(13744u, 4294967295u, 10233u, 1u)) % vec4<u32>(32u))), func_2().c.c, ~func_2().d.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1283f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1570f)) - 1034f), _wgslsmith_f_op_vec2_f32(func_6(Struct_2(vec2<i32>(-6556i, global0.x), vec4<i32>(u_input.a, -2147483647i, 40549i, -1i), vec2<bool>(var_1.x, true)))).x, _wgslsmith_f_op_f32(f32(-1f) * -571f))));
    let var_4 = Struct_2(~vec2<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, var_3.b.x, global0.x), vec3<i32>(2147483647i, u_input.d.x, var_3.b.x), true), vec3<i32>(global0.x, u_input.b.x, u_input.c.x)), var_3.c.c ^ countOneBits(u_input.c.x)), _wgslsmith_div_vec4_i32(var_3.b ^ ((vec4<i32>(30280i, global0.x, var_3.c.c, u_input.d.x) >> (vec4<u32>(var_3.c.b.x, var_3.c.b.x, var_3.c.b.x, 17390u) % vec4<u32>(32u))) | vec4<i32>(63973i, 0i, global0.x, global0.x)), var_3.b), vec2<bool>(var_1.x != (false && !var_1.x), var_1.x));
    var var_5 = Struct_4(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_3.d, u_input.c.x), func_4(~var_3.c.c, func_2().c.c, _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(0u, var_3.c.b.x, 635u)), vec3<u32>(var_3.c.b.x, var_3.c.b.x, 27429u) ^ vec3<u32>(var_3.c.b.x, var_3.c.b.x, var_3.c.b.x)), Struct_5(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(41214u, 13u)]), _wgslsmith_div_i32(global0.x, 2147483647i), func_2().c, vec2<i32>(2147483647i, var_4.a.x), var_1.x & var_4.c.x)).a), vec2<u32>(_wgslsmith_dot_vec4_u32(max(countOneBits(vec4<u32>(var_3.c.b.x, 0u, var_3.c.b.x, 4294967295u)), ~vec4<u32>(35793u, 1u, var_3.c.b.x, var_3.c.b.x)), ~vec4<u32>(var_3.c.b.x, 60235u, 0u, var_3.c.b.x) << (_wgslsmith_sub_vec4_u32(vec4<u32>(37934u, 65520u, 1u, 4294967295u), vec4<u32>(var_3.c.b.x, var_3.c.b.x, var_3.c.b.x, var_3.c.b.x)) % vec4<u32>(32u))), 72181u | var_3.c.b.x), 14147i);
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~vec2<u32>(41912u, 21018u)), var_3.c.b), _wgslsmith_mod_i32(func_4(2147483647i, var_3.c, vec3<u32>(~0u, min(var_5.b.x, var_3.c.b.x), ~var_3.c.b.x), func_2()).c, _wgslsmith_mod_i32(global0.x, 0i)), _wgslsmith_clamp_u32(var_3.c.b.x, var_5.b.x, 24098u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.c.a) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.c.a.x, -2377f, var_0.x, 730f), vec4<f32>(-301f, 1148f, 1000f, var_0.x)))) - var_3.c.a), _wgslsmith_f_op_vec4_f32(-var_3.c.a))), var_3.e.x);
}

