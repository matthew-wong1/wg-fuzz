struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(0u, 26932u, 1u), vec3<u32>(47385u, 0u, 4294967295u), vec3<u32>(2086u, 132395u, 122443u), vec3<u32>(68708u, 4294967295u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(7128u, 25785u, 15423u), vec3<u32>(74151u, 3271u, 4294967295u), vec3<u32>(17546u, 4294967295u, 0u), vec3<u32>(1u, 43847u, 31765u), vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 59751u, 74638u), vec3<u32>(13641u, 1u, 1u), vec3<u32>(4294967295u, 37696u, 37768u), vec3<u32>(0u, 39503u, 24589u), vec3<u32>(42650u, 0u, 1u), vec3<u32>(69439u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(20437u, 5292u, 45589u), vec3<u32>(51008u, 4294967295u, 0u), vec3<u32>(9155u, 1u, 1724u), vec3<u32>(4294967295u, 3851u, 81806u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(57414u, 1u, 71429u), vec3<u32>(10680u, 32607u, 48105u), vec3<u32>(8421u, 1u, 0u), vec3<u32>(7353u, 1u, 21928u), vec3<u32>(52240u, 22669u, 4294967295u), vec3<u32>(4294967295u, 41212u, 0u));

var<private> global1: vec3<f32>;

var<private> global2: array<u32, 23>;

var<private> global3: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(round(1f))) + arg_1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-2095f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + arg_1.x) - _wgslsmith_div_f32(arg_1.x, -469f))))), arg_1.x);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -963f, global1.x)))) + vec3<f32>(_wgslsmith_div_f32(-379f, global1.x), 974f, arg_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_div_f32(-1587f, arg_1.x), _wgslsmith_f_op_f32(max(474f, 744f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(575f, 510f, 571f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1059f, 755f, global1.x) - vec3<f32>(arg_1.x, global1.x, arg_1.x))))));
    let var_0 = ~_wgslsmith_mult_vec3_i32(-reverseBits(u_input.a.ywz), vec3<i32>(reverseBits(arg_0.c.x), u_input.d << (countOneBits(4294967295u) % 32u), ~u_input.a.x));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1000f, -1983f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-366f, 848f, arg_1.x) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global1.x, global1.x), vec3<f32>(-184f, 1623f, -897f), true))))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_1.x))))))), -470f, _wgslsmith_f_op_f32(ceil(-1196f)));
    return _wgslsmith_mult_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(36133u, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(145568u, 23u)], 132546u), 23u)]), abs(reverseBits(global2[_wgslsmith_index_u32(arg_0.e, 23u)])), true), 23u)], 23u)], max(arg_0.e, ~1u)), _wgslsmith_mult_u32(arg_0.e, ~39328u));
}

fn func_2(arg_0: vec4<i32>) -> vec2<u32> {
    let var_0 = firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.c.wx, vec2<i32>(u_input.b.x, arg_0.x)), ~(-25721i)));
    var var_1 = -arg_0.x;
    var var_2 = Struct_2(Struct_1(max(global2[_wgslsmith_index_u32(func_3(Struct_1(4294967295u, u_input.b, u_input.b.yz, global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49105u, 23u)], 23u)]), global1.xx), 23u)] >> (73794u % 32u), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(1u, 23u)], 51468u)), _wgslsmith_mult_vec3_i32(arg_0.xwy, abs(u_input.c.xzy)), reverseBits(vec2<i32>(var_0, u_input.a.x) ^ _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.x, u_input.c.x), vec2<i32>(arg_0.x, arg_0.x))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(7988u, 23u)], 60689u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22338u, 23u)], 23u)], 23u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33715u, 23u)], 23u)], 23u)]), ~vec4<u32>(global2[_wgslsmith_index_u32(44077u, 23u)], 39737u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 23u)], 23u)], 59588u)), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(56082u, 23u)], 23u)]), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true)), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), true)), vec2<bool>(true, true), select(vec2<bool>(all(vec4<bool>(false, false, false, false)), all(vec3<bool>(true, true, false))), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var var_3 = Struct_3(Struct_1(~8959u, ~firstLeadingBit(arg_0.yww), vec2<i32>(0i, firstTrailingBit(countOneBits(-1i))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.d, 63622u, var_2.a.a, 102192u), vec4<u32>(var_2.a.e, var_2.a.a, 30591u, 4294967295u) | vec4<u32>(var_2.a.e, 58461u, 49742u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(65372u, 23u)], 23u)])), 0u), select(func_3(var_2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -185f))), _wgslsmith_dot_vec3_u32(~vec3<u32>(22298u, 4294967295u, 1u), ~global0[_wgslsmith_index_u32(var_2.a.e, 28u)]), !any(vec4<bool>(false, false, var_2.b.x, var_2.b.x)))), _wgslsmith_div_vec2_u32(~(~vec2<u32>(var_2.a.e, global2[_wgslsmith_index_u32(var_2.a.d, 23u)])) & vec2<u32>(var_2.a.a, 552u), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(global2[_wgslsmith_index_u32(51926u, 23u)], var_2.a.d)), vec2<u32>(~0u, var_2.a.a), ~(vec2<u32>(1u, 57608u) | vec2<u32>(global2[_wgslsmith_index_u32(var_2.a.a, 23u)], 1u)))), var_2.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.x, global1.x, global1.x)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-580f, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 1052f) * vec3<f32>(-298f, 1652f, global1.x)))))), ~(~23846u) >= _wgslsmith_dot_vec4_u32(vec4<u32>(58685u, 4294967295u, var_2.a.a, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(1160u, 23u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)])), max(_wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 23u)], 8931u, global2[_wgslsmith_index_u32(21670u, 23u)], 54427u), vec4<u32>(14386u, var_2.a.a, 12916u, var_2.a.a)), vec4<u32>(1u, var_2.a.e, 1u, var_2.a.d))));
    return var_3.b;
}

fn func_1() -> Struct_3 {
    global3 = _wgslsmith_dot_vec2_u32(select(_wgslsmith_sub_vec2_u32(firstTrailingBit(~vec2<u32>(4294967295u, 4294967295u)), reverseBits(vec2<u32>(38089u, 34954u) & vec2<u32>(9216u, global2[_wgslsmith_index_u32(12782u, 23u)]))), abs(func_2(~vec4<i32>(u_input.c.x, -1i, u_input.a.x, u_input.a.x))), vec2<bool>(true, true)), vec2<u32>(~1u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, global2[_wgslsmith_index_u32(~35563u, 23u)], ~global2[_wgslsmith_index_u32(59114u, 23u)]), 14579u)));
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, 1470f, global1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 2510f) * vec3<f32>(global1.x, global1.x, global1.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))))))));
    global2 = array<u32, 23>();
    var var_1 = all(select(vec3<bool>(true, !any(vec4<bool>(false, true, false, true)), true), !vec3<bool>(u_input.b.x != u_input.c.x, var_0.x == -245f, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !any(vec2<bool>(true, true)))));
    var var_2 = Struct_2(Struct_1(0u, vec3<i32>(select(-61001i | u_input.b.x, -2147483647i, false), i32(-1i) * -18774i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, ~1i), ~vec2<i32>(u_input.b.x, -38311i)), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21362u, 23u)], 23u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(82971u, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(86338u, 23u)] >> (global2[_wgslsmith_index_u32(4294967295u, 23u)] % 32u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)] | 26118u, 23u)])), 23u)]), vec2<bool>(false, select(true, true, false)));
    return Struct_3(var_2.a, ~_wgslsmith_mult_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], global2[_wgslsmith_index_u32(29121u, 23u)]), ~(~vec2<u32>(32633u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)]))), var_2.a, _wgslsmith_f_op_vec3_f32(max(var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1522f, -1364f, global1.x)))), true);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_3 {
    global3 = arg_0.b.x;
    global2 = array<u32, 23>();
    let var_0 = arg_2.b;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), u_input.a, Struct_2(func_1().a, vec2<bool>(all(vec4<bool>(true, true, true, true)), true)), func_1());
    var var_1 = func_1();
    global0 = array<vec3<u32>, 28>();
    global3 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.a, 0u, var_0.b.x, var_0.b.x), vec4<u32>(var_0.b.x, 19132u, global2[_wgslsmith_index_u32(4294967295u, 23u)], 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_1.b.x, var_0.a.d, global2[_wgslsmith_index_u32(0u, 23u)]), vec4<u32>(17390u, var_1.b.x, global2[_wgslsmith_index_u32(var_0.a.e, 23u)], global2[_wgslsmith_index_u32(var_1.b.x, 23u)]), vec4<u32>(26713u, 9865u, 0u, var_0.b.x))), select(countOneBits(vec4<u32>(56779u, var_0.a.e, 4294967295u, var_1.a.d)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 0u, var_1.c.a), vec4<u32>(4294967295u, 1u, 9165u, global2[_wgslsmith_index_u32(95422u, 23u)])), var_1.e | true)) | 4294967295u;
    var var_2 = select(select(vec3<bool>(true, true, true), vec3<bool>(any(select(vec3<bool>(var_0.e, true, true), vec3<bool>(false, var_0.e, false), false)), var_0.e | true, (3955u & var_0.c.a) < func_3(var_0.a, vec2<f32>(-433f, var_1.d.x))), !(!select(vec3<bool>(var_0.e, false, var_1.e), vec3<bool>(var_0.e, false, false), var_0.e))), vec3<bool>(true, var_0.e, any(vec3<bool>(true, true, false))), true);
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_3.b.x, ~_wgslsmith_dot_vec2_u32(~var_1.b, var_0.b)), select(vec4<i32>(0i, var_3.a.b.x, var_3.c.c.x, var_3.a.b.x) | vec4<i32>(var_1.c.c.x, 6154i, var_3.a.c.x, 0i), u_input.a, any(select(vec3<bool>(var_3.e, true, var_2.x), vec3<bool>(false, false, var_0.e), true))) & vec4<i32>(17261i, 51650i, ~(-54749i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_0.a.c.x), ~u_input.b.xz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1006f - _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(851f * 398f)))));
}

