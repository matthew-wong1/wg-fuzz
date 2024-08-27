struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_1, 1>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1427f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(259f + 444f)));
    var var_1 = (vec3<u32>(min(27570u, u_input.a.x) & ~u_input.b.x, 9955u, ~(4294967295u << (u_input.b.x % 32u))) | _wgslsmith_div_vec3_u32(vec3<u32>(1u, 2731u, u_input.a.x) & ~vec3<u32>(u_input.a.x, 12081u, u_input.b.x), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, 10744u), vec3<u32>(10652u, 14163u, 0u)))) & vec3<u32>(~_wgslsmith_mod_u32(max(4294967295u, u_input.a.x), 1u), 4294967295u, 4294967295u);
    var var_2 = Struct_1(max(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global0.yzy, vec3<i32>(-2147483647i, 0i, 25936i)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(38715u, u_input.a.x, 165534u, var_1.x), vec4<u32>(u_input.b.x, 18663u, 4294967295u, var_1.x)) % 32u), -45874i), global0.x), 611f, _wgslsmith_clamp_u32(max(abs(var_1.x) & var_1.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), ~_wgslsmith_sub_u32(var_1.x & 11503u, ~var_1.x), 1u), ~28260u, select(!select(!vec4<bool>(arg_0.x, false, true, global1.x), select(vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(arg_0.x, false, false, true)), vec4<bool>(true, true, true, arg_0.x)), !vec4<bool>(arg_0.x, arg_0.x, true, global1.x), !vec4<bool>(false, false, true, global1.x)));
    var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(103205u, var_1.x), vec2<u32>(1u, var_2.c))), 7599u, _wgslsmith_mult_u32(var_1.x, min(14185u, 0u))), reverseBits(vec3<u32>(var_1.x, countOneBits(4294967295u), u_input.b.x << (6743u % 32u))), firstTrailingBit(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 13161u), vec3<u32>(4294967295u, var_1.x, var_1.x), max(vec3<u32>(var_2.c, 0u, var_2.d), vec3<u32>(var_2.d, 0u, 1u))))), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(59572u, u_input.b.x, var_2.c), ~77716u), firstLeadingBit(u_input.b.x) << (u_input.b.x % 32u), select(~var_2.c, 1u, arg_0.x)), firstLeadingBit(vec3<u32>(var_2.d, 17482u, 0u) ^ abs(vec3<u32>(var_2.d, var_1.x, var_2.c)))));
    var_0 = -227f;
    return var_2.d | 1u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), arg_1.b, -2076f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-432f))))));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c, firstTrailingBit(func_3(arg_0.e.yzz)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c, 83266u, 55086u, 25548u), vec4<u32>(arg_0.c, u_input.b.x, 4294967295u, 42550u)) ^ ~1u, countOneBits(_wgslsmith_mod_u32(abs(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(29574u, arg_1.c), u_input.b)))), ~vec4<u32>(4294967295u, arg_0.c | 1u, arg_1.d, arg_1.c));
    var var_2 = arg_0;
    var_2 = arg_0;
    return ~(-16414i) >> (countOneBits(arg_0.c) % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global2 = array<Struct_1, 1>();
    var var_0 = arg_0.e.yyx;
    global0 = vec4<i32>(0i, min(global0.x & ~(~arg_0.a), -(~arg_1.a | _wgslsmith_add_i32(global0.x, arg_1.a))), -(~(-1906i)), func_4(global2[_wgslsmith_index_u32(func_3(select(arg_1.e.wzy, arg_0.e.xyx, vec3<bool>(arg_1.e.x, false, true))) << (16887u % 32u), 1u)], Struct_1(arg_1.a, -402f, abs(_wgslsmith_add_u32(66998u, arg_0.d)), arg_0.d & abs(5716u), vec4<bool>(false, !global1.x, all(vec3<bool>(var_0.x, global1.x, arg_1.e.x)), true)), _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_clamp_vec2_i32(global0.yy, global0.yy, vec2<i32>(14499i, 2147483647i))), firstLeadingBit(global0.yw)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), 507f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b)) - _wgslsmith_f_op_f32(floor(arg_1.b)))));
    var var_1 = global1.x;
    var var_2 = arg_1.e;
    return _wgslsmith_clamp_u32(arg_0.d, _wgslsmith_div_u32(1u, ~0u), select(_wgslsmith_mult_u32(u_input.b.x, min(22441u, u_input.b.x)), arg_1.d, true | (_wgslsmith_mod_u32(9523u, arg_1.d) < u_input.a.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(global0.x, -1267f, 20723u, 0u, vec4<bool>(true, any(vec2<bool>(false, any(vec2<bool>(true, global1.x)))), true == (max(63448u, 4294967295u) >= firstLeadingBit(u_input.b.x)), true));
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.c, firstTrailingBit(var_0.d)), 1u)];
    var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(var_0.c, func_2(Struct_1(-2147483647i, var_0.b, 33965u, var_0.c, vec4<bool>(false, true, true, global1.x)), Struct_1(var_0.a, 2760f, var_0.d, var_0.c, vec4<bool>(global1.x, true, true, var_0.e.x)))) & ~0u), 1u)];
    let var_1 = Struct_1((var_0.a >> (653u % 32u)) << (max(var_0.d, select(var_0.c, u_input.a.x, true)) % 32u), 1363f, ~func_2(global2[_wgslsmith_index_u32(var_0.c, 1u)], global2[_wgslsmith_index_u32(9217u, 1u)]) ^ ~_wgslsmith_sub_u32(max(var_0.c, u_input.b.x), 70437u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, 46790u, u_input.b.x, 14505u), ~(vec4<u32>(u_input.b.x, 61114u, 64543u, u_input.b.x) & vec4<u32>(8865u, 4294967295u, var_0.d, 128152u))), vec4<bool>(any(select(select(vec4<bool>(var_0.e.x, true, global1.x, true), var_0.e, var_0.e), select(vec4<bool>(global1.x, var_0.e.x, true, global1.x), vec4<bool>(var_0.e.x, global1.x, global1.x, false), vec4<bool>(false, var_0.e.x, true, true)), var_0.e)), _wgslsmith_clamp_u32(func_3(var_0.e.wyz), 0u, ~var_0.d) > (u_input.a.x ^ ~var_0.d), !global1.x && (51285u >= var_0.d), all(var_0.e)));
    var var_2 = 0i;
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(func_1().b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(285f, -1478f)))));
    global1 = vec3<bool>(arg_0.e.x, arg_0.e.x || global1.x, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 369f, -322f, 562f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, 481f, -1000f, var_0) * vec4<f32>(arg_0.b, arg_0.b, var_0, var_0))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(537f, 1001f, 1074f, -793f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, var_0, -1109f, 263f) + vec4<f32>(-594f, -410f, -181f, arg_2.b)) + vec4<f32>(arg_2.b, 650f, 873f, -817f)))), false)));
    let var_2 = -244f;
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -913f), _wgslsmith_f_op_f32(ceil(509f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-442f))), -252f, 2214f)));
    return arg_0;
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec4<i32> {
    global0 = ~abs(-select(vec4<i32>(arg_1.a, 37286i, 1i, arg_1.a), vec4<i32>(-5719i, 2147483647i, 30420i, -30648i) >> (vec4<u32>(arg_1.c, 1u, 26760u, 28834u) % vec4<u32>(32u)), !arg_2.e));
    var var_0 = func_5(func_5(Struct_1(arg_1.a, 1689f, 0u, 24589u, !arg_1.e), abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, arg_1.c, arg_2.d), vec4<u32>(arg_2.d, 1u, arg_3, arg_0.x))), arg_2), ~arg_0, Struct_1(-69930i, 351f, arg_1.d, arg_2.c, vec4<bool>(_wgslsmith_f_op_f32(floor(667f)) > _wgslsmith_f_op_f32(-arg_1.b), global1.x, false, !(!arg_1.e.x))));
    var var_1 = arg_0.zyy;
    return ~vec4<i32>(min(2147483647i & arg_1.a, global0.x), _wgslsmith_add_i32(1i, func_5(Struct_1(arg_1.a, arg_1.b, arg_2.c, arg_0.x, vec4<bool>(true, false, true, true)), vec4<u32>(arg_3, var_0.c, 1u, var_0.d), arg_2).a), 2147483647i, ~(global0.x & 1i)) << (select(arg_0, vec4<u32>(~(arg_1.d | arg_3), 24472u, _wgslsmith_add_u32(36974u, arg_0.x), countOneBits(var_0.c)), !func_1().e) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 1>();
    global0 = ~_wgslsmith_add_vec4_i32(func_6(_wgslsmith_div_vec4_u32(vec4<u32>(72079u, u_input.b.x, u_input.a.x, 54010u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u), vec4<u32>(u_input.b.x, u_input.a.x, 1u, 70476u))), Struct_1(1i, -147f, u_input.b.x, 4294967295u, !vec4<bool>(global1.x, global1.x, true, true)), func_5(func_1(), ~vec4<u32>(70816u, 4294967295u, 21173u, u_input.b.x), global2[_wgslsmith_index_u32(u_input.a.x >> (u_input.b.x % 32u), 1u)]), u_input.b.x), vec4<i32>(-1i, -803i ^ global0.x, global0.x, ~(~global0.x)));
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1600f, 344f))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(step(-1966f, var_0.x))), func_5(func_1(), reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u)), Struct_1(-16735i, var_0.x, 4294967295u, 4294967295u, vec4<bool>(false, false, global1.x, true))).b, _wgslsmith_f_op_f32(round(var_0.x)), 1244f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(max(-284f, -414f)), -503f))));
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(var_1.x - -3652f), var_0.x))));
    let var_3 = select(any(global1.xz), global1.x, global1.x);
    var var_4 = func_5(func_1(), vec4<u32>(~(~77534u), ~_wgslsmith_clamp_u32(46606u, u_input.a.x, u_input.a.x), 1u, ~u_input.a.x) ^ abs(_wgslsmith_mod_vec4_u32(min(vec4<u32>(0u, 87418u, 0u, u_input.b.x), vec4<u32>(84122u, 0u, 1u, 1u)), vec4<u32>(u_input.a.x, 0u, 30059u, u_input.b.x))), func_1());
    var var_5 = ~(~(~firstTrailingBit(1i)));
    let x = u_input.a;
    s_output = StorageBuffer(-583f, _wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 24915u), vec3<u32>(56571u, 0u, u_input.a.x)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 60116u, 4294967295u), vec3<u32>(var_4.d, 43725u, 13603u))), ~(~(~vec3<u32>(4294967295u, var_4.c, 49583u)))), vec4<u32>(var_4.c, u_input.a.x, u_input.b.x, ~u_input.a.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_f_op_f32(abs(var_4.b)), var_0.x, _wgslsmith_f_op_f32(1862f * var_1.x))))));
}

