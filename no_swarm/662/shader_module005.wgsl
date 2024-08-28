struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 27>;

var<private> global2: bool = false;

var<private> global3: vec2<i32> = vec2<i32>(1648i, 2147483647i);

var<private> global4: array<u32, 18>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<i32>, arg_3: vec2<bool>) -> f32 {
    global4 = array<u32, 18>();
    let var_0 = 26053i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global0.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1345f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-1402f * global0.b.x)))), global0.b.x));
    let var_2 = 280f;
    global4 = array<u32, 18>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    let var_0 = 12863u;
    let var_1 = global0.b.x;
    let var_2 = arg_0.b;
    global2 = !any(select(vec2<bool>(any(vec3<bool>(arg_0.d, false, arg_0.d)), true), vec2<bool>(-673f == var_2.b.x, -786f <= var_2.b.x), select(!vec2<bool>(false, arg_0.d), vec2<bool>(arg_0.d, true), arg_0.d)));
    global2 = _wgslsmith_mult_i32(global0.a.x, var_2.a.x) >= arg_0.b.a.x;
    return select(firstLeadingBit(_wgslsmith_div_vec4_i32(arg_0.b.a ^ vec4<i32>(arg_0.b.a.x, var_2.a.x, -2784i, u_input.b), vec4<i32>(global0.a.x, arg_0.b.a.x, var_2.a.x, var_2.a.x))), vec4<i32>(-(arg_0.b.a.x >> (global0.d.x % 32u)), i32(-1i) * -var_2.a.x, max(0i & u_input.b, global3.x), global0.a.x), vec4<bool>(arg_0.d, any(vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d)), any(vec2<bool>(arg_0.d, arg_0.d)) != arg_0.d, true)) << (var_2.d % vec4<u32>(32u));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_4 {
    global2 = all(vec3<bool>(true, true, -(u_input.b & -54373i) > (abs(u_input.b) << (select(global4[_wgslsmith_index_u32(4294967295u, 18u)], 4294967295u, true) % 32u))));
    global0 = Struct_1(firstLeadingBit(max(_wgslsmith_div_vec4_i32(~vec4<i32>(global3.x, arg_2.b.a.x, arg_3.b.a.x, 0i), func_3(arg_2)), vec4<i32>(0i, ~arg_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-8052i, -40313i, 2147483647i), vec3<i32>(-43967i, global3.x, -9273i)), firstLeadingBit(arg_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(-943f * -1092f), -896f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(-627f + _wgslsmith_f_op_f32(1f * -3233f))), arg_2.b.d.xx, ~vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(1u, 27u)], arg_3.b.d.x, 52238u, 0u)), vec4<u32>(arg_2.c, 25483u, arg_2.c, u_input.a) >> (arg_0 % vec4<u32>(32u))), ~4294967295u, arg_2.c, 132299u));
    let var_0 = _wgslsmith_f_op_f32(-133f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.b.x + -944f) - _wgslsmith_f_op_f32(round(arg_2.b.b.x))));
    global2 = true;
    global0 = Struct_1(~global0.a, _wgslsmith_f_op_vec4_f32(-arg_2.b.b), arg_2.b.d.xx, vec4<u32>(global4[_wgslsmith_index_u32(7052u, 18u)], firstTrailingBit(u_input.a) & 1u, _wgslsmith_mod_u32(countOneBits(global4[_wgslsmith_index_u32(arg_0.x, 18u)] & global4[_wgslsmith_index_u32(global0.d.x, 18u)]), min(firstTrailingBit(global0.c.x), abs(22472u))), 58613u | _wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 27u)]), vec2<u32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.c, 27u)], 18u)], 4294967295u), arg_2.d), firstLeadingBit(arg_2.b.d.xw))));
    return Struct_4(arg_3, !select(all(!vec4<bool>(true, arg_3.a, arg_3.a, false)), false, arg_3.a && true));
}

fn func_4(arg_0: Struct_4) -> f32 {
    let var_0 = func_2(arg_0.a.b.d, _wgslsmith_clamp_vec2_i32(arg_0.a.b.a.zw, global0.a.zx, -(~vec2<i32>(arg_0.a.b.a.x, global0.a.x))), Struct_3(550f, Struct_1(arg_0.a.b.a & vec4<i32>(-31190i, global3.x, 0i, arg_0.a.b.a.x), vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.a.b.b.x, arg_0.a.b.b.x)), global0.b.x, _wgslsmith_f_op_f32(arg_0.a.b.b.x * arg_0.a.b.b.x), _wgslsmith_div_f32(arg_0.a.b.b.x, 351f)), func_2(vec4<u32>(0u, 1u, 1u, global1[_wgslsmith_index_u32(1u, 27u)]), ~arg_0.a.b.a.zz, Struct_3(global0.b.x, Struct_1(arg_0.a.b.a, vec4<f32>(arg_0.a.b.b.x, 467f, -1381f, arg_0.a.b.b.x), global0.c, global0.d), arg_0.a.b.c.x, arg_0.b, global0.b.wz), Struct_2(arg_0.b, arg_0.a.b)).a.b.d.wx, vec4<u32>(arg_0.a.b.d.x, ~u_input.a, global4[_wgslsmith_index_u32(~1u, 18u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(9885u, 0u, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.a.b.c.x, 27u)], 18u)]), global0.d.yzz), 18u)])), firstTrailingBit(4294967295u), arg_0.b, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(floor(463f)))))), arg_0.a).a.b.c;
    global1 = array<u32, 27>();
    let var_1 = vec3<bool>(all(select(!select(vec3<bool>(arg_0.a.a, arg_0.b, true), vec3<bool>(true, arg_0.a.a, arg_0.a.a), vec3<bool>(arg_0.b, arg_0.b, arg_0.a.a)), !vec3<bool>(arg_0.b, arg_0.a.a, false), true)), arg_0.a.a, all(!select(select(vec2<bool>(true, false), vec2<bool>(arg_0.a.a, false), vec2<bool>(arg_0.b, false)), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-833f + arg_0.a.b.b.x))))), func_2(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_mult_u32(12761u, global0.d.x), ~37757u, ~4294967295u), global0.d), abs(reverseBits(vec2<i32>(-6534i, arg_0.a.b.a.x))), Struct_3(arg_0.a.b.b.x, arg_0.a.b, 1u, all(var_1.yx), global0.b.yx), func_2(vec4<u32>(66390u >> (0u % 32u), arg_0.a.b.c.x, 0u, ~global0.d.x), max(~vec2<i32>(global3.x, global0.a.x), firstLeadingBit(vec2<i32>(1i, 1i))), Struct_3(-163f, Struct_1(vec4<i32>(-2147483647i, -1333i, arg_0.a.b.a.x, global0.a.x), vec4<f32>(-307f, -495f, global0.b.x, 1083f), global0.c, vec4<u32>(global4[_wgslsmith_index_u32(arg_0.a.b.d.x, 18u)], 4294967295u, 54374u, global0.c.x)), select(u_input.a, global1[_wgslsmith_index_u32(global0.d.x, 27u)], arg_0.a.a), arg_0.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, arg_0.a.b.b.x))), func_2(vec4<u32>(global0.d.x, global4[_wgslsmith_index_u32(0u, 18u)], 0u, 4294967295u), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 64161i), global0.a.zx), Struct_3(global0.b.x, Struct_1(vec4<i32>(global3.x, 35963i, global3.x, 1i), arg_0.a.b.b, arg_0.a.b.c, global0.d), 1u, arg_0.a.a, vec2<f32>(609f, -377f)), Struct_2(true, Struct_1(global0.a, vec4<f32>(-1354f, arg_0.a.b.b.x, 726f, global0.b.x), vec2<u32>(u_input.a, var_0.x), global0.d))).a).a).a.b, countOneBits(_wgslsmith_mod_u32(var_0.x >> (global4[_wgslsmith_index_u32(global0.c.x, 18u)] % 32u), ~512u)) << (1u % 32u), func_2(~vec4<u32>(~u_input.a, var_0.x, select(global4[_wgslsmith_index_u32(13828u, 18u)], u_input.a, var_1.x), 1u), _wgslsmith_mod_vec2_i32(arg_0.a.b.a.zw, -global0.a.wx), Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.b.b.x * 383f))), func_2(_wgslsmith_mult_vec4_u32(global0.d, arg_0.a.b.d), arg_0.a.b.a.zz, Struct_3(-1000f, arg_0.a.b, 4294967295u, true, vec2<f32>(global0.b.x, arg_0.a.b.b.x)), func_2(vec4<u32>(global0.d.x, 82073u, global1[_wgslsmith_index_u32(global0.d.x, 27u)], 21138u), arg_0.a.b.a.xw, Struct_3(779f, Struct_1(vec4<i32>(u_input.b, global3.x, -34339i, u_input.b), vec4<f32>(global0.b.x, 1223f, 1505f, arg_0.a.b.b.x), var_0, vec4<u32>(39336u, 0u, u_input.a, 124u)), var_0.x, true, arg_0.a.b.b.zy), Struct_2(false, Struct_1(vec4<i32>(arg_0.a.b.a.x, -1i, -2147483647i, global3.x), vec4<f32>(1202f, global0.b.x, arg_0.a.b.b.x, 1058f), var_0, vec4<u32>(1u, 4294967295u, 1u, var_0.x)))).a).a.b, abs(0u), !any(var_1), vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(arg_0.a.b.b.x + 1277f))), Struct_2(firstTrailingBit(21602i) > ~39142i, Struct_1(max(global0.a, arg_0.a.b.a), vec4<f32>(1359f, -158f, -1441f, -1277f), ~var_0, vec4<u32>(var_0.x, arg_0.a.b.d.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 1u)))).a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(func_2(vec4<u32>(arg_0.a.b.c.x, 73424u, u_input.a, arg_0.a.b.c.x), vec2<i32>(0i, u_input.b), Struct_3(arg_0.a.b.b.x, arg_0.a.b, var_0.x, true, global0.b.zx), func_2(arg_0.a.b.d, vec2<i32>(0i, -6480i), Struct_3(279f, Struct_1(vec4<i32>(48018i, global0.a.x, global0.a.x, global3.x), vec4<f32>(global0.b.x, -1567f, arg_0.a.b.b.x, 1131f), global0.d.xy, vec4<u32>(global0.c.x, 17307u, 18813u, global1[_wgslsmith_index_u32(0u, 27u)])), 0u, arg_0.a.a, vec2<f32>(global0.b.x, global0.b.x)), Struct_2(false, Struct_1(vec4<i32>(0i, -1i, 1i, -36704i), vec4<f32>(global0.b.x, arg_0.a.b.b.x, 1000f, 395f), vec2<u32>(55477u, 1341u), vec4<u32>(arg_0.a.b.c.x, 1u, arg_0.a.b.c.x, 23563u)))).a).a.b.b.x, global0.b.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a.b.b.x, global0.b.x), vec2<f32>(429f, global0.b.x), vec2<bool>(true, true))))))));
    global4 = array<u32, 18>();
    return -737f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global0.b.xxy, _wgslsmith_f_op_f32(trunc(1904f)), vec2<i32>(2106i, global3.x), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))) + 684f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global0.b.x, _wgslsmith_f_op_f32(1171f * global0.b.x))))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(vec4<u32>(u_input.a, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(499u, 27u)], 18u)], 18u)], 25938u, u_input.a), global0.a.wz, Struct_3(global0.b.x, Struct_1(vec4<i32>(4595i, u_input.b, u_input.b, u_input.b), vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), global0.d.yw, global0.d), 4294967295u, false, vec2<f32>(377f, global0.b.x)), Struct_2(true, Struct_1(vec4<i32>(0i, global3.x, 1i, global3.x), vec4<f32>(1476f, global0.b.x, global0.b.x, global0.b.x), vec2<u32>(u_input.a, 4294967295u), global0.d))))) + global0.b.x) - _wgslsmith_f_op_f32(-global0.b.x)), Struct_1(vec4<i32>(global0.a.x, -24559i, _wgslsmith_dot_vec3_i32(vec3<i32>(22287i, global0.a.x, global3.x), global0.a.xxw), _wgslsmith_div_i32(_wgslsmith_mod_i32(global0.a.x, 14506i), ~global3.x)), global0.b, ~global0.c, _wgslsmith_sub_vec4_u32(vec4<u32>(reverseBits(u_input.a), 1u, ~global4[_wgslsmith_index_u32(0u, 18u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(3696u, 18u)], 18u)]), vec4<u32>(0u, global1[_wgslsmith_index_u32(~4526u, 27u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26521u, 27u)], 27u)], _wgslsmith_mod_u32(global0.c.x, global1[_wgslsmith_index_u32(global0.d.x, 27u)])))), abs(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(global0.d.wy, vec2<u32>(6612u, 0u), true), min(global0.c, global0.c)), 18u)]) | _wgslsmith_add_u32(~_wgslsmith_mod_u32(global0.c.x, global1[_wgslsmith_index_u32(1u, 27u)]), firstTrailingBit(1u)), all(vec4<bool>(!all(vec2<bool>(true, true)), true, -2001f <= _wgslsmith_f_op_f32(global0.b.x - 500f), true)), global0.b.wz);
    var var_2 = _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -596f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(global0.b.yww, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1069f, global0.b.x) + var_1.e.x))), vec2<i32>(i32(-1i) * -36198i, u_input.b), select(select(!vec2<bool>(false, var_1.d), vec2<bool>(true, true), !var_1.d), vec2<bool>(var_1.d, true), vec2<bool>(true, var_1.d)))), abs(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~countOneBits(global1[_wgslsmith_index_u32(var_1.c, 27u)]), 27u)], 27u)]), 0u, _wgslsmith_clamp_vec2_u32(vec2<u32>(~0u, ~min(global1[_wgslsmith_index_u32(64031u, 27u)], global0.d.x)), ~global0.d.yy, global0.d.zz), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(sign(var_1.b.b.x))), 1963f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - 841f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-532f + -651f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.b.x - 637f)), _wgslsmith_f_op_f32(step(global0.b.x, -874f)), _wgslsmith_f_op_f32(-global0.b.x), -340f)));
}

