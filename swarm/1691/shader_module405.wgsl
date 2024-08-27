struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: f32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec4<i32>(-12819i, 2147483647i, i32(-2147483648), 9111i)), Struct_3(vec4<i32>(-19324i, 2147483647i, 1i, 2147483647i)), Struct_3(vec4<i32>(0i, -1i, 0i, 27620i)), Struct_3(vec4<i32>(-43363i, i32(-2147483648), 0i, 12194i)), Struct_3(vec4<i32>(1i, 1i, 9409i, 36718i)), Struct_3(vec4<i32>(0i, i32(-2147483648), 8608i, -2015i)), Struct_3(vec4<i32>(-45002i, -1i, -12179i, 1709i)), Struct_3(vec4<i32>(43500i, -47590i, -1i, 2147483647i)), Struct_3(vec4<i32>(-29668i, 49927i, 0i, 24603i)), Struct_3(vec4<i32>(1i, -1i, 1i, 3747i)), Struct_3(vec4<i32>(42724i, 23661i, 1i, 0i)), Struct_3(vec4<i32>(i32(-2147483648), 0i, 1i, 0i)), Struct_3(vec4<i32>(0i, 0i, 9961i, 0i)), Struct_3(vec4<i32>(-46914i, 58737i, 3135i, -63228i)), Struct_3(vec4<i32>(-5042i, 12703i, -60495i, -23100i)), Struct_3(vec4<i32>(i32(-2147483648), -10652i, 42384i, 2147483647i)), Struct_3(vec4<i32>(-42884i, -30458i, 2147483647i, -19882i)), Struct_3(vec4<i32>(10172i, 3734i, 1i, -30194i)), Struct_3(vec4<i32>(-24526i, 1i, -17422i, 12895i)), Struct_3(vec4<i32>(60566i, 26822i, -1i, 2147483647i)), Struct_3(vec4<i32>(2147483647i, 43530i, -45195i, 33536i)), Struct_3(vec4<i32>(9875i, 34856i, -1i, i32(-2147483648))), Struct_3(vec4<i32>(-18606i, 0i, 0i, -35143i)), Struct_3(vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 1i)), Struct_3(vec4<i32>(2147483647i, 42751i, 0i, -20141i)), Struct_3(vec4<i32>(28869i, 2147483647i, 1i, i32(-2147483648))), Struct_3(vec4<i32>(i32(-2147483648), 9383i, -10640i, -32575i)));

var<private> global2: array<u32, 26> = array<u32, 26>(4294967295u, 4294967295u, 1u, 4294967295u, 71085u, 24852u, 1u, 4550u, 7006u, 0u, 4294967295u, 1u, 7372u, 4294967295u, 31556u, 1u, 0u, 0u, 17069u, 4294967295u, 1u, 42256u, 1u, 89367u, 1u, 71296u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = Struct_1(firstLeadingBit(1838u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1143f, _wgslsmith_f_op_f32(max(249f, 554f)), _wgslsmith_f_op_f32(max(-848f, 1065f)), -2484f)))), 762f, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(720f)))), -581f, -1908f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(312f))))))), u_input.a.yzx);
    let var_1 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.d.x, 937f, var_0.d.x) * var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-798f, var_0.c)) - var_0.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -899f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1231f), _wgslsmith_f_op_f32(round(1218f)))))), vec3<u32>(global2[_wgslsmith_index_u32(~4294967295u, 26u)], 27724u, 69136u) << (u_input.a.zxx % vec3<u32>(32u)));
    var var_2 = u_input.a;
    var var_3 = Struct_4(select(~vec4<i32>(arg_0, 33639i, arg_0, ~arg_0), min((vec4<i32>(-37665i, arg_0, arg_0, -5730i) ^ vec4<i32>(arg_0, 2147483647i, arg_0, -63170i)) | select(vec4<i32>(arg_0, arg_0, -1i, -2147483647i), vec4<i32>(20040i, arg_0, 0i, arg_0), vec4<bool>(false, false, true, true)), vec4<i32>(103849i, 24i, arg_0, 1463i) | abs(vec4<i32>(-5596i, arg_0, 2147483647i, arg_0))), all(vec4<bool>(true, true, true, true)) & (all(vec2<bool>(true, true)) && true)), global1[_wgslsmith_index_u32(select(~4294967295u, _wgslsmith_sub_u32(select(var_1.a, 25839u, false) ^ 65004u, ~max(49919u, 1u)), true), 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-147f - _wgslsmith_f_op_f32(max(var_1.c, _wgslsmith_f_op_f32(-var_0.d.x))))), all(vec2<bool>(true, true)), var_0.b.x);
    let var_4 = var_0;
    return abs(~0u);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<i32>, arg_3: vec2<i32>) -> vec4<u32> {
    global0 = true;
    global0 = any(vec2<bool>(select(true, all(vec4<bool>(true, true, true, true)), true), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(47899i, -1i, 0i)), firstLeadingBit(vec3<i32>(-11304i, arg_2.x, arg_3.x))) != (_wgslsmith_mult_i32(arg_2.x, 0i) >> (6886u % 32u))));
    let var_0 = firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(0i, arg_3.x) ^ firstLeadingBit(arg_2.x), reverseBits(1i), _wgslsmith_sub_i32(abs(-2147483647i), 35011i), -40072i)) << (~(~u_input.a) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) * vec3<f32>(arg_0.x, 1109f, -1084f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_0 * arg_0), vec3<f32>(arg_1, arg_0.x, arg_0.x)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1795f, 1289f, 1195f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0, vec3<f32>(487f, 173f, -405f))))));
    var var_2 = -_wgslsmith_div_vec4_i32(-select(var_0, -vec4<i32>(8062i, -52405i, arg_2.x, var_0.x), vec4<bool>(true, false, true, true)), ~var_0);
    return vec4<u32>(_wgslsmith_add_u32(29834u, u_input.b), reverseBits(firstTrailingBit(func_3(~var_2.x))), u_input.a.x, ~1u);
}

fn func_1() -> bool {
    var var_0 = ~func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))))), -811f, vec2<i32>(~max(-2147483647i, 1i), ~(i32(-1i) * -1i)), ~select(vec2<i32>(1i, 1i), abs(vec2<i32>(-1i, -90500i)), vec2<bool>(true, false)));
    let var_1 = Struct_4(~abs(vec4<i32>(1i, max(-16670i, -20184i), countOneBits(2147483647i), _wgslsmith_clamp_i32(-52877i, -2147483647i, 13146i))), global1[_wgslsmith_index_u32(select(var_0.x, 1u, false), 27u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1540f * -1685f)))) - 982f), select(true, !(u_input.a.x != u_input.b), any(vec3<bool>(false, true, false))) && all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1309f));
    global2 = array<u32, 26>();
    var var_2 = true;
    return !(!(!var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~reverseBits(vec4<i32>(~2147483647i, -115349i >> (global2[_wgslsmith_index_u32(0u, 26u)] % 32u), -2948i, firstLeadingBit(-23044i))));
    global0 = ((all(vec4<bool>(true, true, false, true)) && false) & true) != !any(vec2<bool>(any(vec3<bool>(false, false, true)), func_1()));
    var var_1 = Struct_4(var_0.a, var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(168f - -176f))), 1f)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-678f, -461f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-243f))))));
    var var_2 = var_1.c;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, var_1.c) + -2404f)))) + var_1.c);
    var var_4 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a), vec4<u32>(0u, 0u, ~22472u, firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], 26u)], 26u)], 26u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-209f, 487f, 620f, 483f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_3, -146f, 1803f)), var_1.d)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, var_3, -1201f, 1032f) * vec4<f32>(-227f, 917f, var_1.e, -453f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1200f, var_3, -496f, var_3))), var_1.d)))), -237f, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_3, _wgslsmith_f_op_f32(trunc(1000f)), 216f <= var_1.c)), _wgslsmith_f_op_f32(-441f - var_3))), var_3, _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-313f + _wgslsmith_f_op_f32(1607f + -229f)))), _wgslsmith_clamp_vec3_u32(~(~(~u_input.a.xyy)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(79964u, global2[_wgslsmith_index_u32(11862u, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)]) | u_input.a.yww, ~u_input.a.yxw), _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 26u)], 4294967295u, global2[_wgslsmith_index_u32(0u, 26u)])), vec3<u32>(1u, 38795u, 0u) << (vec3<u32>(u_input.b, 4294967295u, 1u) % vec3<u32>(32u)))), vec3<u32>(_wgslsmith_div_u32(min(global2[_wgslsmith_index_u32(31702u, 26u)], global2[_wgslsmith_index_u32(55848u, 26u)]), ~33392u), _wgslsmith_mod_u32(~19930u, global2[_wgslsmith_index_u32(54582u, 26u)]), u_input.a.x)));
    var var_5 = Struct_1(~global2[_wgslsmith_index_u32(var_4.e.x, 26u)], vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(f32(-1f) * -846f)) + -390f), -570f, var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -1661f)), _wgslsmith_f_op_f32(min(var_4.d.x, -287f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(var_4.d)))) * var_4.d) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_1.c, 1000f)), _wgslsmith_f_op_f32(var_4.c - var_1.e), _wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(-var_3)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1184f, var_3, var_4.d.x, var_1.c)))), ~u_input.a.xzy);
    var var_6 = ~_wgslsmith_add_u32(abs(4294967295u) >> (1u % 32u), func_2(vec3<f32>(-742f, _wgslsmith_f_op_f32(trunc(var_3)), _wgslsmith_f_op_f32(var_4.c - var_4.b.x)), -804f, var_0.a.xw ^ vec2<i32>(1i, var_1.b.a.x), var_0.a.xz).x);
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.a, ~u_input.a.zxy, -1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-701f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.b.x) * _wgslsmith_f_op_f32(-var_5.b.x))) * _wgslsmith_f_op_vec2_f32(-var_4.d.yw)));
}

