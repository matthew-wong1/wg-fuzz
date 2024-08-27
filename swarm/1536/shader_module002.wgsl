struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: array<f32, 10>;

var<private> global2: array<Struct_3, 24>;

var<private> global3: u32 = 17412u;

var<private> global4: array<Struct_1, 1>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = select(select(arg_0.a, vec4<bool>(true, arg_0.a.x, any(select(vec2<bool>(arg_0.a.x, false), vec2<bool>(arg_0.a.x, false), vec2<bool>(arg_0.a.x, arg_0.a.x))), !(arg_0.a.x && true)), arg_0.a), vec4<bool>(arg_0.a.x, !(!any(arg_0.a.xy)), arg_0.a.x, arg_0.a.x), vec4<bool>(false, true, arg_0.a.x, false));
    var var_1 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(select(~14924u, _wgslsmith_dot_vec4_u32(vec4<u32>(34198u, 0u, 9698u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 33618u)), !arg_0.a.x), 34508u, 9421u, 0u), select(min(~vec4<u32>(0u, 31008u, 33447u, 1u), vec4<u32>(1u, 0u, 0u, 45845u)), vec4<u32>(1u, 1u, 1u, 1u), select(!arg_0.a, !vec4<bool>(var_0.x, false, var_0.x, var_0.x), all(arg_0.a.wyz))), vec4<u32>(0u, ~4294967295u, 1u, _wgslsmith_sub_u32(3964u, 1u)) & select(vec4<u32>(0u, 16252u, 26212u, 38607u), ~vec4<u32>(0u, 0u, 32203u, 19812u), select(vec4<bool>(arg_0.a.x, true, true, true), arg_0.a, var_0.x)));
    var var_2 = vec4<bool>(var_0.x, arg_0.a.x, (u_input.a.x ^ global0[_wgslsmith_index_u32(~var_1.x, 16u)]) == (firstLeadingBit(u_input.a.x) & 1i), any(!vec3<bool>(!arg_0.a.x, !var_0.x, true)));
    var var_3 = ~(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(var_1.x, 16u)]), u_input.a)) & 2147483647i);
    let var_4 = -27097i >> (~(_wgslsmith_dot_vec2_u32(var_1.wx, ~vec2<u32>(1u, var_1.x)) >> (abs(var_1.x) % 32u)) % 32u);
    return var_4;
}

fn func_2() -> i32 {
    var var_0 = vec4<i32>(func_3(Struct_3(vec4<bool>(true, true, true, any(vec4<bool>(true, true, false, false))))), ~1i, -global0[_wgslsmith_index_u32(~(~(~0u)), 16u)], _wgslsmith_clamp_i32(_wgslsmith_add_i32(33517i, global0[_wgslsmith_index_u32(19141u, 16u)]), -u_input.a.x, -44429i));
    global3 = 4294967295u;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1565f, -412f, -1037f, global1[_wgslsmith_index_u32(1u, 10u)]) * vec4<f32>(113f, global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)], 167f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(2171u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], -106f, 831f)))), ~(~4294967295u)), vec2<bool>(true, true), global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(59467u, 0u), ~0u, reverseBits(16006u)), vec3<u32>(1u, 1u, 1u))), 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2023f * 580f)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 427f, 1003f, global1[_wgslsmith_index_u32(4294967295u, 10u)]) + vec4<f32>(-154f, 1041f, global1[_wgslsmith_index_u32(15946u, 10u)], global1[_wgslsmith_index_u32(72671u, 10u)]))))), 0u));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1392f))))));
    var var_3 = global0[_wgslsmith_index_u32(abs(var_1.e.b >> (~_wgslsmith_sub_u32(~4556u, var_1.e.b) % 32u)), 16u)];
    return var_0.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = min(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(arg_1.b, 16u)], _wgslsmith_mult_i32(~0i, arg_0.x)), -2147483647i);
    global2 = array<Struct_3, 24>();
    global3 = firstLeadingBit(~0u);
    global0 = array<i32, 16>();
    global4 = array<Struct_1, 1>();
    return Struct_1(arg_1.a, arg_1.b);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: u32) -> u32 {
    var var_0 = true;
    global2 = array<Struct_3, 24>();
    global2 = array<Struct_3, 24>();
    let var_1 = func_4(_wgslsmith_mult_vec4_i32(-vec4<i32>(_wgslsmith_clamp_i32(arg_0, 0i, u_input.a.x), -10943i, min(54293i, 21321i), func_2()), _wgslsmith_sub_vec4_i32(~vec4<i32>(arg_0, arg_0, global0[_wgslsmith_index_u32(8870u, 16u)], global0[_wgslsmith_index_u32(arg_2, 16u)]), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(arg_2, 16u)], global0[_wgslsmith_index_u32(39969u, 16u)], u_input.a.x, 2147483647i)), select(vec4<i32>(arg_0, 2052i, global0[_wgslsmith_index_u32(arg_2, 16u)], -1i), vec4<i32>(-2147483647i, arg_0, u_input.a.x, arg_0), false)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(0u, 10u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_2, 10u)] - global1[_wgslsmith_index_u32(arg_2, 10u)]), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 1270f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(27823u, 10u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 10u)] - global1[_wgslsmith_index_u32(arg_2, 10u)]))), ~arg_2));
    let var_2 = ~vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-17393i, global0[_wgslsmith_index_u32(37087u, 16u)], -16420i), vec3<i32>(0i, arg_0, global0[_wgslsmith_index_u32(28477u, 16u)])), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 12255i, -1i, 0i), vec4<i32>(20021i, -7503i, -3768i, -1i)), -arg_0), min(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, -51953i, arg_0), vec3<i32>(-22189i, u_input.a.x, arg_0)), vec3<i32>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]))), -(~arg_0));
    return ~firstTrailingBit(arg_2);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    global3 = arg_2.e.b;
    global4 = array<Struct_1, 1>();
    let var_0 = true;
    global3 = min(arg_2.a.b, 18757u);
    global3 = ~(~(~4294967295u));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global4[_wgslsmith_index_u32(1u ^ func_1((10708i & global0[_wgslsmith_index_u32(1804u, 16u)]) ^ -1i, Struct_3(vec4<bool>(true, false, false, true)), min(abs(33302u), abs(24463u))), 1u)], -503f, Struct_2(global4[_wgslsmith_index_u32(select(~_wgslsmith_clamp_u32(67856u, 108060u, 1u), max(12291u, 4294967295u), true), 1u)], select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), func_4(min(vec4<i32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 16u)], -1i) | vec4<i32>(global0[_wgslsmith_index_u32(1u, 16u)], 19439i, global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]), select(vec4<i32>(20519i, u_input.a.x, 0i, u_input.a.x), vec4<i32>(u_input.a.x, -73483i, -1i, 1596i), vec4<bool>(false, false, false, false))), func_4(-vec4<i32>(global0[_wgslsmith_index_u32(0u, 16u)], 1i, 0i, -21208i), global4[_wgslsmith_index_u32(37914u, 1u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-399f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(46515u, 10u)]))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1395f, -385f, global1[_wgslsmith_index_u32(1u, 10u)], -516f)))), ~(~1u))));
    global0 = array<i32, 16>();
    global1 = array<f32, 10>();
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(var_0.b, var_0.b), _wgslsmith_add_u32(var_0.b, 0u)), 10u)], 491f, global1[_wgslsmith_index_u32(48816u, 10u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(2190f, -975f) + -862f))), _wgslsmith_mod_u32(26927u, 1u & _wgslsmith_add_u32(~var_0.b, var_0.b)));
    let var_1 = Struct_2(func_4(min(-firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(79694u, 16u)], -1i, 5348i, global0[_wgslsmith_index_u32(6061u, 16u)])), ~(vec4<i32>(global0[_wgslsmith_index_u32(1u, 16u)], 1i, 1i, -2147483647i) << (vec4<u32>(var_0.b, 4294967295u, var_0.b, 80616u) % vec4<u32>(32u)))), func_5(global4[_wgslsmith_index_u32(abs(firstLeadingBit(35355u)), 1u)], func_4(vec4<i32>(-1i, global0[_wgslsmith_index_u32(var_0.b, 16u)], global0[_wgslsmith_index_u32(15734u, 16u)], 0i), Struct_1(var_0.a, 3242u)).a.x, Struct_2(global4[_wgslsmith_index_u32(~20385u, 1u)], vec2<bool>(false, false), func_5(global4[_wgslsmith_index_u32(var_0.b, 1u)], -1000f, Struct_2(Struct_1(vec4<f32>(-947f, var_0.a.x, var_0.a.x, var_0.a.x), 0u), vec2<bool>(true, true), Struct_1(vec4<f32>(var_0.a.x, 1804f, -792f, 807f), var_0.b), global1[_wgslsmith_index_u32(var_0.b, 10u)], Struct_1(var_0.a, var_0.b))), _wgslsmith_f_op_f32(-var_0.a.x), func_4(vec4<i32>(global0[_wgslsmith_index_u32(var_0.b, 16u)], global0[_wgslsmith_index_u32(1404u, 16u)], u_input.a.x, global0[_wgslsmith_index_u32(53412u, 16u)]), Struct_1(vec4<f32>(624f, var_0.a.x, var_0.a.x, 893f), 4294967295u))))), !(!vec2<bool>(select(true, true, true), true)), Struct_1(_wgslsmith_f_op_vec4_f32(func_5(global4[_wgslsmith_index_u32(var_0.b, 1u)], _wgslsmith_f_op_f32(var_0.a.x * global1[_wgslsmith_index_u32(64670u, 10u)]), Struct_2(global4[_wgslsmith_index_u32(var_0.b, 1u)], vec2<bool>(true, true), Struct_1(var_0.a, 1u), global1[_wgslsmith_index_u32(1u, 10u)], global4[_wgslsmith_index_u32(40437u, 1u)])).a - var_0.a), ~var_0.b << (_wgslsmith_div_u32(45347u, ~1u) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-346f, global1[_wgslsmith_index_u32(0u, 10u)], true)) - -1775f))) * var_0.a.x), func_4(max(vec4<i32>(~(-13078i), firstLeadingBit(global0[_wgslsmith_index_u32(24526u, 16u)]), _wgslsmith_mod_i32(49962i, 2147483647i), global0[_wgslsmith_index_u32(var_0.b, 16u)]), vec4<i32>(abs(-29055i), -15108i, select(u_input.a.x, 2147483647i, true), 1i)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1651f, global1[_wgslsmith_index_u32(54732u, 10u)], global1[_wgslsmith_index_u32(53866u, 10u)], global1[_wgslsmith_index_u32(var_0.b, 10u)]))), 4294967295u)));
    let var_2 = global2[_wgslsmith_index_u32(var_1.a.b, 24u)];
    let var_3 = var_1;
    global1 = array<f32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(221f + -1091f)) - _wgslsmith_f_op_f32(min(func_5(global4[_wgslsmith_index_u32(21615u, 1u)], var_3.d, var_1).a.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_0.b), vec3<u32>(var_1.e.b, var_0.b, 4294967295u)), 10u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_3.c.a.x, 1309f)))) - _wgslsmith_f_op_f32(f32(-1f) * -280f)))), countOneBits(abs(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_1.c.b, 4294967295u, 67901u), var_1.c.b | 8741u, abs(var_1.a.b)), 16u)])), ~(~(~vec4<u32>(34970u, var_3.a.b, 13582u, var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.a.x)), var_3.a.b);
}

