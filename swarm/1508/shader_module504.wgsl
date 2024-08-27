struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -32141i;

var<private> global1: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(-31432i, -28931i, -14444i), vec3<i32>(0i, 58399i, 0i), vec3<i32>(5839i, 1i, 2147483647i), vec3<i32>(i32(-2147483648), 15065i, 59263i), vec3<i32>(2147483647i, i32(-2147483648), -37575i), vec3<i32>(-1i, -13542i, 1i), vec3<i32>(-1i, i32(-2147483648), 7308i), vec3<i32>(-21124i, 18752i, 28668i), vec3<i32>(0i, 11112i, -1i), vec3<i32>(i32(-2147483648), 20714i, -1i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(1i, 48295i, 6081i), vec3<i32>(3653i, 21114i, 6087i));

var<private> global2: vec3<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> f32 {
    global0 = ~select(0i, ~firstTrailingBit(1i), true);
    let var_0 = vec4<u32>(abs(~firstLeadingBit(4294967295u)), 45536u, abs(0u), 0u) & select(~abs(~u_input.b), ~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(arg_1, 17361u, 4294967295u, 51148u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 31140u, 4486u, 14358u), u_input.b)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))), vec4<bool>(all(vec4<bool>(false, true, true, true)), true, arg_0.x <= 604f, u_input.e == 1u)));
    global1 = array<vec3<i32>, 13>();
    var var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    global1 = array<vec3<i32>, 13>();
    return _wgslsmith_f_op_f32(-628f * _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(round(-1146f))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> vec4<f32> {
    let var_0 = Struct_1(arg_0.b, select(global2.x, reverseBits(abs(-18714i)), countOneBits(~1u) != max(arg_1.c, 1u)));
    var var_1 = !any(!(!arg_1.b.yy));
    let var_2 = 0u;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1267f - 991f) + -2134f) + arg_1.a.x) + arg_1.a.x));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1185f * arg_1.a.x))) + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -1000f, arg_1.a.x, arg_1.a.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-993f, arg_1.a.x, 397f, -106f) * vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, 475f))), 14536u))), _wgslsmith_f_op_f32(-667f - arg_1.a.x));
    return vec4<f32>(arg_1.a.x, 1000f, arg_1.a.x, arg_1.a.x);
}

fn func_1(arg_0: vec2<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(u_input.d.x, global2.x), Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1474f, 965f, 955f) * vec3<f32>(1353f, 920f, -1096f)))), vec3<bool>(arg_0.x, false, arg_0.x), u_input.a))));
    global2 = vec3<i32>(-2147483647i, min(-(~(-25982i)), -abs(u_input.c.x << (0u % 32u))), global2.x >> (4294967295u % 32u));
    global1 = array<vec3<i32>, 13>();
    var var_1 = -2147483647i;
    global0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(max(2147483647i, _wgslsmith_clamp_i32(-29668i, -39438i, 0i)), 1i, -2147483647i), countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(u_input.e & 19743u, abs(26279u), any(vec4<bool>(true, false, false, false))), u_input.a), 13u)]));
    return select(select(select(!vec3<bool>(arg_0.x, true, arg_0.x), select(select(vec3<bool>(arg_0.x, true, false), vec3<bool>(arg_0.x, arg_0.x, false), arg_0.x), !vec3<bool>(false, arg_0.x, false), select(vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true), false)), arg_0.x), !select(select(vec3<bool>(arg_0.x, true, false), vec3<bool>(true, arg_0.x, false), vec3<bool>(true, arg_0.x, arg_0.x)), !vec3<bool>(false, true, arg_0.x), vec3<bool>(true, true, true)), !(var_0.x <= var_0.x)), vec3<bool>(!(!(arg_0.x & true)), arg_0.x && false, (_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(1u, 7433u, u_input.e, u_input.e)) ^ abs(u_input.e)) <= min(u_input.e, 4294967295u)), !select(vec3<bool>(any(vec2<bool>(arg_0.x, true)), false, false), vec3<bool>(true, arg_0.x, arg_0.x), all(!vec4<bool>(true, arg_0.x, arg_0.x, false))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = vec4<bool>(arg_0.c.x, !(arg_0.c.x || arg_2.x), true, true);
    var var_1 = arg_2.x;
    var var_2 = Struct_3(vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-301f, arg_0.d.x, -1003f, arg_0.d.x))) + _wgslsmith_f_op_vec4_f32(func_2(Struct_1(arg_1.a, -19890i), Struct_3(vec3<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x), var_0.zyx, arg_0.a.x)))), ~(~arg_3.x))), 1378f), var_0.zyw, _wgslsmith_mod_u32(u_input.e, ~4294967295u));
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(arg_0.a.ywy, vec3<u32>(0u, 4294967295u, 16821u)), u_input.b.xzw), u_input.b.yzx), ~(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.e, 37921u, 30668u), 1338u)));
    let var_4 = Struct_1(abs(~(~countOneBits(-2147483647i))), -_wgslsmith_add_i32(global2.x, u_input.c.x) >> (max(arg_0.b, abs(var_2.c) << (firstTrailingBit(var_3) % 32u)) % 32u));
    return Struct_2(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 35020u), _wgslsmith_dot_vec3_u32(arg_0.a.yyw, vec3<u32>(arg_3.x, 0u, 59887u)), arg_0.b, var_2.c & var_3)), vec4<u32>(firstLeadingBit(43913u >> (u_input.e % 32u)), _wgslsmith_mod_u32(arg_3.x, ~var_3), abs(~var_3), ~var_3)), 23975u, !vec4<bool>(false, true | arg_2.x, (i32(-1i) * -2147483647i) > reverseBits(global2.x), !arg_0.c.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.d.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2029f + 1257f))), _wgslsmith_f_op_f32(-var_2.a.x)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, arg_1.d.x, 1319f, -152f) + vec4<f32>(arg_1.d.x, 282f, arg_0.d.x, arg_0.d.x)) + vec4<f32>(arg_1.d.x, arg_0.d.x, -1658f, arg_1.d.x))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(-1202f - arg_0.d.x), _wgslsmith_f_op_f32(sign(arg_0.d.x)), -317f)));
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.d.x, 1068f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), -1667f)), _wgslsmith_f_op_f32(-arg_1.d.x)), arg_1.c.wyw, countOneBits(_wgslsmith_div_u32(~reverseBits(arg_0.a.x), 11073u >> (0u % 32u))));
    var var_2 = func_4(func_4(Struct_2(vec4<u32>(var_1.c, var_1.c, 0u, arg_0.a.x) >> (~u_input.b % vec4<u32>(32u)), arg_1.b, vec4<bool>(4294967295u == var_1.c, true && var_1.b.x, var_1.b.x, any(arg_0.c.xxw)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_0.d, var_0.zy)) + _wgslsmith_f_op_vec2_f32(-var_0.yx))), Struct_1(abs(-37956i), abs(_wgslsmith_clamp_i32(-1i, arg_2, 1i))), var_1.b, abs(vec3<u32>(~arg_1.a.x, select(u_input.e, 0u, arg_0.c.x), arg_1.b & 4294967295u))), Struct_1(-8289i, _wgslsmith_mod_i32(14100i, ~_wgslsmith_add_i32(u_input.c.x, -2147483647i))), !var_1.b, ~(~(~vec3<u32>(arg_1.a.x, u_input.e, 27759u)) & _wgslsmith_mult_vec3_u32(~u_input.b.xzy, min(vec3<u32>(0u, 25784u, u_input.e), u_input.b.wxy))));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.d.x))));
    let var_4 = var_0.zwy;
    return Struct_1((global2.x & ~u_input.d.x) << (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.b.xz) | _wgslsmith_clamp_vec2_u32(vec2<u32>(2704u, var_2.b), var_2.a.yx, vec2<u32>(4294967295u, var_1.c)), min(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.b, 14866u), arg_1.a.xy), var_2.a.xx | vec2<u32>(0u, var_2.a.x))) % 32u), _wgslsmith_add_i32(u_input.d.x, -48438i));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = !select(func_1(vec2<bool>(true, select(arg_1, true, arg_1))).yz, !select(vec2<bool>(true, true), !vec2<bool>(false, arg_1), arg_3.x >= 2147483647i), !arg_1);
    let var_1 = countOneBits(~max(vec3<u32>(firstTrailingBit(u_input.b.x), u_input.b.x, ~25389u), ~_wgslsmith_sub_vec3_u32(u_input.b.zyw, vec3<u32>(30830u, u_input.a, 56986u))));
    var var_2 = func_4(func_4(func_4(Struct_2(u_input.b ^ u_input.b, 45912u, !vec4<bool>(arg_1, var_0.x, var_0.x, arg_1), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2037f, 513f), vec2<f32>(-784f, -654f)))), Struct_1(abs(arg_3.x), -1i), !(!vec3<bool>(arg_1, false, var_0.x)), firstTrailingBit(vec3<u32>(35312u, 1u, 4294967295u) >> (vec3<u32>(39759u, var_1.x, 1u) % vec3<u32>(32u)))), arg_2, func_1(func_1(vec2<bool>(true, arg_1)).zz), ~(~select(var_1, vec3<u32>(1u, 32600u, u_input.b.x), arg_1))), func_5(Struct_2(~(~vec4<u32>(61660u, 3742u, 25317u, 27037u)), 4294967295u, vec4<bool>(arg_1 & false, all(vec3<bool>(var_0.x, false, false)), true, false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-259f, -520f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(644f, -890f) - vec2<f32>(-213f, -912f)))), func_4(func_4(func_4(Struct_2(vec4<u32>(13976u, var_1.x, 1u, 85278u), var_1.x, vec4<bool>(arg_1, var_0.x, false, var_0.x), vec2<f32>(-306f, 722f)), Struct_1(54409i, 43116i), vec3<bool>(true, true, true), vec3<u32>(0u, u_input.b.x, var_1.x)), Struct_1(1i, 0i), vec3<bool>(var_0.x, false, arg_1), _wgslsmith_mult_vec3_u32(var_1, vec3<u32>(37431u, 15137u, var_1.x))), Struct_1(25194i >> (0u % 32u), global2.x), vec3<bool>(true, true, var_1.x == 84830u), _wgslsmith_mult_vec3_u32(abs(u_input.b.yxy), ~vec3<u32>(u_input.e, u_input.b.x, var_1.x))), _wgslsmith_sub_i32(~u_input.d.x, arg_2.a)), !select(!vec3<bool>(arg_1, false, var_0.x), !func_1(vec2<bool>(true, false)), select(!vec3<bool>(var_0.x, false, arg_1), vec3<bool>(true, true, true), func_1(var_0))), vec3<u32>(var_1.x, ~55713u, 32670u));
    global1 = array<vec3<i32>, 13>();
    let var_3 = Struct_2(countOneBits(u_input.b), ~667u, func_4(Struct_2(vec4<u32>(~0u, 42543u, _wgslsmith_dot_vec3_u32(u_input.b.yzw, var_2.a.zyz), u_input.a), _wgslsmith_div_u32(var_2.a.x, 1u), func_4(Struct_2(vec4<u32>(u_input.b.x, var_1.x, u_input.a, 4294967295u), 1u, vec4<bool>(true, false, var_2.c.x, true), vec2<f32>(-1009f, -295f)), func_5(Struct_2(u_input.b, var_1.x, vec4<bool>(var_2.c.x, false, false, false), var_2.d), Struct_2(u_input.b, var_2.b, vec4<bool>(true, true, var_0.x, true), vec2<f32>(var_2.d.x, -539f)), 45864i), !vec3<bool>(true, arg_1, var_2.c.x), u_input.b.yxz << (vec3<u32>(1u, 4294967295u, u_input.a) % vec3<u32>(32u))).c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1487f, -243f))), _wgslsmith_f_op_vec2_f32(round(var_2.d)))), func_5(Struct_2(vec4<u32>(u_input.e, 154u, u_input.e, var_1.x), ~60065u, vec4<bool>(arg_1, false, true, var_0.x), _wgslsmith_f_op_vec2_f32(-var_2.d)), func_4(Struct_2(vec4<u32>(var_1.x, u_input.a, 4294967295u, var_1.x), 1u, var_2.c, vec2<f32>(var_2.d.x, var_2.d.x)), Struct_1(global2.x, -1i), select(var_2.c.wyz, vec3<bool>(var_2.c.x, true, var_0.x), vec3<bool>(false, true, var_0.x)), u_input.b.wzw), arg_2.b), !vec3<bool>(!var_0.x, var_2.c.x, var_2.c.x), _wgslsmith_clamp_vec3_u32(var_1, firstLeadingBit(var_1), ~(~vec3<u32>(var_1.x, 1u, var_2.b)))).c, var_2.d);
    return func_4(var_3, Struct_1(_wgslsmith_add_i32(func_5(func_4(Struct_2(vec4<u32>(4294967295u, var_1.x, var_1.x, u_input.b.x), var_3.b, var_3.c, var_3.d), arg_2, vec3<bool>(var_0.x, var_0.x, arg_1), var_2.a.zzy), var_3, -40954i).a, _wgslsmith_div_i32(~u_input.c.x, arg_3.x)), -31557i), var_3.c.xyx, var_3.a.ywz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_4(Struct_2(select(u_input.b, vec4<u32>(47450u, u_input.b.x, 1u, 4294967295u), true), u_input.e, select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false), _wgslsmith_div_vec2_f32(vec2<f32>(450f, 150f), vec2<f32>(-203f, -533f))), Struct_1(_wgslsmith_div_i32(0i, -7794i), _wgslsmith_div_i32(u_input.c.x, 2147483647i)), func_1(vec2<bool>(true, true)), ~_wgslsmith_add_vec3_u32(u_input.b.wzz, vec3<u32>(u_input.b.x, 1u, 1u))), Struct_2(u_input.b & vec4<u32>(u_input.e, 0u, 19980u, 41891u), 1u, vec4<bool>(select(false, false, false), true, all(vec4<bool>(false, true, true, false)), all(vec3<bool>(true, false, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1595f, 557f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-349f, -219f), vec2<f32>(1421f, 1025f))))), u_input.c.x), true & (((u_input.c.x | -20754i) <= -8454i) && true), Struct_1(-49537i, abs(-17927i ^ ~global2.x)), ~(-reverseBits(min(vec2<i32>(global2.x, global2.x), vec2<i32>(u_input.d.x, u_input.d.x)))));
    var var_1 = !var_0.c.xxy;
    let var_2 = func_5(Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x | var_0.b, firstLeadingBit(69534u), 1u, ~54364u), vec4<u32>(~var_0.a.x, abs(20545u), 1u, 0u)), 1u ^ ~func_4(Struct_2(vec4<u32>(var_0.b, u_input.a, 4294967295u, u_input.e), 4294967295u, vec4<bool>(false, var_1.x, false, var_1.x), vec2<f32>(var_0.d.x, var_0.d.x)), Struct_1(-1i, -2147483647i), vec3<bool>(var_1.x, var_0.c.x, false), vec3<u32>(var_0.a.x, 4294967295u, u_input.e)).a.x, vec4<bool>(!(!var_0.c.x), true, true, false == !var_0.c.x), var_0.d), func_6(Struct_1(~firstTrailingBit(0i), u_input.d.x >> (0u % 32u)), !any(select(vec2<bool>(false, true), vec2<bool>(var_0.c.x, var_1.x), var_0.c.x)), Struct_1(_wgslsmith_sub_i32(-37602i, reverseBits(u_input.c.x)), abs(-u_input.d.x)), ~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, 2147483647i, global2.x, 7707i), vec4<i32>(global2.x, -24144i, u_input.d.x, global2.x)), -29517i)), global2.x);
    global1 = array<vec3<i32>, 13>();
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1106f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.d.x)) + var_0.d.x))));
    var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.d.x * var_0.d.x), -1736f));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.d.x)), -405f) + var_0.d);
    global1 = array<vec3<i32>, 13>();
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-952f, _wgslsmith_f_op_f32(f32(-1f) * -1090f), var_0.d.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_clamp_i32(-1i, 17916i, var_2.b)), 323f, firstTrailingBit(u_input.d));
}

