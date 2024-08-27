struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(true, true, true, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: f32) -> bool {
    var var_0 = _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(abs(_wgslsmith_add_i32(-2147483647i, 1i)), u_input.b, ~1i)), ~vec3<i32>(max(0i, abs(2147483647i)), 1i, firstTrailingBit(u_input.b)));
    var var_1 = Struct_1(all(!select(select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], false), vec2<bool>(true, false), global0[_wgslsmith_index_u32(1u, 4u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 4u)], true), vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 4u)])), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)]))), vec2<bool>(!(true && (true & global0[_wgslsmith_index_u32(arg_1, 4u)])), all(vec4<bool>(true, global0[_wgslsmith_index_u32(68250u, 4u)] | true, false, false))), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, arg_1, 2731u, 4294967295u), countOneBits(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, 1u, arg_1, 0u) ^ vec4<u32>(15404u, 1u, 15054u, arg_1), vec4<u32>(arg_1, 29308u, arg_1, u_input.a) ^ vec4<u32>(arg_1, 4294967295u, 39385u, arg_1), vec4<u32>(1u, arg_1, arg_1, arg_1) | vec4<u32>(69178u, 64118u, 68596u, arg_1))), ~u_input.a), true);
    global0 = array<bool, 4>();
    global0 = array<bool, 4>();
    var_1 = Struct_1(all(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 4u)], true, global0[_wgslsmith_index_u32(0u, 4u)]), !(!vec4<bool>(false, global0[_wgslsmith_index_u32(arg_1, 4u)], global0[_wgslsmith_index_u32(arg_1, 4u)], false)), select(any(var_1.b), true, true))), vec2<bool>(((true & global0[_wgslsmith_index_u32(7790u, 4u)]) | var_1.b.x) | any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, var_1.b.x))), var_1.a), arg_1, all(select(vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 644u, arg_1, arg_1), vec4<u32>(arg_1, 69364u, 4294967295u, 4294967295u)), 4u)], true), select(vec3<bool>(false, true, var_1.d), !vec3<bool>(var_1.b.x, var_1.d, var_1.d), vec3<bool>(true, true, true)), vec3<bool>(false, u_input.a == arg_1, global0[_wgslsmith_index_u32(66045u, 4u)] & global0[_wgslsmith_index_u32(arg_1, 4u)]))));
    return all(var_1.b);
}

fn func_2() -> Struct_3 {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(-_wgslsmith_add_i32(-23778i, -u_input.b), u_input.b), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, u_input.b, u_input.b) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(abs(select(vec3<i32>(0i, 39688i, 5486i), vec3<i32>(u_input.b, 1i, 0i), global0[_wgslsmith_index_u32(1u, 4u)])), vec3<i32>(1i, u_input.b, 1i ^ u_input.b))), u_input.b, -2147483647i);
    let var_1 = Struct_3(!vec2<bool>(true, true & (global0[_wgslsmith_index_u32(u_input.a, 4u)] || global0[_wgslsmith_index_u32(u_input.a, 4u)])), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(96236u, u_input.a) >> (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), vec2<u32>(u_input.a, select(abs(34469u), u_input.a, all(vec2<bool>(false, false))))), reverseBits(abs(var_0.zyw)));
    global0 = array<bool, 4>();
    let var_2 = Struct_2(41739i, Struct_1(-1i != (-2147483647i | _wgslsmith_dot_vec2_i32(var_0.xw, vec2<i32>(var_1.c.x, -1i))), var_1.a, min(~_wgslsmith_sub_u32(var_1.b, u_input.a), var_1.b), func_3(_wgslsmith_f_op_f32(f32(-1f) * -480f), (u_input.a >> (u_input.a % 32u)) >> (_wgslsmith_mult_u32(u_input.a, 18891u) % 32u), -604f, _wgslsmith_f_op_f32(floor(1f)))), Struct_1(!(true | global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1148u, 42781u), 4u)]), vec2<bool>(1i < _wgslsmith_dot_vec2_i32(var_0.xz, var_1.c.yy), false), _wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.b, _wgslsmith_mod_u32(55504u, 39101u)), ~vec2<u32>(u_input.a, var_1.b) >> ((vec2<u32>(1u, var_1.b) << (vec2<u32>(33259u, 47223u) % vec2<u32>(32u))) % vec2<u32>(32u))), true), !vec4<bool>(true & any(vec4<bool>(true, global0[_wgslsmith_index_u32(22472u, 4u)], true, false)), true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, max(66392u, 4294967295u)), 4u)], 45467i > _wgslsmith_mod_i32(0i, var_1.c.x)), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(722f, 151f, global0[_wgslsmith_index_u32(23492u, 4u)])))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-544f + -340f), -833f)), vec2<bool>(!(global0[_wgslsmith_index_u32(var_1.b, 4u)] || var_1.a.x), false), min(1u, ~_wgslsmith_add_u32(0u, var_1.b)), true));
    var var_3 = -373f;
    return Struct_3(var_2.d.wx, 29429u, _wgslsmith_sub_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(var_1.c, vec3<i32>(var_2.a, var_1.c.x, 3865i))) | abs(_wgslsmith_mod_vec3_i32(var_1.c, vec3<i32>(var_2.a, var_1.c.x, 0i))), min(var_1.c, vec3<i32>(var_1.c.x, -84357i, var_2.a)) & _wgslsmith_mult_vec3_i32(~vec3<i32>(-10647i, -1i, var_2.a), -vec3<i32>(var_0.x, var_2.a, u_input.b))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> Struct_3 {
    global0 = array<bool, 4>();
    var var_0 = arg_2.c.yz;
    global0 = array<bool, 4>();
    global0 = array<bool, 4>();
    var_0 = max(arg_2.c.zy, vec2<i32>(~_wgslsmith_mult_i32(0i, 5645i) & -_wgslsmith_mod_i32(var_0.x, -6181i), var_0.x));
    return func_2();
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = select(vec3<bool>(!all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], false, global0[_wgslsmith_index_u32(arg_1.b, 4u)])), arg_3.a, true), !select(vec3<bool>(arg_1.a.x, true, arg_1.c.x == 10076i), !(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(arg_3.c, 4u)], true)), select(vec3<bool>(arg_1.a.x, true, false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 4u)], arg_1.a.x, arg_3.d), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3.c, arg_1.b), 4u)])), (!(arg_1.c.x <= -7225i) | arg_1.a.x) | (~arg_3.c > 1u));
    global0 = array<bool, 4>();
    global0 = array<bool, 4>();
    var var_1 = arg_1;
    var_1 = func_1(arg_3, _wgslsmith_f_op_f32(min(-1087f, _wgslsmith_f_op_f32(f32(-1f) * -825f))), func_2());
    return Struct_1(func_2().a.x || true, vec2<bool>(all(select(select(vec4<bool>(arg_3.b.x, false, arg_1.a.x, false), vec4<bool>(var_1.a.x, true, var_1.a.x, false), vec4<bool>(false, true, arg_3.b.x, arg_3.b.x)), select(vec4<bool>(arg_1.a.x, arg_1.a.x, global0[_wgslsmith_index_u32(arg_1.b, 4u)], true), vec4<bool>(true, true, true, var_1.a.x), global0[_wgslsmith_index_u32(1u, 4u)]), select(vec4<bool>(var_0.x, true, global0[_wgslsmith_index_u32(var_1.b, 4u)], true), vec4<bool>(var_1.a.x, false, true, global0[_wgslsmith_index_u32(arg_1.b, 4u)]), true))), true), min(1u, firstLeadingBit(_wgslsmith_mult_u32(1u, 101204u))), var_1.a.x && all(!vec2<bool>(var_0.x, false)));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> StorageBuffer {
    let var_0 = Struct_3(arg_0.b, 31986u, _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-38621i, u_input.b, u_input.b), vec3<i32>(2147483647i, 36245i, arg_1), !global0[_wgslsmith_index_u32(arg_0.c, 4u)]), ~vec3<i32>(u_input.b, -2147483647i, u_input.b)), vec3<i32>(_wgslsmith_mult_i32(u_input.b, reverseBits(6955i)), ~(~26243i), reverseBits(90861i))));
    global0 = array<bool, 4>();
    var var_1 = global0[_wgslsmith_index_u32(~min(max(~4294967295u, countOneBits(arg_0.c)), func_1(func_4(var_0.c, Struct_3(var_0.a, 4294967295u, var_0.c), vec3<f32>(1768f, 1271f, 285f), Struct_1(arg_0.b.x, vec2<bool>(true, arg_0.a), u_input.a, global0[_wgslsmith_index_u32(arg_0.c, 4u)])), _wgslsmith_f_op_f32(ceil(-1000f)), func_1(Struct_1(false, arg_0.b, 55541u, true), 696f, Struct_3(vec2<bool>(global0[_wgslsmith_index_u32(6276u, 4u)], false), u_input.a, var_0.c))).b), 4u)] & true;
    let var_2 = _wgslsmith_sub_u32(firstTrailingBit(min(abs(15666u), 1u)) & 0u, 4294967295u);
    var var_3 = Struct_2(-2147483647i >> (u_input.a % 32u), Struct_1(all(!vec4<bool>(true, false, var_0.a.x, true)), select(vec2<bool>(true, true), vec2<bool>(true, func_1(arg_0, -1146f, var_0).a.x), vec2<bool>(any(vec3<bool>(false, arg_0.a, var_0.a.x)), !var_0.a.x)), var_0.b, global0[_wgslsmith_index_u32(arg_0.c, 4u)]), Struct_1(all(vec3<bool>(true, global0[_wgslsmith_index_u32(~8089u, 4u)], func_2().a.x)), arg_0.b, func_1(func_4(vec3<i32>(-13957i, var_0.c.x, 2147483647i), Struct_3(var_0.a, var_2, vec3<i32>(var_0.c.x, 2147483647i, -13230i)), vec3<f32>(-1000f, -2663f, -843f), arg_0), _wgslsmith_div_f32(-1261f, 337f), func_2()).b & abs(49726u), true), select(select(select(!vec4<bool>(true, arg_0.d, global0[_wgslsmith_index_u32(18633u, 4u)], false), vec4<bool>(var_0.a.x, var_0.a.x, global0[_wgslsmith_index_u32(var_0.b, 4u)], arg_0.a), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, var_0.a.x, var_0.a.x), false)), !(!vec4<bool>(true, var_0.a.x, true, global0[_wgslsmith_index_u32(25204u, 4u)])), vec4<bool>(!global0[_wgslsmith_index_u32(arg_0.c, 4u)], func_1(arg_0, 1593f, var_0).a.x, true, true)), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 4u)], var_0.a.x, false, arg_0.a))), true), Struct_1(!arg_0.b.x, func_1(Struct_1(true, vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 4u)]), max(4294967295u, var_2), true), -111f, var_0).a, reverseBits(arg_0.c) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(70600u, 83746u, 1412u, arg_0.c), vec4<u32>(24721u, var_2, 0u, var_2)), arg_0.b.x));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 616f, 1160f, -1790f), vec4<f32>(-1053f, 218f, -444f, -1015f), vec4<bool>(arg_0.a, arg_0.b.x, var_0.a.x, global0[_wgslsmith_index_u32(var_2, 4u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -449f)), countOneBits(vec3<u32>(_wgslsmith_add_u32(var_2, 28769u), ~25203u, 0u) ^ _wgslsmith_sub_vec3_u32(~vec3<u32>(var_3.e.c, 142u, arg_0.c), vec3<u32>(52416u, 21536u, 4294967295u))), -938f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 4>();
    let x = u_input.a;
    s_output = func_5(func_4(-vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), vec3<i32>(1i, 2147483647i, -2147483647i)), u_input.b, u_input.b), func_1(Struct_1(true, !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(1088u, u_input.a, 0u)), u_input.a > 4150u), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(-985f))), Struct_3(select(vec2<bool>(false, true), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 4u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], true)), _wgslsmith_sub_u32(u_input.a, u_input.a), abs(vec3<i32>(u_input.b, u_input.b, -27091i)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1213f), 385f), 728f, -1237f), Struct_1(true, func_2().a, func_1(Struct_1(global0[_wgslsmith_index_u32(17887u, 4u)], vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 4u)]), 4294967295u, false), _wgslsmith_f_op_f32(ceil(-395f)), func_1(Struct_1(false, vec2<bool>(false, false), 0u, global0[_wgslsmith_index_u32(u_input.a, 4u)]), -467f, Struct_3(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], false), 32445u, vec3<i32>(u_input.b, u_input.b, 52665i)))).b, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(4294967295u, 1u), 29813u), 4u)])), -2339i);
}

