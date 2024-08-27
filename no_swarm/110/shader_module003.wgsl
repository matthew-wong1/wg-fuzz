struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-104f, -1000f, -488f, -968f), false, vec2<i32>(i32(-2147483648), 1i), 1u);

var<private> global1: u32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> bool {
    let var_0 = ~(~abs(~(~vec4<u32>(19212u, arg_0.a.a, arg_0.b.c.x, 1u))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(arg_0.a.b.a.x, arg_0.b.b.a.x, global0.a.x, arg_0.c.a.x)) + vec4<f32>(-1673f, arg_0.b.b.a.x, 608f, 1346f))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-1728f)), -260f, _wgslsmith_f_op_f32(-global0.a.x), -387f)), !(!all(!vec3<bool>(global0.b, global0.b, global0.b))), -global0.c << (~arg_0.a.c % vec2<u32>(32u)), 3767u);
    var var_1 = global0.c.x;
    let var_2 = Struct_5(!(!vec2<bool>(!arg_0.a.d, arg_0.a.d)), -(~(-2147483647i)));
    let var_3 = vec2<f32>(arg_0.c.a.x, 2153f);
    return !(true & global0.b) != (-300f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_3.x, arg_0.a.b.a.x))))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = select(!vec3<bool>(global0.b, all(vec2<bool>(false, true)), global0.b & (false || global0.b)), vec3<bool>(global0.b || !global0.b, !func_3(Struct_3(Struct_2(global0.d, Struct_1(global0.a, global0.b, global0.c, global0.d), vec2<u32>(0u, 0u), true), Struct_2(global0.d, Struct_1(global0.a, false, vec2<i32>(arg_0, 1i), global0.d), vec2<u32>(global0.d, global0.d), global0.b), Struct_1(global0.a, global0.b, vec2<i32>(arg_0, -2147483647i), global0.d)), ~0u), true), vec3<bool>(true, global0.b, global0.b));
    global0 = Struct_1(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)) + -616f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2055f - -1891f) - _wgslsmith_f_op_f32(exp2(global0.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -415f))) + _wgslsmith_f_op_f32(round(-102f)))), any(!(!vec3<bool>(global0.b, true, true))), countOneBits(((vec2<i32>(u_input.a, -7527i) ^ global0.c) ^ abs(vec2<i32>(arg_0, 0i))) & _wgslsmith_div_vec2_i32(max(global0.c, global0.c), -global0.c)), abs(global0.d));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(global0.a.zw));
    let var_2 = var_1;
    var var_3 = select(!vec3<bool>(!global0.b & true, true, global0.b), vec3<bool>(~(~global0.d) < 0u, !(-2054f < _wgslsmith_f_op_f32(max(-468f, var_1.x))), global0.b), vec3<bool>(global0.b, !var_0.x, !(!all(vec2<bool>(var_0.x, true)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1012f, -515f)), var_2.x, _wgslsmith_div_f32(-469f, var_1.x), 1f) + global0.a)), !any(select(var_3.xy, vec2<bool>(var_0.x, false), var_0.x)) || !(any(vec2<bool>(true, var_3.x)) || true), -firstTrailingBit(reverseBits(vec2<i32>(0i, 7088i) ^ vec2<i32>(u_input.a, global0.c.x))), _wgslsmith_mod_u32(global0.d, 0u));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_3) -> vec2<bool> {
    global0 = func_2(_wgslsmith_mod_i32(arg_2.a.b.c.x, -1i));
    return arg_1.xx;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_5, arg_3: bool) -> u32 {
    var var_0 = func_2(_wgslsmith_add_i32(u_input.a, 2147483647i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.x, -131f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b.x, global0.a.x)) - _wgslsmith_f_op_f32(select(var_0.a.x, arg_1.b.x, var_0.b))))));
    let var_2 = Struct_2(_wgslsmith_mod_u32(~(~(0u >> (arg_1.a.x % 32u))), 63692u), func_2(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.c.x, global0.c.x) >> (vec2<u32>(0u, 35637u) % vec2<u32>(32u)), global0.c), global0.c)), ~(~arg_1.a.zy), global0.b && !func_2(-51860i).b);
    let var_3 = _wgslsmith_f_op_f32(1021f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-310f + arg_1.b.x) - -679f), -1000f)), var_0.a.x));
    var var_4 = 4294967295u;
    return ~(~(~(~54977u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(func_4(~4294967295u, Struct_4(~_wgslsmith_add_vec3_u32(vec3<u32>(95505u, global0.d, 11321u), vec3<u32>(global0.d, global0.d, 30805u)), global0.a.xx, !func_1(vec4<bool>(true, true, false, global0.b), vec4<bool>(true, false, false, global0.b), Struct_3(Struct_2(global0.d, Struct_1(vec4<f32>(global0.a.x, 2095f, global0.a.x, -351f), global0.b, vec2<i32>(1i, -2147483647i), global0.d), vec2<u32>(1620u, global0.d), false), Struct_2(0u, Struct_1(vec4<f32>(-1000f, -305f, global0.a.x, 544f), false, global0.c, global0.d), vec2<u32>(global0.d, 92810u), global0.b), Struct_1(global0.a, false, vec2<i32>(u_input.a, 2147483647i), 98922u))), vec3<bool>(global0.b || global0.b, global0.b, false)), Struct_5(!vec2<bool>(global0.b, true), -18610i), !global0.b), func_2(_wgslsmith_mod_i32(-u_input.a, ~_wgslsmith_mod_i32(global0.c.x, 36026i))).d, _wgslsmith_dot_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(22392u, global0.d), vec2<u32>(0u, global0.d), vec2<u32>(global0.d, 4294967295u)), abs(vec2<u32>(global0.d, global0.d)), select(vec2<bool>(true, global0.b), vec2<bool>(global0.b, global0.b), global0.b)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d, 1u, 45934u, 4294967295u), vec4<u32>(global0.d, 72475u, global0.d, 22941u)), _wgslsmith_add_u32(global0.d, 9164u))) ^ ~global0.d, ~abs(21409u));
    var var_1 = Struct_3(Struct_2(_wgslsmith_dot_vec2_u32(var_0.xy, _wgslsmith_mod_vec2_u32(var_0.wx, _wgslsmith_div_vec2_u32(var_0.wx, var_0.zw))), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x) - global0.a), _wgslsmith_f_op_vec4_f32(-global0.a))), global0.b, vec2<i32>(global0.c.x | -7587i, ~global0.c.x), func_2(0i).d), ~min(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 0u), var_0.yw), var_0.wy), true), Struct_2(0u, func_2(-1i), vec2<u32>(var_0.x >> (_wgslsmith_clamp_u32(global0.d, var_0.x, global0.d) % 32u), firstTrailingBit(~0u)), false), func_2(_wgslsmith_add_i32(0i, u_input.a)));
    var var_2 = _wgslsmith_f_op_f32(-1170f + _wgslsmith_div_f32(-1903f, 1f));
    global1 = reverseBits(_wgslsmith_dot_vec3_u32(firstTrailingBit(var_0.wyy), var_0.zwy));
    global0 = var_1.a.b;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(_wgslsmith_mod_i32(global0.c.x, 41379i)).a.x) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_1.b.b.a.x)), _wgslsmith_f_op_f32(abs(-431f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2157f)) + -304f)), _wgslsmith_f_op_f32(func_2(var_1.c.c.x).a.x + var_1.b.b.a.x));
    let var_4 = Struct_3(var_1.a, var_1.a, Struct_1(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(abs(var_1.c.a))), all(vec4<bool>(select(global0.b, global0.b, var_1.a.b.b), all(vec4<bool>(global0.b, global0.b, false, var_1.c.b)), !var_1.a.b.b, 3318u >= var_1.a.a)), var_1.b.b.c, 34372u));
    var var_5 = select(!(!(!func_1(vec4<bool>(var_4.b.b.b, var_1.b.b.b, true, global0.b), vec4<bool>(var_1.c.b, var_1.a.b.b, true, var_1.a.b.b), var_4))), !func_1(vec4<bool>(select(true, true, false), any(vec2<bool>(true, false)), true, true), vec4<bool>(true, all(vec4<bool>(true, var_4.b.d, var_1.b.b.b, false)), global0.b && var_1.b.d, func_2(var_4.a.b.c.x).b), var_4), !(!(!func_1(vec4<bool>(false, var_1.c.b, true, global0.b), vec4<bool>(true, false, var_4.b.b.b, var_1.c.b), var_4))));
    var_5 = select(select(vec2<bool>(var_5.x, var_5.x), !select(vec2<bool>(var_5.x, false), vec2<bool>(global0.b, false), func_1(vec4<bool>(global0.b, var_1.a.d, var_4.b.b.b, global0.b), vec4<bool>(true, true, var_5.x, true), Struct_3(var_1.a, var_1.a, var_4.b.b))), !(!vec2<bool>(var_4.a.d, true))), select(!select(vec2<bool>(var_1.a.b.b, var_5.x), func_1(vec4<bool>(var_5.x, var_5.x, var_4.a.d, global0.b), vec4<bool>(var_4.a.b.b, false, global0.b, false), Struct_3(Struct_2(31947u, var_4.b.b, var_0.yz, var_4.c.b), var_1.b, var_4.c)), !vec2<bool>(var_5.x, var_1.b.d)), vec2<bool>(true, true), vec2<bool>(var_1.b.d, var_3.x <= var_1.c.a.x)), func_1(select(vec4<bool>(true, false | global0.b, any(vec2<bool>(var_5.x, var_4.b.d)), var_5.x), !select(vec4<bool>(true, false, true, false), vec4<bool>(global0.b, false, global0.b, var_4.b.b.b), vec4<bool>(true, var_5.x, false, false)), true), select(vec4<bool>(var_5.x, !var_5.x, true, true), vec4<bool>(!var_1.a.b.b, 794f < var_3.x, false, true), var_4.c.b), Struct_3(var_1.b, Struct_2(_wgslsmith_clamp_u32(24840u, var_4.c.d, 1u), Struct_1(vec4<f32>(var_3.x, global0.a.x, global0.a.x, var_1.a.b.a.x), var_1.a.b.b, vec2<i32>(19030i, global0.c.x), var_4.b.b.d), vec2<u32>(var_1.b.a, global0.d), true), Struct_1(global0.a, global0.b, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, global0.c.x), var_4.c.c), max(42138u, 3786u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.c.x, -_wgslsmith_div_i32(countOneBits(~0i), _wgslsmith_sub_i32(~21917i, countOneBits(1i))), abs(var_0.wy));
}

