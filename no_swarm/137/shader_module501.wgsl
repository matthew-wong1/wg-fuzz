struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(-864f, -629f));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> f32 {
    let var_0 = -14646i | u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 987f, arg_1) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, arg_1, arg_1, -1000f), vec4<f32>(arg_1, arg_1, 494f, 639f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 817f, 681f, -374f), vec4<f32>(arg_1, -986f, arg_1, -1503f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, arg_1, 199f, -1039f))))));
    global0 = array<vec2<f32>, 1>();
    global0 = array<vec2<f32>, 1>();
    global0 = array<vec2<f32>, 1>();
    return -1305f;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec4<u32> {
    global0 = array<vec2<f32>, 1>();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.c)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(func_2(select(vec3<bool>(false, false, false), vec3<bool>(true, arg_1.a, arg_1.a), arg_1.a), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-483f * 1674f)))))));
    let var_2 = var_0;
    global0 = array<vec2<f32>, 1>();
    return _wgslsmith_div_vec4_u32(countOneBits(~(~_wgslsmith_add_vec4_u32(vec4<u32>(17009u, arg_1.b.x, arg_1.b.x, 62463u), vec4<u32>(1u, 1u, arg_1.b.x, arg_1.b.x)))), vec4<u32>(1u, min(53958u, 49706u), arg_1.b.x, abs(_wgslsmith_mod_u32(arg_1.b.x, 0u)) >> (select(~1u, arg_1.b.x, all(vec2<bool>(false, arg_1.a))) % 32u)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(!(all(vec2<bool>(true, true)) && true), max(arg_1.zx, _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_1.x, 0u), abs(vec2<u32>(arg_1.x, 4294967295u)))), 1501f, _wgslsmith_mult_vec2_i32(~abs(-vec2<i32>(arg_0, arg_0)), vec2<i32>(arg_0, min(u_input.a.x, ~u_input.a.x))), -2171f);
    let var_1 = firstLeadingBit(-(-vec2<i32>(-46828i, var_0.d.x) & _wgslsmith_mod_vec2_i32(max(vec2<i32>(arg_0, var_0.d.x), var_0.d), -vec2<i32>(1i, arg_0))));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(2626u, 1u)]))))));
    var_0 = Struct_1(true, var_0.b, var_2.x, _wgslsmith_clamp_vec2_i32(~u_input.a.yw, -_wgslsmith_sub_vec2_i32(select(var_0.d, vec2<i32>(arg_0, u_input.a.x), true), -u_input.a.xy), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-11220i, u_input.a.x), ~vec2<i32>(2742i, u_input.a.x)), var_1)), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-351f * 1297f)))));
    var var_3 = Struct_1((arg_1.x != 4294967295u) && (true || var_0.a), var_0.b, var_2.x, vec2<i32>(-_wgslsmith_sub_i32(~2147483647i, -10071i), (-53461i | (var_0.d.x & u_input.a.x)) | -1i), var_2.x);
    return Struct_1(all(vec4<bool>(all(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_3.a), vec2<bool>(true, var_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -1059f) <= _wgslsmith_f_op_f32(-var_0.c), var_3.a, ~arg_1.x <= func_1(350f, Struct_1(var_0.a, arg_1.xy, 941f, var_0.d, var_0.e)).x)), var_3.b, var_0.e, vec2<i32>(-u_input.a.x, 2147483647i), var_3.e);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = !vec2<bool>(true, _wgslsmith_add_i32(arg_1.d.x, -arg_1.d.x) < -76387i);
    var var_1 = select(!(all(!vec3<bool>(arg_1.a, true, arg_1.a)) & true), false, !var_0.x | all(vec3<bool>(true, all(vec3<bool>(arg_1.a, arg_1.a, arg_1.a)), true)));
    let var_2 = 0i;
    let var_3 = ~(countOneBits(~vec4<u32>(4294967295u, 21460u, 0u, 18894u)) << (reverseBits(select(vec4<u32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, 0u), vec4<u32>(24227u, arg_1.b.x, 0u, 4294967295u), false)) % vec4<u32>(32u))) & _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(~vec4<u32>(64734u, arg_1.b.x, arg_1.b.x, 41797u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(36075u, arg_1.b.x, arg_1.b.x, 4294967295u), vec4<u32>(arg_1.b.x, 17729u, arg_1.b.x, arg_1.b.x)), vec4<u32>(14204u, abs(1u), _wgslsmith_mod_u32(1u, arg_1.b.x), _wgslsmith_mult_u32(arg_1.b.x, 34372u))), _wgslsmith_clamp_vec4_u32((vec4<u32>(4463u, arg_1.b.x, 12643u, arg_1.b.x) | vec4<u32>(arg_1.b.x, 14574u, 1u, 29231u)) << (vec4<u32>(1u, 10006u, arg_1.b.x, 29504u) % vec4<u32>(32u)), ~vec4<u32>(arg_1.b.x, 0u, arg_1.b.x, arg_1.b.x), _wgslsmith_add_vec4_u32(abs(vec4<u32>(8615u, arg_1.b.x, 4294967295u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b.x, 4294967295u, 57049u, arg_1.b.x), vec4<u32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, 7118u)))));
    var var_4 = abs(abs(select(vec2<u32>(27078u, var_3.x) >> (~vec2<u32>(var_3.x, 0u) % vec2<u32>(32u)), vec2<u32>(97273u | var_3.x, 20997u), true)));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, _wgslsmith_f_op_f32(-1796f * arg_1.c)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0[_wgslsmith_index_u32(54073u, 1u)])) - global0[_wgslsmith_index_u32(~4294967295u, 1u)]), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.e, -894f)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(4294967295u, 1u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(var_4.x, 1u)] * global0[_wgslsmith_index_u32(1u, 1u)])))), !select(all(vec2<bool>(true, true)), select(false, true & var_0.x, false), var_0.x)));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_2.e, -281f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + _wgslsmith_f_op_f32(-arg_1.e))));
    var var_1 = func_3(~(-3362i), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(4389u, abs(arg_1.b.x), func_3(-29280i, vec4<u32>(1u, arg_2.b.x, 69064u, 73985u)).b.x, max(0u, 49776u))), ~vec4<u32>(8126u, 512u, ~4294967295u, arg_1.b.x)));
    let var_2 = arg_2;
    var_1 = arg_1;
    var var_3 = ~u_input.a;
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 1>();
    let var_0 = _wgslsmith_f_op_f32(func_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(-(~u_input.a.wxz), func_3(abs(-44393i), func_1(-328f, Struct_1(false, vec2<u32>(0u, 25599u), 164f, vec2<i32>(1i, -1i), 108f))))), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(1u, 1u)])), func_3(reverseBits(_wgslsmith_mod_i32(reverseBits(-6251i), ~u_input.a.x)), vec4<u32>(~(~1u), 11014u, ~1u, 0u)), Struct_1(true, vec2<u32>(0u, 51500u), 170f, func_3(1i & abs(u_input.a.x), ~vec4<u32>(31288u, 57406u, 0u, 1u)).d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 1840f)) + -860f))));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(var_0 * -1031f)))) + _wgslsmith_f_op_f32(-var_0))));
    global0 = array<vec2<f32>, 1>();
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 + -1446f), _wgslsmith_f_op_f32(f32(-1f) * -718f))), -547f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(947f, var_2, true)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(759f * var_2)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2, 1100f, var_0))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(395f, -245f, 342f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-259f, 779f, var_0))), select(false, false, false))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-705f, var_0, -253f) - vec3<f32>(var_0, -643f, -335f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -816f, var_0))))))));
    let var_4 = Struct_1(!(max(func_1(var_0, Struct_1(true, vec2<u32>(4294967295u, 7778u), -1000f, vec2<i32>(var_1.x, u_input.a.x), -198f)).x, 1u) > func_3(u_input.a.x, vec4<u32>(66366u, 32161u, 4294967295u, 8474u)).b.x), select(_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 0u), reverseBits(~vec2<u32>(909u, 63122u))), ~(~vec2<u32>(12873u, 1u)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(func_3(var_1.x, vec4<u32>(0u, 27510u, 28020u, 0u)).a, false))), var_2, _wgslsmith_div_vec2_i32(vec2<i32>(5945i, _wgslsmith_sub_i32(firstLeadingBit(-6038i), firstTrailingBit(var_1.x))), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(var_1.zx, vec2<i32>(var_1.x, -45756i) ^ u_input.a.xx, _wgslsmith_add_vec2_i32(u_input.a.xx, vec2<i32>(-1i, u_input.a.x))), -u_input.a.wx)), _wgslsmith_div_f32(var_2, 626f));
    global0 = array<vec2<f32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(1599f);
}

