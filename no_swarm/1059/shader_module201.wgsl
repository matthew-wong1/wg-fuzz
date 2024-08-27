struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_2, 4>;

var<private> global2: array<Struct_3, 31>;

var<private> global3: array<u32, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    global0 = any(vec4<bool>(((global3[_wgslsmith_index_u32(0u, 11u)] != 4294967295u) | all(vec4<bool>(true, false, false, false))) || select(select(true, true, true), true, false), true, false, !all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))));
    global2 = array<Struct_3, 31>();
    var var_0 = arg_0.a.x;
    var var_1 = ~((vec2<u32>(4294967295u, u_input.c.x) | vec2<u32>(_wgslsmith_add_u32(54528u, 0u), u_input.d)) | select(_wgslsmith_mult_vec2_u32(reverseBits(u_input.c.zx), vec2<u32>(global3[_wgslsmith_index_u32(1u, 11u)], u_input.d)), vec2<u32>(u_input.d, ~22516u), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a * arg_0.a)), _wgslsmith_f_op_vec3_f32(ceil(arg_0.a)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.a.x)), _wgslsmith_f_op_f32(exp2(arg_0.a.x)), -2290f) - vec3<f32>(-332f, _wgslsmith_f_op_f32(step(arg_0.a.x, 1000f)), _wgslsmith_div_f32(-1666f, -646f)))));
    return arg_0.a;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(vec3<f32>(-190f, 1192f, 536f)))))))), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-209f, 1000f) - _wgslsmith_f_op_f32(2737f * 1377f)) - _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(1276f, -702f)))), !(u_input.c.x != ~(~u_input.a)));
    global3 = array<u32, 11>();
    global2 = array<Struct_3, 31>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(305f + _wgslsmith_f_op_f32(round(var_0.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, var_0.a.x), _wgslsmith_f_op_f32(round(var_0.c)), var_0.d & var_0.b.x)), 1153f))), select(select(!select(vec2<bool>(true, false), vec2<bool>(var_0.d, false), vec2<bool>(true, false)), var_0.b, true), vec2<bool>(!(!var_0.b.x), !var_0.b.x || !var_0.b.x), !var_0.b), 635f, true);
    let var_2 = vec4<u32>(_wgslsmith_dot_vec3_u32(select(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(69922u, 11u)], 11u)], 50879u)), abs(u_input.c)), ~vec3<u32>(u_input.c.x, 1u, u_input.c.x), !var_0.b.x), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 47671u), firstTrailingBit(u_input.c)), vec3<u32>(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(u_input.d, 11u)], 4294967295u), ~1466u, abs(32115u)))), ~global3[_wgslsmith_index_u32(max(reverseBits(~global3[_wgslsmith_index_u32(u_input.d, 11u)]), ~reverseBits(10478u)), 11u)], _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(1u, 11u)], u_input.c.x) ^ 4294967295u, firstTrailingBit(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 11u)], 11u)])), ~1u), ~0u);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, _wgslsmith_f_op_vec3_f32(func_3(Struct_3(vec3<f32>(var_1.c, var_1.a.x, -1322f)))).x, var_0.c), vec3<f32>(_wgslsmith_div_f32(543f, 248f), var_0.c, var_1.c))), vec2<bool>(!any(var_0.b), all(!var_0.b)), _wgslsmith_f_op_f32(-var_0.c), !var_1.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1218f, var_0.a.x, 1039f, -400f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.c, var_1.a.x, var_1.c) + vec4<f32>(1327f, 1474f, 639f, 1037f)))), vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + -156f), var_1.c, _wgslsmith_f_op_f32(floor(var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x))))), vec2<u32>(51345u, _wgslsmith_add_u32(4294967295u, var_2.x)));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_1 {
    global3 = array<u32, 11>();
    var var_0 = func_2();
    let var_1 = abs(-2147483647i);
    let var_2 = global2[_wgslsmith_index_u32(arg_3.c.x, 31u)];
    var var_3 = ~_wgslsmith_mult_u32(1u << (var_0.c.x % 32u), countOneBits(arg_3.c.x));
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    let var_0 = true;
    global0 = !(!any(!vec4<bool>(arg_1, arg_1, false, true)));
    global3 = array<u32, 11>();
    var var_1 = arg_1;
    let var_2 = global2[_wgslsmith_index_u32(reverseBits(~11066u), 31u)];
    return func_1(vec2<i32>(abs(u_input.e), -32510i) << (u_input.c.zy % vec2<u32>(32u)), all(vec2<bool>(var_0, select(false, false, false))) | true, ~_wgslsmith_add_vec4_u32(min(~vec4<u32>(10187u, u_input.a, 0u, u_input.c.x), vec4<u32>(52278u, global3[_wgslsmith_index_u32(u_input.a, 11u)], 0u, 1u) | vec4<u32>(46771u, global3[_wgslsmith_index_u32(u_input.c.x, 11u)], 11079u, u_input.d)), abs(~vec4<u32>(1u, 4294967295u, 1u, 1u))), Struct_2(arg_0, func_2().b, ~(~vec2<u32>(34351u, 0u)))).b;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    global1 = array<Struct_2, 4>();
    global2 = array<Struct_3, 31>();
    let var_0 = arg_2.a;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_0.c)), _wgslsmith_f_op_f32(-arg_2.a.c))))), -404f, !(!arg_2.a.b.x != true))), 1792f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-967f)))))));
    var var_2 = arg_0;
    return func_1(vec2<i32>(_wgslsmith_mod_i32(2147483647i, i32(-1i) * -3413i), u_input.b >> (countOneBits(51431u) % 32u)), !all(select(vec3<bool>(arg_2.a.b.x, arg_1, var_0.d), vec3<bool>(arg_1, true, false), false)) && !(any(vec2<bool>(arg_2.a.d, true)) || true), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(63479u, u_input.c.x, 89872u, global3[_wgslsmith_index_u32(0u, 11u)])), _wgslsmith_add_vec4_u32(vec4<u32>(11491u, arg_2.c.x, global3[_wgslsmith_index_u32(4294967295u, 11u)], arg_2.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(49722u, u_input.c.x, arg_2.c.x, 1u), vec4<u32>(0u, u_input.a, 4294967295u, arg_2.c.x))), vec4<u32>(global3[_wgslsmith_index_u32(arg_2.c.x, 11u)], arg_2.c.x, 78031u, ~u_input.a)) >> (vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, ~u_input.c.x), ~0u, firstLeadingBit(_wgslsmith_add_u32(11105u, 0u)), 4294967295u) % vec4<u32>(32u)), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_1 = func_5(~_wgslsmith_add_i32(u_input.e, min(1i, -2147483647i)), true || select(u_input.c.x >= 3463u, !(u_input.a < global3[_wgslsmith_index_u32(u_input.d, 11u)]), true), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(var_0.a)))), func_4(func_1(vec2<i32>(u_input.b, u_input.b), false, vec4<u32>(85357u, global3[_wgslsmith_index_u32(u_input.c.x, 11u)], 4294967295u, 4294967295u), Struct_2(Struct_1(var_0.a, vec2<bool>(false, false), var_0.a.x, true), vec4<f32>(-778f, 120f, var_0.a.x, var_0.a.x), vec2<u32>(u_input.c.x, u_input.a))), select(false, true, true)), 1607f, true), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -195f, var_0.a.x, -192f) + vec4<f32>(-1225f, -1654f, -160f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -273f, -987f, var_0.a.x) + vec4<f32>(617f, 373f, 484f, 1097f)))))), vec2<u32>(select(u_input.d, global3[_wgslsmith_index_u32(1u, 11u)], true), _wgslsmith_div_u32(~0u, global3[_wgslsmith_index_u32(firstLeadingBit(global3[_wgslsmith_index_u32(4294967295u, 11u)]), 11u)]))));
    var var_2 = func_5(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 1i ^ u_input.e, u_input.b & 8743i) >> (vec3<u32>(firstLeadingBit(global3[_wgslsmith_index_u32(44530u, 11u)]), u_input.a, 4294967295u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_add_i32(u_input.b, -26755i)), select(1i, ~u_input.e, true), firstLeadingBit(~(-2147483647i)))), true, global1[_wgslsmith_index_u32(abs(u_input.a >> (1u % 32u)), 4u)]);
    var var_3 = 14928i;
    let var_4 = Struct_2(func_5(7312i, var_1.d, global1[_wgslsmith_index_u32(0u, 4u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(-var_2.a.x), func_1(vec2<i32>(u_input.b, 10985i), false, vec4<u32>(global3[_wgslsmith_index_u32(10697u, 11u)], 11775u, 34312u, u_input.d), Struct_2(var_1, vec4<f32>(-457f, var_2.a.x, 246f, 818f), u_input.c.xx)).a.x, _wgslsmith_f_op_f32(select(var_0.a.x, 949f, true))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, var_1.c, var_0.a.x, var_2.a.x), vec4<f32>(var_1.c, var_1.a.x, 528f, -387f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_1.a.x, var_1.a.x, var_0.a.x))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(273f, var_1.c)), _wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(-var_1.c), func_1(vec2<i32>(-2147483647i, -3487i), false, vec4<u32>(u_input.d, u_input.c.x, 2494u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32177u, 11u)], 11u)]), global1[_wgslsmith_index_u32(u_input.c.x, 4u)]).a.x))), u_input.c.yx >> (_wgslsmith_mod_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(68268u, 11u)] | 0u, ~16255u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 11u)], 11u)], u_input.a) | u_input.c.yz) % vec2<u32>(32u)));
    global1 = array<Struct_2, 4>();
    let var_5 = 1722f;
    let var_6 = func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.e, 42853i, u_input.b), vec3<i32>(-2147483647i, 2607i, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, u_input.b, -2147483647i), vec3<i32>(-1i, 0i, -54060i))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647i, 46442i), u_input.e >> (var_4.c.x % 32u))), vec2<i32>(u_input.e & -1i, _wgslsmith_sub_i32(u_input.b, max(-35217i, u_input.e)))), var_2.b.x, Struct_2(var_1, var_4.b, vec2<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(global3[_wgslsmith_index_u32(83953u, 11u)], 4294967295u, var_4.c.x, u_input.d), vec4<u32>(0u, var_4.c.x, 4294967295u, 61506u)), vec4<u32>(1369u, global3[_wgslsmith_index_u32(25342u, 11u)], global3[_wgslsmith_index_u32(1u, 11u)], 25840u)), ~_wgslsmith_add_u32(0u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(select(~u_input.c.yy, vec2<u32>(52131u, 4294967295u) ^ var_4.c, func_1(vec2<i32>(u_input.e, u_input.b), var_1.b.x, vec4<u32>(1u, 1u, u_input.d, u_input.c.x), Struct_2(var_1, vec4<f32>(var_1.c, 279f, var_2.a.x, 909f), u_input.c.xx)).b) ^ _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.c.zx), _wgslsmith_mult_vec2_u32(u_input.c.zx, u_input.c.yx))), u_input.c);
}

