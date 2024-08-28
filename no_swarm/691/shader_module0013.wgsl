struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>) -> vec2<f32> {
    let var_0 = Struct_2(_wgslsmith_mult_u32(u_input.b >> (4294967295u % 32u), arg_1.x), vec4<u32>(~1u ^ (_wgslsmith_dot_vec2_u32(u_input.d.xx, vec2<u32>(u_input.d.x, 0u)) << (43037u % 32u)), u_input.d.x, 46232u, 0u));
    var var_1 = Struct_1(!(!(!select(arg_0.yw, arg_0.wx, false))), 1809f, arg_0.wxx, vec4<u32>(_wgslsmith_div_u32(~arg_1.x << (max(1u, arg_1.x) % 32u), var_0.a), ~countOneBits(countOneBits(17575u)), _wgslsmith_div_u32(1u, max(u_input.b >> (4294967295u % 32u), u_input.d.x << (9344u % 32u))), 0u));
    var var_2 = firstLeadingBit(var_0.b.x);
    global0 = array<vec3<bool>, 5>();
    var var_3 = select(!(!(!vec2<bool>(var_1.a.x, true))), !arg_0.zx, select(!var_1.a.x, all(select(vec4<bool>(arg_0.x, false, true, false), vec4<bool>(true, arg_0.x, true, true), vec4<bool>(false, false, var_1.a.x, false))) | var_1.a.x, 1i < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 56145i, 24743i), _wgslsmith_mult_vec3_i32(vec3<i32>(-1766i, u_input.e, 33753i), vec3<i32>(u_input.e, u_input.e, -7487i)))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(130f, var_1.b), vec2<f32>(var_1.b, 956f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, var_1.b) - vec2<f32>(-519f, -135f)), vec2<f32>(var_1.b, -470f)))) + vec2<f32>(var_1.b, -2197f)), true));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec2<bool>) -> Struct_5 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1784f, arg_1.b)))) * _wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(false, arg_2.b.a.x, arg_3.x, true), abs(arg_1.d.wx)))) - _wgslsmith_f_op_vec2_f32(func_3(select(vec4<bool>(arg_3.x, false, true, arg_2.b.c.x), !vec4<bool>(arg_1.c.x, false, arg_3.x, arg_3.x), true), firstTrailingBit(vec2<u32>(31154u, arg_2.a.b.b.x)) << (_wgslsmith_div_vec2_u32(arg_1.d.yz, arg_1.d.wx) % vec2<u32>(32u))))), u_input.e, Struct_1(vec2<bool>(!(arg_3.x & arg_1.a.x), all(arg_1.a)), arg_2.b.b, vec3<bool>(all(!arg_2.b.c.xx), arg_2.b.c.x, all(vec4<bool>(arg_3.x, arg_3.x, arg_1.c.x, false)) == true), vec4<u32>(firstTrailingBit(4829u), _wgslsmith_mult_u32(reverseBits(u_input.d.x), arg_1.d.x << (arg_1.d.x % 32u)), max(~1u, ~15420u), (2223u | u_input.a) ^ ~30081u)));
    global0 = array<vec3<bool>, 5>();
    var var_1 = vec4<u32>(var_0.c.d.x, 24797u, 1u, 23775u);
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(arg_2.b.b - -444f), _wgslsmith_f_op_vec2_f32(func_3(select(!vec4<bool>(false, true, true, arg_2.b.c.x), !vec4<bool>(true, true, arg_2.b.a.x, true), true), max(~arg_1.d.wy, select(vec2<u32>(var_1.x, 11273u), vec2<u32>(0u, 51673u), vec2<bool>(true, true))))).x, -1021f)));
    let var_3 = !vec2<bool>(true, any(arg_3));
    return var_0;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_5) -> Struct_1 {
    let var_0 = Struct_2(~_wgslsmith_dot_vec2_u32(max(_wgslsmith_div_vec2_u32(arg_2.b.b.xw, arg_1.d.b.b.wx), min(vec2<u32>(1u, 39911u), arg_2.b.b.zz)), ~vec2<u32>(17420u, arg_1.a.b.a)), func_2(u_input.e, arg_1.b, arg_1, arg_1.b.c.yy).c.d);
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x * arg_1.b.b))), _wgslsmith_div_f32(arg_3.c.b, -824f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1022f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_3.a.x, -309f, arg_1.b.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_3.a.x, arg_1.b.b)))) + _wgslsmith_f_op_f32(step(arg_1.b.b, _wgslsmith_f_op_f32(arg_1.b.b - 870f))))));
    let var_2 = true;
    let var_3 = 2001f;
    var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(select(1116f, _wgslsmith_div_f32(939f, 1193f), !func_2(u_input.e, arg_3.c, arg_1, vec2<bool>(arg_0, false)).c.a.x)), _wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(ceil(arg_3.a.x))))));
    return arg_1.b;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = all(!select(vec4<bool>(true, arg_0.b == -136f, !arg_0.a.x, arg_0.d.x <= 0u), select(vec4<bool>(true, arg_0.c.x, false, arg_0.c.x), vec4<bool>(false, false, true, false), arg_0.a.x), !vec4<bool>(arg_0.a.x, arg_0.c.x, arg_0.a.x, true)));
    var_0 = false;
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.e, u_input.e), firstTrailingBit(vec2<i32>(50411i, u_input.e))), -(~45589i)), -21405i), 1i, -8289i);
    var var_2 = arg_0.c.x;
    var var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.d.x, 0u, abs(u_input.d.x | u_input.b) & 54777u, arg_0.d.x), arg_0.d);
    return Struct_2(~_wgslsmith_clamp_u32(~(var_3.x << (7518u % 32u)), 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.d.x, 36805u), vec2<u32>(arg_0.d.x, 16270u) | vec2<u32>(arg_0.d.x, 26306u))), countOneBits(u_input.d));
}

fn func_6(arg_0: Struct_2) -> Struct_3 {
    global0 = array<vec3<bool>, 5>();
    global0 = array<vec3<bool>, 5>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(607f, -208f, -947f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1167f))), 662f, func_2(~u_input.e, Struct_1(vec2<bool>(false, false), 1408f, vec3<bool>(true, false, false), vec4<u32>(74351u, 21281u, 0u, 72202u)), Struct_4(Struct_3(vec2<u32>(77697u, 1u), arg_0), Struct_1(vec2<bool>(false, false), -1241f, global0[_wgslsmith_index_u32(u_input.c, 5u)], u_input.d), 0u, Struct_3(arg_0.b.zw, Struct_2(4294967295u, vec4<u32>(3718u, 1u, arg_0.b.x, 1u)))), vec2<bool>(true, true)).c.b)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-512f * -1395f))), 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1254f + 534f)))))));
    var var_1 = func_4(false, Struct_4(Struct_3(vec2<u32>(func_5(Struct_1(vec2<bool>(false, true), var_0.x, vec3<bool>(true, false, true), u_input.d)).b.x, u_input.a), arg_0), func_4(!func_4(true, Struct_4(Struct_3(vec2<u32>(arg_0.b.x, 0u), arg_0), Struct_1(vec2<bool>(true, true), var_0.x, global0[_wgslsmith_index_u32(0u, 5u)], u_input.d), u_input.a, Struct_3(vec2<u32>(arg_0.b.x, 1u), Struct_2(4294967295u, vec4<u32>(u_input.a, 76969u, 37460u, 1u)))), Struct_3(vec2<u32>(0u, arg_0.b.x), Struct_2(0u, vec4<u32>(1u, 24283u, 0u, 4294967295u))), Struct_5(var_0.yy, 0i, Struct_1(vec2<bool>(false, true), var_0.x, global0[_wgslsmith_index_u32(4294967295u, 5u)], vec4<u32>(arg_0.a, arg_0.a, u_input.a, 4294967295u)))).a.x, Struct_4(Struct_3(vec2<u32>(0u, arg_0.b.x), arg_0), func_2(-11173i, Struct_1(vec2<bool>(true, false), -137f, global0[_wgslsmith_index_u32(u_input.b, 5u)], u_input.d), Struct_4(Struct_3(vec2<u32>(4562u, 1u), Struct_2(u_input.c, u_input.d)), Struct_1(vec2<bool>(true, false), 827f, vec3<bool>(false, true, false), arg_0.b), u_input.c, Struct_3(u_input.d.zw, arg_0)), vec2<bool>(false, false)).c, _wgslsmith_clamp_u32(32270u, 84763u, 20689u), Struct_3(vec2<u32>(4294967295u, 14172u), arg_0)), Struct_3(max(vec2<u32>(arg_0.a, arg_0.b.x), arg_0.b.xy), arg_0), Struct_5(var_0.yy, ~(-62458i), func_4(true, Struct_4(Struct_3(vec2<u32>(u_input.c, 0u), Struct_2(33888u, vec4<u32>(u_input.d.x, u_input.b, 0u, u_input.b))), Struct_1(vec2<bool>(true, true), -387f, vec3<bool>(false, true, true), arg_0.b), arg_0.a, Struct_3(vec2<u32>(u_input.d.x, 0u), Struct_2(u_input.d.x, u_input.d))), Struct_3(arg_0.b.wx, arg_0), Struct_5(var_0.zy, u_input.e, Struct_1(vec2<bool>(true, true), -822f, vec3<bool>(true, true, true), arg_0.b))))), max(func_5(func_2(u_input.e, Struct_1(vec2<bool>(true, false), var_0.x, vec3<bool>(false, true, true), vec4<u32>(arg_0.b.x, arg_0.a, arg_0.a, 4294967295u)), Struct_4(Struct_3(arg_0.b.xx, Struct_2(0u, arg_0.b)), Struct_1(vec2<bool>(true, true), 1000f, vec3<bool>(true, false, false), u_input.d), 1473u, Struct_3(vec2<u32>(u_input.c, u_input.b), Struct_2(118794u, u_input.d))), vec2<bool>(true, false)).c).b.x, _wgslsmith_add_u32(~arg_0.b.x, countOneBits(4294967295u))), Struct_3(func_5(func_4(false, Struct_4(Struct_3(vec2<u32>(16374u, 23388u), Struct_2(u_input.b, vec4<u32>(47398u, 0u, 4294967295u, arg_0.b.x))), Struct_1(vec2<bool>(true, false), var_0.x, vec3<bool>(false, false, true), arg_0.b), arg_0.b.x, Struct_3(vec2<u32>(57578u, 28343u), Struct_2(arg_0.b.x, arg_0.b))), Struct_3(vec2<u32>(u_input.d.x, 128731u), Struct_2(17426u, arg_0.b)), Struct_5(var_0.xy, -1i, Struct_1(vec2<bool>(false, true), var_0.x, vec3<bool>(true, false, false), u_input.d)))).b.zy, func_5(Struct_1(vec2<bool>(true, true), 903f, vec3<bool>(false, false, true), vec4<u32>(u_input.c, 0u, 1u, u_input.d.x))))), Struct_3(~max(u_input.d.yx, vec2<u32>(5630u, arg_0.a)) << (arg_0.b.xx % vec2<u32>(32u)), func_5(Struct_1(vec2<bool>(true, true), var_0.x, vec3<bool>(false, false, false), vec4<u32>(u_input.a, u_input.c, arg_0.a, u_input.a)))), func_2(u_input.e, Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), vec3<bool>(true, false, true), _wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a, u_input.b, 1u, 0u), arg_0.b, false), _wgslsmith_div_vec4_u32(u_input.d, arg_0.b))), Struct_4(Struct_3(~arg_0.b.zx, arg_0), func_4(true, Struct_4(Struct_3(u_input.d.zx, Struct_2(arg_0.b.x, vec4<u32>(0u, 0u, u_input.d.x, 4294967295u))), Struct_1(vec2<bool>(false, false), 778f, vec3<bool>(true, false, false), vec4<u32>(arg_0.a, u_input.b, 42129u, 49209u)), 0u, Struct_3(u_input.d.zx, arg_0)), Struct_3(u_input.d.yw, arg_0), func_2(1i, Struct_1(vec2<bool>(false, false), var_0.x, vec3<bool>(false, true, false), vec4<u32>(53890u, u_input.b, arg_0.a, 4294967295u)), Struct_4(Struct_3(arg_0.b.zx, arg_0), Struct_1(vec2<bool>(true, false), 456f, vec3<bool>(true, false, true), vec4<u32>(104028u, 4294967295u, arg_0.b.x, 73511u)), u_input.b, Struct_3(arg_0.b.xz, Struct_2(u_input.c, vec4<u32>(arg_0.b.x, 4294967295u, 18626u, 19630u)))), vec2<bool>(true, true))), ~func_5(Struct_1(vec2<bool>(false, true), -543f, global0[_wgslsmith_index_u32(54249u, 5u)], vec4<u32>(arg_0.a, 1u, 47458u, 1u))).a, Struct_3(u_input.d.zx, func_5(Struct_1(vec2<bool>(false, false), 416f, global0[_wgslsmith_index_u32(arg_0.a, 5u)], u_input.d)))), func_4(any(vec2<bool>(false, false)) && any(vec4<bool>(false, false, false, false)), Struct_4(Struct_3(u_input.d.zy, Struct_2(arg_0.b.x, arg_0.b)), func_2(u_input.e, Struct_1(vec2<bool>(true, false), -811f, vec3<bool>(true, false, false), vec4<u32>(u_input.d.x, u_input.d.x, 70233u, u_input.c)), Struct_4(Struct_3(arg_0.b.ww, Struct_2(1769u, vec4<u32>(49605u, 62120u, 46995u, 29747u))), Struct_1(vec2<bool>(false, true), -969f, global0[_wgslsmith_index_u32(4294967295u, 5u)], vec4<u32>(u_input.a, u_input.c, 44576u, 93812u)), 4294967295u, Struct_3(u_input.d.zz, Struct_2(arg_0.a, u_input.d))), vec2<bool>(true, true)).c, _wgslsmith_mod_u32(6742u, 34209u), Struct_3(arg_0.b.xz, arg_0)), Struct_3(reverseBits(vec2<u32>(u_input.a, u_input.b)), Struct_2(0u, vec4<u32>(u_input.a, u_input.d.x, 23668u, 17706u))), Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2050f, 401f)), _wgslsmith_sub_i32(-2147483647i, -6310i), Struct_1(vec2<bool>(true, false), -293f, vec3<bool>(true, true, true), vec4<u32>(28073u, 20233u, u_input.a, 0u)))).c.zx)).c.x;
    let var_2 = _wgslsmith_add_i32(max(-6536i, u_input.e), u_input.e);
    return Struct_3(vec2<u32>(_wgslsmith_mult_u32(arg_0.b.x, u_input.b), ~(~_wgslsmith_div_u32(1u, 1u))), Struct_2(~abs(u_input.c), ~countOneBits(vec4<u32>(37845u, 0u, 1u, arg_0.b.x))));
}

fn func_1() -> f32 {
    let var_0 = Struct_4(func_6(func_5(func_4(true, Struct_4(Struct_3(vec2<u32>(u_input.a, 21375u), Struct_2(u_input.c, vec4<u32>(4294967295u, u_input.a, u_input.d.x, u_input.b))), Struct_1(vec2<bool>(true, false), 925f, vec3<bool>(false, false, true), vec4<u32>(u_input.a, 4294967295u, u_input.b, 1u)), 61983u, Struct_3(u_input.d.yw, Struct_2(2340u, vec4<u32>(u_input.b, 67771u, u_input.d.x, 4294967295u)))), Struct_3(u_input.d.xw, Struct_2(13283u, u_input.d)), func_2(u_input.e, Struct_1(vec2<bool>(false, false), 601f, vec3<bool>(false, false, false), vec4<u32>(u_input.b, u_input.d.x, u_input.d.x, u_input.c)), Struct_4(Struct_3(u_input.d.yy, Struct_2(4294967295u, u_input.d)), Struct_1(vec2<bool>(false, true), -1000f, vec3<bool>(false, true, true), vec4<u32>(67276u, 0u, u_input.d.x, u_input.d.x)), 44786u, Struct_3(u_input.d.zw, Struct_2(u_input.a, vec4<u32>(4294967295u, 0u, 5698u, 12377u)))), vec2<bool>(true, false))))), func_2(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.e, 21254i, 56765i), vec3<i32>(2147483647i, u_input.e, 2147483647i), true), abs(vec3<i32>(-1i, u_input.e, -1i)), vec3<i32>(u_input.e, u_input.e, 2147483647i) >> (vec3<u32>(0u, 0u, 10238u) % vec3<u32>(32u))), abs(vec3<i32>(1i, -1i, 0i))), Struct_1(func_2(-u_input.e, Struct_1(vec2<bool>(false, true), -1000f, vec3<bool>(true, true, false), vec4<u32>(u_input.c, 1u, u_input.b, 21658u)), Struct_4(Struct_3(u_input.d.wx, Struct_2(0u, u_input.d)), Struct_1(vec2<bool>(true, true), 1021f, vec3<bool>(true, true, false), vec4<u32>(u_input.c, 1u, 0u, 1u)), u_input.c, Struct_3(u_input.d.xx, Struct_2(0u, u_input.d))), vec2<bool>(true, true)).c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(false, true, true, true), vec2<u32>(u_input.a, u_input.d.x))).x), global0[_wgslsmith_index_u32(u_input.b, 5u)], ~_wgslsmith_sub_vec4_u32(vec4<u32>(70143u, 22180u, 4294967295u, 87916u), u_input.d)), Struct_4(Struct_3(vec2<u32>(0u, 36080u), func_6(Struct_2(105086u, vec4<u32>(u_input.c, u_input.a, 4294967295u, 4294967295u))).b), func_4(true, Struct_4(Struct_3(vec2<u32>(1u, 11371u), Struct_2(0u, u_input.d)), Struct_1(vec2<bool>(false, false), 992f, global0[_wgslsmith_index_u32(1u, 5u)], u_input.d), 4294967295u, Struct_3(u_input.d.yy, Struct_2(u_input.d.x, u_input.d))), func_6(Struct_2(u_input.b, vec4<u32>(47385u, 1u, u_input.c, 4294967295u))), func_2(u_input.e, Struct_1(vec2<bool>(true, false), 387f, global0[_wgslsmith_index_u32(1u, 5u)], u_input.d), Struct_4(Struct_3(u_input.d.xz, Struct_2(u_input.c, u_input.d)), Struct_1(vec2<bool>(true, false), 1000f, vec3<bool>(false, false, false), vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a)), u_input.a, Struct_3(vec2<u32>(u_input.d.x, u_input.b), Struct_2(u_input.d.x, vec4<u32>(0u, u_input.d.x, 46876u, u_input.a)))), vec2<bool>(false, true))), _wgslsmith_sub_u32(u_input.a, u_input.a), Struct_3(select(u_input.d.xy, vec2<u32>(1u, u_input.c), vec2<bool>(true, true)), Struct_2(1u, u_input.d))), !vec2<bool>(true, all(vec2<bool>(false, true)))).c, 1u, func_6(Struct_2(78918u >> (u_input.a % 32u), (u_input.d | u_input.d) << (~u_input.d % vec4<u32>(32u)))));
    let var_1 = select(!select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, false, var_0.b.a.x, false), !vec4<bool>(var_0.b.c.x, false, true, var_0.b.c.x)), select(vec4<bool>(false, false, false, var_0.b.c.x), select(vec4<bool>(true, false, var_0.b.c.x, false), vec4<bool>(var_0.b.a.x, var_0.b.a.x, var_0.b.c.x, true), vec4<bool>(var_0.b.c.x, true, true, var_0.b.c.x)), vec4<bool>(true, false, false, var_0.b.c.x)), true), select(!vec4<bool>(var_0.b.a.x, all(vec3<bool>(var_0.b.c.x, var_0.b.a.x, var_0.b.a.x)), var_0.b.c.x, any(vec4<bool>(true, var_0.b.a.x, var_0.b.a.x, false))), vec4<bool>(!var_0.b.c.x != var_0.b.a.x, var_0.b.c.x, !var_0.b.a.x, !all(vec2<bool>(false, var_0.b.c.x))), any(select(select(vec4<bool>(false, var_0.b.a.x, var_0.b.c.x, true), vec4<bool>(var_0.b.c.x, var_0.b.a.x, true, true), vec4<bool>(var_0.b.c.x, var_0.b.c.x, var_0.b.a.x, var_0.b.a.x)), select(vec4<bool>(var_0.b.c.x, var_0.b.a.x, var_0.b.a.x, false), vec4<bool>(false, false, false, false), true), true))), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(110f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -920f), 203f))), var_0.b.b));
    var var_3 = vec4<f32>(func_4(any(!select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_0.b.a.x, true, true), var_0.b.c)), Struct_4(var_0.d, func_2(1i, Struct_1(vec2<bool>(var_1.x, true), var_0.b.b, global0[_wgslsmith_index_u32(4294967295u, 5u)], var_0.d.b.b), var_0, vec2<bool>(true, true)).c, ~u_input.a, func_6(var_0.a.b)), var_0.d, Struct_5(var_2.zx, u_input.e, var_0.b)).b, -388f, 1826f, func_4(true != select(false, false, !var_0.b.a.x), var_0, Struct_3(~u_input.d.zz ^ ~var_0.d.b.b.zw, var_0.a.b), func_2(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.e, u_input.e), vec4<i32>(-27730i, 2147483647i, -1i, -2147483647i))), var_0.b, var_0, var_1.yz)).b);
    let var_4 = select(vec4<bool>(false, var_1.x, var_2.x != var_0.b.b, var_1.x), var_1, !select(select(vec4<bool>(var_1.x, var_0.b.a.x, false, var_1.x), var_1, all(var_0.b.c)), !var_1, any(!vec3<bool>(var_0.b.a.x, var_1.x, true))));
    return -1223f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1078f + _wgslsmith_f_op_f32(func_1())) - 1386f)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1241f)) - -1000f)))), 1134f);
    global0 = array<vec3<bool>, 5>();
    global0 = array<vec3<bool>, 5>();
    global0 = array<vec3<bool>, 5>();
    var var_1 = func_4(true, Struct_4(Struct_3(vec2<u32>(u_input.b << (u_input.b % 32u), ~u_input.d.x), func_5(Struct_1(vec2<bool>(false, false), var_0.x, vec3<bool>(false, true, true), u_input.d))), func_2(-2147483647i, func_2(~12237i, Struct_1(vec2<bool>(false, true), var_0.x, vec3<bool>(true, true, true), vec4<u32>(u_input.a, 75u, u_input.d.x, u_input.b)), Struct_4(Struct_3(vec2<u32>(u_input.b, u_input.d.x), Struct_2(u_input.b, vec4<u32>(96611u, u_input.d.x, 15517u, 30186u))), Struct_1(vec2<bool>(false, true), 855f, global0[_wgslsmith_index_u32(33823u, 5u)], u_input.d), 13893u, Struct_3(u_input.d.zz, Struct_2(u_input.c, vec4<u32>(u_input.d.x, 12200u, u_input.c, u_input.b)))), vec2<bool>(true, false)).c, Struct_4(func_6(Struct_2(36769u, u_input.d)), Struct_1(vec2<bool>(false, false), var_0.x, vec3<bool>(false, true, false), vec4<u32>(8459u, 32206u, u_input.a, u_input.c)), 32452u, Struct_3(vec2<u32>(54246u, 1u), Struct_2(0u, vec4<u32>(1u, 32631u, 4294967295u, u_input.d.x)))), vec2<bool>(true, true)).c, u_input.b, Struct_3(u_input.d.zw, func_6(Struct_2(u_input.c, u_input.d)).b)), Struct_3(func_6(func_5(Struct_1(vec2<bool>(false, true), var_0.x, vec3<bool>(false, false, true), u_input.d))).b.b.xx >> (vec2<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c, u_input.b, u_input.b), u_input.d)) % vec2<u32>(32u)), func_5(Struct_1(vec2<bool>(false, false), _wgslsmith_f_op_f32(trunc(-1198f)), vec3<bool>(true, false, false), vec4<u32>(8616u, u_input.a, u_input.c, 29332u)))), func_2(abs(-_wgslsmith_dot_vec2_i32(vec2<i32>(-30217i, u_input.e), vec2<i32>(-26959i, u_input.e))), func_4(true, Struct_4(func_6(Struct_2(4294967295u, vec4<u32>(4914u, u_input.b, 18142u, u_input.c))), Struct_1(vec2<bool>(true, true), var_0.x, global0[_wgslsmith_index_u32(u_input.d.x, 5u)], vec4<u32>(4294967295u, 0u, u_input.d.x, 4294967295u)), _wgslsmith_mod_u32(61140u, 49953u), Struct_3(vec2<u32>(81649u, 1u), Struct_2(u_input.c, u_input.d))), func_6(Struct_2(0u, u_input.d)), Struct_5(_wgslsmith_f_op_vec2_f32(var_0.yy + var_0.wx), u_input.e | -123846i, Struct_1(vec2<bool>(true, false), 941f, vec3<bool>(true, true, false), u_input.d))), Struct_4(Struct_3(_wgslsmith_clamp_vec2_u32(u_input.d.yw, vec2<u32>(u_input.d.x, u_input.c), u_input.d.zy), func_6(Struct_2(35987u, vec4<u32>(u_input.d.x, 60346u, 4294967295u, 67743u))).b), func_4(true, Struct_4(Struct_3(u_input.d.zx, Struct_2(u_input.a, vec4<u32>(25453u, u_input.a, 4294967295u, 71538u))), Struct_1(vec2<bool>(false, false), var_0.x, global0[_wgslsmith_index_u32(u_input.a, 5u)], u_input.d), u_input.c, Struct_3(u_input.d.yz, Struct_2(u_input.b, u_input.d))), Struct_3(vec2<u32>(1u, 4294967295u), Struct_2(4294967295u, u_input.d)), Struct_5(vec2<f32>(1368f, 739f), -1i, Struct_1(vec2<bool>(false, false), -922f, global0[_wgslsmith_index_u32(u_input.b, 5u)], u_input.d))), ~(~u_input.d.x), func_6(func_5(Struct_1(vec2<bool>(false, true), 207f, global0[_wgslsmith_index_u32(0u, 5u)], vec4<u32>(48356u, 33152u, u_input.d.x, u_input.c))))), !vec2<bool>(true, all(vec2<bool>(true, true))))).c.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.e), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(626f - var_0.x) + _wgslsmith_div_f32(var_0.x, -756f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-735f, 781f)) - -1235f), true)))));
}

