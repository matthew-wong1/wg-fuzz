struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(8767u, 1u), vec2<u32>(73103u, 4234u), vec2<u32>(25116u, 63166u), vec2<u32>(4294967295u, 55708u), vec2<u32>(38770u, 0u), vec2<u32>(42000u, 60263u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(0u, 86180u), vec2<u32>(0u, 39223u), vec2<u32>(1u, 5804u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    let var_0 = Struct_1(any(!(!select(vec4<bool>(false, true, false, arg_1.a), vec4<bool>(false, false, true, true), false))), global0[_wgslsmith_index_u32(61051u, 12u)], _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.c.x, u_input.a.x, abs(arg_0)), u_input.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.d.x), -1764f), arg_1.d, !select(vec2<bool>(true, arg_2.a), vec2<bool>(false, true), true))), arg_1.d)), vec3<i32>(-_wgslsmith_mod_i32(u_input.c >> (11182u % 32u), arg_0 & u_input.c), abs(22710i), u_input.c));
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    return -abs(vec4<i32>(u_input.a.x, ~arg_0, _wgslsmith_mod_i32(~var_0.c.x, u_input.a.x), -_wgslsmith_mult_i32(var_0.c.x, 16028i)));
}

fn func_2() -> f32 {
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    var var_0 = _wgslsmith_add_u32(u_input.b, ~_wgslsmith_mult_u32(u_input.b, 61580u));
    let var_1 = Struct_1(false, global0[_wgslsmith_index_u32(abs(1u), 12u)], vec3<i32>(firstLeadingBit(i32(-1i) * -u_input.a.x), _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.a.x, u_input.c, -46726i, -4084i) >> (vec4<u32>(0u, u_input.b, 4294967295u, u_input.b) % vec4<u32>(32u)), vec4<i32>(-17506i, u_input.a.x, u_input.a.x, 0i) >> (vec4<u32>(21376u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), func_3(u_input.a.x >> (u_input.b % 32u), Struct_1(true, global0[_wgslsmith_index_u32(38512u, 12u)], vec3<i32>(-1i, u_input.c, -1i), vec2<f32>(-1884f, -673f), u_input.a), Struct_1(false, global0[_wgslsmith_index_u32(36180u, 12u)], u_input.a, vec2<f32>(-316f, -1000f), u_input.a))), 2147483647i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(718f, 1670f, true)))), 1f), vec3<i32>(func_3(0i, Struct_1(true, min(global0[_wgslsmith_index_u32(u_input.b, 12u)], vec2<u32>(u_input.b, u_input.b)), ~vec3<i32>(u_input.c, 51344i, 2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1146f, 1860f)), ~vec3<i32>(u_input.a.x, u_input.c, -23370i)), Struct_1(true, global0[_wgslsmith_index_u32(u_input.b, 12u)] >> (vec2<u32>(4294967295u, 50674u) % vec2<u32>(32u)), vec3<i32>(13660i, 15700i, -2147483647i), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(267f, -1229f), vec2<f32>(-855f, -322f))), _wgslsmith_div_vec3_i32(vec3<i32>(-7664i, 41i, 0i), u_input.a))).x, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, 25606i, -2147483647i), vec4<i32>(2400i, -12812i, u_input.c, 14080i))), u_input.c));
    return var_1.d.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = arg_1.c.x;
    var var_1 = arg_1;
    let var_2 = ~select(~u_input.b, ~u_input.b << (~var_1.b.x % 32u), any(vec3<bool>(!arg_2.a, var_1.a, select(var_1.a, true, var_1.a))));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) * _wgslsmith_f_op_f32(-arg_2.d.x)))), _wgslsmith_f_op_f32(-arg_0.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1642f)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_1.d.x))));
    let var_4 = select(!(!(!(!vec3<bool>(false, var_1.a, false)))), select(vec3<bool>(false, arg_1.a != any(vec4<bool>(arg_1.a, true, true, var_1.a)), true), select(select(select(vec3<bool>(arg_2.a, var_1.a, arg_2.a), vec3<bool>(true, var_1.a, true), vec3<bool>(arg_1.a, false, false)), vec3<bool>(false, arg_2.a, true), true && arg_1.a), !(!vec3<bool>(arg_2.a, false, arg_1.a)), vec3<bool>(true, var_1.a | arg_1.a, arg_2.a)), !arg_1.a), !(!select(!vec3<bool>(true, false, arg_2.a), !vec3<bool>(var_1.a, var_1.a, var_1.a), all(vec4<bool>(arg_2.a, false, false, var_1.a)))));
    return Struct_1(true, ~vec2<u32>(_wgslsmith_div_u32(var_1.b.x, abs(0u)), ~var_2), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(var_1.c, ~abs(arg_1.e)), u_input.a), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-355f, var_1.d.x), vec2<f32>(_wgslsmith_f_op_f32(1346f * _wgslsmith_div_f32(-254f, var_3.x)), -1000f))), ~(~_wgslsmith_div_vec3_i32(vec3<i32>(var_1.e.x, arg_2.e.x, arg_1.e.x), vec3<i32>(1i, 0i, 1i))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    let var_0 = arg_0.e.xx;
    global0 = array<vec2<u32>, 12>();
    return func_4(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1722f - arg_3.d.x) - arg_2.d.x), select(arg_3.a, true, arg_2.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(777f, arg_0.d.x)))), -1330f, 1018f), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2()), arg_2.d.x, arg_0.d.x, _wgslsmith_f_op_f32(-arg_0.d.x))), Struct_1(_wgslsmith_f_op_f32(arg_3.d.x - arg_0.d.x) < _wgslsmith_f_op_f32(arg_2.d.x * arg_3.d.x), vec2<u32>(8047u, ~u_input.b), -u_input.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(arg_0.d, arg_2.d), vec2<f32>(319f, arg_3.d.x), arg_3.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -38469i, arg_0.c.x), vec3<i32>(-1i, var_0.x, 0i))), Struct_1(!(!arg_0.a), arg_3.b, vec3<i32>(var_0.x, ~var_0.x, -12647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1845f, -1153f)) * arg_3.d), ~arg_0.c), _wgslsmith_dot_vec2_i32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, -1641f, arg_0.d.x, arg_3.d.x) * vec4<f32>(arg_0.d.x, -1000f, -2049f, 193f)), arg_0, arg_0, -69529i).c.xz, arg_2.e.yy)), Struct_1(false, _wgslsmith_mod_vec2_u32(arg_3.b, vec2<u32>(~4294967295u, ~u_input.b)), select(u_input.a, ~vec3<i32>(arg_1, 2147483647i, -1i), !vec3<bool>(false, true, arg_0.a)) >> (abs(~vec3<u32>(4294967295u, u_input.b, arg_0.b.x)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.x, arg_0.d.x) - _wgslsmith_f_op_vec2_f32(abs(arg_2.d)))), func_3(arg_2.e.x, arg_2, arg_3).zww), -1i);
}

fn func_1() -> f32 {
    global0 = array<vec2<u32>, 12>();
    let var_0 = u_input.c ^ _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.c, u_input.c), ~u_input.a), ~1i), _wgslsmith_sub_i32(u_input.c, u_input.a.x));
    var var_1 = Struct_1(true, _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(firstLeadingBit(u_input.b), _wgslsmith_mult_u32(89562u, u_input.b)), ~max(vec2<u32>(17764u, u_input.b), vec2<u32>(73859u, 111991u))), vec2<u32>(abs(~1u), ~(~4294967295u))), vec3<i32>(-_wgslsmith_mult_i32(1i, 5474i), firstTrailingBit(abs(1i)), u_input.a.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-490f, -1045f))), vec2<f32>(1000f, 474f))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(942f * 1757f), 1256f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-777f)), -574f)))), vec3<i32>(0i, 13420i, -_wgslsmith_div_i32(-15334i, i32(-1i) * -1i)));
    global0 = array<vec2<u32>, 12>();
    var var_2 = func_5(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(911f, var_1.d.x)), -195f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(var_1.d.x, var_1.d.x)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-725f, 261f, var_1.d.x, -1221f)))))), Struct_1(var_1.a, max(~var_1.b, global0[_wgslsmith_index_u32(u_input.b, 12u)] & var_1.b), max(~vec3<i32>(-14338i, 9739i, u_input.a.x), -vec3<i32>(var_1.e.x, var_1.e.x, u_input.c)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.d.x, var_1.d.x))))), vec3<i32>(0i, u_input.a.x, 0i)), Struct_1(!(var_0 != 42912i), ~max(global0[_wgslsmith_index_u32(7615u, 12u)], vec2<u32>(var_1.b.x, u_input.b)), firstTrailingBit(vec3<i32>(-1i, 42520i, -30598i)), vec2<f32>(_wgslsmith_f_op_f32(682f * var_1.d.x), _wgslsmith_f_op_f32(-var_1.d.x)), var_1.e >> (_wgslsmith_mod_vec3_u32(vec3<u32>(8528u, var_1.b.x, var_1.b.x), vec3<u32>(var_1.b.x, 26204u, u_input.b)) % vec3<u32>(32u))), countOneBits(~40645i)), _wgslsmith_div_i32(16014i, var_0), Struct_1(var_1.a, global0[_wgslsmith_index_u32(~var_1.b.x | 992u, 12u)], vec3<i32>(-(var_1.e.x ^ u_input.c), 0i, max(-2147483647i, -2147483647i)), _wgslsmith_f_op_vec2_f32(func_4(vec4<f32>(-1000f, -583f, var_1.d.x, var_1.d.x), func_4(vec4<f32>(1329f, var_1.d.x, var_1.d.x, var_1.d.x), Struct_1(var_1.a, global0[_wgslsmith_index_u32(var_1.b.x, 12u)], vec3<i32>(var_1.e.x, 20977i, 14966i), vec2<f32>(var_1.d.x, 814f), var_1.c), Struct_1(var_1.a, global0[_wgslsmith_index_u32(var_1.b.x, 12u)], u_input.a, vec2<f32>(var_1.d.x, -1648f), u_input.a), var_0), func_4(vec4<f32>(var_1.d.x, 189f, 420f, var_1.d.x), Struct_1(true, vec2<u32>(3088u, 38374u), u_input.a, vec2<f32>(-1000f, var_1.d.x), vec3<i32>(18733i, var_1.e.x, var_1.c.x)), Struct_1(var_1.a, vec2<u32>(58152u, var_1.b.x), u_input.a, vec2<f32>(var_1.d.x, var_1.d.x), vec3<i32>(var_0, 2147483647i, 0i)), var_1.e.x), ~u_input.c).d + _wgslsmith_f_op_vec2_f32(floor(var_1.d))), vec3<i32>(2147483647i, ~var_1.e.x, 22098i)), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1526f, var_1.d.x, 1000f) - vec4<f32>(-213f, 1471f, var_1.d.x, var_1.d.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1366f, -616f, 1676f, var_1.d.x), vec4<f32>(228f, var_1.d.x, var_1.d.x, 1876f)))) * vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(round(var_1.d.x)), var_1.d.x, _wgslsmith_div_f32(var_1.d.x, 1986f))), func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2100f, -1000f, 1627f, 354f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, 821f, var_1.d.x, var_1.d.x)), vec4<bool>(true, var_1.a, var_1.a, false))), Struct_1(u_input.b <= var_1.b.x, abs(vec2<u32>(0u, 15468u)), -u_input.a, _wgslsmith_f_op_vec2_f32(round(var_1.d)), ~vec3<i32>(u_input.c, 1i, var_0)), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, var_1.d.x, -532f, var_1.d.x)), Struct_1(var_1.a, global0[_wgslsmith_index_u32(var_1.b.x, 12u)], var_1.e, vec2<f32>(var_1.d.x, var_1.d.x), u_input.a), Struct_1(var_1.a, global0[_wgslsmith_index_u32(u_input.b, 12u)], u_input.a, vec2<f32>(622f, -330f), vec3<i32>(-1i, var_0, -1i)), 54694i), ~_wgslsmith_mod_i32(-2147483647i, var_0)), Struct_1(true, vec2<u32>(1u, ~u_input.b), _wgslsmith_add_vec3_i32(-var_1.c, vec3<i32>(u_input.a.x, var_1.c.x, 2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1384f), _wgslsmith_f_op_f32(567f - var_1.d.x)), vec3<i32>(var_0, 8357i, var_1.c.x | 0i)), var_0));
    return _wgslsmith_f_op_f32(trunc(1f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<f32>(-452f, _wgslsmith_f_op_f32(func_1()), -382f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(func_1())), -119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 650f))))))));
    global0 = array<vec2<u32>, 12>();
    let var_1 = false;
    var var_2 = var_0.x;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(-1345f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1138f * func_4(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_1(var_1, global0[_wgslsmith_index_u32(u_input.b, 12u)], vec3<i32>(-1i, u_input.c, u_input.a.x), var_0.xz, u_input.a), Struct_1(var_1, vec2<u32>(4294967295u, 4294967295u), vec3<i32>(u_input.a.x, u_input.c, -2147483647i), vec2<f32>(1656f, 1974f), u_input.a), u_input.a.x).d.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(vec4<f32>(var_0.x, 352f, var_0.x, var_0.x), Struct_1(true, vec2<u32>(u_input.b, 0u), vec3<i32>(u_input.a.x, 21400i, -4875i), vec2<f32>(var_0.x, var_0.x), u_input.a), Struct_1(true, vec2<u32>(u_input.b, u_input.b), u_input.a, var_0.xx, vec3<i32>(1i, u_input.a.x, u_input.c)), u_input.a.x).d.x))));
    var var_3 = func_5(Struct_1(true, _wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b, 3390u), 12u)], vec2<u32>(u_input.b, u_input.b << (u_input.b % 32u))), func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, var_0.x, -669f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-788f, 1914f, var_0.x, -1519f) + vec4<f32>(690f, var_0.x, var_0.x, var_0.x)))), Struct_1(true, func_4(vec4<f32>(805f, 970f, var_0.x, var_0.x), Struct_1(false, global0[_wgslsmith_index_u32(1u, 12u)], u_input.a, vec2<f32>(var_0.x, -293f), vec3<i32>(23744i, u_input.c, u_input.c)), Struct_1(var_1, vec2<u32>(u_input.b, u_input.b), u_input.a, vec2<f32>(var_0.x, var_0.x), u_input.a), 34892i).b, _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(-1i, u_input.a.x, -1i)), vec2<f32>(var_0.x, -1000f), vec3<i32>(u_input.c, 12997i, u_input.c) ^ vec3<i32>(u_input.c, u_input.a.x, u_input.a.x)), Struct_1(var_1 && false, global0[_wgslsmith_index_u32(u_input.b, 12u)] & vec2<u32>(4294967295u, u_input.b), u_input.a, var_0.zy, select(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), u_input.a, vec3<bool>(false, true, false))), func_3(func_5(Struct_1(false, global0[_wgslsmith_index_u32(83261u, 12u)], u_input.a, vec2<f32>(-273f, var_0.x), vec3<i32>(u_input.c, 23061i, u_input.c)), 725i, Struct_1(false, global0[_wgslsmith_index_u32(u_input.b, 12u)], vec3<i32>(-1i, -47625i, u_input.c), var_0.yx, vec3<i32>(-11433i, -2147483647i, 1i)), Struct_1(false, vec2<u32>(u_input.b, u_input.b), u_input.a, vec2<f32>(var_0.x, var_0.x), vec3<i32>(2147483647i, 2147483647i, u_input.a.x))).c.x, Struct_1(false, global0[_wgslsmith_index_u32(u_input.b, 12u)], u_input.a, vec2<f32>(1826f, 725f), vec3<i32>(7451i, u_input.a.x, u_input.a.x)), func_5(Struct_1(var_1, vec2<u32>(1u, 41027u), u_input.a, var_0.yy, vec3<i32>(-48529i, 1i, -2927i)), u_input.a.x, Struct_1(var_1, global0[_wgslsmith_index_u32(34129u, 12u)], vec3<i32>(13315i, u_input.c, u_input.c), vec2<f32>(var_0.x, var_0.x), vec3<i32>(25782i, u_input.c, 1i)), Struct_1(var_1, vec2<u32>(u_input.b, 4294967295u), u_input.a, vec2<f32>(var_0.x, var_0.x), u_input.a))).x).e, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.yy * var_0.yx))), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-4582i, u_input.a.x, u_input.c) & vec3<i32>(-24932i, u_input.a.x, u_input.c), _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(14743i, u_input.a.x, u_input.c))))), u_input.c, func_5(func_5(func_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1499f, var_0.x, -2001f, 277f), vec4<f32>(-1154f, 537f, var_0.x, var_0.x))), Struct_1(true, global0[_wgslsmith_index_u32(10638u, 12u)], vec3<i32>(10149i, -2147483647i, 0i), var_0.zx, vec3<i32>(u_input.a.x, u_input.c, -26127i)), func_5(Struct_1(var_1, global0[_wgslsmith_index_u32(25560u, 12u)], u_input.a, var_0.yz, vec3<i32>(u_input.c, u_input.a.x, -1i)), 2827i, Struct_1(true, vec2<u32>(90617u, 5706u), vec3<i32>(-67178i, 2147483647i, 0i), vec2<f32>(var_0.x, var_0.x), vec3<i32>(u_input.c, u_input.c, u_input.c)), Struct_1(false, vec2<u32>(u_input.b, u_input.b), u_input.a, var_0.zy, u_input.a)), _wgslsmith_clamp_i32(2147483647i, u_input.c, u_input.a.x)), ~_wgslsmith_clamp_i32(-54204i, u_input.c, -1i), Struct_1(true, vec2<u32>(0u, 80664u) | vec2<u32>(u_input.b, u_input.b), ~vec3<i32>(1894i, u_input.c, 18259i), _wgslsmith_f_op_vec2_f32(var_0.zx * var_0.zx), select(u_input.a, vec3<i32>(u_input.c, u_input.c, u_input.a.x), vec3<bool>(true, false, var_1))), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1452f, var_0.x, 1656f, var_0.x)), Struct_1(var_1, global0[_wgslsmith_index_u32(14996u, 12u)], u_input.a, var_0.xy, vec3<i32>(-1i, -1i, u_input.c)), func_5(Struct_1(false, vec2<u32>(u_input.b, u_input.b), vec3<i32>(-31736i, u_input.c, u_input.a.x), var_0.zz, vec3<i32>(-48694i, -2147483647i, 63037i)), -59816i, Struct_1(true, global0[_wgslsmith_index_u32(1u, 12u)], u_input.a, var_0.zx, vec3<i32>(u_input.c, 1i, u_input.a.x)), Struct_1(true, global0[_wgslsmith_index_u32(93022u, 12u)], vec3<i32>(u_input.a.x, 65811i, u_input.c), var_0.yz, vec3<i32>(u_input.c, 2147483647i, u_input.a.x))), 1533i)), _wgslsmith_mod_i32(-7023i, 1i), Struct_1(var_1, global0[_wgslsmith_index_u32(abs(u_input.b) >> ((u_input.b & 1u) % 32u), 12u)], ~(vec3<i32>(u_input.c, 2147483647i, 59586i) & vec3<i32>(-2147483647i, u_input.c, u_input.c)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(var_0.xx, vec2<f32>(-1000f, var_0.x), vec2<bool>(var_1, var_1))), vec2<f32>(1000f, 1813f))), _wgslsmith_div_vec3_i32(-vec3<i32>(631i, u_input.a.x, 0i), u_input.a)), func_5(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-504f, 1859f, var_0.x, var_0.x)), Struct_1(true, vec2<u32>(1u, 0u), vec3<i32>(u_input.a.x, -21962i, -5224i), var_0.yx, vec3<i32>(u_input.c, 12048i, 2147483647i)), Struct_1(true, global0[_wgslsmith_index_u32(0u, 12u)], u_input.a, var_0.yx, u_input.a), firstLeadingBit(-1i)), u_input.a.x, Struct_1(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 0u), vec3<u32>(u_input.b, u_input.b, u_input.b)), 12u)], u_input.a & vec3<i32>(2147483647i, u_input.a.x, u_input.c), _wgslsmith_f_op_vec2_f32(var_0.yy * vec2<f32>(var_0.x, -1049f)), vec3<i32>(u_input.a.x, u_input.c, 2147483647i)), Struct_1(var_1, global0[_wgslsmith_index_u32(58606u, 12u)], vec3<i32>(-36949i, -2147483647i, 0i), vec2<f32>(-356f, var_0.x), ~vec3<i32>(u_input.a.x, -24316i, u_input.a.x)))), Struct_1(false, vec2<u32>(u_input.b, ~(~71662u)), vec3<i32>(_wgslsmith_add_i32(u_input.c, u_input.c ^ 3128i), ~func_5(Struct_1(var_1, global0[_wgslsmith_index_u32(u_input.b, 12u)], u_input.a, var_0.xy, vec3<i32>(u_input.a.x, u_input.c, 2147483647i)), -5543i, Struct_1(false, global0[_wgslsmith_index_u32(u_input.b, 12u)], u_input.a, vec2<f32>(1729f, 2366f), vec3<i32>(2147483647i, u_input.c, u_input.c)), Struct_1(true, vec2<u32>(4294967295u, 13323u), vec3<i32>(u_input.a.x, u_input.a.x, 17565i), vec2<f32>(var_0.x, var_0.x), vec3<i32>(u_input.c, 2726i, u_input.a.x))).c.x, ~(-14904i)), vec2<f32>(-1000f, 700f), u_input.a)).e;
    var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(1u, -2390f);
}

