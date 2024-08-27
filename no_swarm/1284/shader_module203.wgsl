struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 13>;

var<private> global1: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false));

var<private> global2: array<Struct_4, 25>;

var<private> global3: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(873f, 1404f), vec2<f32>(254f, -1060f), vec2<f32>(1483f, 220f), vec2<f32>(-752f, -487f), vec2<f32>(-622f, 1016f), vec2<f32>(1549f, -1000f), vec2<f32>(212f, 235f), vec2<f32>(570f, 905f), vec2<f32>(1248f, -890f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_1.a.x, i32(-1i) * -11581i) | 9446i, u_input.a), arg_1.d, select(global1[_wgslsmith_index_u32(arg_0, 4u)], !vec4<bool>(true, true, arg_1.d <= 785f, true), !((false == arg_1.b.x) | !arg_1.b.x)), Struct_2(!vec4<bool>(arg_1.c.x, arg_1.a.x > 8015i, all(arg_1.b.xx), arg_1.d > arg_1.d)));
    global2 = array<Struct_4, 25>();
    global1 = array<vec4<bool>, 4>();
    let var_1 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(min(vec2<u32>(arg_0, arg_0) | vec2<u32>(arg_0, arg_0), firstTrailingBit(vec2<u32>(4294967295u, arg_0))), vec2<u32>(~arg_0, 15527u)), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0, arg_0), ~vec2<u32>(0u, arg_0)));
    var var_2 = -754f;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2024f), _wgslsmith_f_op_f32(-var_0.b)) - _wgslsmith_f_op_f32(-arg_1.d)) + _wgslsmith_f_op_f32(352f + 1f))));
}

fn func_2(arg_0: Struct_4) -> Struct_2 {
    global1 = array<vec4<bool>, 4>();
    var var_0 = select(select(arg_0.a.a.xww, arg_0.a.a.wwy, !vec3<bool>(arg_0.a.a.x, arg_0.a.a.x | true, true)), select(arg_0.a.a.zwz, !arg_0.a.a.xzw, vec3<bool>(all(!vec4<bool>(true, true, arg_0.a.a.x, arg_0.a.a.x)), true, true)), vec3<bool>(false, !arg_0.a.a.x, false));
    var var_1 = _wgslsmith_div_f32(-492f, _wgslsmith_f_op_f32(func_3(countOneBits(min(51161u, 77964u)), Struct_1(arg_0.d.zw, vec3<bool>(var_0.x, arg_0.a.a.x, var_0.x), !vec2<bool>(false, var_0.x), 344f))));
    var var_2 = arg_0.a;
    global0 = array<vec4<bool>, 13>();
    return Struct_2(!(!var_2.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = arg_0.b < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1446f - arg_0.b) + arg_0.b);
    var var_1 = arg_1;
    global0 = array<vec4<bool>, 13>();
    var_1 = Struct_4(func_2(Struct_4(func_2(arg_1), arg_1.b, _wgslsmith_clamp_i32(-32422i, min(0i, -59486i), _wgslsmith_clamp_i32(arg_0.a, var_1.d.x, 57282i)), -(~arg_1.d))), 47388u, _wgslsmith_mult_i32(-19435i & arg_1.d.x, -2147483647i), vec4<i32>(_wgslsmith_dot_vec2_i32(arg_1.d.xz, var_1.d.yw), -_wgslsmith_mod_i32(1i, u_input.b.x), 2147483647i, reverseBits(~2147483647i)));
    let var_2 = _wgslsmith_div_i32(-8940i, arg_0.a);
    return var_1.a;
}

fn func_1(arg_0: vec3<u32>) -> bool {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2067f, 406f))), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-846f * 136f))))));
    let var_2 = func_4(Struct_3(~(-u_input.b.x), _wgslsmith_div_f32(425f, var_1.x), !(!global1[_wgslsmith_index_u32(~arg_0.x, 4u)]), func_2(global2[_wgslsmith_index_u32(~(arg_0.x << (10345u % 32u)), 25u)])), global2[_wgslsmith_index_u32(85201u, 25u)], select(select(vec4<bool>(var_1.x < var_1.x, true, all(global1[_wgslsmith_index_u32(arg_0.x, 4u)]), true), select(vec4<bool>(true, true, true, true), func_2(Struct_4(Struct_2(global0[_wgslsmith_index_u32(arg_0.x, 13u)]), arg_0.x, var_0, vec4<i32>(u_input.b.x, u_input.b.x, 1i, var_0))).a, true), all(vec2<bool>(false, false))), !global0[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(4294967295u, arg_0.x)), 13u)], max(1i, i32(-1i) * -1i) < -var_0), select(vec3<bool>(true, true, true == all(vec2<bool>(false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), func_2(Struct_4(Struct_2(vec4<bool>(false, true, true, false)), ~68155u, var_0 | 2147483647i, select(vec4<i32>(30783i, -390i, 4777i, -2147483647i), vec4<i32>(u_input.b.x, var_0, -1i, u_input.a), false))).a.x));
    var var_3 = Struct_3(-1i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(step(373f, var_1.x)))), vec4<bool>(all(!(!var_2.a.ywx)), all(vec3<bool>(true, var_2.a.x, !var_2.a.x)), true, var_2.a.x), Struct_2(var_2.a));
    let var_4 = Struct_1(-(~_wgslsmith_add_vec2_i32(select(vec2<i32>(0i, var_3.a), vec2<i32>(15104i, u_input.b.x), false), reverseBits(u_input.b.yz))), var_3.d.a.www, var_2.a.yx, _wgslsmith_f_op_f32(-var_1.x));
    return func_4(Struct_3(-firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_4.a.x, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.b, var_1.x)))), !select(!global1[_wgslsmith_index_u32(arg_0.x, 4u)], vec4<bool>(var_3.d.a.x, true, false, true), vec4<bool>(false, true, var_3.c.x, true)), func_2(Struct_4(func_2(Struct_4(var_2, arg_0.x, var_3.a, vec4<i32>(var_0, -2147483647i, var_4.a.x, 1i))), ~4294967295u, u_input.b.x, vec4<i32>(0i, -61310i, -2147483647i, var_3.a)))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(arg_0.x, max(37290u, 86891u)), ~abs(_wgslsmith_div_u32(133310u, 4294967295u))), 25u)], vec4<bool>(-1507f > _wgslsmith_f_op_f32(-var_4.d), var_3.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1408f * var_3.b) * _wgslsmith_f_op_f32(-2055f + 635f)) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(arg_0.x, var_4)), _wgslsmith_f_op_f32(-308f + 556f), var_3.c.x)), !any(var_2.a.zx)), select(var_3.d.a.wzw, func_4(Struct_3(reverseBits(-38601i), _wgslsmith_f_op_f32(max(var_3.b, var_1.x)), !global0[_wgslsmith_index_u32(3829u, 13u)], Struct_2(var_3.c)), global2[_wgslsmith_index_u32(arg_0.x, 25u)], vec4<bool>(all(vec2<bool>(var_3.c.x, false)), arg_0.x > 81615u, var_3.a >= var_3.a, true), var_4.b).a.zyx, !all(vec2<bool>(true, true)))).a.x;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: f32) -> u32 {
    global3 = array<vec2<f32>, 9>();
    var var_0 = func_2(Struct_4(arg_0, 1u, select(-u_input.a, firstTrailingBit(arg_1.a.x), true & (false & arg_0.a.x)), min(vec4<i32>(-u_input.a, -1i, u_input.a, u_input.b.x >> (1u % 32u)), min(-vec4<i32>(1i, 1i, arg_1.a.x, 1938i), firstLeadingBit(vec4<i32>(87781i, u_input.a, arg_1.a.x, u_input.b.x)))))).a;
    let var_1 = arg_1;
    var var_2 = 1u;
    var var_3 = arg_0;
    return firstLeadingBit(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (~31986u & _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 9746u), min(vec2<u32>(44568u, 13898u), vec2<u32>(41762u, 1u))), 1u)) == _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(0u) | 4294967295u, 66717u), ~_wgslsmith_div_vec2_u32(vec2<u32>(6421u, 4294967295u), select(vec2<u32>(14552u, 1u), vec2<u32>(58465u, 20454u), true)));
    let var_1 = reverseBits(~vec4<i32>(_wgslsmith_mult_i32(31495i, reverseBits(u_input.b.x)), -34801i, ~_wgslsmith_mod_i32(0i, -2147483647i), select(u_input.a, u_input.a, all(vec2<bool>(false, true)))));
    let var_2 = func_5(Struct_2(!vec4<bool>(true, func_1(vec3<u32>(4294967295u, 23419u, 4294967295u)), true, all(vec2<bool>(true, false)))), Struct_1(~u_input.b.xy, vec3<bool>(!func_2(Struct_4(Struct_2(vec4<bool>(true, false, false, false)), 74921u, u_input.a, var_1)).a.x, true, true), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, false)), -271f), vec3<bool>(~(-57771i) < firstLeadingBit(-u_input.a), true, true), 493f);
    var_0 = func_1(_wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(29870u, var_2), vec2<u32>(var_2, var_2)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, 1u), ~var_2), ~(~var_2)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2, var_2, 70359u) | vec3<u32>(var_2, 128501u, var_2), ~vec3<u32>(var_2, var_2, var_2)) | (abs(vec3<u32>(9694u, var_2, 1416u)) ^ (vec3<u32>(20657u, var_2, 4294967295u) << (vec3<u32>(var_2, var_2, var_2) % vec3<u32>(32u))))));
    global0 = array<vec4<bool>, 13>();
    var var_3 = Struct_2(!vec4<bool>(true, true, all(func_4(Struct_3(u_input.a, 1000f, vec4<bool>(false, false, true, true), Struct_2(global0[_wgslsmith_index_u32(var_2, 13u)])), global2[_wgslsmith_index_u32(var_2, 25u)], vec4<bool>(true, false, false, true), vec3<bool>(false, false, false)).a.yw), true));
    var var_4 = Struct_4(func_2(Struct_4(Struct_2(vec4<bool>(true, true, false, false)), ~_wgslsmith_div_u32(54557u, 40083u), countOneBits(u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.b.x, 1i))), 4294967295u, reverseBits(-(~(~var_1.x))), abs(var_1));
    let var_5 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~vec4<u32>(var_2, var_2, 0u, 29963u)), 4294967295u, -1i);
}

