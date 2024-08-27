struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 21>;

var<private> global1: array<bool, 19> = array<bool, 19>(true, true, false, false, false, false, false, false, false, false, false, true, true, false, false, false, true, false, true);

var<private> global2: u32 = 1u;

var<private> global3: array<Struct_5, 26>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: vec4<u32>) -> u32 {
    global0 = array<Struct_4, 21>();
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(-(-u_input.c.x << (_wgslsmith_div_u32(62985u, arg_3.x) % 32u)), _wgslsmith_mod_i32(_wgslsmith_add_i32(~0i, firstTrailingBit(u_input.c.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-18089i, u_input.c.x, u_input.c.x, -2323i), vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, u_input.c.x)))), min(select(u_input.c.x, -47783i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x, 32198u), vec2<u32>(29088u, arg_3.x)), 19u)]), 18189i), _wgslsmith_add_i32(u_input.c.x | u_input.c.x, max(~(-u_input.c.x), -(~27151i))), min(u_input.c.x, _wgslsmith_mult_i32(countOneBits(1i), -2147483647i)));
    global2 = arg_3.x;
    return arg_3.x;
}

fn func_2() -> Struct_4 {
    global2 = ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~max(24280u, 4294967295u), ~89518u), abs(_wgslsmith_div_u32(~u_input.b, u_input.b)), _wgslsmith_sub_u32(~u_input.a.x, u_input.a.x ^ 63489u) >> (34081u % 32u));
    global0 = array<Struct_4, 21>();
    let var_0 = u_input.a.xx;
    let var_1 = _wgslsmith_mult_i32(-u_input.c.x, _wgslsmith_clamp_i32(abs(0i >> (_wgslsmith_add_u32(56326u, u_input.a.x) % 32u)), -1i, -1i));
    let var_2 = Struct_1(true, min(1u, func_3(_wgslsmith_f_op_f32(floor(-1469f)), Struct_1(false, global1[_wgslsmith_index_u32(33596u, 19u)], -182f), -298f, vec4<u32>(u_input.b, var_0.x, 4294967295u, 1u))) == func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -566f))), Struct_1(!global1[_wgslsmith_index_u32(74923u, 19u)], global1[_wgslsmith_index_u32(~var_0.x, 19u)], _wgslsmith_f_op_f32(sign(870f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-684f)))), ~(~vec4<u32>(16910u, u_input.b, u_input.b, var_0.x))), -708f);
    return Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c * var_2.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(435f, var_2.c) - _wgslsmith_f_op_f32(min(var_2.c, var_2.c))))), var_2, ~(vec3<u32>(~u_input.b, firstLeadingBit(u_input.a.x), 0u) ^ u_input.a));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: bool, arg_3: Struct_4) -> Struct_4 {
    var var_0 = arg_3.b;
    global1 = array<bool, 19>();
    var var_1 = arg_3.b.c;
    var var_2 = Struct_3(Struct_2(func_2().b, func_2().b));
    var var_3 = abs(vec4<u32>(1u >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_3.c.x, u_input.b, 4294967295u), ~vec4<u32>(arg_3.c.x, arg_1.c.x, u_input.a.x, arg_3.c.x)) % 32u), arg_3.c.x, ~0u, 1u));
    return func_2();
}

fn func_5(arg_0: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-510f, _wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-686f, arg_0.a.x)) * -110f), _wgslsmith_f_op_f32(step(arg_0.b.c, _wgslsmith_f_op_f32(-1091f * arg_0.a.x)))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(723f, arg_0.b.c)), -1534f, _wgslsmith_f_op_f32(trunc(arg_0.b.c)))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, 1000f, arg_0.b.c) + _wgslsmith_f_op_vec3_f32(trunc(arg_0.a.wzy))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0.a.wyw, vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x))))))));
    global1 = array<bool, 19>();
    let var_1 = (func_2().b.a && arg_0.b.a) && true;
    let var_2 = ~(~(~firstLeadingBit(arg_0.c.x) ^ 4294967295u));
    let var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(~abs(arg_0.c.x), _wgslsmith_mod_u32(var_2, 1u ^ (var_2 ^ var_2)), 4294967295u, u_input.b), vec4<u32>((u_input.a.x & (116759u ^ var_2)) | ~(arg_0.c.x | 39622u), ~arg_0.c.x, u_input.a.x, ~19434u));
    return arg_0;
}

fn func_6(arg_0: Struct_4) -> Struct_3 {
    global2 = arg_0.c.x;
    global2 = ~u_input.b;
    global0 = array<Struct_4, 21>();
    global1 = array<bool, 19>();
    var var_0 = Struct_2(arg_0.b, arg_0.b);
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(max(-2024f, var_0.b.c)) >= _wgslsmith_f_op_f32(select(var_0.b.c, -1869f, global1[_wgslsmith_index_u32(4294967295u, 19u)])), !any(vec4<bool>(false, false, false, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.c + var_0.b.c) + _wgslsmith_f_op_f32(f32(-1f) * -507f))), arg_0.b));
}

fn func_1() -> Struct_1 {
    var var_0 = func_6(func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1459f)), global0[_wgslsmith_index_u32(u_input.a.x, 21u)], -2147483647i <= u_input.c.x, func_2())));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.c, _wgslsmith_f_op_f32(-func_6(Struct_4(vec4<f32>(var_0.a.b.c, 2043f, var_0.a.b.c, 1125f), var_0.a.b, u_input.a)).a.b.c), _wgslsmith_f_op_f32(-var_0.a.a.c), _wgslsmith_f_op_f32(-var_0.a.b.c))));
    global0 = array<Struct_4, 21>();
    var var_2 = func_6(func_4(-228f, Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b.c), _wgslsmith_f_op_f32(var_0.a.b.c + -994f), _wgslsmith_f_op_f32(max(var_0.a.a.c, -534f)), -151f), func_2().b, ~_wgslsmith_div_vec3_u32(vec3<u32>(45012u, u_input.a.x, 34928u), vec3<u32>(u_input.b, 1u, u_input.a.x))), true, Struct_4(vec4<f32>(617f, -279f, _wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(ceil(var_1.x))), Struct_1(u_input.c.x >= 14608i, var_0.a.b.a, var_1.x), ~vec3<u32>(10661u, u_input.a.x, u_input.a.x)))).a.b;
    var var_3 = global3[_wgslsmith_index_u32(firstTrailingBit(84026u), 26u)];
    return func_5(Struct_4(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.a.a.c)), _wgslsmith_f_op_f32(min(var_0.a.a.c, func_6(var_3.c).a.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c + var_0.a.a.c)), var_1.x), func_4(1000f, Struct_4(_wgslsmith_div_vec4_f32(var_3.c.a, vec4<f32>(-217f, -683f, var_1.x, var_0.a.a.c)), Struct_1(var_3.c.b.a, var_0.a.b.b, 1000f), abs(vec3<u32>(80392u, 0u, u_input.a.x))), false, Struct_4(vec4<f32>(var_1.x, 1000f, var_2.c, var_3.c.a.x), Struct_1(global1[_wgslsmith_index_u32(0u, 19u)], true, 772f), vec3<u32>(u_input.b, 55659u, u_input.b))).b, ~vec3<u32>(u_input.b, ~40486u, var_3.c.c.x))).b;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1) -> Struct_4 {
    let var_0 = -(~abs(1i));
    let var_1 = firstLeadingBit(_wgslsmith_mod_vec3_i32(-(~vec3<i32>(var_0, u_input.c.x, 2147483647i)), vec3<i32>(_wgslsmith_div_i32(1i, 1i), 19564i, ~u_input.c.x << (u_input.b % 32u))));
    var var_2 = vec4<f32>(1464f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.b.c, 905f), _wgslsmith_f_op_f32(arg_0.a.c - arg_1.c)))))), arg_0.a.c, _wgslsmith_f_op_f32(func_1().c * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.c) * -581f)))));
    let var_3 = vec2<bool>(func_2().b.b, any(select(!select(vec4<bool>(true, arg_0.a.a, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], arg_0.b.a), vec4<bool>(global1[_wgslsmith_index_u32(43570u, 19u)], arg_1.b, arg_0.b.a, false), global1[_wgslsmith_index_u32(0u, 19u)]), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], true)), select(!vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 19u)], true, arg_1.a), vec4<bool>(true, arg_0.b.a, true, arg_0.b.a), arg_1.b))));
    global1 = array<bool, 19>();
    return func_5(func_4(2399f, Struct_4(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(484f, arg_0.b.c, arg_1.c, arg_0.b.c))), func_2().b, vec3<u32>(~u_input.a.x, ~u_input.b, 4294967295u)), false, Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 141f, arg_1.c, arg_0.b.c) - vec4<f32>(-407f, -1635f, -640f, arg_0.b.c))), arg_1, ~func_4(arg_0.b.c, global0[_wgslsmith_index_u32(113012u, 21u)], true, global0[_wgslsmith_index_u32(u_input.b, 21u)]).c)));
}

fn func_8(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    global2 = u_input.b;
    var var_0 = arg_3.c;
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a * func_7(Struct_2(arg_0.b, arg_0.b), arg_0.b).a)), Struct_1(arg_3.b, !(!arg_3.a), 1068f), _wgslsmith_sub_vec3_u32(vec3<u32>(~6514u, _wgslsmith_mod_u32(8439u, u_input.a.x), ~1u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, ~41021u, 0u), ~vec3<u32>(94630u, arg_0.c.x, u_input.b))));
    global2 = var_1.c.x;
    var var_2 = func_7(Struct_2(func_2().b, Struct_1(any(!vec2<bool>(arg_1.b.a, true)), arg_1.b.a, 1501f)), Struct_1(false, -_wgslsmith_dot_vec3_i32(u_input.c, u_input.c) >= abs(abs(u_input.c.x)), _wgslsmith_f_op_f32(max(271f, _wgslsmith_f_op_f32(-arg_1.b.c)))));
    return u_input.c.x;
}

fn func_9(arg_0: i32) -> vec4<bool> {
    global3 = array<Struct_5, 26>();
    global2 = 5178u;
    global0 = array<Struct_4, 21>();
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, 290f, -324f)) * vec4<f32>(-381f, 1000f, -122f, 1000f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-638f, 285f, -607f, 902f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-925f, -549f, -177f, 273f)))), vec4<f32>(1f, _wgslsmith_f_op_f32(select(2084f, -683f, global1[_wgslsmith_index_u32(u_input.a.x, 19u)])), -1451f, _wgslsmith_f_op_f32(1000f * -929f)), func_4(_wgslsmith_f_op_f32(min(1454f, 802f)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, 8118u), 21u)], true, global0[_wgslsmith_index_u32(u_input.b, 21u)]).b.b))), func_6(global0[_wgslsmith_index_u32(~u_input.b, 21u)]).a, Struct_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(664f, -718f, -664f, 721f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-504f, 1631f, 271f, -622f))))), func_2().b, ~vec3<u32>(~u_input.b, _wgslsmith_mod_u32(33129u, u_input.b), u_input.b)));
    global0 = array<Struct_4, 21>();
    return !select(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)] | true, var_0.c.a.x >= var_0.a.x, global1[_wgslsmith_index_u32(31308u, 19u)], global1[_wgslsmith_index_u32(func_3(1938f, var_0.b.a, -885f, vec4<u32>(4294967295u, var_0.c.c.x, var_0.c.c.x, 1u)), 19u)]), !vec4<bool>(arg_0 == arg_0, var_0.c.b.a, true, global1[_wgslsmith_index_u32(0u, 19u)] || false), var_0.b.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = func_9(func_8(func_7(Struct_2(func_1(), Struct_1(true, global1[_wgslsmith_index_u32(u_input.b, 19u)], 282f)), Struct_1(true && global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)] || global1[_wgslsmith_index_u32(33310u, 19u)], _wgslsmith_f_op_f32(round(1000f)))), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(1362f + -1295f), _wgslsmith_f_op_f32(step(1000f, -934f)), -114f, _wgslsmith_div_f32(-894f, 1815f)), Struct_1(any(vec3<bool>(global1[_wgslsmith_index_u32(33139u, 19u)], false, true)), func_6(Struct_4(vec4<f32>(101f, -1028f, -123f, 1000f), Struct_1(false, global1[_wgslsmith_index_u32(u_input.b, 19u)], -955f), u_input.a)).a.b.a, -366f), ~min(u_input.a, vec3<u32>(u_input.a.x, u_input.b, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(777f, -500f, 1893f, 595f))), func_2().b));
    let var_2 = func_7(Struct_2(func_6(func_7(func_6(global0[_wgslsmith_index_u32(23738u, 21u)]).a, func_7(Struct_2(Struct_1(false, true, 569f), Struct_1(var_1.x, var_1.x, 555f)), Struct_1(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], -890f)).b)).a.a, Struct_1((false | global1[_wgslsmith_index_u32(u_input.b, 19u)]) == !global1[_wgslsmith_index_u32(93856u, 19u)], true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -599f) - 1f))), Struct_1(var_1.x, true, 1f)).a.yy;
    let var_3 = func_1();
    global1 = array<bool, 19>();
    let var_4 = func_6(Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-514f, 1000f, _wgslsmith_div_f32(var_3.c, 453f), _wgslsmith_f_op_f32(1000f * -546f))), func_4(_wgslsmith_f_op_f32(-func_4(var_3.c, global0[_wgslsmith_index_u32(u_input.b, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)], Struct_4(vec4<f32>(var_2.x, -160f, var_3.c, -724f), var_3, vec3<u32>(0u, u_input.a.x, u_input.a.x))).b.c), global0[_wgslsmith_index_u32(4294967295u, 21u)], select(true, var_1.x, true) || func_1().b, func_4(_wgslsmith_f_op_f32(var_3.c - 619f), Struct_4(vec4<f32>(-351f, 1194f, var_3.c, var_2.x), var_3, vec3<u32>(u_input.b, 56425u, 1u)), !var_3.a, func_5(Struct_4(vec4<f32>(324f, 1923f, var_3.c, -1000f), var_3, vec3<u32>(0u, u_input.a.x, 10816u))))).b, vec3<u32>(min(u_input.b, ~u_input.b), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x), vec4<u32>(0u, 0u, u_input.b, u_input.a.x), vec4<u32>(1u, 0u, 4294967295u, 4294967295u)), vec4<u32>(u_input.b, 14238u, u_input.b, u_input.b) | vec4<u32>(0u, 44034u, 68710u, 1516u)), u_input.b))).a;
    var_0 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(-(u_input.c.xy ^ ~select(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.yx, var_1.x)));
}

