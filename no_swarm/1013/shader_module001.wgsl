struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(true, vec4<bool>(true, true, true, true), -1693f, i32(-2147483648), vec3<i32>(12079i, 18084i, -1i)));

var<private> global1: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(0u, 0u, 73203u), vec3<u32>(24932u, 72595u, 39228u), vec3<u32>(1u, 4294967295u, 22906u), vec3<u32>(0u, 4294967295u, 3452u), vec3<u32>(27752u, 18682u, 1u), vec3<u32>(27900u, 27327u, 4294967295u), vec3<u32>(1u, 9393u, 4294967295u), vec3<u32>(91218u, 33045u, 0u), vec3<u32>(0u, 4294967295u, 6964u), vec3<u32>(0u, 1u, 0u), vec3<u32>(0u, 0u, 42563u), vec3<u32>(0u, 38940u, 1u), vec3<u32>(53917u, 0u, 0u), vec3<u32>(1u, 13334u, 6659u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(46364u, 76765u, 1u), vec3<u32>(1u, 24711u, 24742u), vec3<u32>(52897u, 2424u, 0u), vec3<u32>(38540u, 1u, 0u), vec3<u32>(1u, 1u, 83925u), vec3<u32>(31043u, 1u, 1u), vec3<u32>(1u, 0u, 80885u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 24806u, 4294967295u), vec3<u32>(0u, 17769u, 0u), vec3<u32>(1u, 48890u, 4294967295u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec2<u32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1145f + global0.a.c))) * 832f));
    let var_1 = !(60045u <= _wgslsmith_dot_vec3_u32(~(~global1[_wgslsmith_index_u32(4294967295u, 26u)]), select(~vec3<u32>(0u, u_input.d, arg_2.x), global1[_wgslsmith_index_u32(4294967295u, 26u)], select(true, global0.a.a, true))));
    var var_2 = ~global1[_wgslsmith_index_u32(countOneBits(u_input.d), 26u)];
    let var_3 = global0.a.e;
    var var_4 = Struct_3(Struct_1(true, global0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global0.a.c)), _wgslsmith_f_op_f32(-1275f + global0.a.c)))), 1i, ~global0.a.e));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(186f, 742f)) * vec2<f32>(global0.a.c, 400f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.c, var_4.a.c) - vec2<f32>(var_4.a.c, var_0))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_4.a.c, _wgslsmith_f_op_f32(-1374f * var_0)))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-839f * _wgslsmith_f_op_f32(floor(var_0))))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32, arg_3: vec3<i32>) -> vec4<bool> {
    global0 = arg_1;
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(arg_1.a.e.zy, select(vec2<i32>(firstTrailingBit(-1i), arg_3.x), vec2<i32>(countOneBits(arg_0.a.d), 0i), select(false, any(vec3<bool>(true, true, false)), arg_0.a.a & arg_0.a.b.x)), ~abs(~u_input.e))));
    global1 = array<vec3<u32>, 26>();
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, 107f) + _wgslsmith_f_op_f32(-arg_2))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.c))));
    return select(!select(arg_0.a.b, vec4<bool>(false, global0.a.b.x, any(vec4<bool>(false, arg_0.a.b.x, true, arg_0.a.b.x)), any(vec2<bool>(false, false))), vec4<bool>(true, arg_1.a.b.x, all(arg_1.a.b), true)), vec4<bool>(any(arg_1.a.b), true, all(arg_0.a.b.yww), !(!arg_1.a.a)), true);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_3 {
    global1 = array<vec3<u32>, 26>();
    var var_0 = Struct_3(Struct_1(false, select(!func_2(Struct_3(arg_0.d), Struct_3(Struct_1(global0.a.b.x, arg_3.a.b, -1024f, 16638i, vec3<i32>(56128i, global0.a.e.x, -30341i))), arg_3.a.c, global0.a.e), !vec4<bool>(global0.a.b.x, false, true, arg_3.a.b.x), vec4<bool>(all(arg_0.e.b.zy), arg_2.x, global0.a.a & true, true)), _wgslsmith_f_op_f32(f32(-1f) * -637f), 0i, ~abs(min(vec3<i32>(arg_3.a.e.x, 1i, global0.a.e.x), arg_0.d.e))));
    var_0 = Struct_3(arg_3.a);
    var var_1 = var_0.a.b.zwz;
    var_1 = !vec3<bool>(var_1.x, var_1.x, false & (!arg_3.a.b.x || arg_3.a.a));
    return arg_3;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_2(func_1(Struct_2(arg_1.a, vec2<u32>(arg_2.x >> (18302u % 32u), ~u_input.c), _wgslsmith_sub_i32(min(0i, 2147483647i), 2147483647i), func_1(Struct_2(Struct_1(global0.a.b.x, vec4<bool>(arg_1.a.b.x, true, global0.a.b.x, arg_1.a.a), 652f, arg_1.a.e.x, global0.a.e), u_input.e, global0.a.e.x, Struct_1(global0.a.b.x, arg_1.a.b, arg_1.a.c, 18129i, vec3<i32>(u_input.a, -26595i, 61710i)), Struct_1(global0.a.a, arg_1.a.b, -311f, arg_1.a.d, vec3<i32>(global0.a.e.x, global0.a.d, 1i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1032f, global0.a.c, global0.a.c)), !vec4<bool>(global0.a.b.x, false, arg_1.a.a, arg_1.a.a), func_1(Struct_2(Struct_1(true, vec4<bool>(arg_1.a.b.x, false, global0.a.a, false), arg_1.a.c, 0i, vec3<i32>(63688i, 0i, 0i)), arg_2, 0i, arg_1.a, global0.a), vec3<f32>(-440f, -1414f, global0.a.c), arg_1.a.b, Struct_3(Struct_1(arg_1.a.a, global0.a.b, arg_0, -1i, vec3<i32>(arg_1.a.d, global0.a.d, -2147483647i))))).a, func_1(Struct_2(Struct_1(arg_1.a.b.x, vec4<bool>(global0.a.a, global0.a.b.x, false, true), 749f, arg_1.a.e.x, arg_1.a.e), vec2<u32>(50500u, u_input.d), 34247i, Struct_1(arg_1.a.a, vec4<bool>(global0.a.a, true, arg_1.a.b.x, false), -601f, 0i, arg_1.a.e), Struct_1(false, arg_1.a.b, 551f, global0.a.e.x, arg_1.a.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.c, -950f, -559f)), !vec4<bool>(true, false, arg_1.a.b.x, false), arg_1).a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-124f, arg_1.a.c, -1010f), vec3<f32>(arg_1.a.c, 2167f, -703f))))), arg_1.a.b, func_1(Struct_2(func_1(Struct_2(arg_1.a, arg_2, arg_1.a.e.x, arg_1.a, global0.a), vec3<f32>(global0.a.c, -1783f, global0.a.c), global0.a.b, arg_1).a, ~vec2<u32>(u_input.d, 1u), -1i, global0.a, Struct_1(arg_1.a.b.x, vec4<bool>(arg_1.a.a, global0.a.b.x, arg_1.a.a, true), arg_0, arg_1.a.e.x, arg_1.a.e)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(545f, 1000f, arg_0))), !vec4<bool>(true, arg_1.a.b.x, global0.a.a, global0.a.a), arg_1)).a, _wgslsmith_sub_vec2_u32(vec2<u32>(95021u, u_input.e.x), arg_2), -(52237i & firstTrailingBit(1i)) ^ (u_input.a & ((global0.a.d << (arg_2.x % 32u)) | _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-2147483647i, global0.a.e.x)))), Struct_1(countOneBits(arg_1.a.d) >= _wgslsmith_mod_i32(72163i, 19239i >> (u_input.e.x % 32u)), !(!arg_1.a.b), arg_0, -4542i, global0.a.e & global0.a.e), func_1(Struct_2(Struct_1(arg_1.a.a, !arg_1.a.b, -255f, 2147483647i >> (1u % 32u), global0.a.e), arg_2, global0.a.d, Struct_1(any(vec2<bool>(arg_1.a.a, false)), !vec4<bool>(true, arg_1.a.b.x, global0.a.a, true), 1f, global0.a.d, _wgslsmith_add_vec3_i32(global0.a.e, vec3<i32>(global0.a.d, u_input.a, global0.a.e.x))), global0.a), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.c), _wgslsmith_f_op_f32(306f + arg_0), _wgslsmith_f_op_f32(select(-1151f, arg_0, global0.a.a))))), !vec4<bool>(false, global0.a.d > -1i, true, true), func_1(Struct_2(func_1(Struct_2(Struct_1(global0.a.b.x, arg_1.a.b, -188f, u_input.b.x, vec3<i32>(-1i, global0.a.d, u_input.a)), vec2<u32>(arg_2.x, 19005u), -2147483647i, arg_1.a, global0.a), vec3<f32>(-476f, arg_0, 226f), global0.a.b, arg_1).a, reverseBits(u_input.e), arg_1.a.e.x, global0.a, func_1(Struct_2(arg_1.a, u_input.e, 1893i, arg_1.a, Struct_1(true, global0.a.b, -605f, 35828i, arg_1.a.e)), vec3<f32>(arg_1.a.c, 444f, arg_1.a.c), vec4<bool>(false, arg_1.a.b.x, global0.a.b.x, arg_1.a.b.x), arg_1).a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_1.a.c, arg_1.a.c) + vec3<f32>(277f, arg_0, -242f))), !func_2(arg_1, arg_1, arg_0, arg_1.a.e), func_1(Struct_2(Struct_1(arg_1.a.b.x, arg_1.a.b, -1122f, 1i, arg_1.a.e), vec2<u32>(arg_2.x, 4294967295u), global0.a.d, Struct_1(arg_1.a.b.x, vec4<bool>(false, global0.a.b.x, arg_1.a.a, true), arg_0, -17202i, global0.a.e), global0.a), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, 833f, arg_0))), vec4<bool>(true, global0.a.b.x, global0.a.b.x, true), arg_1))).a);
    return Struct_2(Struct_1(true, !vec4<bool>(true, true, false, global0.a.a), _wgslsmith_f_op_f32(-498f + _wgslsmith_div_f32(-181f, _wgslsmith_f_op_f32(-323f + 189f))), ~(~0i), ~firstLeadingBit(vec3<i32>(0i, 47801i, global0.a.e.x))), max(_wgslsmith_mod_vec2_u32(~abs(vec2<u32>(var_0.b.x, 41014u)), select(select(var_0.b, u_input.e, true), abs(vec2<u32>(1u, u_input.d)), !vec2<bool>(false, var_0.e.a))), ~abs(vec2<u32>(var_0.b.x, var_0.b.x)) & vec2<u32>(arg_2.x & 1u, ~4294967295u)), (u_input.b.x << (1u % 32u)) << (68494u % 32u), func_1(Struct_2(arg_1.a, max(vec2<u32>(60883u, arg_2.x) & var_0.b, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_2.x), u_input.e)), -1i, Struct_1(true, func_2(Struct_3(global0.a), arg_1, 1076f, vec3<i32>(1i, u_input.a, global0.a.e.x)), arg_1.a.c, abs(-1i), -global0.a.e), Struct_1(true, select(arg_1.a.b, vec4<bool>(false, false, arg_1.a.a, true), vec4<bool>(false, true, false, true)), -318f, select(u_input.b.x, -1i, false), arg_1.a.e)), vec3<f32>(arg_1.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.c * global0.a.c)), _wgslsmith_f_op_f32(step(arg_0, -146f))), global0.a.b, func_1(Struct_2(func_1(Struct_2(Struct_1(arg_1.a.b.x, var_0.a.b, 1205f, u_input.b.x, vec3<i32>(var_0.c, global0.a.d, arg_1.a.d)), arg_2, arg_1.a.d, var_0.d, Struct_1(true, vec4<bool>(arg_1.a.a, arg_1.a.a, global0.a.b.x, true), -2088f, var_0.a.e.x, vec3<i32>(u_input.a, global0.a.d, u_input.a))), vec3<f32>(var_0.a.c, arg_1.a.c, arg_1.a.c), arg_1.a.b, Struct_3(arg_1.a)).a, _wgslsmith_mult_vec2_u32(arg_2, vec2<u32>(arg_2.x, 6779u)), global0.a.d, func_1(Struct_2(global0.a, arg_2, global0.a.e.x, global0.a, var_0.a), vec3<f32>(arg_1.a.c, arg_0, global0.a.c), vec4<bool>(arg_1.a.b.x, var_0.d.a, false, true), Struct_3(var_0.a)).a, func_1(Struct_2(Struct_1(global0.a.b.x, vec4<bool>(false, arg_1.a.a, arg_1.a.b.x, false), var_0.d.c, var_0.c, vec3<i32>(u_input.b.x, arg_1.a.e.x, 1i)), u_input.e, -30654i, var_0.d, global0.a), vec3<f32>(global0.a.c, arg_0, -126f), arg_1.a.b, Struct_3(Struct_1(global0.a.b.x, vec4<bool>(true, global0.a.b.x, global0.a.a, false), -100f, u_input.a, arg_1.a.e))).a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 479f, arg_0), vec3<f32>(-618f, arg_1.a.c, arg_1.a.c), vec3<bool>(global0.a.a, false, arg_1.a.a))), vec3<f32>(112f, 1243f, -1469f), false)), !func_1(Struct_2(arg_1.a, var_0.b, global0.a.e.x, Struct_1(arg_1.a.a, var_0.e.b, arg_1.a.c, 1i, vec3<i32>(-2696i, 19985i, -57612i)), Struct_1(false, global0.a.b, 190f, u_input.a, arg_1.a.e)), vec3<f32>(-1657f, arg_1.a.c, -1217f), vec4<bool>(false, var_0.a.b.x, global0.a.a, false), Struct_3(Struct_1(true, arg_1.a.b, var_0.a.c, 30991i, var_0.d.e))).a.b, arg_1)).a, Struct_1(var_0.e.a, !(!(!vec4<bool>(true, global0.a.a, true, var_0.e.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c * arg_0)))), _wgslsmith_dot_vec3_i32(-(vec3<i32>(global0.a.e.x, var_0.d.e.x, 26118i) >> (vec3<u32>(u_input.d, arg_2.x, 78370u) % vec3<u32>(32u))), firstTrailingBit(~var_0.a.e)), arg_1.a.e));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = ~_wgslsmith_div_vec2_i32(select(vec2<i32>(-1i) * -vec2<i32>(global0.a.d, arg_1.c), global0.a.e.yy, all(global0.a.b.wxw)), vec2<i32>(~arg_1.e.d, _wgslsmith_sub_i32(countOneBits(19206i), ~51296i)));
    global0 = Struct_3(func_4(arg_0.x, Struct_3(Struct_1(false, global0.a.b, _wgslsmith_f_op_f32(-arg_1.e.c), _wgslsmith_mult_i32(arg_2, global0.a.e.x), ~arg_1.a.e)), (~vec2<u32>(arg_1.b.x, 1u) >> (~vec2<u32>(4294967295u, 34453u) % vec2<u32>(32u))) ^ u_input.e).d);
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-670f, global0.a.c, arg_3.c, arg_1.d.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1895f, -1392f, -1146f, -992f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, arg_3.c, 441f, global0.a.c), vec4<f32>(-1177f, -1223f, arg_0.x, -962f)))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(func_1(Struct_2(global0.a, u_input.e, 1503i, global0.a, arg_3), arg_0, vec4<bool>(true, true, false, true), Struct_3(Struct_1(false, vec4<bool>(global0.a.b.x, true, true, arg_1.d.a), arg_1.e.c, 4361i, vec3<i32>(u_input.a, 23721i, arg_1.c)))).a.c)), 245f, global0.a.c, var_1.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, arg_3.c, -1508f, global0.a.c))), vec4<f32>(432f, var_1.x, -1038f, var_1.x))) * vec4<f32>(-2450f, global0.a.c, arg_3.c, 1000f))), vec4<f32>(arg_3.c, 1909f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-393f)) * _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(arg_1.d.e.zy, global0.a.e.xz, arg_1.b)).x, 310f)))));
    var var_3 = arg_0;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-713f + -341f), 237f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(155f, global0.a.c))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-704f, global0.a.c))) + _wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.c, 1138f, -416f)))), func_4(global0.a.c, func_1(Struct_2(Struct_1(global0.a.b.x, global0.a.b, -793f, -37411i, vec3<i32>(-2147483647i, global0.a.e.x, -14667i)), vec2<u32>(26654u, 42464u), global0.a.e.x, Struct_1(global0.a.b.x, global0.a.b, 998f, u_input.b.x, vec3<i32>(u_input.a, u_input.b.x, u_input.b.x)), global0.a), vec3<f32>(global0.a.c, global0.a.c, 856f), global0.a.b, Struct_3(global0.a)), ~vec2<u32>(u_input.e.x, u_input.e.x)), global0.a.e.x, Struct_1(false, vec4<bool>(true, true, global0.a.b.x, false), _wgslsmith_div_f32(-1316f, -731f), global0.a.e.x ^ 0i, -vec3<i32>(global0.a.e.x, 0i, -31869i))))), false));
    let var_1 = ~(~(~(~global1[_wgslsmith_index_u32(1u, 26u)])));
    let var_2 = global0.a;
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, vec4<f32>(_wgslsmith_f_op_f32(var_2.c - -155f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_2.c)), var_0.x, all(vec3<bool>(false, var_2.b.x, var_2.b.x)))), _wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(-1i, -2147483647i)), firstTrailingBit(global0.a.e.xy), firstLeadingBit(var_1.yy))).x), 1000f), 5838u, u_input.b.x, abs(vec3<i32>(-1i) * -(vec3<i32>(var_2.e.x, u_input.a, global0.a.e.x) | var_2.e)));
}

