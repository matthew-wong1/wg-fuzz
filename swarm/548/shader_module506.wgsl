struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
    c: Struct_4,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(i32(-2147483648), 0i, 7438i, 0i, 0i, 1i, 3294i, -1i, -1i, -3629i, 2147483647i, -1i, -62893i, i32(-2147483648), -254i, -48064i, 1i, 41027i, 78855i, 25878i, 2147483647i, 2147483647i, 47086i, -1i, 2147483647i, i32(-2147483648), -31914i, -545i, 1i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: i32) -> f32 {
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    return 251f;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(func_3(2147483647i, 20547i, -75850i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(701f * arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -1709f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 - arg_1)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec4<f32>(arg_1, arg_1, 1000f, arg_1))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1673f, arg_1, arg_1, arg_1) - vec4<f32>(arg_1, arg_1, arg_1, -113f)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-979f, arg_1), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - arg_1), arg_1)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(550f * arg_1))), _wgslsmith_f_op_f32(715f - _wgslsmith_f_op_f32(-arg_1))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(240f, -179f, 1000f, arg_1)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 274f, arg_1))))));
    let var_1 = true;
    global0 = array<i32, 29>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1000f, arg_1, -1364f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, var_0.x, -1000f, -253f), vec4<f32>(1000f, 149f, var_0.x, arg_1), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 417f, 424f, var_0.x)), var_1))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1357f, _wgslsmith_f_op_f32(select(1560f, arg_1, true)), -313f, _wgslsmith_f_op_f32(func_3(-42771i, global0[_wgslsmith_index_u32(u_input.d.x, 29u)], global0[_wgslsmith_index_u32(27461u, 29u)]))))));
    var var_3 = var_0.xwx;
    return Struct_4(_wgslsmith_add_vec3_u32(min(vec3<u32>(select(0u, u_input.d.x, var_1), _wgslsmith_sub_u32(u_input.a, 4294967295u), u_input.a), ~u_input.d.zyz & (u_input.d.zwy << (u_input.d.xww % vec3<u32>(32u)))), abs(select(_wgslsmith_mod_vec3_u32(u_input.d.zwy, vec3<u32>(u_input.d.x, u_input.a, 1u)), u_input.d.wyy, any(vec3<bool>(var_1, false, var_1))))), Struct_1(~u_input.d.x ^ u_input.a, all(select(!vec3<bool>(var_1, var_1, var_1), !vec3<bool>(false, var_1, var_1), select(vec3<bool>(var_1, false, false), vec3<bool>(var_1, var_1, var_1), var_1)))), select(~max(u_input.e, vec2<i32>(17904i, u_input.c)), arg_0.yy, !(var_1 && select(false, var_1, var_1))), reverseBits(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), _wgslsmith_f_op_vec3_f32(-var_0.zxz));
}

fn func_1(arg_0: f32) -> Struct_4 {
    var var_0 = Struct_5(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 29u)], -15649i, u_input.c) >> (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u)), vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x))) == ~(-18627i), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false))), any(vec2<bool>(true, true))), func_2(~_wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.e.x, -7168i, global0[_wgslsmith_index_u32(u_input.a, 29u)]), vec3<i32>(68336i, u_input.c, global0[_wgslsmith_index_u32(u_input.a, 29u)]), vec3<bool>(true, false, false)), vec3<i32>(-7937i, global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(u_input.d.x, 29u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1904f))))), -26176i);
    let var_1 = firstLeadingBit(-vec3<i32>(~1i >> (~var_0.c.a.x % 32u), -min(-1i, 34472i), _wgslsmith_div_i32(-2856i, -73259i)));
    var var_2 = Struct_5(countOneBits(~_wgslsmith_mod_u32(u_input.d.x, 11115u)) <= ~var_0.c.b.a, select(!(!(!var_0.b)), vec4<bool>(var_0.a & any(var_0.b.wx), false, true, !var_0.a), all(vec3<bool>(var_0.c.b.b, var_0.b.x, var_0.c.e.x <= 1000f))), Struct_4(firstLeadingBit(~_wgslsmith_sub_vec3_u32(u_input.d.wwx, vec3<u32>(var_0.c.a.x, 20095u, 69835u))), Struct_1(_wgslsmith_mod_u32(~72453u, ~u_input.d.x), all(select(vec4<bool>(var_0.c.b.b, false, true, var_0.c.b.b), var_0.b, var_0.b.x))), ~(-vec2<i32>(-103483i, 28530i) ^ min(var_0.c.c, var_0.c.c)), u_input.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.e.x, -1367f, -394f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.e + var_0.c.e) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 531f, 152f), var_0.c.e)))), i32(-1i) * -func_2(~var_1, _wgslsmith_f_op_f32(round(arg_0))).c.x);
    global0 = array<i32, 29>();
    let var_3 = 1u << (_wgslsmith_mod_u32(_wgslsmith_sub_u32(~var_0.c.b.a ^ ~57742u, 38574u), var_2.c.d) % 32u);
    return Struct_4(var_0.c.a, func_2(~var_1, -336f).b, vec2<i32>(_wgslsmith_dot_vec3_i32(select(var_1, var_1, var_2.a) << (~vec3<u32>(var_2.c.d, 0u, var_2.c.d) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.d, 6830i, 0i), vec3<i32>(11680i, -54647i, var_1.x) >> (u_input.d.xxx % vec3<u32>(32u)))), -2147483647i), _wgslsmith_dot_vec3_u32(~var_0.c.a, ~abs(var_0.c.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(546f, 286f, -582f) + vec3<f32>(arg_0, arg_0, -587f))))), _wgslsmith_f_op_vec3_f32(min(var_2.c.e, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.c.e + vec3<f32>(var_2.c.e.x, arg_0, -1152f)), _wgslsmith_f_op_vec3_f32(-var_2.c.e))))));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3) -> Struct_4 {
    let var_0 = Struct_2(-_wgslsmith_mult_vec4_i32(abs(abs(arg_2.c.a)), vec4<i32>(u_input.b, u_input.e.x & arg_0, u_input.e.x, ~(-1i))), Struct_1(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), 69374u), false));
    var var_1 = arg_2.c.a.x;
    let var_2 = var_0;
    let var_3 = Struct_3(vec2<u32>(var_2.b.a, 4294967295u), ~49472u | ((_wgslsmith_add_u32(var_2.b.a, 49165u) | (arg_2.a.x ^ 64198u)) << (arg_1.d % 32u)), Struct_2(select(~arg_2.c.a, var_0.a, !vec4<bool>(var_0.b.b, true, var_2.b.b, var_0.b.b)), func_1(_wgslsmith_f_op_f32(step(144f, arg_1.e.x))).b), func_1(_wgslsmith_div_f32(1064f, _wgslsmith_f_op_f32(arg_1.e.x + _wgslsmith_f_op_f32(arg_1.e.x + 1511f)))).b.b);
    global0 = array<i32, 29>();
    return Struct_4(_wgslsmith_clamp_vec3_u32(firstLeadingBit(_wgslsmith_clamp_vec3_u32(arg_1.a, _wgslsmith_sub_vec3_u32(u_input.d.wxx, u_input.d.xwx), abs(u_input.d.yyw))), arg_1.a, abs(vec3<u32>(16662u, 4294967295u, 22771u)) << (~max(vec3<u32>(0u, 0u, var_0.b.a), arg_1.a) % vec3<u32>(32u))), arg_2.c.b, arg_2.c.a.zy, _wgslsmith_div_u32(1u, ~1u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_1.e.x)))) * arg_1.e.x), _wgslsmith_f_op_f32(arg_1.e.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1.c.x, -1i, var_2.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(136f - arg_1.e.x), _wgslsmith_f_op_f32(abs(arg_1.e.x)), true != all(vec2<bool>(var_0.b.b, arg_1.b.b))))));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) - arg_0.e.x), _wgslsmith_f_op_f32(arg_0.e.x + _wgslsmith_f_op_f32(arg_0.e.x + 894f)));
    let var_1 = 1u;
    var var_2 = Struct_2(countOneBits(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.e.x, u_input.b, u_input.b, -18438i), vec4<i32>(28739i, -1i, 0i, u_input.c))), Struct_1(~(~arg_1.x), false));
    var_2 = Struct_2(vec4<i32>(firstLeadingBit((u_input.b << (4294967295u % 32u)) >> (abs(0u) % 32u)), _wgslsmith_div_i32(_wgslsmith_mod_i32(-7650i, arg_0.c.x), var_2.a.x), _wgslsmith_sub_i32(select(var_2.a.x, 8077i, true), arg_0.c.x) | u_input.e.x, -2147483647i), Struct_1(reverseBits(~arg_1.x), ~arg_0.c.x == (98126i << (var_1 % 32u))));
    var var_3 = vec4<bool>(!var_2.b.b, all(vec3<bool>(arg_0.b.b, true, _wgslsmith_f_op_f32(arg_0.e.x * arg_0.e.x) > -506f)), !any(!select(vec2<bool>(false, false), vec2<bool>(var_2.b.b, false), vec2<bool>(var_2.b.b, var_2.b.b))), !var_2.b.b);
    return Struct_2(_wgslsmith_sub_vec4_i32(max((vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_2.b.a, 29u)], var_2.a.x, 2147483647i) ^ var_2.a) << (~vec4<u32>(80619u, var_1, 12865u, 22400u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-43393i, 0i, arg_0.c.x, 2147483647i), var_2.a), ~var_2.a)), ~vec4<i32>(-13015i, func_4(-1i, arg_0, Struct_3(arg_1, var_1, Struct_2(var_2.a, Struct_1(var_1, var_2.b.b)), var_3.x)).c.x, func_1(arg_0.e.x).c.x, global0[_wgslsmith_index_u32(u_input.d.x, 29u)] & 17325i)), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 29>();
    let var_0 = func_5(func_4(14111i, func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-160f)), 416f)), Struct_3(u_input.d.zz, 1u | u_input.d.x, Struct_2(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], -14949i), Struct_1(u_input.d.x, true)), true)), ~vec2<u32>(4294967295u, u_input.d.x));
    var var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1316f + _wgslsmith_f_op_f32(f32(-1f) * -118f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(-20665i, global0[_wgslsmith_index_u32(var_0.b.a, 29u)], u_input.c)), -127f))) + func_4(-1573i, func_2(vec3<i32>(var_0.a.x, u_input.e.x, -22887i), _wgslsmith_f_op_f32(round(910f))), Struct_3(~u_input.d.xw, ~u_input.a, Struct_2(var_0.a, Struct_1(12151u, false)), global0[_wgslsmith_index_u32(0u, 29u)] > var_0.a.x)).e.x));
    var_1 = func_4(reverseBits(~var_1.c.x), func_1(_wgslsmith_f_op_f32(min(var_1.e.x, _wgslsmith_f_op_f32(-237f + var_1.e.x)))), Struct_3(vec2<u32>(_wgslsmith_mod_u32(var_0.b.a | u_input.d.x, var_0.b.a), 36035u), 1u, Struct_2(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(0u, 29u)], 0i, var_0.a.x), vec4<i32>(-15779i, -2147483647i, var_1.c.x, -138881i)), Struct_1(abs(12208u), var_0.b.b)), false && all(vec3<bool>(var_1.b.b, true, var_1.b.b))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.wxy, firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e.x, 15813i, 6154i), var_0.a.yzy) << (vec3<u32>(22502u, _wgslsmith_mod_u32(var_1.d, var_1.b.a), var_0.b.a ^ var_0.b.a) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(-u_input.e.x, u_input.c, global0[_wgslsmith_index_u32(37781u, 29u)]), vec3<i32>(abs(35433i), global0[_wgslsmith_index_u32(var_1.b.a, 29u)], 1i)) << (~(reverseBits(vec3<u32>(51506u, var_1.a.x, var_0.b.a)) & (u_input.d.zwz >> (var_1.a % vec3<u32>(32u)))) % vec3<u32>(32u)));
}

