struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1658f;

var<private> global1: array<vec4<i32>, 7>;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-23431i, -1i), vec3<f32>(-1290f, -400f, -1260f));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_4(~arg_2, !vec2<bool>(false, any(vec2<bool>(false, true))));
    let var_1 = vec2<i32>(_wgslsmith_div_i32(~arg_1.a.x, ~_wgslsmith_dot_vec3_i32(u_input.d, u_input.d)), -22771i);
    global0 = -1000f;
    let var_2 = !var_0.b.x;
    let var_3 = min(vec3<i32>(global2.a.x, ~0i, min(arg_3.a.x, global2.a.x)), -(~(~vec3<i32>(-15286i, arg_3.a.x, 0i))));
    return Struct_2(Struct_1(~(~vec2<i32>(arg_3.a.x, -5583i)) ^ min(~vec2<i32>(global2.a.x, arg_3.a.x), var_1), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.b - _wgslsmith_f_op_vec3_f32(arg_1.b * global2.b)), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(trunc(914f)), -899f))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_5) -> vec4<bool> {
    var var_0 = u_input.d;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.b.x - -140f) - arg_2.b.a.b.x);
    let var_1 = ~vec4<i32>(firstLeadingBit(u_input.b.x), -76134i, -(global2.a.x << (1u % 32u)), _wgslsmith_mod_i32(46407i, _wgslsmith_add_i32(var_0.x, -2147483647i)));
    global2 = func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(980f - global2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1554f)) - _wgslsmith_f_op_f32(trunc(-526f))), !all(select(vec4<bool>(true, false, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, false, true, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x))))), Struct_1(~max(vec2<i32>(-15505i, 80310i), firstLeadingBit(vec2<i32>(u_input.b.x, arg_1.a.a.x))), vec3<f32>(global2.b.x, 1f, global2.b.x)), arg_0.a, Struct_1(-_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, arg_1.a.a.x), var_1.zw), global2.a << (vec2<u32>(u_input.c.x, 4294967295u) % vec2<u32>(32u))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.b.x * -1106f), _wgslsmith_f_op_f32(global2.b.x + 1000f)), _wgslsmith_div_f32(arg_1.a.b.x, arg_1.a.b.x), _wgslsmith_f_op_f32(trunc(global2.b.x))))).a;
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b.x)) * func_2(_wgslsmith_f_op_f32(741f * -331f), Struct_1(arg_2.b.a.a, vec3<f32>(arg_1.a.b.x, 1583f, -655f)), firstLeadingBit(25184u), Struct_1(var_1.yz, arg_2.a.b)).a.b.x)), arg_2.a, u_input.c.x, func_2(global2.b.x, arg_2.a, _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(19657u, _wgslsmith_mult_u32(32310u, 88000u))), arg_1.a).a).a;
    return vec4<bool>(!all(!(!vec4<bool>(arg_0.b.x, false, false, arg_0.b.x))), arg_0.b.x, arg_0.b.x, select(true && arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x + -2357f)) >= -295f, arg_0.b.x));
}

fn func_1() -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(floor(-751f)), Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, global2.a.x) << (u_input.c.zy % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(-2147483647i, -19764i))), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, 46505i)), vec2<i32>(17730i, global2.a.x))), vec3<f32>(_wgslsmith_f_op_f32(global2.b.x - _wgslsmith_f_op_f32(f32(-1f) * -115f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -142f))), firstLeadingBit(_wgslsmith_mod_u32(0u, u_input.c.x)), Struct_1(_wgslsmith_mod_vec2_i32(global2.a & vec2<i32>(global2.a.x, global2.a.x), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, global2.a.x), countOneBits(u_input.d.yx))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b))))));
    let var_1 = vec2<i32>(u_input.d.x, 25354i);
    global1 = array<vec4<i32>, 7>();
    var var_2 = all(select(select(func_3(Struct_4(u_input.c.x, vec2<bool>(true, false)), func_2(var_0.a.b.x, var_0.a, 0u, Struct_1(vec2<i32>(-24565i, u_input.b.x), vec3<f32>(1399f, -408f, global2.b.x))), Struct_5(Struct_1(var_0.a.a, vec3<f32>(var_0.a.b.x, var_0.a.b.x, 1000f)), Struct_2(var_0.a))), vec4<bool>(all(vec2<bool>(true, false)), true, true, true), true), select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), -1i >= global2.a.x));
    var var_3 = min(-_wgslsmith_add_i32(abs(select(var_0.a.a.x, var_1.x, true)), firstTrailingBit(_wgslsmith_mult_i32(u_input.a, global2.a.x))), -2147483647i);
    return ~u_input.c.x;
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: u32, arg_3: i32) -> Struct_5 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -777f) * _wgslsmith_f_op_f32(-global2.b.x));
    let var_0 = ~firstTrailingBit(63507u & u_input.c.x);
    var var_1 = Struct_2(Struct_1(vec2<i32>(~(u_input.a ^ -1i), _wgslsmith_clamp_i32(global2.a.x, u_input.b.x, -global2.a.x)), vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -431f) * global2.b.x), _wgslsmith_f_op_f32(max(global2.b.x, global2.b.x)))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(func_2(-3109f, func_2(global2.b.x, var_1.a, 58379u, var_1.a).a, 0u, func_2(global2.b.x, var_1.a, 4294967295u, Struct_1(var_1.a.a, vec3<f32>(var_1.a.b.x, -1194f, 789f))).a).a.b, _wgslsmith_f_op_vec3_f32(-global2.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.b.x, var_1.a.b.x, -1032f), global2.b, vec3<bool>(true, false, false))))))), ~2147483647i, func_2(global2.b.x, var_1.a, 0u, func_2(var_1.a.b.x, Struct_1(_wgslsmith_mod_vec2_i32(u_input.d.zx, var_1.a.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(827f, -1000f, var_1.a.b.x))), select(311u, 36992u, arg_0.b.x) >> (1u % 32u), var_1.a).a));
    global0 = -925f;
    return Struct_5(var_1.a, func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.a.b.x, 1094f, false)), _wgslsmith_f_op_f32(select(720f, var_2.a.x, arg_0.b.x)))), Struct_1(min(var_1.a.a << (vec2<u32>(44933u, var_0) % vec2<u32>(32u)), vec2<i32>(global2.a.x, 1i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.a), var_1.a.b, select(vec3<bool>(false, arg_0.b.x, arg_0.b.x), vec3<bool>(true, arg_0.b.x, true), vec3<bool>(false, arg_0.b.x, true))))), min(arg_0.a, abs(~4294967295u)), var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = func_4(Struct_4(countOneBits(60102u), vec2<bool>(_wgslsmith_f_op_f32(step(1000f, -312f)) > _wgslsmith_f_op_f32(f32(-1f) * -143f), var_0)), func_1(), 1862u, u_input.d.x);
    let var_2 = vec2<u32>(15421u, ~9771u);
    global1 = array<vec4<i32>, 7>();
    global1 = array<vec4<i32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(max(0u, 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(283f - 114f)) + var_1.b.a.b.x) * _wgslsmith_f_op_f32(792f - -885f)), vec3<i32>(0i, -1i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b.x, global2.a.x), _wgslsmith_div_i32(global2.a.x, 2147483647i))) >> (_wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.c.x, u_input.c.x, 1089u) ^ u_input.c, vec3<u32>(0u, var_2.x, var_2.x) << (vec3<u32>(4294967295u, 4294967295u, u_input.c.x) % vec3<u32>(32u)), vec3<bool>(true, var_0, false)), ~(~vec3<u32>(51273u, u_input.c.x, 4294967295u))) % vec3<u32>(32u)), 0u, ~(~(1u << (~var_2.x % 32u))));
}

