struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec4<i32> {
    global1 = select(vec2<bool>(!(min(32565i, -10585i) <= (4654i >> (u_input.b.x % 32u))), !all(vec2<bool>(global1.x, global1.x))), !vec2<bool>(global1.x, global1.x & global1.x), true);
    let var_0 = Struct_3(~(~_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.c, 1u, u_input.b.x, 9482u) ^ vec4<u32>(u_input.c, 1u, 4294967295u, u_input.a.x))), true, Struct_2(Struct_1(abs(vec4<i32>(1i, 1i, 1i, 1i)), false, i32(-1i) * -59498i), Struct_1(reverseBits(firstLeadingBit(vec4<i32>(-1i, 0i, 57574i, 30734i))), false, -6965i), select(true, !all(vec2<bool>(false, global1.x)), true), Struct_1(reverseBits(vec4<i32>(55054i, 0i, 0i, -21919i)), any(vec3<bool>(global1.x, global1.x, true)), i32(-1i) * -2610i), abs(abs(u_input.a.xzx))), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1i) * -vec4<i32>(-18148i, -2147483647i, 2147483647i, -14070i)), any(select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(global1.x, false, global1.x, global1.x))), _wgslsmith_dot_vec2_i32(max(reverseBits(vec2<i32>(-39985i, -1i)), reverseBits(vec2<i32>(25948i, -1i))), reverseBits(vec2<i32>(-39002i, 0i)))));
    global0 = array<Struct_2, 10>();
    let var_1 = _wgslsmith_mod_u32(var_0.a.x, u_input.b.x);
    let var_2 = Struct_3(vec4<u32>(var_1, 0u, ~(~0u), abs(~1u)), false, var_0.c, Struct_1(~vec4<i32>(2147483647i, -1i, firstLeadingBit(47843i), 1i), global1.x, 0i));
    return _wgslsmith_div_vec4_i32(vec4<i32>(var_0.d.c, countOneBits(min(41306i, abs(var_2.d.a.x))), min(var_0.d.a.x, 0i) & var_0.d.a.x, _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_mod_i32(var_0.c.b.a.x, 12722i)), _wgslsmith_clamp_i32(38839i, -56269i << (var_2.c.e.x % 32u), _wgslsmith_dot_vec2_i32(var_0.d.a.wy, var_2.c.a.a.yw)))), ~firstLeadingBit(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.c.b.c, 4007i, var_2.d.c, -17461i), -vec4<i32>(var_0.c.d.c, var_2.c.d.a.x, -2147483647i, var_2.c.d.c))));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = Struct_4(arg_0, Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(5741i, -7506i, 6228i, 2147483647i), vec4<i32>(-1i, -18671i, 24693i, 1i)), _wgslsmith_mult_i32(1i, 1i << (u_input.b.x % 32u)), i32(-1i) * -1i, _wgslsmith_mod_i32(countOneBits(37082i), _wgslsmith_sub_i32(26624i, 11i))), global1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)), _wgslsmith_mod_vec2_i32(~vec2<i32>(30032i, -14328i), vec2<i32>(1i, 1i)))), vec3<i32>(_wgslsmith_dot_vec3_i32(~select(vec3<i32>(-1i, 1i, 0i), vec3<i32>(1i, 2147483647i, 0i), true), ~vec3<i32>(1i, -2147483647i, -38619i)), -1i >> (1u % 32u), 1i ^ (-31008i >> (_wgslsmith_dot_vec3_u32(u_input.a.zww, u_input.a.zyx) % 32u))), -_wgslsmith_mult_vec4_i32((vec4<i32>(10558i, -2147483647i, 30100i, -54100i) >> (vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.b.x) % vec4<u32>(32u))) << (~u_input.a % vec4<u32>(32u)), func_3()));
    global0 = array<Struct_2, 10>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 10u)];
    var var_2 = select(vec4<bool>(var_1.c, true || any(!vec2<bool>(var_0.b.b, true)), !var_1.b.b, global1.x), vec4<bool>(select(any(!vec3<bool>(global1.x, false, false)), _wgslsmith_f_op_f32(max(915f, -1681f)) >= arg_0, false), any(vec2<bool>(any(vec2<bool>(false, false)), global1.x)), false, !all(select(vec2<bool>(true, var_0.b.b), vec2<bool>(false, false), vec2<bool>(true, global1.x)))), any(select(!vec2<bool>(var_1.d.b, global1.x), !select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, false), vec2<bool>(var_1.c, var_1.d.b)), any(!vec4<bool>(var_1.b.b, false, global1.x, false)))));
    let var_3 = _wgslsmith_add_u32(~u_input.b.x, countOneBits(reverseBits(~41678u))) >> (~select(~abs(var_1.e.x), 100128u, _wgslsmith_f_op_f32(abs(arg_0)) > _wgslsmith_f_op_f32(2388f * var_0.a)) % 32u);
    return var_0.d.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = -vec3<i32>(_wgslsmith_mod_i32(1i, 1i), _wgslsmith_mult_i32(~0i, _wgslsmith_add_i32(1i, -27480i)), arg_0.a.x << (u_input.c % 32u));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-488f, _wgslsmith_f_op_f32(min(817f, arg_1.x))), -473f, arg_1.x, 1197f)), arg_1);
    var var_2 = _wgslsmith_f_op_f32(341f * var_1.x);
    var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-2147483647i, -1i), -var_0.x, var_0.x) & -(~arg_0.a.wwy), ~arg_0.a.xzw), vec3<i32>(_wgslsmith_add_i32(-arg_0.c, var_0.x), firstTrailingBit(-17185i) >> (1u % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~arg_0.a.ww, countOneBits(vec2<i32>(-2939i, 1i))), vec2<i32>(-30390i << (u_input.a.x % 32u), firstTrailingBit(-18247i)))));
    var_0 = vec3<i32>(arg_0.c, func_2(2360f), -4894i);
    return global0[_wgslsmith_index_u32(31756u, 10u)];
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> bool {
    let var_0 = !(!(!(!select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, true), false))));
    let var_1 = func_1(arg_1.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-901f - -579f), 1f, _wgslsmith_f_op_f32(round(-478f)), -427f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1031f, -1459f, 472f, -214f), vec4<f32>(-847f, 1775f, -1100f, -493f))))), vec4<bool>(!arg_1.b.b, false, select(false && global1.x, true, true), any(vec3<bool>(var_0.x, false, arg_1.b.b)))))).a.a.x;
    let var_2 = reverseBits(min(func_3().x, arg_1.b.c)) & -_wgslsmith_div_i32(8053i, _wgslsmith_mult_i32(-2797i >> (arg_1.e.x % 32u), arg_1.a.c >> (arg_1.e.x % 32u)));
    return true;
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = !func_1(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 0i, 0i, 2147483647i), vec4<i32>(2147483647i, -19384i, -1i, 2147483647i)), true, _wgslsmith_mult_i32(-6729i, 11648i)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(411f + 1174f), _wgslsmith_f_op_f32(step(-333f, 653f)))).a.b || ((1u >= arg_1.x) || arg_2);
    var_0 = all(select(select(!select(vec3<bool>(true, true, global1.x), vec3<bool>(arg_2, arg_2, arg_3.x), vec3<bool>(arg_2, true, false)), vec3<bool>(false, !arg_3.x, !arg_2), !(!arg_3.x)), vec3<bool>(true, arg_2 || global1.x, !arg_3.x), !(!(arg_2 || true))));
    global1 = select(arg_3, vec2<bool>(arg_0 <= 979f, global1.x), arg_2);
    global0 = array<Struct_2, 10>();
    var_0 = arg_3.x;
    return func_1(Struct_1(min(min(vec4<i32>(0i, 50295i, -18100i, 1i) >> (u_input.a % vec4<u32>(32u)), -vec4<i32>(0i, 19842i, 4150i, 2147483647i)), -min(vec4<i32>(10166i, -1i, 28764i, -29693i), vec4<i32>(2147483647i, -2147483647i, 0i, 2147483647i))), arg_2, 0i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(-736f, arg_0, arg_0, arg_0), arg_3.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1117f, arg_0, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2633f, arg_0, arg_0, -1357f) - vec4<f32>(arg_0, arg_0, arg_0, 1347f))), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(493f, _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(floor(arg_0))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1429f, arg_0, -1208f, -534f) * vec4<f32>(arg_0, arg_0, arg_0, 560f)))), select(vec4<bool>(true, !arg_3.x, true, true), !(!vec4<bool>(true, arg_2, false, false)), !vec4<bool>(true, true, true, arg_3.x))))).a;
}

fn func_6(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = !vec3<bool>(true, !global1.x, global1.x);
    global0 = array<Struct_2, 10>();
    global1 = select(vec2<bool>(arg_0.b, func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1167f))), ~(~u_input.a.xz), !(global1.x || arg_0.b), !select(var_0.yy, vec2<bool>(global1.x, true), var_0.yz)).b), vec2<bool>(all(!vec3<bool>(global1.x, false, global1.x)), arg_0.b), var_0.xz);
    let var_1 = Struct_4(1636f, func_1(Struct_1(-(~arg_0.a), false, countOneBits(arg_0.c)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(291f, -272f, 903f, -1145f)) + vec4<f32>(-1000f, 1405f, 240f, 2270f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(196f, -188f, -114f, 631f), vec4<f32>(870f, 134f, 937f, -1030f)))))).d, arg_0.a.wyy, ~reverseBits(-vec4<i32>(21148i, arg_0.c, 38633i, arg_0.c)));
    var var_2 = -arg_0.a.x;
    return StorageBuffer(-var_1.b.a, func_1(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2116f, 1258f, var_1.a, 449f)))))).b.a.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1652f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(476f * -576f))), abs(vec2<u32>(55733u, _wgslsmith_clamp_u32(1u, 15832u, 4294967295u))), all(select(vec2<bool>(global1.x, true), vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x))) & !all(vec2<bool>(false, global1.x)), vec2<bool>(func_4(~u_input.a.x, func_1(Struct_1(vec4<i32>(-30073i, -10736i, -2147483647i, -1i), true, -2839i), vec4<f32>(276f, 627f, -200f, -512f))), global1.x)));
}

