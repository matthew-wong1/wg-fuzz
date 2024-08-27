struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<u32, 7> = array<u32, 7>(16705u, 28510u, 39176u, 0u, 4294967295u, 4294967295u, 51634u);

var<private> global2: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(2147483647i, 14702i), vec2<i32>(0i, 2036i), vec2<i32>(-29172i, -1i), vec2<i32>(-1i, 2147483647i), vec2<i32>(59343i, -34335i), vec2<i32>(-21927i, -1i), vec2<i32>(-1i, 21967i), vec2<i32>(1i, 0i), vec2<i32>(-1i, 2147483647i), vec2<i32>(19221i, 2147483647i), vec2<i32>(i32(-2147483648), -64520i), vec2<i32>(-12815i, 0i), vec2<i32>(-1035i, 0i), vec2<i32>(51923i, 7221i), vec2<i32>(-1i, -1i), vec2<i32>(-713i, i32(-2147483648)), vec2<i32>(2147483647i, -1i), vec2<i32>(37588i, -18881i), vec2<i32>(-2815i, -1408i), vec2<i32>(-80428i, -12743i), vec2<i32>(0i, -1i), vec2<i32>(-1i, -30683i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), -22015i), vec2<i32>(-28994i, 35089i), vec2<i32>(-48209i, 0i));

var<private> global3: array<u32, 3> = array<u32, 3>(1u, 0u, 61418u);

var<private> global4: vec3<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec2<u32> {
    let var_0 = 30763u;
    let var_1 = _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(f32(-1f) * -1477f));
    let var_2 = Struct_3(!(!vec3<bool>(true, global0.x <= global0.x, all(vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-2624f, global4.x)), _wgslsmith_f_op_f32(abs(var_1)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1)))), -1015f, var_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(global4.x)), _wgslsmith_f_op_f32(785f * global4.x)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1325f, global4.x), global4.xy, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1246f, global4.x) * global4.xz))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1), var_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -744f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(sign(1276f)), -535f, global4.x), vec4<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_div_f32(var_1, global4.x), -1049f, -827f)))));
    let var_3 = var_1 > _wgslsmith_f_op_f32(-var_2.b.x);
    var var_4 = Struct_2(!(!(!select(vec4<bool>(false, false, true, var_2.a.x), vec4<bool>(true, var_3, var_2.a.x, false), vec4<bool>(true, true, var_3, var_2.a.x)))));
    return (~_wgslsmith_mult_vec2_u32(~vec2<u32>(40973u, var_0), ~vec2<u32>(59523u, var_0)) >> (firstTrailingBit(vec2<u32>(reverseBits(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25016u, 3u)], 3u)], 7u)]), global3[_wgslsmith_index_u32(var_0, 3u)])) % vec2<u32>(32u))) >> (vec2<u32>(23776u, 24852u) % vec2<u32>(32u));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>) -> i32 {
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(175f, _wgslsmith_f_op_f32(global4.x - global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), -1274f), vec3<f32>(global4.x, global4.x, _wgslsmith_f_op_f32(1f - -558f)))));
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(~(-global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 3u)], 26u)]), global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)] | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 26u)]) & 44812i, -u_input.a, ~arg_0.x, _wgslsmith_clamp_i32(arg_1.x, 2147483647i, -39653i));
    global0 = ~(~_wgslsmith_mult_vec2_i32(global2[_wgslsmith_index_u32(1u, 26u)], -var_0.xy) << (vec2<u32>(~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34541u, 7u)], 3u)], 3u)], global1[_wgslsmith_index_u32(64451u, 7u)]), (global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(22981u, 3u)], 3u)], 7u)], 7u)], 3u)] << (global3[_wgslsmith_index_u32(23169u, 3u)] % 32u)) << ((global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 3u)] | global1[_wgslsmith_index_u32(4294967295u, 7u)]) % 32u)) % vec2<u32>(32u)));
    global3 = array<u32, 3>();
    let var_1 = Struct_5(Struct_4(~func_3() >> ((_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 3u)], 7u)], 7u)], global3[_wgslsmith_index_u32(55015u, 3u)]), vec2<u32>(43093u, 90563u)) ^ reverseBits(vec2<u32>(37887u, global3[_wgslsmith_index_u32(1u, 3u)]))) % vec2<u32>(32u)), vec3<bool>(_wgslsmith_div_u32(17956u, global1[_wgslsmith_index_u32(4294967295u, 7u)]) >= ~0u, true, !(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(38568u, 3u)], 3u)] != 7702u)), _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(-1168f - _wgslsmith_f_op_f32(max(604f, -954f)))), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.x))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.x))) * _wgslsmith_f_op_f32(select(global4.x, _wgslsmith_f_op_f32(-821f - 805f), select(false, true, false))))), Struct_4(~(~(~vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 3u)], 1u))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), any(vec4<bool>(false, false, true, true))), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-298f))), Struct_1(_wgslsmith_div_f32(global4.x, -545f))), Struct_4(vec2<u32>(1u, ~func_3().x), vec3<bool>(all(vec3<bool>(false, false, false)), true, all(vec2<bool>(false, false))), -3154f, Struct_1(global4.x)));
    return arg_1.x;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = select(vec3<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), true, _wgslsmith_f_op_f32(881f * 730f) >= _wgslsmith_f_op_f32(arg_1.a - -770f)), !vec3<bool>(min(global3[_wgslsmith_index_u32(32023u, 3u)], 0u) == global1[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(20352u, 7u)]), 7u)], true, true), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec4<bool>(false, false, true, true)), true), vec3<bool>(true, true, true)), vec3<bool>(false, any(vec3<bool>(true, false, false)), true), vec3<bool>(_wgslsmith_div_i32(-32327i, -2147483647i) <= u_input.a, all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(round(-856f)) < _wgslsmith_div_f32(global4.x, global4.x))));
    global4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, global4.x) + vec3<f32>(-2182f, -969f, 837f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-559f, 163f, arg_1.a) + vec3<f32>(arg_1.a, 458f, global4.x))) * vec3<f32>(1330f, _wgslsmith_div_f32(global4.x, -459f), _wgslsmith_f_op_f32(select(1864f, global4.x, true)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global4.x), global4.x, -1013f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.a, -635f, global4.x)))), select(var_0, select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, false, var_0.x), false), true)))), vec3<f32>(-124f, _wgslsmith_f_op_f32(-762f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + arg_1.a) - _wgslsmith_f_op_f32(-983f - global4.x))), -209f)));
    var var_1 = Struct_2(select(vec4<bool>(false, var_0.x && all(vec4<bool>(var_0.x, true, false, var_0.x)), all(!vec4<bool>(var_0.x, var_0.x, false, true)), var_0.x), select(vec4<bool>(global1[_wgslsmith_index_u32(17823u, 7u)] < 1u, var_0.x && var_0.x, global3[_wgslsmith_index_u32(1u, 3u)] >= 4294967295u, all(vec4<bool>(true, var_0.x, true, var_0.x))), !select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), _wgslsmith_sub_i32(-1i, u_input.a) > ~(-2147483647i)), var_0.x));
    var_1 = Struct_2(select(select(!(!vec4<bool>(var_1.a.x, var_0.x, true, true)), vec4<bool>(true, false, all(vec2<bool>(var_0.x, var_1.a.x)), true), vec4<bool>(select(true, var_0.x, true), !var_0.x, global0.x >= 0i, var_0.x)), var_1.a, select(var_1.a, !vec4<bool>(var_1.a.x, true, var_0.x, true), true)));
    let var_2 = 35234u;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -356f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(502f * -1041f) * _wgslsmith_f_op_f32(exp2(global4.x))), _wgslsmith_f_op_f32(-246f + global4.x))));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> vec2<i32> {
    var var_0 = 1i;
    var_0 = -select(2147483647i, global0.x, true);
    global4 = _wgslsmith_f_op_vec3_f32(func_4(firstLeadingBit(func_2(vec4<i32>(59689i, -5865i, global0.x, -20778i), min(arg_0, vec2<i32>(u_input.a, global0.x))) | ~2747i), Struct_1(416f)));
    var var_1 = _wgslsmith_f_op_f32(global4.x + global4.x);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(277f, global4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))));
    return vec2<i32>(57055i, func_2(-reverseBits(vec4<i32>(global0.x, -1i, arg_0.x, 54367i)) ^ ~abs(vec4<i32>(-55923i, u_input.a, -156i, global0.x)), vec2<i32>(-11542i, 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    let var_1 = true;
    global0 = func_1(_wgslsmith_sub_vec2_i32(max(~vec2<i32>(23296i, global0.x), ~global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15177u, 7u)], 3u)], 26u)]), vec2<i32>(20474i, _wgslsmith_clamp_i32(34853i, u_input.a, u_input.a))), ~global1[_wgslsmith_index_u32(~1u, 7u)] >> (~global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5796u, 7u)], 3u)], 3u)] % 32u)) & _wgslsmith_div_vec2_i32(global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5751u, 3u)], 7u)], 7u)], 36577u) | 56266u, 7u)], 7u)], 26u)], select(-vec2<i32>(u_input.a, 38047i), ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 3u)], 3u)], 7u)], 3u)], 3u)], 7u)], 7u)], 4241u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 3u)], 7u)], 7u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)]), vec4<u32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 3u)], 48188u, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17483u, 3u)], 3u)], 7u)], global1[_wgslsmith_index_u32(729u, 7u)])), 26u)], true));
    let var_2 = -global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 17806u), abs(vec2<u32>(12431u, global3[_wgslsmith_index_u32(1u, 3u)]))), 7u)]), 7u)], 26u)];
    global0 = _wgslsmith_sub_vec2_i32(-max(vec2<i32>(~u_input.a, var_2.x | 19966i), ~reverseBits(vec2<i32>(74335i, -16759i))), vec2<i32>(1i, _wgslsmith_mod_i32(global0.x, 2147483647i) & -16065i) ^ (countOneBits(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5468u, 7u)], 3u)], 3u)], 3u)] & 25719u, 26u)]) >> (firstTrailingBit(vec2<u32>(global3[_wgslsmith_index_u32(25640u, 3u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10343u, 3u)], 3u)])) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(sign(global4.x)))));
}

