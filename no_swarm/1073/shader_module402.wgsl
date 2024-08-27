struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec4<bool>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<u32, 13>;

var<private> global2: array<Struct_3, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_3) -> i32 {
    return u_input.c.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>) -> Struct_3 {
    global1 = array<u32, 13>();
    global1 = array<u32, 13>();
    var var_0 = Struct_4(global2[_wgslsmith_index_u32(countOneBits(u_input.a), 26u)], func_3(-arg_0.x, u_input.b, global2[_wgslsmith_index_u32(~(~0u), 26u)]) >> (countOneBits(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], u_input.b.x), abs(1u))) % 32u), vec4<bool>(false, arg_1.x, !all(!arg_1.yyz), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1781f * _wgslsmith_f_op_f32(287f + -337f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-442f)))) >= _wgslsmith_div_f32(790f, -870f), select(arg_1.wwy, !arg_1.zyx, !(arg_1.x || any(vec2<bool>(true, arg_1.x)))));
    let var_1 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(~17760u, u_input.a), u_input.b.yy));
    var var_2 = arg_1.x;
    return var_0.a;
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> u32 {
    var var_0 = Struct_1(~u_input.b.xx);
    var var_1 = Struct_3(arg_0.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1538f), -856f));
    global2 = array<Struct_3, 26>();
    var_2 = vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x));
    return firstLeadingBit(52674u);
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: u32, arg_3: bool) -> Struct_4 {
    var var_0 = u_input.c.x;
    let var_1 = false | ((0u >= firstLeadingBit(_wgslsmith_mult_u32(u_input.a, arg_2))) && true);
    var_0 = u_input.c.x << (~arg_0.x % 32u);
    var_0 = ~(-(~_wgslsmith_add_i32(abs(u_input.c.x), reverseBits(u_input.c.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-154f - -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(184f, _wgslsmith_f_op_f32(abs(-696f)))) + -624f)));
    return Struct_4(Struct_3(!vec2<bool>(any(vec3<bool>(true, true, false)), false)), _wgslsmith_dot_vec3_i32(u_input.c, -_wgslsmith_mod_vec3_i32(~vec3<i32>(-33396i, u_input.c.x, -27769i), ~vec3<i32>(57302i, u_input.c.x, u_input.c.x))), select(!(!vec4<bool>(arg_3, var_1, false, true)), select(select(select(vec4<bool>(arg_3, var_1, arg_1, false), vec4<bool>(false, true, false, arg_1), false), vec4<bool>(false, false, false, var_1), select(false, false, false)), select(vec4<bool>(arg_1, arg_3, false, false), select(vec4<bool>(false, true, false, arg_1), vec4<bool>(false, arg_1, var_1, false), arg_1), vec4<bool>(true, false, true, arg_3)), !(!vec4<bool>(false, arg_1, var_1, arg_3))), false), (abs(u_input.b.x << (88311u % 32u)) | func_4(global2[_wgslsmith_index_u32(1u, 26u)], 1i)) < 1u, vec3<bool>(true, var_1, !arg_1));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_3) -> u32 {
    let var_0 = !arg_0;
    global0 = -188f;
    var var_1 = func_5(min(arg_2.yy, ~vec2<u32>(global1[_wgslsmith_index_u32(35397u, 13u)], arg_2.x)) | ~min(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(global1[_wgslsmith_index_u32(arg_2.x, 13u)], u_input.b.x)), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2971u, 13u)], 13u)], global1[_wgslsmith_index_u32(0u, 13u)])), var_0.x, func_4(func_2(_wgslsmith_div_vec4_i32(-vec4<i32>(15106i, arg_1.x, arg_1.x, arg_1.x), vec4<i32>(u_input.c.x, -25707i, u_input.c.x, u_input.c.x)), !vec4<bool>(true, true, false, arg_3.a.x)), ~arg_1.x), !var_0.x);
    let var_2 = func_5(_wgslsmith_add_vec2_u32(arg_2.zy, vec2<u32>(_wgslsmith_mod_u32(~0u, _wgslsmith_sub_u32(26015u, arg_2.x)), 1u)), u_input.a == (~4294967295u | _wgslsmith_div_u32(arg_2.x & global1[_wgslsmith_index_u32(71919u, 13u)], 31978u)), firstLeadingBit(4294967295u), true).a;
    var_1 = func_5(~vec2<u32>(arg_2.x, 4294967295u), var_0.x, 7509u, !var_0.x);
    return u_input.a;
}

fn func_6(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_4 {
    global2 = array<Struct_3, 26>();
    var var_0 = min(arg_2.x, _wgslsmith_mult_i32(~arg_2.x << (u_input.b.x % 32u), -906i) & 1i);
    let var_1 = ~(~(~u_input.b.x));
    var var_2 = _wgslsmith_div_u32(~74150u << (max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~4294967295u, 13u)], 13u)], ~var_1) % 32u), 0u) >> (1u % 32u);
    global1 = array<u32, 13>();
    return Struct_4(arg_3.a, -(_wgslsmith_add_i32(arg_2.x, 37523i) | ~u_input.c.x) & arg_2.x, select(!vec4<bool>(false, arg_1 && true, true, all(vec2<bool>(arg_1, arg_1))), vec4<bool>(!arg_3.e.x, func_5(vec2<u32>(u_input.b.x, 1u), u_input.b.x <= 27240u, var_1, !arg_1).a.a.x, all(vec3<bool>(true, true, arg_3.d)), _wgslsmith_f_op_f32(select(473f, 1000f, arg_3.e.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -1313f)), true), true, arg_3.c.ywz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-1092f, _wgslsmith_f_op_f32(select(-250f, -1253f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * -210f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-622f, -759f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-473f, -264f)), !all(vec4<bool>(true, true, false, true))))), -877f);
    var var_1 = -1i > min(6011i, max(~(-6420i), u_input.c.x));
    global1 = array<u32, 13>();
    let var_2 = func_6(vec3<u32>(~(~u_input.a) ^ _wgslsmith_div_u32(func_1(vec4<bool>(true, true, false, false), vec2<i32>(2147483647i, u_input.c.x), vec3<u32>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(804u, 13u)], 13u)], 52051u), Struct_3(vec2<bool>(false, false))), 41200u), _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], 0u), vec3<u32>(4294967295u, u_input.b.x, 4294967295u))), vec3<u32>(~5614u, countOneBits(u_input.a), ~91606u)), global1[_wgslsmith_index_u32(u_input.b.x, 13u)]), all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, false, true), true)) && true, vec4<i32>(_wgslsmith_div_i32(u_input.c.x, ~0i), _wgslsmith_dot_vec2_i32(u_input.c.yz, ~(-vec2<i32>(0i, 48553i))), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, u_input.c.x)), _wgslsmith_div_vec4_i32(vec4<i32>(32598i, 24592i, u_input.c.x, u_input.c.x), vec4<i32>(-2147483647i, 0i, u_input.c.x, u_input.c.x))) << ((~u_input.b.x << (~u_input.a % 32u)) % 32u), u_input.c.x), Struct_4(global2[_wgslsmith_index_u32(56460u, 26u)], u_input.c.x, func_5(~countOneBits(vec2<u32>(u_input.a, 57611u)), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33355u, 13u)], 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15788u, 13u)], 13u)]), vec4<u32>(17594u, 54244u, global1[_wgslsmith_index_u32(0u, 13u)], 24540u)), true).c, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), vec3<bool>((28535i <= u_input.c.x) && true, true, true)));
    let var_3 = _wgslsmith_add_i32(max(_wgslsmith_mod_i32(min(52991i, u_input.c.x), _wgslsmith_dot_vec4_i32(min(vec4<i32>(-66342i, u_input.c.x, u_input.c.x, 1i), vec4<i32>(u_input.c.x, u_input.c.x, var_2.b, -1i)), max(vec4<i32>(u_input.c.x, 0i, u_input.c.x, u_input.c.x), vec4<i32>(1i, var_2.b, u_input.c.x, -7194i)))), countOneBits(~_wgslsmith_sub_i32(2098i, -1i))), -(~_wgslsmith_mult_i32(-1i, var_2.b)) | countOneBits(max(var_2.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, var_2.b, -1i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 1i)))));
    let var_4 = Struct_1(vec2<u32>(13473u, _wgslsmith_mod_u32(4294967295u, ~88047u)));
    var var_5 = func_6(~u_input.b, true, min(-vec4<i32>(_wgslsmith_mod_i32(2147483647i, 35492i), -1i, 1i >> (global1[_wgslsmith_index_u32(32802u, 13u)] % 32u), 51298i), _wgslsmith_div_vec4_i32(min(~vec4<i32>(var_3, var_3, 1i, var_2.b), vec4<i32>(9879i, -97837i, var_2.b, var_2.b)), ~vec4<i32>(var_2.b, u_input.c.x, -1718i, var_3))), func_5(_wgslsmith_mult_vec2_u32(var_4.a, vec2<u32>(80981u & global1[_wgslsmith_index_u32(4294967295u, 13u)], var_4.a.x << (global1[_wgslsmith_index_u32(0u, 13u)] % 32u))), any(!var_2.c.zy), _wgslsmith_mult_u32(~49918u, 1u), (-1326f <= _wgslsmith_f_op_f32(-var_0.x)) || (19997i < ~var_3))).c;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - -200f), var_0.x)) - _wgslsmith_f_op_f32(-2489f + var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-vec4<i32>(~(-1i), 9459i, u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3, 2147483647i, var_2.b, var_2.b), vec4<i32>(-18634i, var_3, 1i, u_input.c.x)))), _wgslsmith_f_op_f32(select(571f, var_0.x, true)), select(var_4.a.x, ~abs(~1u), !func_2(abs(vec4<i32>(1i, u_input.c.x, var_3, -1i)), var_2.c).a.x));
}

