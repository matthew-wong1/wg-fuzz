struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3;

var<private> global2: array<f32, 6>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_clamp_u32(u_input.d, 0u << (global0.b % 32u), 5414u) == select(global0.b, ~0u, global1.a.a), _wgslsmith_dot_vec3_u32(vec3<u32>(~global1.a.b, ~(~39826u), abs(global1.a.b)), vec3<u32>(global1.a.b, 75818u, ~(~41670u))));
    var_0 = global1.a;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(809u, 6u)], 1387f, -568f, global2[_wgslsmith_index_u32(0u, 6u)]) - vec4<f32>(283f, -970f, -1494f, -198f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(505f, -787f, 1242f, 384f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1979f, 552f, global2[_wgslsmith_index_u32(46022u, 6u)], 481f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, global2[_wgslsmith_index_u32(global0.b, 6u)], -483f, -483f), vec4<f32>(-560f, global2[_wgslsmith_index_u32(var_0.b, 6u)], 889f, -1000f))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], 580f, 1000f, 551f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(23797u, 6u)] * -926f)), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global0.b), 6u)], 550f), -1149f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(min(0u, 4595u), 6u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(u_input.d, 6u)])))));
    global0 = Struct_1(false, global1.a.b);
    let var_2 = vec3<i32>(-select(~u_input.c.x, u_input.b.x, var_0.a), -1i, -18591i);
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: vec3<f32>) -> u32 {
    let var_0 = arg_2;
    let var_1 = all(vec3<bool>(arg_2.a == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_3.x, -1371f, global1.a.a)), _wgslsmith_f_op_f32(min(330f, arg_0.a.x)), !global0.a)), global1.a.a, true));
    var var_2 = Struct_3(Struct_1(true, global0.b));
    var var_3 = u_input.a;
    global1 = Struct_3(Struct_1(true | var_1, 44876u));
    return _wgslsmith_clamp_u32(global1.a.b, reverseBits(_wgslsmith_sub_u32(func_3(), _wgslsmith_div_u32(20795u, _wgslsmith_add_u32(global1.a.b, 8677u)))), 45634u);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>) -> Struct_3 {
    global0 = global1.a;
    var var_0 = func_3();
    var var_1 = Struct_4(arg_0.x, _wgslsmith_dot_vec4_u32(min(arg_1, reverseBits(firstTrailingBit(arg_1))), arg_1), Struct_1(false, ~(~firstLeadingBit(1u))), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(4294967295u, 6u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(-315f, global2[_wgslsmith_index_u32(u_input.d, 6u)]) + global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_2(Struct_2(vec2<f32>(global2[_wgslsmith_index_u32(global1.a.b, 6u)], -343f), global0.a), vec3<bool>(global1.a.a, global0.a, global1.a.a), Struct_5(global2[_wgslsmith_index_u32(4294967295u, 6u)]), vec3<f32>(global2[_wgslsmith_index_u32(32139u, 6u)], global2[_wgslsmith_index_u32(global0.b, 6u)], -855f)), u_input.d), 6u)]))), Struct_3(Struct_1(true || select(false, true, global0.a), _wgslsmith_sub_u32(~1u, arg_1.x))));
    var var_2 = Struct_4(_wgslsmith_sub_i32(-(countOneBits(var_1.a) ^ (i32(-1i) * -1i)), -2147483647i), global1.a.b, Struct_1(all(!select(vec2<bool>(false, false), vec2<bool>(global1.a.a, var_1.c.a), global0.a)), _wgslsmith_sub_u32(~(~arg_1.x), 0u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.d))))), var_1.e);
    global2 = array<f32, 6>();
    return var_1.e;
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_5 {
    global1 = func_4(_wgslsmith_mod_vec4_i32(-select(vec4<i32>(u_input.b.x, u_input.a, u_input.c.x, 2147483647i) ^ vec4<i32>(u_input.a, 55986i, u_input.c.x, u_input.b.x), vec4<i32>(u_input.c.x, 26729i, -2147483647i, u_input.c.x), u_input.d != 91749u), vec4<i32>(max(u_input.b.x, abs(u_input.b.x)), 57268i, u_input.c.x, -2147483647i << (_wgslsmith_sub_u32(global1.a.b, 36348u) % 32u))), min(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, global0.b, global0.b, 1u), vec4<u32>(4294967295u, 0u, 18675u, arg_1)), vec4<u32>(arg_1, 49882u, 0u, u_input.d) & vec4<u32>(46959u, 78882u, arg_1, arg_1)), min(~vec4<u32>(26189u, 1u, global1.a.b, global0.b), ~vec4<u32>(1u, global1.a.b, 39630u, 0u))), ~vec4<u32>(42213u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.b, arg_1, global1.a.b), vec3<u32>(global1.a.b, arg_1, arg_1)), func_2(Struct_2(vec2<f32>(-1574f, 1000f), true), vec3<bool>(true, global1.a.a, global1.a.a), Struct_5(-880f), vec3<f32>(global2[_wgslsmith_index_u32(6172u, 6u)], 382f, 785f)), 1u)));
    global1 = func_4(-((vec4<i32>(-1i) * -vec4<i32>(0i, u_input.a, u_input.c.x, u_input.c.x)) ^ select(vec4<i32>(u_input.b.x, -16690i, 2147483647i, u_input.a), min(vec4<i32>(u_input.b.x, u_input.b.x, 9333i, u_input.a), vec4<i32>(2147483647i, u_input.c.x, 0i, u_input.a)), global1.a.a)), vec4<u32>(_wgslsmith_sub_u32(arg_1, _wgslsmith_add_u32(firstTrailingBit(u_input.d), ~u_input.d)), _wgslsmith_clamp_u32(1u, ~1u, _wgslsmith_sub_u32(~8455u, arg_1)), 1u, 33757u));
    global2 = array<f32, 6>();
    global0 = func_4(abs(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.c.x)), vec4<i32>(u_input.b.x, 17940i, u_input.b.x, u_input.b.x) << (vec4<u32>(arg_1, 0u, 121855u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 0i, u_input.b.x, u_input.a), vec4<i32>(u_input.b.x, u_input.a, u_input.a, u_input.b.x))), _wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.a, -1i, u_input.a, u_input.c.x), vec4<i32>(u_input.c.x, u_input.a, 8115i, u_input.a), vec4<bool>(true, false, false, false)), ~vec4<i32>(2447i, 1i, u_input.c.x, u_input.b.x)))), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, global1.a.b, global0.b, global0.b), vec4<u32>(global0.b, u_input.d, global0.b, global1.a.b)), vec4<u32>(4294967295u, arg_1, global1.a.b, 62460u)) & ~70090u, select(_wgslsmith_mult_u32(global0.b, u_input.d), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 7291u, global0.b), vec4<u32>(arg_1, global1.a.b, global0.b, global0.b)), !arg_0) & global1.a.b, _wgslsmith_mult_u32(~global0.b, arg_1), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(global1.a.b, 74287u)), vec2<u32>(_wgslsmith_clamp_u32(1u, global1.a.b, u_input.d), func_4(vec4<i32>(u_input.b.x, -1834i, 14675i, -93934i), vec4<u32>(4294967295u, global0.b, 64040u, global1.a.b)).a.b)))).a;
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.a.b, 1u) ^ 4294967295u, 6u)])));
}

fn func_5(arg_0: Struct_5, arg_1: f32, arg_2: vec3<i32>, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = abs(~countOneBits(max(vec3<u32>(u_input.d, u_input.d, global0.b), vec3<u32>(1u, 40537u, 0u)) ^ select(vec3<u32>(global1.a.b, 13702u, 14297u), vec3<u32>(67194u, u_input.d, 21044u), false)));
    let var_1 = arg_0.a;
    var var_2 = _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_div_f32(1594f, 240f)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, -273f, 1577f)))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 909f, global2[_wgslsmith_index_u32(global0.b, 6u)]), vec3<f32>(-1000f, global2[_wgslsmith_index_u32(48013u, 6u)], arg_1), global0.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 6u)], 1415f, var_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, -275f, 215f)))))));
    var var_4 = _wgslsmith_sub_u32(firstTrailingBit(4294967295u), u_input.d);
    return func_4(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(arg_2.x), u_input.b.x), _wgslsmith_dot_vec3_i32(max(vec3<i32>(arg_3.x, 0i, -2147483647i), vec3<i32>(0i, 19509i, -2147483647i)), vec3<i32>(arg_2.x, arg_2.x, 4859i)), -(~(-1302i)), u_input.b.x), select(vec4<i32>(firstTrailingBit(arg_2.x), u_input.b.x, min(u_input.b.x, u_input.c.x), arg_2.x), arg_3, !all(vec4<bool>(true, global1.a.a, global1.a.a, global1.a.a)))), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(u_input.d), firstTrailingBit(1u), global1.a.b, 0u), select(~vec4<u32>(global0.b, 1u, var_0.x, u_input.d), reverseBits(vec4<u32>(var_0.x, u_input.d, 11240u, var_0.x)), true))));
}

fn func_6(arg_0: Struct_3) -> Struct_4 {
    var var_0 = vec3<u32>(~global1.a.b, _wgslsmith_clamp_u32(global0.b, 1u, firstLeadingBit(global1.a.b)), countOneBits(global1.a.b) ^ 3791u);
    var var_1 = func_1(select(global0.a, all(vec2<bool>(true, true)), all(vec3<bool>(!global0.a, false, true))), ~var_0.x);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~var_0.x, 6u)])), var_1.a, -1923f);
    let var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -u_input.b.x, _wgslsmith_dot_vec3_i32(abs(u_input.c), ~(vec3<i32>(u_input.a, 0i, 28545i) ^ u_input.c))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, min(-2147483647i, 2147483647i)), vec2<i32>(-2147483647i, ~u_input.b.x)), _wgslsmith_mod_i32(u_input.a, u_input.c.x), _wgslsmith_sub_i32(u_input.c.x, max(0i, -1i)), _wgslsmith_div_i32(1i, 19241i)), firstLeadingBit(reverseBits(vec4<i32>(39946i ^ u_input.c.x, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 1i), 1i, abs(u_input.b.x)))));
    let var_4 = firstLeadingBit(min(var_0.yz, ~(~countOneBits(var_0.yy))));
    return Struct_4(_wgslsmith_clamp_i32(~529i, -2147483647i, var_3.x), var_0.x, Struct_1(global0.a, _wgslsmith_dot_vec3_u32(countOneBits(max(vec3<u32>(0u, var_0.x, 30503u), vec3<u32>(4294967295u, 105229u, 13128u))), ~(~vec3<u32>(1u, 1u, 2981u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(4294967295u & _wgslsmith_mod_u32(global1.a.b, 104767u), 6u)])))), Struct_3(Struct_1(arg_0.a.a, func_2(Struct_2(var_2.xy, false), vec3<bool>(global0.a, global0.a, true), func_1(global1.a.a, 0u), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, global2[_wgslsmith_index_u32(arg_0.a.b, 6u)], global2[_wgslsmith_index_u32(var_4.x, 6u)]), vec3<f32>(1101f, var_2.x, var_2.x)))))));
}

fn func_7(arg_0: i32, arg_1: Struct_4, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(false, global0.b));
    global2 = array<f32, 6>();
    global0 = Struct_1(true, global1.a.b);
    let var_1 = select(vec4<bool>(any(select(select(vec4<bool>(var_0.a.a, global1.a.a, arg_1.c.a, arg_2.a), vec4<bool>(arg_2.a, false, false, false), arg_1.c.a), !vec4<bool>(var_0.a.a, global0.a, false, global1.a.a), select(false, true, var_0.a.a))), func_5(Struct_5(-547f), _wgslsmith_f_op_f32(-arg_1.d), vec3<i32>(arg_1.a, u_input.c.x, 25995i), reverseBits(vec4<i32>(-41539i, arg_1.a, arg_1.a, 0i))).a.a | !select(global0.a, true, global1.a.a), var_0.a.a, arg_2.a), !(!(!vec4<bool>(global0.a, true, arg_1.c.a, false))), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_1.e.a.a, global1.a.a, true, arg_2.a), vec4<bool>(global0.a, arg_1.c.a, arg_2.a, var_0.a.a), true), global1.a.a), vec4<bool>(!global1.a.a, func_6(func_5(Struct_5(-542f), 1117f, vec3<i32>(arg_1.a, -2147483647i, u_input.a), vec4<i32>(-1i, u_input.a, arg_0, -1i))).c.a, true, all(select(vec4<bool>(arg_2.a, true, false, false), vec4<bool>(arg_2.a, true, global1.a.a, true), true))), !vec4<bool>(true, !arg_2.a, any(vec4<bool>(true, false, false, global1.a.a)), -1i != u_input.b.x)));
    let var_2 = select(!select(var_1.xy, !select(var_1.xz, var_1.yw, arg_2.a), _wgslsmith_f_op_f32(544f - arg_1.d) < _wgslsmith_f_op_f32(f32(-1f) * -710f)), select(var_1.wx, vec2<bool>(any(var_1), true), var_1.x), vec2<bool>(true, true));
    return func_6(Struct_3(Struct_1(false, 0u))).c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(func_7(_wgslsmith_mult_i32(u_input.a, reverseBits(-1i)), func_6(func_5(func_1(global1.a.a, global1.a.b), _wgslsmith_f_op_f32(round(-1013f)), -vec3<i32>(u_input.c.x, u_input.b.x, 11803i), max(vec4<i32>(1i, -35893i, 2147483647i, u_input.a), vec4<i32>(-45650i, u_input.c.x, 42325i, 72715i)))), Struct_1(true, ~min(53835u, global1.a.b))));
    global2 = array<f32, 6>();
    global2 = array<f32, 6>();
    global1 = Struct_3(global1.a);
    let var_0 = !vec2<bool>(any(!vec2<bool>(true, global1.a.a)), !(!global1.a.a));
    let var_1 = ~(~global1.a.b);
    let var_2 = Struct_3(global1.a);
    global2 = array<f32, 6>();
    var var_3 = firstLeadingBit(-_wgslsmith_mod_i32(_wgslsmith_clamp_i32(40429i, 0i, u_input.c.x) | _wgslsmith_add_i32(-1i, -71279i), -u_input.c.x >> (_wgslsmith_mod_u32(global0.b, global1.a.b) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(max(global0.b, u_input.d), global0.b, _wgslsmith_sub_u32(9361u, global0.b), ~(27835u | var_1)) ^ vec4<u32>(func_5(func_1(false, 31153u), _wgslsmith_f_op_f32(f32(-1f) * -1321f), u_input.c, ~vec4<i32>(2147483647i, u_input.a, u_input.a, -52532i)).a.b, 52357u, global1.a.b, _wgslsmith_add_u32(var_2.a.b, _wgslsmith_sub_u32(global0.b, 16871u))), ~(~(0u ^ global0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-620f, 348f))), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(global0.b, 6u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(5637u, 6u)] - -1327f), u_input.b.x == -28767i)), all(!vec4<bool>(false, false, global0.a, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.d, 6u)], -1685f, true)))) + 1236f)));
}

