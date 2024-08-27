struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: array<Struct_3, 10>;

var<private> global2: array<bool, 27>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-187f + _wgslsmith_f_op_f32(round(-592f)));
    var var_1 = 2283f;
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(496f)) * _wgslsmith_f_op_f32(634f - -1155f)), _wgslsmith_f_op_f32(step(-1006f, _wgslsmith_f_op_f32(-651f + 453f))), !select(true, global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(16931u, 27u)])))), select(select(select(select(vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<bool>(global2[_wgslsmith_index_u32(35015u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(30025u, 27u)]), vec3<bool>(false, false, true)), !vec3<bool>(false, global2[_wgslsmith_index_u32(16674u, 27u)], global2[_wgslsmith_index_u32(1u, 27u)]), true), vec3<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(36137u, 27u)], global2[_wgslsmith_index_u32(43195u, 27u)], global2[_wgslsmith_index_u32(39777u, 27u)])), all(vec4<bool>(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], false)), true), vec3<bool>(!global2[_wgslsmith_index_u32(1u, 27u)], true, true)), select(!select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(91238u, 27u)], true), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], false, false), vec3<bool>(false, true, false)), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 26628u), 27u)], true, false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 45735u, 17232u, 4294967295u), vec4<u32>(1u, 20858u, 4294967295u, 1u)), 21u)] > _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 0i, -50921i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 21u)], u_input.a.x, 25093i))), select(select(select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(1u, 27u)], false), vec3<bool>(global2[_wgslsmith_index_u32(9301u, 27u)], true, true), true), !vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 27u)], false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(53448u, 27u)]))), !select(vec3<bool>(global2[_wgslsmith_index_u32(30453u, 27u)], true, global2[_wgslsmith_index_u32(1u, 27u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(30919u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)]), global2[_wgslsmith_index_u32(5976u, 27u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)] & false, select(true, true, global2[_wgslsmith_index_u32(1u, 27u)]), all(vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(10264u, 27u)]))))), Struct_3(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(max(0u, 1u), 27u)]), -_wgslsmith_mod_i32(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 21u)], 0i), u_input.a.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(sign(291f))), _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(ceil(var_2.a))), var_2.a) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.a, var_2.a, 204f))) - vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.a)), _wgslsmith_f_op_f32(step(653f, 1053f)), _wgslsmith_f_op_f32(1483f * var_2.a)))));
    let var_4 = ~abs(0u);
    return var_2.c.a;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_5 {
    let var_0 = Struct_3(func_3(), u_input.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1200f, 104f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(284f * -240f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(abs(-544f)))), -770f, any(!vec4<bool>(true, global2[_wgslsmith_index_u32(48085u, 27u)], true, global2[_wgslsmith_index_u32(arg_1, 27u)])))))));
    var var_2 = arg_0;
    global1 = array<Struct_3, 10>();
    let var_3 = Struct_1(~max(var_2.a, _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.x, 0i, -22027i, var_0.b) >> (vec4<u32>(arg_1, arg_1, 5643u, 10168u) % vec4<u32>(32u)), var_2.a)));
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(730f * var_1.x)))), var_0.a, Struct_3(func_3(), -(~var_2.a.x)));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<u32>) -> f32 {
    global0 = array<i32, 21>();
    global2 = array<bool, 27>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(max(~vec4<i32>(global0[_wgslsmith_index_u32(1u, 21u)], -53399i, -46532i, global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<i32>(1i, arg_0.c.b, -2147483647i, -10447i)), -select(vec4<i32>(1i, -5032i, arg_0.c.b, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x), vec4<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)])))), _wgslsmith_clamp_vec3_u32(countOneBits((vec3<u32>(arg_1.x, 62001u, 1u) & vec3<u32>(63481u, arg_1.x, arg_1.x)) ^ vec3<u32>(5552u, 31266u, arg_1.x)), ~(vec3<u32>(15526u, arg_1.x, 1249u) & vec3<u32>(27583u, 76818u, 46660u)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.x, 39908u, 4294967295u), vec3<u32>(1u, arg_1.x, arg_1.x)) << (vec3<u32>(arg_1.x, 18068u, arg_1.x) % vec3<u32>(32u)), vec3<u32>(reverseBits(1u), 77771u ^ arg_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, arg_1.x), vec3<u32>(49145u, 60503u, arg_1.x))))), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(1u, 21u)], max(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(33425u, 21u)], arg_0.c.b, 1i), 1i), -u_input.b << (arg_1.x % 32u), 2147483647i | ~global0[_wgslsmith_index_u32(arg_1.x, 21u)])), vec3<bool>(false, !(-global0[_wgslsmith_index_u32(1u, 21u)] != u_input.b), false), abs(reverseBits(arg_0.c.b | _wgslsmith_sub_i32(arg_0.c.b, -2147483647i))));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-342f))), vec3<bool>(!global2[_wgslsmith_index_u32(min(var_0.b.x, ~arg_1.x), 27u)], true, any(arg_0.c.a.yy) || !arg_0.b.x), func_2(Struct_1(-select(vec4<i32>(arg_0.c.b, -2147483647i, -27842i, var_0.e), var_0.c.a, vec4<bool>(false, global2[_wgslsmith_index_u32(67610u, 27u)], var_0.d.x, true))), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.b.x, arg_1.x, 20398u), vec4<u32>(arg_1.x, var_0.b.x, var_0.b.x, 0u)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, 0u, 4294967295u, 48887u)), vec4<u32>(1u, 17092u, 60279u, var_0.b.x)))).c);
    var var_2 = !vec4<bool>(all(!(!var_0.d.zz)), false, false, func_3().x);
    return -1736f;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: Struct_5) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.a, arg_2.a, -1189f))))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 828f, _wgslsmith_f_op_f32(abs(var_0.x))))), vec4<f32>(arg_1.a, arg_0.x, _wgslsmith_f_op_f32(step(125f, 946f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-634f, -1230f)) * -2088f)), false)));
    global1 = array<Struct_3, 10>();
    global0 = array<i32, 21>();
    var var_2 = vec2<u32>(_wgslsmith_div_u32(~40289u, 4294967295u), max(~1u, 1u));
    return !select(arg_1.c.a.zy, !arg_2.c.a.xx, vec2<bool>(true, false));
}

fn func_1() -> u32 {
    var var_0 = vec2<bool>(any(vec2<bool>(all(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(16287u, 27u)], true)), global2[_wgslsmith_index_u32(0u, 27u)])), global2[_wgslsmith_index_u32(select(_wgslsmith_div_u32(~_wgslsmith_mult_u32(66202u, 0u), reverseBits(78522u)), ~4294967295u, false), 27u)]);
    global0 = array<i32, 21>();
    var_0 = select(!vec2<bool>(!global2[_wgslsmith_index_u32(~28178u, 27u)], var_0.x), func_5(_wgslsmith_div_vec2_f32(vec2<f32>(482f, 149f), vec2<f32>(_wgslsmith_div_f32(-788f, 1012f), _wgslsmith_f_op_f32(sign(1146f)))), Struct_5(_wgslsmith_f_op_f32(func_4(func_2(Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(1u, 21u)], 0i, global0[_wgslsmith_index_u32(10867u, 21u)], -56390i)), 1u), ~vec2<u32>(1u, 21993u))), !(!vec3<bool>(var_0.x, var_0.x, var_0.x)), func_2(Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(127556u, 21u)], global0[_wgslsmith_index_u32(21410u, 21u)], 1i, -1i)), 1u).c), Struct_5(370f, vec3<bool>(true, global2[_wgslsmith_index_u32(~4294967295u, 27u)], any(vec2<bool>(var_0.x, var_0.x))), global1[_wgslsmith_index_u32(reverseBits(94317u), 10u)])), select(!(!vec2<bool>(global2[_wgslsmith_index_u32(80352u, 27u)], global2[_wgslsmith_index_u32(1u, 27u)])), vec2<bool>(global2[_wgslsmith_index_u32(0u, 27u)], _wgslsmith_mod_i32(u_input.a.x, 1i) == ~u_input.b), func_2(Struct_1(vec4<i32>(u_input.b, 16929i, -2147483647i, u_input.b)), 1u).c.a.xx));
    var_0 = select(func_2(Struct_1(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(81722u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], -2147483647i, 1i))), _wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 3222u), firstLeadingBit(vec2<u32>(4294967295u, 15446u))))).b.yx, vec2<bool>(global2[_wgslsmith_index_u32(1u, 27u)], !(!(!var_0.x))), vec2<bool>(~_wgslsmith_add_i32(global0[_wgslsmith_index_u32(0u, 21u)], -1i) < _wgslsmith_add_i32(abs(global0[_wgslsmith_index_u32(4294967295u, 21u)]), ~1030i), func_2(Struct_1(-vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(1u, 21u)], u_input.a.x, u_input.a.x)), _wgslsmith_mult_u32(1u, 1u)).b.x));
    return ~select(select(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(27254u, 70019u), vec2<u32>(19574u, 1u)), ~78724u, min(59962u, 5607u)), 92529u, true), firstTrailingBit(~(~1u)), select(global2[_wgslsmith_index_u32(~89002u, 27u)], var_0.x, global2[_wgslsmith_index_u32(1u, 27u)]) | var_0.x);
}

fn func_6(arg_0: u32, arg_1: Struct_5, arg_2: vec4<bool>) -> f32 {
    let var_0 = vec2<bool>(arg_2.x, true);
    global0 = array<i32, 21>();
    global1 = array<Struct_3, 10>();
    var var_1 = 0i >> (~(~select(1u, ~68492u, any(vec3<bool>(true, arg_1.b.x, false)))) % 32u);
    global2 = array<bool, 27>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * arg_1.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 21>();
    global2 = array<bool, 27>();
    global1 = array<Struct_3, 10>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_6(func_1(), Struct_5(_wgslsmith_f_op_f32(func_4(Struct_5(-1054f, vec3<bool>(false, global2[_wgslsmith_index_u32(2531u, 27u)], false), global1[_wgslsmith_index_u32(0u, 10u)]), vec2<u32>(13270u, 44458u))), func_3(), Struct_3(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], false, global2[_wgslsmith_index_u32(4378u, 27u)]), 2079i)), select(!vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(65184u, 27u)]), !vec4<bool>(global2[_wgslsmith_index_u32(13345u, 27u)], false, global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)]), select(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(54861u, 27u)]), vec4<bool>(global2[_wgslsmith_index_u32(111562u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], false, global2[_wgslsmith_index_u32(0u, 27u)]), vec4<bool>(false, true, global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(96604u, 27u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(min(14677u, 17491u), func_2(Struct_1(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(1381u, 21u)], u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 21u)])), 1u), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 27u)], true, false, global2[_wgslsmith_index_u32(86879u, 27u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(22152u, 27u)], false), vec4<bool>(true, global2[_wgslsmith_index_u32(62890u, 27u)], global2[_wgslsmith_index_u32(62492u, 27u)], true))))), true || func_2(Struct_1(vec4<i32>(2147483647i, -15593i, u_input.a.x, global0[_wgslsmith_index_u32(12360u, 21u)])), 1u).c.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1176f), -1000f))), -107f);
    let var_1 = ~_wgslsmith_div_vec2_u32(~firstLeadingBit(countOneBits(vec2<u32>(1u, 4294967295u))), vec2<u32>(reverseBits(21497u), 1u) | _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 3345u)), vec2<u32>(6172u, 20008u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, global0[_wgslsmith_index_u32(abs(37890u), 21u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(func_6(0u ^ var_1.x, Struct_5(var_0.x, vec3<bool>(true, false, true), global1[_wgslsmith_index_u32(1u, 10u)]), !vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(var_1.x, 27u)])))), 109f)));
}

