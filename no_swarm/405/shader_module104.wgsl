struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -823f;

var<private> global1: vec2<f32> = vec2<f32>(-536f, 316f);

var<private> global2: Struct_2;

var<private> global3: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(-1662f, 531f), vec2<f32>(939f, -1000f), vec2<f32>(-1885f, -1571f), vec2<f32>(-1488f, 778f), vec2<f32>(-895f, 1018f), vec2<f32>(-1366f, -765f), vec2<f32>(660f, -2166f), vec2<f32>(1391f, 2773f), vec2<f32>(-319f, 558f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<bool>) -> bool {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-215f + 982f)))));
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(258f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.b))))), global2.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1092f, -1486f, global2.b))))));
    var var_1 = ~_wgslsmith_add_u32(~74343u, ~4294967295u & arg_0.c) | (arg_0.c << (~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(57695u, 81914u, arg_0.c), vec3<u32>(u_input.c, 60539u, u_input.a)), min(vec3<u32>(arg_0.c, u_input.a, 48972u), vec3<u32>(25165u, arg_0.c, arg_0.c))) % 32u));
    var var_2 = _wgslsmith_add_u32(arg_0.c, _wgslsmith_dot_vec3_u32(min(abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, 16591u), vec3<u32>(76345u, arg_0.c, u_input.c))), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c, 4294967295u, 0u), ~vec3<u32>(arg_0.c, u_input.a, arg_0.c))), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.c, 12813u, 35449u)), max(~vec3<u32>(arg_0.c, 10405u, u_input.c), abs(vec3<u32>(arg_0.c, 1u, 0u))), ~vec3<u32>(arg_0.c, arg_0.c, 0u) << (~vec3<u32>(98404u, 6360u, arg_0.c) % vec3<u32>(32u)))));
    var_1 = u_input.c;
    return true;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(u_input.b, vec2<i32>(select(~(-48449i), -13998i, func_3(Struct_1(41205i, vec2<i32>(u_input.b, 2147483647i), 60400u), Struct_2(vec2<f32>(global2.a.x, global1.x), global2.b, global2.c), vec3<bool>(true, true, true))), firstTrailingBit(-33409i)), u_input.a);
    var var_1 = ~55521i;
    global3 = array<vec2<f32>, 9>();
    var var_2 = true;
    var_2 = true;
    return i32(-1i) * -u_input.b;
}

fn func_4(arg_0: i32, arg_1: i32) -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(round(1645f));
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, u_input.b, 1i, -13332i), vec4<i32>(arg_0, -1i, arg_1, -10369i) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 2359u, 9941u, 12847u), vec4<u32>(4294967295u, 0u, u_input.c, 4294967295u)) % vec4<u32>(32u))), vec4<i32>(-50035i, abs(~(-13359i)), u_input.b, arg_0)), -(vec2<i32>(-1i) * -reverseBits(vec2<i32>(arg_1, 2147483647i))), 29478u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, global2.a.x, global1.x) + vec3<f32>(global1.x, global1.x, global2.b)) + global2.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-652f, global1.x, -349f))) * vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -452f), _wgslsmith_f_op_f32(global1.x * -257f))), global1.x, 504f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -760f), 758f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-490f, 654f, 1164f)))));
    var var_2 = Struct_1(~(-arg_1), vec2<i32>(-26749i, select(~arg_1, ~arg_1, any(vec3<bool>(false, true, false)))), _wgslsmith_sub_u32(min(select(~var_0.c, ~4294967295u, any(vec4<bool>(true, true, false, true))), u_input.c), var_0.c));
    return select(!vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), _wgslsmith_div_f32(global1.x, 247f) == _wgslsmith_f_op_f32(global2.b + 1071f), true, func_3(Struct_1(var_0.b.x, vec2<i32>(-57613i, arg_0), u_input.c), Struct_2(global3[_wgslsmith_index_u32(var_0.c, 9u)], 498f, global2.c), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))), select(!select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, true, false)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), -1044f < global1.x), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), false), true);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec4<bool>) -> vec4<i32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, -1121f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) + global2.c.x), true))), -454f);
    var var_1 = Struct_1(u_input.b, -reverseBits(arg_0.yx), 0u);
    var var_2 = arg_2;
    var_2 = arg_2;
    let var_3 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.c.yy)))), global3[_wgslsmith_index_u32(0u, 9u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(161f - 490f)))), arg_2.c);
    return vec4<i32>(_wgslsmith_sub_i32(1i, -42281i), var_1.b.x, _wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(-vec4<i32>(-39742i, var_1.b.x, -2147483647i, u_input.b), abs(arg_0)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-18797i, 14988i, 0i), firstLeadingBit(arg_0.zyx)), ~(u_input.b ^ u_input.b))), _wgslsmith_add_i32(~(-arg_0.x), reverseBits(_wgslsmith_add_i32(i32(-1i) * -37743i, -1i))));
}

fn func_1(arg_0: Struct_2) -> vec2<i32> {
    var var_0 = _wgslsmith_dot_vec4_i32(func_5(~countOneBits(-vec4<i32>(-2147483647i, 18410i, 48509i, u_input.b)), !vec4<bool>(1828f <= global1.x, false, true, any(vec4<bool>(false, true, false, true))), arg_0, select(func_4(func_2(), 1i), select(vec4<bool>(true, true, false, true), func_4(841i, u_input.b), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)))), -(vec4<i32>(-1i, -u_input.b, 24602i, u_input.b | u_input.b) & _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b, u_input.b, 0i, u_input.b), -vec4<i32>(-1i, 26815i, u_input.b, 1i))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1253f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - -1718f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global1.x)))))))));
    let var_1 = arg_0;
    global3 = array<vec2<f32>, 9>();
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, -1000f) - arg_0.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1700f)), _wgslsmith_f_op_f32(-1000f - -853f)), global2.c);
    return _wgslsmith_mult_vec2_i32(-vec2<i32>(_wgslsmith_div_i32(countOneBits(u_input.b), _wgslsmith_div_i32(u_input.b, 1i)), u_input.b), -_wgslsmith_clamp_vec2_i32((vec2<i32>(-1i, u_input.b) & vec2<i32>(u_input.b, u_input.b)) | ~vec2<i32>(2147483647i, 23908i), vec2<i32>(u_input.b | u_input.b, u_input.b | u_input.b), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -8762i), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -4092i), vec2<i32>(2147483647i, 616i)), ~vec2<i32>(u_input.b, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global2.c.xz, 600f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2.b - global1.x), _wgslsmith_f_op_f32(trunc(global1.x)), 620f) * _wgslsmith_f_op_vec3_f32(global2.c * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1108f, -243f, 1565f)))))));
    let var_1 = var_0.b;
    var var_2 = abs(abs(u_input.b));
    global3 = array<vec2<f32>, 9>();
    var var_3 = Struct_1(~(-u_input.b), ~_wgslsmith_sub_vec2_i32(func_1(var_0), abs(min(vec2<i32>(2147483647i, u_input.b), vec2<i32>(-63458i, u_input.b)))), reverseBits(~33593u));
    var var_4 = Struct_2(vec2<f32>(1f, _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1669f))), func_4(~8394i, u_input.b >> (u_input.c % 32u)).x))), var_0.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(502f, global1.x, -1601f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, -vec4<i32>(select(_wgslsmith_sub_i32(u_input.b, var_3.a), max(var_3.a, var_3.a), true), u_input.b, var_3.b.x, ~_wgslsmith_sub_i32(-8683i, 14118i)), -1i);
}

