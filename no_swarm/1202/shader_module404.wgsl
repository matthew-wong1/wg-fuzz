struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10>;

var<private> global1: array<Struct_3, 19>;

var<private> global2: array<f32, 24>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    let var_0 = true;
    global2 = array<f32, 24>();
    let var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 24u)];
    let var_2 = select(vec4<bool>(any(!global0[_wgslsmith_index_u32(reverseBits(4294967295u), 10u)]), !var_0, !(u_input.b.x <= u_input.b.x), false | !(!var_0)), vec4<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 24u)] * global2[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 24u)]))) >= _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(12122u, 24u)] * _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.c.x, 24u)], 241f)), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(~4294967295u, 24u)])) <= -363f, any(vec3<bool>(var_0, !var_0, all(vec3<bool>(true, false, var_0)))), var_0), true);
    global1 = array<Struct_3, 19>();
    return global2[_wgslsmith_index_u32(select(abs(1u), u_input.b.x, ~_wgslsmith_mod_i32(7297i, u_input.a.x) != reverseBits(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a))) & select(_wgslsmith_sub_u32(7996u, abs(select(161175u, u_input.c.x, var_2.x))), abs(1u), var_2.x), 24u)];
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec4<u32>) -> vec4<u32> {
    var var_0 = min(vec3<i32>(u_input.a.x, 0i, _wgslsmith_div_i32(u_input.a.x, 36367i)), ~(vec3<i32>(u_input.a.x, u_input.a.x, -53351i) << (vec3<u32>(32323u, 52315u, arg_0.b) % vec3<u32>(32u))) >> (arg_3.wxz % vec3<u32>(32u)));
    global1 = array<Struct_3, 19>();
    var var_1 = 63810i;
    var var_2 = !select(vec4<bool>(firstTrailingBit(u_input.a.x) > (var_0.x << (arg_3.x % 32u)), arg_2, all(select(vec4<bool>(arg_2, true, false, arg_2), vec4<bool>(false, true, arg_2, arg_2), false)), arg_2), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, arg_2, false, true), vec4<bool>(arg_2, false, arg_2, true), false), !vec4<bool>(true, arg_2, arg_2, arg_2)), false);
    return u_input.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_3 {
    global1 = array<Struct_3, 19>();
    var var_0 = Struct_2(func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.b.x, 24u)])) * _wgslsmith_f_op_f32(func_3())), ~arg_1.d, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-137f, -290f, arg_1.a, 1266f))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 6727u), vec2<u32>(1u, 91352u))), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(0u), abs(34446u)), 24u)])), false, _wgslsmith_div_vec4_u32(vec4<u32>(59289u, 1u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d, u_input.b.x), u_input.c)), countOneBits(vec4<u32>(u_input.b.x, 38058u, u_input.b.x, arg_1.b) | vec4<u32>(26252u, 8178u, arg_1.b, arg_1.b)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 1f)), ~_wgslsmith_sub_u32(~u_input.b.x, 67187u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1638f, arg_1.c.x, arg_1.c.x, -674f), vec4<f32>(389f, global2[_wgslsmith_index_u32(29348u, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)], arg_1.a)), arg_1.c)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_1.c, arg_1.c, arg_2.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(209f, -1277f, global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(arg_1.b, 24u)])))), _wgslsmith_clamp_u32(arg_1.d, ~44313u, ~func_4(Struct_1(arg_1.c.x, arg_1.d, vec4<f32>(-405f, 1494f, 1752f, arg_1.c.x), arg_1.b), 751f, false, vec4<u32>(70365u, u_input.c.x, arg_1.b, 82976u)).x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.c.xx) * _wgslsmith_f_op_vec2_f32(var_0.b.c.zz * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_1.c.xw * _wgslsmith_div_vec2_f32(vec2<f32>(-230f, var_0.b.a), arg_1.c.zz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, 1754f))))));
    global0 = array<vec2<bool>, 10>();
    let var_2 = any(vec3<bool>(true && arg_2.x, !(_wgslsmith_f_op_f32(trunc(340f)) < _wgslsmith_f_op_f32(170f + 2279f)), !all(arg_2.zz)));
    return Struct_3(Struct_1(-2488f, u_input.b.x, _wgslsmith_f_op_vec4_f32(var_0.b.c * vec4<f32>(-920f, _wgslsmith_f_op_f32(max(-245f, -1000f)), 155f, _wgslsmith_f_op_f32(448f + -1899f))), 1u), ~_wgslsmith_add_u32(~arg_1.b, ~51247u >> (min(1u, arg_1.b) % 32u)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    var var_0 = true;
    var_0 = select(true, true, true);
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.a.a, arg_0.a.c.x), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 24u)]))) + _wgslsmith_f_op_f32(f32(-1f) * -667f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a)), _wgslsmith_f_op_f32(select(987f, _wgslsmith_f_op_f32(-122f + -656f), any(vec2<bool>(false, false))))))));
    let var_3 = arg_1;
    return func_2(u_input.a.yx, func_2(~_wgslsmith_mod_vec2_i32(u_input.a.zz, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -1i), vec2<i32>(u_input.a.x, u_input.a.x))), Struct_1(_wgslsmith_f_op_f32(max(821f, arg_1.a.a)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(24332u, var_3.b, 0u, 4294967295u)), vec4<u32>(0u, 1u, u_input.c.x, var_3.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.a.c + vec4<f32>(arg_1.a.a, arg_1.a.c.x, 818f, 958f))), 5227u), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))).a, vec3<bool>(true, true, true));
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: vec4<bool>) -> vec4<i32> {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, reverseBits(0u)) << (4294967295u % 32u), firstTrailingBit(~1u), _wgslsmith_mult_u32(u_input.c.x | ~u_input.c.x, ~min(u_input.b.x, 6053u)));
    var_0 = vec3<u32>(~_wgslsmith_add_u32(u_input.b.x, func_2(vec2<i32>(u_input.a.x, u_input.a.x), Struct_1(-219f, arg_1.a.b, vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], -395f, 451f, 1595f), arg_1.a.d), vec3<bool>(arg_0, arg_2.x, arg_0)).a.b & var_0.x), countOneBits(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.x ^ arg_1.b, ~4294967295u), 32403u, ~var_0.x)), countOneBits(~20789u) ^ ~u_input.b.x);
    global2 = array<f32, 24>();
    let var_1 = u_input.a.x;
    let var_2 = arg_1;
    return vec4<i32>(2147483647i, -56602i, _wgslsmith_add_i32(u_input.a.x, ~_wgslsmith_div_i32(2147483647i, u_input.a.x)), -_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, var_1, var_1), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, -1i), vec4<i32>(-1i, u_input.a.x, -31820i, 0i)), var_1, ~var_1)));
}

fn func_7(arg_0: vec4<i32>, arg_1: i32) -> Struct_2 {
    var var_0 = !(u_input.b.x > min(func_5(Struct_3(Struct_1(global2[_wgslsmith_index_u32(u_input.c.x, 24u)], u_input.c.x, vec4<f32>(global2[_wgslsmith_index_u32(1u, 24u)], 1726f, global2[_wgslsmith_index_u32(58078u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]), 4294967295u), u_input.c.x), Struct_3(Struct_1(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 0u, vec4<f32>(-298f, global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(9954u, 24u)], global2[_wgslsmith_index_u32(u_input.c.x, 24u)]), u_input.b.x), u_input.c.x), Struct_3(Struct_1(global2[_wgslsmith_index_u32(0u, 24u)], 1u, vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 1026f, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 776f), u_input.b.x), 25793u)).a.b, 4122u));
    global1 = array<Struct_3, 19>();
    let var_1 = Struct_2(~u_input.b, func_5(Struct_3(func_5(func_5(global1[_wgslsmith_index_u32(u_input.c.x, 19u)], global1[_wgslsmith_index_u32(u_input.c.x, 19u)], Struct_3(Struct_1(468f, 40420u, vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], -586f, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], -230f), 15634u), u_input.c.x)), global1[_wgslsmith_index_u32(~u_input.b.x, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)]).a, abs(55100u)), global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(min(~1u, 1u), 19u)]).a);
    let var_2 = func_6(var_1.a.x == var_1.b.b, func_5(global1[_wgslsmith_index_u32(func_5(global1[_wgslsmith_index_u32(~(~42296u), 19u)], global1[_wgslsmith_index_u32(39694u, 19u)], global1[_wgslsmith_index_u32(reverseBits(~var_1.a.x), 19u)]).a.b, 19u)], Struct_3(Struct_1(_wgslsmith_f_op_f32(round(var_1.b.a)), ~var_1.b.b, vec4<f32>(993f, -607f, -181f, var_1.b.a), _wgslsmith_div_u32(u_input.c.x, 64567u)), func_2(-arg_0.ww, func_2(vec2<i32>(arg_1, 10927i), var_1.b, vec3<bool>(true, true, false)).a, vec3<bool>(true, true, true)).b), Struct_3(Struct_1(_wgslsmith_f_op_f32(845f + global2[_wgslsmith_index_u32(u_input.b.x, 24u)]), 49963u, _wgslsmith_f_op_vec4_f32(var_1.b.c - var_1.b.c), 18765u), _wgslsmith_dot_vec3_u32(func_4(var_1.b, -484f, false, u_input.b).xxz, ~vec3<u32>(0u, 33087u, u_input.b.x)))), vec4<bool>(true, false, all(vec2<bool>(select(false, false, false), all(vec3<bool>(true, false, false)))), !select(true, true, true))).x;
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(var_1.a.x, 24u)])) - _wgslsmith_f_op_vec2_f32(var_1.b.c.yy - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(0u, 24u)], -252f) * vec2<f32>(global2[_wgslsmith_index_u32(var_1.b.d, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)])))))), vec2<f32>(-160f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 24u)]) - global2[_wgslsmith_index_u32(var_1.a.x, 24u)]))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(~var_1.a.x)), 20001u), 10u)]));
    return var_1;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: f32, arg_3: f32) -> vec2<bool> {
    var var_0 = func_7(func_6(arg_0.x, func_5(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], func_2(_wgslsmith_mod_vec2_i32(u_input.a.zy, vec2<i32>(-2147483647i, 26146i)), Struct_1(global2[_wgslsmith_index_u32(u_input.c.x, 24u)], u_input.c.x, vec4<f32>(-179f, -946f, -1199f, 876f), u_input.b.x), arg_0), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, func_4(Struct_1(634f, 1u, vec4<f32>(global2[_wgslsmith_index_u32(0u, 24u)], -1189f, arg_2, arg_1), u_input.b.x), 662f, arg_0.x, u_input.b).x), 19u)]), select(select(!vec4<bool>(true, true, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(false, arg_0.x, true, false), arg_0.x)), !(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), vec4<bool>(true, false, true, arg_0.x))), u_input.a.x);
    global2 = array<f32, 24>();
    var var_1 = func_5(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(u_input.c.x, 11000u) >> (u_input.c.x % 32u)) & u_input.c.x, 19u)], global1[_wgslsmith_index_u32(var_0.a.x, 19u)], Struct_3(var_0.b, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.ww, u_input.b.xx), vec2<u32>(1u, _wgslsmith_add_u32(u_input.b.x, 7823u)))));
    var var_2 = var_0.b;
    global2 = array<f32, 24>();
    return vec2<bool>(arg_0.x, any(!vec4<bool>(arg_0.x && false, true, u_input.a.x > -12287i, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(all(func_1(vec3<bool>(false, true, false), -1961f, -808f, global2[_wgslsmith_index_u32(37599u, 24u)])), true, firstLeadingBit(2147483647i) <= _wgslsmith_add_i32(2147483647i, u_input.a.x)), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), (u_input.a.x | u_input.a.x) >= _wgslsmith_add_i32(u_input.a.x, u_input.a.x));
    let var_1 = func_7(vec4<i32>(-1i, 28106i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.a.x, u_input.a.x), -u_input.a.xy), vec2<i32>(37028i, u_input.a.x)), _wgslsmith_clamp_i32(2147483647i, u_input.a.x << (~16549u % 32u), _wgslsmith_div_i32(1i, reverseBits(u_input.a.x)))), _wgslsmith_clamp_i32(-2147483647i, ~_wgslsmith_mult_i32(8058i, 0i), u_input.a.x));
    let var_2 = func_7(~(-vec4<i32>(firstLeadingBit(10865i), -38798i, -11928i, u_input.a.x)), -1i);
    global2 = array<f32, 24>();
    let var_3 = Struct_1(-160f, func_4(Struct_1(-794f, var_1.a.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(var_1.b.c, var_2.b.c)), vec4<f32>(355f, -849f, var_2.b.a, 873f), all(var_0.xy))), var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.b.a, 769f)), -1000f)), func_1(select(vec3<bool>(var_0.x, var_0.x, false), var_0, var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1563f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a)), 129f).x, countOneBits(~(~u_input.b))).x, _wgslsmith_f_op_vec4_f32(-var_1.b.c), select(~var_2.a.x, var_2.a.x, !(var_0.x && true)));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x & -(~u_input.a.x));
}

