struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<u32, 2> = array<u32, 2>(0u, 1u);

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<i32>(-32217i, i32(-2147483648), 31669i, 5739i), vec4<u32>(12501u, 4294967295u, 0u, 1u), vec4<bool>(false, false, true, false), 463f), Struct_1(vec4<i32>(-1i, 1582i, i32(-2147483648), i32(-2147483648)), vec4<u32>(57857u, 15148u, 4747u, 15580u), vec4<bool>(false, true, false, true), 143f), Struct_1(vec4<i32>(-41194i, -19869i, 41295i, 69990i), vec4<u32>(38095u, 53082u, 32678u, 9988u), vec4<bool>(true, false, false, true), 1000f), Struct_1(vec4<i32>(2147483647i, 0i, 49298i, 21172i), vec4<u32>(4294967295u, 75252u, 0u, 0u), vec4<bool>(false, true, false, true), 159f), Struct_1(vec4<i32>(40205i, 1i, -15967i, -36353i), vec4<u32>(0u, 58288u, 4294967295u, 0u), vec4<bool>(false, true, false, true), -779f), Struct_1(vec4<i32>(13596i, 6029i, 2147483647i, 389i), vec4<u32>(48941u, 0u, 20416u, 35225u), vec4<bool>(false, true, true, true), -1000f), Struct_1(vec4<i32>(1i, 30814i, 2147483647i, -7036i), vec4<u32>(100674u, 15559u, 3255u, 4823u), vec4<bool>(false, true, true, true), -154f), Struct_1(vec4<i32>(1i, -1i, -11461i, -10037i), vec4<u32>(1u, 1u, 8869u, 4294967295u), vec4<bool>(true, true, true, true), -1000f), Struct_1(vec4<i32>(i32(-2147483648), 0i, 1i, 1i), vec4<u32>(1u, 69441u, 64074u, 1u), vec4<bool>(false, true, false, false), 750f), Struct_1(vec4<i32>(-44429i, 7233i, 7005i, -1i), vec4<u32>(1u, 63733u, 1u, 59685u), vec4<bool>(false, false, false, false), -1286f), Struct_1(vec4<i32>(31705i, -31797i, 17685i, -45244i), vec4<u32>(92346u, 4294967295u, 4294967295u, 1u), vec4<bool>(false, true, true, true), -386f), Struct_1(vec4<i32>(-22035i, i32(-2147483648), -7348i, -1i), vec4<u32>(66532u, 56474u, 4294967295u, 0u), vec4<bool>(false, false, false, true), 763f), Struct_1(vec4<i32>(-13916i, -1i, 23270i, -1i), vec4<u32>(90635u, 90466u, 49874u, 4294967295u), vec4<bool>(false, true, true, true), -1188f), Struct_1(vec4<i32>(6997i, 1i, 0i, 14607i), vec4<u32>(79421u, 4294967295u, 81270u, 6193u), vec4<bool>(true, false, true, true), 700f));

var<private> global3: bool;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    return -664f;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: bool) -> vec4<i32> {
    var var_0 = all(select(!vec3<bool>(true, true, arg_1.x), arg_1, select(!vec3<bool>(arg_1.x, true, arg_2), vec3<bool>(arg_2, any(vec4<bool>(arg_2, arg_2, arg_2, false)), arg_2 & arg_2), false)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-121f, -806f, false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 2113f))))));
    var_0 = true;
    let var_2 = _wgslsmith_div_vec3_i32(u_input.b.wwz, vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), -32610i, countOneBits(abs(-31895i) >> (u_input.a % 32u))));
    let var_3 = ~_wgslsmith_mult_u32(1u, 0u);
    return u_input.b;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-758f, 677f, _wgslsmith_f_op_f32(floor(537f)))));
    var var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, u_input.b), func_4(var_0.x, !vec3<bool>(arg_1.x, arg_1.x, !arg_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1205f))) < _wgslsmith_f_op_f32(func_3())));
    var var_2 = Struct_1(select((vec4<i32>(u_input.b.x, -1i, u_input.b.x, -8909i) | -u_input.b) ^ vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, -1i, -8127i), u_input.b), _wgslsmith_dot_vec2_i32(var_1.zx, vec2<i32>(var_1.x, 0i)), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-52349i, -50618i, var_1.x, -13936i)), -2147483647i), select(_wgslsmith_clamp_vec4_i32(abs(u_input.b), u_input.b, u_input.b >> (vec4<u32>(0u, global1[_wgslsmith_index_u32(arg_0, 2u)], arg_0, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 2u)], 2u)]) % vec4<u32>(32u))), u_input.b, !vec4<bool>(true, false, arg_1.x, arg_1.x)), true || arg_1.x), vec4<u32>(u_input.a, 31833u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(43238u, arg_0, arg_0, 1u), ~vec4<u32>(u_input.a, 30582u, u_input.a, 5267u)), 1u), !select(select(vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<bool>(false, false, arg_1.x, true), select(vec4<bool>(arg_1.x, true, false, true), vec4<bool>(true, false, arg_1.x, arg_1.x), arg_1.x)), select(vec4<bool>(true, true, false, false), !vec4<bool>(true, arg_1.x, true, arg_1.x), true), all(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, false, true), vec4<bool>(false, true, arg_1.x, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1462f));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(548f, var_2.d, -1000f, -900f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(138f, var_2.d, -1531f, var_0.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(242f, var_0.x, var_0.x, var_0.x))))))) + vec4<f32>(-782f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -263f) * _wgslsmith_f_op_f32(sign(-404f))), var_2.d, 885f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.d, _wgslsmith_f_op_f32(f32(-1f) * -1149f), _wgslsmith_f_op_f32(ceil(var_0.x)), -832f))));
    var var_4 = Struct_1(_wgslsmith_div_vec4_i32(((vec4<i32>(var_2.a.x, var_1.x, u_input.b.x, var_2.a.x) ^ vec4<i32>(u_input.b.x, -2147483647i, 0i, -32310i)) << (var_2.b % vec4<u32>(32u))) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 9416u, 49447u, var_2.b.x), var_2.b) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-var_2.a.x, ~var_2.a.x, _wgslsmith_add_i32(-1i, var_2.a.x), i32(-1i) * -2147483647i), vec4<i32>(reverseBits(-59232i), ~var_1.x, u_input.b.x, -var_2.a.x))), ~vec4<u32>(global1[_wgslsmith_index_u32(39995u, 2u)], _wgslsmith_dot_vec3_u32(~var_2.b.ywy, ~var_2.b.yxw), firstTrailingBit(max(arg_0, var_2.b.x)), ~_wgslsmith_sub_u32(var_2.b.x, 0u)), select(vec4<bool>(true, arg_1.x, var_2.c.x, any(!var_2.c.xwy)), select(var_2.c, vec4<bool>(true, true, true, true), vec4<bool>(false, all(var_2.c), arg_0 > 4294967295u, false | var_2.c.x)), arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) - -1119f) + _wgslsmith_f_op_f32(trunc(-1089f))));
    return true;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> bool {
    let var_0 = abs(firstLeadingBit(_wgslsmith_mult_vec2_u32(reverseBits(~arg_3.b.zy), reverseBits(arg_1.b.yz))));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.d, arg_3.d, arg_3.d, arg_1.d))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d, -791f, arg_3.d, 669f) + vec4<f32>(-412f, arg_3.d, arg_1.d, arg_1.d))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(835f, 904f, arg_3.d, arg_3.d)), vec4<f32>(arg_3.d, 1614f, 637f, arg_3.d))) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_3.d, -852f, arg_1.d, -468f), vec4<f32>(arg_1.d, arg_1.d, arg_1.d, -312f))))));
    let var_3 = arg_1.a.x & _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(u_input.b.yww, u_input.b.zzy), _wgslsmith_div_i32(~arg_1.a.x, -1i), 0i), -6281i, ~arg_3.a.x);
    let var_4 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, -10021i, arg_1.a.x, -6350i), u_input.b), -(_wgslsmith_sub_i32(arg_1.a.x, select(u_input.b.x, -2147483647i, arg_0)) | var_3), -(~(11361i >> (0u % 32u))));
    return !arg_1.c.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = vec2<bool>(arg_0, arg_1.d <= arg_1.d);
    global3 = func_5(func_2(arg_1.b.x, select(arg_3.c.xyy, vec3<bool>(arg_1.c.x, var_0.x, true), !select(arg_1.c.yzw, vec3<bool>(arg_1.c.x, arg_0, arg_1.c.x), vec3<bool>(false, true, arg_0)))), global0[_wgslsmith_index_u32(~arg_1.b.x ^ arg_3.b.x, 6u)], !arg_1.c.x, arg_1);
    var var_1 = vec3<i32>(min(~(~(-2147483647i)), -9169i >> (~(u_input.a & 75644u) % 32u)), -_wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(0i, firstLeadingBit(arg_3.a.x), -2147483647i), -1i), -1i);
    var_1 = min(vec3<i32>(_wgslsmith_sub_i32(-6827i, ~arg_2.x), u_input.b.x, -6102i), arg_3.a.yww);
    let var_2 = Struct_1(u_input.b, ~vec4<u32>(min(u_input.a, 43564u) ^ countOneBits(global1[_wgslsmith_index_u32(63656u, 2u)]), arg_3.b.x, 15524u, min(~arg_3.b.x, _wgslsmith_dot_vec4_u32(arg_3.b, vec4<u32>(0u, 56184u, 35787u, 1u)))), arg_1.c, _wgslsmith_f_op_f32(arg_3.d + 1374f));
    return _wgslsmith_add_vec3_i32(~(vec3<i32>(-8458i, u_input.b.x, -55144i) & vec3<i32>(arg_2.x, 1i, arg_2.x)) ^ ~vec3<i32>(~71465i, 2147483647i, arg_1.a.x), vec3<i32>(-arg_1.a.x, 27733i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-4304i, -var_1.x), ~(~var_2.a.x))));
}

fn func_6(arg_0: vec3<i32>, arg_1: i32, arg_2: f32) -> vec3<bool> {
    return select(select(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), (79727u == global1[_wgslsmith_index_u32(19928u, 2u)]) & all(vec4<bool>(false, true, true, true))), select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), u_input.a > 1u), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), false), !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), false))), vec3<bool>(true, true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), func_2(0u, vec3<bool>(false, true, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.xwz;
    let var_1 = !select(func_6(_wgslsmith_clamp_vec3_i32(u_input.b.wyw, func_1(false, Struct_1(u_input.b, vec4<u32>(20732u, u_input.a, 36563u, global1[_wgslsmith_index_u32(u_input.a, 2u)]), vec4<bool>(false, true, false, false), 391f), u_input.b.yw, global0[_wgslsmith_index_u32(1038u, 6u)]), ~vec3<i32>(var_0.x, 61667i, 1i)), var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), 954f))), vec3<bool>(false, false, max(12215u, 38000u) <= global1[_wgslsmith_index_u32(u_input.a, 2u)]), select(vec3<bool>(any(vec4<bool>(true, true, false, false)), true, all(vec2<bool>(false, true))), func_6(u_input.b.yxx, i32(-1i) * -66327i, _wgslsmith_f_op_f32(1007f - 424f)), vec3<bool>(func_6(vec3<i32>(u_input.b.x, 1i, var_0.x), var_0.x, -2061f).x, true, true)));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a, _wgslsmith_div_u32(select(0u, 0u, -22458i < u_input.b.x), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 2u)], 2u)] >> (1u % 32u)) >> (4294967295u % 32u)), 6u)];
    let var_3 = _wgslsmith_f_op_f32(var_2.d - var_2.d);
    let var_4 = Struct_1(vec4<i32>(min(23654i, ~(-1i)) >> (u_input.a % 32u), -32504i, min(select(firstLeadingBit(var_2.a.x), 0i, all(vec4<bool>(true, var_2.c.x, var_1.x, false))), -25723i), select(u_input.b.x, abs(reverseBits(var_2.a.x)), firstTrailingBit(50299u) == 4294967295u)), var_2.b >> (var_2.b % vec4<u32>(32u)), select(vec4<bool>(var_2.c.x & var_1.x, all(var_2.c.yzw), any(var_2.c.zzx), var_1.x || true), !vec4<bool>(var_2.c.x, var_2.c.x & var_2.c.x, func_2(var_2.b.x, vec3<bool>(var_2.c.x, var_2.c.x, var_2.c.x)), var_2.c.x), select(vec4<bool>(u_input.b.x == u_input.b.x, any(vec3<bool>(var_2.c.x, var_2.c.x, false)), true, any(var_1)), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_2.c.x), select(var_2.c, vec4<bool>(var_1.x, true, true, false), var_2.c), var_2.c), select(var_2.c, var_2.c, !var_2.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-930f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 * var_3) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_3)))))));
    let var_5 = 5238i << (0u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(18096u, u_input.a, 83978u), vec3<u32>(1u, var_2.b.x, u_input.a)), 993u & _wgslsmith_sub_u32(124904u, u_input.a), firstTrailingBit(countOneBits(1u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(min(920f, -734f))), vec3<u32>(~4294967295u, 1u, var_2.b.x));
}

