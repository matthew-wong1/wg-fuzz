struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 23>;

var<private> global1: array<Struct_3, 7>;

var<private> global2: Struct_1;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_2(Struct_1(1195f, global2.b, true, _wgslsmith_add_u32(4294967295u, ~global2.d)), vec3<i32>(1i, -1i, abs(21609i)) >> (~abs(vec3<u32>(u_input.b, 6270u, 15024u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.a, 295f, global2.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global0[_wgslsmith_index_u32(24821u, 23u)]))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, 353f, -766f, 831f) * vec4<f32>(var_0.a.a.a, 1032f, var_0.a.c.x, -1020f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a, global2.a, global2.a, 1114f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(573f, global2.a, -975f, global2.a))))))))));
    let var_2 = _wgslsmith_f_op_f32(-255f + 344f);
    var var_3 = ((_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global2.d, 59999u), vec2<u32>(var_0.a.a.d, 25683u)), select(vec2<u32>(u_input.a, 49181u), vec2<u32>(0u, u_input.a), true)) >> (_wgslsmith_mod_vec2_u32(abs(vec2<u32>(4294967295u, 34482u)), ~vec2<u32>(var_0.a.a.d, var_0.a.a.d)) % vec2<u32>(32u))) << (vec2<u32>(~u_input.a & ~u_input.c, abs(0u)) % vec2<u32>(32u))) ^ abs(vec2<u32>(var_0.a.a.d >> (~26443u % 32u), global2.d));
    var var_4 = Struct_3(var_0.a);
    return var_4.a.a;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<u32> {
    global0 = array<vec3<f32>, 23>();
    let var_0 = vec2<bool>(1u >= global2.d, !(arg_2.b.x || any(!vec4<bool>(arg_2.b.x, global2.b.x, arg_2.c, true))));
    return reverseBits(select(select(vec4<u32>(1740u, 88800u, global2.d, arg_2.d) << (countOneBits(vec4<u32>(arg_2.d, u_input.a, 42215u, 5148u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(47972u, arg_2.d, 0u, 56207u), ~vec4<u32>(global2.d, arg_2.d, global2.d, 27732u), ~vec4<u32>(global2.d, arg_2.d, 4294967295u, 15414u)), vec4<bool>(true, true, true, true)), ~vec4<u32>(~44112u, global2.d, abs(u_input.a), u_input.c), global2.c));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_i32(2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(29407i, -7435i), vec2<i32>(arg_1, -34471i) & vec2<i32>(arg_1, -540i)), 0i)) | -1i;
    global1 = array<Struct_3, 7>();
    let var_1 = any(!select(func_2().b, vec3<bool>(global2.b.x, true, global2.c), !global2.c));
    global0 = array<vec3<f32>, 23>();
    var var_2 = global2.c;
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>) -> Struct_1 {
    global2 = func_4(~arg_0.d, ~abs(_wgslsmith_add_i32(~(-3522i), reverseBits(1i))), vec4<u32>(~func_2().d, 29367u, func_4(countOneBits(u_input.c), select(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, -1i, -52301i), vec4<i32>(-2147483647i, 7631i, 0i, 41781i)), -27538i << (1u % 32u), true), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(16504u, u_input.b, arg_0.d, global2.d)), ~vec4<u32>(u_input.c, arg_1, arg_1, 27504u))).d, 87436u));
    global1 = array<Struct_3, 7>();
    var var_0 = Struct_2(Struct_1(1902f, !(!arg_0.b), min(1i, -36058i) == _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-2147483647i, -16790i)), vec2<i32>(5440i, 28675i)), _wgslsmith_add_u32(~(arg_0.d & 0u), arg_1)), ~vec3<i32>(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-27879i, -1i), vec2<i32>(2147483647i, -25695i)), ~firstLeadingBit(-21531i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(~0u, 23u)], _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1308f, 1003f, global2.a))))), !vec3<bool>(global2.b.x, false, arg_0.c)))));
    var_0 = Struct_2(arg_0, max(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.b.x), vec2<i32>(12009i, -942i)), var_0.b.x | var_0.b.x, 57277i) ^ var_0.b, var_0.b), _wgslsmith_f_op_vec3_f32(-var_0.c));
    let var_1 = Struct_2(arg_0, -((_wgslsmith_div_vec3_i32(var_0.b, vec3<i32>(2147483647i, 2147483647i, var_0.b.x)) >> (countOneBits(vec3<u32>(32096u, global2.d, 79952u)) % vec3<u32>(32u))) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, arg_0.d), vec3<u32>(arg_0.d, 1u, arg_0.d)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_2.zyx), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -809f), -1408f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_2.x, arg_0.a))))), !arg_0.b)));
    return var_1.a;
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = func_5(func_4(global2.d, arg_0.a.b.x, func_3(vec2<f32>(_wgslsmith_f_op_f32(2035f + arg_0.a.a.a), -784f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.a.c.yx)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-100f, -497f) + arg_0.a.c.yz)), func_2())), _wgslsmith_mult_u32(~72563u, func_4(0u, arg_0.a.b.x, firstTrailingBit(vec4<u32>(arg_0.a.a.d, global2.d, 1u, 1u))).d) << (~arg_0.a.a.d % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1897f, global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - 484f)), arg_0.a.a.a)));
    global0 = array<vec3<f32>, 23>();
    global0 = array<vec3<f32>, 23>();
    var_0 = Struct_1(-786f, vec3<bool>(!(!(global2.b.x || global2.c)), !any(vec2<bool>(arg_0.a.a.c, true)), var_0.c), var_0.c, ~_wgslsmith_div_u32(~func_5(arg_0.a.a, arg_0.a.a.d, vec4<f32>(arg_0.a.c.x, global2.a, 1506f, 377f)).d, ~u_input.c));
    let var_1 = 0u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(_wgslsmith_mod_u32(reverseBits(global2.d), _wgslsmith_sub_u32(var_0.d, 29523u)), -arg_0.a.b.x, vec4<u32>(min(4294967295u, 1u), ~u_input.c, global2.d, u_input.c | 51439u)).a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(select(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, 4294967295u, u_input.c, 0u)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 127452u, global2.d, 0u), vec4<u32>(29873u, u_input.c, global2.d, u_input.c)), vec4<u32>(global2.d, global2.d, 4294967295u, 16936u))), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(49376u, 0u), vec2<u32>(u_input.c, global2.d), vec2<bool>(global2.b.x, global2.c)), ~vec2<u32>(41879u, 1u)), select(global2.b.x, all(select(vec4<bool>(false, false, global2.b.x, global2.c), vec4<bool>(true, false, false, false), vec4<bool>(true, global2.c, false, global2.c))), global2.c)), max(_wgslsmith_clamp_u32(reverseBits(45456u), ~2270u, _wgslsmith_mod_u32(global2.d, 4294967295u)), global2.d) << (firstLeadingBit(_wgslsmith_sub_u32(~global2.d, countOneBits(0u))) % 32u));
    global0 = array<vec3<f32>, 23>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(global2.d, 7u)], global2.a, 1i))) + func_2().a), !vec3<bool>(!global2.b.x, any(global2.b), true), all(vec2<bool>(true, true)), ~_wgslsmith_div_u32(44476u, firstLeadingBit(1u))), _wgslsmith_add_vec3_i32(~vec3<i32>(1i, 1i, 1i), _wgslsmith_add_vec3_i32(-vec3<i32>(74371i, 77277i, 56645i), -_wgslsmith_clamp_vec3_i32(vec3<i32>(26896i, 20088i, 5807i), vec3<i32>(-47297i, 0i, -2147483647i), vec3<i32>(2147483647i, -1i, 2147483647i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(130f, global2.a, global2.a)))))));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_1.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.c.x - global2.a)))))));
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-435f, _wgslsmith_f_op_f32(-var_1.a.a))) + _wgslsmith_f_op_f32(func_2().a + -1745f)), select(vec3<bool>(false, func_5(func_4(0u, 13854i, vec4<u32>(37650u, var_0.x, 0u, var_0.x)), _wgslsmith_add_u32(global2.d, 23983u), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.a, -739f, var_2, 1930f)))).b.x, func_5(Struct_1(363f, vec3<bool>(false, false, var_1.a.c), global2.b.x, var_1.a.d), 4294967295u, vec4<f32>(var_1.a.a, var_2, var_2, global2.a)).b.x), !var_1.a.b, vec3<bool>(var_1.a.b.x, all(select(vec4<bool>(true, true, global2.c, var_1.a.c), vec4<bool>(false, var_1.a.c, var_1.a.b.x, var_1.a.b.x), true)), true)), true, _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(var_1.a.d, 0u, u_input.b, var_1.a.d) >> (vec4<u32>(4294967295u, 1u, var_1.a.d, 1u) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(min(firstLeadingBit(vec4<u32>(global2.d, 29835u, 12460u, 0u)), select(vec4<u32>(var_0.x, u_input.c, 0u, 2188u), vec4<u32>(var_0.x, 11693u, 4294967295u, 0u), var_1.a.c)), select(~vec4<u32>(41406u, u_input.c, var_1.a.d, var_0.x), vec4<u32>(global2.d, global2.d, 49133u, u_input.a) << (vec4<u32>(13880u, var_0.x, 39575u, 4294967295u) % vec4<u32>(32u)), !vec4<bool>(var_1.a.b.x, false, global2.c, true)))));
    var_0 = vec2<u32>(~var_0.x, global2.d);
    global1 = array<Struct_3, 7>();
    var var_3 = !(!vec4<bool>(true, true, var_1.a.b.x && true, !any(vec2<bool>(false, var_1.a.c))));
    let x = u_input.a;
    s_output = StorageBuffer(-(var_1.b >> (max(vec3<u32>(var_1.a.d, global2.d, u_input.c), vec3<u32>(u_input.b, u_input.b, var_0.x)) % vec3<u32>(32u))) << (~(~vec3<u32>(u_input.a, u_input.b, var_1.a.d)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.a)) + _wgslsmith_f_op_f32(f32(-1f) * -1344f))) + _wgslsmith_f_op_f32(ceil(var_2))), var_1.b.x, var_1.b, _wgslsmith_f_op_f32(sign(global2.a)));
}

