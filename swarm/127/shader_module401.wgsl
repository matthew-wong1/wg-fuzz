struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(426f, 1952f, -370f, 129f, 374f, -1252f, 954f);

var<private> global1: u32;

var<private> global2: Struct_3 = Struct_3(true, false, vec2<i32>(-1i, 0i), vec4<bool>(true, false, true, true));

var<private> global3: array<bool, 11>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_4) -> vec4<u32> {
    global0 = array<f32, 7>();
    let var_0 = ~u_input.a;
    var var_1 = abs(firstLeadingBit(abs(vec3<u32>(firstLeadingBit(951u), 59461u << (arg_1.b.d % 32u), firstLeadingBit(arg_2.b.b)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 7u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.c)))))));
    let var_3 = min(vec3<u32>(firstTrailingBit(abs(2724u | arg_2.b.d)), 1u, 63664u), firstTrailingBit(vec3<u32>(1u, 1u, 1u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 5374u, 16714u) | vec3<u32>(49400u, arg_2.d.x, arg_1.d.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(64603u, 29838u, 6826u), vec3<u32>(arg_2.b.b, 5046u, var_1.x), vec3<u32>(0u, arg_1.b.b, var_1.x)), max(vec3<u32>(arg_2.d.x, arg_2.d.x, arg_2.b.b), vec3<u32>(var_1.x, arg_2.b.d, arg_2.d.x)))));
    return _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(96270u, 4294967295u, var_3.x, var_3.x), vec4<u32>(arg_2.d.x, 10177u, arg_1.d.x, 1u)), ~var_3.x, ~arg_2.d.x)) ^ _wgslsmith_sub_vec4_u32(~vec4<u32>(var_3.x, var_3.x, 14558u, arg_2.d.x), vec4<u32>(36854u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, 4294967295u), arg_1.d), _wgslsmith_mult_u32(4294967295u, var_3.x), _wgslsmith_dot_vec2_u32(var_3.yz, arg_2.d))), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_2.d.x, var_3.x, 6209u, 17973u) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_3.x, arg_2.b.b, arg_1.d.x), vec4<u32>(var_3.x, arg_2.d.x, 1u, arg_2.b.d)), vec4<u32>(arg_1.b.d, _wgslsmith_sub_u32(1u, ~var_3.x), ~arg_1.d.x, arg_1.d.x)), (vec4<u32>(_wgslsmith_dot_vec2_u32(var_3.zz, vec2<u32>(24720u, var_3.x)), 1u, 4294967295u, _wgslsmith_mult_u32(var_3.x, arg_2.d.x)) | ~(~vec4<u32>(11315u, 0u, 1u, arg_1.d.x))) >> (_wgslsmith_div_vec4_u32(~abs(vec4<u32>(0u, 44804u, arg_1.b.d, 0u)), abs(vec4<u32>(var_1.x, 28878u, 4294967295u, arg_1.b.b))) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    let var_0 = 73494u ^ _wgslsmith_dot_vec4_u32(min(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), ~abs(vec4<u32>(46591u, 0u, 4294967295u, 23335u))), ~func_3(arg_0.a.xx, Struct_4(arg_0, Struct_2(arg_0, 1286u, Struct_1(vec3<bool>(arg_0.a.x, global2.b, false)), 0u), -1896f, vec2<u32>(1390u, 74220u), -718f), Struct_4(arg_0, Struct_2(arg_0, 12419u, arg_0, 38794u), global0[_wgslsmith_index_u32(4294967295u, 7u)], vec2<u32>(6860u, 12284u), global0[_wgslsmith_index_u32(5253u, 7u)])));
    var var_1 = Struct_2(arg_0, 50470u, arg_0, 35872u);
    let var_2 = all(!global2.d);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1f)))) * global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(abs(var_1.b), ~0u) >> (1u % 32u), 7u)]);
    let var_4 = Struct_2(var_1.c, var_1.b, Struct_1(vec3<bool>(all(var_1.a.a), !(var_3 == var_3), !(!arg_0.a.x))), ~var_1.b);
    return Struct_4(var_1.a, var_4, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 - 790f)))))), firstLeadingBit(vec2<u32>(1u, (4294967295u << (var_4.b % 32u)) & 1u)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_4.b, 7u)], -1305f));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec4<f32>) -> Struct_4 {
    let var_0 = func_2(func_2(func_2(Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(arg_2.d.x, 11u)], false, global3[_wgslsmith_index_u32(26544u, 11u)]))).b.a).a).b.c;
    return func_2(func_2(Struct_1(!func_2(arg_2.b.a).a.a)).a);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = 1712f;
    global3 = array<bool, 11>();
    global1 = _wgslsmith_sub_u32(~select(~_wgslsmith_clamp_u32(0u, arg_1.d.x, arg_1.d.x), ~arg_1.d.x ^ arg_1.b.b, all(!global2.d)), ~arg_1.b.b);
    global1 = _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(firstTrailingBit(1u), ~arg_1.d.x), abs(vec2<u32>(arg_1.d.x, arg_1.b.b)) >> (arg_1.d % vec2<u32>(32u))), arg_1.d | _wgslsmith_mod_vec2_u32(~arg_1.d, firstLeadingBit(vec2<u32>(arg_1.b.d, 11678u))));
    var var_1 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_1.b.b, 37457u, 16689u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 27713u, arg_1.b.b), ~vec3<u32>(10538u, 0u, 2137u)), vec3<u32>(arg_1.d.x, arg_1.d.x, 28252u)), vec3<u32>(21321u, ~1u, ~(arg_1.d.x ^ arg_1.d.x)));
    return func_4(Struct_3(select(false, !(!global3[_wgslsmith_index_u32(var_1.x, 11u)]), all(func_4(Struct_3(false, global2.a, vec2<i32>(-2147483647i, global2.c.x), vec4<bool>(false, arg_1.a.a.x, global2.a, arg_1.a.a.x)), arg_1, Struct_4(Struct_1(arg_1.a.a), Struct_2(arg_1.b.c, 0u, arg_1.a, 7238u), global0[_wgslsmith_index_u32(20548u, 7u)], var_1.yx, global0[_wgslsmith_index_u32(var_1.x, 7u)]), vec4<f32>(global0[_wgslsmith_index_u32(arg_1.b.b, 7u)], 1185f, arg_1.e, global0[_wgslsmith_index_u32(6768u, 7u)])).b.a.a.yx)), true, global2.c, global2.d), arg_1, func_2(Struct_1(vec3<bool>(false, true, !global2.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], 1833f, arg_1.e, global0[_wgslsmith_index_u32(57484u, 7u)]) - vec4<f32>(arg_1.c, arg_1.e, 205f, 187f))))), vec4<f32>(-673f, _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(257f, global0[_wgslsmith_index_u32(56108u, 7u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.b.b, 7u)]))))).a;
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_1.d, 7u)], global0[_wgslsmith_index_u32(arg_0, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(arg_1.b, 7u)]) * vec4<f32>(1193f, -458f, 1694f, global0[_wgslsmith_index_u32(arg_0, 7u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-809f, global0[_wgslsmith_index_u32(arg_1.d, 7u)], 446f, -449f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_1.b, 7u)], -219f, -379f, global0[_wgslsmith_index_u32(1u, 7u)]) + vec4<f32>(-325f, -665f, global0[_wgslsmith_index_u32(26158u, 7u)], -234f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(arg_2.d, 7u)], 1041f, -507f))))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-883f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(464f * -852f)), _wgslsmith_f_op_f32(select(func_4(Struct_3(global3[_wgslsmith_index_u32(7813u, 11u)], true, vec2<i32>(2147483647i, global2.c.x), vec4<bool>(global3[_wgslsmith_index_u32(arg_2.b, 11u)], arg_1.a.a.x, false, arg_2.c.a.x)), Struct_4(Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(arg_2.b, 11u)], global3[_wgslsmith_index_u32(16260u, 11u)], arg_2.c.a.x)), arg_1, var_0.x, vec2<u32>(0u, 30914u), 288f), Struct_4(arg_2.c, Struct_2(Struct_1(vec3<bool>(arg_2.c.a.x, false, global3[_wgslsmith_index_u32(24267u, 11u)])), arg_0, Struct_1(arg_1.c.a), 19019u), var_0.x, vec2<u32>(arg_0, 111715u), global0[_wgslsmith_index_u32(arg_2.b, 7u)]), vec4<f32>(762f, global0[_wgslsmith_index_u32(arg_1.b, 7u)], global0[_wgslsmith_index_u32(arg_1.b, 7u)], var_0.x)).c, _wgslsmith_f_op_f32(max(322f, -1435f)), global3[_wgslsmith_index_u32(arg_2.d, 11u)])))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(67601u, 7u)])) + _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(arg_2.b, 7u)])))) - global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, 0u), 7u)]));
    var var_2 = func_4(Struct_3(true, true, countOneBits(vec2<i32>(1i, _wgslsmith_sub_i32(1i, u_input.a))), !select(select(global2.d, vec4<bool>(true, true, arg_2.a.a.x, arg_2.c.a.x), global2.b), select(vec4<bool>(global2.d.x, true, false, false), vec4<bool>(global3[_wgslsmith_index_u32(37587u, 11u)], arg_2.a.a.x, false, global2.b), arg_2.a.a.x), select(false, global3[_wgslsmith_index_u32(0u, 11u)], true))), func_2(Struct_1(func_2(Struct_1(vec3<bool>(arg_2.a.a.x, true, arg_1.c.a.x))).a.a)), Struct_4(Struct_1(select(arg_1.c.a, vec3<bool>(false, true, global2.d.x), func_4(Struct_3(global3[_wgslsmith_index_u32(arg_2.b, 11u)], true, vec2<i32>(0i, -24024i), global2.d), Struct_4(Struct_1(global2.d.wzw), Struct_2(arg_2.c, 5342u, arg_1.a, 6234u), var_0.x, vec2<u32>(arg_0, arg_0), 1000f), Struct_4(Struct_1(arg_1.c.a), Struct_2(Struct_1(arg_2.a.a), 4294967295u, Struct_1(arg_2.a.a), arg_0), var_0.x, vec2<u32>(arg_2.d, arg_2.b), global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<f32>(var_0.x, global0[_wgslsmith_index_u32(17373u, 7u)], -1000f, -1344f)).a.a)), func_2(Struct_1(!global2.d.wyz)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 1f)), ~_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(4294967295u, 0u)) << (_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(arg_1.b, 0u)), func_2(Struct_1(global2.d.xxx)).d, vec2<u32>(arg_0, 1u)) % vec2<u32>(32u)), _wgslsmith_div_f32(func_4(Struct_3(true, false, global2.c, vec4<bool>(global2.a, true, false, true)), Struct_4(arg_2.c, arg_1, 645f, vec2<u32>(69561u, 0u), -1035f), func_2(arg_1.a), vec4<f32>(-1000f, -547f, 1481f, 1250f)).c, 1772f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2629f, 700f, -794f, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1326f, 741f, var_0.x, -942f), vec4<f32>(1261f, var_0.x, global0[_wgslsmith_index_u32(104615u, 7u)], var_0.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, var_0.x, -811f, global0[_wgslsmith_index_u32(arg_2.d, 7u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], -1167f, -1000f, global0[_wgslsmith_index_u32(arg_2.d, 7u)]) + vec4<f32>(global0[_wgslsmith_index_u32(34115u, 7u)], -1163f, -134f, global0[_wgslsmith_index_u32(9213u, 7u)])), !global2.d)))))).b.a;
    global1 = abs(~(~arg_0));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(arg_0, 7u)], global0[_wgslsmith_index_u32(57040u, 7u)], 1476f, 1514f)))) + vec4<f32>(_wgslsmith_f_op_f32(-299f - -1139f), 647f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1276f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1200f, var_0.x, -2755f, var_0.x) - vec4<f32>(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 7u)], -1032f, var_0.x))) - vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(select(156f, 284f, arg_1.a.a.x)), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), _wgslsmith_f_op_f32(select(-1062f, var_0.x, arg_1.c.a.x))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x * var_0.x)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(12598u, 7u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 7u)]))));
    return Struct_3(func_5(~select(_wgslsmith_sub_vec3_i32(vec3<i32>(-10247i, u_input.a, u_input.a), vec3<i32>(-8219i, u_input.a, global2.c.x)), ~vec3<i32>(3775i, global2.c.x, 2147483647i), true), func_4(Struct_3(true, u_input.a == 11599i, global2.c & vec2<i32>(-2147483647i, -11838i), select(vec4<bool>(false, global2.d.x, true, var_2.a.x), vec4<bool>(true, true, global3[_wgslsmith_index_u32(arg_1.d, 11u)], global2.a), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 11u)], var_2.a.x, false, global3[_wgslsmith_index_u32(1u, 11u)]))), Struct_4(arg_1.c, func_4(Struct_3(global3[_wgslsmith_index_u32(arg_0, 11u)], false, vec2<i32>(0i, u_input.a), vec4<bool>(arg_1.c.a.x, arg_2.a.a.x, arg_1.c.a.x, false)), Struct_4(Struct_1(arg_2.c.a), arg_1, var_0.x, vec2<u32>(arg_1.d, 1u), var_0.x), Struct_4(Struct_1(global2.d.zxx), arg_1, 1377f, vec2<u32>(arg_2.b, arg_2.b), 1735f), vec4<f32>(-392f, -603f, -217f, -580f)).b, var_0.x, vec2<u32>(0u, arg_0) ^ vec2<u32>(arg_2.d, 20592u), 793f), func_4(Struct_3(false, true, vec2<i32>(-1i, 2147483647i), vec4<bool>(arg_2.a.a.x, global3[_wgslsmith_index_u32(91115u, 11u)], true, true)), func_2(Struct_1(arg_2.c.a)), Struct_4(Struct_1(global2.d.wzx), Struct_2(arg_2.a, arg_0, arg_1.c, 56976u), 1857f, vec2<u32>(arg_2.d, 37605u), global0[_wgslsmith_index_u32(1u, 7u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global0[_wgslsmith_index_u32(arg_2.d, 7u)], var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-685f, 371f, -1268f, 453f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1134f, -494f, -635f, -1379f) * vec4<f32>(-1116f, global0[_wgslsmith_index_u32(arg_2.b, 7u)], 290f, var_0.x))))).a.x, false, ~(~vec2<i32>(2147483647i, -49185i)), vec4<bool>(true, !func_5(vec3<i32>(u_input.a, u_input.a, u_input.a), func_2(arg_2.a)).a.x, select(arg_2.c.a.x, false, false), !global2.b));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> Struct_3 {
    var var_0 = func_6(_wgslsmith_mod_u32(~(~_wgslsmith_add_u32(24248u, arg_1)), abs(4294967295u)), Struct_2(func_5(vec3<i32>(~global2.c.x, _wgslsmith_clamp_i32(2147483647i, 1i, 4072i), abs(0i)), func_4(Struct_3(global3[_wgslsmith_index_u32(arg_1, 11u)], true, global2.c, global2.d), func_2(Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(8405u, 11u)], true, global3[_wgslsmith_index_u32(arg_1, 11u)]))), Struct_4(Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(arg_1, 11u)], global2.d.x, false)), Struct_2(Struct_1(global2.d.wxz), 0u, Struct_1(global2.d.xyy), arg_1), arg_0.x, vec2<u32>(918u, 0u), arg_0.x), vec4<f32>(259f, 379f, arg_0.x, global0[_wgslsmith_index_u32(arg_1, 7u)]))), countOneBits(arg_1), Struct_1(global2.d.xzz), 4294967295u), Struct_2(Struct_1(global2.d.wxx), ~21547u, Struct_1(vec3<bool>(false, !global2.d.x, global0[_wgslsmith_index_u32(arg_1, 7u)] <= arg_0.x)), ~(~58178u)));
    let var_1 = 6247u;
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_add_i32(reverseBits(global2.c.x) >> (arg_1 % 32u), global2.c.x), -60419i) > var_0.c.x;
    let var_3 = firstTrailingBit(~func_3(!vec2<bool>(global3[_wgslsmith_index_u32(0u, 11u)], var_0.a), func_2(Struct_1(vec3<bool>(true, true, var_0.a))), Struct_4(Struct_1(var_0.d.zwz), Struct_2(Struct_1(var_0.d.yxz), 4294967295u, Struct_1(vec3<bool>(global2.b, false, true)), 4294967295u), 104f, vec2<u32>(4294967295u, var_1), arg_0.x)).xzz) << (vec3<u32>(1u, firstTrailingBit(~_wgslsmith_div_u32(52464u, var_1)), var_1) % vec3<u32>(32u));
    var_2 = !(100145u >= arg_1);
    return Struct_3(any(!func_6(var_1, func_4(Struct_3(global3[_wgslsmith_index_u32(4294967295u, 11u)], false, vec2<i32>(u_input.a, 0i), vec4<bool>(global3[_wgslsmith_index_u32(var_3.x, 11u)], true, false, var_0.b)), Struct_4(Struct_1(var_0.d.xzz), Struct_2(Struct_1(vec3<bool>(var_0.b, false, false)), var_1, Struct_1(global2.d.zxw), var_3.x), arg_0.x, var_3.zy, arg_0.x), Struct_4(Struct_1(var_0.d.xyz), Struct_2(Struct_1(vec3<bool>(var_0.a, global3[_wgslsmith_index_u32(0u, 11u)], global2.a)), 8443u, Struct_1(var_0.d.yzz), arg_1), 383f, var_3.zx, -1223f), vec4<f32>(arg_0.x, arg_0.x, 416f, arg_0.x)).b, func_4(Struct_3(global2.b, true, vec2<i32>(39687i, global2.c.x), vec4<bool>(false, true, var_0.a, false)), Struct_4(Struct_1(global2.d.www), Struct_2(Struct_1(global2.d.zwx), 16025u, Struct_1(global2.d.xxx), 0u), global0[_wgslsmith_index_u32(arg_1, 7u)], vec2<u32>(1u, var_1), 1129f), Struct_4(Struct_1(global2.d.wyz), Struct_2(Struct_1(vec3<bool>(global2.b, var_0.a, global3[_wgslsmith_index_u32(arg_1, 11u)])), var_3.x, Struct_1(global2.d.xyy), arg_1), 543f, vec2<u32>(0u, 43252u), -1133f), vec4<f32>(135f, -1218f, -317f, arg_0.x)).b).d), global2.d.x, firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-global2.c.x, u_input.a), vec2<i32>(var_0.c.x ^ u_input.a, var_0.c.x))), global2.d);
}

fn func_7(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = (-(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.a, arg_1.x), vec3<i32>(13829i, 34416i, u_input.a)) & firstLeadingBit(vec3<i32>(global2.c.x, 60463i, 2147483647i))) ^ max(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.c.x, -21221i, 42374i), vec3<i32>(u_input.a, 1i, global2.c.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(35448i, arg_0.c.x, 37238i), -vec3<i32>(13852i, u_input.a, arg_1.x)))) ^ ~(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, arg_0.c.x, 0i), vec3<i32>(global2.c.x, global2.c.x, u_input.a), vec3<i32>(0i, 1i, -67205i))) | vec3<i32>(-arg_0.c.x, -8438i, -24010i));
    let var_1 = func_4(func_6(9407u, Struct_2(Struct_1(!vec3<bool>(true, arg_3.x, arg_3.x)), ~arg_2.x, Struct_1(arg_3.zzy), arg_2.x), Struct_2(Struct_1(func_5(vec3<i32>(4603i, 0i, arg_0.c.x), Struct_4(Struct_1(vec3<bool>(arg_0.a, true, arg_0.d.x)), Struct_2(Struct_1(vec3<bool>(false, false, global3[_wgslsmith_index_u32(34589u, 11u)])), arg_2.x, Struct_1(global2.d.yyw), 4294967295u), global0[_wgslsmith_index_u32(arg_2.x, 7u)], vec2<u32>(arg_2.x, arg_2.x), global0[_wgslsmith_index_u32(arg_2.x, 7u)])).a), countOneBits(1u), func_2(Struct_1(vec3<bool>(global2.b, global3[_wgslsmith_index_u32(arg_2.x, 11u)], arg_3.x))).b.a, ~7519u)), Struct_4(func_2(Struct_1(vec3<bool>(false, global2.b, global3[_wgslsmith_index_u32(arg_2.x, 11u)]))).b.a, func_4(Struct_3(true, global2.d.x, vec2<i32>(-1i, -14543i), !arg_0.d), Struct_4(Struct_1(arg_0.d.yxy), func_4(Struct_3(true, false, global2.c, vec4<bool>(true, true, true, true)), Struct_4(Struct_1(arg_0.d.yxz), Struct_2(Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(arg_2.x, 11u)], global2.d.x, arg_0.d.x)), 1u, Struct_1(vec3<bool>(true, global2.b, true)), 86746u), 139f, arg_2.yz, global0[_wgslsmith_index_u32(73986u, 7u)]), Struct_4(Struct_1(arg_3.wwy), Struct_2(Struct_1(arg_0.d.xyy), 0u, Struct_1(arg_0.d.zwz), arg_2.x), 196f, arg_2.zz, global0[_wgslsmith_index_u32(arg_2.x, 7u)]), vec4<f32>(-717f, 1556f, global0[_wgslsmith_index_u32(4294967295u, 7u)], 652f)).b, _wgslsmith_f_op_f32(abs(-789f)), ~arg_2.yx, 1601f), Struct_4(Struct_1(arg_3.www), Struct_2(Struct_1(arg_0.d.ywy), 54365u, Struct_1(vec3<bool>(false, false, true)), arg_2.x), global0[_wgslsmith_index_u32(~arg_2.x, 7u)], arg_2.zy, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, arg_2.x), 7u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 7u)], -764f, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(15409u, 7u)]) * vec4<f32>(-233f, 797f, 256f, global0[_wgslsmith_index_u32(40915u, 7u)])) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(15562u, 7u)], -381f, -2605f, 993f), vec4<f32>(-582f, global0[_wgslsmith_index_u32(arg_2.x, 7u)], 968f, 1724f))))).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2335f - global0[_wgslsmith_index_u32(4294967295u, 7u)]) + 794f) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~arg_2.x, 7u)] * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_2.x, 7u)] - global0[_wgslsmith_index_u32(arg_2.x, 7u)]))), arg_2.yy, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(arg_2.x), ~arg_2.x), 7u)]), func_2(func_2(func_2(func_2(Struct_1(global2.d.zzx)).a).a).b.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_2.x, 7u)], global0[_wgslsmith_index_u32(arg_2.x, 7u)], global0[_wgslsmith_index_u32(23517u, 7u)], global0[_wgslsmith_index_u32(arg_2.x, 7u)]) + vec4<f32>(2005f, global0[_wgslsmith_index_u32(arg_2.x, 7u)], global0[_wgslsmith_index_u32(arg_2.x, 7u)], -757f)))))).b;
    global0 = array<f32, 7>();
    var var_2 = vec4<u32>(0u, arg_2.x, abs(_wgslsmith_div_u32(~(~4294967295u), _wgslsmith_mult_u32(~arg_2.x, ~4294967295u))), 104855u);
    var_2 = abs(vec4<u32>(var_2.x, 696u, select(_wgslsmith_dot_vec3_u32(arg_2, arg_2), ~32167u, !(!var_1.c.a.x)), countOneBits(arg_2.x >> (_wgslsmith_dot_vec2_u32(arg_2.xz, vec2<u32>(0u, 4294967295u)) % 32u))));
    return Struct_3(true, !global3[_wgslsmith_index_u32(arg_2.x, 11u)], ~vec2<i32>(~_wgslsmith_dot_vec2_i32(var_0.yz, vec2<i32>(-20902i, 62717i)), -(-24037i >> (var_1.b % 32u))), !(!(!func_6(arg_2.x, var_1, Struct_2(var_1.a, 28109u, var_1.a, var_1.b)).d)));
}

fn func_8(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-arg_2)), arg_2))));
    let var_1 = Struct_2(func_4(func_6(~max(arg_0, arg_0), func_2(func_4(arg_1, Struct_4(Struct_1(global2.d.yyw), Struct_2(Struct_1(arg_1.d.xxw), 27680u, Struct_1(global2.d.zzy), 11022u), -956f, vec2<u32>(arg_0, arg_0), arg_2), Struct_4(Struct_1(arg_1.d.yxw), Struct_2(Struct_1(vec3<bool>(global2.a, true, global2.d.x)), 5541u, Struct_1(arg_1.d.wyw), 90668u), var_0, vec2<u32>(arg_0, arg_0), 561f), vec4<f32>(-187f, 354f, 1181f, global0[_wgslsmith_index_u32(arg_0, 7u)])).b.c).b, Struct_2(Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(arg_0, 11u)], false, global3[_wgslsmith_index_u32(arg_0, 11u)])), arg_0 ^ 1u, func_4(Struct_3(arg_1.b, true, global2.c, vec4<bool>(global3[_wgslsmith_index_u32(0u, 11u)], global3[_wgslsmith_index_u32(arg_0, 11u)], arg_1.d.x, global3[_wgslsmith_index_u32(arg_0, 11u)])), Struct_4(Struct_1(vec3<bool>(arg_1.a, arg_1.b, global3[_wgslsmith_index_u32(arg_0, 11u)])), Struct_2(Struct_1(global2.d.wxw), arg_0, Struct_1(vec3<bool>(global2.d.x, arg_1.a, global3[_wgslsmith_index_u32(arg_0, 11u)])), 1u), var_0, vec2<u32>(arg_0, 1u), arg_2), Struct_4(Struct_1(global2.d.zzw), Struct_2(Struct_1(vec3<bool>(arg_1.d.x, false, global3[_wgslsmith_index_u32(arg_0, 11u)])), 4294967295u, Struct_1(vec3<bool>(global2.d.x, global3[_wgslsmith_index_u32(arg_0, 11u)], arg_1.a)), 9457u), var_0, vec2<u32>(2947u, arg_0), 837f), vec4<f32>(arg_3.x, arg_2, 501f, arg_3.x)).b.c, arg_0 >> (34370u % 32u))), func_2(Struct_1(arg_1.d.xww)), Struct_4(Struct_1(!arg_1.d.wzz), Struct_2(func_5(vec3<i32>(-19485i, 0i, global2.c.x), Struct_4(Struct_1(global2.d.zyy), Struct_2(Struct_1(vec3<bool>(true, arg_1.d.x, true)), arg_0, Struct_1(vec3<bool>(true, true, true)), arg_0), 1000f, vec2<u32>(arg_0, 1u), var_0)), _wgslsmith_clamp_u32(50387u, arg_0, 20676u), Struct_1(vec3<bool>(true, global3[_wgslsmith_index_u32(58065u, 11u)], true)), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(68647u, arg_0), vec2<u32>(arg_0, 3266u)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 58328u), vec2<u32>(4294967295u, 4294967295u))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u), 7u)]), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-298f, -363f, arg_3.x, arg_2)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(740f, -397f, -1249f, 1000f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(213f, 559f, -2082f, global0[_wgslsmith_index_u32(1u, 7u)]), vec4<f32>(186f, -526f, 1016f, arg_2), global2.d))))))).a, ~(~4294967295u), Struct_1(func_6(_wgslsmith_mult_u32(arg_0, 1u), Struct_2(Struct_1(arg_1.d.wzy), arg_0, func_4(Struct_3(true, true, vec2<i32>(u_input.a, 2147483647i), vec4<bool>(global2.d.x, false, true, arg_1.a)), Struct_4(Struct_1(vec3<bool>(global2.b, false, global3[_wgslsmith_index_u32(48233u, 11u)])), Struct_2(Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(51654u, 11u)], global2.d.x, global2.b)), arg_0, Struct_1(vec3<bool>(arg_1.a, global2.a, false)), arg_0), arg_3.x, vec2<u32>(13051u, 0u), arg_3.x), Struct_4(Struct_1(arg_1.d.yzx), Struct_2(Struct_1(arg_1.d.wyx), arg_0, Struct_1(vec3<bool>(false, global2.a, global3[_wgslsmith_index_u32(arg_0, 11u)])), arg_0), arg_3.x, vec2<u32>(arg_0, arg_0), arg_2), vec4<f32>(2087f, global0[_wgslsmith_index_u32(837u, 7u)], 744f, -1000f)).a, arg_0), func_4(arg_1, Struct_4(Struct_1(vec3<bool>(true, true, true)), Struct_2(Struct_1(arg_1.d.zzy), arg_0, Struct_1(global2.d.zzw), arg_0), 189f, vec2<u32>(4294967295u, 19256u), arg_3.x), func_4(arg_1, Struct_4(Struct_1(vec3<bool>(false, global2.d.x, global3[_wgslsmith_index_u32(arg_0, 11u)])), Struct_2(Struct_1(global2.d.zzy), arg_0, Struct_1(vec3<bool>(global2.b, global3[_wgslsmith_index_u32(arg_0, 11u)], global3[_wgslsmith_index_u32(arg_0, 11u)])), 1u), arg_2, vec2<u32>(4681u, arg_0), -1700f), Struct_4(Struct_1(global2.d.wzw), Struct_2(Struct_1(vec3<bool>(arg_1.d.x, false, global3[_wgslsmith_index_u32(arg_0, 11u)])), arg_0, Struct_1(vec3<bool>(global2.d.x, global3[_wgslsmith_index_u32(arg_0, 11u)], arg_1.b)), 4294967295u), arg_2, vec2<u32>(1u, arg_0), var_0), vec4<f32>(639f, global0[_wgslsmith_index_u32(arg_0, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], -1358f)), _wgslsmith_div_vec4_f32(vec4<f32>(442f, var_0, arg_2, global0[_wgslsmith_index_u32(34501u, 7u)]), vec4<f32>(-462f, 228f, global0[_wgslsmith_index_u32(arg_0, 7u)], var_0))).b).d.ywz), arg_0);
    let var_2 = 1i;
    var var_3 = _wgslsmith_mod_i32(18086i, var_2);
    var var_4 = var_1;
    return Struct_1(var_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_8(_wgslsmith_div_u32(0u, 1u), func_7(func_1(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], 185f, 1322f), _wgslsmith_dot_vec2_u32(vec2<u32>(61642u, 0u), vec2<u32>(1u, 76184u))), ~vec2<i32>(global2.c.x, 8583i), ~firstTrailingBit(vec3<u32>(1u, 1u, 4294967295u)), global2.d), -738f, vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(22509u, 1u, 6251u) & _wgslsmith_mult_u32(0u, 100944u), 7u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -343f))))), 1u, Struct_1(global2.d.xyx), ~4294967295u);
    var var_1 = !vec2<bool>(any(!(!global2.d.wyw)), var_0.d <= ~4294967295u);
    var var_2 = Struct_3(global3[_wgslsmith_index_u32(reverseBits(select(~var_0.b, var_0.d & 0u, -537f == global0[_wgslsmith_index_u32(1u, 7u)])) ^ _wgslsmith_mod_u32(min(func_3(var_0.c.a.yz, Struct_4(Struct_1(vec3<bool>(false, global3[_wgslsmith_index_u32(var_0.b, 11u)], true)), Struct_2(Struct_1(vec3<bool>(false, global2.d.x, var_0.c.a.x)), 0u, var_0.c, 5773u), global0[_wgslsmith_index_u32(var_0.d, 7u)], vec2<u32>(0u, 118879u), global0[_wgslsmith_index_u32(var_0.b, 7u)]), Struct_4(Struct_1(vec3<bool>(true, var_1.x, var_1.x)), Struct_2(var_0.a, 1u, Struct_1(var_0.c.a), 3153u), 2060f, vec2<u32>(4294967295u, var_0.d), global0[_wgslsmith_index_u32(643u, 7u)])).x, ~var_0.b), 15993u), 11u)], true, global2.c, !(!global2.d));
    var var_3 = ~_wgslsmith_dot_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b, var_0.d, var_0.d, 4294967295u), vec4<u32>(var_0.b, 4294967295u, var_0.d, var_0.d), vec4<u32>(0u, 19597u, var_0.d, var_0.b))), select(_wgslsmith_add_vec4_u32(~vec4<u32>(85745u, 34228u, 0u, var_0.d), abs(vec4<u32>(4294967295u, var_0.b, var_0.d, var_0.b))), vec4<u32>(4294967295u << (var_0.d % 32u), 1u, var_0.b, 1u), func_6(12904u, func_2(var_0.c).b, func_2(Struct_1(vec3<bool>(var_1.x, false, false))).b).d));
    var var_4 = Struct_3(true, u_input.a <= 1i, firstLeadingBit(select(abs(func_1(vec3<f32>(-3542f, -1169f, -688f), var_0.d).c), func_1(vec3<f32>(427f, global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(19130u, 7u)]), select(19724u, var_0.b, global3[_wgslsmith_index_u32(1u, 11u)])).c, true)), var_2.d);
    let var_5 = Struct_1(!(!vec3<bool>(false, true, !var_2.d.x)));
    var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(select(_wgslsmith_add_u32(var_0.b, var_0.b), var_0.b, true), ~var_0.b, ~(var_0.d >> (1u % 32u)), ~var_0.b), countOneBits(~(min(vec4<u32>(22629u, var_0.d, var_0.b, 1u), vec4<u32>(var_0.b, 4294967295u, 0u, 47103u)) | select(vec4<u32>(4294967295u, var_0.b, 0u, var_0.d), vec4<u32>(var_0.d, 0u, var_0.d, var_0.b), var_0.a.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.x, reverseBits(firstLeadingBit(max(vec4<i32>(global2.c.x, 40698i, var_4.c.x, var_4.c.x), vec4<i32>(var_2.c.x, var_2.c.x, var_4.c.x, 35068i)) & vec4<i32>(global2.c.x, u_input.a, 2147483647i, u_input.a))));
}

