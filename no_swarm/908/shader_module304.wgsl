struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(571f, -563f), vec3<bool>(true, true, true), vec4<f32>(-349f, 621f, 704f, 743f), vec3<bool>(true, false, true), 4294967295u);

var<private> global1: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(680f, 519f, -272f, -1078f), vec4<f32>(351f, -1204f, -207f, 318f), vec4<f32>(-1000f, 910f, 438f, 498f), vec4<f32>(1960f, -1976f, 1319f, 374f), vec4<f32>(277f, -1694f, -411f, 1000f), vec4<f32>(475f, -584f, 1697f, -2301f), vec4<f32>(180f, 1137f, -1151f, -132f), vec4<f32>(1091f, -934f, 363f, 518f), vec4<f32>(-1944f, -1054f, -194f, -1076f), vec4<f32>(-1155f, 1186f, -314f, -525f), vec4<f32>(-355f, -528f, -138f, 287f), vec4<f32>(1292f, -2687f, 762f, -141f), vec4<f32>(1161f, 1855f, 1313f, 748f), vec4<f32>(-1000f, -167f, -749f, 705f), vec4<f32>(1212f, 578f, -967f, 1429f), vec4<f32>(1081f, -758f, 332f, 1000f), vec4<f32>(609f, 846f, -799f, -1227f), vec4<f32>(896f, -361f, -737f, -870f), vec4<f32>(374f, 1784f, 1000f, -356f), vec4<f32>(-459f, 304f, -554f, 342f), vec4<f32>(-1363f, 527f, -1000f, 1903f), vec4<f32>(403f, 1365f, -710f, -725f), vec4<f32>(381f, -1703f, 1292f, 1386f), vec4<f32>(579f, -1276f, 322f, 480f), vec4<f32>(-1306f, 1095f, 989f, 343f), vec4<f32>(-1252f, 772f, 889f, -418f), vec4<f32>(1138f, 259f, -1142f, -262f));

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = !vec4<bool>(true, !(!any(vec4<bool>(global0.d.x, false, arg_1.b.x, arg_1.b.x))), arg_1.b.x, global0.d.x);
    global0 = arg_1;
    var var_1 = Struct_2(arg_0.a, firstLeadingBit(vec2<i32>(min(abs(arg_0.a.x), global2.e.x), global2.e.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, 376f)), vec2<f32>(-1070f, global2.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.c) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-751f, arg_0.c.x) + vec2<f32>(1336f, 2320f)))) + _wgslsmith_f_op_vec2_f32(-arg_0.c)), 13433u, global2.a.zz);
    var var_2 = arg_1;
    var var_3 = Struct_2((vec3<i32>(_wgslsmith_add_i32(arg_0.b.x, -5069i), i32(-1i) * -71506i, 0i) << (firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.e, arg_0.d, var_1.d), vec3<u32>(4294967295u, arg_1.e, global0.e))) % vec3<u32>(32u))) << (~(~select(vec3<u32>(1064u, 1u, global0.e), vec3<u32>(arg_0.d, global0.e, var_1.d), vec3<bool>(var_2.d.x, false, false))) % vec3<u32>(32u)), max(firstTrailingBit(arg_0.a.xx), arg_0.b), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.x), var_1.c.x)), var_2.a.x), 29090u, var_1.e);
    return !select(vec4<bool>(!(var_2.d.x && global0.d.x), false, false, global0.d.x), vec4<bool>(var_2.d.x, any(!global0.b.zx), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.e.x, u_input.a, 1i, -1i), vec4<i32>(-63197i, var_3.b.x, arg_0.a.x, 0i)) > ~2147483647i, true), vec4<bool>(select(global0.b.x, global0.b.x, true), select(!arg_1.d.x, true, !var_2.b.x), !all(vec4<bool>(false, true, true, false)), (var_2.d.x && false) | all(vec2<bool>(false, arg_1.b.x))));
}

fn func_4(arg_0: bool) -> i32 {
    global1 = array<vec4<f32>, 27>();
    let var_0 = !(u_input.a < select(2147483647i, global2.a.x, global0.d.x));
    let var_1 = select(global0.d.xy, vec2<bool>(var_0, func_3(Struct_2(vec3<i32>(u_input.a, global2.e.x, 13155i), vec2<i32>(2147483647i, u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, global2.c.x)), global2.d, global2.b), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(global0.a)), !vec3<bool>(global0.b.x, false, false), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(global2.d, 27u)]), global0.b, firstTrailingBit(9195u))).x), false || any(select(!vec2<bool>(global0.d.x, arg_0), vec2<bool>(true, true), vec2<bool>(var_0, arg_0))));
    global1 = array<vec4<f32>, 27>();
    global2 = Struct_2(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(25306i, -27487i), i32(-1i) * -4084i, -2147483647i), ~firstTrailingBit(global2.a)), ~_wgslsmith_add_vec3_i32(firstLeadingBit(global2.a), global2.a & vec3<i32>(2147483647i, -1i, u_input.a))), select(-max(global2.b, -vec2<i32>(u_input.a, u_input.a)), ~global2.e, -1i != -_wgslsmith_dot_vec3_i32(global2.a, global2.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-457f, _wgslsmith_f_op_f32(select(-219f, _wgslsmith_f_op_f32(trunc(global2.c.x)), arg_0)))), 0u | _wgslsmith_add_u32(~(~17417u), _wgslsmith_div_u32(global0.e, global0.e) >> (0u % 32u)), vec2<i32>(u_input.a, ~firstTrailingBit(-127940i)));
    return u_input.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec4_u32(abs(vec4<u32>(global0.e, global2.d, global0.e, _wgslsmith_dot_vec2_u32(arg_0.yy, abs(arg_0.yz)))), ~min((vec4<u32>(64530u, 15739u, arg_3.e, 8385u) << (vec4<u32>(arg_0.x, 4294967295u, arg_3.e, global2.d) % vec4<u32>(32u))) << (vec4<u32>(64570u, 0u, arg_3.e, 32200u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.zy, vec2<u32>(arg_0.x, 0u)), ~80294u, ~global0.e, 1u)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global2.c), arg_3.d, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.c.x))))), 2414f, -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.c.x - _wgslsmith_f_op_f32(-224f - arg_3.c.x)), 1527f)), global0.d, ~_wgslsmith_mult_u32(0u, global0.e));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.c.x, 246f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(-global0.a.x)))));
    let var_2 = func_4(any(!select(!vec4<bool>(false, false, true, arg_3.d.x), vec4<bool>(true, global0.b.x, arg_2, global0.d.x), func_3(Struct_2(vec3<i32>(global2.e.x, -22890i, u_input.a), global2.b, vec2<f32>(arg_3.a.x, -401f), arg_3.e, vec2<i32>(0i, -1i)), arg_3))));
    var var_3 = !vec4<bool>(any(global0.d.yy), any(arg_3.d.yz) & any(vec2<bool>(false, true)), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), -1017f) == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.a.x))));
    return !func_3(Struct_2(vec3<i32>(1i, ~0i, 15042i), ~global2.e, global0.a, 17434u >> (1u % 32u), ~global2.b), arg_3).wwx;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_1 {
    global2 = Struct_2(select(global2.a, global2.a, any(vec4<bool>(any(vec4<bool>(true, arg_0.x, true, arg_1.x)), all(global0.d.xx), global0.b.x, true))), reverseBits(min(vec2<i32>(u_input.a, _wgslsmith_sub_i32(-54805i, -2147483647i)), vec2<i32>(global2.a.x, -85489i & global2.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.c.x)), 133f)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(567f, 161f) + global0.a), vec2<f32>(-1489f, 285f)))))), 46843u, max(global2.b, ~(-vec2<i32>(31465i, u_input.a))));
    global2 = Struct_2(vec3<i32>(u_input.a, 2147483647i, select(_wgslsmith_mult_i32(~u_input.a, -global2.a.x), global2.b.x, func_3(Struct_2(vec3<i32>(global2.a.x, u_input.a, global2.b.x), global2.b, vec2<f32>(global0.c.x, -438f), 4294967295u, global2.b), Struct_1(global2.c, vec3<bool>(true, arg_1.x, global0.d.x), global0.c, global0.d, 0u)).x)), global2.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(global0.a)))) + vec2<f32>(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(-196f - global2.c.x)))), 28782u, min(~global2.e, global2.b));
    let var_0 = Struct_2(~(~abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-27474i, u_input.a, global2.e.x), global2.a, vec3<i32>(2147483647i, 1i, u_input.a)))), _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(u_input.a, u_input.a)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(17251u, 74482u), ~vec2<u32>(global0.e, global0.e)) % vec2<u32>(32u)), -vec2<i32>(global2.a.x, global2.b.x & 2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.c.x))), 1137f), ~(~(~44776u)) & ~firstLeadingBit(global0.e), global2.a.xy);
    let var_1 = global2.d;
    var var_2 = select(any(!select(select(vec4<bool>(global0.d.x, global0.d.x, global0.d.x, arg_1.x), arg_0, true), arg_0, arg_1.x)), global0.d.x, arg_0.x);
    return Struct_1(global0.a, func_3(var_0, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.c, global0.a, vec2<bool>(false, true))) + vec2<f32>(global0.a.x, global0.c.x)), vec3<bool>(true, all(vec2<bool>(true, global0.b.x)), true), vec4<f32>(_wgslsmith_f_op_f32(-global2.c.x), var_0.c.x, _wgslsmith_f_op_f32(-global2.c.x), global2.c.x), vec3<bool>(true, global0.b.x & true, global0.b.x), ~0u)).yxw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global0.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-221f, var_0.c.x, global0.c.x, -2015f) * global0.c))))), select(func_2(vec3<u32>(var_0.d, _wgslsmith_sub_u32(4294967295u, global2.d), 0u), arg_1.x, arg_0.x, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, -229f)), arg_1, _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(4294967295u, 27u)] * global1[_wgslsmith_index_u32(4294967295u, 27u)]), func_2(vec3<u32>(global0.e, 4294967295u, global0.e), global0.d.x, global0.b.x, Struct_1(vec2<f32>(global2.c.x, global0.c.x), vec3<bool>(false, arg_1.x, arg_0.x), vec4<f32>(1491f, var_0.c.x, -1357f, global2.c.x), global0.d, global2.d)), ~global0.e)), !(!vec3<bool>(arg_1.x, true, arg_0.x)), any(!func_2(vec3<u32>(23971u, 0u, global0.e), global0.d.x, true, Struct_1(global2.c, vec3<bool>(global0.b.x, global0.b.x, false), global0.c, arg_0.zzy, global0.e)).yx)), global0.e);
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    let var_0 = func_5(vec4<bool>(func_3(Struct_2(global2.a | vec3<i32>(global2.b.x, -1i, u_input.a), reverseBits(vec2<i32>(global2.e.x, -32651i)), _wgslsmith_div_vec2_f32(global2.c, vec2<f32>(-1011f, arg_1.a.x)), _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(global0.e, global0.e)), vec2<i32>(-23800i, -2147483647i)), func_5(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, arg_1.b.x, false), false), vec3<bool>(true, false, arg_1.b.x))).x, global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.c.x))) < _wgslsmith_f_op_f32(-209f - -1305f), true), arg_1.b);
    global1 = array<vec4<f32>, 27>();
    let var_1 = !select(!select(func_3(Struct_2(vec3<i32>(-1i, global2.e.x, u_input.a), vec2<i32>(global2.e.x, 57464i), global0.c.zw, var_0.e, global2.b), Struct_1(vec2<f32>(-1630f, -651f), arg_1.b, vec4<f32>(global2.c.x, var_0.a.x, global0.c.x, -719f), global0.b, 4294967295u)), vec4<bool>(false, true, var_0.d.x, global0.b.x), var_0.d.x), func_3(Struct_2(min(vec3<i32>(global2.b.x, -26492i, u_input.a), global2.a), -global2.a.xy, _wgslsmith_div_vec2_f32(global2.c, global2.c), abs(var_0.e), global2.e ^ vec2<i32>(global2.b.x, global2.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a * vec2<f32>(-130f, 340f)), vec3<bool>(var_0.b.x, global0.d.x, false), _wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(var_0.e, 27u)], vec4<f32>(var_0.a.x, global0.a.x, 333f, global0.a.x)), !global0.d, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.x, arg_1.e, 1u), vec4<u32>(1u, var_0.e, 16855u, 12917u)))), any(func_2(vec3<u32>(arg_1.e, global2.d, 14818u), all(vec3<bool>(false, true, global0.b.x)), true, var_0)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global2.c), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(180f, arg_1.a.x))))), select(!vec2<bool>(true, global0.d.x), var_1.zw, func_2(vec3<u32>(4294967295u, 24029u, 0u), true, true, arg_1).zx)))), !vec3<bool>(var_0.b.x, true, any(global0.d.xz) | (global0.b.x && true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.c.x + -1983f), -2559f, arg_1.a.x, _wgslsmith_f_op_f32(max(var_0.a.x, -846f))), _wgslsmith_f_op_vec4_f32(abs(global1[_wgslsmith_index_u32(arg_0.x >> (0u % 32u), 27u)]))))), !select(vec3<bool>(true, true, arg_0.x >= 32357u), !var_1.yxx, func_5(vec4<bool>(false, global0.d.x, false, arg_1.d.x), var_0.b).d), global2.d);
    var var_3 = var_1;
    return !(!arg_1.d.x);
}

fn func_1() -> i32 {
    let var_0 = !func_6(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(23744u, global2.d), vec2<u32>(8367u, global2.d)), vec2<u32>(4294967295u, 16100u) | vec2<u32>(global2.d, 11242u)) ^ vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.e, global2.d, global2.d), vec3<u32>(global2.d, global2.d, global0.e)), ~global0.e), func_5(!(!vec4<bool>(true, global0.d.x, false, true)), select(!global0.b, func_2(vec3<u32>(global0.e, global0.e, global0.e), global0.d.x, global0.b.x, Struct_1(vec2<f32>(-390f, global0.c.x), vec3<bool>(false, global0.b.x, global0.d.x), global1[_wgslsmith_index_u32(global2.d, 27u)], global0.d, 79243u)), false)));
    let var_1 = abs(global2.e);
    let var_2 = var_1.x >= u_input.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(676f, global0.c.x, global0.a.x), vec3<f32>(global0.c.x, 1629f, global2.c.x), var_2 != false)), vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(ceil(global2.c.x)), -868f), func_5(select(vec4<bool>(var_2, var_0, true, false), vec4<bool>(false, var_2, false, var_2), true), vec3<bool>(true, true, true)).d)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global0.c.yxw))), _wgslsmith_f_op_vec3_f32(global0.c.wwz + _wgslsmith_f_op_vec3_f32(-global0.c.zyw))))))));
    global1 = array<vec4<f32>, 27>();
    return ~u_input.a;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    global0 = arg_1;
    var var_0 = func_5(!(!vec4<bool>(all(vec2<bool>(arg_1.d.x, global0.b.x)), !global0.d.x, !arg_1.b.x, arg_1.d.x && global0.d.x)), select(func_2(vec3<u32>(1u, 1u, 67517u) & ~arg_2, func_6(~arg_2.yz, Struct_1(global0.a, global0.d, vec4<f32>(855f, arg_0.c.x, global2.c.x, -792f), arg_1.d, arg_1.e)), !(false && arg_1.d.x), Struct_1(arg_1.c.zw, vec3<bool>(false, true, true), _wgslsmith_div_vec4_f32(global0.c, global0.c), !vec3<bool>(global0.b.x, global0.d.x, arg_1.d.x), global0.e)), vec3<bool>(true, true, true), vec3<bool>(true, !global0.d.x, arg_1.d.x)));
    global0 = arg_1;
    let var_1 = Struct_2(global2.a, _wgslsmith_sub_vec2_i32(~abs(vec2<i32>(global2.a.x, 1i)), _wgslsmith_mod_vec2_i32(arg_0.b, -vec2<i32>(-1i, -1i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)), !arg_1.d.zx))), 0u, ~arg_0.e);
    var_0 = func_5(!vec4<bool>(true, true, any(select(vec2<bool>(false, arg_1.d.x), vec2<bool>(arg_1.b.x, true), arg_1.d.yy)), arg_1.d.x), func_3(Struct_2(vec3<i32>(var_1.e.x | 1i, ~0i, var_1.e.x), arg_0.a.yy, global0.c.zz, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, global0.e, global0.e, var_1.d), vec4<u32>(29363u, 4294967295u, 4376u, 1u)) ^ _wgslsmith_mod_u32(9074u, arg_0.d), ~vec2<i32>(arg_0.e.x, 1i)), Struct_1(var_0.a, func_2(vec3<u32>(global2.d, 1u, 15726u), global2.d <= 4294967295u, !arg_1.b.x, Struct_1(vec2<f32>(894f, 116f), arg_1.d, vec4<f32>(1000f, arg_0.c.x, global2.c.x, global2.c.x), arg_1.d, arg_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), func_5(!vec4<bool>(arg_1.d.x, arg_1.b.x, false, true), func_5(vec4<bool>(false, arg_1.b.x, true, true), var_0.d).d).b, 99375u)).yzz);
    return Struct_1(global0.a, vec3<bool>(all(var_0.b.zx), !(!global0.b.x), var_0.b.x), _wgslsmith_f_op_vec4_f32(-global0.c), vec3<bool>(global0.d.x, any(global0.b.yx), global0.d.x), _wgslsmith_add_u32(arg_1.e, _wgslsmith_mod_u32(~arg_1.e, 0u)) >> (51890u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(~u_input.a | _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(global2.a.x, global2.b.x), _wgslsmith_div_vec2_i32(global2.b, global2.a.zz)), -global2.e), _wgslsmith_mult_i32(countOneBits(1619i), u_input.a & reverseBits(-u_input.a)), 10485i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~(global2.a | vec3<i32>(u_input.a, global2.e.x, global2.a.x)), global2.a), global2.a));
    global0 = func_7(Struct_2(vec3<i32>(global2.e.x & -1i, func_1(), 2147483647i), firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-40887i, var_0.x), -var_0.xw)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2.c, global0.c.xy) * global0.c.wz)), ~global0.e | _wgslsmith_mod_u32(abs(2036u), _wgslsmith_mult_u32(global0.e, global0.e)), global2.a.xx), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.c) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1514f, global0.c.x)))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.c.x, -117f)))), global0.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global0.c)), vec4<f32>(_wgslsmith_f_op_f32(step(-2399f, global2.c.x)), 365f, global0.a.x, _wgslsmith_f_op_f32(-1281f - global2.c.x))), vec3<bool>(false, !(2147483647i != var_0.x), all(!vec4<bool>(global0.d.x, true, true, global0.d.x))), 29508u), ~vec3<u32>(global0.e, global2.d, 44308u));
    var var_1 = reverseBits(vec2<u32>(global2.d ^ ~4294967295u, func_5(!vec4<bool>(global0.d.x, global0.d.x, false, global0.b.x), !global0.b).e)) | ~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(38146u, global2.d), vec2<u32>(global0.e, 4294967295u), vec2<u32>(0u, global0.e)) | select(vec2<u32>(4294967295u, 0u), vec2<u32>(85176u, 12946u), global0.d.x), _wgslsmith_add_vec2_u32(vec2<u32>(global0.e, 0u), abs(vec2<u32>(1u, 4294967295u))), vec2<bool>(global0.b.x, 29079u >= global0.e));
    var var_2 = func_5(vec4<bool>(true, global0.d.x | all(func_2(vec3<u32>(var_1.x, 14064u, global0.e), false, false, Struct_1(global0.c.zy, global0.d, vec4<f32>(-759f, global2.c.x, global0.c.x, global0.c.x), vec3<bool>(true, true, global0.d.x), var_1.x))), !(-10359i != -global2.b.x), false == (func_7(Struct_2(vec3<i32>(18905i, -1i, 15098i), global2.e, vec2<f32>(122f, 134f), 93990u, vec2<i32>(-25809i, global2.a.x)), Struct_1(vec2<f32>(global0.a.x, global2.c.x), global0.d, global1[_wgslsmith_index_u32(global0.e, 27u)], global0.b, 0u), vec3<u32>(1u, global2.d, global0.e)).e <= 8717u)), vec3<bool>(func_3(Struct_2(abs(vec3<i32>(0i, u_input.a, 54933i)), -global2.b, global0.a, ~27782u, vec2<i32>(2147483647i, -12931i) >> (vec2<u32>(var_1.x, 26951u) % vec2<u32>(32u))), func_5(select(vec4<bool>(false, true, false, global0.b.x), vec4<bool>(true, global0.d.x, true, false), false), select(global0.d, vec3<bool>(global0.d.x, false, false), global0.b))).x, false, !global0.b.x));
    var_1 = vec2<u32>(~_wgslsmith_add_u32(~(~15002u), var_1.x), ~(~abs(~8824u)));
    var var_3 = ~(-var_0.xw);
    var var_4 = Struct_1(vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * global0.a.x), _wgslsmith_f_op_f32(var_2.a.x - 1367f))))), vec3<bool>(var_2.d.x, true, any(var_2.d.zx)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(801f, 1000f), func_7(Struct_2(var_0.zwz, var_0.yz, global0.a, 1u, vec2<i32>(global2.a.x, -2147483647i)), Struct_1(vec2<f32>(global2.c.x, -299f), vec3<bool>(var_2.d.x, var_2.d.x, var_2.b.x), vec4<f32>(global2.c.x, global0.c.x, var_2.c.x, -1521f), vec3<bool>(true, true, global0.b.x), var_2.e), vec3<u32>(var_2.e, global2.d, 7813u)).c.x)), _wgslsmith_f_op_f32(trunc(func_5(vec4<bool>(true, var_2.b.x, var_2.b.x, var_2.d.x), vec3<bool>(var_2.b.x, var_2.d.x, true)).c.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_2.a.x, -429f))), global0.c.x), var_2.c)), vec3<bool>(any(select(!vec3<bool>(var_2.d.x, false, var_2.d.x), !vec3<bool>(global0.d.x, false, true), var_2.d)), all(func_5(vec4<bool>(var_2.b.x, global0.b.x, var_2.b.x, true), vec3<bool>(global0.d.x, true, false)).b.xz) && select(select(var_2.d.x, var_2.d.x, true), false, true), false), var_1.x);
    let var_5 = firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.yx, vec2<i32>(2147483647i, u_input.a)), global2.e.x, global2.a.x | 0i, ~(-26320i)), min(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, u_input.a, var_3.x, var_3.x), vec4<i32>(global2.a.x, -2147483647i, 2147483647i, var_0.x)), vec4<i32>(var_0.x, 2147483647i, global2.e.x, 18478i)))) & ((vec4<i32>(2147483647i, func_4(false), u_input.a << (4294967295u % 32u), 0i) & (_wgslsmith_div_vec4_i32(vec4<i32>(28231i, var_3.x, 2147483647i, 31352i), vec4<i32>(u_input.a, 2147483647i, 1i, 1i)) & vec4<i32>(var_0.x, -34619i, -45401i, 44832i))) & (vec4<i32>(global2.e.x, 1i ^ var_0.x, -2147483647i, 1i) ^ _wgslsmith_add_vec4_i32(vec4<i32>(0i, -59581i, -2147483647i, var_3.x), vec4<i32>(var_0.x, var_3.x, -1i, u_input.a))));
    var_3 = vec2<i32>(firstLeadingBit(var_5.x), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(0i, 0i, _wgslsmith_div_vec3_u32(abs(~(vec3<u32>(4294967295u, var_1.x, 46666u) & vec3<u32>(7359u, var_4.e, var_1.x))), countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(14722u, var_1.x, 1u), vec3<u32>(1u, var_2.e, var_2.e)), vec3<u32>(global2.d, var_1.x, var_4.e) << (vec3<u32>(var_1.x, 1u, 35537u) % vec3<u32>(32u))))), -firstTrailingBit(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.x, var_3.x, 13444i, -14258i), var_5, var_5))), 0u);
}

