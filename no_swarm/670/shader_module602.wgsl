struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<u32> = vec4<u32>(0u, 0u, 103317u, 4294967295u);

var<private> global2: array<i32, 32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<i32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.d.a + arg_0.x))), global0.d.a), _wgslsmith_f_op_f32(step(global0.c.x, _wgslsmith_f_op_f32(abs(arg_0.x))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.x, global0.a.x) + global0.c)))), _wgslsmith_mod_u32(1u, global0.b), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(348f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-832f - global0.e.a)), var_0.x))), Struct_1(701f, vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 14732i, -1i, arg_1.b.x), arg_1.c.x), Struct_1(_wgslsmith_div_f32(1625f, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_mod_vec4_i32(~(-arg_2), vec4<i32>(-global2[_wgslsmith_index_u32(u_input.c, 32u)], 1i, firstTrailingBit(60178i), u_input.b)), global0.e.c | (global0.e.c || !global0.e.c)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(292f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.x, var_0.x)), _wgslsmith_f_op_f32(1515f - _wgslsmith_f_op_f32(round(global0.a.x))), var_1.e.c)));
    var var_3 = var_1.e.c;
    var_3 = var_1.d.c && (any(vec3<bool>(true, 1u > arg_1.a, var_1.d.c)) & global0.d.c);
    return ~vec3<i32>(_wgslsmith_clamp_i32(~25079i, -(19118i & global0.e.b.x), _wgslsmith_div_i32(-arg_2.x, _wgslsmith_sub_i32(arg_2.x, arg_1.b.x))), i32(-1i) * -(global0.e.b.x << (1u % 32u)), _wgslsmith_mod_i32(-_wgslsmith_mod_i32(var_1.e.b.x, -2147483647i), 0i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> bool {
    var var_0 = Struct_3((_wgslsmith_add_u32(_wgslsmith_div_u32(31251u, 24025u), 58195u) << (~(arg_1.a & 51269u) % 32u)) | (~(~48097u) | select(~arg_0.b, _wgslsmith_sub_u32(4294967295u, global0.b), arg_1.c.x)), _wgslsmith_sub_vec3_i32(arg_1.b, vec3<i32>(2147483647i, 0i, arg_0.e.b.x)), !(!arg_1.c));
    let var_1 = global0.e.c;
    var var_2 = select(!(!vec4<bool>(true, any(vec4<bool>(false, global0.e.c, false, false)), var_0.c.x, arg_0.e.c)), select(!(!select(vec4<bool>(arg_1.c.x, var_0.c.x, true, var_0.c.x), vec4<bool>(false, false, false, true), vec4<bool>(arg_1.c.x, arg_1.c.x, global0.d.c, false))), select(!select(vec4<bool>(global0.e.c, true, global0.e.c, false), vec4<bool>(true, true, true, false), global0.e.c), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, true, global0.d.c, false), vec4<bool>(arg_1.c.x, false, true, var_0.c.x)), select(vec4<bool>(arg_1.c.x, arg_0.e.c, global0.e.c, true), select(vec4<bool>(global0.d.c, arg_0.d.c, arg_0.d.c, arg_1.c.x), vec4<bool>(arg_0.e.c, false, var_0.c.x, false), vec4<bool>(false, arg_1.c.x, var_0.c.x, true)), vec4<bool>(arg_0.e.c, var_0.c.x, true, global0.d.c))), !vec4<bool>(global0.e.c, arg_0.e.c && var_0.c.x, any(vec2<bool>(global0.e.c, global0.d.c)), true)), select(select(!select(vec4<bool>(arg_0.d.c, var_0.c.x, false, false), vec4<bool>(true, var_0.c.x, var_0.c.x, arg_0.d.c), vec4<bool>(global0.d.c, arg_1.c.x, false, true)), vec4<bool>(!var_0.c.x, 1348f == arg_0.c.x, false, any(arg_1.c)), !select(vec4<bool>(var_0.c.x, false, var_0.c.x, arg_1.c.x), vec4<bool>(arg_1.c.x, true, true, arg_1.c.x), false)), select(vec4<bool>(arg_1.c.x, false | arg_0.d.c, true, true), !(!vec4<bool>(false, false, global0.d.c, global0.d.c)), select(!vec4<bool>(arg_1.c.x, arg_1.c.x, false, arg_1.c.x), !vec4<bool>(false, true, arg_1.c.x, var_0.c.x), select(vec4<bool>(global0.e.c, global0.e.c, true, arg_1.c.x), vec4<bool>(arg_1.c.x, true, global0.e.c, arg_0.e.c), arg_0.d.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(637f + arg_0.e.a) * global0.c.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a.x)))));
    var var_3 = false;
    let var_4 = ~(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, 24713u, 8658u, 39405u) >> (vec4<u32>(u_input.c, global0.b, 1u, arg_0.b) % vec4<u32>(32u)), abs(vec4<u32>(arg_1.a, 9995u, u_input.c, 1u)))));
    return !global0.e.c;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> u32 {
    let var_0 = global0.d;
    global0 = Struct_2(global0.a, ~(~4486u), global0.a, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1186f, -248f)), global0.a.x), min(~global0.d.b, _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(arg_0, vec4<i32>(global0.d.b.x, global0.e.b.x, -1i, -631i)), var_0.b >> (vec4<u32>(global0.b, 1u, arg_1, 52820u) % vec4<u32>(32u)))), func_4(Struct_2(_wgslsmith_f_op_vec3_f32(global0.a + global0.a), max(44296u, global0.b), global0.a, global0.e, global0.e), Struct_3(u_input.c, func_3(global0.a.xz, Struct_3(1u, u_input.a, vec3<bool>(false, global0.e.c, false)), arg_0), select(vec3<bool>(var_0.c, global0.d.c, false), vec3<bool>(global0.d.c, true, false), vec3<bool>(true, global0.e.c, false))))), global0.d);
    global2 = array<i32, 32>();
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(~u_input.c, ~u_input.c), 0u, _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 4294967295u), vec2<u32>(1u, global0.b))), select(max(u_input.c, 16614u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global0.b, global1.x, 1u), vec4<u32>(global1.x, 0u, u_input.c, global1.x)), var_0.c)), _wgslsmith_mod_u32(18964u, global1.x) & u_input.c), abs(~vec4<u32>(global0.b, global0.b, u_input.c, 4294967295u) << (abs(max(vec4<u32>(global1.x, global1.x, arg_1, global0.b), vec4<u32>(u_input.c, 0u, 1u, 30592u))) % vec4<u32>(32u))));
    var var_2 = global0.d;
    return 106031u;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-420f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.d.a * 1197f), arg_1))) * arg_2.a.x);
    let var_1 = _wgslsmith_f_op_f32(ceil(-156f));
    let var_2 = arg_2;
    var var_3 = all(vec4<bool>(true, (global0.b >> (4294967295u % 32u)) < 1u, select(arg_2.d.c, !global0.d.c, false), false));
    var var_4 = select(_wgslsmith_mult_vec3_i32(var_2.e.b.yyx, vec3<i32>(~var_2.d.b.x, -(u_input.b >> (36278u % 32u)), -2147483647i)), ~vec3<i32>(arg_2.d.b.x >> (global1.x % 32u), -32745i, global2[_wgslsmith_index_u32(countOneBits(global0.b), 32u)] & arg_2.d.b.x), vec3<bool>(func_4(Struct_2(_wgslsmith_f_op_vec3_f32(ceil(arg_2.c)), u_input.c, var_2.a, Struct_1(arg_2.c.x, vec4<i32>(var_2.e.b.x, var_2.d.b.x, 11320i, global2[_wgslsmith_index_u32(global1.x, 32u)]), var_2.d.c), arg_2.e), Struct_3(~14603u, arg_2.d.b.wzy & arg_2.e.b.wwx, select(vec3<bool>(false, false, var_2.e.c), vec3<bool>(false, var_2.d.c, false), vec3<bool>(var_2.d.c, false, global0.d.c)))), true, !(_wgslsmith_f_op_f32(f32(-1f) * -673f) <= _wgslsmith_f_op_f32(ceil(var_0)))));
    return var_2;
}

fn func_6(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_2;
    var var_1 = max(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -firstLeadingBit(arg_2.e.b), vec4<i32>(_wgslsmith_div_i32(2147483647i, ~global2[_wgslsmith_index_u32(1u, 32u)]), abs(_wgslsmith_div_i32(-27437i, 1678i)), max(1i, -2147483647i), _wgslsmith_add_i32(arg_3.b.x, _wgslsmith_mod_i32(global0.d.b.x, global2[_wgslsmith_index_u32(var_0.b, 32u)])))), var_0.e.b);
    var var_2 = func_5(max(_wgslsmith_sub_u32(abs(~arg_2.b), ~_wgslsmith_clamp_u32(var_0.b, 47939u, global0.b)), 14302u), 551f, var_0, select(select(select(vec2<bool>(arg_2.e.c, false), select(vec2<bool>(global0.d.c, arg_3.c), vec2<bool>(arg_3.c, false), false), var_0.e.c), !select(vec2<bool>(var_0.e.c, arg_2.e.c), vec2<bool>(arg_3.c, true), vec2<bool>(var_0.e.c, true)), any(!vec3<bool>(var_0.d.c, true, arg_2.d.c))), !vec2<bool>(all(vec3<bool>(var_0.e.c, true, var_0.e.c)), true), 18709i != abs(u_input.b))).d;
    var_2 = func_5(50619u, 1117f, var_0, !select(vec2<bool>(arg_2.d.c, true), vec2<bool>(true, false), vec2<bool>(global1.x >= 16936u, global0.e.c))).e;
    var var_3 = func_5(_wgslsmith_sub_u32(33813u | arg_2.b, ~var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -205f) * arg_1.x), Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_1 + vec3<f32>(global0.c.x, var_0.c.x, -756f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0.c), vec3<f32>(var_2.a, arg_2.a.x, var_2.a))))), global1.x, global0.a, func_5(1u, _wgslsmith_f_op_f32(-var_0.e.a), arg_2, vec2<bool>(false, arg_3.c)).e, Struct_1(_wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(arg_3.b, arg_2.e.b), firstLeadingBit(var_2.b)), _wgslsmith_mult_u32(global0.b, global1.x) != global1.x)), select(select(vec2<bool>(global0.e.c || false, func_4(Struct_2(vec3<f32>(global0.a.x, var_0.e.a, -915f), global0.b, vec3<f32>(2120f, arg_2.a.x, -713f), Struct_1(arg_3.a, vec4<i32>(2147483647i, 1541i, u_input.a.x, -34899i), false), global0.e), Struct_3(35875u, vec3<i32>(-2147483647i, var_0.d.b.x, var_2.b.x), vec3<bool>(false, false, global0.e.c)))), vec2<bool>(true, true), true), vec2<bool>(true, arg_3.c), true && var_2.c)).d.c;
    return var_0;
}

fn func_1() -> vec3<bool> {
    global0 = func_6(~2147483647i, vec3<f32>(1401f, _wgslsmith_div_f32(global0.c.x, global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(378f + global0.e.a) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.c.x * -252f))))), func_5(_wgslsmith_add_u32(_wgslsmith_div_u32(~0u, _wgslsmith_add_u32(22187u, global1.x)), func_2(global0.d.b, 1u) ^ _wgslsmith_sub_u32(global1.x, 0u)), _wgslsmith_f_op_f32(min(-2100f, 149f)), Struct_2(_wgslsmith_f_op_vec3_f32(-global0.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, global1.x, 49818u, global1.x), vec4<u32>(global1.x, global0.b, 0u, global0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-750f, global0.c.x, global0.c.x)))), global0.e, global0.e), !select(!vec2<bool>(global0.e.c, global0.d.c), !vec2<bool>(false, global0.e.c), vec2<bool>(false, global0.d.c))), func_5(u_input.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.e.a), _wgslsmith_f_op_f32(-global0.a.x), true)), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-369f, global0.d.a, global0.e.a) * global0.a) - vec3<f32>(463f, 2484f, global0.e.a)), 0u, vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.d.a)), _wgslsmith_f_op_f32(floor(-1277f)), _wgslsmith_f_op_f32(global0.a.x * -1054f)), global0.e, global0.e), select(!(!vec2<bool>(true, global0.d.c)), vec2<bool>(true, -2147483647i < global0.e.b.x), vec2<bool>(global0.a.x >= global0.e.a, false))).d);
    var var_0 = global0.e;
    global0 = func_5(max(1u, 26669u), var_0.a, func_5(func_6(-2147483647i, _wgslsmith_f_op_vec3_f32(-global0.c), func_6(0i, global0.a, Struct_2(vec3<f32>(1147f, -1000f, -1000f), global0.b, vec3<f32>(1000f, global0.c.x, global0.e.a), global0.e, Struct_1(global0.a.x, vec4<i32>(var_0.b.x, u_input.b, u_input.a.x, global2[_wgslsmith_index_u32(51594u, 32u)]), global0.e.c)), global0.e), Struct_1(191f, global0.d.b, true)).b, global0.a.x, func_6(u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) * _wgslsmith_div_vec3_f32(global0.c, vec3<f32>(global0.a.x, global0.c.x, var_0.a))), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -2069f, var_0.a) + global0.a), global1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(564f, -286f, -792f)), func_5(global1.x, 933f, Struct_2(vec3<f32>(-1595f, var_0.a, global0.c.x), 46170u, vec3<f32>(1703f, var_0.a, var_0.a), Struct_1(var_0.a, vec4<i32>(0i, -57063i, global0.e.b.x, 14243i), global0.d.c), Struct_1(402f, vec4<i32>(-2147483647i, u_input.a.x, global0.d.b.x, 48008i), global0.e.c)), vec2<bool>(false, true)).e, global0.d), Struct_1(_wgslsmith_f_op_f32(1889f - -300f), global0.e.b, true && global0.e.c)), vec2<bool>(var_0.c, all(select(vec3<bool>(var_0.c, false, var_0.c), vec3<bool>(global0.d.c, false, false), var_0.c)))), !vec2<bool>(false, all(vec3<bool>(false, true, global0.d.c))));
    var var_1 = !(!(!global0.d.c));
    let var_2 = !select(vec2<bool>(func_5(4294967295u, var_0.a, Struct_2(global0.c, u_input.c, global0.c, global0.e, Struct_1(-1000f, vec4<i32>(u_input.a.x, 39884i, 2147483647i, u_input.a.x), true)), !vec2<bool>(var_0.c, global0.d.c)).d.c, true), select(select(select(vec2<bool>(false, true), vec2<bool>(global0.d.c, true), vec2<bool>(false, true)), vec2<bool>(true, true), !vec2<bool>(global0.e.c, var_0.c)), vec2<bool>(global0.d.c, u_input.b <= u_input.b), vec2<bool>(true, true)), func_4(func_6(39441i, global0.a, Struct_2(vec3<f32>(var_0.a, global0.e.a, -1633f), u_input.c, vec3<f32>(global0.c.x, 2226f, global0.a.x), global0.e, Struct_1(-401f, var_0.b, global0.e.c)), global0.e), Struct_3(max(global1.x, global1.x), vec3<i32>(global0.e.b.x, global2[_wgslsmith_index_u32(4294967295u, 32u)], -4353i), !vec3<bool>(var_0.c, false, false))));
    return !vec3<bool>(select(!(var_2.x && false), any(var_2), !(!var_0.c)), func_6(-1i, vec3<f32>(var_0.a, 944f, -338f), Struct_2(vec3<f32>(global0.e.a, 149f, -1171f), global1.x, vec3<f32>(global0.e.a, -331f, -218f), global0.d, Struct_1(593f, global0.d.b, global0.e.c)), global0.e).e.c & false, !var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.a, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.c.x, 1000f, global0.e.a), vec3<f32>(global0.c.x, global0.a.x, -290f))), func_1()))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(sign(global0.c.x)), global0.e.a)))), u_input.c, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d.a, global0.d.a) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(global0.c.x * global0.e.a))), _wgslsmith_f_op_f32(global0.a.x * global0.a.x)), Struct_1(-2454f, vec4<i32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.c, 0u), 32u)], global2[_wgslsmith_index_u32(1u, 32u)], global0.d.b.x, func_5(~55076u, _wgslsmith_f_op_f32(527f + global0.e.a), Struct_2(vec3<f32>(global0.a.x, -1638f, global0.e.a), global1.x, global0.c, global0.e, global0.e), vec2<bool>(true, true)).e.b.x), true), Struct_1(-491f, global0.e.b, global0.d.c));
    var var_2 = select(min(_wgslsmith_div_u32(global1.x, ~4294967295u), 0u), ~max(~_wgslsmith_sub_u32(u_input.c, global1.x), func_5(global1.x, global0.c.x, var_1, select(vec2<bool>(false, false), vec2<bool>(true, var_1.d.c), vec2<bool>(false, var_1.e.c))).b), var_1.e.a > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2033f * -1474f) * _wgslsmith_f_op_f32(select(global0.a.x, global0.e.a, false))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_1.c.x, var_1.c.x, global0.d.c))))));
    var_2 = global1.x;
    global1 = _wgslsmith_mod_vec4_u32(~((firstTrailingBit(vec4<u32>(global1.x, 4294967295u, 44600u, 4294967295u)) << (select(vec4<u32>(var_1.b, 1u, 38565u, 1u), vec4<u32>(u_input.c, u_input.c, 20376u, 98439u), true) % vec4<u32>(32u))) << (vec4<u32>(4294967295u, 86042u, ~9652u, u_input.c) % vec4<u32>(32u))), ~(~reverseBits(~vec4<u32>(4294967295u, 43733u, var_1.b, u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.c.x), 0u, 1i);
}

