struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(true, true, false, false, false, true, true, false, true, false, false, true, false, false, false, true, false, true, false);

var<private> global1: u32 = 4294967295u;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: u32) -> f32 {
    var var_0 = 288f;
    var var_1 = Struct_1(_wgslsmith_div_f32(457f, _wgslsmith_f_op_f32(f32(-1f) * -1029f)), vec2<i32>(-11736i, _wgslsmith_dot_vec4_i32(max(select(vec4<i32>(arg_1.x, arg_0.a.b.x, arg_0.a.b.x, 2147483647i), vec4<i32>(24481i, u_input.a, -2147483647i, u_input.a), global0[_wgslsmith_index_u32(arg_2, 19u)]), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, 943i, -42693i, arg_0.a.b.x), vec4<i32>(arg_1.x, u_input.a, 42598i, 1i))), abs(reverseBits(vec4<i32>(1i, arg_1.x, u_input.a, 2147483647i))))), select(select(!select(arg_0.a.c, vec3<bool>(global0[_wgslsmith_index_u32(arg_2, 19u)], arg_0.a.c.x, false), arg_0.a.c), select(!vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.a.d, 19u)], global2.x), !vec3<bool>(global0[_wgslsmith_index_u32(17085u, 19u)], global2.x, global0[_wgslsmith_index_u32(5169u, 19u)]), true), !global0[_wgslsmith_index_u32(u_input.b.x, 19u)] || (11276i == arg_0.b)), arg_0.a.c, !vec3<bool>(arg_0.a.c.x, true, any(arg_0.a.c.zy))), arg_0.a.d);
    let var_2 = Struct_3(Struct_1(arg_0.a.a, ~(~vec2<i32>(-23940i, u_input.a)), arg_0.a.c, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b.zzx, min(u_input.b.xyy, vec3<u32>(arg_0.a.d, 1u, 4294967295u))), u_input.b.xwz | _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, arg_2), vec3<u32>(6259u, 19273u, 27646u)))), _wgslsmith_dot_vec2_i32(arg_1, abs(~vec2<i32>(arg_1.x, arg_0.a.b.x))));
    global1 = _wgslsmith_mult_u32(30798u, 4294967295u ^ var_2.a.d);
    var var_3 = _wgslsmith_div_vec3_u32(firstTrailingBit(u_input.b.xww), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d, 1u, 102040u), u_input.b.wzw), _wgslsmith_mod_u32(99734u, var_2.a.d), ~3780u) & vec3<u32>(_wgslsmith_sub_u32(0u, 54971u << (arg_2 % 32u)), min(~var_2.a.d, ~0u), ~u_input.b.x));
    return arg_0.a.a;
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-873f - _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(arg_0.x, vec2<i32>(u_input.a, u_input.a), vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 19u)]), 0u), u_input.a), vec2<i32>(u_input.a, u_input.a), 4294967295u))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), abs(vec2<i32>(41528i, -1i)), vec3<bool>(all(vec2<bool>(global2.x, false)), true, true), firstTrailingBit(min(_wgslsmith_div_u32(u_input.b.x, 81564u), u_input.b.x))), 23522i);
    let var_1 = var_0.a.c.zx;
    global0 = array<bool, 19>();
    let var_2 = var_0.a;
    var_0 = Struct_3(Struct_1(-751f, firstTrailingBit(vec2<i32>(reverseBits(u_input.a), countOneBits(var_0.b))), !var_2.c, 4294967295u), ~(var_2.b.x << (_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.a.d, var_2.d), u_input.b.x) % 32u)));
    return Struct_3(Struct_1(arg_0.x, var_2.b, !vec3<bool>(true, false, !var_2.c.x), abs(~1u)), _wgslsmith_mod_i32(-36425i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -var_0.a.b.x, _wgslsmith_div_i32(17866i, var_2.b.x)), countOneBits(~vec3<i32>(u_input.a, -1i, var_0.a.b.x)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: bool) -> Struct_3 {
    let var_0 = true;
    let var_1 = u_input.b;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -610f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.a))), -324f)), 832f, _wgslsmith_f_op_f32(-arg_1.a.a));
    global0 = array<bool, 19>();
    global2 = select(vec2<bool>(arg_1.a.c.x, all(!(!vec4<bool>(true, false, global2.x, arg_1.a.c.x)))), arg_1.a.c.xz, !(_wgslsmith_div_u32(107882u, ~u_input.b.x) >= 1u));
    return func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a, 748f, arg_1.a.a, 1000f)) - vec4<f32>(-111f, 1209f, var_2.x, arg_1.a.a)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a.a, arg_1.a.a, arg_1.a.a, -210f))) * _wgslsmith_div_vec4_f32(var_2, var_2))) * vec4<f32>(arg_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a.a))), 1363f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -893f), -373f)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global2 = select(arg_0.a.c.zz, !arg_0.a.c.yz, func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a, -1270f, 225f, 968f) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_2, -350f, arg_2, arg_0.a.a), vec4<f32>(1316f, arg_3.a, 277f, -231f)))))).a.c.x);
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.a.a, 560f, -766f)))), vec3<f32>(func_2(vec4<f32>(arg_2, arg_1.a.a, arg_0.a.a, 1483f)).a.a, _wgslsmith_f_op_f32(step(arg_3.a, arg_2)), _wgslsmith_f_op_f32(exp2(arg_2))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-325f, 1305f, arg_0.a.a, -1796f))).a.c))));
    return func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 243f, arg_2, arg_1.b.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1679f, arg_0.a.a, 1475f, -1000f) - vec4<f32>(arg_0.a.a, 671f, -654f, 705f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.a, -2203f, var_0.x, arg_0.a.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-973f, arg_1.b.a, 644f, -383f)))))).a;
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.a), -1035f), _wgslsmith_f_op_f32(ceil(2159f)), arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(846f, -220f))) - arg_0.a.a)));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-747f, arg_1.a.x, arg_1.a.x, 982f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-320f, -801f, var_0.x, 1064f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a) - arg_1.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.a + var_0.x), _wgslsmith_f_op_f32(floor(var_0.x)), -1253f, _wgslsmith_f_op_f32(f32(-1f) * -1276f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_4(max(~vec4<u32>(u_input.b.x, 66486u, 1u, u_input.b.x), select(vec4<u32>(19310u, u_input.b.x, u_input.b.x, arg_0.a.d), u_input.b, vec4<bool>(arg_0.b.c.x, arg_0.b.c.x, true, true))), Struct_3(arg_0.a, max(-2147483647i, arg_0.a.b.x)), global2.x).a.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-184f - _wgslsmith_f_op_f32(-arg_0.a.a)))), -(~(select(arg_0.b.b, vec2<i32>(arg_0.b.b.x, -37520i), false) ^ arg_0.b.b)), !arg_0.c, _wgslsmith_add_u32(arg_0.b.d, arg_0.a.d));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1729f * -785f)), var_1.a, func_5(Struct_3(Struct_1(157f, arg_2.zz, arg_0.a.c, 24394u), arg_2.x), Struct_4(Struct_1(arg_1.a.x, vec2<i32>(1i, -15403i), var_1.c, 4294967295u), arg_0.a, vec3<bool>(true, global2.x, true)), 421f, arg_0.a).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1026f - arg_0.b.a), _wgslsmith_f_op_f32(var_0.x + -1452f))) - arg_1.a));
    var var_3 = Struct_1(-497f, -arg_0.b.b, vec3<bool>(~(~var_1.d) <= (var_1.d | (6409u >> (u_input.b.x % 32u))), _wgslsmith_mod_u32(var_1.d, 21411u) < 38047u, false), select(57128u, arg_0.b.d, func_5(Struct_3(Struct_1(124f, vec2<i32>(arg_2.x, arg_2.x), arg_0.c, 7661u), firstTrailingBit(2147483647i)), Struct_4(Struct_1(arg_0.a.a, arg_0.a.b, arg_0.b.c, 19205u), func_5(Struct_3(arg_0.a, arg_2.x), arg_0, var_2.a.x, Struct_1(-314f, vec2<i32>(arg_0.a.b.x, arg_2.x), var_1.c, 22205u)), vec3<bool>(true, global2.x, true)), func_4(u_input.b, func_4(vec4<u32>(4294967295u, arg_0.a.d, 25091u, u_input.b.x), Struct_3(Struct_1(var_1.a, vec2<i32>(var_1.b.x, u_input.a), var_1.c, 4294967295u), var_1.b.x), false), true).a.a, var_1).c.x));
    return arg_0.b;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(u_input.a, abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1.a.b, arg_1.a.b), arg_1.a.b)) | abs(-select(-1i, arg_1.b, global2.x)));
    var var_1 = Struct_3(Struct_1(arg_0.x, countOneBits(-arg_1.a.b) >> (vec2<u32>(arg_1.a.d, ~arg_1.a.d) % vec2<u32>(32u)), vec3<bool>(true, false, !(u_input.b.x == 20425u)), ~1u), u_input.a);
    var var_2 = ~u_input.b;
    global1 = countOneBits(firstTrailingBit(_wgslsmith_clamp_u32(var_2.x, 1u, ~(~arg_1.a.d))));
    let var_3 = ~(~vec4<u32>(max(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec3_u32(countOneBits(u_input.b.yzz), var_2.yyx), ~abs(4294967295u), _wgslsmith_div_u32(arg_1.a.d, 78105u)));
    return func_6(Struct_4(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-691f - 411f))), abs(vec2<i32>(0i, var_1.b)), !vec3<bool>(true, arg_1.a.c.x, var_1.a.c.x), firstTrailingBit(_wgslsmith_dot_vec2_u32(var_3.zy, vec2<u32>(var_2.x, 18131u)))), func_5(func_4(~u_input.b, func_2(vec4<f32>(605f, arg_0.x, arg_0.x, -621f)), 387f > arg_1.a.a), Struct_4(Struct_1(arg_1.a.a, vec2<i32>(-46221i, 1i), vec3<bool>(true, false, true), var_1.a.d), func_4(var_3, Struct_3(var_1.a, var_1.b), arg_1.a.c.x).a, !arg_1.a.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(1000f + var_1.a.a))), var_1.a), select(select(func_2(vec4<f32>(arg_1.a.a, 889f, arg_0.x, -1048f)).a.c, vec3<bool>(var_1.a.c.x, false, false), !vec3<bool>(arg_1.a.c.x, global0[_wgslsmith_index_u32(38017u, 19u)], var_1.a.c.x)), !vec3<bool>(arg_1.a.c.x, global2.x, true), vec3<bool>(false, true, !global0[_wgslsmith_index_u32(1u, 19u)]))), Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_1.a.a, var_1.a.a, -1670f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -640f, arg_0.x, 1594f)))))), vec4<i32>(-34613i, _wgslsmith_mod_i32(-var_1.a.b.x, var_1.a.b.x), 1i, ~var_1.b));
}

fn func_7(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-795f - _wgslsmith_f_op_f32(f32(-1f) * -1427f))) * 210f), _wgslsmith_div_f32(arg_1.a.a, func_4(u_input.b, func_4(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), Struct_3(Struct_1(arg_1.a.a, arg_1.a.b, vec3<bool>(false, true, global2.x), 4294967295u), arg_1.a.b.x), arg_1.a.c.x && true), arg_1.a.c.x).a.a), arg_1.a.a, 1010f);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 788f, 528f, var_0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a, -1000f, 1516f, var_0.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_1.a.a, 2939f, -1379f) - vec4<f32>(-1034f, 1324f, 893f, 2450f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-107f, arg_1.a.a, arg_1.a.a, arg_1.a.a) + vec4<f32>(var_0.x, arg_1.a.a, -289f, 355f))))), vec4<f32>(arg_1.a.a, -1031f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1789f * var_0.x)) - var_0.x), func_1(var_0.wx, func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1605f, arg_1.a.a, arg_1.a.a, arg_1.a.a), vec4<f32>(var_0.x, -239f, 853f, 262f))))).a)));
    global3 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(firstTrailingBit(u_input.b.x), ~select(12090u, 39875u, global0[_wgslsmith_index_u32(~u_input.b.x, 19u)])), 19u)];
    let var_2 = !vec3<bool>(!select(false, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], arg_1.a.c.x), global0[_wgslsmith_index_u32(arg_1.a.d, 19u)], 2147483647i == _wgslsmith_mult_i32(arg_1.b ^ arg_1.a.b.x, 47071i));
    global1 = 4294967295u;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(i32(-1i) * -28335i, Struct_3(func_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-358f, 2745f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(292f, 1023f) * vec2<f32>(-641f, 1000f)))), Struct_3(Struct_1(-1005f, vec2<i32>(-31853i, -1i), vec3<bool>(true, false, true), 4294967295u), 21776i)), ((u_input.a & 2147483647i) >> (max(37836u, u_input.b.x) % 32u)) << (u_input.b.x % 32u)));
    let var_1 = Struct_3(var_0.a, 0i);
    var_0 = Struct_3(var_0.a, ~(-15107i));
    global2 = vec2<bool>(func_6(Struct_4(func_6(Struct_4(Struct_1(782f, var_1.a.b, vec3<bool>(var_1.a.c.x, true, global0[_wgslsmith_index_u32(13419u, 19u)]), u_input.b.x), Struct_1(var_1.a.a, var_0.a.b, var_0.a.c, var_0.a.d), vec3<bool>(var_0.a.c.x, false, var_1.a.c.x)), Struct_2(vec4<f32>(var_1.a.a, 2152f, var_1.a.a, 1302f)), vec4<i32>(u_input.a, 20080i, var_0.a.b.x, -1i) << (u_input.b % vec4<u32>(32u))), var_0.a, vec3<bool>(true, var_0.a.c.x || global0[_wgslsmith_index_u32(12067u, 19u)], global0[_wgslsmith_index_u32(12233u, 19u)] & true)), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.a, var_0.a.a, var_0.a.a, var_0.a.a), vec4<f32>(2262f, var_0.a.a, 1319f, 310f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-950f, var_1.a.a, -902f, var_1.a.a), vec4<f32>(var_0.a.a, var_1.a.a, var_1.a.a, var_1.a.a)))), abs(vec4<i32>(-1i, var_1.a.b.x, var_1.a.b.x, var_1.b) << (~u_input.b % vec4<u32>(32u)))).c.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.a.d, ~35204u), 19u)]);
    global2 = var_1.a.c.zx;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~var_1.a.d));
}

