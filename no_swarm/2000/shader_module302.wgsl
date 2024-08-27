struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<f32>) -> vec2<u32> {
    var var_0 = _wgslsmith_add_vec2_u32(select(select(abs(vec2<u32>(global0.b, 6736u)), vec2<u32>(0u, u_input.a) << (vec2<u32>(arg_1.c, u_input.a) % vec2<u32>(32u)), select(arg_1.a.zw, global0.a.ww, global0.a.yz)) & (_wgslsmith_sub_vec2_u32(vec2<u32>(69750u, 38307u), vec2<u32>(global0.c, global1[_wgslsmith_index_u32(68084u, 27u)])) | select(vec2<u32>(22327u, global1[_wgslsmith_index_u32(49855u, 27u)]), vec2<u32>(14645u, global0.c), arg_1.a.x)), ~vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 27u)], global0.c), select(!any(global0.a), any(!vec4<bool>(true, arg_1.a.x, true, global0.a.x)), arg_1.a.x)), ~_wgslsmith_clamp_vec2_u32(~(vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 27u)], 8476u) & vec2<u32>(0u, u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(48311u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 27u)], 27u)]), vec2<u32>(arg_1.b, global0.c))), (vec2<u32>(global1[_wgslsmith_index_u32(18260u, 27u)], 0u) & vec2<u32>(42u, 34544u)) & ~vec2<u32>(0u, 4294967295u)));
    var var_1 = !select(arg_1.a, arg_1.a, select(vec4<bool>(true, true, true, true), !select(global0.a, arg_1.a, true), select(global0.a, vec4<bool>(false, false, true, false), select(arg_1.a, vec4<bool>(false, arg_1.a.x, true, global0.a.x), vec4<bool>(true, false, true, true)))));
    var_0 = vec2<u32>(_wgslsmith_add_u32(global0.b, 97898u), ~abs(37233u));
    let var_2 = Struct_1(!vec4<bool>(global0.a.x, arg_2.x != _wgslsmith_div_f32(1291f, arg_2.x), !select(arg_1.a.x, var_1.x, arg_1.a.x), var_1.x), global1[_wgslsmith_index_u32(firstTrailingBit(71963u), 27u)], u_input.a, arg_1.d);
    let var_3 = ~arg_1.d.x;
    return _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~(global0.c | 4294967295u), _wgslsmith_add_u32(~4294967295u, 0u))), abs(min(~vec2<u32>(var_0.x, 15943u), ~vec2<u32>(var_0.x, var_0.x))) | vec2<u32>(var_0.x, ~(~u_input.a)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<bool> {
    global1 = array<u32, 27>();
    global1 = array<u32, 27>();
    return arg_0.a;
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = Struct_1(!(!(!select(vec4<bool>(true, false, false, global0.a.x), vec4<bool>(global0.a.x, true, arg_0, arg_0), global0.a.x))), global0.b, global0.b, vec2<i32>(~u_input.b, -firstLeadingBit(u_input.c) | ~_wgslsmith_add_i32(u_input.b, -1i)));
    global0 = Struct_1(select(func_4(Struct_1(select(vec4<bool>(global0.a.x, true, true, global0.a.x), vec4<bool>(arg_0, global0.a.x, false, arg_0), false), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 23853u), vec3<u32>(u_input.a, 86235u, 0u)), ~5446u, abs(global0.d)), true, func_3(-3418i << (1u % 32u), Struct_1(vec4<bool>(global0.a.x, arg_0, false, arg_0), 0u, global0.b, global0.d), vec3<f32>(-510f, 1563f, -644f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1605f, -1190f)))), Struct_1(global0.a, ~global1[_wgslsmith_index_u32(u_input.a, 27u)], ~8609u, global0.d)), select(!global0.a, select(global0.a, vec4<bool>(true, false, false, arg_0), select(vec4<bool>(arg_0, true, true, true), vec4<bool>(arg_0, arg_0, global0.a.x, arg_0), false)), vec4<bool>(global0.a.x | false, false, true, arg_0)), vec4<bool>(true, true || arg_0, true, arg_0)), ~u_input.a & select(~firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a, 27u)]), 1u, !arg_0 | any(vec3<bool>(arg_0, global0.a.x, false))), ~49271u, _wgslsmith_add_vec2_i32(~(global0.d ^ global0.d), global0.d));
    let var_0 = -465f;
    let var_1 = ~(~1u);
    var var_2 = Struct_1(global0.a, reverseBits(global0.c), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(select(vec4<u32>(27078u, 36824u, 89755u, 4294967295u), vec4<u32>(25755u, global1[_wgslsmith_index_u32(32876u, 27u)], 1u, u_input.a), true), vec4<u32>(33936u, var_1, global0.b, global0.c) << (vec4<u32>(u_input.a, 25904u, 1u, 4294967295u) % vec4<u32>(32u)))), vec4<u32>(54265u, global1[_wgslsmith_index_u32(52576u ^ ~global0.c, 27u)], ~1u, func_3(~1i, Struct_1(global0.a, u_input.a, 3448u, vec2<i32>(-63346i, -17603i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1721f, -1201f, -874f) + vec3<f32>(var_0, var_0, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))).x)), _wgslsmith_clamp_vec2_i32(select(global0.d, global0.d, any(global0.a)) | global0.d, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, i32(-1i) * -1i), global0.d), min(global0.d >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), -global0.d)));
    return Struct_1(!select(select(!var_2.a, var_2.a, select(global0.a, vec4<bool>(var_2.a.x, true, global0.a.x, arg_0), vec4<bool>(true, arg_0, var_2.a.x, arg_0))), select(global0.a, select(vec4<bool>(false, true, false, var_2.a.x), global0.a, vec4<bool>(arg_0, var_2.a.x, false, global0.a.x)), !arg_0), (var_2.c > 23861u) && true), ~var_2.b, ~4294967295u, _wgslsmith_div_vec2_i32(~(~firstLeadingBit(vec2<i32>(0i, -9625i))), var_2.d));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_sub_vec4_i32(~select(vec4<i32>(-1i) * -vec4<i32>(2147483647i, global0.d.x, global0.d.x, 23826i), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(global0.d.x, -30673i, arg_1.d.x, u_input.b)), ~vec4<i32>(arg_1.d.x, 1i, -25242i, arg_1.d.x)), func_4(func_2(arg_1.a.x), true, vec2<u32>(arg_1.b, 2449u), Struct_1(vec4<bool>(global0.a.x, true, global0.a.x, false), 71675u, arg_1.c, global0.d))), _wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 11610i, u_input.b, 1i), max(vec4<i32>(global0.d.x, -2147483647i, -221i, -1i), vec4<i32>(u_input.c, 2147483647i, global0.d.x, arg_1.d.x)))), vec4<i32>(_wgslsmith_add_i32(~3333i, ~1i), ~_wgslsmith_clamp_i32(0i, 1i, -2147483647i), abs(1i), ~(arg_1.d.x ^ 2147483647i))));
    global1 = array<u32, 27>();
    let var_1 = func_2(!(arg_0.x || arg_1.a.x));
    let var_2 = -arg_1.d.x | firstLeadingBit(~(15285i & -global0.d.x));
    let var_3 = func_2(true).a.x;
    return arg_1.c;
}

fn func_1(arg_0: u32) -> u32 {
    global0 = Struct_1(!vec4<bool>(select(global0.a.x, global0.a.x | global0.a.x, select(global0.a.x, true, false)), true, false, global0.a.x), 38626u, func_5(!vec2<bool>(any(global0.a), true), func_2(false)), _wgslsmith_sub_vec2_i32(-global0.d, global0.d & vec2<i32>(_wgslsmith_sub_i32(global0.d.x, 24004i), u_input.b)));
    var var_0 = vec3<bool>(true, global0.c <= global0.b, global0.a.x | true);
    var_0 = func_2(all(vec4<bool>(global0.a.x, true, !func_4(Struct_1(global0.a, arg_0, 86451u, vec2<i32>(u_input.b, -2147483647i)), true, vec2<u32>(u_input.a, 59706u), Struct_1(global0.a, global0.b, arg_0, vec2<i32>(global0.d.x, -20714i))).x, func_2(var_0.x || var_0.x).a.x))).a.xyy;
    var var_1 = ~(-reverseBits(countOneBits(vec3<i32>(-43592i, 360i, 1i) >> (vec3<u32>(arg_0, 4294967295u, 40116u) % vec3<u32>(32u)))));
    var_1 = reverseBits(vec3<i32>(_wgslsmith_sub_i32(global0.d.x, _wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, global0.d.x), _wgslsmith_sub_i32(u_input.c, var_1.x))), _wgslsmith_mult_i32(~global0.d.x, -2147483647i), _wgslsmith_clamp_i32(global0.d.x, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_clamp_i32(var_1.x, global0.d.x, 31681i)), 14045i)));
    return ~(~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 85943u) << (arg_0 % 32u)) & ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a, func_1(0u), func_3(global0.d.x, func_2(true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1804f, 370f, 546f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(163f, 1395f, -1791f) - vec3<f32>(1087f, 143f, -575f))) - vec3<f32>(883f, -176f, _wgslsmith_f_op_f32(f32(-1f) * -225f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(245f, 1864f) * vec2<f32>(-3229f, -580f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(940f, -632f))))))).x, vec2<i32>(-(2147483647i ^ u_input.b), 17523i));
    global0 = func_2(all(global0.a.wyw));
    var_0 = Struct_1(select(global0.a, vec4<bool>(true, var_0.a.x, global0.a.x, true), false), max(global1[_wgslsmith_index_u32(75539u, 27u)], (var_0.b | ~23457u) ^ reverseBits(min(global0.b, 55369u))), 4294967295u | ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(var_0.b, 27u)], 4294967295u), vec2<u32>(0u, 0u)), 97817u, any(vec4<bool>(false, global0.a.x, var_0.a.x, true))), vec2<i32>(_wgslsmith_dot_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 2147483647i, 1i), vec3<i32>(2147483647i, -1i, var_0.d.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(8556i, -2147483647i, 0i), vec3<i32>(var_0.d.x, 0i, -59619i)), select(vec3<bool>(var_0.a.x, false, false), vec3<bool>(var_0.a.x, true, global0.a.x), false)), vec3<i32>(min(var_0.d.x, 8297i), 1i, -35826i)), i32(-1i) * -458i));
    var var_1 = Struct_1(vec4<bool>(any(global0.a.zw), any(global0.a.xy), false, true), func_5(vec2<bool>(false, false), Struct_1(global0.a, min(firstTrailingBit(u_input.a), 1u), ~max(18061u, global0.b), global0.d & vec2<i32>(var_0.d.x, var_0.d.x))), ~select(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global0.c, 27u)], global0.b), ~4294967295u, all(vec2<bool>(true, true))), global0.d);
    let var_2 = min(~vec4<i32>(0i | var_0.d.x, var_0.d.x, -19089i ^ _wgslsmith_sub_i32(var_0.d.x, -1i), global0.d.x), _wgslsmith_add_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 2147483647i, var_1.d.x, var_0.d.x), vec4<i32>(-1i, -4080i, -44193i, var_1.d.x) >> (vec4<u32>(35268u, var_1.b, 40328u, var_0.c) % vec4<u32>(32u)))), countOneBits(~(vec4<i32>(8647i, var_0.d.x, -2147483647i, -5088i) << (vec4<u32>(global0.c, 13754u, 13025u, var_1.c) % vec4<u32>(32u))))));
    let var_3 = func_2(var_0.a.x);
    var var_4 = Struct_1(vec4<bool>(~global1[_wgslsmith_index_u32(var_0.b, 27u)] > global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~18715u, ~var_3.c, u_input.a), 27u)], global0.a.x || true, !var_3.a.x, global0.a.x && !all(vec3<bool>(var_1.a.x, var_3.a.x, var_1.a.x))), var_0.b, (~var_0.c | _wgslsmith_mult_u32(22164u, 0u)) << (26192u % 32u), vec2<i32>(~countOneBits(~1i), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_2.xx, var_3.d) ^ -78135i, var_3.d.x)));
    var_4 = func_2(all(global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global0.c, 8513u, 3346u) >> (vec4<u32>(var_0.c, var_1.b, 1u, 4294967295u) % vec4<u32>(32u)), ~(~vec4<u32>(var_1.c, var_1.c, 0u, var_1.c))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1440f), _wgslsmith_f_op_f32(f32(-1f) * -1321f), _wgslsmith_div_f32(-604f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1757f, -138f, 1000f, -287f), vec4<f32>(995f, -468f, -309f, -1038f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(181f, -149f, -793f, 1541f), vec4<f32>(354f, 394f, 331f, -351f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-730f, 1015f, -280f, 1169f)), vec4<f32>(1467f, 2624f, 1000f, 1061f)), vec4<bool>(false, !var_4.a.x, true, var_4.d.x > 17934i)))), vec2<u32>(global0.b, 1u), 463f, func_3(var_4.d.x, var_3, vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2309f, 1000f))))).x);
}

