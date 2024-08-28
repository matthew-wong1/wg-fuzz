struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false));

var<private> global1: array<Struct_2, 7>;

var<private> global2: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1367f) + _wgslsmith_f_op_f32(f32(-1f) * -420f)), !global0[_wgslsmith_index_u32(25037u, 17u)], -703f), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(135f))))), !select(vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(6852u, 17u)], vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -541f)), _wgslsmith_mult_u32(1u, ~u_input.a), Struct_1(906f, vec3<bool>(true, _wgslsmith_f_op_f32(select(-1029f, -407f, false)) > _wgslsmith_f_op_f32(441f * -472f), !all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-480f)))))));
    let var_1 = Struct_4(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_sub_u32(0u, var_0.c), u_input.a), ~vec3<u32>(var_0.c, 1u, var_0.c)) ^ abs(vec3<u32>(var_0.c, var_0.c, var_0.c)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~var_0.c), abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, var_0.c), vec2<u32>(u_input.a, 1u)), countOneBits(vec2<u32>(1u, var_0.c))))), 7u)], Struct_2(var_0.d, Struct_1(_wgslsmith_f_op_f32(var_0.a.c + 1430f), vec3<bool>(var_0.a.b.x, false || var_0.d.b.x, var_0.b.b.x), var_0.b.a), var_0.c, var_0.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1842f, var_0.b.a)), var_0.d.a)), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(0i, -14385i, u_input.b) << (vec3<u32>(1199u, 1u, var_0.c) % vec3<u32>(32u)))), _wgslsmith_div_i32(~u_input.b, u_input.b)));
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 7u)];
    global0 = array<vec3<bool>, 17>();
    global2 = array<vec4<bool>, 31>();
    return !(!select(var_2.d.b, vec3<bool>(false, var_0.a.b.x & var_0.d.b.x, true), var_0.d.b.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: bool) -> bool {
    global2 = array<vec4<bool>, 31>();
    global1 = array<Struct_2, 7>();
    global0 = array<vec3<bool>, 17>();
    let var_0 = _wgslsmith_sub_u32(arg_2.a.x, u_input.a);
    global0 = array<vec3<bool>, 17>();
    return arg_1.b.x || any(select(select(select(global2[_wgslsmith_index_u32(1759u, 31u)], vec4<bool>(true, arg_3, arg_1.b.x, arg_3), false), global2[_wgslsmith_index_u32(u_input.a, 31u)], arg_3), vec4<bool>(arg_3, true, false & arg_3, !arg_2.b.b.b.x), vec4<bool>(false, false, all(vec3<bool>(false, true, arg_1.b.x)), arg_1.b.x)));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = arg_0;
    global1 = array<Struct_2, 7>();
    let var_1 = !arg_0 | func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 1000f, -2076f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1363f, -592f, -1400f)), vec3<f32>(-394f, 219f, 1454f), func_3()))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-501f, 2153f, false)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.x, u_input.a), vec3<u32>(4294967295u, u_input.a, 50973u)) >> (~arg_1.x % 32u), 17u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1098f)) - _wgslsmith_f_op_f32(149f * -279f))), Struct_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(54672u, u_input.a, 34550u), vec3<u32>(arg_1.x, arg_1.x, u_input.a), vec3<u32>(u_input.a, arg_1.x, arg_1.x) ^ vec3<u32>(33722u, u_input.a, 39250u)), Struct_2(Struct_1(2033f, vec3<bool>(true, arg_0, false), -1063f), Struct_1(-970f, global0[_wgslsmith_index_u32(44244u, 17u)], -460f), u_input.a, Struct_1(353f, global0[_wgslsmith_index_u32(u_input.a, 17u)], -2217f)), Struct_2(Struct_1(154f, global0[_wgslsmith_index_u32(arg_1.x, 17u)], 689f), Struct_1(-1127f, vec3<bool>(true, arg_0, false), 1358f), arg_1.x, Struct_1(-1467f, global0[_wgslsmith_index_u32(arg_1.x, 17u)], -727f)), _wgslsmith_f_op_f32(-377f * _wgslsmith_f_op_f32(floor(-1382f))), u_input.b & -1i), var_0);
    let var_2 = firstTrailingBit(firstTrailingBit(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, 0u), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)), arg_1.x, (1u ^ u_input.a) & ~4294967295u)));
    var var_3 = Struct_1(836f, global0[_wgslsmith_index_u32(select(~arg_1.x, arg_1.x & _wgslsmith_mod_u32(~76107u, _wgslsmith_mod_u32(var_2.x, 0u)), false), 17u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2073f, _wgslsmith_f_op_f32(-623f - -1678f))));
    return global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(~var_2, ~vec3<u32>(var_2.x, var_2.x, u_input.a)) >> (max(select(var_2.x, 39243u, arg_0), 4294967295u) % 32u), 1u) >> (_wgslsmith_clamp_u32(u_input.a, select(~u_input.a, var_2.x, true) << (_wgslsmith_div_u32(u_input.a & 4294967295u, arg_1.x) % 32u), 1u) % 32u), 7u)];
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    global0 = array<vec3<bool>, 17>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(-269f)), _wgslsmith_f_op_f32(arg_0.b.a - arg_0.a.d.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1673f)))));
    var var_1 = _wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec3_u32(select(min(vec3<u32>(arg_0.a.c, u_input.a, 40692u), vec3<u32>(0u, 15346u, 31364u)), vec3<u32>(arg_1, 0u, 49111u), arg_0.c.x) << (vec3<u32>(14669u, ~arg_0.a.c, arg_1) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(51441u, arg_1 << (arg_1 % 32u)), reverseBits(~arg_1), 4294967295u)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b.a, 1667f)) + 429f), _wgslsmith_div_f32(991f, -756f))), vec3<bool>(!arg_0.a.d.b.x | arg_0.d.x, true, arg_0.b.b.x), 792f), func_2(true, vec2<u32>(66299u, func_2(func_2(false, vec2<u32>(50559u, 47252u)).b.b.x, ~vec2<u32>(29165u, 86886u)).c)).d, ~((arg_0.a.c & ~u_input.a) >> (u_input.a % 32u)), arg_0.a.a);
    let var_3 = _wgslsmith_div_vec4_u32(~countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(7023u, arg_1, u_input.a, arg_1), vec4<u32>(arg_0.a.c, 1u, arg_1, var_2.c), vec4<u32>(1u, arg_1, 1u, u_input.a)) & select(vec4<u32>(4294967295u, 18004u, 0u, u_input.a), vec4<u32>(arg_1, 7458u, u_input.a, u_input.a), vec4<bool>(var_2.d.b.x, arg_0.a.a.b.x, false, var_2.d.b.x))), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_0.a.c, 58356u, arg_1, 4294967295u) >> (vec4<u32>(u_input.a, arg_1, 13708u, 1u) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(select(vec4<u32>(var_2.c, 0u, arg_1, 23287u), vec4<u32>(u_input.a, 21897u, 28398u, arg_0.a.c), vec4<bool>(false, arg_0.d.x, false, false)), reverseBits(vec4<u32>(30991u, 1u, 54122u, arg_0.a.c))) % vec4<u32>(32u)), (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_0.a.c, u_input.a, arg_0.a.c), vec4<u32>(14791u, 8780u, 4294967295u, arg_0.a.c), vec4<u32>(arg_1, var_2.c, 1u, 45369u)) & vec4<u32>(0u, 25571u, arg_1, arg_1)) << ((~vec4<u32>(var_2.c, arg_0.a.c, arg_0.a.c, 0u) ^ vec4<u32>(arg_0.a.c, 24833u, 1u, arg_1)) % vec4<u32>(32u))));
    return arg_0.a;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: vec2<i32>) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.b.b.a))), arg_0, -585f);
    let var_1 = _wgslsmith_mod_u32(arg_1.x, _wgslsmith_dot_vec4_u32(~(firstLeadingBit(vec4<u32>(u_input.a, 78778u, 4294967295u, 53793u)) ^ ~arg_1), ~(~arg_1)));
    var var_2 = Struct_3(func_5(Struct_3(func_2(false, vec2<u32>(u_input.a, arg_1.x)), func_2(true, ~arg_1.xw).d, global0[_wgslsmith_index_u32(4294967295u, 17u)], vec2<bool>(arg_2.b.d.b.x, all(arg_2.c.d.b.xy))), ~(61531u << (u_input.a % 32u))), func_5(Struct_3(Struct_2(Struct_1(var_0.x, arg_2.c.a.b, var_0.x), func_5(Struct_3(arg_2.c, Struct_1(-375f, global0[_wgslsmith_index_u32(32152u, 17u)], arg_0), vec3<bool>(true, false, true), vec2<bool>(arg_2.b.a.b.x, arg_2.c.b.b.x)), u_input.a).d, u_input.a, arg_2.b.b), arg_2.b.a, arg_2.c.b.b, vec2<bool>(!arg_2.b.b.b.x, arg_2.b.a.b.x)), 0u).a, vec3<bool>(false, true, !(!select(false, arg_2.c.d.b.x, arg_2.b.b.b.x))), arg_2.b.b.b.zy);
    var_2 = Struct_3(func_2(true, ~vec2<u32>(1u, u_input.a)), Struct_1(func_2(true, abs(arg_2.a.zz)).b.c, select(vec3<bool>(!arg_2.c.b.b.x, all(global2[_wgslsmith_index_u32(arg_1.x, 31u)]), true), global0[_wgslsmith_index_u32(~(~32868u), 17u)], vec3<bool>(arg_2.b.b.b.x, arg_2.c.b.b.x, var_2.b.b.x)), var_0.x), !(!(!vec3<bool>(arg_2.c.a.b.x, var_2.d.x, false))), var_2.d);
    let var_3 = 0u;
    return 1i << (var_3 % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 17>();
    var var_0 = -select(vec4<i32>(u_input.b, _wgslsmith_mod_i32(0i >> (u_input.a % 32u), u_input.b), func_1(_wgslsmith_f_op_f32(step(-415f, -351f)), vec4<u32>(1u, 1u, u_input.a, 48148u), Struct_4(vec3<u32>(77243u, u_input.a, u_input.a), global1[_wgslsmith_index_u32(0u, 7u)], Struct_2(Struct_1(369f, global0[_wgslsmith_index_u32(u_input.a, 17u)], 350f), Struct_1(949f, global0[_wgslsmith_index_u32(u_input.a, 17u)], -1838f), 58948u, Struct_1(2231f, vec3<bool>(false, true, false), 272f)), 613f, u_input.b), -vec2<i32>(u_input.b, 26306i)), _wgslsmith_sub_i32(u_input.b, -2147483647i)), -(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)) ^ vec4<i32>(-20381i, ~u_input.b, reverseBits(-2147483647i), _wgslsmith_div_i32(u_input.b, 2147483647i)), vec4<bool>(func_3().x && true, true, -382f != func_5(Struct_3(Struct_2(Struct_1(-2030f, vec3<bool>(false, false, false), -966f), Struct_1(-112f, vec3<bool>(true, true, true), -440f), u_input.a, Struct_1(-144f, global0[_wgslsmith_index_u32(0u, 17u)], -457f)), Struct_1(889f, vec3<bool>(true, false, false), 1260f), global0[_wgslsmith_index_u32(u_input.a, 17u)], vec2<bool>(true, true)), u_input.a).d.c, false));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(Struct_3(global1[_wgslsmith_index_u32(u_input.a, 7u)], Struct_1(224f, global0[_wgslsmith_index_u32(u_input.a, 17u)], 102f), vec3<bool>(true, true, false), vec2<bool>(false, true)), 81356u).d.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(603f))))))));
    var_0 = ~(((-vec4<i32>(var_0.x, var_0.x, 23984i, 2147483647i) | min(vec4<i32>(2147483647i, -1i, -58751i, 0i), vec4<i32>(-62526i, u_input.b, 1i, u_input.b))) ^ min(-vec4<i32>(-1i, -46203i, u_input.b, 67906i), vec4<i32>(u_input.b, u_input.b, u_input.b, 32193i) | vec4<i32>(u_input.b, -20671i, var_0.x, var_0.x))) & _wgslsmith_mult_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, -2147483647i, u_input.b, -2147483647i), vec4<i32>(u_input.b, var_0.x, var_0.x, -6136i))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b, -9651i, u_input.b, u_input.b), select(vec4<i32>(var_0.x, -1i, 25018i, 2147483647i), vec4<i32>(var_0.x, -23090i, u_input.b, var_0.x), global2[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<i32>(41746i, -51017i, var_0.x, 9942i))));
    let var_2 = vec3<u32>(1u, u_input.a, func_5(Struct_3(func_5(Struct_3(global1[_wgslsmith_index_u32(14987u, 7u)], Struct_1(-1384f, vec3<bool>(true, false, false), var_1), global0[_wgslsmith_index_u32(1u, 17u)], vec2<bool>(true, false)), 62473u), func_5(Struct_3(global1[_wgslsmith_index_u32(u_input.a, 7u)], Struct_1(1154f, vec3<bool>(true, false, false), 1000f), global0[_wgslsmith_index_u32(71194u, 17u)], vec2<bool>(false, false)), _wgslsmith_mod_u32(u_input.a, u_input.a)).d, vec3<bool>(true, true, false), vec2<bool>(true, true)), _wgslsmith_mult_u32(abs(~u_input.a), _wgslsmith_clamp_u32(reverseBits(0u), _wgslsmith_div_u32(8621u, u_input.a), u_input.a))).c);
    var var_3 = u_input.a;
    var_0 = firstTrailingBit(vec4<i32>(i32(-1i) * -56189i, -_wgslsmith_sub_i32(2147483647i, var_0.x), _wgslsmith_mod_i32(countOneBits(-1i) | u_input.b, abs(~var_0.x)), var_0.x));
    let var_4 = Struct_4(vec3<u32>(20881u, 1u, 22530u), func_2(any(vec2<bool>(true, true)), var_2.xz), func_5(Struct_3(global1[_wgslsmith_index_u32(~(~27890u), 7u)], func_2(func_4(vec3<f32>(var_1, 1960f, var_1), Struct_1(var_1, global0[_wgslsmith_index_u32(u_input.a, 17u)], var_1), Struct_4(vec3<u32>(var_2.x, 0u, 96533u), global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(u_input.a, 7u)], 1277f, 0i), true), vec2<u32>(u_input.a, 0u)).b, vec3<bool>(true, func_4(vec3<f32>(var_1, var_1, var_1), Struct_1(-996f, global0[_wgslsmith_index_u32(var_2.x, 17u)], 322f), Struct_4(vec3<u32>(u_input.a, 4294967295u, var_2.x), Struct_2(Struct_1(582f, vec3<bool>(true, false, true), var_1), Struct_1(var_1, vec3<bool>(false, false, true), -545f), 885u, Struct_1(var_1, vec3<bool>(true, true, false), -270f)), Struct_2(Struct_1(var_1, global0[_wgslsmith_index_u32(0u, 17u)], var_1), Struct_1(var_1, vec3<bool>(true, false, true), var_1), u_input.a, Struct_1(var_1, global0[_wgslsmith_index_u32(u_input.a, 17u)], var_1)), 756f, -2147483647i), true), true), vec2<bool>(true, false)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, u_input.a, var_2.x, ~43263u), ~abs(vec4<u32>(u_input.a, 4294967295u, 45617u, 46186u)))), var_1, max(firstLeadingBit(u_input.b), -1i));
    let var_5 = ~(-_wgslsmith_add_vec3_i32(var_0.ywy >> (var_4.a % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(var_0.wzx, vec3<i32>(u_input.b, u_input.b, var_4.e)))) & _wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(i32(-1i) * -1i), -15434i, 18175i), var_0.xwx);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(_wgslsmith_sub_u32(var_4.c.c, 60153u) ^ 5354u), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(~u_input.a, 19477u << (0u % 32u)), 13662u), select(var_2.xz, var_2.zy, var_4.b.b.b.x), var_5.xx, _wgslsmith_sub_vec2_u32(vec2<u32>(63367u, 0u), var_4.a.zx) >> (_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(var_4.c.c, 63987u)), ~var_4.a.xx, ~_wgslsmith_mult_vec2_u32(var_2.yx, vec2<u32>(u_input.a, var_4.a.x))) % vec2<u32>(32u)));
}

