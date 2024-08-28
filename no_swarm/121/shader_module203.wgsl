struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_1(vec2<f32>(1000f, -708f), 35463i));

var<private> global1: vec4<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(global0.a.b, 37286i), _wgslsmith_add_i32(~1i, 14297i | global0.a.b)), -_wgslsmith_div_i32(1i, select(global0.a.b, 2147483647i, false)), global0.a.b);
    var_0 = -(~(~(-select(vec3<i32>(24315i, 2147483647i, 0i), vec3<i32>(-2147483647i, -44143i, global0.a.b), arg_0))));
    var_0 = -reverseBits(countOneBits(vec3<i32>(select(0i, -2147483647i, true), _wgslsmith_add_i32(u_input.a.x, var_0.x), global0.a.b)));
    var_0 = _wgslsmith_div_vec3_i32(~(-(~vec3<i32>(-31957i, var_0.x, -2147483647i))), vec3<i32>(0i, 0i, var_0.x));
    let var_1 = !(!(!arg_0) || true);
    return _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~global1.x, u_input.b.x), _wgslsmith_sub_u32(~(~u_input.b.x), abs(u_input.b.x)), ~16722u, global1.x), vec4<u32>(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.b.x, global1.x), vec2<u32>(u_input.b.x, 53493u)), vec2<u32>(4294967295u, 11158u))), _wgslsmith_add_u32(1817u, ~(~50015u)), ~(~u_input.b.x), global1.x));
}

fn func_2() -> Struct_5 {
    let var_0 = !(!vec2<bool>(true, ~u_input.a.x <= u_input.a.x));
    global1 = abs(~(~(~u_input.b >> (func_3(false) % vec4<u32>(32u)))));
    global0 = Struct_5(global0.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(863f, _wgslsmith_div_f32(1344f, -1434f), _wgslsmith_f_op_f32(-1393f - _wgslsmith_f_op_f32(min(-397f, 348f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-282f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a.x + -143f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, 750f) * vec4<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, global0.a.a.x))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(747f, -1080f)) - _wgslsmith_div_f32(global0.a.a.x, -675f)), global0.a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1077f)), global0.a.a.x)));
    let var_2 = 15109u;
    return Struct_5(global0.a);
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: vec2<f32>) -> Struct_5 {
    let var_0 = func_2().a;
    let var_1 = func_2().a.b;
    global0 = Struct_5(func_2().a);
    global1 = min(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, global1.x, 558u, u_input.b.x), abs(u_input.b)), vec4<u32>(1u, _wgslsmith_mult_u32(~_wgslsmith_mult_u32(64191u, 16647u), ~_wgslsmith_add_u32(46443u, global1.x)), 4294967295u, _wgslsmith_mod_u32(global1.x, ~global1.x & 1u)));
    var var_2 = select(select(vec4<bool>(arg_0, global0.a.a.x < global0.a.a.x, arg_0, all(vec4<bool>(arg_0, true, true, arg_0))), vec4<bool>(min(u_input.a.x, arg_1.a.b) >= _wgslsmith_mod_i32(8254i, -33249i), false, true & arg_0, arg_0), !select(vec4<bool>(true, false, false, arg_0), select(vec4<bool>(arg_0, true, false, false), vec4<bool>(true, false, true, arg_0), vec4<bool>(arg_0, true, true, true)), vec4<bool>(true, arg_0, arg_0, arg_0))), select(vec4<bool>(!any(vec4<bool>(arg_0, true, false, arg_0)), true, global1.x <= 21877u, arg_0), vec4<bool>(false, any(!vec4<bool>(arg_0, true, false, true)), !all(vec2<bool>(true, true)), any(vec2<bool>(arg_0, true)) & arg_0), arg_1.a.b <= 14165i), select(!select(select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), arg_0), vec4<bool>(true, true, true, false), vec4<bool>(arg_0, true, arg_0, true)), vec4<bool>(arg_0, -6094i != u_input.a.x, arg_0, u_input.b.x > ~0u), vec4<bool>(false, true, !arg_0 | true, false)));
    return func_2();
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: i32) -> i32 {
    var var_0 = min(0i, _wgslsmith_mod_i32(1i >> (_wgslsmith_sub_u32(1u, abs(u_input.b.x)) % 32u), ~(i32(-1i) * -17182i)));
    global0 = func_4(all(vec3<bool>(global1.x > _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, 4294967295u), vec3<u32>(4749u, global1.x, u_input.b.x)), true, true)), func_2(), _wgslsmith_f_op_vec2_f32(select(arg_1.wx, vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), any(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true))))));
    global0 = func_4(true, Struct_5(func_2().a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global0.a.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(412f, -384f), vec2<f32>(global0.a.a.x, arg_1.x), true))), global0.a.a, !(arg_1.x == -368f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(global0.a.a.x)), _wgslsmith_f_op_f32(-func_2().a.a.x), global0.a.a.x)) - arg_1.wxy);
    var var_2 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yy) * _wgslsmith_f_op_vec2_f32(abs(global0.a.a))), global0.a), -2147483647i, vec3<u32>(4057u, ~arg_2.x, 1u | arg_2.x), var_1.x);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_clamp_vec4_u32(~(vec4<u32>(4294967295u, 1u, 4294967295u << (global1.x % 32u), 65046u) >> (select(firstTrailingBit(vec4<u32>(global1.x, 756u, 0u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, global1.x, 25298u, global1.x), vec4<u32>(9705u, 1u, 1u, u_input.b.x)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false))) % vec4<u32>(32u))), u_input.b, ~(~u_input.b));
    global0 = Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1135f, -1780f))), global0.a.b));
    let var_0 = u_input.b.x;
    global0 = Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(global0.a.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.a.a.x, global0.a.a.x))))), func_1(global1.wy, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.a.x, global0.a.a.x, -1298f, -296f), vec4<f32>(global0.a.a.x, global0.a.a.x, -334f, global0.a.a.x), vec4<bool>(false, false, false, false))), ~vec4<u32>(42723u, global1.x, 69698u, 30986u), global0.a.b) >> (abs(global1.x >> (0u % 32u)) % 32u)));
    var var_1 = Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.a.x), global0.a.a.x))), u_input.a.x));
    global0 = Struct_5(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(u_input.b.zxy, vec3<u32>(~u_input.b.x << (1u % 32u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(39179u, 71464u), 52189u), abs(~global1.x)), vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 18420u), vec2<u32>(global1.x, u_input.b.x)), u_input.b.x) & firstLeadingBit(u_input.b.zyy)), vec2<u32>(var_0, ~global1.x), 652f);
}

