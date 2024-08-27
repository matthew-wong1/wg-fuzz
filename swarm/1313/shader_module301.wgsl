struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, 1000f, vec2<f32>(-1000f, -987f));

var<private> global1: Struct_4;

var<private> global2: array<bool, 6> = array<bool, 6>(true, true, false, true, false, false);

var<private> global3: Struct_1 = Struct_1(4294967295u, -342f, vec2<f32>(-192f, -1253f));

var<private> global4: array<f32, 4> = array<f32, 4>(-1223f, 1285f, 363f, -1000f);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec3<u32>) -> vec4<bool> {
    let var_0 = arg_2.c;
    global0 = arg_0;
    let var_1 = min(~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(global0.a, 1u, arg_2.c.a, 0u)), firstLeadingBit(u_input.b)), ~vec4<u32>(18662u << (arg_2.c.a % 32u), 1u, arg_0.a, 1u)) ^ ~abs(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.c.a, 36318u, arg_3.x, 36534u), u_input.b)));
    let var_2 = Struct_2(arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -524f))), arg_0.a);
    var var_3 = vec2<f32>(global3.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(arg_3.x, 4u)], -327f, false)) - -1854f), 565f)));
    return !global1.c;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: f32) -> vec2<bool> {
    global2 = array<bool, 6>();
    global4 = array<f32, 4>();
    let var_0 = Struct_4(-vec2<i32>(_wgslsmith_add_i32(global1.a.x << (4294967295u % 32u), -2147483647i), u_input.a.x), arg_0.yx, arg_0);
    var var_1 = Struct_3(select(global1.c.zwx, vec3<bool>(false, true, true), !func_3(Struct_1(4294967295u, 1028f, vec2<f32>(-1307f, 779f)), -global1.a, Struct_3(vec3<bool>(var_0.c.x, global1.b.x, arg_0.x), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 6u)]), Struct_1(u_input.b.x, -629f, global0.c), Struct_1(global3.a, global3.c.x, global0.c), vec2<bool>(true, global1.b.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(global3.a, global0.a, global3.a), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))).yyx), func_3(Struct_1(_wgslsmith_sub_u32(~global0.a, global0.a), _wgslsmith_f_op_f32(abs(-168f)), global0.c), abs(-(~vec2<i32>(u_input.a.x, -16339i))), Struct_3(!vec3<bool>(true, var_0.c.x, false), arg_0.zx, Struct_1(select(global3.a, 0u, global1.c.x), _wgslsmith_div_f32(783f, -2332f), _wgslsmith_f_op_vec2_f32(global0.c + global3.c)), Struct_1(0u >> (1u % 32u), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 4u)] - global0.b), global3.c), vec2<bool>(var_0.c.x, arg_0.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, 6760u), vec3<u32>(global0.a, global0.a, 12400u)) << (~u_input.b.wzx % vec3<u32>(32u))).zx, Struct_1(59200u, -1038f, vec2<f32>(-516f, _wgslsmith_f_op_f32(-308f + _wgslsmith_f_op_f32(-arg_2)))), Struct_1(0u, _wgslsmith_f_op_f32(-1992f * _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~31162u, 4u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global0.c)) - global3.c) - _wgslsmith_f_op_vec2_f32(select(global3.c, _wgslsmith_f_op_vec2_f32(min(global0.c, vec2<f32>(arg_2, global4[_wgslsmith_index_u32(u_input.b.x, 4u)]))), var_0.b)))), !(!vec2<bool>(!var_0.b.x, true)));
    let var_2 = ~(~(~59216u));
    return select(arg_0.yz, !vec2<bool>(any(var_0.c.yxw) | all(vec2<bool>(global2[_wgslsmith_index_u32(var_2, 6u)], arg_0.x)), select(var_1.a.x, true, any(vec4<bool>(true, true, false, global1.c.x)))), select(select(func_3(Struct_1(u_input.b.x, -886f, vec2<f32>(-748f, -131f)), u_input.a.xx ^ vec2<i32>(0i, var_0.a.x), Struct_3(vec3<bool>(true, var_1.a.x, var_1.b.x), vec2<bool>(false, var_0.c.x), var_1.c, Struct_1(var_1.d.a, var_1.d.c.x, global0.c), global1.b), u_input.b.wwy).yy, vec2<bool>(true, true), true | global1.b.x), select(vec2<bool>(func_3(Struct_1(7766u, -1290f, vec2<f32>(-1328f, arg_2)), vec2<i32>(-2846i, var_0.a.x), Struct_3(arg_0.zzy, arg_0.yy, var_1.d, Struct_1(u_input.b.x, arg_2, var_1.d.c), vec2<bool>(true, false)), u_input.b.wzz).x, !var_1.b.x), var_1.b, !(!global1.b)), arg_0.zw));
}

fn func_2() -> Struct_4 {
    global2 = array<bool, 6>();
    let var_0 = Struct_4(global1.a, select(func_4(select(func_3(Struct_1(global0.a, global0.b, vec2<f32>(global3.c.x, -1564f)), vec2<i32>(u_input.a.x, -38115i), Struct_3(vec3<bool>(false, global1.b.x, false), global1.b, Struct_1(u_input.b.x, 1139f, vec2<f32>(-801f, 128f)), Struct_1(global0.a, global0.c.x, global0.c), vec2<bool>(false, false)), u_input.b.wzy), !global1.c, !global1.c), _wgslsmith_add_vec2_i32(countOneBits(global1.a), _wgslsmith_mod_vec2_i32(vec2<i32>(global1.a.x, -31519i), u_input.a.yy)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -281f), global3.c.x))), func_3(Struct_1(global0.a ^ global3.a, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4801u, 4u)]), vec2<f32>(global3.c.x, global4[_wgslsmith_index_u32(global0.a, 4u)])), vec2<i32>(1i, -34884i), Struct_3(vec3<bool>(global1.c.x, true, global1.b.x), select(global1.c.zw, global1.c.xw, global1.b), Struct_1(global0.a, global4[_wgslsmith_index_u32(global0.a, 4u)], vec2<f32>(global4[_wgslsmith_index_u32(global0.a, 4u)], 620f)), Struct_1(68517u, global4[_wgslsmith_index_u32(u_input.b.x, 4u)], vec2<f32>(global4[_wgslsmith_index_u32(451u, 4u)], 1427f)), global1.c.ww), vec3<u32>(~global3.a, 41572u << (global3.a % 32u), global3.a)).xx, global1.b), select(vec4<bool>(464f == _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 4u)]), func_4(func_3(Struct_1(global3.a, global0.c.x, global0.c), vec2<i32>(-2147483647i, -2147483647i), Struct_3(vec3<bool>(global2[_wgslsmith_index_u32(global0.a, 6u)], true, global2[_wgslsmith_index_u32(u_input.b.x, 6u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], global1.c.x), Struct_1(global3.a, global3.b, vec2<f32>(global0.b, global4[_wgslsmith_index_u32(84793u, 4u)])), Struct_1(u_input.b.x, global4[_wgslsmith_index_u32(global0.a, 4u)], vec2<f32>(362f, -2322f)), global1.b), u_input.b.zwy), -global1.a, _wgslsmith_f_op_f32(-541f * global0.c.x)).x, false, any(global1.c.zwx)), global1.c, func_4(!select(global1.c, global1.c, global1.c.x), ~(-vec2<i32>(u_input.a.x, -1i)), _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(global4[_wgslsmith_index_u32(0u, 4u)], global0.b))).x));
    var var_1 = ~(var_0.a.x >> (max(~firstLeadingBit(global0.a), global0.a) % 32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, -167f)) * global3.c)) + global0.c)));
    var var_3 = Struct_2(Struct_1(countOneBits(1u), global0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(789f, global0.b) - global3.c)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(114f, 343f)))))), _wgslsmith_f_op_f32(select(global3.b, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(37275u, u_input.b.x)), _wgslsmith_sub_u32(global3.a, _wgslsmith_mod_u32(47069u, global0.a))), 4u)], any(vec4<bool>(true, func_3(Struct_1(4294967295u, -335f, global0.c), var_0.a, Struct_3(var_0.c.yzx, var_0.b, Struct_1(global0.a, global3.c.x, global3.c), Struct_1(u_input.b.x, 802f, global0.c), vec2<bool>(var_0.b.x, global1.b.x)), u_input.b.xyx).x, all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], global2[_wgslsmith_index_u32(global3.a, 6u)])), true)))), ~global3.a);
    return var_0;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = vec4<i32>(-reverseBits(~(~u_input.a.x)), abs(arg_2.x), _wgslsmith_add_i32(~(_wgslsmith_dot_vec4_i32(vec4<i32>(5107i, global1.a.x, 0i, 5230i), arg_2) | max(arg_2.x, -2147483647i)), countOneBits(_wgslsmith_add_i32(max(0i, global1.a.x), -2147483647i))), select(u_input.a.x, global1.a.x << (_wgslsmith_mult_u32(~u_input.b.x, 0u) % 32u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, global3.c.x) - -2042f) <= -289f));
    let var_1 = true;
    let var_2 = func_2();
    var var_3 = ~reverseBits(max(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_2.a.x, arg_2.x, var_0.x), vec4<i32>(var_2.a.x, -33919i, var_2.a.x, u_input.a.x)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.x, var_0.x, -83306i, 2147483647i), vec4<i32>(2147483647i, u_input.a.x, -1i, global1.a.x)), ~vec4<i32>(-2147483647i, var_2.a.x, 14967i, u_input.a.x), func_3(Struct_1(u_input.b.x, global3.b, global3.c), vec2<i32>(-6473i, global1.a.x), Struct_3(vec3<bool>(var_1, false, true), global1.b, Struct_1(global3.a, global4[_wgslsmith_index_u32(55174u, 4u)], global3.c), Struct_1(global3.a, global3.b, vec2<f32>(global3.b, global0.c.x)), vec2<bool>(true, global1.b.x)), vec3<u32>(global3.a, global3.a, u_input.b.x)))));
    global2 = array<bool, 6>();
    return Struct_1(~(~(~arg_0)) ^ abs(max(70218u, ~global0.a)), -1057f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global0.c - vec2<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 4u)], -755f)), _wgslsmith_f_op_vec2_f32(-global3.c), var_2.b))));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: i32) -> Struct_1 {
    global3 = func_1(_wgslsmith_add_u32(~1u, ~(4294967295u & global0.a)), vec4<bool>(true, !global2[_wgslsmith_index_u32(1u, 6u)], true, global1.b.x), vec4<i32>(abs(arg_0) & _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, 17947i) ^ u_input.a.yx, vec2<i32>(arg_2.x, arg_3) >> (vec2<u32>(arg_1.c, arg_1.a.a) % vec2<u32>(32u))), -3105i, ~(-2147483647i), -1i | arg_3));
    var var_0 = firstLeadingBit(min(~vec2<i32>(49519i << (global0.a % 32u), -33029i), vec2<i32>(_wgslsmith_mult_i32(global1.a.x, -6542i), arg_2.x)));
    var var_1 = arg_1.a.b;
    global2 = array<bool, 6>();
    var var_2 = -(-(~vec3<i32>(2147483647i, -55301i, arg_3)) & vec3<i32>(var_0.x, _wgslsmith_div_i32(arg_3, arg_2.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.x, u_input.a.x, arg_2.x, -11848i), vec4<i32>(arg_3, global1.a.x, -53617i, -1i)), vec4<i32>(global1.a.x, arg_3, global1.a.x, u_input.a.x))));
    return func_1(_wgslsmith_mod_u32(0u >> (~abs(4294967295u) % 32u), ~abs(arg_1.c) >> (u_input.b.x % 32u)), global1.c, vec4<i32>(-63641i, abs(-arg_3), abs(min(~var_0.x, 10207i)), _wgslsmith_dot_vec3_i32(abs(u_input.a), _wgslsmith_mult_vec3_i32(u_input.a, _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(arg_2.x, var_2.x, -41035i), u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(15953i, Struct_2(func_1(~(~global3.a), global1.c, firstLeadingBit(vec4<i32>(u_input.a.x, global1.a.x, 79507i, u_input.a.x))), global4[_wgslsmith_index_u32(func_1(select(global3.a, global3.a, true) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, u_input.b.x, u_input.b.x, global3.a), u_input.b), !(!global1.c), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 27861i, -2147483647i, global1.a.x), vec4<i32>(-16212i, u_input.a.x, u_input.a.x, -61743i)))).a, 4u)], 19349u), ~countOneBits(vec2<i32>(u_input.a.x, global1.a.x)) | ~vec2<i32>(-1i, ~(-38273i)), -22542i);
    let var_0 = Struct_2(Struct_1(~(~48425u), _wgslsmith_f_op_f32(round(-2260f)), vec2<f32>(_wgslsmith_f_op_f32(-1075f * _wgslsmith_div_f32(global3.c.x, global0.c.x)), 1368f)), _wgslsmith_f_op_f32(-global0.b), 62741u);
    global3 = var_0.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.c.x))));
    let var_2 = (~min(-41937i, _wgslsmith_mod_i32(64764i, global1.a.x)) | abs(_wgslsmith_mod_i32(2147483647i, 5324i))) & -59937i;
    var var_3 = var_0.a;
    var var_4 = var_0;
    let var_5 = !(!(!(!func_3(Struct_1(0u, 455f, global3.c), u_input.a.zz, Struct_3(global1.c.www, vec2<bool>(false, true), Struct_1(var_0.c, -262f, vec2<f32>(124f, var_0.a.b)), var_4.a, vec2<bool>(global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(global3.a, 6u)])), u_input.b.yxx))));
    var var_6 = !var_5.wx;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~func_5(~66451i, Struct_2(Struct_1(var_3.a, global4[_wgslsmith_index_u32(global0.a, 4u)], global3.c), 772f, var_0.c), vec2<i32>(u_input.a.x, 4234i) | vec2<i32>(2147483647i, 0i), ~(-54050i)).a, _wgslsmith_div_u32(abs(u_input.b.x) | ~5436u, 10424u), global3.a), -(~(~u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(func_1(global0.a, var_5, vec4<i32>(global1.a.x, global1.a.x, 2147483647i, var_2)).c.x, _wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1877f, -619f, 1039f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(1u, 4u)], -953f, var_3.b) - vec3<f32>(global4[_wgslsmith_index_u32(var_3.a, 4u)], var_1, -1253f)))))), var_0.a.b, abs(~_wgslsmith_mod_i32(u_input.a.x, var_2)));
}

