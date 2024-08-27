struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 16>;

var<private> global1: vec3<i32>;

var<private> global2: Struct_1;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    let var_0 = !arg_2.x;
    var var_1 = Struct_1(~57391u, -46680i | _wgslsmith_dot_vec4_i32(min(_wgslsmith_mod_vec4_i32(vec4<i32>(10232i, global1.x, arg_0.x, arg_1.b), vec4<i32>(arg_0.x, -25176i, global2.b, 104427i)), ~vec4<i32>(45281i, -2147483647i, arg_0.x, arg_0.x)), vec4<i32>(min(-73447i, -2147483647i), _wgslsmith_add_i32(-11760i, arg_0.x), ~(-1643i), global1.x)), _wgslsmith_sub_u32(~(global2.d | ~41012u), firstLeadingBit(~select(4294967295u, 4294967295u, var_0))), u_input.b.x, vec2<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.d.xy)), 61452u));
    var var_2 = vec2<u32>(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_add_u32(global2.e.x, var_1.a), ~2326u)), ~((arg_1.c | 21387u) | ~var_1.e.x)) >> (firstTrailingBit(select(select(vec2<u32>(0u, 1u), vec2<u32>(arg_1.d, 26046u), false), var_1.e, vec2<bool>(arg_2.x, var_0)) | ~vec2<u32>(u_input.a.x, 22809u)) % vec2<u32>(32u));
    let var_3 = _wgslsmith_sub_i32(var_1.b, global2.b);
    var var_4 = arg_0.x;
    return _wgslsmith_f_op_f32(f32(-1f) * -1559f);
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-843f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1336f - 351f) + -1055f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec2<i32>(global2.b, global1.x), Struct_1(u_input.b.x, global1.x, 4294967295u, 1u, vec2<u32>(15813u, 35814u)), vec4<bool>(true, false, true, false))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(371f, 240f)))), _wgslsmith_f_op_f32(2735f * _wgslsmith_f_op_f32(-216f - _wgslsmith_f_op_f32(ceil(-1034f)))), -509f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    global0 = array<vec2<bool>, 16>();
    let var_2 = 1f;
    let var_3 = Struct_1(countOneBits(_wgslsmith_mult_u32(88652u ^ ~global2.d, 1u)), 1i ^ -global2.b, global2.d, ~(reverseBits(u_input.d.x) >> (122475u % 32u)), _wgslsmith_clamp_vec2_u32(u_input.b, global2.e, _wgslsmith_div_vec2_u32(~(~vec2<u32>(global2.d, 98816u)), abs(u_input.b))));
    return Struct_1(firstLeadingBit(68233u), select(0i, -1i, !any(vec4<bool>(true, true, false, false))), 101369u, u_input.b.x, vec2<u32>(u_input.a.x, ~_wgslsmith_sub_u32(var_3.e.x, u_input.b.x)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = any(vec3<bool>(all(select(select(global0[_wgslsmith_index_u32(global2.d, 16u)], vec2<bool>(false, false), global0[_wgslsmith_index_u32(83732u, 16u)]), vec2<bool>(true, true), global0[_wgslsmith_index_u32(45338u, 16u)])), false, any(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.d), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 39328u), vec2<u32>(global2.e.x, 4294967295u))), 16u)])));
    let var_1 = arg_0;
    return Struct_1(countOneBits(41027u), global2.b, ~global2.e.x, _wgslsmith_clamp_u32(~4909u, _wgslsmith_dot_vec2_u32(abs(~global2.e), ~abs(vec2<u32>(arg_0.e.x, 25651u))), 25631u), ~_wgslsmith_div_vec2_u32(~(~var_1.e), firstTrailingBit(u_input.c.xz | global2.e)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_div_vec3_i32(arg_0.xzz, vec3<i32>(-2147483647i, -2147483647i, -4954i));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(2084f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1878f, 1167f)) * _wgslsmith_f_op_f32(1000f - -185f)), global1.x < countOneBits(-12112i))))));
    global1 = vec3<i32>(arg_0.x, -(-851i | _wgslsmith_add_i32(-global1.x, _wgslsmith_sub_i32(global2.b, arg_1.b))), _wgslsmith_div_i32(global1.x, max(20308i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -1i), vec2<i32>(-25537i, arg_0.x)) << (11148u % 32u))));
    global1 = abs(abs(~_wgslsmith_mod_vec3_i32(arg_0.wxw | vec3<i32>(-5056i, -40121i, 41291i), vec3<i32>(var_0.x, 0i, global2.b))));
    var var_2 = _wgslsmith_div_vec2_i32(var_0.xy, ~firstLeadingBit(var_0.zy));
    return select(~(-arg_0), select(arg_0, arg_0, select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), true), any(vec4<bool>(true, true, true, true))), !vec4<bool>(true, true, false, all(global0[_wgslsmith_index_u32(11503u, 16u)])), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), false), false)));
}

fn func_6(arg_0: vec4<i32>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(-1i, arg_0.x), -5042i, abs(select(global1.x, arg_0.x, !arg_1.x)));
    global0 = array<vec2<bool>, 16>();
    var var_1 = ~firstTrailingBit(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global2.d, u_input.a.x, global2.d), vec4<u32>(global2.c, 1u, u_input.b.x, 2487u))));
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, var_1.x, global2.a), vec3<u32>(u_input.b.x, global2.c, u_input.a.x), var_1.xxz) | var_1.ywz, u_input.c), ~vec3<u32>(_wgslsmith_add_u32(39863u, var_1.x), u_input.d.x, _wgslsmith_add_u32(0u, 1u))), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 24016i, -10947i, 54243i) ^ max(firstTrailingBit(vec4<i32>(global2.b, -8055i, global1.x, 1i)), vec4<i32>(1i, global2.b, var_0.x, var_0.x)), select(vec4<i32>(_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(global1.x, -2147483647i, global2.b, 1i)), countOneBits(global1.x), _wgslsmith_add_i32(0i, -13542i), func_5(arg_0, Struct_1(global2.d, -9300i, 7843u, 1u, vec2<u32>(110392u, 91175u))).x), abs(vec4<i32>(3894i, var_0.x, global2.b, global1.x)), !select(vec4<bool>(false, true, false, false), vec4<bool>(arg_1.x, true, true, true), vec4<bool>(arg_1.x, true, false, false)))), ~(~(_wgslsmith_clamp_u32(0u, 4294967295u, global2.c) << (1u % 32u))), _wgslsmith_div_u32(~(~(~1u)), var_1.x), var_1.zz);
    global1 = _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 24521i) >> (var_1.yyx % vec3<u32>(32u)), var_0, ~var_0), _wgslsmith_mult_vec3_i32(~firstTrailingBit(arg_0.zyy) ^ _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-2147483647i, 1i, 3577i)), var_0, abs(vec3<i32>(-2147483647i, 0i, var_2.b))), ~(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 19997i, 29740i), arg_0.yyx) >> (countOneBits(u_input.c) % vec3<u32>(32u)))));
    return var_2;
}

fn func_7(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(global0[_wgslsmith_index_u32(arg_2.a, 16u)])), vec4<bool>(global2.b > -2147483647i, false, true, true), select(false, false, u_input.d.x > 0u)));
    global2 = func_4(func_4(Struct_1(_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 1u, arg_0.c), vec3<u32>(u_input.d.x, arg_0.a, arg_0.d), vec3<bool>(false, var_0.x, var_0.x)), vec3<u32>(arg_0.d, 61320u, 45770u)), func_5(-vec4<i32>(-52290i, -22140i, -1i, arg_2.b), Struct_1(0u, 0i, arg_0.a, 20757u, vec2<u32>(global2.e.x, 4294967295u))).x, _wgslsmith_dot_vec3_u32(u_input.d, abs(u_input.c)), 0u, vec2<u32>(_wgslsmith_div_u32(0u, arg_2.c), 1u >> (global2.a % 32u)))));
    global1 = reverseBits(reverseBits(vec3<i32>(global2.b, ~0i, func_5(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -1i, 0i, -1i), vec4<i32>(global1.x, -2147483647i, 25278i, global1.x)), arg_2).x)));
    var var_1 = ~u_input.b.x;
    var_1 = 11446u;
    return Struct_1(_wgslsmith_div_u32(1u, global2.e.x), arg_2.b, _wgslsmith_mult_u32(~(~1u), arg_2.c), 4294967295u, func_6(select(vec4<i32>(global2.b, 1i, global1.x, -9806i) ^ ~vec4<i32>(2147483647i, 2147483647i, 55628i, 2147483647i), -select(vec4<i32>(0i, arg_2.b, -31504i, -1i), vec4<i32>(8876i, global2.b, -1i, -15027i), false), var_0.x), !select(!vec3<bool>(var_0.x, var_0.x, true), select(var_0.zyy, vec3<bool>(var_0.x, true, false), var_0.zxz), var_0.xwz)).e);
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global0 = array<vec2<bool>, 16>();
    global1 = arg_0.xyz;
    global2 = func_7(func_6(func_5(-vec4<i32>(global1.x, 1i, global2.b, global2.b), func_4(func_2())), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), _wgslsmith_dot_vec2_i32(arg_0.yy, vec2<i32>(56068i, -2147483647i)) >> (~(~(~u_input.b.x)) % 32u), func_2());
    global0 = array<vec2<bool>, 16>();
    var var_0 = max(_wgslsmith_div_i32(abs(-2147483647i), max(arg_0.x, global1.x) >> (global2.d % 32u)), -global2.b);
    return 7210u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(global2.c, 51617u, 27306u, 31846u) | firstTrailingBit(~vec4<u32>(global2.c, 56856u, global2.e.x, u_input.a.x)), vec4<u32>(((global2.c ^ 1u) | abs(69983u)) | func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -1i, -2147483647i, -14654i), vec4<i32>(40693i, global1.x, 2147483647i, 0i))), abs(~min(1u, global2.a)), global2.a, firstLeadingBit(47198u)));
    global1 = ~vec3<i32>(0i, ~global1.x, 1923i) >> (firstTrailingBit(~vec3<u32>(min(202u, u_input.b.x), max(u_input.c.x, global2.d), var_0.x)) % vec3<u32>(32u));
    let var_1 = vec2<i32>(_wgslsmith_add_i32(global2.b, -global2.b), 0i >> (var_0.x % 32u));
    let var_2 = any(select(vec3<bool>(true, false, all(vec2<bool>(true, true))), vec3<bool>(u_input.a.x < _wgslsmith_mod_u32(u_input.d.x, var_0.x), true, true | all(global0[_wgslsmith_index_u32(u_input.a.x, 16u)])), !(!(var_1.x == var_1.x))));
    var var_3 = Struct_1(_wgslsmith_div_u32(global2.e.x, var_0.x), _wgslsmith_mod_i32(40661i, 2147483647i), 31114u, firstLeadingBit(_wgslsmith_add_u32(global2.a, ~countOneBits(global2.e.x))), u_input.c.zy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.b, -8439i, abs(var_3.b), -49676i), firstTrailingBit(vec4<i32>(-42416i, global2.b, var_3.b, 9501i))), _wgslsmith_sub_i32(~(1717i << (global2.d % 32u)), abs(-1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(326f, 720f, 561f, -1023f))))), func_4(func_4(func_4(func_2()))).a, abs(abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(8986u, global2.c, u_input.c.x), abs(var_0.wyw), u_input.d))), -29848i << (countOneBits(var_3.e.x) % 32u));
}

