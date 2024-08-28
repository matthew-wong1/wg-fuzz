struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<f32, 5> = array<f32, 5>(855f, 1204f, 1669f, 499f, -397f);

var<private> global2: Struct_4;

var<private> global3: vec3<i32> = vec3<i32>(-34867i, 2147483647i, 2147483647i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_5, arg_3: f32) -> vec2<bool> {
    global1 = array<f32, 5>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a | vec4<u32>(25664u, 0u, u_input.a.x, arg_2.a.a), u_input.a), 5u)] * 133f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2127f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3, _wgslsmith_f_op_f32(ceil(arg_3)), true)))));
    var var_1 = Struct_4(2331f, Struct_1(44899u, vec2<bool>(arg_1, global2.b.b.x)), vec3<i32>(firstLeadingBit(-38772i), (i32(-1i) * -26262i) << (global2.e.x % 32u), -2999i), _wgslsmith_dot_vec3_i32(countOneBits(~(global2.c | vec3<i32>(global3.x, 0i, -9908i))), ~_wgslsmith_sub_vec3_i32(~global2.c, global2.c << (vec3<u32>(73272u, 34608u, 24595u) % vec3<u32>(32u)))), global2.e);
    let var_2 = !vec3<bool>(false | !(arg_2.a.b.x && arg_1), any(!vec4<bool>(true, false, var_1.b.b.x, arg_1)), all(vec4<bool>(select(true, true, global2.b.b.x), true, arg_2.a.b.x & arg_1, global2.b.b.x)));
    global0 = array<i32, 27>();
    return arg_2.a.b;
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<bool>) -> i32 {
    let var_0 = vec4<bool>(!((global0[_wgslsmith_index_u32(1u, 27u)] >= 4253i) || true), !arg_1.x, arg_1.x, arg_1.x);
    let var_1 = u_input.a.yz;
    global2 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.a, -1028f))) * 1895f))), Struct_1(1u, select(var_0.xw, select(!var_0.yx, !vec2<bool>(var_0.x, true), func_3(vec2<i32>(45401i, -1i), arg_1.x, Struct_5(global2.b, 1u), global2.a)), var_0.x)), global2.c, reverseBits(max(1i, _wgslsmith_dot_vec3_i32(-global2.c, vec3<i32>(global2.d, global2.c.x, -2147483647i)))), vec2<u32>(max(4294967295u | (4294967295u << (global2.e.x % 32u)), _wgslsmith_dot_vec3_u32(u_input.a.zyz << (u_input.a.yzy % vec3<u32>(32u)), vec3<u32>(1u, global2.e.x, 1u))), min(var_1.x, var_1.x << (u_input.a.x % 32u)) >> (abs(firstTrailingBit(0u)) % 32u)));
    return global3.x;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(-3249i, -1i, -2147483647i), -firstTrailingBit(global2.c) << (_wgslsmith_mod_vec3_u32(countOneBits(~u_input.a.yyz), vec3<u32>(0u, u_input.a.x, 1u)) % vec3<u32>(32u)));
    global3 = vec3<i32>(~max(0i, min(-global2.d, _wgslsmith_clamp_i32(37575i, global3.x, arg_1.a))), func_4(~u_input.a.x, func_3(vec2<i32>(-46023i, global2.c.x) >> ((global2.e >> (global2.e % vec2<u32>(32u))) % vec2<u32>(32u)), !any(vec4<bool>(false, true, global2.b.b.x, false)), Struct_5(global2.b, _wgslsmith_mod_u32(global2.b.a, 50506u)), 1041f), !vec2<bool>(true, arg_2.a.x)), global3.x);
    global2 = Struct_4(_wgslsmith_f_op_f32(abs(arg_0)), global2.b, reverseBits(~var_0), var_0.x, ~_wgslsmith_div_vec2_u32(global2.e, vec2<u32>(global2.b.a, 7423u)));
    return Struct_2(vec2<bool>(!global2.b.b.x, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f)))), global2.a) - global2.a));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<bool>) -> Struct_4 {
    global0 = array<i32, 27>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_1, vec4<f32>(1295f, 514f, -229f, global1[_wgslsmith_index_u32(u_input.a.x, 5u)]))))))) - arg_1);
    global2 = Struct_4(_wgslsmith_f_op_f32(-arg_0.b), Struct_1(~_wgslsmith_mult_u32(~u_input.a.x, 14450u), !(!(!vec2<bool>(global2.b.b.x, global2.b.b.x)))), (_wgslsmith_mod_vec3_i32(~global2.c, -global2.c) ^ global2.c) >> (vec3<u32>(_wgslsmith_div_u32(4294967295u, firstTrailingBit(22283u)), 1u, global2.e.x) % vec3<u32>(32u)), global3.x, global2.e ^ _wgslsmith_add_vec2_u32(~global2.e, firstTrailingBit(u_input.a.zz ^ global2.e)));
    global0 = array<i32, 27>();
    global1 = array<f32, 5>();
    return Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - 370f))), global2.b, vec3<i32>(-2147483647i, global3.x, _wgslsmith_sub_i32(-2147483647i, -29786i)), -2147483647i, _wgslsmith_clamp_vec2_u32(global2.e, vec2<u32>(~abs(55350u), global2.b.a), _wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(0u), global2.b.a), u_input.a.wy)));
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: vec3<f32>, arg_3: vec4<i32>) -> u32 {
    global1 = array<f32, 5>();
    let var_0 = !func_3((arg_0.c.zy ^ vec2<i32>(-1i, global2.d)) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.zw, arg_0.e), ~vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)), all(global2.b.b) && true, Struct_5(func_5(Struct_2(vec2<bool>(arg_0.b.b.x, true), 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 729f, global1[_wgslsmith_index_u32(u_input.a.x, 5u)], global2.a)), !vec3<bool>(false, global2.b.b.x, arg_0.b.b.x)).b, 1u), global2.a).x;
    let var_1 = _wgslsmith_clamp_vec3_u32(u_input.a.zzy, countOneBits(max(firstTrailingBit(vec3<u32>(4294967295u, 0u, global2.e.x)), select(_wgslsmith_add_vec3_u32(vec3<u32>(50901u, arg_0.b.a, 0u), vec3<u32>(25784u, u_input.a.x, 42553u)), max(vec3<u32>(arg_0.b.a, 47644u, global2.e.x), vec3<u32>(global2.e.x, 4294967295u, arg_0.e.x)), vec3<bool>(true, true, true)))), vec3<u32>(1u, ~_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global2.b.a, arg_0.e.x, arg_0.e.x), vec4<u32>(60229u, 67782u, 1u, 1093u), vec4<u32>(arg_0.b.a, 4294967295u, global2.b.a, arg_0.b.a))), min(_wgslsmith_clamp_u32(~50154u, 1u >> (global2.b.a % 32u), _wgslsmith_clamp_u32(u_input.a.x, 1u, global2.e.x)), 27184u)));
    global0 = array<i32, 27>();
    let var_2 = true;
    return 4294967295u;
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: vec3<u32>) -> Struct_5 {
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(arg_3.x, 27u)]);
    let var_1 = func_6(func_5(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.a), -272f)), Struct_3(global0[_wgslsmith_index_u32(arg_3.x, 27u)]), Struct_2(!global2.b.b, _wgslsmith_f_op_f32(select(-944f, global1[_wgslsmith_index_u32(arg_3.x, 5u)], arg_2.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -834f), _wgslsmith_f_op_f32(sign(global2.a)), -1133f, global1[_wgslsmith_index_u32(~4294967295u, 5u)])), vec3<bool>((false & arg_2.x) | true, arg_2.x && global2.b.b.x, global2.b.b.x)), var_0.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1976f, 518f, 437f) - vec3<f32>(global2.a, global1[_wgslsmith_index_u32(u_input.a.x, 5u)], global1[_wgslsmith_index_u32(0u, 5u)])))))), arg_1);
    var var_2 = func_5(Struct_2(func_5(func_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(32767u, 5u)]), Struct_3(global3.x), func_2(1105f, Struct_3(global2.c.x), Struct_2(vec2<bool>(arg_2.x, global2.b.b.x), global1[_wgslsmith_index_u32(var_1, 5u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-277f, -1617f, -812f, -1000f) * vec4<f32>(-1154f, 1000f, global1[_wgslsmith_index_u32(arg_0, 5u)], global1[_wgslsmith_index_u32(global2.e.x, 5u)])), !select(arg_2.zxy, vec3<bool>(false, arg_2.x, false), arg_2.zyz)).b.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(34615u, 5u)] + global2.a), global2.a, 545f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 5u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(arg_0, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], global2.a, -1069f) + vec4<f32>(global2.a, 1761f, 575f, -1823f))))), vec3<bool>(!(!(!global2.b.b.x)), func_2(global1[_wgslsmith_index_u32(~62562u, 5u)], Struct_3(firstLeadingBit(0i)), Struct_2(vec2<bool>(false, global2.b.b.x), 1258f)).a.x, !(!arg_2.x) == (-1020f > global1[_wgslsmith_index_u32(arg_3.x, 5u)])));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~arg_0, 5u)] - _wgslsmith_div_f32(var_2.a, -148f))), Struct_1(global2.b.a, vec2<bool>(any(vec2<bool>(true, true)), true)), vec3<i32>(_wgslsmith_add_i32(func_5(func_2(1056f, Struct_3(22951i), Struct_2(vec2<bool>(var_2.b.b.x, true), var_2.a)), vec4<f32>(2833f, 1402f, var_2.a, -566f), vec3<bool>(arg_2.x, global2.b.b.x, var_2.b.b.x)).d, func_5(func_2(-1233f, Struct_3(var_2.c.x), Struct_2(global2.b.b, global2.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1324f, -467f, 385f, global1[_wgslsmith_index_u32(4294967295u, 5u)]) + vec4<f32>(-285f, global2.a, global2.a, -1000f)), select(arg_2.xzx, arg_2.yxz, vec3<bool>(true, global2.b.b.x, global2.b.b.x))).d), min(global2.d << (4294967295u % 32u), _wgslsmith_sub_i32(arg_1.x >> (0u % 32u), ~arg_1.x)), firstTrailingBit(-1i)), -77072i, _wgslsmith_div_vec2_u32(vec2<u32>(global2.b.a, var_2.e.x), ~global2.e) | _wgslsmith_div_vec2_u32(select(u_input.a.zw, select(var_2.e, var_2.e, false), var_2.b.b.x), arg_3.yy));
    let var_4 = Struct_2(var_2.b.b, var_2.a);
    return Struct_5(Struct_1(arg_0, func_3(global2.c.xy ^ -vec2<i32>(var_2.c.x, 13644i), any(vec4<bool>(false, var_4.a.x, var_4.a.x, var_2.b.b.x)), Struct_5(global2.b, countOneBits(20774u)), _wgslsmith_f_op_f32(f32(-1f) * -361f))), _wgslsmith_div_u32(1u, 79294u));
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = func_5(func_2(-437f, Struct_3(global0[_wgslsmith_index_u32(1u, 27u)]), Struct_2(vec2<bool>(global2.b.b.x == arg_1.a.b.x, 1154f < global2.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 5u)] * 346f))))), vec4<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1302f), Struct_3(20973i), func_2(-646f, Struct_3(53045i), Struct_2(vec2<bool>(false, global2.b.b.x), -1278f))).b - _wgslsmith_f_op_f32(-2407f + _wgslsmith_f_op_f32(round(arg_0.x)))), -893f, global2.a, _wgslsmith_div_f32(-1000f, global2.a)), select(!arg_2, select(vec3<bool>(arg_2.x, all(vec4<bool>(arg_1.a.b.x, arg_2.x, arg_2.x, true)), true), arg_2, !(!global2.b.b.x)), arg_2));
    var var_1 = Struct_3(var_0.d);
    global3 = global2.c;
    var var_2 = var_0.b.a;
    let var_3 = min(vec2<i32>(0i, 38940i), ~(min(_wgslsmith_mod_vec2_i32(global2.c.yz, global2.c.yy), var_0.c.zz) ^ global3.yx));
    return func_5(Struct_2(select(!vec2<bool>(global2.b.b.x, false), vec2<bool>(var_0.b.b.x, arg_2.x), select(var_0.b.b.x, false, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1495f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + 1686f))))), arg_0, select(!arg_2, arg_2, arg_2)).b;
}

fn func_8(arg_0: Struct_1) -> Struct_4 {
    global0 = array<i32, 27>();
    var var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(942f - global1[_wgslsmith_index_u32(u_input.a.x, 5u)])))), _wgslsmith_f_op_f32(step(534f, -728f)), func_2(1000f, Struct_3(1i), Struct_2(arg_0.b, _wgslsmith_f_op_f32(step(-349f, global2.a)))).b)));
    let var_1 = ~((i32(-1i) * -abs(global0[_wgslsmith_index_u32(50422u, 27u)])) >> (arg_0.a % 32u));
    global2 = func_5(Struct_2(!func_7(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1034f, var_0.x, -432f, 844f), vec4<f32>(134f, global2.a, global2.a, -723f), global2.b.b.x)), func_1(arg_0.a, vec4<i32>(global2.c.x, 2147483647i, 27042i, global2.d), vec4<bool>(false, global2.b.b.x, true, global2.b.b.x), vec3<u32>(arg_0.a, global2.e.x, 49185u)), select(vec3<bool>(arg_0.b.x, arg_0.b.x, false), vec3<bool>(global2.b.b.x, arg_0.b.x, false), vec3<bool>(true, arg_0.b.x, global2.b.b.x))).b, -132f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 564f, -309f, -625f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(arg_0.a, 5u)], -612f, var_0.x))))) - vec4<f32>(global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, 1u, 0u), vec3<u32>(0u, 21905u, arg_0.a)), _wgslsmith_mult_u32(18445u, 0u), global2.b.b.x), 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -706f)), global1[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))))), !select(vec3<bool>(!global2.b.b.x, any(vec3<bool>(false, false, global2.b.b.x)), global2.b.b.x | global2.b.b.x), select(select(vec3<bool>(arg_0.b.x, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, arg_0.b.x, true), vec3<bool>(true, true, true)), true));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-286f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2114f)))))));
    return Struct_4(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -885f)), all(vec2<bool>(!arg_0.b.x, global2.b.b.x | true)))), global2.b, vec3<i32>(1i, ~abs(max(-1i, var_1)), ~((var_1 ^ -44088i) & global3.x)), func_5(Struct_2(arg_0.b, global1[_wgslsmith_index_u32(min(~arg_0.a, _wgslsmith_mod_u32(4294967295u, u_input.a.x)), 5u)]), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-299f, global2.a, global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(global2.b.a, 5u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, global2.a, 766f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1193f, global2.a, 1481f, -1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-790f, 1024f, var_0.x, var_0.x))))), vec3<bool>(global2.b.b.x, arg_0.b.x, true)).c.x, _wgslsmith_mult_vec2_u32(countOneBits((u_input.a.yw ^ u_input.a.xw) << ((global2.e ^ global2.e) % vec2<u32>(32u))), vec2<u32>(u_input.a.x, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_8(func_7(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, -1000f, global2.a, 563f)))), func_1(countOneBits(global2.e.x) | (3496u ^ u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(12743i, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], -1i, global2.d), vec4<i32>(-47692i, -1i, 44849i, global0[_wgslsmith_index_u32(u_input.a.x, 27u)])), select(!vec4<bool>(true, true, true, global2.b.b.x), vec4<bool>(false, global2.b.b.x, global2.b.b.x, false), global1[_wgslsmith_index_u32(25220u, 5u)] != global2.a), select(_wgslsmith_div_vec3_u32(u_input.a.ywz, u_input.a.xyw), vec3<u32>(4294967295u, u_input.a.x, global2.b.a), select(vec3<bool>(global2.b.b.x, false, true), vec3<bool>(global2.b.b.x, global2.b.b.x, global2.b.b.x), vec3<bool>(true, false, global2.b.b.x)))), vec3<bool>(global2.b.b.x, func_5(Struct_2(global2.b.b, 179f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global1[_wgslsmith_index_u32(89157u, 5u)], 1096f, global1[_wgslsmith_index_u32(global2.b.a, 5u)])), select(vec3<bool>(true, global2.b.b.x, global2.b.b.x), vec3<bool>(global2.b.b.x, global2.b.b.x, global2.b.b.x), false)).b.b.x, false)));
    let var_0 = func_1(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(32224u, global2.b.a, global2.e.x), u_input.a.wyx), firstLeadingBit(u_input.a.yxx)), _wgslsmith_mod_u32(67957u, 4294967295u) << (func_8(Struct_1(8962u, global2.b.b)).e.x % 32u))), vec4<i32>(_wgslsmith_add_i32(func_5(Struct_2(global2.b.b, -968f), vec4<f32>(global2.a, global2.a, global1[_wgslsmith_index_u32(30474u, 5u)], global2.a), vec3<bool>(global2.b.b.x, global2.b.b.x, global2.b.b.x)).d >> (~67267u % 32u), global2.c.x), func_5(func_2(func_8(Struct_1(66488u, vec2<bool>(true, global2.b.b.x))).a, Struct_3(global0[_wgslsmith_index_u32(40716u, 27u)]), Struct_2(global2.b.b, global1[_wgslsmith_index_u32(16162u, 5u)])), vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), _wgslsmith_f_op_f32(f32(-1f) * -1194f), func_2(373f, Struct_3(global3.x), Struct_2(global2.b.b, 436f)).b, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(59923u, 5u)] * -1136f)), select(select(vec3<bool>(true, global2.b.b.x, true), vec3<bool>(false, true, global2.b.b.x), vec3<bool>(global2.b.b.x, false, global2.b.b.x)), vec3<bool>(true, global2.b.b.x, false), select(vec3<bool>(false, true, global2.b.b.x), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))).d, ~_wgslsmith_mod_i32(-global3.x, ~31923i), global3.x), vec4<bool>(func_3(vec2<i32>(global3.x << (11385u % 32u), -1i), func_2(_wgslsmith_f_op_f32(-global2.a), Struct_3(-1i), func_2(-1072f, Struct_3(-2147483647i), Struct_2(vec2<bool>(global2.b.b.x, true), -1087f))).a.x, Struct_5(Struct_1(24110u, vec2<bool>(global2.b.b.x, false)), func_6(Struct_4(-188f, global2.b, global2.c, -5495i, global2.e), global0[_wgslsmith_index_u32(23172u, 27u)], vec3<f32>(1373f, global1[_wgslsmith_index_u32(u_input.a.x, 5u)], 1356f), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(global2.e.x, 27u)], global3.x, 20664i))), -261f).x, any(select(vec3<bool>(true, global2.b.b.x, global2.b.b.x), !vec3<bool>(true, global2.b.b.x, true), all(vec2<bool>(global2.b.b.x, true)))), global2.b.b.x, true), u_input.a.zwy);
    var var_1 = func_1(select(~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~abs(var_0.a.a) << (~firstLeadingBit(u_input.a.x) % 32u), false), reverseBits(-(vec4<i32>(global0[_wgslsmith_index_u32(58170u, 27u)], 2147483647i, global2.d, 2147483647i) | vec4<i32>(global0[_wgslsmith_index_u32(74412u, 27u)], 32390i, global2.c.x, global2.d))) & select(-(~vec4<i32>(global3.x, 1i, 1i, global0[_wgslsmith_index_u32(26867u, 27u)])), -_wgslsmith_mod_vec4_i32(vec4<i32>(global3.x, global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(var_0.b, 27u)], global3.x), vec4<i32>(-67642i, global2.d, 0i, global2.c.x)), !(!vec4<bool>(global2.b.b.x, false, false, global2.b.b.x))), vec4<bool>(global2.b.b.x, true, var_0.a.b.x, true), min(max(~u_input.a.wzx << (min(vec3<u32>(var_0.b, var_0.a.a, global2.e.x), vec3<u32>(global2.e.x, 7853u, 68238u)) % vec3<u32>(32u)), vec3<u32>(~u_input.a.x, 4294967295u, ~u_input.a.x)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.xwx, vec3<u32>(4294967295u, 4294967295u, 0u)), vec3<u32>(7950u, 43544u, 69622u))));
    var var_2 = min(vec3<u32>(func_1(_wgslsmith_sub_u32(var_1.a.a, global2.e.x << (96097u % 32u)), ~vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(var_0.b, 27u)], -1i, global0[_wgslsmith_index_u32(var_1.b, 27u)]), !vec4<bool>(var_1.a.b.x, false, var_1.a.b.x, false), vec3<u32>(~u_input.a.x, _wgslsmith_mod_u32(var_1.a.a, 1u), var_1.a.a)).b, ~global2.b.a, 80783u), vec3<u32>(var_0.b, ~12453u, 46188u));
    global1 = array<f32, 5>();
    global1 = array<f32, 5>();
    var var_3 = global0[_wgslsmith_index_u32(0u, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xzw);
}

