struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32>;

var<private> global1: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(157f, -1535f), vec2<f32>(210f, -1323f), vec2<f32>(472f, -142f), vec2<f32>(-771f, -235f), vec2<f32>(-219f, 1009f), vec2<f32>(1480f, -1191f), vec2<f32>(454f, 664f), vec2<f32>(-1000f, -1000f), vec2<f32>(-130f, 290f), vec2<f32>(-714f, -2485f), vec2<f32>(1000f, 448f), vec2<f32>(1322f, 419f), vec2<f32>(2356f, -174f), vec2<f32>(-517f, -1341f), vec2<f32>(-393f, 908f), vec2<f32>(-1905f, 1160f), vec2<f32>(2048f, 138f), vec2<f32>(-117f, 1962f), vec2<f32>(953f, 572f), vec2<f32>(1456f, -1000f), vec2<f32>(-468f, 529f), vec2<f32>(-1000f, -566f), vec2<f32>(285f, -2106f), vec2<f32>(-102f, -624f), vec2<f32>(-1729f, 432f), vec2<f32>(-897f, -250f), vec2<f32>(1899f, 1570f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_4) -> bool {
    var var_0 = ~_wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.b, arg_1.b, 52013u), vec4<u32>(0u, arg_1.b, arg_1.b, arg_3.b)), reverseBits(~(~vec4<u32>(0u, arg_1.b, 48952u, 0u))), vec4<u32>(reverseBits(_wgslsmith_mult_u32(arg_1.b, 88706u)), 4294967295u, u_input.a, _wgslsmith_div_u32(u_input.b, u_input.b)));
    var_0 = vec4<u32>(arg_3.a.b | _wgslsmith_div_u32(11614u, ~_wgslsmith_dot_vec3_u32(var_0.xxy, var_0.zxx)), arg_3.b, u_input.b, ~(~var_0.x));
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(u_input.d, ~4294967295u)) | arg_1.b, 27u)], arg_3.b, arg_1.c);
    global0 = array<vec4<i32>, 32>();
    var_0 = max(vec4<u32>(abs(~var_0.x), arg_1.b, ~27924u >> (_wgslsmith_div_u32(var_1.b, arg_1.b) % 32u), 5332u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(31727u, arg_3.a.b, arg_1.b, 4294967295u) & vec4<u32>(4294967295u, 0u, 4294967295u, u_input.d), ~vec4<u32>(var_1.b, var_0.x, var_1.b, arg_1.b))) << (_wgslsmith_mod_vec4_u32(min(~vec4<u32>(57436u, 4294967295u, 0u, var_0.x) & firstLeadingBit(vec4<u32>(arg_1.b, 6053u, 1675u, 116172u)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 0u, 24263u, 0u), vec4<u32>(18546u, var_0.x, arg_1.b, 1u)), vec4<u32>(4294967295u, var_1.b, u_input.a, u_input.d))), vec4<u32>(arg_1.b, var_1.b, _wgslsmith_mod_u32(firstTrailingBit(arg_1.b), ~37098u), arg_3.b)) % vec4<u32>(32u));
    return !any(!select(!vec4<bool>(true, arg_1.c, true, true), select(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, var_1.c, var_1.c, var_1.c), false), select(vec4<bool>(false, arg_2.x, var_1.c, arg_1.c), vec4<bool>(arg_1.c, var_1.c, arg_2.x, false), arg_3.a.c)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: f32) -> u32 {
    global1 = array<vec2<f32>, 27>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1374f) + _wgslsmith_f_op_f32(select(arg_1.d.a.x, -424f, arg_1.b.c)))), _wgslsmith_f_op_f32(max(-665f, 408f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.d.a.x * 356f))) - _wgslsmith_f_op_f32(round(arg_2))), arg_1.d.a.x) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1077f)), 642f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1361f + arg_1.b.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-255f * _wgslsmith_f_op_f32(-540f - 571f)) + arg_2)));
    let var_1 = all(select(vec4<bool>(false, !(arg_1.b.c && true), any(vec3<bool>(arg_0, arg_1.d.c, false)) && arg_0, true), vec4<bool>(all(select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(false, arg_0), arg_0)), !(!arg_0), true, any(vec3<bool>(true, true, true))), select(!(!vec4<bool>(true, true, arg_0, arg_0)), !vec4<bool>(arg_0, true, true, arg_1.a), !vec4<bool>(false, arg_0, arg_0, arg_0))));
    let var_2 = Struct_4(Struct_1(vec2<f32>(arg_2, var_0.x), arg_1.b.b, select(!var_1 | (var_1 && false), all(vec3<bool>(true, true, false)) | var_1, !all(vec2<bool>(true, arg_1.b.c)))), arg_1.d.b);
    let var_3 = !vec4<bool>(var_2.a.a.x <= 1366f, all(!select(vec2<bool>(false, true), vec2<bool>(var_1, var_2.a.c), vec2<bool>(var_1, true))), true, true);
    return ~4294967295u;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.b, u_input.d, u_input.d, 0u)) >> (~(~vec4<u32>(19401u, u_input.a, 4294967295u, u_input.d)) % vec4<u32>(32u)), vec4<u32>(~u_input.b, abs(~4294967295u), 4294967295u, ~_wgslsmith_div_u32(u_input.b, 43947u))), 3153u);
    global0 = array<vec4<i32>, 32>();
    let var_1 = u_input.c;
    var var_2 = Struct_3(false, Struct_1(arg_1, _wgslsmith_sub_u32(var_0, func_4(func_3(vec3<f32>(-667f, 1000f, arg_1.x), Struct_1(arg_1, 19471u, true), vec3<bool>(true, true, true), Struct_4(Struct_1(vec2<f32>(-405f, arg_1.x), var_0, false), 4294967295u)), Struct_3(true, Struct_1(vec2<f32>(-2256f, arg_0), var_0, false), global0[_wgslsmith_index_u32(55383u, 32u)], Struct_1(global1[_wgslsmith_index_u32(18517u, 27u)], var_0, false)), _wgslsmith_f_op_f32(arg_1.x - 1317f))), !any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))), vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(reverseBits(abs(global0[_wgslsmith_index_u32(0u, 32u)])), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c.x, var_1.x, u_input.c.x, -24115i), vec4<i32>(0i, var_1.x, u_input.c.x, var_1.x) << (vec4<u32>(16498u, 4888u, 4658u, var_0) % vec4<u32>(32u)))), u_input.c.x, select(-(65250i >> (var_0 % 32u)), 2147483647i, true)), Struct_1(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(4294967295u, 27u)]), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0, 0u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(14102u, var_0), vec2<u32>(0u, var_0), ~vec2<u32>(u_input.b, 0u))), true));
    global1 = array<vec2<f32>, 27>();
    return var_2.d;
}

fn func_5(arg_0: Struct_4) -> Struct_2 {
    var var_0 = vec2<f32>(-198f, arg_0.a.a.x);
    let var_1 = arg_0;
    var var_2 = !vec2<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(var_1.a.c, var_1.a.c), vec2<bool>(false, false), arg_0.a.c), vec2<bool>(true, false))), arg_0.a.c);
    global1 = array<vec2<f32>, 27>();
    var var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.b, 1u, arg_0.a.b, 56557u), vec4<u32>(arg_0.b, u_input.d, 1u, u_input.a)), vec4<u32>(4294967295u, var_1.b, 1u, u_input.a) >> (vec4<u32>(4294967295u, arg_0.b, var_1.b, u_input.a) % vec4<u32>(32u))) ^ select(abs(vec4<u32>(u_input.b, arg_0.b, 10134u, u_input.b)), vec4<u32>(var_1.a.b, 41235u, var_1.a.b, arg_0.b), true), ~max(vec4<u32>(1u, arg_0.a.b, arg_0.a.b, 13046u), vec4<u32>(var_1.a.b, u_input.b, 7232u, u_input.d)), _wgslsmith_mod_vec4_u32(firstLeadingBit(~vec4<u32>(var_1.b, 4294967295u, arg_0.b, 18930u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 69513u, 1u, 25418u), ~vec4<u32>(6434u, 1u, arg_0.b, 4294967295u)))), vec4<u32>(func_2(_wgslsmith_f_op_f32(-var_1.a.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(216f, arg_0.a.a.x))))).b, ~(~firstLeadingBit(arg_0.b)), var_1.b | 13141u, countOneBits(_wgslsmith_clamp_u32(44313u, 1u, arg_0.b) & arg_0.a.b)));
    return Struct_2(u_input.c, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a.x, var_0.x, -333f, -248f) * vec4<f32>(1000f, arg_0.a.a.x, var_1.a.a.x, -333f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 876f, -1611f, -228f), vec4<f32>(414f, arg_0.a.a.x, var_1.a.a.x, 503f))), vec4<f32>(-782f, _wgslsmith_f_op_f32(step(arg_0.a.a.x, var_1.a.a.x)), _wgslsmith_f_op_f32(166f * -870f), arg_0.a.a.x))))));
}

fn func_1() -> Struct_3 {
    var var_0 = func_5(Struct_4(func_2(-884f, _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(~u_input.b, 27u)])), u_input.d));
    global1 = array<vec2<f32>, 27>();
    let var_1 = vec3<i32>(min(_wgslsmith_dot_vec2_i32(countOneBits(var_0.a.yy | var_0.a.yx), select(max(vec2<i32>(var_0.a.x, -133i), u_input.c.xy), -u_input.c.zy, true)), var_0.a.x), -_wgslsmith_mult_i32(u_input.c.x, ~u_input.c.x), ~0i);
    global1 = array<vec2<f32>, 27>();
    var var_2 = ((firstLeadingBit(var_1.x) & ~(-68467i)) & -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.xx, vec2<i32>(var_0.a.x, 1i)), var_0.a.zx)) >> (~(firstLeadingBit(u_input.d) & u_input.d) % 32u);
    return Struct_3(false, Struct_1(vec2<f32>(_wgslsmith_div_f32(var_0.b.x, var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x))), 24811u, true), _wgslsmith_add_vec4_i32(vec4<i32>(max(9188i, 52415i), 17764i, countOneBits(-1i), select(countOneBits(-15842i), -2188i, true)), select(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 2147483647i, var_1.x, u_input.c.x), vec4<i32>(-2147483647i, -1i, 2147483647i, -2147483647i), vec4<i32>(var_1.x, 1i, u_input.c.x, var_0.a.x)), min(vec4<i32>(var_1.x, -1i, -821i, var_1.x), vec4<i32>(43903i, 1i, var_1.x, -9058i)) | global0[_wgslsmith_index_u32(u_input.b, 32u)], vec4<bool>(false, true, func_2(-527f, global1[_wgslsmith_index_u32(0u, 27u)]).c, true))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1938f)) + vec2<f32>(_wgslsmith_div_f32(-163f, 361f), _wgslsmith_f_op_f32(min(535f, var_0.b.x)))), ~18153u, any(vec2<bool>(true, true)) | false));
}

fn func_6(arg_0: f32, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = !(!select(select(select(vec2<bool>(arg_1.b.c, false), vec2<bool>(arg_1.b.c, arg_1.d.c), vec2<bool>(true, true)), !vec2<bool>(false, arg_1.d.c), select(vec2<bool>(true, arg_1.b.c), vec2<bool>(arg_1.b.c, true), vec2<bool>(true, true))), !(!vec2<bool>(arg_1.d.c, arg_1.d.c)), firstTrailingBit(4294967295u) >= ~18167u));
    let var_1 = !select(select(select(vec3<bool>(false, true, false), select(vec3<bool>(true, arg_1.d.c, arg_1.d.c), vec3<bool>(false, true, true), vec3<bool>(var_0.x, false, var_0.x)), !vec3<bool>(true, var_0.x, false)), vec3<bool>(false, true, any(vec4<bool>(true, true, false, arg_1.a))), !(!vec3<bool>(false, true, var_0.x))), !select(!vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x)), false), true);
    let var_2 = func_1();
    global1 = array<vec2<f32>, 27>();
    global1 = array<vec2<f32>, 27>();
    return ~max(select(~vec2<u32>(0u, 55647u), _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_1.b.b, arg_1.b.b), ~vec2<u32>(u_input.d, var_2.d.b)), select(select(var_0, vec2<bool>(false, var_0.x), vec2<bool>(arg_1.a, var_2.b.c)), !vec2<bool>(false, var_2.d.c), vec2<bool>(true, true))), vec2<u32>(~(~var_2.d.b), arg_1.d.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c.xy;
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-257f))) * -809f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-412f + 1890f))) - -2049f)), u_input.d, any(vec3<bool>(true, false, true)));
    var var_2 = ~_wgslsmith_mult_vec2_u32(func_6(_wgslsmith_f_op_f32(-var_1.a.x), func_1()), abs(firstTrailingBit(~vec2<u32>(u_input.d, u_input.b))));
    global0 = array<vec4<i32>, 32>();
    let var_3 = -_wgslsmith_mult_vec4_i32(max(-(global0[_wgslsmith_index_u32(u_input.b, 32u)] | global0[_wgslsmith_index_u32(u_input.a, 32u)]), ~(vec4<i32>(1i, var_0.x, var_0.x, -2147483647i) & vec4<i32>(u_input.c.x, 34474i, 1i, u_input.c.x))), select(abs(vec4<i32>(u_input.c.x, -14695i, var_0.x, -49687i)) << ((vec4<u32>(var_1.b, u_input.b, 1u, 55213u) & vec4<u32>(u_input.b, var_1.b, 1u, var_1.b)) % vec4<u32>(32u)), max(-vec4<i32>(-1i, -25877i, -2147483647i, -22612i), global0[_wgslsmith_index_u32(var_1.b, 32u)] & global0[_wgslsmith_index_u32(1u, 32u)]), select(!vec4<bool>(true, var_1.c, true, var_1.c), vec4<bool>(var_1.c, true, var_1.c, false), true)));
    global0 = array<vec4<i32>, 32>();
    var var_4 = vec2<u32>(~35174u, var_1.b);
    var_4 = vec2<u32>(_wgslsmith_div_u32((1u << (firstLeadingBit(u_input.a) % 32u)) ^ var_4.x, ~4294967295u), _wgslsmith_dot_vec3_u32(min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, var_4.x, 0u), vec3<u32>(var_4.x, 41702u, 34908u)), ~vec3<u32>(var_1.b, 4294967295u, 4294967295u)), ~firstLeadingBit(vec3<u32>(var_1.b, 3223u, var_1.b))) & var_1.b);
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec2<u32>(func_6(422f, Struct_3(true, Struct_1(global1[_wgslsmith_index_u32(4294967295u, 27u)], var_2.x, var_1.c), vec4<i32>(var_0.x, 2147483647i, u_input.c.x, var_0.x), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 27u)], var_1.b, var_1.c))).x, 4294967295u)));
}

