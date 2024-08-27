struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_3,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2 = Struct_2(vec2<bool>(true, false), true, true);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = arg_1.zxw;
    var var_1 = Struct_3(Struct_2(vec2<bool>(var_0.x, true), !(arg_0.c <= _wgslsmith_f_op_f32(arg_2.c + arg_0.c)), !(!arg_1.x || var_0.x)));
    let var_2 = Struct_3(Struct_2(!select(global1.a, !vec2<bool>(false, arg_1.x), !global1.a), true, true));
    let var_3 = vec2<f32>(677f, _wgslsmith_div_f32(744f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.c + arg_0.c))))));
    global0 = var_3.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(809f + var_3.x));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: f32, arg_3: vec3<i32>) -> vec2<bool> {
    let var_0 = ~(~(u_input.b | ~_wgslsmith_sub_u32(4294967295u, 44266u)));
    let var_1 = true;
    let var_2 = -_wgslsmith_add_i32(u_input.c, u_input.d);
    global0 = _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(352f)) - arg_2));
    global1 = Struct_2(vec2<bool>(false, !all(vec3<bool>(var_1, global1.b, arg_0)) != !arg_0), arg_0, true);
    return select(global1.a, select(!vec2<bool>(global1.b || true, var_1), global1.a, global1.a), true);
}

fn func_2() -> f32 {
    var var_0 = Struct_4(Struct_1(vec4<bool>(global1.c, true, !(global1.a.x | global1.b), all(vec4<bool>(global1.a.x, global1.c, global1.b, global1.b)) & (0i != u_input.d)), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-221f)), 1107f, true)) - _wgslsmith_f_op_f32(766f - -110f)), u_input.c, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.d, 2147483647i)), firstTrailingBit(vec2<i32>(35963i, u_input.c))) == ~_wgslsmith_div_i32(u_input.d, -1i)), vec4<f32>(1f, 1f, 1f, 1f), Struct_3(Struct_2(vec2<bool>(global1.b, 13004u > u_input.a.x), true, false)), Struct_2(vec2<bool>(global1.c, global1.b), true, false), Struct_2(func_4(_wgslsmith_f_op_f32(ceil(1000f)) < _wgslsmith_f_op_f32(max(437f, 122f)), vec4<i32>(u_input.d, 0i, u_input.c, 1i), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(true, true, global1.a.x, true), u_input.b, -934f, 0i, false), !vec4<bool>(global1.b, false, false, true), Struct_1(vec4<bool>(false, global1.c, global1.b, global1.b), 4294967295u, -115f, -1i, global1.b))), reverseBits(vec3<i32>(u_input.c, -2147483647i, u_input.d) & vec3<i32>(u_input.c, u_input.d, u_input.c))), global1.b, false & all(select(vec3<bool>(true, global1.a.x, global1.c), vec3<bool>(false, false, global1.a.x), true))));
    let var_1 = Struct_3(var_0.d);
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.a.d, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.a.d, var_0.a.d, 1i, u_input.c), vec4<i32>(u_input.c, u_input.d, u_input.c, u_input.d) << (vec4<u32>(4294967295u, u_input.a.x, 0u, 31192u) % vec4<u32>(32u)))) >> (countOneBits(~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)) % 32u), var_0.a.d);
    var_0 = Struct_4(Struct_1(vec4<bool>(any(vec2<bool>(var_0.c.a.c, var_1.a.c)), !var_1.a.a.x, !(var_0.a.c >= var_0.a.c), false), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(16530u, var_0.a.b, var_0.a.b) ^ u_input.a, _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(var_0.a.b, var_0.a.b, var_0.a.b))), firstLeadingBit(u_input.a)), var_0.b.x, _wgslsmith_add_i32(firstTrailingBit(-10301i), var_2 << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.b, 51310u, 45069u, 4294967295u), vec4<u32>(0u, 0u, 45458u, var_0.a.b)) % 32u)), true), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) * _wgslsmith_f_op_vec4_f32(var_0.b - var_0.b))), vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(f32(-1f) * -403f)), -497f, _wgslsmith_div_f32(var_0.a.c, _wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x))), _wgslsmith_f_op_f32(-705f + _wgslsmith_f_op_f32(abs(-690f)))))), var_1, Struct_2(func_4(!all(vec4<bool>(false, global1.b, var_1.a.b, false)), countOneBits(-vec4<i32>(var_0.a.d, var_0.a.d, 2147483647i, u_input.d)), var_0.a.c, vec3<i32>(11819i << (u_input.e.x % 32u), 0i, _wgslsmith_clamp_i32(var_2, u_input.c, u_input.c))), global1.a.x, _wgslsmith_clamp_i32(-36329i, ~var_0.a.d, 0i) != _wgslsmith_sub_i32(~u_input.c, 0i)), var_0.c.a);
    var var_3 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.b, u_input.e.x, ~75082u), u_input.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2477f)));
}

fn func_5(arg_0: vec3<f32>) -> u32 {
    let var_0 = Struct_1(vec4<bool>(arg_0.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1025f, arg_0.x, false))), any(!select(vec3<bool>(global1.a.x, true, global1.c), vec3<bool>(true, true, true), vec3<bool>(false, false, global1.b))), any(!global1.a), global1.a.x), u_input.a.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_i32(-50297i, u_input.c), global1.a.x);
    let var_1 = Struct_4(Struct_1(!(!var_0.a), ~1u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(var_0, var_0.a, var_0)))), 1i, !func_4(true, _wgslsmith_mult_vec4_i32(vec4<i32>(19532i, -2147483647i, u_input.c, 41841i), vec4<i32>(var_0.d, 2017i, 11739i, var_0.d)), 1374f, -vec3<i32>(-1i, u_input.c, var_0.d)).x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1011f, arg_0.x, 1775f, var_0.c)))))), Struct_3(Struct_2(!func_4(var_0.e, vec4<i32>(var_0.d, u_input.c, 1i, -32399i), var_0.c, vec3<i32>(0i, 51309i, -1i)), all(vec2<bool>(var_0.e, true)), !var_0.a.x)), Struct_2(select(vec2<bool>(true, any(var_0.a.yx)), vec2<bool>(true, true), min(u_input.b, var_0.b) == ~u_input.a.x), var_0.a.x, select(any(vec4<bool>(true, var_0.e, var_0.e, false)), true, true) | !(!var_0.e)), Struct_2(vec2<bool>(func_4(global1.a.x & false, vec4<i32>(var_0.d, 1751i, 2147483647i, -2147483647i) >> (vec4<u32>(0u, var_0.b, var_0.b, var_0.b) % vec4<u32>(32u)), arg_0.x, vec3<i32>(var_0.d, u_input.d, var_0.d)).x, any(vec3<bool>(var_0.a.x, false, false)) || (var_0.b > 1u)), false, select(!var_0.e, false, var_0.a.x && var_0.e) & false));
    global1 = var_1.d;
    let var_2 = -(vec4<i32>(-1i) * -((vec4<i32>(1i, var_1.a.d, u_input.d, -4126i) << (vec4<u32>(var_0.b, 1u, u_input.a.x, var_1.a.b) % vec4<u32>(32u))) >> (min(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 3888u), vec4<u32>(4294967295u, u_input.e.x, 1u, u_input.e.x)) % vec4<u32>(32u))));
    let var_3 = var_1;
    return u_input.b;
}

fn func_1() -> vec4<u32> {
    let var_0 = !global1.c;
    let var_1 = all(vec3<bool>(true, any(select(select(vec4<bool>(global1.c, true, global1.b, false), vec4<bool>(var_0, var_0, false, true), vec4<bool>(true, var_0, true, true)), vec4<bool>(global1.a.x, false, global1.a.x, global1.b), u_input.e.x < u_input.e.x)), global1.a.x));
    let var_2 = Struct_1(select(vec4<bool>(false, 0u != countOneBits(u_input.a.x), !any(vec3<bool>(false, false, var_1)), false), !vec4<bool>(!var_1, !global1.a.x, false, var_0), vec4<bool>(all(vec2<bool>(global1.c, var_1)), all(vec4<bool>(true, var_0, global1.a.x, var_0)) && all(vec3<bool>(false, var_1, var_1)), false, global1.c)), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-382f, -1497f, _wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(-481f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -244f) - _wgslsmith_f_op_f32(func_2())))), firstTrailingBit(u_input.c), var_0);
    global1 = Struct_2(!global1.a, var_1, !(!var_2.e));
    var var_3 = -15545i;
    return vec4<u32>(~u_input.a.x, max(u_input.b, ~var_2.b), ~(0u >> (firstTrailingBit(87719u) % 32u)), ~35700u);
}

fn func_6(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: u32) -> vec3<u32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(!vec4<bool>(true, global1.c, arg_1.x, global1.c), ~(~4294967295u), arg_2.x, arg_0.x & min(-9991i, arg_0.x), global1.c), vec4<bool>(!global1.b, all(vec3<bool>(global1.a.x, false, arg_1.x)), any(!vec3<bool>(arg_1.x, arg_1.x, global1.b)), true), Struct_1(vec4<bool>(!arg_1.x, arg_1.x, arg_1.x, true), 19018u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x, !arg_1.x)), i32(-1i) * -2147483647i, !(!arg_1.x)))));
    let var_0 = _wgslsmith_div_i32(~(-(i32(-1i) * -28281i)), arg_0.x);
    let var_1 = ~(~countOneBits(select(u_input.b >> (24477u % 32u), arg_3, all(vec3<bool>(false, global1.a.x, global1.b)))));
    var var_2 = Struct_3(Struct_2(!arg_1, 2147483647i >= _wgslsmith_div_i32(countOneBits(u_input.c), arg_0.x), global1.b));
    var var_3 = vec3<bool>(true, true, select(false, true, select(min(var_0, 3690i), var_0, arg_2.x > arg_2.x) <= firstLeadingBit(u_input.c)));
    return abs(vec3<u32>(~4294967295u, ~countOneBits(53258u), ~reverseBits(~0u)));
}

fn func_7(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = true;
    global0 = _wgslsmith_f_op_f32(-269f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(401f, 564f))))))));
    var var_1 = _wgslsmith_mod_vec3_i32(-vec3<i32>(9603i, _wgslsmith_mult_i32(-2909i, u_input.c), 0i) >> (vec3<u32>(arg_0.x, min(5486u, u_input.b), func_1().x) % vec3<u32>(32u)), vec3<i32>(-1i) * -(-vec3<i32>(1i, u_input.c, u_input.c) & min(vec3<i32>(u_input.d, u_input.c, -53375i), vec3<i32>(u_input.c, u_input.c, u_input.c))));
    var var_2 = vec3<i32>(~(-(1i ^ ~u_input.d)), min(~firstLeadingBit(var_1.x), _wgslsmith_mult_i32(-36168i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(21536i, var_1.x, 20284i), -1i))), 11119i);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-186f)) - 187f), 676f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -232f), _wgslsmith_f_op_f32(sign(588f)))), 1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-230f, -1000f, 1889f, 653f)), vec4<f32>(-1738f, -170f, -368f, -444f))))));
    return Struct_2(vec2<bool>(false, global1.c), !all(select(vec3<bool>(global1.b, global1.c, global1.b), !vec3<bool>(false, global1.b, true), false && global1.c)), any(vec3<bool>(any(vec4<bool>(global1.a.x, true, true, global1.a.x)), true, all(!vec4<bool>(false, false, false, global1.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(global1.a, true, false);
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-622f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-724f)), -119f)))))));
    let var_0 = _wgslsmith_dot_vec2_i32(max(vec2<i32>(~_wgslsmith_div_i32(u_input.d, u_input.d), min(u_input.c, u_input.d) << (8594u % 32u)), vec2<i32>(u_input.d, _wgslsmith_mod_i32(u_input.c, firstTrailingBit(u_input.c)))), select(max(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(0i, 57968i)), countOneBits(vec2<i32>(32916i, u_input.c))), vec2<i32>(0i, firstTrailingBit(0i))), ~abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(46732i, u_input.c), vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.d))), false));
    var var_1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = max(_wgslsmith_sub_vec4_u32(vec4<u32>(20147u, 1u, _wgslsmith_mod_u32(u_input.e.x, 4294967295u), u_input.b), _wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.e.x, 71224u, u_input.a.x, 56428u), vec4<u32>(4294967295u, u_input.b, u_input.a.x, 1u), true), max(vec4<u32>(u_input.e.x, 33951u, 0u, u_input.a.x), vec4<u32>(98343u, 0u, u_input.a.x, 38595u)))) & ~(~firstLeadingBit(vec4<u32>(u_input.a.x, u_input.e.x, u_input.b, 55090u))), _wgslsmith_div_vec4_u32(max(select(vec4<u32>(1u, 15989u, 0u, u_input.b), abs(vec4<u32>(52195u, 22283u, u_input.a.x, u_input.a.x)), true), countOneBits(vec4<u32>(u_input.a.x, 4294967295u, u_input.e.x, 1u)) ^ reverseBits(vec4<u32>(u_input.b, u_input.a.x, 1u, 0u))), vec4<u32>(~60033u, u_input.b << (4294967295u % 32u), 0u, u_input.b) & vec4<u32>(abs(u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 0u), vec3<u32>(33474u, 37308u, u_input.a.x)), _wgslsmith_add_u32(u_input.b, u_input.b), _wgslsmith_mult_u32(0u, u_input.a.x))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-194f)) + _wgslsmith_f_op_f32(-1f)));
    global1 = Struct_2(!vec2<bool>(select(false, select(true, global1.a.x, true), true), any(select(vec2<bool>(global1.b, global1.b), vec2<bool>(false, global1.b), global1.a))), global1.c, false);
    global1 = func_7(func_6(min(vec4<i32>(-7625i, var_0, -1i, var_0), -vec4<i32>(var_0, -22494i, u_input.c, 61780i)) << (func_1() % vec4<u32>(32u)), global1.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))), 14336u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(10347u, var_2.x, _wgslsmith_sub_u32(4294967295u, firstTrailingBit(4294967295u) ^ ~4294967295u), 32761u), ~var_2.yzz, vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1363f, 692f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2517f, 773f) * vec2<f32>(-1601f, -476f)))))), -select(countOneBits(~vec3<i32>(45468i, 25693i, u_input.c)), max(select(vec3<i32>(u_input.c, var_0, var_0), vec3<i32>(-32056i, -2147483647i, 25367i), vec3<bool>(global1.b, false, global1.c)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, 0i, var_0), vec3<i32>(-1120i, u_input.c, var_0))), vec3<bool>(global1.c, -18122i >= var_0, true)));
}

