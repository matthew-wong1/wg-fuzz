struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(1i, 17901i), vec2<i32>(-26619i, -9368i));

var<private> global2: array<vec3<u32>, 9>;

var<private> global3: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(31358u, 4294967295u, 7796u, 43890u), vec4<u32>(1u, 18625u, 0u, 0u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(62243u, 1u, 21158u, 0u), vec4<u32>(4294967295u, 21138u, 1u, 4294967295u), vec4<u32>(65976u, 1u, 10054u, 69918u), vec4<u32>(4294967295u, 0u, 0u, 71787u), vec4<u32>(0u, 10721u, 0u, 12296u), vec4<u32>(49297u, 0u, 1u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, 0u), vec4<u32>(44594u, 76236u, 4294967295u, 4294967295u), vec4<u32>(90612u, 125752u, 27581u, 61774u), vec4<u32>(51348u, 1u, 1u, 30116u), vec4<u32>(23520u, 4294967295u, 30902u, 37973u), vec4<u32>(96642u, 42095u, 57188u, 0u), vec4<u32>(28367u, 0u, 22685u, 69968u), vec4<u32>(31827u, 34830u, 4294967295u, 4294967295u), vec4<u32>(0u, 66725u, 4294967295u, 0u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> f32 {
    var var_0 = 89160i;
    let var_1 = Struct_3(Struct_2(arg_0.a.a, arg_0.b.d.x, abs(firstTrailingBit(_wgslsmith_div_vec3_u32(arg_0.a.d.wxx, vec3<u32>(1u, 18397u, u_input.a)))), ~(vec4<u32>(global0.a, u_input.a, 0u, global0.a) ^ arg_0.a.d) ^ arg_0.d.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_0.b.e, arg_0.d.e)), vec2<f32>(_wgslsmith_f_op_f32(arg_0.b.e.x * arg_0.b.e.x), _wgslsmith_f_op_f32(round(arg_0.a.e.x))))), arg_0.a, Struct_1(-select(~31174i, countOneBits(global0.b.x), true), max(arg_0.d.c.xx, max(max(arg_0.c.b, arg_0.d.d.wy), abs(vec2<u32>(arg_0.c.d.x, 37875u)))), !(!vec2<bool>(arg_1, true)), ~(~vec2<u32>(arg_0.a.c.x, 19783u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.e.x), -573f, arg_0.c.e.x, 404f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(402f, 398f, -369f, -942f), arg_0.e.e)))), arg_0.d, Struct_1(_wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, min(-37755i, 29373i)), _wgslsmith_add_i32(~13533i, 1i)), abs(~select(vec2<u32>(61281u, u_input.a), arg_0.e.b, arg_0.b.a.x)), !select(vec2<bool>(false, arg_1), vec2<bool>(arg_0.c.c.x, arg_0.c.c.x), vec2<bool>(arg_1, arg_1)), arg_0.c.b, arg_0.c.e));
    let var_2 = var_1.c.e.wyz;
    let var_3 = ~arg_0.e.a >> (~(~(~1u)) % 32u);
    let var_4 = _wgslsmith_add_vec2_i32(vec2<i32>(~(-(arg_0.e.a ^ 33645i)), -1i), ~(-(~global0.b.yx)));
    return var_2.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: f32) -> u32 {
    var var_0 = countOneBits(_wgslsmith_sub_i32(43190i, 6188i));
    var_0 = arg_1.e.a;
    let var_1 = select(true, any(select(select(arg_1.b.a, arg_1.d.a, arg_1.b.a), select(vec4<bool>(arg_0.c.x, false, arg_0.c.x, arg_1.c.c.x), vec4<bool>(arg_0.c.x, arg_1.c.c.x, arg_0.c.x, true), arg_1.a.a), !vec4<bool>(arg_0.c.x, true, true, arg_0.c.x))) || arg_1.a.a.x, false);
    global1 = array<vec2<i32>, 2>();
    global1 = array<vec2<i32>, 2>();
    return firstLeadingBit(global0.a);
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -304f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e.x, arg_0.e.x))), arg_0.e.x), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x)), 773f);
    let var_1 = arg_0;
    global3 = array<vec4<u32>, 18>();
    global0 = Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(10035u), _wgslsmith_mult_u32(0u, u_input.a), 1u, _wgslsmith_mod_u32(9998u, 1u)) << (~global3[_wgslsmith_index_u32(u_input.a, 18u)] % vec4<u32>(32u)), vec4<u32>(~(~global0.a), abs(global0.a), var_1.d.x, global0.a | _wgslsmith_mod_u32(12124u, 62388u))), vec3<i32>(_wgslsmith_clamp_i32(global0.b.x, global0.b.x, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(57411i, var_1.a, arg_0.a, arg_0.a) << (global3[_wgslsmith_index_u32(3254u, 18u)] % vec4<u32>(32u)), ~vec4<i32>(1i, var_1.a, arg_0.a, global0.b.x)), arg_0.a) & _wgslsmith_clamp_vec3_i32(~_wgslsmith_mult_vec3_i32(global0.b, global0.b), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(34126i, -2147483647i, -54292i, global0.b.x), vec4<i32>(1i, -2147483647i, 2147483647i, var_1.a)), var_1.a << (arg_0.b.x % 32u), _wgslsmith_mod_i32(2147483647i, arg_0.a)), global0.b));
    global1 = array<vec2<i32>, 2>();
    return func_4(arg_0, Struct_3(Struct_2(select(vec4<bool>(arg_0.c.x, var_1.c.x, arg_0.c.x, var_1.c.x), vec4<bool>(false, var_1.c.x, false, false), vec4<bool>(arg_0.c.x, true, true, true)), firstTrailingBit(4294967295u), global2[_wgslsmith_index_u32(var_1.d.x, 9u)], vec4<u32>(1u, u_input.a, arg_0.b.x, u_input.a), _wgslsmith_f_op_vec2_f32(trunc(arg_0.e.wy))), Struct_2(select(vec4<bool>(false, var_1.c.x, false, arg_0.c.x), vec4<bool>(false, true, arg_0.c.x, true), vec4<bool>(arg_0.c.x, false, var_1.c.x, true)), 15465u, _wgslsmith_clamp_vec3_u32(vec3<u32>(4842u, 34847u, global0.a), vec3<u32>(7721u, arg_0.d.x, u_input.a), global2[_wgslsmith_index_u32(var_1.b.x, 9u)]), min(vec4<u32>(61227u, 79557u, u_input.a, 4294967295u), global3[_wgslsmith_index_u32(arg_0.d.x, 18u)]), _wgslsmith_div_vec2_f32(vec2<f32>(210f, -1691f), var_1.e.zz)), var_1, Struct_2(!vec4<bool>(false, false, arg_0.c.x, true), 30573u, ~global2[_wgslsmith_index_u32(global0.a, 9u)], ~global3[_wgslsmith_index_u32(0u, 18u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_0.e.x))), var_1), global2[_wgslsmith_index_u32(~(arg_0.d.x | u_input.a), 9u)] & vec3<u32>(1u, 9853u, ~arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(vec4<bool>(false, arg_0.c.x, true, var_1.c.x), global0.a, global2[_wgslsmith_index_u32(var_1.b.x, 9u)], global3[_wgslsmith_index_u32(global0.a, 18u)], var_1.e.xy), Struct_2(vec4<bool>(false, var_1.c.x, var_1.c.x, true), var_1.b.x, global2[_wgslsmith_index_u32(u_input.a, 9u)], vec4<u32>(global0.a, 0u, 26293u, global0.a), var_1.e.xx), Struct_1(var_1.a, var_1.d, vec2<bool>(var_1.c.x, arg_0.c.x), vec2<u32>(18392u, 5068u), vec4<f32>(arg_0.e.x, var_1.e.x, 2248f, var_1.e.x)), Struct_2(vec4<bool>(arg_0.c.x, arg_0.c.x, false, true), 1u, vec3<u32>(1u, 28589u, arg_0.d.x), global3[_wgslsmith_index_u32(90387u, 18u)], arg_0.e.wy), arg_0), var_1.c.x != var_1.c.x)))) | 1u;
}

fn func_5(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_3(Struct_2(select(select(vec4<bool>(arg_0.x, true, arg_0.x, arg_2.c.x), select(vec4<bool>(true, arg_2.c.x, arg_2.c.x, false), vec4<bool>(false, true, arg_2.c.x, true), arg_2.c.x), any(vec3<bool>(arg_2.c.x, true, false))), select(vec4<bool>(false, false, true, false), vec4<bool>(false, arg_2.c.x, false, arg_0.x), !vec4<bool>(arg_0.x, true, false, arg_0.x)), !(!vec4<bool>(arg_2.c.x, arg_0.x, false, arg_0.x))), _wgslsmith_sub_u32(~(~17372u), _wgslsmith_dot_vec2_u32(arg_2.b, vec2<u32>(global0.a, 38077u)) | 0u), abs(abs(select(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(44315u, 9u)], arg_0))), _wgslsmith_mod_vec4_u32(global3[_wgslsmith_index_u32(~(~4294967295u), 18u)], firstTrailingBit(_wgslsmith_mult_vec4_u32(global3[_wgslsmith_index_u32(global0.a, 18u)], vec4<u32>(4294967295u, 13443u, global0.a, arg_1)))), arg_2.e.yx), Struct_2(!vec4<bool>(arg_2.a == global0.b.x, arg_0.x == true, arg_0.x, arg_2.c.x), 5209u & ~(~arg_2.b.x), vec3<u32>(4294967295u, func_2(Struct_1(arg_2.a, arg_2.d, vec2<bool>(false, false), vec2<u32>(arg_2.b.x, 4294967295u), vec4<f32>(1069f, arg_2.e.x, arg_2.e.x, arg_2.e.x))), arg_2.b.x), global3[_wgslsmith_index_u32(global0.a, 18u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.e.x, 1000f), vec2<f32>(arg_2.e.x, -1288f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-300f, 1407f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(869f, 214f) * vec2<f32>(arg_2.e.x, -110f))))), arg_2, Struct_2(!select(vec4<bool>(arg_2.c.x, arg_0.x, arg_2.c.x, arg_2.c.x), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), all(arg_0)), 58011u, global2[_wgslsmith_index_u32(~(~1u), 9u)], reverseBits(vec4<u32>(arg_2.d.x, ~arg_1, _wgslsmith_clamp_u32(u_input.a, 1u, 4294967295u), _wgslsmith_div_u32(4808u, 91010u))), _wgslsmith_f_op_vec2_f32(min(arg_2.e.zw, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1624f, 1235f), arg_2.e.zy)), arg_2.e.wx)))), arg_2);
    let var_1 = Struct_1(global0.b.x ^ ~(-14314i), var_0.e.b, !arg_2.c, select(var_0.e.b, select(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a, 41878u), ~arg_2.b), vec2<u32>(global0.a, abs(62710u)), -1000f != _wgslsmith_f_op_f32(floor(-416f))), !arg_0.yx), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2013f - 1297f), _wgslsmith_f_op_f32(-var_0.c.e.x))), _wgslsmith_f_op_f32(var_0.b.e.x - arg_2.e.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1090f, -1323f)))), 855f, _wgslsmith_f_op_f32(max(arg_2.e.x, _wgslsmith_f_op_f32(-arg_2.e.x)))));
    var var_2 = Struct_4(global0.a, ~(-_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(1i, var_1.a, var_0.c.a)), vec3<i32>(global0.b.x, var_1.a, 1i))));
    let var_3 = any(select(!(!vec4<bool>(arg_2.c.x, arg_0.x, var_0.c.c.x, true)), select(var_0.b.a, var_0.d.a, select(vec4<bool>(true, true, arg_2.c.x, false), select(var_0.b.a, vec4<bool>(var_0.e.c.x, true, true, false), arg_2.c.x), true)), true && any(select(arg_0.zz, var_0.e.c, var_0.d.a.yy))));
    var var_4 = var_0.a.e.x;
    return vec3<bool>(all(select(!(!vec3<bool>(var_0.b.a.x, arg_2.c.x, false)), select(arg_0, select(vec3<bool>(var_0.a.a.x, true, var_3), vec3<bool>(var_3, true, true), arg_0), !vec3<bool>(arg_0.x, false, var_1.c.x)), true)), any(select(select(select(vec2<bool>(false, var_3), vec2<bool>(true, false), var_0.c.c.x), var_0.a.a.xw, !var_3), vec2<bool>(true, 4294967295u <= global0.a), true)), var_3);
}

fn func_6(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_4 {
    var var_0 = firstLeadingBit(_wgslsmith_div_vec4_i32(firstLeadingBit(-select(vec4<i32>(global0.b.x, 1i, 2147483647i, 0i), vec4<i32>(global0.b.x, global0.b.x, global0.b.x, 7700i), arg_1.x)), reverseBits(vec4<i32>(global0.b.x, global0.b.x >> (u_input.a % 32u), _wgslsmith_dot_vec2_i32(global0.b.xz, vec2<i32>(-15332i, global0.b.x)), global0.b.x ^ global0.b.x))));
    var var_1 = Struct_3(Struct_2(select(vec4<bool>(true, false, true, false), vec4<bool>(arg_1.x | arg_2.a.x, true, true, arg_1.x), arg_1.x), func_4(Struct_1(var_0.x, vec2<u32>(arg_2.c.x, 42876u), vec2<bool>(false, true), arg_2.d.wx, vec4<f32>(arg_0, 167f, 283f, arg_2.e.x)), Struct_3(Struct_2(arg_2.a, 4294967295u, vec3<u32>(4294967295u, 9245u, 4294967295u), vec4<u32>(global0.a, global0.a, 4294967295u, 14859u), vec2<f32>(arg_0, arg_2.e.x)), Struct_2(arg_2.a, 0u, vec3<u32>(global0.a, global0.a, arg_2.c.x), global3[_wgslsmith_index_u32(u_input.a, 18u)], arg_2.e), Struct_1(var_0.x, arg_2.c.zy, arg_1.yz, arg_2.d.ww, vec4<f32>(arg_2.e.x, -794f, 899f, arg_2.e.x)), arg_2, Struct_1(var_0.x, vec2<u32>(arg_2.c.x, 60574u), vec2<bool>(false, false), vec2<u32>(33420u, 1u), vec4<f32>(477f, arg_0, arg_0, -678f))), ~global2[_wgslsmith_index_u32(23039u, 9u)], 2315f) << (abs(1129u) % 32u), ~(~arg_2.d.wzw), ~arg_2.d, arg_2.e), Struct_2(vec4<bool>(false, _wgslsmith_sub_i32(global0.b.x, -20105i) < 1i, !arg_2.a.x, arg_2.a.x), global0.a, ~vec3<u32>(arg_2.d.x, arg_2.d.x, 4294967295u) >> (_wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(101648u, 9u)], _wgslsmith_sub_vec3_u32(global2[_wgslsmith_index_u32(arg_2.d.x, 9u)], vec3<u32>(46279u, u_input.a, global0.a))) % vec3<u32>(32u)), global3[_wgslsmith_index_u32(~(~reverseBits(global0.a)), 18u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_2.e)), vec2<f32>(181f, arg_0)), arg_2.e, false))), Struct_1(0i, _wgslsmith_mult_vec2_u32(~arg_2.c.yz, vec2<u32>(u_input.a, arg_2.c.x << (arg_2.c.x % 32u))), !arg_2.a.ww, ~(~(~vec2<u32>(8632u, arg_2.d.x))), vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(arg_2, Struct_2(vec4<bool>(arg_2.a.x, arg_1.x, arg_2.a.x, false), global0.a, arg_2.c, global3[_wgslsmith_index_u32(23443u, 18u)], vec2<f32>(arg_2.e.x, arg_0)), Struct_1(0i, vec2<u32>(68892u, global0.a), vec2<bool>(arg_1.x, false), vec2<u32>(0u, global0.a), vec4<f32>(arg_0, arg_0, arg_2.e.x, arg_0)), Struct_2(vec4<bool>(true, false, false, arg_2.a.x), 0u, vec3<u32>(u_input.a, global0.a, 42502u), arg_2.d, arg_2.e), Struct_1(var_0.x, vec2<u32>(55101u, 0u), vec2<bool>(arg_2.a.x, false), arg_2.d.yy, vec4<f32>(1161f, 909f, arg_2.e.x, 1000f))), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(712f, -3036f, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1223f)), _wgslsmith_f_op_f32(-arg_0))))), arg_2, Struct_1(var_0.x, arg_2.c.zy, vec2<bool>(any(vec2<bool>(false, true)), (global0.a | 50948u) <= firstTrailingBit(global0.a)), arg_2.d.zw, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1000f, -451f, 1100f) - vec4<f32>(-1384f, 598f, -304f, -426f))) + vec4<f32>(arg_0, _wgslsmith_f_op_f32(-118f + arg_2.e.x), arg_0, _wgslsmith_f_op_f32(ceil(821f))))));
    let var_2 = var_1.c.d.x;
    let var_3 = arg_2.a;
    let var_4 = ~reverseBits(~(var_1.d.d.zzw ^ vec3<u32>(4294967295u, 4294967295u, u_input.a)));
    return Struct_4(~(~var_4.x), reverseBits(global0.b));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> u32 {
    global0 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1144f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1718f, 801f)))) * -1000f), select(func_5(arg_1, abs(func_2(Struct_1(global0.b.x, vec2<u32>(45335u, 0u), arg_1.xx, vec2<u32>(arg_0, global0.a), vec4<f32>(352f, 223f, -495f, -1535f)))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, -2147483647i), vec3<i32>(2147483647i, global0.b.x, global0.b.x)), ~vec2<u32>(u_input.a, u_input.a), !vec2<bool>(arg_1.x, arg_1.x), vec2<u32>(4294967295u, 4294967295u), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -482f, 1000f, 1009f) + vec4<f32>(1000f, -868f, 1307f, 1098f)))), !(!vec3<bool>(false, arg_1.x, true)), !all(arg_1.xz)), Struct_2(!select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), !vec4<bool>(arg_1.x, false, true, true), true), 5080u, _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), _wgslsmith_mod_vec3_u32(global2[_wgslsmith_index_u32(global0.a, 9u)], vec3<u32>(6312u, u_input.a, u_input.a))), vec3<u32>(func_2(Struct_1(-1i, vec2<u32>(1u, global0.a), vec2<bool>(true, arg_1.x), vec2<u32>(7371u, 4294967295u), vec4<f32>(-1000f, 1000f, 1099f, -2781f))), ~global0.a, ~u_input.a)), global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a, u_input.a), 18u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1229f, -137f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(790f, 580f) + vec2<f32>(-1256f, -697f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-617f, -516f) * vec2<f32>(-1490f, 408f)) * _wgslsmith_div_vec2_f32(vec2<f32>(517f, 197f), vec2<f32>(1347f, 609f))))));
    global1 = array<vec2<i32>, 2>();
    let var_0 = vec4<bool>(true, arg_1.x, !arg_1.x, true);
    var var_1 = func_5(select(vec3<bool>(!var_0.x, func_5(select(var_0.yzw, vec3<bool>(arg_1.x, var_0.x, arg_1.x), arg_1.x), func_4(Struct_1(-2147483647i, vec2<u32>(4294967295u, 58971u), arg_1.zz, vec2<u32>(global0.a, 4294967295u), vec4<f32>(946f, -1115f, 622f, -224f)), Struct_3(Struct_2(vec4<bool>(false, var_0.x, arg_1.x, true), arg_0, global2[_wgslsmith_index_u32(u_input.a, 9u)], global3[_wgslsmith_index_u32(u_input.a, 18u)], vec2<f32>(-1000f, 541f)), Struct_2(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), global0.a, vec3<u32>(arg_0, 4294967295u, 89247u), global3[_wgslsmith_index_u32(16357u, 18u)], vec2<f32>(963f, -1000f)), Struct_1(global0.b.x, vec2<u32>(global0.a, 1u), vec2<bool>(var_0.x, var_0.x), vec2<u32>(u_input.a, 4294967295u), vec4<f32>(-365f, 2442f, 188f, 336f)), Struct_2(vec4<bool>(var_0.x, arg_1.x, false, arg_1.x), global0.a, global2[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(arg_0, 18u)], vec2<f32>(-1000f, -209f)), Struct_1(-37000i, vec2<u32>(68159u, 46532u), vec2<bool>(arg_1.x, var_0.x), vec2<u32>(arg_0, global0.a), vec4<f32>(-1000f, 587f, 515f, -1000f))), global2[_wgslsmith_index_u32(4294967295u, 9u)], 225f), Struct_1(global0.b.x, vec2<u32>(26958u, 4294967295u), vec2<bool>(var_0.x, arg_1.x), vec2<u32>(0u, u_input.a), vec4<f32>(1221f, 956f, -900f, -1000f))).x, true), func_5(select(func_5(vec3<bool>(arg_1.x, arg_1.x, false), 1u, Struct_1(0i, vec2<u32>(arg_0, 48146u), vec2<bool>(var_0.x, false), vec2<u32>(4294967295u, 0u), vec4<f32>(-303f, -1300f, 295f, 235f))), vec3<bool>(false, var_0.x, true), all(vec2<bool>(var_0.x, false))), global0.a, Struct_1(-21921i, abs(vec2<u32>(global0.a, 4294967295u)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(false, false)), vec2<u32>(arg_0, 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(437f, 2182f, -1414f, 1369f)))), arg_1), _wgslsmith_mult_u32(_wgslsmith_sub_u32(global0.a, _wgslsmith_add_u32(arg_0, 5594u)) ^ arg_0, select(~26877u, ~1u, any(vec2<bool>(false, arg_1.x)))), Struct_1(~(~0i), ~vec2<u32>(global0.a, ~4882u), vec2<bool>(true | all(vec2<bool>(true, var_0.x)), all(select(var_0, var_0, var_0))), _wgslsmith_mod_vec2_u32(max(vec2<u32>(arg_0, 0u), vec2<u32>(0u, u_input.a)) >> ((vec2<u32>(67993u, arg_0) | vec2<u32>(0u, arg_0)) % vec2<u32>(32u)), reverseBits(abs(vec2<u32>(arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-809f, -1277f), _wgslsmith_f_op_f32(ceil(122f)), _wgslsmith_f_op_f32(1000f * 1343f), _wgslsmith_f_op_f32(f32(-1f) * -770f))))).x;
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, 0i, ~global0.b.x), _wgslsmith_sub_vec3_i32(global0.b, ~_wgslsmith_add_vec3_i32(vec3<i32>(844i, 13874i, 1909i), global0.b)));
    return 1u;
}

fn func_7(arg_0: u32, arg_1: u32, arg_2: vec2<f32>) -> vec2<bool> {
    global3 = array<vec4<u32>, 18>();
    var var_0 = vec3<u32>(~(0u >> (_wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0, u_input.a), _wgslsmith_mod_u32(0u, 112709u)) % 32u)), ~40072u, ~26588u);
    global3 = array<vec4<u32>, 18>();
    global1 = array<vec2<i32>, 2>();
    var var_1 = !vec2<bool>(select(global0.b.x != 0i, true, true) && true, -618f > arg_2.x);
    return !func_5(!select(!vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, false, var_1.x), select(vec3<bool>(true, false, var_1.x), vec3<bool>(var_1.x, var_1.x, false), var_1.x)), 1u, Struct_1(reverseBits(global0.b.x), var_0.yz, vec2<bool>(true, true), ~(vec2<u32>(83705u, 35158u) & vec2<u32>(var_0.x, 4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1548f, arg_2.x, 1152f, 266f) * vec4<f32>(arg_2.x, 626f, -814f, arg_2.x)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.x, 975f, 646f, 1000f)))))).yz;
}

fn func_8(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = ~abs(40200u);
    global2 = array<vec3<u32>, 9>();
    let var_1 = arg_1;
    var var_2 = Struct_3(arg_1.a, Struct_2(select(select(var_1.a.a, var_1.b.a, vec4<bool>(arg_2.c.x, arg_0.c.x, arg_1.c.c.x, true)), !arg_1.b.a, arg_1.a.a), select(min(arg_2.b.x, arg_1.e.d.x) >> (arg_0.b.x % 32u), arg_0.b.x, true), arg_1.d.c ^ min(var_1.b.d.wwx, ~var_1.d.d.zzx), vec4<u32>(0u, _wgslsmith_sub_u32(reverseBits(65444u), arg_0.d.x), ~_wgslsmith_mod_u32(u_input.a, 1u), _wgslsmith_mod_u32(arg_1.a.d.x, _wgslsmith_div_u32(global0.a, global0.a))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1375f), _wgslsmith_div_f32(var_1.e.e.x, -1959f)), _wgslsmith_f_op_f32(f32(-1f) * -417f))), var_1.c, var_1.b, var_1.e);
    let var_3 = vec2<i32>(arg_1.e.a, min(var_1.c.a, ~(1i | arg_0.a) | global0.b.x));
    return StorageBuffer(abs(firstTrailingBit(vec3<u32>(~var_2.d.c.x, var_1.c.d.x, ~1u))), 4294967295u, ~_wgslsmith_clamp_i32(min(var_1.c.a, var_3.x) | (var_3.x & -2147483647i), func_6(_wgslsmith_f_op_f32(-arg_2.e.x), !vec3<bool>(true, arg_2.c.x, var_2.a.a.x), Struct_2(vec4<bool>(arg_0.c.x, true, arg_1.d.a.x, false), arg_2.d.x, vec3<u32>(84261u, 0u, 6150u), arg_1.b.d, arg_2.e.yx)).b.x, _wgslsmith_dot_vec4_i32(min(vec4<i32>(-13711i, -1i, global0.b.x, global0.b.x), vec4<i32>(0i, var_3.x, 0i, 0i)), -vec4<i32>(arg_2.a, var_1.c.a, 19270i, var_1.c.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b.xy;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-413f * _wgslsmith_f_op_f32(max(-358f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-149f + 1871f), _wgslsmith_div_f32(345f, -422f), u_input.a >= global0.a))))), _wgslsmith_f_op_f32(select(-3105f, -414f, any(!select(vec2<bool>(true, false), vec2<bool>(false, true), true)))));
    global0 = Struct_4(global0.a, global0.b);
    let var_2 = Struct_4(37906u, vec3<i32>(-1i, firstTrailingBit(var_0.x), -_wgslsmith_mult_i32(_wgslsmith_div_i32(-37043i, -2747i), _wgslsmith_sub_i32(global0.b.x, var_0.x))));
    let var_3 = var_0.x;
    let x = u_input.a;
    s_output = func_8(Struct_1(_wgslsmith_dot_vec2_i32(var_2.b.zy, reverseBits(global0.b.zz)), ~firstLeadingBit(firstLeadingBit(vec2<u32>(var_2.a, u_input.a))), func_7(_wgslsmith_add_u32(firstLeadingBit(u_input.a), func_1(var_2.a, vec3<bool>(true, false, true))), abs(var_2.a), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(144f, 545f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-885f, -1000f), vec2<f32>(624f, 688f)))))), vec2<u32>(1u, _wgslsmith_sub_u32(88265u, 0u)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(321f)))), _wgslsmith_f_op_f32(ceil(-1924f)), 510f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-536f, 1025f)))), Struct_3(Struct_2(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), var_2.a, global2[_wgslsmith_index_u32(~firstLeadingBit(u_input.a), 9u)], firstLeadingBit(vec4<u32>(20245u, var_2.a, 4294967295u, u_input.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(610f, 1010f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1748f, 341f)), true))), Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), 0u, _wgslsmith_mod_vec3_u32(~vec3<u32>(var_2.a, u_input.a, global0.a), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a, u_input.a, 10652u), global2[_wgslsmith_index_u32(0u, 9u)])), vec4<u32>(u_input.a >> (1u % 32u), _wgslsmith_clamp_u32(58982u, 70634u, 33833u), ~global0.a, u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-190f, 2394f))))), Struct_1(var_2.b.x, countOneBits(min(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(var_2.a, var_2.a))), vec2<bool>(true, u_input.a != 22753u), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(0u, 70084u), vec2<u32>(11925u, u_input.a)), reverseBits(vec2<u32>(4294967295u, 2492u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-625f, 452f, -809f, -218f)))), Struct_2(vec4<bool>(true, true, true, true), func_2(Struct_1(-2147483647i, vec2<u32>(21203u, 0u), vec2<bool>(false, false), vec2<u32>(var_2.a, global0.a), vec4<f32>(-2046f, 1000f, 1503f, 2068f))), max(countOneBits(vec3<u32>(11999u, u_input.a, global0.a)), vec3<u32>(var_2.a, var_2.a, global0.a)), ~(~vec4<u32>(592u, 31487u, 26754u, 1u)), vec2<f32>(_wgslsmith_f_op_f32(trunc(-575f)), -913f)), Struct_1(global0.b.x, ~vec2<u32>(16291u, 1u), vec2<bool>(select(false, false, false), global0.a >= var_2.a), vec2<u32>(min(1u, 28354u), 61423u), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1225f, -771f, 2344f, -192f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-187f, 1535f, -1218f, -821f) + vec4<f32>(350f, 1000f, 666f, 598f)))))), Struct_1(_wgslsmith_sub_i32(-_wgslsmith_clamp_i32(-31645i, -7353i, 21838i), countOneBits(~var_2.b.x)), ~(~select(vec2<u32>(global0.a, global0.a), vec2<u32>(global0.a, 49260u), vec2<bool>(false, true))), !(!func_7(var_2.a, 10607u, vec2<f32>(1668f, 891f))), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a >> (u_input.a % 32u), _wgslsmith_sub_u32(global0.a, u_input.a)), vec2<u32>(0u, 0u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1123f, 1363f, -1521f, -1000f))))));
}

