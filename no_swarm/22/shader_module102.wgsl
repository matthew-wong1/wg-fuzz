struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 21> = array<f32, 21>(-2090f, -496f, -815f, -699f, 589f, -1755f, 1489f, 1912f, -322f, -304f, -147f, 1000f, 453f, -1026f, -594f, 1000f, -238f, -694f, -596f, 244f, 1327f);

var<private> global2: array<i32, 23> = array<i32, 23>(1i, 0i, 20611i, 1450i, -69111i, i32(-2147483648), -23172i, 21336i, 21443i, 2147483647i, -31500i, 0i, 1i, 2147483647i, -22774i, 26542i, -34608i, -23339i, 275i, -15879i, -36056i, -1273i, 1i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global0 = all(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false), vec4<bool>(false, false, true, false))));
    let var_0 = global2[_wgslsmith_index_u32(u_input.a & _wgslsmith_sub_u32(u_input.a | ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, u_input.a)), u_input.a), 23u)];
    var var_1 = vec3<bool>(true, any(vec4<bool>(!any(vec2<bool>(false, true)), all(vec4<bool>(true, false, true, false)), select(true, false, true), true)), !(!all(vec3<bool>(true, false, true))));
    var_1 = !(!select(select(vec3<bool>(true, false, var_1.x), !vec3<bool>(var_1.x, var_1.x, var_1.x), !var_1.x), select(select(vec3<bool>(var_1.x, false, false), vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, false, false)), !vec3<bool>(var_1.x, var_1.x, true), !var_1.x), any(!vec4<bool>(var_1.x, var_1.x, var_1.x, false))));
    var var_2 = !any(vec3<bool>(!(global2[_wgslsmith_index_u32(u_input.a, 23u)] >= global2[_wgslsmith_index_u32(u_input.a, 23u)]), true, reverseBits(u_input.a) == u_input.a));
    return u_input.a;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = arg_0.a;
    let var_1 = vec3<f32>(arg_2, -1502f, arg_1);
    global0 = arg_0.b;
    var var_2 = arg_0.a;
    let var_3 = vec4<u32>(~(~_wgslsmith_sub_u32(4294967295u, abs(8582u))), 46219u, func_3(), u_input.a);
    return Struct_1(any(!select(vec4<bool>(true, arg_0.b, arg_0.a, true), select(vec4<bool>(arg_0.a, true, arg_0.a, true), vec4<bool>(arg_0.a, arg_0.b, arg_0.a, true), arg_0.a), !vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b))), false, vec3<u32>(_wgslsmith_sub_u32(~var_3.x, arg_0.c.x), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_3.x), ~vec2<u32>(var_3.x, 134153u))), u_input.a), select(vec3<i32>(~_wgslsmith_clamp_i32(arg_0.d.x, -2147483647i, arg_3.x), _wgslsmith_mult_i32(_wgslsmith_mult_i32(69459i, global2[_wgslsmith_index_u32(u_input.a, 23u)]), global2[_wgslsmith_index_u32(7841u, 23u)]), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, arg_0.d.x, arg_0.d.x, arg_0.d.x)), ~vec4<i32>(1i, 6016i, -2147483647i, -1i))), ~(~firstLeadingBit(arg_3)), !vec3<bool>(true, !arg_0.a, false)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    var var_0 = vec3<bool>(arg_0.a, true, true);
    var var_1 = vec2<u32>(u_input.a ^ (0u ^ ~(~arg_2)), 4294967295u);
    var var_2 = countOneBits(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, 2147483647i), _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(arg_0.d.zy, arg_0.d.xx), arg_0.d.yx), 1i));
    let var_3 = 1183f;
    let var_4 = Struct_3(-166f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(275f + -1711f) - 264f))));
    return arg_0;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(func_2(Struct_1(false, true, select(~vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u)), vec3<bool>(true, true, false)), abs(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], 10320i, global2[_wgslsmith_index_u32(4188u, 23u)]))), 548f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(~1u, 21u)])))), _wgslsmith_div_vec3_i32(abs(-vec3<i32>(-1i, 23417i, global2[_wgslsmith_index_u32(35150u, 23u)])), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)]) | ~vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], 15321i, 1i))), Struct_2(global2[_wgslsmith_index_u32(~func_3(), 23u)], any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)) | func_2(func_2(Struct_1(false, false, vec3<u32>(u_input.a, u_input.a, 27202u), vec3<i32>(1i, 18667i, 0i)), -416f, global1[_wgslsmith_index_u32(u_input.a, 21u)], vec3<i32>(44348i, -2147483647i, -2147483647i)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(73399u, 85113u), 21u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 21u)]), vec3<i32>(24865i, global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(27097u, 23u)])).b, func_2(func_2(Struct_1(true, true, vec3<u32>(4294967295u, 47998u, 0u), vec3<i32>(-2147483647i, -21042i, global2[_wgslsmith_index_u32(u_input.a, 23u)])), global1[_wgslsmith_index_u32(u_input.a, 21u)], -1756f, vec3<i32>(-23194i, global2[_wgslsmith_index_u32(72653u, 23u)], 1i) << (vec3<u32>(34219u, 4294967295u, u_input.a) % vec3<u32>(32u))), _wgslsmith_div_f32(-297f, -1792f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 21u)]))), min(max(vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.a, 23u)], -18514i), vec3<i32>(-23829i, global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(u_input.a, 23u)])), abs(vec3<i32>(2147483647i, 2147483647i, -2873i)))).c, select(min(~82673u, ~u_input.a), ~abs(u_input.a), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, _wgslsmith_clamp_u32(17730u, _wgslsmith_mult_u32(24313u, u_input.a), _wgslsmith_add_u32(0u, 71102u))), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(57308u, u_input.a, 37883u) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 54619u, u_input.a)), ~vec3<u32>(u_input.a, 0u, 4294967295u) >> (_wgslsmith_div_vec3_u32(vec3<u32>(50624u, u_input.a, u_input.a), vec3<u32>(63960u, u_input.a, 14764u)) % vec3<u32>(32u)))));
    var var_1 = Struct_2(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-7153i, global2[_wgslsmith_index_u32(var_0.c.x, 23u)], 18133i) ^ var_0.d, ~vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], var_0.d.x, -33282i))), any(vec2<bool>(all(select(vec3<bool>(true, true, var_0.b), vec3<bool>(var_0.b, var_0.a, true), vec3<bool>(true, false, var_0.b))), all(vec2<bool>(true, true)))), vec3<u32>(~(~_wgslsmith_dot_vec2_u32(var_0.c.yy, vec2<u32>(var_0.c.x, var_0.c.x))), var_0.c.x, 4294967295u), u_input.a | u_input.a);
    let var_2 = Struct_3(global1[_wgslsmith_index_u32(~(0u << (_wgslsmith_mod_u32(var_0.c.x >> (u_input.a % 32u), abs(0u)) % 32u)), 21u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(-688f, global1[_wgslsmith_index_u32(~17364u, 21u)]) + _wgslsmith_f_op_f32(-1281f * global1[_wgslsmith_index_u32(7680u, 21u)])));
    var var_3 = Struct_3(global1[_wgslsmith_index_u32(var_0.c.x, 21u)], _wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 21u)] - var_2.a)));
    let var_4 = _wgslsmith_dot_vec4_i32(min(select(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -26658i, 60948i, var_1.a), vec4<i32>(global2[_wgslsmith_index_u32(var_1.c.x, 23u)], 0i, var_1.a, var_1.a), vec4<i32>(var_1.a, 0i, var_0.d.x, var_1.a)), ~vec4<i32>(-38126i, 1i, 2147483647i, 1i) | -vec4<i32>(global2[_wgslsmith_index_u32(var_0.c.x, 23u)], var_1.a, -2239i, 26365i), true), ~(-vec4<i32>(-63747i, var_0.d.x, 1i, 1i))), -vec4<i32>(7846i >> (0u % 32u), -53749i, -12615i, 62527i));
    return Struct_1(!var_1.b, true, ~firstTrailingBit(var_0.c), ~(~_wgslsmith_div_vec3_i32(-var_0.d, _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, var_4, var_4), vec3<i32>(var_1.a, 0i, var_4)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(20308u, 21u)] - 225f) + _wgslsmith_f_op_f32(-583f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1449f))))), -273f);
    var var_1 = -vec4<i32>(~0i, 1i, _wgslsmith_mult_i32(1i, _wgslsmith_div_i32(-23424i, arg_1.a)), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(35844u, 23u)] ^ 2147483647i, -global2[_wgslsmith_index_u32(57871u, 23u)])) ^ (min(~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, global2[_wgslsmith_index_u32(4294967295u, 23u)], 31545i, arg_0.d.x), vec4<i32>(arg_1.a, arg_0.d.x, 23736i, 2147483647i)), -vec4<i32>(arg_0.d.x, global2[_wgslsmith_index_u32(0u, 23u)], arg_1.a, arg_0.d.x) & (vec4<i32>(arg_0.d.x, global2[_wgslsmith_index_u32(16936u, 23u)], global2[_wgslsmith_index_u32(arg_1.c.x, 23u)], 2147483647i) & vec4<i32>(arg_0.d.x, -80743i, 12999i, 0i))) << (vec4<u32>(arg_1.c.x, _wgslsmith_dot_vec2_u32(arg_1.c.zx, max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 16409u))), 0u, (arg_1.c.x << (u_input.a % 32u)) ^ _wgslsmith_dot_vec3_u32(arg_0.c, vec3<u32>(4294967295u, 23007u, u_input.a))) % vec4<u32>(32u)));
    let var_2 = vec2<bool>(func_1().a, !(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, arg_1.d), arg_0.c.zz) < 0u) & false);
    global2 = array<i32, 23>();
    var var_3 = ~arg_0.c.x;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 21>();
    let var_0 = func_5(func_1(), Struct_2(_wgslsmith_div_i32(57700i, global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a, u_input.a), 23u)]), true, max(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(1u, 115633u, u_input.a)), ~vec3<u32>(u_input.a, u_input.a, u_input.a)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(23275u, 4294967295u, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(u_input.a, u_input.a, 40274u)), vec3<u32>(52193u, 6841u, u_input.a) >> (vec3<u32>(48136u, u_input.a, u_input.a) % vec3<u32>(32u))), ~4294967295u), vec4<bool>(true, !all(vec4<bool>(false, false, false, false)), ((1u >= u_input.a) & select(false, false, true)) & true, true));
    let var_1 = Struct_3(565f, _wgslsmith_f_op_f32(min(-334f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1031f, var_0.b))))))));
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(u_input.a, 23u)], all(vec4<bool>(true, true, var_0.b <= _wgslsmith_f_op_f32(select(-422f, var_1.b, true)), all(vec4<bool>(true, true, true, true)))), max(~vec3<u32>(u_input.a, _wgslsmith_sub_u32(14542u, 1u), u_input.a), vec3<u32>(u_input.a, ~u_input.a, 30139u)), u_input.a);
    global1 = array<f32, 21>();
    let var_3 = !select(!vec4<bool>(!var_2.b, false, var_2.b, var_2.b), !(!(!vec4<bool>(var_2.b, false, var_2.b, false))), select(select(vec4<bool>(true, true, false, true), !vec4<bool>(false, var_2.b, var_2.b, true), !vec4<bool>(var_2.b, var_2.b, true, false)), vec4<bool>(true, !var_2.b, false, all(vec2<bool>(true, true))), !select(vec4<bool>(var_2.b, var_2.b, true, true), vec4<bool>(false, true, var_2.b, var_2.b), true)));
    let var_4 = -func_2(func_4(func_4(Struct_1(var_2.b, var_3.x, var_2.c, vec3<i32>(global2[_wgslsmith_index_u32(21637u, 23u)], var_2.a, 64201i)), Struct_2(0i, false, var_2.c, var_2.c.x), 46269u), Struct_2(func_2(Struct_1(var_2.b, true, var_2.c, vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], 6300i, 2558i)), -1695f, 610f, vec3<i32>(0i, global2[_wgslsmith_index_u32(var_2.d, 23u)], -1i)).d.x, -1519f > var_0.a, firstLeadingBit(var_2.c), min(20703u, 0u)), ~14995u), _wgslsmith_f_op_f32(step(var_0.b, -573f)), _wgslsmith_f_op_f32(var_0.b - 452f), func_2(Struct_1(var_2.b, true, func_2(Struct_1(var_3.x, false, vec3<u32>(23904u, u_input.a, 94181u), vec3<i32>(-50908i, global2[_wgslsmith_index_u32(83310u, 23u)], -2147483647i)), var_0.a, var_0.b, vec3<i32>(var_2.a, 27379i, -2147483647i)).c, countOneBits(vec3<i32>(var_2.a, 2147483647i, global2[_wgslsmith_index_u32(u_input.a, 23u)]))), _wgslsmith_f_op_f32(ceil(func_5(Struct_1(var_2.b, false, var_2.c, vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(89917u, 23u)], -22642i)), Struct_2(0i, false, var_2.c, 89700u), vec4<bool>(true, var_3.x, false, var_2.b)).b)), -185f, -firstTrailingBit(vec3<i32>(var_2.a, var_2.a, var_2.a))).d).d.x;
    var var_5 = abs(~vec4<u32>(1u << (var_2.d % 32u), _wgslsmith_mod_u32(var_2.d, 36365u), min(28328u, 0u), _wgslsmith_sub_u32(u_input.a, 11355u))) | ~(~vec4<u32>(~43560u, func_1().c.x, var_2.c.x, 873u));
    let x = u_input.a;
    s_output = StorageBuffer(~((~vec4<u32>(var_5.x, u_input.a, 4294967295u, var_5.x) ^ vec4<u32>(4294967295u, 23963u, 0u, 22099u)) << ((~vec4<u32>(13445u, var_2.c.x, u_input.a, var_2.c.x) & countOneBits(vec4<u32>(29246u, 17271u, 30177u, 0u))) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(~var_2.d, 21u)], 0i);
}

