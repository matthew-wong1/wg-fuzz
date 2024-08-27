struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<i32>(37627i, -2484i, -35460i, -34534i), -651f, 432f, 24008u, vec2<u32>(1u, 60592u)));

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<i32>(16268i, -8837i, 4276i, i32(-2147483648)), -991f, 290f, 74434u, vec2<u32>(4294967295u, 34937u)), Struct_1(vec4<i32>(i32(-2147483648), 0i, 1i, i32(-2147483648)), 747f, 531f, 0u, vec2<u32>(28021u, 0u)), Struct_1(vec4<i32>(5540i, 1i, 16853i, 2147483647i), 114f, 1000f, 38307u, vec2<u32>(17570u, 23979u)), Struct_1(vec4<i32>(5621i, 23942i, 0i, 2147483647i), -481f, 1225f, 37460u, vec2<u32>(32904u, 1u)), Struct_1(vec4<i32>(31861i, 37i, -42190i, 41018i), 912f, 435f, 4294967295u, vec2<u32>(42778u, 40086u)), Struct_1(vec4<i32>(9820i, 0i, i32(-2147483648), -77626i), -468f, 383f, 4294967295u, vec2<u32>(3546u, 31395u)), Struct_1(vec4<i32>(-1i, -1i, 1i, -10398i), -631f, -990f, 1u, vec2<u32>(1u, 10712u)), Struct_1(vec4<i32>(-15453i, 42101i, -1i, -33752i), -1317f, 235f, 0u, vec2<u32>(26572u, 18966u)));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_3.a.c, -1366f), -966f)), arg_0.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))))), _wgslsmith_f_op_f32(trunc(848f)), select(true, global1.a.c != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1238f)))), true)));
    return vec4<bool>(any(!vec4<bool>(any(vec2<bool>(false, true)), true, true, true)), !any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), all(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false), vec2<bool>(true, true))), global1.a.b <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    return select(vec4<bool>(!(!(4294967295u <= global1.a.e.x)), true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(func_3(Struct_3(global1.a.a.zxx, global1.a.a, global1.a.c, 1i, arg_0), vec4<u32>(global1.a.d, 45638u, global1.a.d, 11323u), -11378i, Struct_2(Struct_1(global1.a.a, 111f, global1.a.c, 0u, global1.a.e))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, false))), all(select(vec3<bool>(true, true, true), func_3(Struct_3(global1.a.a.yzz, vec4<i32>(global1.a.a.x, 2147483647i, -19i, u_input.e), global1.a.b, -19771i, u_input.b), vec4<u32>(4294967295u, 4294967295u, global1.a.d, u_input.b), 0i, Struct_2(global2[_wgslsmith_index_u32(39819u, 8u)])).wxw, vec3<bool>(false, false, true))) & true);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> Struct_3 {
    var var_0 = Struct_3(vec3<i32>(~3797i, ~(~abs(-5529i)), -global1.a.a.x), vec4<i32>(2147483647i, max(0i, ~_wgslsmith_mult_i32(u_input.c, -1i)), 1i, global1.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.b - _wgslsmith_f_op_f32(min(292f, _wgslsmith_f_op_f32(-global1.a.b))))), abs(firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.e, global1.a.a.x, -21424i), countOneBits(-10907i)))), u_input.d.x | 48338u);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(576f * global1.a.c)))))));
    let var_2 = global1.a.e;
    var var_3 = countOneBits(-4948i);
    var var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, -1252f, arg_1.a.c, 484f), vec4<f32>(1108f, global1.a.b, 379f, var_0.c)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -502f, 2050f, global1.a.c)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, 612f, -1129f, 1076f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1192f, var_0.c, 501f, 828f)))), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_2)), var_0.c, _wgslsmith_f_op_f32(abs(global1.a.b)), _wgslsmith_f_op_f32(round(arg_1.a.b))))), !func_2(abs(arg_1.a.e.x))))));
    return Struct_3(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(abs(var_0.a.x), -26984i, _wgslsmith_sub_i32(u_input.c, var_0.a.x)), i32(-1i) * -8042i, i32(-1i) * -11381i), var_0.b.wzx), global1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(672f + _wgslsmith_f_op_f32(floor(-312f)))), 19575i, global1.a.e.x);
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = !vec3<bool>(any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), func_2(global1.a.d).wy)), true, _wgslsmith_mult_i32(~2147483647i, arg_0.a.x) < (-19148i & arg_0.b.x));
    let var_1 = u_input.d.x;
    global1 = Struct_2(global1.a);
    global1 = Struct_2(Struct_1(reverseBits(abs(vec4<i32>(14933i, 26709i, 2147483647i, global1.a.a.x))), 955f, -1215f, var_1, vec2<u32>(abs(u_input.b), u_input.b) << (vec2<u32>(~96204u, arg_0.e) % vec2<u32>(32u))));
    var var_2 = _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.c, -40262i, 2147483647i) & vec3<i32>(-1i, u_input.e, u_input.e), _wgslsmith_add_vec3_i32(countOneBits(-global1.a.a.wwy), vec3<i32>(abs(u_input.e), u_input.c, countOneBits(arg_0.b.x)))) & -_wgslsmith_add_vec3_i32(~(~global1.a.a.wwx), ~arg_0.a);
    return global2[_wgslsmith_index_u32(countOneBits(~global1.a.d), 8u)];
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = func_5(func_4(all(func_2(~1u)), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, u_input.a), 4u)], _wgslsmith_f_op_f32(min(arg_1.x, global1.a.b))));
    var var_1 = func_4(true, Struct_2(var_0), var_0.c);
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_vec4_i32(firstTrailingBit(func_4(true, Struct_2(Struct_1(var_0.a, arg_0, -629f, var_0.d, var_0.e)), arg_1.x).b), var_0.a), arg_0, _wgslsmith_f_op_f32(trunc(765f)), ~reverseBits(select(73586u, 0u, false)), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 90317u), global1.a.e, vec2<u32>(1u, 0u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.b), global1.a.e)), vec2<u32>(0u, _wgslsmith_mod_u32(13089u, u_input.a)))));
    global0 = array<Struct_2, 4>();
    let var_3 = !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, true, false)), true));
    return func_4(var_3.x && var_3.x, Struct_2(var_0), -836f);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b, 606f, -801f, global1.a.b)))))));
    let var_1 = func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1189f), _wgslsmith_f_op_f32(round(global1.a.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(func_5(arg_1).b, _wgslsmith_div_f32(var_0.x, -1585f), 1000f, _wgslsmith_f_op_f32(-1056f * -412f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_0.c, 230f, -2128f) + vec4<f32>(arg_0.c, 433f, -126f, 174f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.b, 925f, -1395f, arg_1.c) * vec4<f32>(-625f, 1711f, -359f, var_0.x)), any(vec2<bool>(true, true))))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1653f * 1000f))), -983f, _wgslsmith_f_op_f32(arg_1.c + arg_0.c), _wgslsmith_f_op_f32(-func_4(false, global0[_wgslsmith_index_u32(50554u, 4u)], arg_1.c).c)))).a;
    let var_2 = countOneBits(~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.e, arg_0.e, arg_0.e), firstTrailingBit(vec3<u32>(1u, u_input.a, global1.a.e.x))), vec3<u32>(4294967295u, arg_1.e, _wgslsmith_mult_u32(0u, global1.a.e.x))));
    let var_3 = func_4(true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.e, ~_wgslsmith_mult_u32(3937u, 5547u)), 4u)], 1162f).b.x;
    let var_4 = !select(func_3(Struct_3(min(arg_1.b.wwx, global1.a.a.wyz), vec4<i32>(u_input.e, 0i, arg_0.a.x, -1i), _wgslsmith_f_op_f32(848f * 772f), 44773i, arg_1.e), firstLeadingBit(vec4<u32>(1u, 9974u, arg_0.e, arg_1.e) ^ vec4<u32>(arg_1.e, 0u, 1u, 1u)), global1.a.a.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_2, vec3<u32>(3130u, 4294967295u, global1.a.d)), var_2 | vec3<u32>(global1.a.e.x, 51385u, 1u)), 4u)]), func_3(Struct_3(vec3<i32>(43115i, global1.a.a.x, -55198i), -arg_0.b, -414f, -10224i, reverseBits(arg_0.e)), vec4<u32>(~u_input.d.x, 6147u, 1u, 4294967295u), -(~arg_1.d), global0[_wgslsmith_index_u32(global1.a.d, 4u)]), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false));
    return _wgslsmith_mult_u32((56438u & _wgslsmith_add_u32(abs(1u), u_input.d.x)) | ~(~u_input.b), firstTrailingBit(24774u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b) * global1.a.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(939f, -1099f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b, -521f, global1.a.b, 1275f)) + vec4<f32>(-277f, -409f, -665f, global1.a.b)))), func_4(true, Struct_2(Struct_1(~global1.a.a, global1.a.b, _wgslsmith_f_op_f32(-global1.a.c), 0u, ~vec2<u32>(4294967295u, 0u))), global1.a.c), global1.a.b);
    let var_1 = ~26798u;
    global1 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~var_1), u_input.a << (~var_1 % 32u)), 8u)]);
    let var_2 = !select(vec4<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false)), true, select(true, any(vec4<bool>(false, false, true, true)), func_3(Struct_3(vec3<i32>(global1.a.a.x, 3236i, global1.a.a.x), vec4<i32>(-1i, u_input.e, 1i, u_input.e), 895f, u_input.e, 46473u), vec4<u32>(u_input.a, 4294967295u, var_1, u_input.a), global1.a.a.x, Struct_2(Struct_1(global1.a.a, 834f, global1.a.c, global1.a.e.x, global1.a.e))).x), any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true));
    let var_3 = vec3<bool>(true, var_2.x, any(vec2<bool>(false, var_2.x)));
    let var_4 = false;
    let var_5 = func_4(var_3.x, Struct_2(func_5(func_1(_wgslsmith_f_op_f32(global1.a.c + 660f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-705f, global1.a.b, global1.a.b, -223f))))), 673f);
    global2 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_5.e, var_5.e, 1u, 4294967295u), vec4<u32>(u_input.a, 38021u, u_input.a, 0u)), abs(vec4<u32>(18602u, global1.a.e.x, global1.a.e.x, 0u))), ~vec4<u32>(~0u, countOneBits(4294967295u), ~u_input.a, u_input.d.x)), _wgslsmith_mod_vec2_u32(u_input.d, u_input.d), vec4<i32>(-1i, -_wgslsmith_sub_i32(func_1(var_5.c, vec4<f32>(global1.a.b, global1.a.b, var_5.c, -914f)).d, ~u_input.c), i32(-1i) * -select(-39369i, u_input.c, var_2.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global1.a.a.x) & func_5(Struct_3(vec3<i32>(-2147483647i, u_input.c, var_5.a.x), var_5.b, 1523f, u_input.e, 4294967295u)).a.wz, abs(var_5.b.wz) & global1.a.a.wz)));
}

