struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(-2547f, vec2<bool>(true, false)), Struct_4(202f, vec2<bool>(true, false)), Struct_4(546f, vec2<bool>(true, false)), Struct_4(-1000f, vec2<bool>(false, false)), Struct_4(-335f, vec2<bool>(true, false)), Struct_4(-754f, vec2<bool>(true, false)), Struct_4(701f, vec2<bool>(false, false)), Struct_4(-1270f, vec2<bool>(false, true)), Struct_4(1225f, vec2<bool>(true, false)), Struct_4(-157f, vec2<bool>(true, false)), Struct_4(-595f, vec2<bool>(false, true)), Struct_4(2118f, vec2<bool>(true, true)), Struct_4(-862f, vec2<bool>(true, false)), Struct_4(-448f, vec2<bool>(true, true)), Struct_4(402f, vec2<bool>(false, false)), Struct_4(-604f, vec2<bool>(true, true)), Struct_4(1044f, vec2<bool>(true, false)), Struct_4(-1357f, vec2<bool>(false, true)), Struct_4(-1071f, vec2<bool>(true, true)), Struct_4(-389f, vec2<bool>(true, true)), Struct_4(-550f, vec2<bool>(false, false)), Struct_4(907f, vec2<bool>(true, false)), Struct_4(719f, vec2<bool>(true, true)), Struct_4(-1105f, vec2<bool>(false, false)), Struct_4(-560f, vec2<bool>(false, false)), Struct_4(718f, vec2<bool>(true, true)), Struct_4(2395f, vec2<bool>(false, true)), Struct_4(-661f, vec2<bool>(true, false)), Struct_4(-1336f, vec2<bool>(false, false)), Struct_4(-169f, vec2<bool>(true, false)), Struct_4(1600f, vec2<bool>(true, true)));

var<private> global1: array<i32, 11> = array<i32, 11>(172i, 2147483647i, -33585i, 0i, -1i, i32(-2147483648), 41786i, -1i, 0i, 15595i, i32(-2147483648));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>) -> i32 {
    var var_0 = u_input.b.x;
    let var_1 = vec4<u32>(26905u, ~reverseBits(abs(47462u)), u_input.a, countOneBits(u_input.a));
    let var_2 = vec4<bool>(all(vec2<bool>(true, arg_0.x)), arg_0.x, true, select(any(arg_0.yw), true, !(!all(vec2<bool>(false, true)))));
    let var_3 = Struct_3(Struct_1(vec4<bool>(true, all(vec4<bool>(true, false, var_2.x, true)), true, all(vec4<bool>(true, false, var_2.x, true))), arg_0.wyy, _wgslsmith_div_vec2_i32(min(u_input.b, u_input.b) << (var_1.xw % vec2<u32>(32u)), ~vec2<i32>(global1[_wgslsmith_index_u32(1855u, 11u)], global1[_wgslsmith_index_u32(26209u, 11u)]))));
    var var_4 = abs(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], ~u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<i32>(var_3.a.c.x, 2147483647i, 9100i, var_3.a.c.x)), ~var_3.a.c.x | var_3.a.c.x)) & -vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(2147483647i, 15728i), global1[_wgslsmith_index_u32(abs(32909u), 11u)]), 1i, global1[_wgslsmith_index_u32(var_1.x, 11u)] >> (_wgslsmith_clamp_u32(55429u, u_input.a, u_input.a) % 32u), _wgslsmith_div_i32(var_3.a.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.c.x, 2147483647i, -31093i, var_3.a.c.x), vec4<i32>(u_input.b.x, -3477i, 0i, -3361i))));
    return -6326i;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = select(firstTrailingBit(max(select(vec3<u32>(47025u, 1u, 16947u), _wgslsmith_mod_vec3_u32(vec3<u32>(24119u, 264u, u_input.a), vec3<u32>(u_input.a, 3033u, u_input.a)), all(vec3<bool>(arg_1, arg_3.a.x, true))), vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(18623u, 1u)), ~0u))), abs(~(~vec3<u32>(u_input.a, u_input.a, u_input.a))) ^ vec3<u32>(1u, 4294967295u, u_input.a & abs(u_input.a)), false);
    global1 = array<i32, 11>();
    let var_1 = !vec3<bool>(arg_1, arg_3.a.x, arg_1);
    let var_2 = arg_1 && false;
    var var_3 = var_0.x;
    return vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(max(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.c.x, arg_2, global1[_wgslsmith_index_u32(31977u, 11u)], 9614i), vec4<i32>(arg_2, -1i, -1i, arg_2)), vec4<i32>(-1i, 38996i, 2147483647i, u_input.c))), -(-vec4<i32>(-6487i, u_input.c, -35688i, -8005i) << (firstTrailingBit(vec4<u32>(var_0.x, 2003u, u_input.a, var_0.x)) % vec4<u32>(32u)))), countOneBits(1i));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_4, 31>();
    var var_0 = -1511f;
    let var_1 = global1[_wgslsmith_index_u32(u_input.a, 11u)] == _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(func_4(Struct_3(Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(false, true, false), vec2<i32>(0i, 26506i))), true, func_3(vec4<bool>(true, true, true, false), vec4<f32>(1022f, -384f, 418f, 880f)), Struct_2(vec4<bool>(true, false, false, true), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, true, true), u_input.b), vec3<i32>(u_input.c, -2147483647i, 31330i))), -vec2<i32>(-48182i, 0i)), func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(680f, -1604f, 1758f, 1867f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(897f, 587f, -687f, 799f)))))));
    var var_2 = _wgslsmith_sub_i32(~abs(_wgslsmith_mod_i32(-1040i >> (u_input.a % 32u), global1[_wgslsmith_index_u32(0u, 11u)])), 0i & max((1i | u_input.c) << (49828u % 32u), -func_3(vec4<bool>(var_1, false, var_1, true), vec4<f32>(1606f, 633f, -1051f, -674f))));
    let var_3 = Struct_4(711f, select(vec2<bool>((u_input.a | 17196u) > ~0u, true), vec2<bool>(true, any(select(vec2<bool>(true, var_1), vec2<bool>(var_1, true), vec2<bool>(var_1, var_1)))), select(select(select(vec2<bool>(false, true), vec2<bool>(var_1, false), var_1), select(vec2<bool>(false, false), vec2<bool>(var_1, var_1), vec2<bool>(var_1, false)), !var_1), vec2<bool>(true, true), var_1)));
    return Struct_1(vec4<bool>(false, !(var_1 || var_1) == (_wgslsmith_div_f32(var_3.a, 274f) == var_3.a), all(select(!vec3<bool>(var_1, var_1, false), !vec3<bool>(var_1, var_3.b.x, false), vec3<bool>(false, var_1, true))), any(select(select(vec4<bool>(true, false, var_1, var_3.b.x), vec4<bool>(true, false, false, var_1), false), select(vec4<bool>(false, true, true, false), vec4<bool>(var_3.b.x, true, false, var_1), vec4<bool>(true, var_1, false, var_1)), true))), !select(!select(vec3<bool>(var_3.b.x, var_3.b.x, false), vec3<bool>(true, var_3.b.x, var_1), vec3<bool>(true, false, false)), !select(vec3<bool>(false, true, true), vec3<bool>(var_1, false, false), vec3<bool>(false, false, false)), true), ~abs(_wgslsmith_clamp_vec2_i32(u_input.b, ~u_input.b, max(vec2<i32>(-27996i, u_input.c), vec2<i32>(27209i, -32388i)))));
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: i32, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(590f, arg_1.a, 607f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1001f, arg_1.a, -676f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-594f, -997f, -1358f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 216f, -604f), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, arg_1.a, var_0.x), vec3<f32>(var_0.x, arg_1.a, var_0.x))))))));
    let var_1 = vec3<f32>(arg_1.a, 3787f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1558f) + -889f));
    var_0 = _wgslsmith_f_op_vec3_f32(var_1 - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-229f, -171f, -1285f)));
    let var_2 = _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(arg_0 | u_input.a, 11u)], firstTrailingBit(0i), 1i);
    return vec3<u32>(~(~1u), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.a, arg_0), _wgslsmith_add_u32(select(u_input.a, arg_0, false), _wgslsmith_dot_vec3_u32(vec3<u32>(36653u, u_input.a, 1u), vec3<u32>(4294967295u, 4294967295u, 0u)))) << (22678u % 32u), u_input.a);
}

fn func_6(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-321f, -1008f, -1240f, 1166f), vec4<f32>(775f, 1023f, -1065f, 1926f)))))))));
    let var_1 = vec3<bool>(!(true || any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true))), (func_5(firstTrailingBit(0u), Struct_4(1989f, vec2<bool>(false, true)), 1i, Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(true, false, true), u_input.b)).x >> (_wgslsmith_mult_u32(arg_2.x, ~arg_1) % 32u)) < ~6876u, all(vec3<bool>(true, true, true)));
    var_0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -115f), -1790f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))));
    let var_2 = Struct_5(Struct_4(var_0.x, var_1.xz), firstTrailingBit(firstLeadingBit(min(vec3<i32>(0i, global1[_wgslsmith_index_u32(u_input.a, 11u)], u_input.b.x), vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.a, 11u)], 2147483647i)))), Struct_2(vec4<bool>(!(var_0.x != var_0.x), select(var_0.x == -477f, u_input.b.x > -40451i, all(vec4<bool>(false, false, var_1.x, false))), _wgslsmith_div_f32(159f, var_0.x) != _wgslsmith_f_op_f32(round(-1120f)), !any(vec4<bool>(true, true, var_1.x, false))), func_2(), abs(_wgslsmith_clamp_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(52343u, 11u)], global1[_wgslsmith_index_u32(18013u, 11u)], 50i), -vec3<i32>(u_input.b.x, 2147483647i, -27792i), vec3<i32>(u_input.b.x, -10235i, -6605i)))), Struct_2(!(!(!vec4<bool>(var_1.x, false, var_1.x, false))), func_2(), select(reverseBits(reverseBits(vec3<i32>(u_input.b.x, global1[_wgslsmith_index_u32(68825u, 11u)], 0i))), -vec3<i32>(1i, u_input.c, u_input.c), !var_1)), Struct_2(select(vec4<bool>(true, 26418u <= u_input.a, var_1.x, true || var_1.x), vec4<bool>(var_1.x, all(vec2<bool>(var_1.x, var_1.x)), var_1.x, all(vec3<bool>(false, true, var_1.x))), any(func_2().a.wz)), func_2(), min(_wgslsmith_mult_vec3_i32(-vec3<i32>(-17748i, -39698i, -1431i), ~vec3<i32>(u_input.c, -10246i, global1[_wgslsmith_index_u32(arg_1, 11u)])), vec3<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(arg_2.x, 11u)], -17160i, 0i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], -32537i, -52563i)), -2147483647i))));
    return Struct_2(func_2().a, func_2(), var_2.e.c);
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = func_6(~max(func_5(~u_input.a, Struct_4(arg_0, vec2<bool>(false, false)), -24206i, func_2()), vec3<u32>(25979u, 16063u, u_input.a) >> ((vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))), reverseBits(_wgslsmith_clamp_u32(~u_input.a, 4294967295u, u_input.a)), abs(vec2<u32>(u_input.a, _wgslsmith_add_u32(~u_input.a, ~0u))));
    let var_1 = select(any(vec2<bool>(true, _wgslsmith_f_op_f32(-1084f - arg_0) >= 484f)), !any(var_0.b.b), var_0.a.x && any(!var_0.a));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1216f))));
    var var_3 = func_6(vec3<u32>(u_input.a, 0u, u_input.a), _wgslsmith_mult_u32(~4800u, ~(u_input.a << (u_input.a % 32u))), vec2<u32>(u_input.a, select(_wgslsmith_div_u32(1904u, 83334u), u_input.a, !var_1)) >> (_wgslsmith_mod_vec2_u32((vec2<u32>(4294967295u, 61367u) | vec2<u32>(u_input.a, 1u)) & vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(57420u, u_input.a)) % vec2<u32>(32u))).b;
    var var_4 = Struct_3(func_6(~min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 64111u), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(38291u, 1u, 1u) >> (vec3<u32>(u_input.a, 4294967295u, 14619u) % vec3<u32>(32u))), abs(~u_input.a | ~18443u), max(countOneBits(abs(vec2<u32>(0u, 1u))), ~vec2<u32>(u_input.a, 10215u))).b);
    return ~_wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(35439u, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(false, true), vec2<bool>(true, true))) & true);
    let var_1 = vec2<u32>(_wgslsmith_add_u32(~(~417u), u_input.a), 0u) | vec2<u32>(~func_1(-1071f), _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, 22599u), 69405u), ~u_input.a | ~u_input.a));
    var var_2 = func_6(_wgslsmith_mod_vec3_u32(max(_wgslsmith_div_vec3_u32(vec3<u32>(9952u, u_input.a, var_1.x) & vec3<u32>(var_1.x, 83883u, 30069u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 45629u, 50385u), vec3<u32>(u_input.a, 25663u, var_1.x))), abs(vec3<u32>(0u, 18756u, 6789u) & vec3<u32>(4294967295u, var_1.x, 1942u))), vec3<u32>(~var_1.x, _wgslsmith_mult_u32(71523u, 58640u), ~14549u) | _wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, u_input.a, 4294967295u), func_5(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 31u)], u_input.c, Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, false, true), vec2<i32>(1i, u_input.c))))), 1u ^ var_1.x, vec2<u32>(abs(_wgslsmith_mult_u32(reverseBits(u_input.a), ~37179u)), 8317u)).b;
    let var_3 = var_1.x;
    let var_4 = vec3<bool>(!(!all(func_6(vec3<u32>(var_1.x, 4294967295u, 4294967295u), 39701u, var_1).a)), var_2.a.x, (~countOneBits(-2147483647i) | _wgslsmith_add_i32(firstTrailingBit(-37627i), global1[_wgslsmith_index_u32(27125u, 11u)] >> (0u % 32u))) > _wgslsmith_add_i32(-52469i, i32(-1i) * -10299i));
    var_0 = !any(select(select(var_2.a, vec4<bool>(var_4.x, var_4.x, var_4.x, true), true || var_4.x), vec4<bool>(true, var_4.x, !var_4.x, !var_2.b.x), vec4<bool>(true, !var_4.x, any(var_4), var_4.x)));
    global0 = array<Struct_4, 31>();
    let var_5 = select(-(~(vec3<i32>(61944i, var_2.c.x, -2147483647i) << (vec3<u32>(var_1.x, 1u, 4294967295u) % vec3<u32>(32u))) << (vec3<u32>(1u, 0u, ~var_3) % vec3<u32>(32u))), vec3<i32>(~(~(-var_2.c.x)), u_input.b.x, -_wgslsmith_mod_i32(-2147483647i, abs(u_input.c))), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-965f - -1887f), _wgslsmith_f_op_f32(f32(-1f) * -1844f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-910f, 2002f, -403f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-961f, 1810f, -1496f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-647f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(929f, 674f))))) * _wgslsmith_f_op_f32(ceil(-371f))), _wgslsmith_dot_vec2_u32(max(firstLeadingBit(vec2<u32>(u_input.a, var_3)), var_1), ~var_1), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1006f + 1533f)) - 478f), _wgslsmith_f_op_f32(f32(-1f) * -1358f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(429f, -444f, 1651f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -156f, 403f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-792f, 1190f, -541f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(812f, 923f, -957f), vec3<f32>(541f, -566f, -129f), false))))));
}

