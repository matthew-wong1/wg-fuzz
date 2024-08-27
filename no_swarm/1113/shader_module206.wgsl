struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_3,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(2543f, 708f, 209f, 283f, -1436f, 590f, -555f, 232f, 980f, -714f, 138f, -865f, -422f, 1789f, 433f, -1260f, -2059f, 251f, 3204f, -971f, -1000f, 1000f, 972f, 1032f, -1075f, 129f, -183f, -1000f, -1216f, 459f, 621f);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: f32, arg_3: i32) -> Struct_2 {
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    let var_0 = Struct_2(vec3<bool>(true, !(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e.x, 31u)] + -937f) != -148f), all(vec3<bool>(true, true, true))));
    global0 = array<f32, 31>();
    var var_1 = Struct_3(var_0, Struct_1(50009u, var_0.a.xy, vec2<bool>(-42496i < arg_0.x, true & (true || var_0.a.x)), var_0.a.x, arg_0), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(23559u, u_input.c, 7022u, 4294967295u), ~vec4<u32>(u_input.a, 13118u, u_input.e.x, u_input.e.x)), countOneBits(vec4<u32>(0u, 34048u, u_input.c, u_input.e.x) | vec4<u32>(4294967295u, 0u, 8968u, u_input.c))), vec2<bool>(global0[_wgslsmith_index_u32(76226u, 31u)] < -1210f, true), vec2<bool>(all(vec2<bool>(var_0.a.x, false)) && (arg_1 >= 11983i), !var_0.a.x), false, vec3<i32>(arg_1, -u_input.d, _wgslsmith_add_i32(~arg_1, ~0i))), false, ~(~(~u_input.e.x)));
    return var_1.a;
}

fn func_1() -> Struct_3 {
    global0 = array<f32, 31>();
    var var_0 = func_2(vec3<i32>(-_wgslsmith_clamp_i32(u_input.d, ~u_input.d, _wgslsmith_div_i32(u_input.b.x, u_input.b.x)), 1i, countOneBits(-u_input.b.x ^ 54369i)), -2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -276f), u_input.d);
    var var_1 = ~(vec3<i32>(~u_input.b.x, _wgslsmith_add_i32(u_input.d, -1i), ~u_input.d) ^ -_wgslsmith_div_vec3_i32(u_input.b.zzy, u_input.b.xww)) << (vec3<u32>(82718u, ((u_input.e.x << (u_input.a % 32u)) | ~0u) >> (1u % 32u), ~firstTrailingBit(50328u) ^ _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.c, 4294967295u), _wgslsmith_div_u32(4294967295u, u_input.a))) % vec3<u32>(32u));
    let var_2 = Struct_1(15240u, select(!var_0.a.zx, vec2<bool>(true, var_0.a.x), !select(!var_0.a.zz, vec2<bool>(var_0.a.x, var_0.a.x), false)), vec2<bool>(true, all(select(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), select(vec4<bool>(false, false, var_0.a.x, true), vec4<bool>(var_0.a.x, false, var_0.a.x, true), vec4<bool>(false, true, var_0.a.x, var_0.a.x)), select(vec4<bool>(var_0.a.x, true, var_0.a.x, false), vec4<bool>(var_0.a.x, false, var_0.a.x, true), var_0.a.x)))), var_1.x <= 1i, min(vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(69492i, var_1.x), ~var_1.x), -reverseBits(vec3<i32>(var_1.x, 12039i, u_input.d))));
    let var_3 = u_input.b ^ u_input.b;
    return Struct_3(Struct_2(vec3<bool>(true, var_2.d, true)), var_2, var_2, all(vec2<bool>(!(!var_2.c.x), var_0.a.x)), 43074u);
}

fn func_3(arg_0: f32, arg_1: bool) -> u32 {
    var var_0 = Struct_4(Struct_1(_wgslsmith_div_u32(~u_input.e.x & _wgslsmith_div_u32(173u, u_input.c), _wgslsmith_mult_u32(_wgslsmith_add_u32(24594u, u_input.e.x), _wgslsmith_add_u32(27909u, 120301u))), func_2(u_input.b.zwy, ~_wgslsmith_mult_i32(u_input.d, -8580i), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(1282f + arg_0)), firstTrailingBit(u_input.d)).a.yz, !(!(!vec2<bool>(true, arg_1))), (_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(47269u, 31u)] - -1518f) <= _wgslsmith_f_op_f32(591f - -1000f)) & (any(vec2<bool>(true, arg_1)) & arg_1), vec3<i32>(~_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), -1i, u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(469f, -1829f, arg_0) + vec3<f32>(-1000f, global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(597f, global0[_wgslsmith_index_u32(u_input.e.x, 31u)], arg_0) + vec3<f32>(arg_0, -897f, arg_0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1396f, -392f, -836f))))), Struct_3(func_2(u_input.b.wzx, u_input.b.x, _wgslsmith_f_op_f32(abs(431f)), 1i), Struct_1(~u_input.a, !vec2<bool>(true, arg_1), vec2<bool>(arg_1, true), true, u_input.b.zzy), Struct_1(81334u, !vec2<bool>(false, arg_1), vec2<bool>(arg_1, global0[_wgslsmith_index_u32(4294967295u, 31u)] >= 1181f), _wgslsmith_dot_vec4_u32(vec4<u32>(32992u, u_input.a, u_input.c, 1u), vec4<u32>(4294967295u, u_input.a, u_input.c, u_input.e.x)) != 26344u, vec3<i32>(~u_input.b.x, i32(-1i) * -4076i, u_input.b.x)), arg_1 & !(569f > global0[_wgslsmith_index_u32(u_input.c, 31u)]), 4294967295u), ~(~_wgslsmith_mult_u32(~62199u, _wgslsmith_add_u32(u_input.a, u_input.a))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(u_input.c), u_input.e.x >> (0u % 32u), 74470u, 0u), ~max(vec4<u32>(79537u, u_input.e.x, 61471u, u_input.a), vec4<u32>(46543u, 0u, u_input.e.x, 60256u))), _wgslsmith_clamp_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a, u_input.e.x, u_input.e.x, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, 0u, 39736u, u_input.c), vec4<u32>(25031u, 54454u, u_input.e.x, 15918u)) << ((vec4<u32>(101105u, 7410u, u_input.a, u_input.c) << (vec4<u32>(15356u, u_input.e.x, 1u, 24173u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(1u << (u_input.c % 32u), 4294967295u, ~4294967295u, _wgslsmith_div_u32(1u, 7108u)))));
    let var_1 = true;
    var var_2 = Struct_3(func_1().a, Struct_1(~4294967295u, !func_1().b.c, var_0.c.a.a.yy, var_0.c.b.b.x, _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, var_0.c.c.e.x, var_0.a.e.x)), min(var_0.a.e, vec3<i32>(-2147483647i, 1i, -47077i))), firstLeadingBit(_wgslsmith_mod_vec3_i32(var_0.a.e, vec3<i32>(-28778i, 6691i, -1i))))), var_0.c.c, !select(arg_1, !(var_0.b.x == arg_0), false), firstTrailingBit(u_input.a));
    var var_3 = func_1().c;
    global0 = array<f32, 31>();
    return _wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(var_0.d, countOneBits(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_2.b.a, 25095u, 24862u), countOneBits(var_3.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1536f, global0[_wgslsmith_index_u32(4294967295u, 31u)], -794f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-834f, global0[_wgslsmith_index_u32(24637u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)]), vec3<f32>(351f, 584f, -272f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(748f, -1000f, global0[_wgslsmith_index_u32(u_input.c, 31u)]))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_0.e, 31u)], 1000f, global0[_wgslsmith_index_u32(var_0.e, 31u)]))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1262f, -151f, 445f) - vec3<f32>(global0[_wgslsmith_index_u32(var_0.c.a, 31u)], -652f, global0[_wgslsmith_index_u32(1u, 31u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 31u)], -1229f, global0[_wgslsmith_index_u32(1u, 31u)]) * vec3<f32>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(u_input.c, 31u)], 1219f)))) + vec3<f32>(-2378f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1000f)), global0[_wgslsmith_index_u32(var_0.c.a & var_0.b.a, 31u)])), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~74121u, 31u)])))));
    global0 = array<f32, 31>();
    let var_2 = _wgslsmith_div_u32(_wgslsmith_sub_u32(firstTrailingBit(34909u), ~24638u) ^ 4294967295u, max(~var_0.c.a, 1u) ^ 93804u) >> (~(~_wgslsmith_mod_u32(1u, func_3(global0[_wgslsmith_index_u32(u_input.c, 31u)], var_0.b.b.x))) % 32u);
    var var_3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(-789f, firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.a >> (var_2 % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, var_0.c.a), u_input.e.zx), ~32950u, 6994u), min(max(vec4<u32>(19011u, var_3.a, var_0.e, var_3.a), vec4<u32>(0u, 1u, var_2, var_2)), min(vec4<u32>(0u, u_input.e.x, var_2, var_0.e), vec4<u32>(47259u, 28120u, var_0.e, 1u))))), var_2);
}

