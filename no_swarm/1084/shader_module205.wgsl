struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = Struct_3(Struct_2(all(global0[_wgslsmith_index_u32(firstTrailingBit(5947u), 32u)]) && true, Struct_1(!arg_1.b.a)), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, ~u_input.a), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), select(vec2<u32>(u_input.a, u_input.b.x), vec2<u32>(u_input.b.x, u_input.a), vec2<bool>(true, true)))), Struct_1(arg_1.b.a), Struct_1(select(!vec4<bool>(arg_1.b.a.x, arg_1.b.a.x, arg_1.a, false), vec4<bool>(false, true, true, !arg_1.b.a.x), arg_1.a)));
    global0 = array<vec2<bool>, 32>();
    var var_1 = false;
    let var_2 = var_0.a;
    let var_3 = var_0.a;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(540f - 1000f), -1000f, _wgslsmith_f_op_f32(628f + -1000f)))));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    global0 = array<vec2<bool>, 32>();
    let var_0 = Struct_1(select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), true), vec4<bool>(true, true, true, true), true), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(arg_0.x >= 1000f, true, -39100i < u_input.c, true), vec4<bool>(true, true, true, true)), true));
    var var_1 = Struct_2(true, Struct_1(!(!select(vec4<bool>(var_0.a.x, var_0.a.x, false, true), vec4<bool>(true, true, false, var_0.a.x), var_0.a))));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(118f, _wgslsmith_f_op_f32(arg_0.x + 418f), 1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) * arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(u_input.c, Struct_2(false, var_0))).x + _wgslsmith_f_op_f32(exp2(arg_0.x))), -1248f)));
    var_1 = Struct_2(u_input.c <= _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(39096i, -2147483647i, u_input.c), vec3<i32>(0i, u_input.c, u_input.c), vec3<bool>(var_0.a.x, true, false)), vec3<i32>(1i, u_input.c, u_input.c) << (vec3<u32>(78191u, 69577u, 4294967295u) % vec3<u32>(32u))), u_input.c), var_0);
    return select(0u, _wgslsmith_clamp_u32(~abs(u_input.a), ~0u, _wgslsmith_mod_u32(~(~u_input.a), 1u)), !all(!vec3<bool>(var_0.a.x, true, true)));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<i32>, arg_3: u32) -> Struct_1 {
    global0 = array<vec2<bool>, 32>();
    var var_0 = Struct_4(Struct_2(true, Struct_1(select(vec4<bool>(true, arg_1, true, true), !vec4<bool>(arg_1, true, false, arg_1), false || arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(1f, 1f, 1f)) + vec3<f32>(_wgslsmith_f_op_f32(round(-907f)), 150f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -449f) - 109f))), global0[_wgslsmith_index_u32(arg_3, 32u)], _wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(29034u, 1u, u_input.b.x), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, arg_3), vec3<u32>(arg_0.x, 1u, arg_3)), vec3<u32>(1u, arg_0.x, 27672u)), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(101228u, 4294967295u, arg_3), vec3<u32>(0u, 0u, 68544u)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, arg_0.x), vec3<u32>(arg_3, arg_0.x, 52585u)) % vec3<u32>(32u))), ~(~(~vec3<u32>(14308u, 65256u, u_input.b.x)))));
    return var_0.a.b;
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = -1i;
    return func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~86911u, ~16458u), u_input.b.x), ~(~u_input.b), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b, ~u_input.b)), u_input.b.x <= func_3(_wgslsmith_f_op_vec3_f32(func_2(~u_input.c, Struct_2(true, Struct_1(vec4<bool>(arg_1, arg_1, false, arg_1)))))), countOneBits(~_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -24829i, 2147483647i, u_input.c), vec4<i32>(u_input.c, -1i, -22075i, u_input.c)), vec4<i32>(-5459i, u_input.c, u_input.c, -3461i))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(firstTrailingBit(~u_input.b.x), _wgslsmith_sub_u32(max(u_input.a, u_input.b.x), 5240u)), _wgslsmith_sub_u32(u_input.a, abs(u_input.b.x << (u_input.a % 32u)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(arg_1.x & !all(arg_0.b.a), func_1(arg_2.x, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(168f, 102f, -1207f))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-193f, arg_2.x, -433f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, -1143f, arg_2.x) + vec3<f32>(arg_2.x, arg_2.x, 568f))), vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(select(342f, arg_2.x, false)))))), !vec2<bool>(false, all(!global0[_wgslsmith_index_u32(u_input.a, 32u)])), arg_3);
    var var_1 = var_0.b.x;
    let var_2 = vec3<i32>(u_input.c, u_input.c, u_input.c);
    global0 = array<vec2<bool>, 32>();
    let var_3 = var_2.xx;
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_2, arg_3: bool) -> Struct_4 {
    var var_0 = u_input.a;
    let var_1 = func_5(Struct_2(false, Struct_1(vec4<bool>(true, true, 1i == u_input.c, arg_3))), global0[_wgslsmith_index_u32(u_input.b.x, 32u)], _wgslsmith_f_op_vec2_f32(-arg_1.b.zz), arg_1.d);
    var var_2 = Struct_1(var_1.b.a);
    global0 = array<vec2<bool>, 32>();
    let var_3 = select(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_1.d, arg_1.d, arg_1.d) | ~arg_1.d, select(vec3<u32>(arg_1.d.x, 77801u, u_input.b.x), min(vec3<u32>(arg_1.d.x, 4294967295u, 110603u), vec3<u32>(28198u, arg_1.d.x, 86532u)), arg_0.a.x), ~_wgslsmith_mod_vec3_u32(arg_1.d, arg_1.d)), arg_1.d, !arg_2.b.a.wyx) >> (~(~(~(vec3<u32>(u_input.a, 29757u, 4294967295u) & vec3<u32>(arg_1.d.x, arg_1.d.x, 4294967295u)))) % vec3<u32>(32u));
    return Struct_4(func_5(arg_1.a, func_5(var_1, func_1(_wgslsmith_f_op_f32(arg_1.b.x - 433f), !arg_3).a.zw, vec2<f32>(arg_1.b.x, 558f), _wgslsmith_sub_vec3_u32(~vec3<u32>(24041u, arg_1.d.x, 55270u), vec3<u32>(u_input.a, u_input.a, arg_1.d.x))).b.a.wy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.xz)), vec3<u32>(func_3(vec3<f32>(-871f, 1933f, arg_1.b.x)), var_3.x, 33765u << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.d.x, 15039u, arg_1.d.x), vec4<u32>(1u, 0u, 11239u, 78783u)) % 32u))), arg_1.b, arg_2.b.a.zz, vec3<u32>(1u, var_3.x, _wgslsmith_mod_u32(111420u, var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 32>();
    var var_0 = func_6(Struct_1(vec4<bool>(true | (u_input.a >= 1u), all(vec4<bool>(true, true, false, false)), false, any(vec3<bool>(true, true, true)) && true)), Struct_4(func_5(Struct_2(false, func_1(179f, true)), global0[_wgslsmith_index_u32(~u_input.a, 32u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-1036f, 1000f) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-944f, 401f), vec2<f32>(-695f, 942f)))), vec3<u32>(93964u, u_input.b.x, 1u) ^ vec3<u32>(u_input.b.x, 7998u, u_input.b.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1395f, -207f, 1000f)))), !global0[_wgslsmith_index_u32(min(_wgslsmith_add_u32(0u, u_input.b.x), 30625u), 32u)], _wgslsmith_sub_vec3_u32(firstTrailingBit(~vec3<u32>(4928u, 4294967295u, u_input.a)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(47547u, 1u, 66096u), vec3<u32>(5519u, u_input.b.x, 1u)), 4294967295u, u_input.a))), func_5(Struct_2(!func_5(Struct_2(false, Struct_1(vec4<bool>(false, false, true, false))), vec2<bool>(true, false), vec2<f32>(-727f, -109f), vec3<u32>(72023u, 60103u, 1u)).a, Struct_1(func_5(Struct_2(true, Struct_1(vec4<bool>(false, true, true, true))), global0[_wgslsmith_index_u32(u_input.b.x, 32u)], vec2<f32>(865f, -1511f), vec3<u32>(1u, 0u, 30863u)).b.a)), func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(850f + -409f))), true).a.zw, vec2<f32>(1f, 1f), ~firstTrailingBit(select(vec3<u32>(u_input.b.x, u_input.a, u_input.a), vec3<u32>(83695u, u_input.a, 0u), vec3<bool>(true, true, true)))), !func_4(~vec2<u32>(u_input.a, 8188u), true, _wgslsmith_mult_vec4_i32(vec4<i32>(-31891i, -18023i, u_input.c, u_input.c), vec4<i32>(1i, 32766i, -2147483647i, -1016i)), u_input.a).a.x == true);
    let var_1 = 67562i;
    let var_2 = Struct_1(var_0.a.b.a);
    let var_3 = Struct_3(func_5(func_6(func_5(func_6(Struct_1(var_0.a.b.a), Struct_4(var_0.a, var_0.b, vec2<bool>(false, true), vec3<u32>(u_input.b.x, u_input.a, u_input.a)), var_0.a, var_2.a.x).a, !vec2<bool>(true, var_0.c.x), var_0.b.zx, vec3<u32>(var_0.d.x, 65276u, 4294967295u) ^ var_0.d).b, Struct_4(var_0.a, vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x), !global0[_wgslsmith_index_u32(u_input.b.x, 32u)], var_0.d), Struct_2(all(vec3<bool>(false, var_0.c.x, true)), var_0.a.b), var_2.a.x).a, !select(!var_0.c, global0[_wgslsmith_index_u32(u_input.b.x ^ var_0.d.x, 32u)], !vec2<bool>(var_0.c.x, true)), vec2<f32>(var_0.b.x, var_0.b.x), ~var_0.d), ~u_input.b, var_2, func_4(_wgslsmith_clamp_vec2_u32(var_0.d.yz, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 1210u), var_0.d.zz), ~(vec2<u32>(var_0.d.x, 65929u) | vec2<u32>(u_input.a, 19615u))), false, -(_wgslsmith_div_vec4_i32(vec4<i32>(var_1, u_input.c, var_1, -2147483647i), vec4<i32>(-2518i, u_input.c, 0i, 11905i)) & vec4<i32>(var_1, 2147483647i, 0i, -2147483647i)), _wgslsmith_clamp_u32(var_0.d.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, var_0.d.x), vec3<u32>(u_input.b.x, 1u, u_input.b.x) | var_0.d), 49610u)));
    var var_4 = var_3;
    var var_5 = _wgslsmith_f_op_vec2_f32(-var_0.b.yz);
    let var_6 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(4294967295u), var_6 ^ var_4.b.x, var_1, _wgslsmith_f_op_f32(floor(-680f)), _wgslsmith_add_i32(max(i32(-1i) * -29950i, reverseBits(u_input.c)), var_1) | ~_wgslsmith_sub_i32(u_input.c, var_1));
}

