struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true));

var<private> global1: f32;

var<private> global2: array<vec2<u32>, 27>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>) -> vec3<u32> {
    var var_0 = reverseBits(vec3<i32>(u_input.b, u_input.b, -u_input.a.x));
    global2 = array<vec2<u32>, 27>();
    global0 = array<vec3<bool>, 27>();
    global1 = -388f;
    global2 = array<vec2<u32>, 27>();
    return firstTrailingBit(vec3<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(arg_0, arg_0, 0u)), arg_0), ~(~101025u), ~abs(5384u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    var var_0 = arg_1;
    global0 = array<vec3<bool>, 27>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(896f * -181f), -142f) - _wgslsmith_f_op_f32(max(1000f, var_0.c.x)));
    var var_2 = _wgslsmith_mult_vec3_u32(~func_3(77710u, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, -951f, -976f, 470f) + arg_1.c)), firstLeadingBit(vec3<u32>(~(~var_0.d), min(max(0u, arg_1.a), ~45574u), ~var_0.a)));
    let var_3 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b, 32325i, arg_1.b), vec3<i32>(-2147483647i, 1i, 56356i)) ^ vec3<i32>(_wgslsmith_mult_i32(var_0.b, 24779i), _wgslsmith_mult_i32(u_input.b, -1i), -32853i), ~(-vec3<i32>(var_0.b, -2270i, u_input.a.x) & ~vec3<i32>(-2147483647i, u_input.a.x, arg_1.b))), (select(-vec3<i32>(u_input.a.x, -2147483647i, 0i), -vec3<i32>(-21215i, arg_1.b, u_input.a.x), true) ^ vec3<i32>(~var_0.b, -var_0.b, -1i)) << (min(abs(select(vec3<u32>(var_2.x, arg_1.a, arg_1.a), vec3<u32>(25435u, var_2.x, 1u), global0[_wgslsmith_index_u32(arg_1.a, 27u)])), ~(~vec3<u32>(28762u, 0u, var_0.a))) % vec3<u32>(32u)));
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_1.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), Struct_1(0u, var_3.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_1.c))))), 28278u), arg_1, Struct_1(~var_0.d, _wgslsmith_add_i32(_wgslsmith_add_i32(var_3.x, 2147483647i), 22145i), arg_1.c, 4294967295u));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(firstLeadingBit(~arg_2.b.a), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(0i, 2147483647i, arg_2.b.b), -vec3<i32>(u_input.b, 0i, arg_2.c.b)), vec3<i32>(u_input.a.x >> (1u % 32u), ~(-1i), -2147483647i)), vec4<f32>(arg_1, -938f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -596f) * _wgslsmith_f_op_f32(select(2323f, arg_2.c.c.x, true)))), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.a, select(35159u, arg_2.c.a, false)), ~global2[_wgslsmith_index_u32(arg_2.b.d, 27u)])), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, u_input.a), vec2<i32>(min(~u_input.a.x, 2147483647i), 9194i)), !vec2<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(7035u, 27u)]))));
    global2 = array<vec2<u32>, 27>();
    let var_1 = var_0;
    let var_2 = arg_2;
    var var_3 = all(!(!vec4<bool>(var_1.c.x, false, false, false)));
    return Struct_1(5111u, -2147483647i, vec4<f32>(1f, var_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1924f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2248f, -376f))), func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1149f, -262f, arg_2.b.c.x) + vec3<f32>(523f, 1558f, -929f)), vec3<f32>(1000f, -216f, 276f), vec3<bool>(var_0.c.x, var_1.c.x, var_0.c.x))), func_2(var_1.a.c.ywz, func_2(vec3<f32>(1000f, arg_2.b.c.x, -1087f), Struct_1(var_2.d.a, var_0.b.x, var_2.c.c, arg_2.c.d), var_0.a.c.x).b, _wgslsmith_f_op_f32(-var_2.d.c.x)).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-751f)))).b.c.x), var_0.a.a);
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_2(arg_0.d.c.wxy, func_4(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-476f - 1914f), arg_0.b.c.x), -1802f), -1076f, Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0.d.c.yxx - arg_0.a))), func_2(arg_0.b.c.yxy, Struct_1(8056u, arg_0.c.b, arg_0.b.c, 10035u), _wgslsmith_f_op_f32(931f - arg_1)).b, Struct_1(~10439u, -2147483647i, _wgslsmith_f_op_vec4_f32(max(arg_0.d.c, arg_0.b.c)), _wgslsmith_clamp_u32(arg_2.x, 1u, 39623u)), Struct_1(~arg_0.d.a, -2088i, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1653f, arg_1, arg_1) + vec4<f32>(-566f, -416f, arg_1, arg_0.c.c.x)), _wgslsmith_sub_u32(arg_2.x, 49170u)))), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_0.c.c.x, arg_1), func_4(arg_0.b.c.wz, arg_1, Struct_2(arg_0.a, Struct_1(16071u, 2147483647i, vec4<f32>(arg_0.b.c.x, arg_0.c.c.x, arg_1, -1078f), 4294967295u), Struct_1(arg_0.d.a, u_input.a.x, arg_0.c.c, arg_2.x), arg_0.c)).c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(floor(arg_1)))), arg_0), arg_0.c);
    var var_1 = func_2(var_0.a, Struct_1(abs(_wgslsmith_dot_vec2_u32(~arg_2.yy, vec2<u32>(arg_0.c.a, arg_2.x))), -arg_0.d.b, vec4<f32>(-401f, _wgslsmith_f_op_f32(ceil(var_0.c.c.x)), arg_1, _wgslsmith_div_f32(-1242f, func_4(vec2<f32>(arg_0.b.c.x, -263f), var_0.b.c.x, var_0).c.x)), 4294967295u), _wgslsmith_f_op_f32(round(1573f)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.b.c.x)), _wgslsmith_f_op_f32(var_1.b.c.x * 1000f))))));
    let var_3 = var_1.d.b;
    var var_4 = var_0.b.c.zwz;
    return Struct_3(func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(667f - arg_0.d.c.x)), var_0.d.c.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-var_4.x))), Struct_1(1u, u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(217f - 177f), 480f, _wgslsmith_f_op_f32(var_4.x * arg_0.b.c.x), var_1.c.c.x), 1u), arg_1).d, u_input.a, select(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), vec2<bool>(true, true), true));
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.x));
    let var_1 = 42560i ^ func_2(_wgslsmith_f_op_vec3_f32(floor(func_2(arg_0.a.c.wxy, Struct_1(arg_0.a.a, 2147483647i, vec4<f32>(-2023f, var_0, -1000f, var_0), arg_0.a.d), -730f).a)), Struct_1(arg_0.a.a, firstTrailingBit(-u_input.a.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(787f, var_0, 848f, arg_0.a.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-539f, 1748f, -354f, var_0) - arg_0.a.c))), 1u & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.a, arg_0.a.a), global2[_wgslsmith_index_u32(arg_0.a.a, 27u)])), _wgslsmith_f_op_f32(f32(-1f) * -236f)).d.b;
    var var_2 = func_2(arg_0.a.c.wzx, arg_0.a, _wgslsmith_f_op_f32(-var_0));
    var var_3 = vec3<i32>(u_input.b, -65514i, ~(i32(-1i) * -1i));
    var var_4 = Struct_3(var_2.c, -vec2<i32>(0i, func_5(Struct_2(vec3<f32>(-1057f, -203f, 1216f), Struct_1(var_2.b.d, arg_0.a.b, vec4<f32>(-938f, -877f, -1000f, var_0), 1u), arg_0.a, Struct_1(arg_0.a.d, var_3.x, var_2.c.c, 9423u)), -665f, vec3<u32>(28574u, arg_0.a.d, arg_0.a.a)).b.x), vec2<bool>(true, !arg_0.c.x));
    return var_2.c;
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = func_6(func_5(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1240f, arg_1, -593f)))), Struct_1(1u, 1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, arg_1)), reverseBits(53319u)), func_4(vec2<f32>(arg_1, 1426f), arg_1, func_2(vec3<f32>(arg_1, 555f, arg_1), Struct_1(4294967295u, u_input.a.x, vec4<f32>(arg_1, arg_1, -437f, arg_1), 1u), -342f)), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(808f, arg_1, -972f), vec3<f32>(-682f, arg_1, arg_1)), func_2(vec3<f32>(arg_1, -422f, -1082f), Struct_1(34569u, u_input.b, vec4<f32>(arg_1, 223f, 329f, arg_1), 15060u), -1372f).b, func_2(vec3<f32>(-1000f, 523f, -733f), Struct_1(25253u, u_input.a.x, vec4<f32>(1238f, arg_1, arg_1, arg_1), 0u), arg_1).b.c.x).c), -1157f, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~68187u, 4294967295u, firstTrailingBit(4294967295u)))));
    global2 = array<vec2<u32>, 27>();
    var var_1 = vec2<u32>(1u | var_0.a, firstTrailingBit(~(~0u)));
    global2 = array<vec2<u32>, 27>();
    var var_2 = global2[_wgslsmith_index_u32(~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(0u, var_0.d), global2[_wgslsmith_index_u32(var_1.x, 27u)]))), 27u)];
    return func_5(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(121f, -346f, true)), -783f, _wgslsmith_f_op_f32(min(arg_1, var_0.c.x)))), func_6(func_5(Struct_2(var_0.c.wxz, Struct_1(1u, 1i, vec4<f32>(-1582f, 658f, -161f, var_0.c.x), var_1.x), Struct_1(4294967295u, 2147483647i, vec4<f32>(144f, -811f, -2404f, arg_1), var_0.d), Struct_1(19654u, var_0.b, var_0.c, 1u)), var_0.c.x, countOneBits(vec3<u32>(16615u, 36258u, 103967u)))), func_5(Struct_2(vec3<f32>(var_0.c.x, arg_1, var_0.c.x), func_2(var_0.c.wyw, Struct_1(var_1.x, u_input.b, var_0.c, var_1.x), 1195f).d, Struct_1(var_1.x, -10658i, vec4<f32>(var_0.c.x, arg_1, arg_1, arg_1), var_2.x), Struct_1(var_1.x, 0i, var_0.c, var_1.x)), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(max(-283f, var_0.c.x))), vec3<u32>(var_2.x | 6724u, 1u, _wgslsmith_mult_u32(1u, 47356u))).a, func_5(func_2(var_0.c.zyy, Struct_1(var_2.x, 25365i, var_0.c, var_2.x), var_0.c.x), -577f, _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(var_0.a, var_1.x, var_2.x)), max(vec3<u32>(8047u, 1u, 4470u), vec3<u32>(var_0.a, var_0.d, 0u)), vec3<u32>(4294967295u, var_1.x, 4294967295u) ^ vec3<u32>(30101u, 8759u, 71688u))).a), _wgslsmith_f_op_f32(-arg_1), firstLeadingBit(func_3(func_4(_wgslsmith_f_op_vec2_f32(round(var_0.c.xw)), 777f, func_2(var_0.c.zyw, Struct_1(4294967295u, -2147483647i, var_0.c, 0u), var_0.c.x)).d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c * var_0.c)))));
}

fn func_7(arg_0: Struct_3) -> bool {
    global2 = array<vec2<u32>, 27>();
    var var_0 = Struct_3(func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-766f, arg_0.a.c.x, -904f), arg_0.a.c.zwz), arg_0.a.c.zxw)), func_6(Struct_3(func_4(arg_0.a.c.xy, -1076f, Struct_2(arg_0.a.c.yxy, arg_0.a, arg_0.a, Struct_1(arg_0.a.d, arg_0.a.b, vec4<f32>(arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x), 64056u))), u_input.a, !arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.c.x))))).d, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(27355i, u_input.a.x, u_input.a.x), vec3<i32>(25770i, 0i, 30894i)), arg_0.a.b), (arg_0.a.b | u_input.b) << (arg_0.a.a % 32u)), arg_0.c);
    var var_1 = all(vec2<bool>(true, arg_0.c.x));
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.c.x, arg_0.a.c.x, 349f) * var_0.a.c.yxw) - _wgslsmith_f_op_vec3_f32(step(arg_0.a.c.zyx, func_1(vec2<bool>(true, arg_0.c.x), 808f, var_0.c).a.c.wyz))))), func_2(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.a.c.x)), _wgslsmith_f_op_f32(-570f * _wgslsmith_f_op_f32(f32(-1f) * -365f)), -213f), Struct_1(arg_0.a.d >> (37611u % 32u), 46254i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1029f), func_4(vec2<f32>(arg_0.a.c.x, 625f), var_0.a.c.x, Struct_2(vec3<f32>(arg_0.a.c.x, var_0.a.c.x, -168f), var_0.a, var_0.a, Struct_1(4294967295u, u_input.b, vec4<f32>(-700f, arg_0.a.c.x, var_0.a.c.x, -2518f), arg_0.a.a))).c.x, -1174f, func_5(Struct_2(vec3<f32>(1425f, var_0.a.c.x, -752f), arg_0.a, Struct_1(var_0.a.a, var_0.a.b, vec4<f32>(var_0.a.c.x, arg_0.a.c.x, -511f, 2436f), var_0.a.a), Struct_1(var_0.a.a, 2147483647i, arg_0.a.c, var_0.a.d)), arg_0.a.c.x, vec3<u32>(0u, 54029u, var_0.a.a)).a.c.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(927u, var_0.a.d, 39996u), vec3<u32>(arg_0.a.d, 33032u, arg_0.a.a)), countOneBits(vec3<u32>(1u, var_0.a.a, 4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.c.x, _wgslsmith_f_op_f32(trunc(-735f)), arg_0.a.b != 1i)))).d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-726f, 1395f) - _wgslsmith_f_op_f32(var_0.a.c.x - -1030f)));
    var var_3 = arg_0.a.c.x;
    return func_1(!select(vec2<bool>(true, true), !(!vec2<bool>(arg_0.c.x, var_0.c.x)), var_0.c.x), 449f, var_0.c).c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, func_7(func_1(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), 137f, vec2<bool>(false, false)))), vec2<bool>(!select(true, false, false) | false, false), func_5(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(376f, 648f, 1936f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-258f, 241f, 200f))), func_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(min(2605f, 757f)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))).a, -1755f), func_1(func_5(func_2(vec3<f32>(-402f, -1327f, -716f), Struct_1(21023u, u_input.a.x, vec4<f32>(-578f, -725f, 484f, -459f), 68764u), -1000f), 1f, countOneBits(vec3<u32>(1u, 15609u, 83933u))).c, _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(-1000f, -163f)), func_5(func_2(vec3<f32>(-862f, 1224f, -348f), Struct_1(47078u, u_input.a.x, vec4<f32>(-1218f, 537f, -263f, 1146f), 4294967295u), -958f), -1762f, firstTrailingBit(vec3<u32>(1u, 11815u, 34393u))).c).a.c.x, ~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 23856u, 0u), vec3<u32>(29496u, 52500u, 13331u)))).c);
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -1000f)), 136f);
    global0 = array<vec3<bool>, 27>();
    let var_1 = func_1(func_5(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1825f, -1000f, 625f), vec3<f32>(-1000f, -866f, 195f)))), Struct_1(func_5(Struct_2(vec3<f32>(1380f, -2082f, -335f), Struct_1(56823u, u_input.b, vec4<f32>(2174f, -1287f, 1136f, 447f), 104693u), Struct_1(4294967295u, u_input.a.x, vec4<f32>(-1342f, -140f, -404f, -431f), 131680u), Struct_1(1u, u_input.a.x, vec4<f32>(-183f, -161f, -1116f, -1000f), 27630u)), 1143f, vec3<u32>(4294967295u, 17209u, 4294967295u)).a.a, -26601i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1123f, 770f, 1583f, 158f)), ~0u), Struct_1(1u, 1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(352f, -1002f, 1519f, -1024f)), ~4931u), func_6(Struct_3(Struct_1(0u, -61984i, vec4<f32>(-855f, 618f, 540f, 1000f), 16152u), vec2<i32>(2147483647i, 1336i), vec2<bool>(var_0.x, true)))), -318f, vec3<u32>(24540u, _wgslsmith_mult_u32(abs(1u), _wgslsmith_div_u32(78501u, 4294967295u)), 1u)).c, 1678f, select(select(var_0, vec2<bool>(true, true), select(vec2<bool>(var_0.x, var_0.x), var_0, !vec2<bool>(var_0.x, var_0.x))), select(func_5(func_2(vec3<f32>(397f, 269f, -1274f), Struct_1(4294967295u, u_input.b, vec4<f32>(-447f, -873f, 982f, 1026f), 11655u), 667f), _wgslsmith_f_op_f32(f32(-1f) * -1155f), vec3<u32>(1u, 1u, 1u)).c, select(var_0, vec2<bool>(var_0.x, var_0.x), true), false), any(vec4<bool>(true, true, select(var_0.x, var_0.x, var_0.x), true))));
    var var_2 = true & all(!vec2<bool>(true, any(vec2<bool>(var_0.x, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(31790u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(vec2<bool>(var_0.x, true), _wgslsmith_f_op_f32(sign(-931f)), !var_0).a.c.x)), vec2<u32>(~_wgslsmith_add_u32(25541u, var_1.a.d ^ var_1.a.a), _wgslsmith_sub_u32(~(~var_1.a.d), func_1(!vec2<bool>(var_0.x, false), var_1.a.c.x, func_5(Struct_2(var_1.a.c.wxw, var_1.a, var_1.a, Struct_1(40814u, 2147483647i, var_1.a.c, 13166u)), var_1.a.c.x, vec3<u32>(43216u, 14666u, var_1.a.d)).c).a.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.b, var_1.a.b), ~(-u_input.a) & vec2<i32>(1i, _wgslsmith_clamp_i32(2147483647i, u_input.b, 2147483647i))), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.a.d, 102642u, abs(12071u), var_1.a.d & 6842u), ~(~(~vec4<u32>(22625u, 8724u, var_1.a.a, var_1.a.d)))));
}

