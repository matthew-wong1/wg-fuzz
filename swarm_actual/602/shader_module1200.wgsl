struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true));

var<private> global1: i32 = 0i;

var<private> global2: i32;

var<private> global3: Struct_2 = Struct_2(vec2<u32>(0u, 1u), Struct_1(1000f, 7872i, true), 208f, Struct_1(763f, 0i, false), true);

var<private> global4: array<f32, 7> = array<f32, 7>(718f, -169f, 1214f, -1123f, 1416f, -202f, -561f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_3, arg_3: vec3<i32>) -> vec4<u32> {
    var var_0 = global3.b.b;
    var var_1 = Struct_1(global3.d.a, arg_2.b.b.b << (arg_1 % 32u), !(global3.d.c & all(vec4<bool>(arg_2.b.e, global3.e, true, false))));
    var var_2 = true;
    var var_3 = !(!(!vec4<bool>(false, true, true && arg_0.x, arg_2.b.d.c || true)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1094f + _wgslsmith_f_op_f32(-arg_2.d.a)));
    return vec4<u32>(select(abs(_wgslsmith_mult_u32(arg_1, 51942u)), 111872u, 4294967295u == arg_1), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(16323u, arg_1, 4294967295u, 0u), arg_2.c), countOneBits(vec4<u32>(66748u, 4294967295u, 4294967295u, 0u))), 82183u), _wgslsmith_add_u32(global3.a.x, arg_2.c.x), _wgslsmith_div_u32(arg_2.b.a.x, arg_2.c.x)) & vec4<u32>(~_wgslsmith_dot_vec4_u32(arg_2.c, max(arg_2.c, arg_2.c)), arg_2.c.x, 59017u, ~abs(global3.a.x << (global3.a.x % 32u)));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_sub_u32(~global3.a.x, 1u);
    global3 = Struct_2(abs(_wgslsmith_div_vec2_u32(abs(vec2<u32>(global3.a.x, 35693u)), arg_0.c.wz)), Struct_1(_wgslsmith_f_op_f32(arg_0.b.d.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 7u)]) - -1000f)), select(~(-46663i), ~u_input.a, global3.b.c | arg_1), arg_1), _wgslsmith_f_op_f32(select(1311f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_0.c.x, 7u)])), _wgslsmith_f_op_f32(max(372f, global4[_wgslsmith_index_u32(~1u, 7u)]))), true)), Struct_1(523f, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(global3.d.b, arg_0.b.d.b, u_input.a), vec3<i32>(global3.b.b, -2147483647i, -5773i)), ~(~vec3<i32>(global3.d.b, arg_0.d.b, 1i))), false), countOneBits(-arg_0.b.d.b) != 0i);
    global1 = -17867i;
    global0 = array<vec3<bool>, 22>();
    var_0 = global3.a.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(811f, -1558f))) + _wgslsmith_f_op_f32(-arg_0.b.d.a)), -309f);
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(func_4(Struct_3(_wgslsmith_mod_u32(1u, 1u), Struct_2(select(vec2<u32>(11750u, 1u), global3.a, vec2<bool>(false, true)), global3.d, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global3.a.x, 7u)]), global3.b, true), func_3(!vec3<bool>(true, global3.b.c, true), global3.a.x, Struct_3(global3.a.x, Struct_2(vec2<u32>(global3.a.x, 0u), global3.d, global3.d.a, Struct_1(global4[_wgslsmith_index_u32(global3.a.x, 7u)], u_input.a, true), global3.e), vec4<u32>(4294967295u, global3.a.x, 20070u, 26641u), global3.d), vec3<i32>(-2845i, 26213i, u_input.a)), Struct_1(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(global3.a.x, 7u)], global3.d.a), u_input.a | -1i, false)), false)), ~(-2147483647i), !any(!(!vec4<bool>(true, false, global3.e, global3.d.c))));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: vec3<i32>, arg_3: u32) -> bool {
    var var_0 = func_2();
    var var_1 = func_3(!select(!vec3<bool>(var_0.c, global3.e, true), !vec3<bool>(var_0.c, global3.e, false), all(vec2<bool>(true, true))), ~_wgslsmith_add_u32(~0u, ~_wgslsmith_add_u32(93948u, arg_3)), Struct_3(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_3, 0u), ~85385u), Struct_2(min(vec2<u32>(0u, arg_3), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3, global3.a.x), vec2<u32>(4294967295u, 18439u), vec2<u32>(global3.a.x, global3.a.x))), global3.d, 592f, func_2(), any(select(vec2<bool>(var_0.c, global3.b.c), vec2<bool>(var_0.c, var_0.c), vec2<bool>(global3.d.c, false)))), ~vec4<u32>(global3.a.x | 1u, _wgslsmith_add_u32(global3.a.x, global3.a.x), 1u, 4294967295u), Struct_1(arg_0.x, min(-973i, 1i), all(select(vec2<bool>(var_0.c, true), vec2<bool>(true, global3.e), false)))), arg_2).xy;
    let var_2 = Struct_3(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(4294967295u, global3.a.x, arg_3), vec3<u32>(0u, arg_3, 2412u), vec3<bool>(false, global3.d.c, var_0.c)) ^ ~vec3<u32>(arg_3, 4294967295u, global3.a.x), vec3<u32>(~45568u, 1u, max(41655u, global3.a.x))), ~vec3<u32>(var_1.x, ~4294967295u, 348u)), Struct_2(global3.a, Struct_1(var_0.a, u_input.a, var_0.c), _wgslsmith_f_op_f32(floor(global3.b.a)), global3.b, ~(-arg_2.x) != global3.b.b), countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(global3.a.x, 76043u, 15748u, var_1.x) & vec4<u32>(20736u, 13924u, arg_3, var_1.x), ~vec4<u32>(110094u, arg_3, 30287u, var_1.x))), Struct_1(_wgslsmith_f_op_f32(arg_0.x * -362f), _wgslsmith_add_i32(-2147483647i, var_0.b), global3.e));
    var var_3 = 30622u;
    let var_4 = vec2<f32>(global3.b.a, -2299f);
    return !(!all(select(vec2<bool>(false, false), vec2<bool>(var_0.c, false), var_2.b.e))) && (true | all(select(vec4<bool>(var_0.c, var_0.c, var_0.c, var_2.d.c), !vec4<bool>(false, true, var_0.c, var_2.d.c), select(vec4<bool>(false, false, global3.b.c, var_0.c), vec4<bool>(var_2.b.b.c, var_0.c, global3.e, true), vec4<bool>(false, false, true, var_0.c)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = select(!(!vec3<bool>(global3.a.x >= global3.a.x, true, arg_1.d.c)), !(!vec3<bool>(!arg_1.b.c, any(vec4<bool>(arg_2.c, arg_2.c, true, true)), arg_1.b.a >= global4[_wgslsmith_index_u32(42646u, 7u)])), !vec3<bool>(arg_1.b.c, func_2().c, !func_2().c));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_2.a)), global3.b.a, -214f, _wgslsmith_f_op_f32(-arg_3));
    var var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(59212u, 0u, global3.a.x, 1u), vec4<u32>(global3.a.x, 33716u, 0u, 63589u) >> (vec4<u32>(arg_1.a.x, arg_1.a.x, 78099u, 0u) % vec4<u32>(32u)), vec4<u32>(arg_1.a.x, 11823u, 0u, 81698u)), countOneBits(func_3(global0[_wgslsmith_index_u32(4294967295u, 22u)], 109801u, Struct_3(3598u, Struct_2(vec2<u32>(0u, 1u), arg_2, 448f, Struct_1(arg_2.a, 1i, false), arg_1.d.c), vec4<u32>(global3.a.x, 4294967295u, 1u, 1781u), Struct_1(global4[_wgslsmith_index_u32(arg_1.a.x, 7u)], arg_0.x, true)), arg_0.zwy) ^ firstLeadingBit(vec4<u32>(global3.a.x, arg_1.a.x, arg_1.a.x, global3.a.x)))), ~min(vec4<u32>(_wgslsmith_add_u32(arg_1.a.x, global3.a.x), ~global3.a.x, arg_1.a.x & 1u, 103860u), countOneBits(vec4<u32>(0u, global3.a.x, 0u, arg_1.a.x))));
    var var_3 = var_2.x;
    var var_4 = Struct_3(0u, arg_1, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 2083u), var_2.x, ~arg_1.a.x, 0u) << (vec4<u32>(4294967295u, _wgslsmith_add_u32(var_2.x, var_2.x), global3.a.x, ~2128u) % vec4<u32>(32u)), ~(~vec4<u32>(arg_1.a.x, var_2.x, arg_1.a.x, 0u)) ^ max(vec4<u32>(4294967295u, global3.a.x, 1u, var_2.x), abs(vec4<u32>(53808u, arg_1.a.x, arg_1.a.x, var_2.x)))), func_2());
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(1898f * -546f);
    global0 = array<vec3<bool>, 22>();
    var_0 = global4[_wgslsmith_index_u32(func_5(vec4<i32>(2147483647i | (countOneBits(global3.d.b) >> (global3.a.x % 32u)), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(1i, u_input.a, 22906i)), abs(~vec3<i32>(10549i, -1808i, global3.b.b))), 1i, _wgslsmith_mod_i32(7326i, u_input.a) & -20312i), Struct_2(global3.a << (global3.a % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global3.c)))), -2147483647i, func_1(vec3<f32>(-1988f, 512f, global4[_wgslsmith_index_u32(36670u, 7u)]), 2147483647i >> (global3.a.x % 32u), ~vec3<i32>(-31288i, 5548i, 1i), ~38527u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c + global3.b.a)), _wgslsmith_div_f32(2221f, _wgslsmith_f_op_f32(max(2690f, 680f)))), global3.d, global3.b.c), global3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 7u)]) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(469f * global4[_wgslsmith_index_u32(global3.a.x, 7u)]) * 158f))))), 7u)];
    var var_1 = Struct_3(_wgslsmith_div_u32(firstLeadingBit(abs(global3.a.x)), global3.a.x), Struct_2(select(vec2<u32>(global3.a.x >> (global3.a.x % 32u), 1u), global3.a, !vec2<bool>(global3.b.c, false)), global3.d, global3.d.a, func_2(), !any(select(global0[_wgslsmith_index_u32(global3.a.x, 22u)], global0[_wgslsmith_index_u32(17896u, 22u)], global3.d.c))), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(global3.a.x, 37886u, 0u, 0u)), ~(~abs(vec4<u32>(0u, 4294967295u, global3.a.x, 4294967295u)))), func_2());
    let var_2 = var_1.b;
    global1 = 0i;
    var var_3 = _wgslsmith_f_op_f32(-global3.d.a);
    var var_4 = ~(-25519i);
    var var_5 = vec3<i32>(-1i & _wgslsmith_div_i32(var_1.d.b, firstTrailingBit(5570i)), -2147483647i, func_2().b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.a, -2147483647i, -42498i) ^ vec3<i32>(var_5.x, 2147483647i, -2147483647i)) >> (var_1.c.zyz % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(min(vec3<i32>(0i, -2147483647i, -1i) >> (vec3<u32>(global3.a.x, var_1.c.x, 1u) % vec3<u32>(32u)), ~vec3<i32>(9358i, -1i, -10903i)), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(-2147483647i, var_5.x, var_1.b.b.b), vec3<i32>(u_input.a, u_input.a, var_1.b.d.b)), -vec3<i32>(global3.b.b, 24329i, var_2.b.b), firstLeadingBit(vec3<i32>(-19232i, 8298i, 43844i))))), var_1.c.wwz, _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(var_1.c, _wgslsmith_div_vec4_u32(var_1.c, vec4<u32>(79813u, global3.a.x, 28648u, 4294967295u))), max(~(vec4<u32>(var_1.b.a.x, var_1.b.a.x, global3.a.x, var_1.b.a.x) << (var_1.c % vec4<u32>(32u))), ~var_1.c), _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(var_1.c, vec4<u32>(7859u, var_1.a, 8438u, 57761u)), reverseBits(vec4<u32>(22642u, global3.a.x, 3600u, global3.a.x)))), 210u);
}

