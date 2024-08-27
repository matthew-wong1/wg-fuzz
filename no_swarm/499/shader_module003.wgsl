struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: Struct_3,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_3,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<u32, 9>;

var<private> global2: f32 = -407f;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: Struct_5) -> vec3<i32> {
    let var_0 = Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_1.c.d.c.b.x)))), -212f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.c.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-358f * -1188f))))));
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(-2161f, _wgslsmith_f_op_f32(-arg_3.b.c.d.b), _wgslsmith_f_op_f32(-arg_0.c.b.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-171f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.d.x - var_0.b.x), arg_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = arg_3;
    global1 = array<u32, 9>();
    global2 = 157f;
    return reverseBits(~var_2.b.d);
}

fn func_4(arg_0: Struct_5, arg_1: vec2<f32>, arg_2: vec4<bool>) -> vec4<i32> {
    return -vec4<i32>(_wgslsmith_div_i32(abs(arg_0.e) << (~u_input.b % 32u), -18032i), func_3(Struct_2(true, arg_1.x, arg_0.a.d, Struct_1(false, arg_0.b.c.d.d.b), arg_2.x), arg_0.b, _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(u_input.a, 30440u, 0u)), firstLeadingBit(vec3<u32>(32650u, global1[_wgslsmith_index_u32(u_input.a, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)])), vec3<u32>(u_input.b, 1u, global1[_wgslsmith_index_u32(1313u, 9u)])), arg_0).x, ~arg_0.b.b, func_3(arg_0.a, Struct_4(arg_2, abs(u_input.c), arg_0.b.c, vec3<i32>(u_input.c, arg_0.c.a, u_input.d)), min(vec3<u32>(u_input.b, 29428u, 52903u), min(vec3<u32>(1u, 1239u, 0u), vec3<u32>(46427u, 59578u, global1[_wgslsmith_index_u32(5757u, 9u)]))), arg_0).x);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_4, arg_3: Struct_1) -> f32 {
    var var_0 = func_4(Struct_5(Struct_2(true, arg_3.b.x, arg_2.c.d.d, arg_2.c.d.c, arg_2.a.x), Struct_4(vec4<bool>(true, arg_3.a, arg_3.a, true), select(2147483647i, u_input.d, true) << (abs(arg_0) % 32u), Struct_3(arg_1, arg_2.c.b, abs(arg_2.c.c), arg_2.c.d), firstTrailingBit(func_3(Struct_2(arg_3.a, 558f, arg_3, Struct_1(arg_3.a, vec4<f32>(arg_3.b.x, -211f, arg_3.b.x, arg_2.c.d.d.b.x)), false), arg_2, vec3<u32>(arg_0, 31087u, arg_0), Struct_5(Struct_2(arg_3.a, arg_3.b.x, arg_2.c.d.c, Struct_1(true, vec4<f32>(arg_2.c.b.x, arg_3.b.x, 367f, -3270f)), true), arg_2, arg_2.c, vec4<f32>(213f, -612f, -1377f, 107f), -710i)))), Struct_3(min(-10566i, 2147483647i), arg_3.b.wxw, ~firstLeadingBit(arg_1), arg_2.c.d), arg_3.b, firstLeadingBit(arg_1)), _wgslsmith_f_op_vec2_f32(-arg_2.c.b.xx), vec4<bool>(all(vec2<bool>(arg_3.a, arg_3.b.x >= -469f)), true, arg_2.c.d.c.b.x < _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1132f, arg_3.b.x), -826f, false)), select(-4824i >= ~arg_1, !(!arg_2.c.d.c.a), arg_2.a.x)));
    var var_1 = vec2<bool>(true, true);
    global1 = array<u32, 9>();
    var var_2 = arg_2.c.d;
    var var_3 = firstTrailingBit(~abs(select(_wgslsmith_mult_vec2_i32(var_0.wx, vec2<i32>(-1i, arg_2.c.a)), vec2<i32>(0i, u_input.d), select(arg_2.a.yz, arg_2.a.zy, vec2<bool>(var_1.x, true)))));
    return var_2.c.b.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_5 {
    var var_0 = Struct_3(_wgslsmith_sub_i32(~select(u_input.d, u_input.c, false), -16140i) ^ ~u_input.d, vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(56904u, -8807i, Struct_4(vec4<bool>(false, true, true, true), u_input.d, Struct_3(-104i, vec3<f32>(arg_0.b.x, arg_0.b.x, 655f), 1i, Struct_2(false, 566f, Struct_1(false, vec4<f32>(arg_0.b.x, -1403f, arg_1.b.x, 129f)), arg_0, false)), vec3<i32>(40494i, 59151i, 2147483647i)), Struct_1(true, vec4<f32>(arg_1.b.x, arg_0.b.x, arg_0.b.x, -457f))))), arg_0.b.x)), ~u_input.c, Struct_2(!((arg_0.a && true) != true), _wgslsmith_f_op_f32(-2280f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-arg_1.b.x)))), Struct_1((2147483647i | u_input.d) >= abs(35584i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-604f, 1123f, arg_1.b.x, arg_1.b.x))), Struct_1(-u_input.d != 75365i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_0.b * arg_1.b), vec4<f32>(1285f, arg_1.b.x, arg_1.b.x, arg_1.b.x), arg_1.a))), any(!select(vec2<bool>(true, false), vec2<bool>(false, arg_0.a), vec2<bool>(arg_1.a, arg_1.a)))));
    global0 = select(u_input.c, _wgslsmith_clamp_i32(-(~(-1i)), var_0.a, 2147483647i), arg_1.a) & 19461i;
    let var_1 = _wgslsmith_f_op_f32(trunc(-307f));
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_0.d.c.b.wyw);
    global1 = array<u32, 9>();
    return Struct_5(Struct_2(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(max(arg_0.b.x, var_2.x))) - var_1), Struct_1(all(!vec3<bool>(true, arg_0.a, arg_1.a)), _wgslsmith_f_op_vec4_f32(select(arg_1.b, arg_0.b, arg_1.a))), var_0.d.c, var_0.a <= (-70969i ^ (u_input.c ^ 17395i))), Struct_4(!select(select(vec4<bool>(var_0.d.e, arg_0.a, false, false), vec4<bool>(arg_1.a, true, arg_0.a, arg_0.a), true), !vec4<bool>(false, false, true, arg_0.a), true), i32(-1i) * -1875i, Struct_3(2147483647i, arg_0.b.wxx, -4238i, var_0.d), vec3<i32>(u_input.c, i32(-1i) * -37820i, var_0.c)), Struct_3(~var_0.a, var_0.b, ~(~countOneBits(var_0.a)), Struct_2(!any(vec3<bool>(arg_0.a, var_0.d.d.a, arg_0.a)), -770f, Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1220f, arg_1.b.x, var_2.x) * vec4<f32>(886f, var_2.x, arg_0.b.x, var_1))), arg_0, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.b.x, -1945f, 248f, arg_0.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(564f + -250f), var_0.d.c.b.x, _wgslsmith_f_op_f32(ceil(arg_0.b.x))), arg_0.a)) + _wgslsmith_f_op_vec4_f32(sign(arg_1.b))), _wgslsmith_mult_i32(-var_0.c, 0i));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: Struct_4, arg_3: Struct_1) -> Struct_3 {
    let var_0 = func_1(arg_1.c.d.d, Struct_1(arg_2.c.d.d.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(arg_3.b))))), ~abs(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 35035u), ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42546u, 9u)], 9u)], global1[_wgslsmith_index_u32(25103u, 9u)])))).a.d;
    let var_1 = !arg_2.a.zzy;
    var var_2 = arg_2.c;
    let var_3 = arg_2.a.xww;
    var var_4 = vec3<f32>(1133f, _wgslsmith_f_op_f32(min(1221f, 768f)), var_2.b.x);
    return func_1(Struct_1(arg_2.a.x, arg_2.c.d.d.b), func_1(Struct_1(false, arg_3.b), func_1(arg_2.c.d.c, arg_3, vec2<u32>(max(global1[_wgslsmith_index_u32(0u, 9u)], u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(14921u, u_input.b, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<u32>(80479u, 0u, 4294967295u, u_input.b)))).c.d.c, reverseBits(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 9u)], u_input.a)))).a.c, ~(~_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 1950u)), vec2<u32>(48980u, 0u), ~vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], 126041u)))).b.c;
}

fn func_6(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_4) -> Struct_4 {
    let var_0 = !select(func_1(Struct_1(false, vec4<f32>(-1000f, -1874f, -839f, -1058f)), arg_3.c.d.c, vec2<u32>(max(63197u, 12249u), u_input.b)).b.a.zxy, !(!func_1(arg_3.c.d.d, Struct_1(false, vec4<f32>(arg_1.d.d.b.x, arg_2, -735f, 1352f)), vec2<u32>(0u, global1[_wgslsmith_index_u32(49583u, 9u)])).b.a.yxx), arg_3.a.xww);
    let var_1 = func_1(arg_1.d.d, Struct_1(all(vec4<bool>(arg_1.d.c.a, all(var_0), var_0.x == var_0.x, !arg_1.d.d.a)), arg_1.d.c.b), vec2<u32>(global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(reverseBits(4294967295u), 9u)], _wgslsmith_add_u32(u_input.a, 117052u), true), 9u)], _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(47570u, 53756u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(global1[_wgslsmith_index_u32(1u, 9u)], 24076u)))) << (~vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 0u, 60794u), global1[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(66856u, 9u)], global1[_wgslsmith_index_u32(u_input.b, 9u)]), 9u)]) % vec2<u32>(32u))).c.d.d;
    var var_2 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(func_5(vec2<f32>(131f, 488f), Struct_5(arg_3.c.d, Struct_4(vec4<bool>(true, arg_3.c.d.e, true, false), arg_1.c, Struct_3(26878i, vec3<f32>(arg_3.c.b.x, arg_0, -1092f), -2147483647i, Struct_2(var_0.x, -1000f, arg_3.c.d.c, Struct_1(arg_3.c.d.e, arg_3.c.d.c.b), arg_3.c.d.c.a)), vec3<i32>(arg_3.c.a, -1i, u_input.c)), arg_3.c, arg_1.d.c.b, arg_1.a), Struct_4(arg_3.a, -7350i, Struct_3(12374i, arg_3.c.b, 56134i, Struct_2(false, arg_3.c.d.c.b.x, arg_3.c.d.c, var_1, arg_1.d.e)), arg_3.d), Struct_1(arg_3.a.x, arg_1.d.c.b)).b.x, -873f) * arg_3.c.d.d.b.wz)), func_1(Struct_1(arg_2 < _wgslsmith_f_op_f32(arg_1.b.x + arg_0), var_1.b), func_5(vec2<f32>(_wgslsmith_f_op_f32(max(1493f, arg_0)), _wgslsmith_f_op_f32(arg_0 - arg_3.c.d.c.b.x)), func_1(func_1(var_1, arg_3.c.d.c, vec2<u32>(1u, u_input.a)).c.d.c, Struct_1(arg_1.d.d.a, vec4<f32>(-3027f, 245f, arg_0, arg_2)), firstLeadingBit(vec2<u32>(0u, u_input.a))), Struct_4(!vec4<bool>(true, var_1.a, arg_3.a.x, false), -2147483647i, Struct_3(2147483647i, vec3<f32>(-535f, -268f, 1141f), arg_1.c, Struct_2(true, 1000f, Struct_1(false, vec4<f32>(766f, arg_0, arg_1.d.d.b.x, arg_3.c.b.x)), Struct_1(arg_3.c.d.e, arg_3.c.d.c.b), var_0.x)), ~vec3<i32>(-13496i, 1i, -19732i)), arg_1.d.d).d.d, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, 1u), firstTrailingBit(4294967295u)), global1[_wgslsmith_index_u32(~abs(u_input.b), 9u)])), func_1(Struct_1(func_1(arg_1.d.d, func_1(Struct_1(true, var_1.b), Struct_1(false, vec4<f32>(arg_1.d.b, arg_0, 2942f, 1000f)), vec2<u32>(u_input.b, 1u)).c.d.d, reverseBits(vec2<u32>(1u, u_input.a))).b.a.x, vec4<f32>(1000f, _wgslsmith_f_op_f32(-1451f * arg_0), arg_3.c.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2074f))), Struct_1(false, vec4<f32>(-391f, _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(arg_0 + -1975f), arg_0)), _wgslsmith_mod_vec2_u32(~(vec2<u32>(0u, 4294967295u) << (vec2<u32>(11637u, u_input.b) % vec2<u32>(32u))), vec2<u32>(u_input.a, 1u))).b, arg_3.c.d.d).d.c;
    let var_3 = 72921u;
    let var_4 = ~_wgslsmith_div_i32(arg_1.c, ~(-_wgslsmith_clamp_i32(u_input.c, 0i, u_input.d)));
    return Struct_4(vec4<bool>(!arg_3.c.d.a, !(var_0.x && true), true, func_1(Struct_1(true, _wgslsmith_div_vec4_f32(arg_3.c.d.c.b, arg_3.c.d.c.b)), arg_1.d.d, vec2<u32>(~var_3, 4294967295u)).b.c.d.c.a), _wgslsmith_div_i32(u_input.c, arg_3.b), Struct_3(_wgslsmith_mult_i32(-27183i, abs(~11854i)), vec3<f32>(_wgslsmith_f_op_f32(-461f * func_1(Struct_1(var_2.a, vec4<f32>(arg_3.c.d.d.b.x, arg_3.c.b.x, -130f, var_2.b.x)), arg_1.d.c, vec2<u32>(33506u, u_input.b)).a.b), 325f, 961f), -94776i, func_1(var_1, func_1(func_5(var_2.b.wx, Struct_5(arg_3.c.d, Struct_4(arg_3.a, u_input.c, Struct_3(arg_3.b, var_1.b.zwx, u_input.d, arg_1.d), arg_3.d), arg_1, vec4<f32>(arg_2, 904f, var_2.b.x, var_1.b.x), arg_3.d.x), arg_3, Struct_1(false, var_1.b)).d.c, arg_3.c.d.d, vec2<u32>(0u, 47448u) << (vec2<u32>(var_3, global1[_wgslsmith_index_u32(u_input.a, 9u)]) % vec2<u32>(32u))).c.d.c, vec2<u32>(4294967295u >> (0u % 32u), ~77078u)).b.c.d), -vec3<i32>(-func_1(arg_3.c.d.c, Struct_1(false, var_2.b), vec2<u32>(var_3, 4294967295u)).e, arg_3.b, _wgslsmith_sub_i32(arg_3.c.a >> (0u % 32u), var_4 ^ -13498i)));
}

fn func_7(arg_0: i32, arg_1: Struct_4, arg_2: bool, arg_3: vec2<i32>) -> f32 {
    let var_0 = vec4<i32>(u_input.d >> (21934u % 32u), (i32(-1i) * -reverseBits(-2147483647i)) >> ((~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(36976u, 9u)], u_input.a) >> (0u % 32u)) % 32u), func_4(func_1(func_1(Struct_1(true, arg_1.c.d.d.b), func_6(-212f, Struct_3(arg_3.x, vec3<f32>(-1018f, arg_1.c.b.x, arg_1.c.b.x), 1i, Struct_2(arg_2, -511f, arg_1.c.d.c, arg_1.c.d.c, arg_2)), arg_1.c.d.d.b.x, arg_1).c.d.c, reverseBits(vec2<u32>(u_input.a, 0u))).c.d.d, arg_1.c.d.c, _wgslsmith_add_vec2_u32(vec2<u32>(1u, 55266u) & vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(4294967295u, 9u)]), ~vec2<u32>(21262u, global1[_wgslsmith_index_u32(1u, 9u)]))), vec2<f32>(arg_1.c.b.x, arg_1.c.d.c.b.x), func_6(_wgslsmith_f_op_f32(arg_1.c.d.b * func_1(Struct_1(true, arg_1.c.d.d.b), arg_1.c.d.c, vec2<u32>(0u, u_input.a)).d.x), Struct_3(-arg_3.x, vec3<f32>(arg_1.c.b.x, arg_1.c.d.c.b.x, -231f), select(arg_0, arg_1.d.x, arg_2), arg_1.c.d), _wgslsmith_f_op_f32(-arg_1.c.d.b), Struct_4(arg_1.a, ~(-1i), Struct_3(-919i, arg_1.c.d.c.b.xxx, arg_1.d.x, arg_1.c.d), select(vec3<i32>(arg_3.x, u_input.d, 6612i), arg_1.d, arg_1.a.yyy))).a).x, 10878i << (global1[_wgslsmith_index_u32(~(u_input.a << (5650u % 32u)) & ~abs(100976u), 9u)] % 32u));
    global0 = 1i;
    global1 = array<u32, 9>();
    var var_1 = arg_1.c;
    let var_2 = u_input.d;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.d.d.b.x), -520f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1076f;
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-487f)) * _wgslsmith_f_op_f32(-1323f - -1238f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-920f, _wgslsmith_f_op_f32(min(836f, 1000f)))))));
    global0 = u_input.c;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_7(u_input.c, func_6(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-455f - 544f), -1769f, true)), func_5(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1421f), vec2<f32>(-1613f, 240f)), func_1(Struct_1(true, vec4<f32>(-605f, 815f, -1507f, -377f)), Struct_1(true, vec4<f32>(221f, 660f, 1000f, -285f)), vec2<u32>(1u, 0u)), func_1(Struct_1(false, vec4<f32>(179f, 245f, -978f, 2513f)), Struct_1(false, vec4<f32>(405f, -833f, -1000f, 1052f)), vec2<u32>(4294967295u, u_input.a)).b, Struct_1(true, vec4<f32>(947f, 923f, -801f, 794f))), _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.a, 9u)], 9u)], abs(-42554i), func_1(Struct_1(true, vec4<f32>(-884f, -1298f, -182f, -461f)), Struct_1(true, vec4<f32>(-154f, 1057f, -417f, 450f)), vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 9u)], u_input.a)).b, func_5(vec2<f32>(-750f, 426f), Struct_5(Struct_2(false, 732f, Struct_1(false, vec4<f32>(-2362f, 423f, -1365f, -1580f)), Struct_1(false, vec4<f32>(505f, -122f, -904f, 842f)), false), Struct_4(vec4<bool>(true, false, true, false), u_input.c, Struct_3(1i, vec3<f32>(-476f, 1066f, -356f), u_input.d, Struct_2(false, -213f, Struct_1(false, vec4<f32>(-228f, 746f, -733f, -911f)), Struct_1(true, vec4<f32>(-936f, -1164f, -226f, -1700f)), false)), vec3<i32>(-2147483647i, u_input.c, u_input.d)), Struct_3(-2147483647i, vec3<f32>(-2768f, -1260f, 708f), u_input.d, Struct_2(true, 597f, Struct_1(true, vec4<f32>(828f, 822f, -290f, 305f)), Struct_1(false, vec4<f32>(-1246f, -887f, 285f, -2646f)), false)), vec4<f32>(-676f, -1639f, 261f, -562f), u_input.c), Struct_4(vec4<bool>(false, true, true, false), u_input.d, Struct_3(u_input.d, vec3<f32>(115f, 661f, -991f), 23726i, Struct_2(true, 1241f, Struct_1(true, vec4<f32>(616f, -1218f, 1459f, 1108f)), Struct_1(false, vec4<f32>(646f, -1413f, -400f, -531f)), true)), vec3<i32>(u_input.d, u_input.d, 16004i)), Struct_1(true, vec4<f32>(-1265f, -1214f, -1483f, 443f))).d.d)), func_1(func_1(Struct_1(true, vec4<f32>(229f, 657f, 664f, 716f)), Struct_1(true, vec4<f32>(-1075f, 1000f, -1735f, -1000f)), vec2<u32>(u_input.a, u_input.b)).a.d, Struct_1(true, vec4<f32>(-1000f, 1713f, 1002f, 108f)), vec2<u32>(4294967295u, 45778u)).b), (1i <= u_input.d) && true, vec2<i32>(u_input.c, u_input.d))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))));
    let var_1 = vec4<f32>(114f, _wgslsmith_f_op_f32(ceil(1260f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1240f)) * _wgslsmith_f_op_f32(max(-598f, 564f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + 1186f), _wgslsmith_div_f32(964f, -359f))), -438f)), 788f);
    var var_2 = vec3<i32>(~(-2147483647i), -1i, i32(-1i) * -func_1(func_6(874f, Struct_3(-1i, var_1.xyy, 2147483647i, Struct_2(false, var_1.x, Struct_1(false, var_1), Struct_1(true, var_1), false)), var_1.x, Struct_4(vec4<bool>(false, false, false, false), u_input.d, Struct_3(1i, var_1.wyy, u_input.c, Struct_2(false, var_1.x, Struct_1(true, vec4<f32>(var_1.x, var_1.x, -2294f, 1367f)), Struct_1(true, var_1), true)), vec3<i32>(-1i, -14739i, 1i))).c.d.d, func_1(Struct_1(false, vec4<f32>(var_1.x, var_1.x, var_1.x, 1000f)), Struct_1(true, var_1), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], u_input.b)).c.d.c, vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 9u)], 9u)], 9u)], u_input.a)).c.a);
    var var_3 = select(-vec4<i32>(_wgslsmith_div_i32(abs(var_2.x), _wgslsmith_mod_i32(var_2.x, var_2.x)), _wgslsmith_sub_i32(var_2.x | -69968i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, var_2.x, var_2.x), vec4<i32>(var_2.x, -41222i, var_2.x, -2147483647i))), var_2.x, u_input.d), (vec4<i32>(_wgslsmith_div_i32(0i, u_input.d), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.d, u_input.c), vec3<i32>(var_2.x, -23136i, 1i)), func_1(Struct_1(false, vec4<f32>(-340f, -282f, var_1.x, 177f)), Struct_1(true, vec4<f32>(-1000f, 1210f, -942f, -419f)), vec2<u32>(82756u, 4294967295u)).b.d.x, 9455i) | ((vec4<i32>(0i, u_input.c, u_input.c, var_2.x) ^ vec4<i32>(1690i, -3898i, u_input.d, var_2.x)) >> (vec4<u32>(u_input.b, 1u, u_input.a, 24794u) % vec4<u32>(32u)))) >> (select(~vec4<u32>(u_input.b, 49495u, u_input.a, 57689u), ~(~vec4<u32>(4294967295u, 0u, 4294967295u, 1u)), _wgslsmith_f_op_f32(-var_1.x) >= var_1.x) % vec4<u32>(32u)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(38192u, 9u)], global1[_wgslsmith_index_u32(3807u, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)]), ~vec3<u32>(global1[_wgslsmith_index_u32(12340u, 9u)], u_input.a, 18254u))), firstTrailingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(41199u, global1[_wgslsmith_index_u32(5489u, 9u)], 0u), ~vec3<u32>(u_input.b, 32087u, u_input.a)))), var_1.xwx, 0i << (abs(~global1[_wgslsmith_index_u32(40416u, 9u)]) % 32u));
}

