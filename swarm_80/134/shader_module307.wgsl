struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(vec2<u32>(4294967295u, 0u)), Struct_4(vec2<u32>(1u, 4294967295u)), Struct_4(vec2<u32>(4294967295u, 0u)), Struct_4(vec2<u32>(0u, 1u)));

var<private> global1: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec4<bool>(false, false, true, false), vec3<i32>(17252i, -9075i, 18011i)), Struct_3(vec4<bool>(false, false, false, false), vec3<i32>(2147483647i, i32(-2147483648), 42341i)), Struct_3(vec4<bool>(true, false, false, true), vec3<i32>(65523i, i32(-2147483648), 2147483647i)), Struct_3(vec4<bool>(false, true, true, true), vec3<i32>(-1i, 1i, 35630i)), Struct_3(vec4<bool>(false, false, true, false), vec3<i32>(1i, -5764i, i32(-2147483648))), Struct_3(vec4<bool>(true, false, true, true), vec3<i32>(-46776i, 0i, i32(-2147483648))), Struct_3(vec4<bool>(false, true, false, false), vec3<i32>(1i, i32(-2147483648), i32(-2147483648))), Struct_3(vec4<bool>(true, true, true, false), vec3<i32>(2147483647i, -1i, -16472i)), Struct_3(vec4<bool>(true, false, true, false), vec3<i32>(52767i, -15358i, 50710i)), Struct_3(vec4<bool>(false, false, true, true), vec3<i32>(i32(-2147483648), i32(-2147483648), -6775i)), Struct_3(vec4<bool>(true, true, true, true), vec3<i32>(-1503i, 1i, 1i)), Struct_3(vec4<bool>(false, true, false, true), vec3<i32>(2147483647i, -41080i, 9788i)));

var<private> global2: u32;

var<private> global3: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(false, false, true, false)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(false, false, true, true)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(false, true, false, false)));

var<private> global4: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(498f, -1000f, -198f), vec3<f32>(783f, -1258f, -1396f), vec3<f32>(-667f, -1000f, -222f), vec3<f32>(-107f, -205f, 209f), vec3<f32>(1575f, 934f, 765f), vec3<f32>(-357f, -962f, -431f), vec3<f32>(253f, -161f, 1084f), vec3<f32>(1492f, -325f, -1421f), vec3<f32>(-2062f, 694f, -1984f), vec3<f32>(211f, -1000f, 1000f), vec3<f32>(975f, -2591f, 859f), vec3<f32>(-154f, 295f, -945f), vec3<f32>(-135f, 623f, -692f), vec3<f32>(1851f, 1000f, -1000f), vec3<f32>(1343f, -177f, -818f), vec3<f32>(342f, 1230f, 734f), vec3<f32>(372f, 255f, -2227f), vec3<f32>(1882f, 1317f, 914f), vec3<f32>(-661f, -154f, -344f), vec3<f32>(-1198f, 764f, -1000f), vec3<f32>(1004f, 731f, 882f), vec3<f32>(333f, -591f, 186f), vec3<f32>(-848f, 801f, -1221f), vec3<f32>(-1606f, 1130f, -1076f), vec3<f32>(-1159f, -296f, -208f), vec3<f32>(294f, 1000f, 557f), vec3<f32>(-1274f, -1000f, 848f));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global3 = array<Struct_2, 29>();
    var var_0 = !(!vec4<bool>(arg_0.x, true, arg_0.x, !select(arg_0.x, arg_0.x, true)));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(~u_input.a), 64491u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c.x, 4294967295u, 40890u), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.a), vec4<u32>(848u, u_input.a, u_input.c.x, 4294967295u)), vec4<u32>(4294967295u, 38117u, u_input.a, u_input.c.x)), u_input.c.x)), _wgslsmith_sub_vec3_u32(abs(u_input.c), ~u_input.c & u_input.c)), 29u)];
    let var_2 = max(vec3<i32>(u_input.d, _wgslsmith_add_i32(~1i, 0i), _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, -14469i, 52593i, 868i), vec4<i32>(u_input.d, u_input.d, u_input.d, 1i), vec4<i32>(11636i, u_input.d, 19053i, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(12624i, -30493i, u_input.d, -82456i), abs(vec4<i32>(u_input.d, 1724i, -2147483647i, 27806i))))), vec3<i32>(u_input.d, 7777i, ~2147483647i));
    global0 = array<Struct_4, 4>();
    return 4294967295u;
}

fn func_2(arg_0: i32) -> Struct_4 {
    global4 = array<vec3<f32>, 27>();
    let var_0 = Struct_2(!(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))));
    let var_1 = global0[_wgslsmith_index_u32(27985u, 4u)];
    var var_2 = ~func_3(vec3<bool>(var_0.a.x, var_0.a.x, false));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1432f, 173f, 1557f, 107f), vec4<f32>(865f, -326f, -1564f, -1414f), var_0.a))))));
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, ~_wgslsmith_div_u32(_wgslsmith_mult_u32(19356u, select(43605u, 0u, false)), ~(~0u))), 4u)];
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = vec2<u32>(4294967295u, 1u);
    let var_1 = vec2<f32>(-649f, -2040f);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-709f, var_1.x, _wgslsmith_f_op_f32(-var_1.x), -567f)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_2.x, _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_div_f32(var_2.x, -1000f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2872f, var_2.x, var_2.x, 270f) * vec4<f32>(var_2.x, var_1.x, var_1.x, var_2.x)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, var_2.x, var_2.x, 1920f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(223f, var_1.x, var_1.x, var_1.x))))))));
    var var_4 = select(vec2<bool>(false, all(select(select(vec3<bool>(arg_3.x, arg_3.x, arg_3.x), vec3<bool>(false, arg_3.x, arg_3.x), arg_3.x), arg_3.xyy, false))), arg_3.yx, !vec2<bool>(select(!arg_3.x, true | arg_3.x, select(arg_3.x, arg_3.x, arg_3.x)), -115f <= _wgslsmith_f_op_f32(trunc(var_2.x))));
    return Struct_3(!(!arg_3), ~(-_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_1.x, -6268i, -2147483647i), ~vec3<i32>(arg_1.x, arg_0.x, 1i))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32, arg_3: Struct_4) -> Struct_1 {
    global1 = array<Struct_3, 12>();
    let var_0 = ~(~(((vec4<u32>(arg_3.a.x, 4294967295u, arg_3.a.x, u_input.b) << (vec4<u32>(u_input.c.x, u_input.b, 0u, arg_3.a.x) % vec4<u32>(32u))) | firstTrailingBit(vec4<u32>(32090u, u_input.b, 1u, 1u))) << (_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(25705u, 1u, u_input.b, arg_3.a.x), vec4<u32>(1u, 33661u, u_input.c.x, u_input.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 41056u, 1u), vec4<u32>(u_input.c.x, 5175u, u_input.b, arg_3.a.x), vec4<u32>(u_input.a, 4294967295u, u_input.b, arg_3.a.x))) % vec4<u32>(32u))));
    var var_1 = global3[_wgslsmith_index_u32(~countOneBits(~39764u), 29u)];
    var var_2 = func_4(~arg_1.b.zy >> (var_0.xw % vec2<u32>(32u)), select(vec2<i32>(arg_0.b.x, ~firstLeadingBit(arg_0.b.x)), _wgslsmith_sub_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(-5177i, -26301i), arg_1.b.yx), min(arg_1.b.xy | vec2<i32>(arg_0.b.x, 2947i), vec2<i32>(u_input.d, 8783i))), func_4(arg_0.b.xy, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, 5014i), arg_0.b.xx) & vec2<i32>(u_input.d, 2147483647i), func_2(u_input.d), vec4<bool>(2147483647i > arg_0.b.x, var_1.a.x, true, arg_3.a.x > 1u)).a.x), Struct_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(~4294967295u, 0u), select(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_3.a.x), arg_3.a), var_0.wy, 2147483647i != arg_0.b.x), var_0.zz)), vec4<bool>(arg_0.a.x, !var_1.a.x, true, arg_1.b.x < arg_0.b.x));
    var var_3 = Struct_3(vec4<bool>(any(vec4<bool>(func_4(arg_0.b.xy, vec2<i32>(2147483647i, arg_0.b.x), Struct_4(vec2<u32>(0u, 1u)), vec4<bool>(false, var_1.a.x, arg_1.a.x, false)).a.x, -336f <= arg_2, true, 59518u != var_0.x)), any(vec2<bool>(var_1.a.x != false, true)), (~arg_0.b.x == 2147483647i) | true, arg_1.a.x), _wgslsmith_mod_vec3_i32(-arg_0.b, -arg_0.b));
    return Struct_1(reverseBits(_wgslsmith_add_vec2_i32(arg_0.b.xy, vec2<i32>(min(-25620i, u_input.d), 0i))), ~countOneBits(-2147483647i), ~var_0.yww, _wgslsmith_clamp_u32(var_0.x, 4294967295u, _wgslsmith_mod_u32(1u >> ((var_0.x << (22958u % 32u)) % 32u), arg_3.a.x)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<u32>, arg_3: bool) -> u32 {
    let var_0 = -_wgslsmith_add_i32(~(~firstTrailingBit(u_input.d)), 0i);
    global0 = array<Struct_4, 4>();
    let var_1 = func_5(global1[_wgslsmith_index_u32(~7573u, 12u)], func_4(vec2<i32>(-1i, -(i32(-1i) * -1i)), firstLeadingBit(vec2<i32>(1i, u_input.d) ^ vec2<i32>(0i, u_input.d)) >> (vec2<u32>(55285u, ~5072u) % vec2<u32>(32u)), func_2(-1i), select(vec4<bool>(false, true, false, arg_0), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_3, true, true, true), vec4<bool>(arg_3, arg_0, false, true), arg_3), !vec4<bool>(true, arg_3, arg_0, false)))), _wgslsmith_f_op_f32(396f - arg_1), func_2(min(u_input.d >> (1u % 32u), u_input.d)));
    let var_2 = 52009u;
    var var_3 = global1[_wgslsmith_index_u32(0u, 12u)];
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    var var_1 = vec4<bool>(false, !any(vec3<bool>(true, true, u_input.b == u_input.a)), true, (u_input.c.x | u_input.c.x) > ~u_input.c.x);
    var var_2 = vec4<i32>(var_0, ~u_input.d, _wgslsmith_div_i32(~_wgslsmith_clamp_i32(u_input.d, 0i, var_0), -2147483647i) | -4572i, 19479i);
    let var_3 = var_2.yzz | vec3<i32>((i32(-1i) * -2147483647i) << (select(~u_input.c.x, func_1(false, 1366f, vec4<u32>(51669u, u_input.a, 1u, u_input.a), false), var_1.x) % 32u), abs(reverseBits(-var_2.x)), (u_input.d ^ var_0) ^ -var_2.x);
    var var_4 = func_5(global1[_wgslsmith_index_u32(57220u, 12u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(~(~u_input.a)), func_2(var_3.x).a.x >> (~(~u_input.a) % 32u)), 12u)], 1000f, Struct_4(u_input.c.zy));
    let var_5 = Struct_2(select(!func_4(_wgslsmith_mult_vec2_i32(var_4.a, var_2.zx), _wgslsmith_mult_vec2_i32(var_4.a, vec2<i32>(var_2.x, var_2.x)), global0[_wgslsmith_index_u32(~u_input.c.x, 4u)], func_4(vec2<i32>(var_2.x, var_2.x), vec2<i32>(-1i, 2147483647i), global0[_wgslsmith_index_u32(97605u, 4u)], vec4<bool>(true, var_1.x, var_1.x, false)).a).a, vec4<bool>(false, false, var_1.x & true, var_1.x), func_4(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(u_input.d, var_4.a.x))), _wgslsmith_mult_vec2_i32(var_2.zx, vec2<i32>(var_4.a.x, u_input.d)), func_2(_wgslsmith_add_i32(2147483647i, var_3.x)), select(!vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(var_1.x, true, var_1.x, false), any(var_1.yyy))).a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-140f))))))), vec3<u32>(8955u, 4294967295u, ~func_5(Struct_3(vec4<bool>(var_1.x, true, true, false), var_2.wzw), Struct_3(vec4<bool>(var_5.a.x, false, var_5.a.x, true), vec3<i32>(u_input.d, -10791i, var_2.x)), 608f, global0[_wgslsmith_index_u32(4294967295u, 4u)]).c.x >> (_wgslsmith_mult_u32(1u, abs(u_input.a)) % 32u)), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c, u_input.c ^ var_4.c), _wgslsmith_div_vec3_u32(vec3<u32>(var_4.d, var_4.c.x, var_4.c.x), vec3<u32>(0u, 10949u, u_input.a)) >> (vec3<u32>(61353u, u_input.c.x, u_input.c.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(1301f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 619f) - 1717f) * _wgslsmith_f_op_f32(trunc(-1440f)))));
}

