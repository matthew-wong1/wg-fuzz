struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 30>;

var<private> global1: array<f32, 27> = array<f32, 27>(-1513f, 1036f, 633f, 793f, -467f, -224f, 454f, -104f, -112f, 325f, -1134f, -954f, -805f, -1000f, -143f, -233f, -795f, -744f, -148f, 501f, 1298f, 655f, -205f, 2343f, -603f, -668f, 1446f);

var<private> global2: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    let var_0 = -u_input.b.zxz;
    let var_1 = var_0;
    var var_2 = arg_1;
    var var_3 = Struct_1(4294967295u, select(var_1.x, ~2147483647i, false), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~0u, 1u), var_2.a, _wgslsmith_mult_u32(global2.a, ~(~0u))));
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(914f * _wgslsmith_f_op_f32(abs(-336f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(185f, -555f) + _wgslsmith_f_op_f32(-168f + global1[_wgslsmith_index_u32(var_2.a, 27u)]))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.c, _wgslsmith_mod_u32(1u, arg_2)), 27u)])));
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~4294967295u), 15576u), 30u)];
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))) * _wgslsmith_f_op_f32(-arg_0)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(global2.a ^ 20400u), max(1u, ~4294967295u), global2.c) | 1u, 27u)], _wgslsmith_f_op_f32(-549f + global1[_wgslsmith_index_u32(1u, 27u)]));
    let var_1 = vec3<u32>(~(~(~global2.c)), _wgslsmith_dot_vec4_u32(select(firstTrailingBit(vec4<u32>(global2.c, global2.a, 47252u, 4294967295u) >> (vec4<u32>(global2.a, 1u, global2.a, global2.c) % vec4<u32>(32u))), select(~vec4<u32>(global2.a, 1u, global2.a, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.c, 0u, 43652u, 71602u), vec4<u32>(global2.c, 70097u, global2.c, 4294967295u), vec4<u32>(4163u, global2.a, 1u, global2.a)), select(vec4<bool>(false, false, false, true), global0[_wgslsmith_index_u32(0u, 30u)], vec4<bool>(false, false, true, true))), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true)), ~vec4<u32>(61607u, countOneBits(global2.a), ~73631u, firstLeadingBit(global2.a))), ~(_wgslsmith_clamp_u32(0u, ~1u, min(global2.c, global2.a)) | _wgslsmith_div_u32(41972u, firstTrailingBit(global2.a))));
    var var_2 = Struct_1(global2.a & _wgslsmith_add_u32(12622u, var_1.x), _wgslsmith_mod_i32(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b, 0i, -14201i, -17522i), u_input.b)), abs(_wgslsmith_add_i32(-14973i, u_input.c))), global2.a);
    var var_3 = Struct_1(4294967295u, -_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a, firstTrailingBit(u_input.b.x)), 2147483647i), var_1.x);
    global2 = Struct_1(var_3.a, -_wgslsmith_sub_i32(107830i, min(-65001i, -var_2.b)), _wgslsmith_add_u32(~1u, (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.a, var_2.c, 12777u), vec4<u32>(var_1.x, 33616u, var_1.x, var_3.c)) >> (_wgslsmith_mult_u32(global2.a, 11090u) % 32u)) & ~(~var_3.a)));
    return vec4<u32>(var_1.x, max(var_1.x, var_3.a), 47616u, ~var_1.x);
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: vec4<u32>) -> Struct_1 {
    global0 = array<vec4<bool>, 30>();
    global2 = Struct_1(1u, abs(_wgslsmith_dot_vec2_i32(u_input.b.zz, max(vec2<i32>(u_input.a, global2.b), vec2<i32>(global2.b, global2.b)))), _wgslsmith_dot_vec3_u32(select(vec3<u32>(~global2.a, global2.c >> (global2.c % 32u), global2.a), ~vec3<u32>(1u, 1u, 16214u), !(!arg_2.ywx)), vec3<u32>(~1u, arg_3.x ^ 57384u, arg_3.x)));
    let var_0 = !(!(_wgslsmith_mult_i32(675i | u_input.c, _wgslsmith_add_i32(-27949i, arg_0)) >= -10270i));
    global1 = array<f32, 27>();
    global2 = Struct_1(28932u, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.zyx, firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global2.b, 1379i), u_input.b.zzz))), -u_input.b.zyw), reverseBits(1u));
    return Struct_1(~(min(19458u, arg_3.x) ^ _wgslsmith_mult_u32(_wgslsmith_add_u32(arg_3.x, global2.a), 0u)), -2147483647i, min(arg_3.x, ~_wgslsmith_clamp_u32(global2.c, arg_3.x, reverseBits(global2.a))));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = func_4(arg_1.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-139f, arg_0, global1[_wgslsmith_index_u32(arg_2.c, 27u)], arg_0), vec4<f32>(877f, global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], 141f), arg_3))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, -488f, -1256f, 1000f), vec4<f32>(-2080f, arg_0, 1761f, arg_0))))))), !func_2(select(select(vec4<bool>(false, false, true, false), global0[_wgslsmith_index_u32(arg_2.a, 30u)], vec4<bool>(arg_3, true, arg_3, true)), !global0[_wgslsmith_index_u32(1u, 30u)], !arg_3), Struct_1(0u, 0i, arg_2.c), 12279u), ~(countOneBits(firstTrailingBit(vec4<u32>(arg_2.c, 12907u, 13092u, arg_2.a))) & vec4<u32>(~0u, 1u, 39462u ^ global2.a, 97810u)));
    let var_1 = true;
    return arg_2;
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<bool>, 30>();
    var var_0 = func_5(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstTrailingBit(0u), 27u)]), firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), countOneBits(vec2<i32>(u_input.c, global2.b) >> (vec2<u32>(37872u, 1u) % vec2<u32>(32u))), u_input.b.yy)), func_4(-_wgslsmith_div_i32(-2147483647i, global2.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(25853u, 27u)], global1[_wgslsmith_index_u32(global2.a, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], -1304f), vec4<f32>(-1000f, -470f, global1[_wgslsmith_index_u32(1u, 27u)], -270f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -2195f, global1[_wgslsmith_index_u32(24443u, 27u)], global1[_wgslsmith_index_u32(global2.c, 27u)]) + vec4<f32>(-1464f, 1272f, global1[_wgslsmith_index_u32(global2.a, 27u)], -1649f)), true))), !func_2(vec4<bool>(false, false, true, false), Struct_1(14042u, -1i, global2.a), _wgslsmith_sub_u32(1u, global2.a)), func_3(global1[_wgslsmith_index_u32(global2.a, 27u)])), (true | (select(global2.b, global2.b, false) == -global2.b)) | false);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.c, ~(~4294967295u)), 27u)];
    let var_2 = Struct_1(global2.c, 42617i, ~1u);
    var var_3 = 870f;
    return func_5(global1[_wgslsmith_index_u32(37115u, 27u)], abs(-vec2<i32>(~var_0.b, 0i)), Struct_1(39056u, min(9833i, -_wgslsmith_clamp_i32(var_0.b, u_input.a, global2.b)), var_2.c), any(select(!func_2(global0[_wgslsmith_index_u32(var_0.c, 30u)], Struct_1(var_2.c, var_2.b, var_2.a), 1u).zz, vec2<bool>(any(vec4<bool>(false, true, true, false)), true), func_2(func_2(vec4<bool>(true, false, false, true), var_2, 4294967295u), Struct_1(var_2.c, var_0.b, global2.c), var_0.a).xz)));
}

fn func_6(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1092f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.a, 27u)]))), -1490f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-463f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_4(arg_0.b, vec4<f32>(global1[_wgslsmith_index_u32(4713u, 27u)], 2376f, 1830f, global1[_wgslsmith_index_u32(arg_0.c, 27u)]), global0[_wgslsmith_index_u32(22553u, 30u)], vec4<u32>(global2.c, arg_0.a, 3197u, 1u)).c, 27u)])) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-429f, global1[_wgslsmith_index_u32(23227u, 27u)]))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(90513u, 27u)]) - vec2<f32>(global1[_wgslsmith_index_u32(arg_0.a, 27u)], global1[_wgslsmith_index_u32(global2.c, 27u)])) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1376f) - vec2<f32>(global1[_wgslsmith_index_u32(8714u, 27u)], -1482f))))));
    let var_1 = Struct_1(_wgslsmith_mult_u32(10242u, firstTrailingBit(~(~1u))), func_4(firstLeadingBit(u_input.a) << (global2.a % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1739f, 1423f, 1362f, -1000f) - vec4<f32>(2194f, -173f, global1[_wgslsmith_index_u32(1u, 27u)], 1127f))))), !global0[_wgslsmith_index_u32(~(~1u), 30u)], vec4<u32>(global2.c, arg_0.a, ~global2.c, reverseBits(global2.c) >> (min(arg_0.a, 2927u) % 32u))).b, _wgslsmith_div_u32(_wgslsmith_mod_u32(15348u, 9340u), ~_wgslsmith_add_u32(0u, arg_0.c)) >> (4294967295u % 32u));
    var var_2 = ~(_wgslsmith_add_vec2_u32(~firstTrailingBit(vec2<u32>(0u, arg_0.c)), ~vec2<u32>(arg_0.a, 4294967295u) >> ((vec2<u32>(global2.c, 4294967295u) & vec2<u32>(global2.c, var_1.c)) % vec2<u32>(32u))) & vec2<u32>(_wgslsmith_mod_u32(1u, var_1.c), ~firstTrailingBit(93969u)));
    var_2 = firstTrailingBit(max(~(~abs(vec2<u32>(arg_0.c, 4294967295u))), ~(vec2<u32>(var_1.c, 0u) ^ max(vec2<u32>(var_1.c, var_2.x), vec2<u32>(var_2.x, 0u)))));
    let var_3 = abs(vec3<i32>(1i, -95865i, _wgslsmith_mult_i32(0i, _wgslsmith_clamp_i32(-3919i, func_1().b, _wgslsmith_dot_vec4_i32(vec4<i32>(-63714i, -1i, u_input.b.x, 1i), vec4<i32>(u_input.c, 2147483647i, -22278i, 0i))))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(2147483647i, min(u_input.c, func_6(func_1())), global2.b);
    global0 = array<vec4<bool>, 30>();
    let var_1 = firstLeadingBit(~(~vec2<u32>(global2.c, ~global2.a)));
    global1 = array<f32, 27>();
    let var_2 = -1i;
    let var_3 = _wgslsmith_mult_u32(var_1.x, _wgslsmith_dot_vec2_u32(var_1, var_1));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(var_2 ^ _wgslsmith_mod_i32(u_input.c, 5797i))), abs(vec2<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_1.x, var_1.x)), _wgslsmith_add_vec2_u32(vec2<u32>(global2.c, var_3), var_1)), (4294967295u >> (var_1.x % 32u)) << (min(0u, global2.c) % 32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x << (~var_3 % 32u), ~global2.b ^ (u_input.b.x ^ -47844i), -7908i, i32(-1i) * -1i), max(-(u_input.b << (vec4<u32>(var_3, 1u, var_1.x, var_3) % vec4<u32>(32u))), -u_input.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -462f))), 857f) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1014f, -1000f) * vec2<f32>(global1[_wgslsmith_index_u32(1u, 27u)], 157f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(global1[_wgslsmith_index_u32(27026u, 27u)], global1[_wgslsmith_index_u32(17926u, 27u)]), vec2<bool>(false, false)))))));
}

