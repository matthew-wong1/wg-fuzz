struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-2497f, -1758f, -1000f, -239f), vec4<f32>(1269f, 1000f, -1572f, 276f), vec4<f32>(-1901f, 1113f, 391f, -744f), vec4<f32>(1247f, 2502f, 1490f, 1250f), vec4<f32>(496f, 307f, -177f, 1000f), vec4<f32>(-865f, 126f, -1000f, -1356f), vec4<f32>(837f, 233f, 1431f, -2171f), vec4<f32>(586f, 804f, 1000f, -1155f), vec4<f32>(2025f, -270f, 1414f, 190f), vec4<f32>(-889f, 1283f, -1000f, 1000f), vec4<f32>(-360f, 2256f, 2140f, -130f));

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<bool> {
    global1 = select(select(!vec3<bool>(select(true, global1.x, global1.x), any(global1.yz), true), !(!(!vec3<bool>(true, global1.x, global1.x))), all(select(vec4<bool>(true, true, global1.x, true), select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(false, global1.x, global1.x, false)), all(vec4<bool>(false, global1.x, false, true))))), vec3<bool>(true, true, global1.x), all(select(select(vec4<bool>(true, true, true, false), !vec4<bool>(global1.x, global1.x, false, true), any(vec3<bool>(false, false, global1.x))), !(!vec4<bool>(true, global1.x, global1.x, global1.x)), vec4<bool>(!global1.x, any(vec2<bool>(true, global1.x)), all(vec4<bool>(false, global1.x, false, true)), false))));
    global0 = array<vec4<f32>, 11>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1739f) + _wgslsmith_f_op_f32(742f * 1000f))))));
    global1 = select(!vec3<bool>(!select(global1.x, global1.x, global1.x), false, true), !(!(!vec3<bool>(global1.x, global1.x, global1.x))), vec3<bool>((2147483647i >> (_wgslsmith_mod_u32(u_input.d.x, u_input.b) % 32u)) < -u_input.c, false, global1.x));
    var var_1 = Struct_1(!any(!vec3<bool>(global1.x, false, global1.x)) || (_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0, -1099f))) <= var_0), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1082f, var_0))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 676f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -750f) - vec2<f32>(var_0, var_0))))), global1.x)), u_input.c, _wgslsmith_div_i32(u_input.c, 0i), select(vec4<bool>(!all(vec4<bool>(false, true, true, true)), !all(vec3<bool>(false, global1.x, false)), any(select(vec3<bool>(false, global1.x, true), vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, true, global1.x))), false), select(!select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, false, global1.x, global1.x)), select(select(vec4<bool>(true, global1.x, false, false), vec4<bool>(false, false, true, true), global1.x), vec4<bool>(true, true, true, true), !global1.x), select(!vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x), global1.x)), vec4<bool>(true, all(!vec2<bool>(true, global1.x)), all(vec3<bool>(true, true, global1.x)) | !global1.x, select(var_0 < -253f, false, global1.x))));
    return vec3<bool>(!(var_1.e.x | any(var_1.e)), var_1.e.x, true);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: f32) -> Struct_1 {
    global1 = select(select(func_3(), vec3<bool>(func_3().x, false, false), true), vec3<bool>(true & all(vec4<bool>(false, global1.x, true, global1.x)), !(u_input.e == (0u ^ u_input.b)), true), vec3<bool>(false, _wgslsmith_f_op_f32(arg_2 + -111f) > arg_0, global1.x));
    var var_0 = _wgslsmith_mod_i32(23522i, -select(-39150i, 2147483647i >> (_wgslsmith_clamp_u32(1u, u_input.e, u_input.e) % 32u), all(select(global1.xx, vec2<bool>(global1.x, global1.x), global1.xz))));
    var_0 = 2147483647i;
    let var_1 = global1.zy;
    var var_2 = Struct_1(true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, arg_2)))))))), max(_wgslsmith_add_i32(abs(arg_1 | 1i), 1i), abs(2147483647i)), -2147483647i, vec4<bool>(global1.x, !(!var_1.x) && !(false | var_1.x), any(!func_3()), any(select(vec4<bool>(false, var_1.x, false, global1.x), !vec4<bool>(false, global1.x, true, true), vec4<bool>(true, global1.x, global1.x, global1.x)))));
    return Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_f_op_f32(ceil(arg_0)))), _wgslsmith_f_op_f32(-arg_2)), 2147483647i, ~(-_wgslsmith_add_i32(_wgslsmith_sub_i32(23972i, u_input.c), 45213i)), vec4<bool>(global1.x, var_1.x, all(vec3<bool>(true, true, true)), !var_1.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = !vec4<bool>(abs(-21264i) > -(~arg_0.d), false, all(vec3<bool>(all(arg_0.e.zyw), arg_3.a && arg_0.a, true)), !global1.x);
    var var_1 = arg_0;
    var var_2 = true;
    let var_3 = arg_0;
    let var_4 = var_1.b.x;
    return func_2(arg_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(~42765i, arg_3.d, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c, arg_3.c), u_input.a.xx)) ^ vec3<i32>(_wgslsmith_mult_i32(-44994i, arg_0.d), var_3.d, ~arg_3.c), u_input.a.zxy), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1152f, arg_1.x)))) - var_3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-988f)))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    let var_0 = 0i;
    var var_1 = vec3<i32>(~_wgslsmith_div_i32(countOneBits(~u_input.c), 0i), ~(-50840i), var_0);
    var_1 = max(u_input.a.xzy, vec3<i32>(var_0, i32(-1i) * -15173i, -_wgslsmith_mod_i32(1i, arg_1.x) >> (~(~4086u) % 32u)));
    var var_2 = vec3<bool>(func_3().x, global1.x, false);
    let var_3 = arg_1;
    return _wgslsmith_f_op_f32(abs(-1066f));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 44912u << (_wgslsmith_div_u32(arg_2.x, ~arg_2.x) % 32u)), vec2<u32>(_wgslsmith_add_u32(1u, min(arg_1.x, firstTrailingBit(arg_1.x))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, ~0u), select(_wgslsmith_add_u32(u_input.b, arg_1.x), _wgslsmith_add_u32(11169u, u_input.e), true))));
    var var_1 = _wgslsmith_f_op_f32(func_5(func_4(arg_3, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-460f, arg_3.b.x)), 1331f, _wgslsmith_f_op_f32(-720f * -252f)), ~arg_1.x, func_2(-1589f, 2147483647i | arg_3.d, arg_0.x)), u_input.a.xz, Struct_1(false, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.zw))), arg_3.c, 1i, arg_3.e), !(!arg_3.e.wzz)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.x, -797f, !(-41289i == u_input.c) || false)), 157f);
    let var_2 = vec3<bool>(global1.x, arg_3.e.x & all(!func_4(arg_3, arg_0.yxz, arg_1.x, Struct_1(arg_3.a, arg_0.wy, u_input.a.x, arg_3.d, arg_3.e)).e), any(select(vec3<bool>(global1.x, true, global1.x), !vec3<bool>(true, arg_3.e.x, false), !global1.x)));
    let var_3 = 80359u >> (firstTrailingBit(23263u) % 32u);
    return func_4(arg_3, vec3<f32>(arg_0.x, func_2(-1000f, u_input.a.x, 272f).b.x, arg_0.x), select(arg_1.x, arg_2.x, func_3().x), Struct_1(true, vec2<f32>(arg_0.x, -2152f), (u_input.a.x << (arg_1.x % 32u)) << (_wgslsmith_mult_u32(10395u, var_3 | 4294967295u) % 32u), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.c << (4294967295u % 32u), arg_3.d), arg_3.c & firstTrailingBit(u_input.c)), vec4<bool>(global1.x, any(var_2.yz), func_4(arg_3, vec3<f32>(338f, arg_3.b.x, arg_3.b.x), u_input.e, arg_3).d > (44043i | u_input.c), arg_3.e.x)));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<f32> {
    var var_0 = !arg_0.e.wzw;
    let var_1 = arg_1.x;
    let var_2 = 1i == (~firstTrailingBit(func_4(Struct_1(false, arg_0.b, arg_0.d, arg_0.c, vec4<bool>(true, global1.x, global1.x, false)), arg_1.ywy, 15271u, arg_0).c) ^ _wgslsmith_mult_i32(-func_1(vec4<f32>(arg_1.x, -1000f, var_1, -299f), vec3<u32>(22493u, 0u, 48412u), vec4<u32>(0u, u_input.d.x, 106741u, 1u), arg_0).c, -20813i));
    let var_3 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(func_2(901f, reverseBits(-21998i), _wgslsmith_f_op_f32(select(arg_0.b.x, 1000f, true))).b.x)))), arg_0.d, _wgslsmith_f_op_f32(arg_0.b.x - arg_1.x));
    global0 = array<vec4<f32>, 11>();
    return vec2<f32>(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1900f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_1) * _wgslsmith_f_op_f32(round(1230f))), all(var_3.e))), arg_0.b.x));
}

fn func_7(arg_0: vec2<f32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(u_input.a.x, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(1u, 11u)])), ~(u_input.d.wwx >> (vec3<u32>(108398u, 4294967295u, 1u) % vec3<u32>(32u))), vec4<u32>(_wgslsmith_div_u32(0u, u_input.b), ~arg_2, arg_2, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(0u, 1u, u_input.d.x, u_input.e))), Struct_1(all(vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_0.x)), u_input.c, u_input.c, vec4<bool>(global1.x, global1.x, global1.x, global1.x))).d ^ -abs(-8082i), u_input.a.x);
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, 1i), vec3<i32>(-2147483647i, ~abs(u_input.a.x), func_2(_wgslsmith_f_op_f32(-472f - arg_1), max(0i, u_input.c), 1496f).c)) >> (~arg_2 % 32u);
    var_1 = _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c, (u_input.c << (4294967295u % 32u)) ^ abs(-1i), 0i, ~func_4(Struct_1(global1.x, vec2<f32>(743f, arg_0.x), u_input.c, u_input.c, vec4<bool>(global1.x, global1.x, global1.x, global1.x)), vec3<f32>(arg_0.x, arg_1, arg_1), arg_2, Struct_1(global1.x, vec2<f32>(arg_0.x, arg_1), -2147483647i, u_input.a.x, vec4<bool>(global1.x, global1.x, true, global1.x))).d), -vec4<i32>(u_input.c, 6505i, u_input.c, -2147483647i), !(u_input.e == arg_2) | !global1.x), vec4<i32>(~(-30521i), abs(_wgslsmith_add_i32(u_input.c, u_input.a.x)), u_input.a.x, _wgslsmith_div_i32(~(-20047i), u_input.a.x)) | _wgslsmith_sub_vec4_i32(vec4<i32>(-22366i, func_1(global0[_wgslsmith_index_u32(56564u, 11u)], vec3<u32>(8751u, 1u, 1u), u_input.d, Struct_1(global1.x, vec2<f32>(1287f, arg_1), 1i, -31784i, vec4<bool>(global1.x, false, global1.x, false))).d, 1i, -89706i), _wgslsmith_div_vec4_i32(vec4<i32>(39131i, -38761i, u_input.c, u_input.a.x), -u_input.a)));
    var_0 = ~(-17787i);
    var var_2 = Struct_1(global1.x, arg_0, u_input.a.x, max(reverseBits(-2147483647i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(i32(-1i) * -41662i, -33895i), u_input.a.x, _wgslsmith_dot_vec4_i32(select(u_input.a, u_input.a, global1.x), u_input.a))), vec4<bool>(!global1.x, 1511f > _wgslsmith_f_op_f32(765f * _wgslsmith_f_op_f32(-arg_1)), true, global1.x));
    return Struct_1(_wgslsmith_f_op_f32(-var_2.b.x) <= -1000f, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, var_2.b.x) - arg_0), u_input.c, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-952f, arg_1, -234f, -289f), global0[_wgslsmith_index_u32(u_input.e, 11u)]))))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d.www, u_input.d.zyz) ^ _wgslsmith_sub_vec3_u32(u_input.d.xyw, u_input.d.wyz), select(vec3<u32>(4294967295u, 4294967295u, arg_2), vec3<u32>(u_input.e, 1056u, 86237u), false)), firstTrailingBit(abs(u_input.d)), func_1(global0[_wgslsmith_index_u32(1u, 11u)], u_input.d.yyy, ~u_input.d, func_2(_wgslsmith_f_op_f32(f32(-1f) * -1577f), -var_2.d, 2027f))).c, var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(501f, -589f)), vec2<f32>(2293f, 1116f)) * _wgslsmith_f_op_vec2_f32(func_6(func_1(vec4<f32>(-1036f, -1000f, 1542f, 1021f), vec3<u32>(4294967295u, u_input.b, u_input.d.x), u_input.d, Struct_1(global1.x, vec2<f32>(496f, -1411f), u_input.a.x, 2147483647i, vec4<bool>(false, global1.x, global1.x, true))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.e), 11u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2257f - -395f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(536f, -653f), _wgslsmith_f_op_f32(f32(-1f) * -192f), true))))), ~(~_wgslsmith_mult_u32(u_input.d.x, 1u)));
    var var_1 = vec4<u32>(24415u, u_input.e << (u_input.d.x % 32u), 1u, 4294967295u);
    var var_2 = u_input.b;
    let var_3 = abs(1u);
    global1 = var_0.e.wzz;
    let var_4 = max(u_input.a.ywx, vec3<i32>(~u_input.a.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, 0i, var_0.c), vec3<i32>(1i, -1i, var_0.c)), var_0.c)) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_3, var_3), u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3, var_1.x, 13976u, 23587u), vec4<u32>(var_3, 0u, 54167u, 0u))), var_1.wxx) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.a.x, max(-29235i, var_4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.x))) == _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(exp2(var_0.b.x)))), _wgslsmith_f_op_f32(exp2(var_0.b.x)), max(2147483647i, var_0.d) & var_4.x);
}

