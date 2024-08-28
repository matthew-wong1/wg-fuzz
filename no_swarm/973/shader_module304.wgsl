struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(1402f, 340f, -678f, 987f, -320f, -374f, -243f, -488f, -1238f, 1222f, 587f, -1067f, 1859f, -2228f, 2103f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1714f, global0[_wgslsmith_index_u32(1u, 15u)]) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], -2003f))))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(~u_input.d.x, 15u)]), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 15u)], 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1486f, 1000f) + vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], 532f)))))))));
    var var_1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(u_input.c, u_input.e.xx | u_input.d), u_input.e.yz), 15u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x + global0[_wgslsmith_index_u32(4294967295u, 15u)]))))) == _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(~u_input.c.x, 15u)], global0[_wgslsmith_index_u32(u_input.e.x, 15u)]));
    let var_2 = -_wgslsmith_mult_i32(_wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), reverseBits(u_input.b.x) | _wgslsmith_div_i32(-51678i, arg_1)), arg_1);
    var_1 = !(arg_0.x == false);
    var var_3 = _wgslsmith_f_op_f32(abs(var_0.x));
    return _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_add_u32(1u, 32560u), 1u), 15u)], 197f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1117f, global0[_wgslsmith_index_u32(0u, 15u)])))), vec2<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(778u, 15u)], var_0.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 15u)] + 772f)), !(!arg_0)))));
}

fn func_4(arg_0: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = _wgslsmith_clamp_vec4_u32((_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 1u, u_input.d.x, 37391u), ~vec4<u32>(4294967295u, u_input.e.x, u_input.d.x, u_input.c.x)) ^ vec4<u32>(4294967295u, u_input.c.x, ~1u, ~0u)) << (abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 18621u, 10497u), vec4<u32>(u_input.c.x, u_input.e.x, u_input.d.x, 55816u) | vec4<u32>(13573u, u_input.d.x, u_input.d.x, u_input.c.x))) % vec4<u32>(32u)), ~abs(vec4<u32>(u_input.e.x, 89721u, 1u, u_input.d.x) & (vec4<u32>(1u, u_input.d.x, 1u, u_input.e.x) << (vec4<u32>(26604u, 0u, 5734u, 0u) % vec4<u32>(32u)))), vec4<u32>(max(~6699u, 59342u), u_input.e.x, 0u, abs(0u)));
    let var_2 = vec3<i32>(-30057i & (-2147483647i << (~var_1.x % 32u)), _wgslsmith_mult_i32(u_input.a, -_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -2147483647i), -vec2<i32>(-14714i, u_input.b.x))), max(min(_wgslsmith_sub_i32(u_input.a, u_input.b.x) & select(0i, u_input.a, true), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(-28466i, 2474i)), _wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.b.x), vec2<i32>(u_input.a, u_input.b.x)))), -37243i));
    var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_3 = _wgslsmith_clamp_vec4_u32(var_1, ~max(~select(var_1, vec4<u32>(71259u, var_1.x, 4294967295u, u_input.e.x), false), abs(var_1)), vec4<u32>(max(~0u, ~_wgslsmith_clamp_u32(var_1.x, var_1.x, 25415u)), reverseBits(u_input.e.x), var_1.x, u_input.c.x));
    return all(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))), vec3<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(true, true)), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), true), vec3<bool>(true, true, true), true)));
}

fn func_2(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(false, true), firstLeadingBit(0i))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1936f, -585f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(72345u, 15u)], 842f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 15u)], global0[_wgslsmith_index_u32(u_input.e.x, 15u)]), vec2<f32>(126f, -1168f))))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(select(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true & all(vec3<bool>(false, true, true))), countOneBits(arg_0.x))));
    var var_2 = Struct_4(false, Struct_1(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true)), false, _wgslsmith_sub_u32(u_input.c.x, ~22502u) & firstLeadingBit(119753u)), Struct_1(vec2<bool>(true, true), true, 12305u), firstTrailingBit(select(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(u_input.e.x, u_input.e.x, u_input.d.x, u_input.e.x)), vec4<u32>(~u_input.d.x, 4294967295u, u_input.d.x & u_input.e.x, ~u_input.c.x), true)));
    return !select(select(!vec4<bool>(var_2.c.b, var_2.b.b, var_2.b.a.x, true), vec4<bool>(false, true, var_2.a, true), vec4<bool>(!var_2.c.a.x, false, false, true)), vec4<bool>(true | var_2.b.b, any(select(vec4<bool>(true, false, var_2.a, var_2.a), vec4<bool>(false, false, var_2.a, true), vec4<bool>(true, var_2.b.b, true, var_2.a))), !(!var_2.b.a.x), any(select(vec4<bool>(true, var_2.a, var_2.a, false), vec4<bool>(var_2.b.a.x, false, var_2.b.a.x, false), false))), all(vec2<bool>(false, var_2.a)));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(vec2<bool>(false || any(func_2(vec3<i32>(2147483647i, u_input.b.x, u_input.b.x))), true), true, ~u_input.d.x);
    global0 = array<f32, 15>();
    var var_1 = -39186i | ~u_input.a;
    let var_2 = countOneBits(_wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.b.x, -1i, -103206i), vec4<i32>(13785i, u_input.a, u_input.a, u_input.b.x)), firstLeadingBit(vec4<i32>(57557i, u_input.a, 2147483647i, u_input.a)))) >> (vec4<u32>(u_input.e.x, _wgslsmith_dot_vec3_u32(u_input.e, firstTrailingBit(vec3<u32>(15810u, 4294967295u, u_input.d.x))), _wgslsmith_mod_u32(var_0.c, ~(~63657u)), ~(~var_0.c) ^ 16894u) % vec4<u32>(32u));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    let var_0 = true;
    var var_1 = 6321i & _wgslsmith_mult_i32(_wgslsmith_div_i32(12225i, -2147483647i), u_input.a);
    var var_2 = ~_wgslsmith_mod_u32(0u, min(firstTrailingBit(~u_input.e.x), 0u | select(4294967295u, u_input.d.x, var_0)));
    var var_3 = -627f;
    let var_4 = Struct_2(vec2<bool>(true, var_0), Struct_1(!(!select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), vec2<bool>(var_0, true))), true, func_1()), Struct_1(!select(!vec2<bool>(var_0, true), !vec2<bool>(var_0, var_0), global0[_wgslsmith_index_u32(u_input.c.x, 15u)] == -789f), false, abs(4294967295u)), -1088f);
    let var_5 = firstLeadingBit(269u);
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec4<u32>(_wgslsmith_add_u32(abs(var_5), 0u), ~_wgslsmith_mod_u32(4294967295u, u_input.c.x), var_4.b.c, 1u) ^ vec4<u32>(u_input.c.x, var_5, min(~u_input.d.x, var_4.b.c), reverseBits(60457u)), 0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_4.d), _wgslsmith_f_op_f32(1668f + global0[_wgslsmith_index_u32(4294967295u, 15u)]))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-633f, 1639f, var_4.d, global0[_wgslsmith_index_u32(var_5, 15u)]) - vec4<f32>(global0[_wgslsmith_index_u32(var_5, 15u)], -678f, var_4.d, 169f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(42211u, 15u)], var_4.d, var_4.d, -729f), vec4<f32>(var_4.d, -142f, 332f, 1092f), false)))))));
}

