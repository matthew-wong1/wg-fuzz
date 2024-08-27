struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(-46670i), Struct_1(37730i), Struct_1(-13385i), Struct_1(-27060i), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(19414i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(29257i), Struct_1(6764i), Struct_1(i32(-2147483648)));

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global2: f32;

var<private> global3: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(-772f, 479f), vec2<f32>(730f, -1000f), vec2<f32>(1614f, -1233f), vec2<f32>(-1000f, -1012f), vec2<f32>(427f, -1176f), vec2<f32>(-482f, 1029f), vec2<f32>(-1058f, -1726f), vec2<f32>(1000f, 221f), vec2<f32>(910f, -435f), vec2<f32>(547f, -531f), vec2<f32>(-219f, 863f), vec2<f32>(-1121f, -742f), vec2<f32>(-425f, -332f), vec2<f32>(473f, -1375f), vec2<f32>(-720f, 842f), vec2<f32>(-1000f, -1050f), vec2<f32>(-590f, -785f), vec2<f32>(1333f, -949f), vec2<f32>(1116f, 301f), vec2<f32>(1000f, -140f), vec2<f32>(-1000f, 241f), vec2<f32>(-1205f, 871f));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> bool {
    let var_0 = -arg_0;
    let var_1 = vec4<f32>(arg_1, -1878f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * 276f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * -1247f) * _wgslsmith_f_op_f32(ceil(-1571f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1257f + _wgslsmith_f_op_f32(f32(-1f) * -767f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 * arg_1))), 1147f)))));
    let var_2 = ~vec3<u32>(_wgslsmith_mod_u32(countOneBits(61431u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(18508u, 3193u, 0u), vec3<u32>(48310u, 66530u, 2463u))), ~1u, reverseBits(1u));
    let var_3 = global0[_wgslsmith_index_u32(var_2.x, 15u)];
    var var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(195f * var_1.x), _wgslsmith_f_op_f32(var_1.x * arg_1)) - 1936f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_f32(-var_1.x)));
    return 1u <= _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(max(var_2.yy, var_2.xy), reverseBits(vec2<u32>(var_2.x, 1u))), firstLeadingBit(1u)), 0u);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: vec4<i32>) -> vec3<f32> {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(~(~7319u) >> (1u % 32u), 15u)], Struct_1(0i));
    let var_1 = vec3<bool>(global1.x, func_3(-abs(arg_3), -559f) && global1.x, any(select(global1.wxx, global1.zwz, any(!global1.xyw))));
    let var_2 = Struct_3(arg_2, _wgslsmith_sub_i32(16512i, firstTrailingBit(_wgslsmith_clamp_i32(1i, countOneBits(40533i), u_input.c | u_input.c))), Struct_1(~u_input.c), Struct_1(~35030i), vec4<bool>(!(var_1.x | !var_1.x), true, true, true));
    let var_3 = global0[_wgslsmith_index_u32(reverseBits(select(_wgslsmith_add_u32(_wgslsmith_sub_u32(4812u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1933u), vec2<u32>(0u, 54062u))), 0u), min(17266u, ~abs(16707u)), global1.x)), 15u)];
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(-var_2.a), 2147483647i, Struct_1(_wgslsmith_sub_i32(u_input.c, var_0.b.a & 0i) >> (1u % 32u)), Struct_1(var_3.a), select(vec4<bool>(true, true, true, true), vec4<bool>(!(u_input.b > -19128i), true, !all(var_2.e), select(all(global1.wz), func_3(arg_3, -744f), true)), true));
    return vec3<f32>(166f, 284f, var_4.a.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec4<u32>) -> vec3<f32> {
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    var var_0 = Struct_1(arg_1.b);
    let var_1 = _wgslsmith_f_op_f32(-649f - 1124f);
    let var_2 = 2147483647i;
    return _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-1808f * arg_1.a.x))), -430f)));
}

fn func_1(arg_0: u32, arg_1: i32) -> vec2<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2224f, -223f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1029f, -1656f, -139f) + vec3<f32>(-1687f, 461f, -187f)))) - _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1772f, -1258f, -1417f)), vec2<f32>(434f, -1000f), vec3<f32>(-445f, -170f, -525f), -vec4<i32>(arg_1, -2218i, 1i, -12894i))), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1502f, 813f) * vec3<f32>(-657f, -753f, -380f)), _wgslsmith_add_i32(arg_1, arg_1), Struct_1(-25756i), global0[_wgslsmith_index_u32(1u, 15u)], select(vec4<bool>(true, global1.x, true, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, false))), firstLeadingBit(abs(vec4<u32>(arg_0, 35670u, arg_0, 34529u)))))), arg_1, global0[_wgslsmith_index_u32(76351u, 15u)], Struct_1(arg_1), select(!(!(!vec4<bool>(global1.x, false, global1.x, true))), select(vec4<bool>(select(true, global1.x, true), global1.x, global1.x, func_3(vec4<i32>(u_input.c, arg_1, arg_1, -28182i), 1335f)), select(!vec4<bool>(global1.x, false, false, false), select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false), global1.x)), global1.x), global1.x));
    let var_1 = _wgslsmith_f_op_f32(max(var_0.a.x, 255f));
    global0 = array<Struct_1, 15>();
    let var_2 = Struct_1(var_0.d.a ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-43394i ^ var_0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.a, -24057i), vec2<i32>(u_input.c, 1i)), 18860i), select(-vec3<i32>(6339i, 25038i, 20876i), _wgslsmith_mod_vec3_i32(vec3<i32>(-31340i, 1i, arg_1), u_input.a), vec3<bool>(global1.x, false, true))));
    var var_3 = select(vec2<bool>(!any(!vec2<bool>(global1.x, global1.x)), !(reverseBits(u_input.c) < 695i)), select(global1.wx, !global1.yz, global1.xz), global1.zz);
    return _wgslsmith_mult_vec2_i32(~countOneBits(firstLeadingBit(u_input.a.zy)), ~reverseBits((u_input.a.yz << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))) | -u_input.a.yx));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(false, !(!global1.x || global1.x), any(vec4<bool>(!global1.x, true, true, true && global1.x)) | true, _wgslsmith_add_i32(firstLeadingBit(u_input.b & u_input.b), -(~(-14678i))) < _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-u_input.a.yx, vec2<i32>(1i, -1494i)), func_1(4294967295u, 1i) >> (~vec2<u32>(18948u, 71601u) % vec2<u32>(32u))));
    var var_0 = all(select(!select(!vec2<bool>(global1.x, true), global1.yz, vec2<bool>(global1.x, global1.x)), vec2<bool>(global1.x == any(global1.yw), true), select(!select(global1.zz, global1.xw, global1.yx), select(select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x), global1.x), global1.zz, any(vec4<bool>(false, false, true, global1.x))), !vec2<bool>(false, global1.x))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), _wgslsmith_sub_i32(24498i, countOneBits(33657i)), global0[_wgslsmith_index_u32(1u, 15u)], Struct_1(u_input.c), select(vec4<bool>(all(global1.yyw), global1.x, true, !global1.x), vec4<bool>(true, false, any(!vec4<bool>(global1.x, global1.x, false, global1.x)), true), vec4<bool>(any(vec4<bool>(global1.x, global1.x, global1.x, true)), true, true, all(vec3<bool>(false, global1.x, global1.x)))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(2032f, var_1.a.x, 619f) * var_1.a))))), 1i, var_1.d, var_1.d, !var_1.e);
    let var_3 = Struct_3(vec3<f32>(-1308f, -1676f, _wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1500f + 1000f)))), 1i & var_1.b, Struct_1(_wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(-2147483647i, var_2.b, u_input.b, 1i)), min(vec4<i32>(var_2.b, -12351i, 2147483647i, -36034i), vec4<i32>(var_2.c.a, var_1.b, var_1.c.a, 3645i)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, var_1.b, u_input.a.x), vec4<i32>(2147483647i, 0i, u_input.b, var_1.d.a), vec4<i32>(-2147483647i, 3575i, -13341i, 1i)))), global0[_wgslsmith_index_u32(1u, 15u)], select(vec4<bool>(all(vec3<bool>(global1.x, true, false)) & true, all(select(vec4<bool>(true, var_2.e.x, true, true), vec4<bool>(false, global1.x, true, false), var_1.e)), global1.x, true), vec4<bool>(true, var_1.e.x, var_2.e.x, !(!var_2.e.x)), var_2.e));
    let var_4 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u) | ~select(vec2<u32>(33707u, 1u), vec2<u32>(4294967295u, 0u), var_3.e.x), vec2<u32>(25091u, 68779u), ~(~reverseBits(vec2<u32>(4294967295u, 4294967295u)))) | vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1749u, 61717u), ~vec3<u32>(0u, 4294967295u, 1u)), _wgslsmith_mult_u32(32300u, _wgslsmith_mult_u32(4294967295u, 0u))), _wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(1u, 4294967295u, 56417u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, 17947u), vec3<u32>(4725u, 52762u, 16815u)), vec3<bool>(false, false, true)), ~reverseBits(vec3<u32>(59690u, 4294967295u, 51982u))));
    let var_5 = Struct_1(min(abs(u_input.a.x) ^ _wgslsmith_div_i32(~var_3.c.a, ~var_1.d.a), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), ~vec2<i32>(16625i, var_1.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

