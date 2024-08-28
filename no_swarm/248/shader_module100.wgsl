struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    var var_0 = ~vec3<i32>(firstLeadingBit(-1i), 1i, 0i);
    global0 = array<vec3<bool>, 12>();
    let var_1 = 1i & -var_0.x;
    var var_2 = Struct_2(~firstLeadingBit(-38383i << (_wgslsmith_div_u32(u_input.a.x, 1u) % 32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1167f)))), Struct_1(~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 23748u), vec4<u32>(96278u, u_input.a.x, 0u, 4294967295u)), max(min(var_0.x, var_1), 0i) | countOneBits(select(2147483647i, var_1, true))), _wgslsmith_f_op_f32(-897f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(528f - -719f)))))), abs(1u));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1890f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.b))))), -2774f);
    return var_3;
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-744f - -1020f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1113f) - -1000f))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-488f, _wgslsmith_div_f32(-256f, var_0)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -382f)), _wgslsmith_f_op_vec2_f32(func_3()), vec2<bool>(true, true))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-229f, -838f) - vec2<f32>(-1000f, 432f)) - vec2<f32>(1805f, var_0))), vec2<bool>(!select(true, true, false), !all(vec2<bool>(true, true))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec2_f32(func_3()).x, 312f, false)), -435f, var_0))), -(_wgslsmith_mod_vec2_i32(-vec2<i32>(64760i, arg_0), ~vec2<i32>(arg_0, 0i)) << (u_input.a.zy % vec2<u32>(32u))), _wgslsmith_sub_i32(min(~(-71750i), arg_0) >> (firstTrailingBit(0u) % 32u), 29334i));
    let var_2 = _wgslsmith_sub_vec2_u32(~(~abs(~vec2<u32>(u_input.a.x, 1u))), u_input.a.xz);
    global0 = array<vec3<bool>, 12>();
    let var_3 = _wgslsmith_clamp_i32(-49226i << (~abs(select(u_input.a.x, u_input.a.x, false)) % 32u), -1i, -2147483647i);
    return 1i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(-1i, _wgslsmith_f_op_f32(min(arg_1.a.d, -1301f)), Struct_1(_wgslsmith_sub_vec4_u32(~arg_1.a.c.a, ~arg_1.a.c.a), _wgslsmith_mod_i32((102430i << (0u % 32u)) & reverseBits(arg_0.b), abs(15028i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a.b)) + _wgslsmith_f_op_f32(1397f + _wgslsmith_f_op_f32(-arg_1.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a.b)))), 1i > arg_1.a.c.b)), 1u);
    var_0 = Struct_2(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1271f))), var_0.c, 279f, min(u_input.a.x, countOneBits(~4294967295u)));
    let var_1 = max(_wgslsmith_mult_vec2_i32(~vec2<i32>(_wgslsmith_mult_i32(1i, arg_0.b), _wgslsmith_mult_i32(arg_0.b, arg_0.b)), select(vec2<i32>(var_0.c.b, -1i) ^ -vec2<i32>(arg_0.b, -12551i), _wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_1.a.c.b, 2147483647i), vec2<i32>(69820i, arg_0.b), abs(vec2<i32>(-2147483647i, -57580i))), !(36113u >= u_input.a.x))), vec2<i32>(i32(-1i) * -13745i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(55085i, -1i, arg_0.b)), abs(vec3<i32>(32948i, 5920i, arg_1.a.a))), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, arg_1.a.c.b, arg_1.a.c.b), vec3<i32>(5835i, -45196i, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.a.a, -1i, 16836i), vec3<i32>(0i, 17094i, -56182i), vec3<i32>(-2147483647i, 2147483647i, var_0.a))))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(var_0.b, var_0.d)), arg_1.a.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_vec2_f32(func_3()).x) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.d, 950f, arg_1.a.b), vec3<f32>(867f, var_0.b, var_0.d)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, arg_1.a.d, arg_1.a.b), vec3<f32>(var_0.d, 431f, -1261f)), -1000f <= arg_1.a.b))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.a.d, 1283f, _wgslsmith_f_op_f32(-arg_1.a.d))))), max(abs(min(_wgslsmith_clamp_vec2_i32(var_1, var_1, vec2<i32>(371i, 1i)), vec2<i32>(var_0.c.b, arg_1.a.a))), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-8201i, var_1.x, arg_1.a.c.b), vec3<i32>(arg_0.b, 0i, 17255i)), ~var_1.x), 54618i)), 12450i);
    var var_3 = var_2.a;
    return Struct_1(var_0.c.a, firstLeadingBit(~(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.x, -73274i, var_0.a, -2147483647i), vec4<i32>(var_2.d, 1i, arg_0.b, var_1.x)) ^ -28435i)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> Struct_5 {
    let var_0 = Struct_3(Struct_2(abs(i32(-1i) * -2147483647i), arg_1, func_4(Struct_1(max(vec4<u32>(arg_2.a.x, 1212u, 83962u, u_input.a.x), arg_2.a), func_2(22442i)), Struct_3(Struct_2(-1i, 1024f, Struct_1(arg_2.a, -1i), 185f, 0u))), _wgslsmith_f_op_f32(-arg_1), 0u | (~arg_2.a.x & _wgslsmith_clamp_u32(1u, arg_2.a.x, arg_2.a.x))));
    let var_1 = 24650u;
    global0 = array<vec3<bool>, 12>();
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.c.b, 1617i, -1i, 3753i), min(-(~vec4<i32>(1i, -2147483647i, var_0.a.a, var_0.a.a)), vec4<i32>(func_4(var_0.a.c, var_0).b, 2147483647i, reverseBits(~(-16018i)), var_0.a.c.b)));
    global0 = array<vec3<bool>, 12>();
    return Struct_5(Struct_4(vec2<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -1199f, var_0.a.b))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-905f, -2313f, -241f))))), ~_wgslsmith_mod_vec2_i32(var_2.xy >> (var_0.a.c.a.yz % vec2<u32>(32u)), var_2.yw), var_0.a.a));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_5) -> Struct_2 {
    global0 = array<vec3<bool>, 12>();
    let var_0 = func_4(Struct_1(abs(vec4<u32>(reverseBits(912u), 1u, 1u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 0u, arg_1)))), 2147483647i), Struct_3(Struct_2(_wgslsmith_div_i32(0i, arg_0) ^ (49277i << (1u % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -347f), func_4(func_4(Struct_1(vec4<u32>(u_input.a.x, arg_1, arg_1, 45754u), arg_2.a.c.x), Struct_3(Struct_2(arg_0, -608f, Struct_1(vec4<u32>(67012u, arg_1, u_input.a.x, 4294967295u), arg_2.a.d), arg_2.a.b.x, u_input.a.x))), Struct_3(Struct_2(arg_0, arg_2.a.b.x, Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 16568u), 47671i), 594f, arg_1))), 295f, abs(u_input.a.x))));
    let var_1 = func_1(true, _wgslsmith_f_op_f32(round(2198f)), Struct_1(firstTrailingBit(abs(~vec4<u32>(var_0.a.x, u_input.a.x, arg_1, arg_1))), _wgslsmith_add_i32(34873i, ~1i))).a;
    global0 = array<vec3<bool>, 12>();
    let var_2 = arg_2.a.a.x;
    return Struct_2(var_0.b, _wgslsmith_f_op_f32(round(-1418f)), func_4(var_0, Struct_3(Struct_2(_wgslsmith_clamp_i32(arg_2.a.c.x, 42262i, 7796i), _wgslsmith_f_op_f32(trunc(-786f)), func_4(Struct_1(vec4<u32>(1u, arg_1, u_input.a.x, u_input.a.x), arg_0), Struct_3(Struct_2(-2147483647i, 241f, var_0, var_2, 51866u))), -1955f, 1u))), -2201f, firstTrailingBit(~firstLeadingBit(var_0.a.x)));
}

fn func_6(arg_0: Struct_2) -> Struct_4 {
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.d)), 627f), _wgslsmith_f_op_f32(arg_0.b * func_5(arg_0.c.b, 53416u, Struct_5(Struct_4(vec2<f32>(arg_0.d, arg_0.b), vec3<f32>(-862f, -353f, -379f), vec2<i32>(-2147483647i, 1i), -2147483647i))).d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(func_3()))));
    let var_1 = func_4(func_4(func_5(~func_4(Struct_1(vec4<u32>(arg_0.c.a.x, 98870u, u_input.a.x, u_input.a.x), arg_0.c.b), Struct_3(arg_0)).b, 1u, Struct_5(func_1(false, -703f, Struct_1(arg_0.c.a, arg_0.c.b)).a)).c, Struct_3(arg_0)), Struct_3(func_5(arg_0.c.b, 31950u, Struct_5(func_1(false, arg_0.b, arg_0.c).a)))).b;
    return func_1(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1597f + -278f))))), arg_0.c).a;
}

fn func_7(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_4) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(arg_1.d * arg_1.b))), arg_2.b, arg_2.c, arg_2.c.x | -1i);
    var var_1 = var_0.c.x;
    var_1 = arg_2.c.x;
    var var_2 = -select(abs(_wgslsmith_div_i32(1i, var_0.c.x) >> (73731u % 32u)), i32(-1i) * -36037i, true);
    return func_6(arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-832f, -144f)) - vec2<f32>(-1237f, 806f)))));
    global0 = array<vec3<bool>, 12>();
    var var_1 = Struct_5(func_7(firstLeadingBit(vec2<i32>(abs(-24857i), firstTrailingBit(-1i))), Struct_2(1i, -646f, Struct_1(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), -1i), -2143f, 1u), func_6(func_5(1i, u_input.a.x, func_1(false, var_0.x, Struct_1(vec4<u32>(35299u, 1u, u_input.a.x, 0u), -1i))))));
    var var_2 = func_1((var_1.a.c.x << (1u % 32u)) > firstLeadingBit(8927i), 706f, Struct_1(vec4<u32>(3892u, _wgslsmith_clamp_u32(u_input.a.x >> (66591u % 32u), _wgslsmith_div_u32(8324u, u_input.a.x), u_input.a.x), firstLeadingBit(countOneBits(31414u)), u_input.a.x), ~(~(~var_1.a.d))));
    var var_3 = any(select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(false, false, true, false))), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, any(vec2<bool>(true, false)), true, false)), select(vec4<bool>(true, u_input.a.x < 41111u, any(vec4<bool>(false, false, false, false)), true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(-252f, var_0.x)), _wgslsmith_f_op_f32(trunc(var_1.a.a.x)), -734f))) - var_1.a.b) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.a.b.x, _wgslsmith_f_op_f32(-func_5(-2089i, 0u, Struct_5(Struct_4(var_0, vec3<f32>(var_0.x, -1000f, -575f), var_2.a.c, 8671i))).d), _wgslsmith_f_op_f32(exp2(var_1.a.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(11901i, _wgslsmith_f_op_f32(func_7(~abs(vec2<i32>(var_1.a.d, -15193i)), func_5(-32714i, 79241u, Struct_5(Struct_4(vec2<f32>(238f, -2024f), var_1.a.b, vec2<i32>(-30636i, -1i), var_2.a.d))), var_1.a).b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-872f + _wgslsmith_f_op_f32(select(1039f, 592f, true))))));
}

