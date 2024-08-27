struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<f32>(694f, -1000f, -320f, -1419f), 1i, false, -5996i), Struct_1(vec4<f32>(-2243f, -856f, -1374f, -1124f), 0i, true, 1i), Struct_1(vec4<f32>(609f, 600f, 1138f, -605f), 2147483647i, false, 5220i), Struct_1(vec4<f32>(1604f, -2142f, -163f, -1000f), i32(-2147483648), true, 2147483647i));

var<private> global1: array<Struct_3, 21>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: Struct_5) -> vec4<u32> {
    global0 = array<Struct_1, 4>();
    return vec4<u32>(1u >> (_wgslsmith_mult_u32(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_div_u32(u_input.c.x, 5675u)), ~(~arg_1.x)) % 32u), _wgslsmith_sub_u32(arg_1.x, _wgslsmith_clamp_u32(abs(_wgslsmith_sub_u32(4294967295u, u_input.d)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(39236u, arg_1.x), 1913u), (arg_1.x & 0u) & _wgslsmith_add_u32(49067u, arg_1.x))), 4294967295u, 12854u);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> Struct_4 {
    global0 = array<Struct_1, 4>();
    global1 = array<Struct_3, 21>();
    let var_0 = -42978i <= arg_1.b.x;
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(31102u, u_input.e.x, 39873u, u_input.e.x))), _wgslsmith_add_vec4_u32(func_3(_wgslsmith_div_f32(1156f, 1000f), vec3<u32>(u_input.d, u_input.c.x, 76750u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-921f, 1145f, 145f) + vec3<f32>(-1835f, -515f, 718f)), Struct_5(arg_1.a.x)), ~func_3(203f, vec3<u32>(93138u, 0u, u_input.c.x), vec3<f32>(-1365f, 1222f, -282f), Struct_5(true)))), 4u)];
    global1 = array<Struct_3, 21>();
    return arg_0;
}

fn func_4(arg_0: Struct_4) -> vec4<u32> {
    var var_0 = (~(-23325i | u_input.b) & u_input.b) << (29484u % 32u);
    var_0 = arg_0.b.x;
    global1 = array<Struct_3, 21>();
    var var_1 = -vec4<i32>(max(-10768i, -(~arg_0.b.x)), _wgslsmith_mult_i32(2147483647i, -u_input.b), 2147483647i, _wgslsmith_dot_vec3_i32(arg_0.b ^ arg_0.b, -firstTrailingBit(arg_0.b)));
    var_0 = arg_0.b.x;
    return abs(firstTrailingBit(select(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 0u, u_input.c.x), vec4<u32>(115489u, 1u, u_input.d, u_input.a), vec4<u32>(u_input.c.x, 15824u, 4294967295u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, 58186u, u_input.e.x, u_input.e.x), vec4<u32>(81288u, 1u, 87321u, u_input.e.x))), countOneBits(~vec4<u32>(u_input.d, 21224u, u_input.c.x, 1u)), true)));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_4) -> Struct_5 {
    global0 = array<Struct_1, 4>();
    global1 = array<Struct_3, 21>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1364f, -1153f, 489f, -911f)))), _wgslsmith_clamp_i32(select(-arg_3.b.x, _wgslsmith_add_i32(1i, arg_3.b.x), all(arg_3.a.xy)), arg_0, -abs(2147483647i)), true, -arg_0 & _wgslsmith_add_i32(-arg_1, u_input.b)));
    global1 = array<Struct_3, 21>();
    global0 = array<Struct_1, 4>();
    return Struct_5(false);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_5) -> Struct_5 {
    let var_0 = select(select(!vec4<bool>(func_5(u_input.b, 40064i, vec4<u32>(u_input.a, u_input.d, 0u, u_input.a), Struct_4(vec3<bool>(true, true, false), vec3<i32>(arg_0.d, arg_0.b, arg_0.d))).a, arg_0.c && false, arg_1.a, !arg_0.c), !select(vec4<bool>(true, true, arg_0.c, arg_1.a), select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(false, arg_0.c, true, arg_1.a), vec4<bool>(true, false, arg_1.a, arg_0.c)), arg_0.c), false), !vec4<bool>(func_5(u_input.b, arg_0.b, ~vec4<u32>(u_input.e.x, u_input.d, 64392u, u_input.e.x), Struct_4(vec3<bool>(true, arg_0.c, arg_1.a), vec3<i32>(arg_0.b, 2147483647i, arg_0.b))).a, any(select(vec2<bool>(arg_1.a, arg_0.c), vec2<bool>(false, true), true)), func_2(func_2(Struct_4(vec3<bool>(true, arg_1.a, arg_1.a), vec3<i32>(arg_0.d, -63099i, u_input.b)), Struct_4(vec3<bool>(arg_0.c, true, false), vec3<i32>(-1i, arg_0.b, 26829i))), func_2(Struct_4(vec3<bool>(true, arg_0.c, true), vec3<i32>(-2147483647i, arg_0.b, arg_0.b)), Struct_4(vec3<bool>(true, false, false), vec3<i32>(15763i, -2147483647i, u_input.b)))).a.x, arg_1.a || !arg_1.a), select(select(select(select(vec4<bool>(false, arg_0.c, false, arg_1.a), vec4<bool>(true, arg_1.a, true, arg_1.a), false), select(vec4<bool>(arg_0.c, false, true, false), vec4<bool>(false, false, arg_1.a, false), vec4<bool>(true, arg_0.c, arg_1.a, true)), !vec4<bool>(arg_0.c, true, arg_0.c, false)), vec4<bool>(true, u_input.e.x >= 0u, select(arg_1.a, false, false), arg_0.c), !(!vec4<bool>(true, arg_1.a, arg_0.c, arg_1.a))), select(!vec4<bool>(arg_1.a, arg_0.c, false, arg_1.a), select(vec4<bool>(false, arg_0.c, arg_1.a, true), select(vec4<bool>(arg_0.c, arg_0.c, arg_1.a, true), vec4<bool>(true, arg_1.a, true, arg_1.a), vec4<bool>(arg_0.c, arg_1.a, arg_0.c, arg_1.a)), true), true), false));
    let var_1 = select(vec2<bool>(any(vec2<bool>(var_0.x, arg_0.c)), any(select(select(vec3<bool>(arg_1.a, false, false), vec3<bool>(arg_1.a, true, var_0.x), false), vec3<bool>(false, arg_1.a, var_0.x), !var_0.wzw))), var_0.yw, arg_1.a);
    let var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(max(u_input.c.zy, vec2<u32>(~11165u, u_input.e.x << (u_input.d % 32u))), vec2<u32>(0u, 1u | ~u_input.e.x)), _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(9423u, 57817u), vec2<u32>(u_input.c.x, 1u)), u_input.c.x)), _wgslsmith_dot_vec2_u32(~(~u_input.c.xz), u_input.e.zz)));
    global0 = array<Struct_1, 4>();
    var var_3 = -534f;
    return Struct_5(!(abs(-u_input.b) < 53861i));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: f32) -> Struct_5 {
    var var_0 = countOneBits(u_input.c.zx);
    let var_1 = max(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(0i, 2147483647i) << (firstLeadingBit(vec2<u32>(u_input.c.x, 4294967295u)) % vec2<u32>(32u))), -firstLeadingBit(vec2<i32>(1i, u_input.b))), ~select(_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(1i, 1i)), vec2<i32>(9263i, -1i)), min(vec2<i32>(21707i, 16838i), vec2<i32>(-68900i, u_input.b)), !all(vec4<bool>(false, false, false, arg_1))));
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    return func_6(global0[_wgslsmith_index_u32(var_0.x, 4u)], func_5(u_input.b, u_input.b, ~func_4(func_2(Struct_4(vec3<bool>(false, arg_1, true), vec3<i32>(var_1.x, -1i, -2147483647i)), Struct_4(vec3<bool>(arg_1, arg_1, true), vec3<i32>(1i, 4408i, u_input.b)))), func_2(Struct_4(vec3<bool>(true, arg_1, arg_1), ~vec3<i32>(-2147483647i, u_input.b, var_1.x)), func_2(func_2(Struct_4(vec3<bool>(arg_1, arg_1, true), vec3<i32>(1i, u_input.b, -29661i)), Struct_4(vec3<bool>(false, arg_1, false), vec3<i32>(u_input.b, 0i, u_input.b))), Struct_4(vec3<bool>(true, false, arg_1), vec3<i32>(var_1.x, var_1.x, 17717i))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1319f, _wgslsmith_f_op_f32(1323f - 1585f)))) - _wgslsmith_f_op_f32(1742f + 1f)), all(!vec4<bool>(all(vec3<bool>(true, false, true)), select(true, true, false), true, all(vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2086f * _wgslsmith_f_op_f32(floor(-1144f))) + -746f));
    var var_2 = _wgslsmith_mult_u32(~(~countOneBits(u_input.c.x)), 4294967295u) ^ ((_wgslsmith_div_u32(u_input.c.x & u_input.d, countOneBits(2987u)) ^ 1u) & ~0u);
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-489f, 517f, 1247f, -166f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1898f, -2247f, -414f, 1683f) * vec4<f32>(1000f, -1000f, 1309f, -942f)))))));
    var var_5 = !(!func_2(func_2(func_2(Struct_4(vec3<bool>(var_1.a, var_3, var_3), vec3<i32>(u_input.b, 38929i, u_input.b)), Struct_4(vec3<bool>(false, var_3, var_1.a), vec3<i32>(1i, -28296i, -58622i))), func_2(Struct_4(vec3<bool>(var_1.a, var_3, true), vec3<i32>(2147483647i, u_input.b, -1i)), Struct_4(vec3<bool>(var_1.a, var_1.a, true), vec3<i32>(9227i, 0i, u_input.b)))), Struct_4(!vec3<bool>(false, var_1.a, var_1.a), select(vec3<i32>(u_input.b, u_input.b, 2108i), vec3<i32>(u_input.b, -2147483647i, 1i), vec3<bool>(var_1.a, true, true)))).a.xy);
    var_5 = vec2<bool>(!(var_1.a || (_wgslsmith_f_op_f32(1000f + 797f) < var_4.x)), u_input.b < -1i);
    let var_6 = _wgslsmith_mod_vec3_u32(func_4(func_2(Struct_4(!vec3<bool>(var_1.a, true, var_5.x), select(vec3<i32>(24563i, -2147483647i, u_input.b), vec3<i32>(u_input.b, 0i, 35972i), vec3<bool>(false, true, true))), func_2(func_2(Struct_4(vec3<bool>(var_1.a, true, var_1.a), vec3<i32>(u_input.b, u_input.b, -12491i)), Struct_4(vec3<bool>(var_1.a, var_3, var_5.x), vec3<i32>(u_input.b, u_input.b, 2147483647i))), func_2(Struct_4(vec3<bool>(false, true, var_5.x), vec3<i32>(2147483647i, u_input.b, u_input.b)), Struct_4(vec3<bool>(true, false, true), vec3<i32>(-1i, 2147483647i, -87109i)))))).zzz, _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~abs(u_input.c), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 111911u, u_input.e.x), vec4<u32>(u_input.c.x, 65980u, u_input.a, u_input.c.x)), 57795u, _wgslsmith_clamp_u32(76707u, u_input.a, u_input.e.x))), ~u_input.e));
    global0 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(abs(abs(u_input.a)), ~u_input.a, 1u), var_4.yx, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4.x))), -516f)), _wgslsmith_dot_vec4_i32(abs(firstLeadingBit(vec4<i32>(37306i, u_input.b, u_input.b, u_input.b))), vec4<i32>(u_input.b & -u_input.b, firstTrailingBit(select(u_input.b, u_input.b, true)), _wgslsmith_clamp_i32(10398i, -74639i, u_input.b) >> (~u_input.e.x % 32u), _wgslsmith_sub_i32(i32(-1i) * -1i, 10370i))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-2385f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1144f, _wgslsmith_f_op_f32(602f - var_4.x))), -956f));
}

