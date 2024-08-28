struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_2,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 21>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> u32 {
    let var_0 = vec2<bool>(any(!vec4<bool>(arg_0, true, arg_0, false)), arg_0);
    global1 = array<f32, 21>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -620f));
    let var_2 = select(vec3<bool>(!var_0.x, !var_0.x, any(!select(vec3<bool>(var_0.x, false, arg_1.c.c), vec3<bool>(var_0.x, var_0.x, var_0.x), false))), vec3<bool>(false, true, 1u == select(max(u_input.b, u_input.b), _wgslsmith_clamp_u32(arg_1.c.b.x, 12277u, u_input.b), any(vec4<bool>(arg_1.c.c, var_0.x, arg_1.d.c, arg_1.d.c)))), all(vec2<bool>(true, true)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(146f)) + _wgslsmith_f_op_f32(exp2(arg_1.d.a)));
    return ~abs(abs(64381u >> (u_input.b % 32u)) ^ abs(u_input.b));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: vec4<f32>) -> i32 {
    global1 = array<f32, 21>();
    global1 = array<f32, 21>();
    let var_0 = Struct_3(_wgslsmith_add_u32(max(0u, u_input.b) << (firstLeadingBit(41979u) % 32u), (_wgslsmith_add_u32(arg_1.x, 4294967295u) & func_3(arg_0.x, Struct_2(u_input.a.x, global1[_wgslsmith_index_u32(0u, 21u)], Struct_1(-167f, vec3<u32>(u_input.b, u_input.b, u_input.b), true, true, vec2<bool>(arg_0.x, true)), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 21u)], vec3<u32>(22699u, 4294967295u, u_input.b), arg_2.x, false, arg_2.zz)))) | ~_wgslsmith_add_u32(u_input.b, 0u)), reverseBits(-2147483647i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(~arg_1.x, 21u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_3.x, global1[_wgslsmith_index_u32(arg_1.x, 21u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 21u)]), arg_0.x || true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 21u)]))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 61266u), 21u)] + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b, 21u)], -1000f))), vec4<f32>(3119f, global1[_wgslsmith_index_u32(4294967295u, 21u)], _wgslsmith_f_op_f32(-arg_3.x), 425f), arg_0.x)), firstLeadingBit(~(~arg_1) << (abs(~arg_1) % vec4<u32>(32u))), min(reverseBits(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_1.x, 4294967295u), vec3<u32>(arg_1.x, 32818u, u_input.b))), arg_1.xxw | arg_1.xzx));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -902f);
    global1 = array<f32, 21>();
    return ~(~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.b, var_0.b), var_0.b), -var_0.b, -var_0.b));
}

fn func_4(arg_0: i32, arg_1: u32) -> Struct_3 {
    var var_0 = firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(u_input.a.x), u_input.a.x), u_input.c, -1i, _wgslsmith_div_i32(1i, firstTrailingBit(arg_0))) | min(vec4<i32>(-2147483647i, ~arg_0, u_input.c, _wgslsmith_mod_i32(arg_0, -1i)), vec4<i32>(firstTrailingBit(-20248i), i32(-1i) * -2147483647i, max(arg_0, 27198i), 21730i)));
    global0 = arg_1 >= firstTrailingBit(47908u);
    var_0 = reverseBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(-29826i, -41686i, var_0.x, arg_0) << (min(reverseBits(vec4<u32>(arg_1, 1u, arg_1, u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_1, 20255u, u_input.b), vec4<u32>(u_input.b, 26960u, 59857u, 26034u))) % vec4<u32>(32u)), -(~vec4<i32>(0i, arg_0, arg_0, 1473i) >> (~vec4<u32>(1u, u_input.b, 31626u, 1u) % vec4<u32>(32u)))));
    global0 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true));
    global0 = all(select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), arg_0 < 19826i), false), vec2<bool>(true, true), !any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)))));
    return Struct_3(~42176u, func_2(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, true, true)), select(~reverseBits(vec4<u32>(1u, 42076u, arg_1, 1u)), select(vec4<u32>(17895u, arg_1, u_input.b, 0u) ^ vec4<u32>(arg_1, 1u, 0u, arg_1), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, arg_1, arg_1), vec4<u32>(1u, arg_1, 46530u, 1u)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(select(true, any(vec4<bool>(false, false, false, false)), true), true, false, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(50245u, 21u)], global1[_wgslsmith_index_u32(15824u, 21u)], global1[_wgslsmith_index_u32(u_input.b, 21u)], global1[_wgslsmith_index_u32(arg_1, 21u)]), vec4<f32>(global1[_wgslsmith_index_u32(1u, 21u)], 1931f, global1[_wgslsmith_index_u32(arg_1, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], 767f, 707f, global1[_wgslsmith_index_u32(arg_1, 21u)]))))), true))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], -630f, global1[_wgslsmith_index_u32(arg_1, 21u)]) + vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 21u)], global1[_wgslsmith_index_u32(68107u, 21u)], global1[_wgslsmith_index_u32(6704u, 21u)], global1[_wgslsmith_index_u32(arg_1, 21u)])) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-364f, global1[_wgslsmith_index_u32(4294967295u, 21u)], 248f, global1[_wgslsmith_index_u32(u_input.b, 21u)]), vec4<f32>(-885f, global1[_wgslsmith_index_u32(arg_1, 21u)], 1389f, 715f)))) - vec4<f32>(-403f, 654f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 21u)]), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(63065u, 21u)])))))), firstLeadingBit(~(~(vec4<u32>(21292u, 4294967295u, u_input.b, 14357u) & vec4<u32>(arg_1, arg_1, 21703u, arg_1)))), max(vec3<u32>(_wgslsmith_mult_u32(u_input.b, arg_1), 87229u, _wgslsmith_mult_u32(1u, u_input.b)) & vec3<u32>(1u, 1u, ~u_input.b), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, u_input.b, 0u), vec3<u32>(arg_1, arg_1, 4294967295u), vec3<u32>(arg_1, 17918u, 119260u)))));
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> Struct_1 {
    return Struct_1(global1[_wgslsmith_index_u32(u_input.b, 21u)], _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, ~u_input.b, _wgslsmith_mult_u32(20054u, select(arg_0.e.x, u_input.b, true))), abs(_wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.b, arg_0.d.x, u_input.b), arg_0.e, true), arg_0.d.wzz))), true, _wgslsmith_f_op_f32(-1533f * 323f) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(0u, 21u)], arg_0.c.x)), -457f)), vec2<bool>(true, true));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    return Struct_2(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), func_5(func_4(func_2(vec3<bool>(arg_2.e.x, arg_2.c, false), ~arg_0, !vec4<bool>(arg_2.c, true, false, arg_2.e.x), _wgslsmith_f_op_vec4_f32(-arg_1.c)), 15838u), 1u), Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.x, 21u)]), vec3<u32>(61601u, 4294967295u, arg_1.a) << (~vec3<u32>(u_input.b, arg_1.a, arg_2.b.x) % vec3<u32>(32u)), !arg_2.c, arg_2.c, func_5(arg_1, 44985u >> (1u % 32u)).e));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<f32>) -> i32 {
    global0 = arg_2.c.e.x;
    let var_0 = abs(~(~min(_wgslsmith_mult_vec3_i32(vec3<i32>(21663i, 25425i, 32733i), vec3<i32>(arg_0.x, arg_0.x, 53635i)), ~vec3<i32>(0i, -1i, arg_0.x))));
    global0 = arg_2.d.e.x | true;
    var var_1 = arg_1;
    let var_2 = Struct_3(~func_1(arg_1.d, func_4(i32(-1i) * -1i, 20013u), func_5(func_4(-1177i, 4294967295u), 0u)).d.b.x, abs(arg_0.x), var_1.c, ~firstTrailingBit(var_1.d), func_5(func_4(i32(-1i) * -arg_1.b, func_1(~vec4<u32>(1u, arg_2.d.b.x, var_1.d.x, 0u), func_4(-1i, u_input.b), Struct_1(3214f, arg_1.d.ywx, arg_2.d.d, true, arg_2.d.e)).d.b.x), ~_wgslsmith_mod_u32(1u, var_1.a & 48879u)).b);
    return _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, _wgslsmith_add_i32(2147483647i, _wgslsmith_add_i32(var_0.x, var_2.b))), -(~0i)) >> (_wgslsmith_mod_u32(~var_2.e.x | var_2.e.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b, arg_2.d.b.x, 51348u), firstLeadingBit(var_1.d.yyw), vec3<bool>(true, true, true)), var_2.d.zzx)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = -vec2<i32>(u_input.c, func_6(_wgslsmith_mult_vec2_i32(min(vec2<i32>(0i, u_input.a.x), u_input.a), ~u_input.a), Struct_3(26280u, -2147483647i, _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 21u)], -1609f, 1000f, -805f), vec4<f32>(612f, -707f, -1813f, -969f)), firstLeadingBit(vec4<u32>(0u, u_input.b, u_input.b, u_input.b)), firstTrailingBit(vec3<u32>(0u, 0u, 1u))), func_1(~vec4<u32>(16795u, 35938u, 0u, u_input.b), Struct_3(0u, u_input.a.x, vec4<f32>(-1490f, global1[_wgslsmith_index_u32(6211u, 21u)], -539f, 1491f), vec4<u32>(47232u, 9852u, 5939u, 0u), vec3<u32>(77471u, u_input.b, 1u)), Struct_1(1000f, vec3<u32>(u_input.b, u_input.b, u_input.b), false, true, vec2<bool>(true, var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1[_wgslsmith_index_u32(21105u, 21u)], global1[_wgslsmith_index_u32(u_input.b, 21u)]), vec2<f32>(-1612f, 1083f))))));
    let var_2 = max(vec4<i32>(-var_1.x, var_1.x, u_input.c, ~_wgslsmith_div_i32(-1i, i32(-1i) * -12758i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, _wgslsmith_div_i32(_wgslsmith_mult_i32(var_1.x, var_1.x), ~u_input.c), u_input.c, u_input.a.x), ~(~vec4<i32>(var_1.x, -2183i, 12607i, u_input.a.x))));
    var var_3 = _wgslsmith_mod_u32(reverseBits(61988u), func_1(vec4<u32>(u_input.b, _wgslsmith_clamp_u32(u_input.b & 5358u, ~u_input.b, ~u_input.b), u_input.b, 21140u), Struct_3(~1u, 1i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1022f, global1[_wgslsmith_index_u32(12384u, 21u)], global1[_wgslsmith_index_u32(45293u, 21u)], 1324f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-331f, 255f, 1050f, 212f)))), ~(vec4<u32>(47138u, u_input.b, u_input.b, 0u) & vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.b)), reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 15049u), vec3<u32>(74821u, 4294967295u, 26487u)))), func_1(firstTrailingBit(~vec4<u32>(u_input.b, 1u, 19064u, 1u)), Struct_3(9044u, var_1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1056f, 640f, global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(u_input.b, 21u)])), countOneBits(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)), vec3<u32>(0u, u_input.b, 60547u)), Struct_1(_wgslsmith_f_op_f32(394f - global1[_wgslsmith_index_u32(u_input.b, 21u)]), ~vec3<u32>(u_input.b, u_input.b, 17430u), true, any(vec2<bool>(var_0, true)), func_1(vec4<u32>(u_input.b, u_input.b, 13940u, 17923u), Struct_3(46828u, -12618i, vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 21u)], -361f, -1668f, -1000f), vec4<u32>(1u, 0u, 0u, u_input.b), vec3<u32>(0u, u_input.b, 18241u)), Struct_1(global1[_wgslsmith_index_u32(u_input.b, 21u)], vec3<u32>(0u, u_input.b, 51720u), var_0, true, vec2<bool>(true, var_0))).d.e)).d).c.b.x);
    var var_4 = ~var_2.x;
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(653f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(43440u, u_input.b)), 21u)], _wgslsmith_f_op_f32(-977f + global1[_wgslsmith_index_u32(u_input.b, 21u)])) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1[_wgslsmith_index_u32(13088u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], 362f), vec3<f32>(global1[_wgslsmith_index_u32(19679u, 21u)], 1580f, global1[_wgslsmith_index_u32(u_input.b, 21u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 21u)], global1[_wgslsmith_index_u32(u_input.b, 21u)], 162f) + vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 21u)], global1[_wgslsmith_index_u32(u_input.b, 21u)], 620f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global1[_wgslsmith_index_u32(1u, 21u)], 493f)))))) - vec3<f32>(1f, global1[_wgslsmith_index_u32(u_input.b, 21u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 21u)] + func_5(Struct_3(u_input.b, 0i, vec4<f32>(global1[_wgslsmith_index_u32(26730u, 21u)], global1[_wgslsmith_index_u32(u_input.b, 21u)], global1[_wgslsmith_index_u32(u_input.b, 21u)], -975f), vec4<u32>(0u, u_input.b, 74918u, 4294967295u), vec3<u32>(u_input.b, u_input.b, 1u)), min(u_input.b, 21990u)).a)));
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-300f, -1117f))) - _wgslsmith_f_op_f32(step(636f, _wgslsmith_f_op_f32(f32(-1f) * -725f))));
    var var_7 = vec3<f32>(_wgslsmith_div_f32(var_5.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -192f))) - 587f)), -751f, _wgslsmith_f_op_f32(f32(-1f) * -1111f));
    var var_8 = _wgslsmith_mod_u32(~(~_wgslsmith_sub_u32(~76911u, 7426u)), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<u32>(~5222u, reverseBits(select(4294967295u, 58472u, true)), u_input.b, u_input.b), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 8789u, u_input.b, u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(38668u, 28422u, 4498u, u_input.b), vec4<u32>(4294967295u, 6968u, u_input.b, 24872u)))), ~(~u_input.b), _wgslsmith_f_op_f32(1316f - 198f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_7.x + var_7.x)))), var_5.x)));
}

