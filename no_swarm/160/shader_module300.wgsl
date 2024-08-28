struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-231f - 1851f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-317f * _wgslsmith_f_op_f32(f32(-1f) * -916f))))), _wgslsmith_f_op_f32(-1298f + -189f));
    var var_1 = _wgslsmith_f_op_f32(step(var_0.x, -1590f));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)));
    global0 = array<Struct_1, 15>();
    let var_2 = countOneBits(vec3<u32>(~(~55402u), ~_wgslsmith_add_u32(~u_input.c.x, u_input.c.x), (u_input.a.x ^ ~26843u) & 4294967295u));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-var_0.x), -622f >= var_0.x)), -1157f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(577f - arg_2.x), arg_1.x, 481f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-996f, arg_2.x, -584f, arg_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-889f, arg_2.x, 712f, arg_2.x))), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_1.x, -888f, 1000f)))));
    var var_1 = arg_2.x;
    var_1 = -1726f;
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    return select(vec3<bool>(!(arg_0.b <= abs(12910u)), select(any(vec2<bool>(true, true)), ~arg_0.b > _wgslsmith_sub_u32(arg_0.b, u_input.a.x), arg_2.x <= arg_2.x), (-2147483647i > _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.b))) == any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true))), vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) >= 371f, select(select(false, true, true), true, true) && true), vec3<bool>(true, _wgslsmith_div_u32(abs(13333u), 54606u) < _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u) >> (u_input.a.zz % vec2<u32>(32u)), reverseBits(u_input.a.wy)), select(u_input.b, _wgslsmith_add_i32(arg_0.a, arg_0.a), true) <= _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.b, 1i, u_input.b), _wgslsmith_clamp_i32(arg_0.a, u_input.b, -1i))));
}

fn func_4(arg_0: vec3<bool>) -> u32 {
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    var var_0 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, -1i, -2147483647i & (u_input.b << (1u % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(u_input.b, u_input.b) >> (vec2<u32>(u_input.a.x, 29831u) % vec2<u32>(32u)))), abs(~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 85095i, u_input.b, u_input.b), firstLeadingBit(vec4<i32>(u_input.b, 2147483647i, -53481i, 2147483647i)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(2147483647i, u_input.b, u_input.b, 1i)), -vec4<i32>(-13467i, 0i, u_input.b, u_input.b) >> (~vec4<u32>(u_input.a.x, u_input.c.x, 0u, 24286u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(0i, u_input.b), firstLeadingBit(17931i), -2147483647i, u_input.b | 79260i), ~(~vec4<i32>(u_input.b, u_input.b, -71875i, u_input.b))), -vec4<i32>(abs(u_input.b), _wgslsmith_div_i32(u_input.b, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-10190i, u_input.b, u_input.b), vec3<i32>(10791i, u_input.b, u_input.b)), ~(-2147483647i))));
    var_0 = firstLeadingBit(abs(vec4<i32>(_wgslsmith_add_i32(-17759i, firstLeadingBit(1i)), countOneBits(u_input.b), var_0.x, -(~var_0.x))));
    let var_1 = var_0.zyx;
    return 0u;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: vec4<u32>) -> i32 {
    var var_0 = func_4(vec3<bool>(!select(true, any(vec4<bool>(true, false, true, false)), arg_3.x == 14368u), !any(func_2(Struct_1(arg_1.x, 27858u), vec2<f32>(-510f, -504f), vec2<f32>(arg_0, arg_0))), ~(~39919u) > u_input.c.x));
    let var_1 = _wgslsmith_dot_vec3_u32(~arg_3.wyx, _wgslsmith_add_vec3_u32(u_input.a.xww, ~(u_input.c >> (arg_3.zxz % vec3<u32>(32u))) << ((~arg_3.www ^ firstLeadingBit(arg_3.xwz)) % vec3<u32>(32u))));
    let var_2 = abs(-vec4<i32>(arg_2.x, -40645i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, 62378i), arg_1.xzx)), -1i));
    var var_3 = (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 0u, 4294967295u, 1u), _wgslsmith_mod_vec4_u32(arg_3, arg_3))) >> (_wgslsmith_mod_u32(31905u, arg_3.x) % 32u)) >> (u_input.c.x % 32u);
    var var_4 = any(vec2<bool>(true, (_wgslsmith_f_op_f32(-arg_0) >= arg_0) == any(func_2(global0[_wgslsmith_index_u32(92901u, 15u)], vec2<f32>(arg_0, 1753f), vec2<f32>(1216f, 1630f)).xy)));
    return ~arg_2.x;
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: i32, arg_3: u32) -> Struct_2 {
    let var_0 = 0i;
    let var_1 = _wgslsmith_div_u32(_wgslsmith_add_u32(~arg_3, _wgslsmith_dot_vec2_u32(max(abs(u_input.a.zy), u_input.a.ww), u_input.c.yz)), arg_3);
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    var var_2 = select(abs(vec3<i32>(_wgslsmith_clamp_i32(1i, var_0, -1i), var_0, abs(func_1(126f, vec4<i32>(u_input.b, u_input.b, arg_2, arg_2), vec2<i32>(arg_2, -2147483647i), vec4<u32>(12116u, var_1, var_1, var_1))))), ~(-vec3<i32>(-31015i, u_input.b, var_0) >> (vec3<u32>(arg_3, 1u, var_1) % vec3<u32>(32u))) & firstLeadingBit(countOneBits(~vec3<i32>(arg_2, 1i, var_0))), !(select(true, !arg_1.x, select(false, arg_0, arg_0)) && true));
    return Struct_2(Struct_1(func_1(-167f, vec4<i32>(firstLeadingBit(var_2.x), _wgslsmith_sub_i32(12007i, var_0), var_2.x, u_input.b), ~vec2<i32>(-2147483647i, u_input.b), _wgslsmith_sub_vec4_u32(u_input.a, _wgslsmith_mod_vec4_u32(u_input.a, u_input.a))), _wgslsmith_dot_vec2_u32(~vec2<u32>(33156u, 60041u) | ~u_input.c.zy, reverseBits(u_input.c.yx))), arg_0, vec3<bool>(true || !(1u < u_input.c.x), !arg_1.x, !(!(arg_0 && arg_0))), u_input.a.zwx, vec2<bool>(_wgslsmith_div_f32(-142f, _wgslsmith_f_op_f32(sign(-302f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(221f, -1864f))), true));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    var var_0 = 28671u;
    global0 = array<Struct_1, 15>();
    var_0 = _wgslsmith_add_u32(~_wgslsmith_div_u32(reverseBits(arg_0.a), max(arg_3.a.b, ~u_input.c.x)), 79684u);
    let var_1 = Struct_5(Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.x, arg_1.x, arg_1.x))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.x, arg_1.x, arg_1.x)))))), ~18911u, arg_0), _wgslsmith_f_op_f32(min(-1144f, _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(1274f * _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x))))))), ~_wgslsmith_div_u32(~_wgslsmith_mod_u32(32484u, 30495u), _wgslsmith_add_u32(_wgslsmith_sub_u32(40907u, arg_3.d.x), ~46246u)));
    var var_2 = Struct_3(var_1.a.b, Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.a.c.b.d.zx, u_input.c.zx), 15u)], any(vec2<bool>(arg_0.b.c.x, all(vec4<bool>(arg_3.b, false, arg_0.b.b, true)))), arg_3.c, u_input.c, !vec2<bool>(true, !arg_3.b)));
    return Struct_3(~_wgslsmith_dot_vec3_u32(countOneBits(max(arg_0.b.d, vec3<u32>(u_input.a.x, 41663u, arg_0.b.a.b))), firstTrailingBit(var_2.b.d << (u_input.a.yyx % vec3<u32>(32u)))), func_5(func_2(global0[_wgslsmith_index_u32(3707u, 15u)], vec2<f32>(-140f, _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(3127f, 708f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a.x, -1587f) + vec2<f32>(590f, arg_1.x)))).x, vec2<bool>(all(select(vec4<bool>(true, arg_0.b.b, true, arg_3.e.x), vec4<bool>(arg_3.e.x, true, true, var_1.a.c.b.e.x), vec4<bool>(true, var_1.a.c.b.b, arg_3.c.x, arg_3.e.x))), var_1.a.c.b.c.x), u_input.b, ~min(abs(1u), _wgslsmith_mult_u32(35415u, var_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 4294967295u < u_input.a.x), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))));
    let var_1 = func_6(Struct_3(u_input.a.x, Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.c.x, reverseBits(1u)), 15u)], var_0, vec3<bool>(!var_0, false, true || var_0), ~_wgslsmith_mod_vec3_u32(u_input.a.zxz, vec3<u32>(1u, 18480u, 32113u)), !select(vec2<bool>(false, false), vec2<bool>(true, false), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(627f, 1161f)))), ~u_input.b, func_5(u_input.a.x == u_input.a.x, vec2<bool>(true, _wgslsmith_mod_i32(16784i, u_input.b) <= u_input.b), func_1(_wgslsmith_f_op_f32(f32(-1f) * -256f), min(vec4<i32>(u_input.b, u_input.b, 1i, u_input.b), ~vec4<i32>(u_input.b, u_input.b, 10594i, 6268i)), vec2<i32>(u_input.b, ~u_input.b), (u_input.a >> (vec4<u32>(1u, 1u, 13578u, u_input.c.x) % vec4<u32>(32u))) | u_input.a), _wgslsmith_clamp_u32(firstTrailingBit(select(4294967295u, 1u, var_0)), u_input.a.x, 0u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(701f, -680f))))))));
    let var_3 = all(vec2<bool>(true, (~var_1.a | select(1404u, 4294967295u, false)) > 4294967295u));
    let var_4 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(vec2<i32>(var_4.a.a, u_input.b | u_input.b) >> (_wgslsmith_clamp_vec2_u32(var_4.d.yy, var_1.b.d.xy, abs(var_4.d.yx)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(-min(vec2<i32>(-13361i, 1i), vec2<i32>(var_1.b.a.a, 17054i)), countOneBits(vec2<i32>(-1i, var_4.a.a)))), firstTrailingBit(~select(vec3<u32>(7744u, u_input.c.x, u_input.c.x), vec3<u32>(var_1.a, 4294967295u, 11060u), true)) << (vec3<u32>(1u, min(_wgslsmith_div_u32(u_input.a.x, var_1.a), _wgslsmith_dot_vec2_u32(var_4.d.yx, var_1.b.d.yx)), ~(~22199u)) % vec3<u32>(32u)), func_1(var_2.x, max(vec4<i32>(var_1.b.a.a, firstLeadingBit(var_1.b.a.a), select(1i, var_1.b.a.a, false), -var_4.a.a), vec4<i32>(-2147483647i, ~var_1.b.a.a, _wgslsmith_clamp_i32(var_1.b.a.a, var_4.a.a, 1i), 42566i)), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, var_1.b.a.a), vec2<i32>(3484i, 0i)), -vec2<i32>(1i, u_input.b)) >> (vec2<u32>(37773u, ~4294967295u) % vec2<u32>(32u)), u_input.a));
}

