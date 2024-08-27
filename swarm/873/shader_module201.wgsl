struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

var<private> global1: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-808f, -1000f) - _wgslsmith_f_op_f32(-1000f * 1751f)))), -195f) + -462f);
    global1 = _wgslsmith_sub_i32(abs(~10499i), abs(-u_input.b.x));
    let var_1 = Struct_2(Struct_1(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), u_input.b.x != u_input.b.x), vec2<bool>(true, all(vec4<bool>(true, false, true, false))), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -1i, u_input.b.x, -2147483647i)) != _wgslsmith_add_i32(29727i, 21520i)), true, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, u_input.a, u_input.a, 39214u)), ~(~vec4<u32>(1u, 0u, u_input.a, 27909u)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -132f) + _wgslsmith_f_op_f32(959f - -338f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-455f - _wgslsmith_f_op_f32(f32(-1f) * -1412f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-985f, _wgslsmith_f_op_f32(458f * 1112f))))), _wgslsmith_f_op_f32(f32(-1f) * -255f)), Struct_1(vec2<bool>(!any(vec2<bool>(false, true)), true), true, u_input.a >> (47758u % 32u)));
    let var_2 = _wgslsmith_mult_vec4_u32(~vec4<u32>(abs(var_1.a.c), _wgslsmith_div_u32(abs(var_1.a.c), min(70258u, u_input.a)), ~(8656u >> (var_1.a.c % 32u)), ~_wgslsmith_clamp_u32(16098u, 10540u, u_input.a)), _wgslsmith_add_vec4_u32(~vec4<u32>(var_1.c.c, firstTrailingBit(64633u), u_input.a, _wgslsmith_add_u32(34744u, 15271u)), ~(~(~vec4<u32>(u_input.a, 4294967295u, 5052u, 0u)))));
    let var_3 = Struct_3(var_1, var_2.x, var_1.c, ~vec2<u32>(90426u, _wgslsmith_div_u32(max(1u, var_2.x), max(4294967295u, var_2.x))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(117f + 781f) * _wgslsmith_f_op_f32(-1000f - var_3.a.b.x))) - -1000f)));
}

fn func_2(arg_0: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1761f + arg_0.x), _wgslsmith_f_op_f32(max(arg_0.x, 1818f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(select(1884f, 1150f, false))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), global0[_wgslsmith_index_u32(u_input.a, 8u)]), arg_0, vec4<bool>(true, false, true, false))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -685f))), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(76171u, 8u)]), vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 539f, arg_0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-275f, -325f, arg_0.x, arg_0.x))))));
    var var_1 = vec3<bool>(true, false, false);
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x)));
    var var_3 = !(!(!vec2<bool>(var_1.x, var_1.x != false)));
    let var_4 = u_input.b.x ^ 1i;
    return all(select(select(vec4<bool>(false, 39178u == u_input.a, -37701i >= u_input.b.x, any(var_1.xy)), vec4<bool>(var_1.x & var_1.x, arg_0.x <= 334f, var_3.x, 2147483647i <= u_input.b.x), select(select(vec4<bool>(var_1.x, var_3.x, var_1.x, var_3.x), vec4<bool>(var_1.x, true, var_1.x, true), true), !vec4<bool>(var_3.x, var_1.x, true, true), var_3.x)), !select(vec4<bool>(false, var_3.x, false, true), vec4<bool>(false, var_3.x, false, var_1.x), !vec4<bool>(true, false, var_3.x, false)), var_1.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<u32>, arg_3: bool) -> Struct_2 {
    var var_0 = vec3<i32>(-1i) * -select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -38505i, u_input.b.x), _wgslsmith_clamp_vec3_i32(u_input.b.xwx, vec3<i32>(u_input.b.x, 3470i, 21648i), vec3<i32>(u_input.b.x, -21855i, u_input.b.x))), -_wgslsmith_mod_vec3_i32(u_input.b.zyx, u_input.b.wzy), vec3<bool>(all(vec3<bool>(true, arg_3, arg_3)), any(vec2<bool>(arg_3, false)), arg_1));
    var_0 = (vec3<i32>(firstLeadingBit(_wgslsmith_add_i32(59191i, var_0.x)), 11799i, _wgslsmith_mod_i32(reverseBits(4926i), -var_0.x)) | vec3<i32>(16749i, var_0.x, var_0.x)) << (arg_2 % vec3<u32>(32u));
    var var_1 = !arg_3;
    global0 = array<vec4<f32>, 8>();
    var var_2 = arg_0;
    return Struct_2(Struct_1(select(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_3, false), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(arg_3, arg_1), false), vec2<bool>(false, false), false), all(select(vec3<bool>(arg_1, false, arg_3), vec3<bool>(arg_3, false, true), arg_1))), true, ~23720u), _wgslsmith_f_op_vec4_f32(ceil(arg_0)), Struct_1(!(!select(vec2<bool>(false, arg_3), vec2<bool>(arg_3, arg_1), vec2<bool>(false, false))), !(_wgslsmith_f_op_f32(round(var_2.x)) >= arg_0.x), 0u));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(arg_1, arg_2.c, Struct_1(arg_2.a, _wgslsmith_div_u32(min(68765u, u_input.a), ~u_input.a) != 22656u, u_input.a), ~abs(~reverseBits(vec2<u32>(arg_2.c, arg_1.c.c))));
    global1 = u_input.b.x;
    global0 = array<vec4<f32>, 8>();
    var var_1 = ~(~(reverseBits(vec3<u32>(var_0.a.a.c, var_0.d.x, 41476u)) << (vec3<u32>(1u, _wgslsmith_dot_vec2_u32(var_0.d, var_0.d), _wgslsmith_mult_u32(u_input.a, arg_2.c)) % vec3<u32>(32u))));
    global0 = array<vec4<f32>, 8>();
    return var_0.a.c;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = -287f;
    var var_1 = Struct_2(func_5(all(vec4<bool>(!arg_0, all(vec3<bool>(arg_0, arg_0, arg_0)), any(vec4<bool>(true, false, arg_0, arg_0)), arg_0 || arg_0)), func_4(global0[_wgslsmith_index_u32(u_input.a, 8u)], (arg_0 && arg_0) & arg_0, ~vec3<u32>(50185u, 66153u, 83767u), func_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(92769u, u_input.a), 8u)])), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2238f, -406f, arg_1.x, 1412f), vec4<f32>(var_0, var_0, 244f, arg_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -928f, -185f, -524f))), !(!arg_0), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(8615u, u_input.a, 52282u), vec3<u32>(19094u, u_input.a, u_input.a)), ~vec3<u32>(u_input.a, 0u, u_input.a)), !any(vec2<bool>(true, true))).c), global0[_wgslsmith_index_u32(u_input.a, 8u)], func_5(true, Struct_2(func_4(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(4294967295u, 8u)]), false, reverseBits(vec3<u32>(2193u, 1u, 1u)), true).a, vec4<f32>(-119f, arg_1.x, 969f, _wgslsmith_f_op_f32(floor(var_0))), Struct_1(func_5(true, Struct_2(Struct_1(vec2<bool>(false, arg_0), arg_0, 4294967295u), vec4<f32>(266f, var_0, arg_1.x, 1136f), Struct_1(vec2<bool>(arg_0, arg_0), arg_0, u_input.a)), Struct_1(vec2<bool>(arg_0, arg_0), arg_0, u_input.a)).a, false, min(50148u, 48663u))), Struct_1(vec2<bool>(false, !arg_0), true | (81528u == u_input.a), ~_wgslsmith_clamp_u32(u_input.a, 5633u, u_input.a))));
    global0 = array<vec4<f32>, 8>();
    var_1 = Struct_2(func_4(vec4<f32>(_wgslsmith_div_f32(-316f, -281f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -215f))), var_1.b.x, 120f), (~(-2147483647i) | _wgslsmith_sub_i32(u_input.b.x, 0i)) <= abs(30062i), ~(~vec3<u32>(0u, u_input.a, 38663u) | ~vec3<u32>(var_1.a.c, u_input.a, 1u)), arg_0).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1725f)) * var_1.b.x), var_0, _wgslsmith_f_op_f32(ceil(-948f)))), Struct_1(func_4(vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(select(1224f, -1417f, true)), _wgslsmith_f_op_f32(-arg_1.x)), u_input.b.x != abs(2743i), _wgslsmith_mod_vec3_u32(~vec3<u32>(37645u, var_1.c.c, 46366u), vec3<u32>(10065u, u_input.a, u_input.a)), false).a.a, func_5(var_1.c.a.x, func_4(vec4<f32>(arg_1.x, arg_1.x, var_1.b.x, -357f), !arg_0, vec3<u32>(var_1.a.c, 1u, var_1.c.c), !arg_0), var_1.c).a.x, reverseBits(~var_1.a.c)));
    let var_2 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.x - var_1.b.x), _wgslsmith_div_f32(764f, var_1.b.x), var_0, _wgslsmith_f_op_f32(sign(-509f)))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b + vec4<f32>(var_1.b.x, -1467f, var_0, -445f))), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x) >= u_input.b.x, vec3<u32>(4294967295u, 79311u, u_input.a) | ~vec3<u32>(1u, u_input.a, var_1.a.c), arg_0).a.a.x, vec3<u32>(u_input.a, u_input.a | 279u, countOneBits(_wgslsmith_clamp_u32(0u, 24580u, 23902u))), arg_0 & func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-290f, 242f, var_1.b.x, -775f), vec4<f32>(779f, var_1.b.x, arg_1.x, var_0))))).a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-405f)), arg_1.x)), -1275f), -230f, _wgslsmith_f_op_f32(func_3()), 671f), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)]))) - vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(arg_1.x * 1152f), var_1.b.x, _wgslsmith_f_op_f32(func_3()))), !(12465u == firstTrailingBit(u_input.a)), ~(~vec3<u32>(var_1.a.c, u_input.a, var_1.c.c)), var_1.c.a.x).a);
    return var_2;
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> Struct_2 {
    global0 = array<vec4<f32>, 8>();
    let var_0 = reverseBits(vec4<i32>(0i, u_input.b.x, max(u_input.b.x, abs(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x))), -28483i));
    var var_1 = Struct_2(arg_1.c, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.b.x + 806f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, arg_2) - _wgslsmith_f_op_f32(arg_1.b.x - -339f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-340f - arg_1.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, -337f, _wgslsmith_f_op_f32(arg_2 + 622f)))), Struct_1(vec2<bool>(arg_0.x, true), true, ~_wgslsmith_div_u32(0u, ~1u)));
    global1 = abs(-2147483647i);
    let var_2 = var_1.c;
    return Struct_2(Struct_1(func_1(var_1.c.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.b.zxy, var_1.b.ywx)))).c.a, false, ~reverseBits(_wgslsmith_div_u32(13793u, u_input.a))), global0[_wgslsmith_index_u32(16371u, 8u)], func_5(any(!vec3<bool>(false, arg_0.x, true)), Struct_2(func_4(_wgslsmith_div_vec4_f32(arg_1.b, arg_1.b), true, ~vec3<u32>(0u, var_2.c, 4294967295u), u_input.a >= 1u).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_1.b))), arg_1.c), arg_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 8>();
    global1 = u_input.b.x;
    var var_0 = Struct_3(func_6(vec4<bool>(all(vec3<bool>(true, true, true)), false, true, true), func_1(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(-212f, 435f, 786f) - vec3<f32>(-100f, 1115f, 416f))), 1562f, min(func_4(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1113f, 359f, 222f, -368f))), true, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(5874u, u_input.a, 4294967295u)), func_1(false, vec3<f32>(-1275f, 686f, -2142f)).a.a.x).c.c, ~u_input.a)), 54785u, func_4(vec4<f32>(-1413f, 268f, -908f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1632f) * _wgslsmith_f_op_f32(step(508f, 213f)))), firstLeadingBit(1u) <= firstLeadingBit(u_input.a), ~max(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, 51559u, 4294967295u)) >> (~abs(vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)), false).c, ~(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 4136u), vec2<u32>(u_input.a, u_input.a)) ^ vec2<u32>(_wgslsmith_div_u32(12867u, 30290u), firstLeadingBit(1u))));
    let var_1 = Struct_3(Struct_2(Struct_1(var_0.a.a.a, false, 33735u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.b.x, -1020f)) * 372f), var_0.a.b.x, _wgslsmith_f_op_f32(-var_0.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1056f))), func_5(var_0.c.a.x, var_0.a, var_0.c)), 1156u, func_1(!all(select(vec3<bool>(var_0.a.a.a.x, true, var_0.a.c.b), vec3<bool>(true, true, false), vec3<bool>(true, true, var_0.c.a.x))), _wgslsmith_f_op_vec3_f32(var_0.a.b.yyx - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(2031f, -266f, var_0.a.b.x) * var_0.a.b.xyx))))).c, firstLeadingBit(reverseBits(var_0.d)));
    let var_2 = var_1.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.c.c, var_0.a.c.c, var_1.d.x, var_0.b), vec4<u32>(0u, 0u, 0u, var_1.d.x), vec4<u32>(var_0.b, 4294967295u, 37256u, u_input.a)) >> (abs(vec4<u32>(4294967295u, var_0.c.c, 992u, 22271u)) % vec4<u32>(32u)), vec4<u32>(countOneBits(var_0.d.x), var_0.a.a.c, 52466u << (u_input.a % 32u), ~75097u))), -310f, var_1.d, select(max(~u_input.b.x, 1i), ~1i, var_0.c.b & true));
}

