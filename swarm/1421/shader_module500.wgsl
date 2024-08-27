struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 149583u, 0u);

var<private> global1: array<Struct_1, 20>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.d * vec3<f32>(1420f, arg_0.d.x, arg_0.a)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.d.x, 285f, -754f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-259f, 103f, 355f) * _wgslsmith_f_op_vec3_f32(arg_0.d * arg_0.d))), select(vec3<bool>(false, any(vec3<bool>(true, true, false)), true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), any(vec2<bool>(false, true))), select(true, false, true) | true))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1384f, arg_0.a, -405f) + vec3<f32>(-218f, -225f, 1009f)) - arg_0.d) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a, -1000f))), 537f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -776f), arg_0.d.x))));
    let var_1 = Struct_4(!vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), select(true, true, any(vec4<bool>(true, true, false, false)))));
    var var_2 = select(vec2<bool>(var_1.a.x, false), var_1.a, var_1.a);
    let var_3 = Struct_1(vec2<bool>(all(!select(vec2<bool>(var_1.a.x, true), var_1.a, var_1.a.x)), all(vec4<bool>(true, arg_0.c.a != arg_0.b.a, !var_1.a.x, true))), select(vec2<i32>(~select(27660i, arg_0.c.a, var_2.x), -18423i), vec2<i32>(-1i) * -vec2<i32>(-1063i, u_input.d.x), select(vec2<bool>(all(var_1.a), var_2.x), !var_1.a, select(var_1.a, select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, var_1.a.x), vec2<bool>(true, var_2.x)), true))), all(!vec4<bool>(any(vec4<bool>(true, false, true, true)), !var_1.a.x, false, var_1.a.x & true)), ~(~(~1u)));
    let var_4 = global1[_wgslsmith_index_u32(9597u, 20u)];
    return var_4.c;
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = select(vec3<bool>(false, func_3(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -2150f), arg_0, arg_0, vec3<f32>(-1000f, -1000f, -1298f))), func_3(Struct_3(_wgslsmith_div_f32(1136f, 512f), arg_0, arg_0, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1220f, -334f, 515f), vec3<f32>(-1516f, 520f, -1197f), true))))), select(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec4<bool>(true, false, false, true)))), vec3<bool>(false, all(vec3<bool>(false, false, false)), true), false), vec3<bool>(all(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true)), false || all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true)))));
    var var_1 = -vec2<i32>(abs(abs(1i)), u_input.a.x);
    var var_2 = global0.xx;
    var var_3 = select(select(vec3<bool>(true, select(true, false && var_0.x, false), true), vec3<bool>(!var_0.x, !var_0.x == var_0.x, true), select(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true), !vec3<bool>(false, var_0.x, var_0.x)), vec3<bool>(var_0.x | var_0.x, func_3(Struct_3(-1000f, arg_0, arg_0, vec3<f32>(721f, -171f, -2723f))), false), var_0.x)), !(!vec3<bool>(var_0.x, any(var_0.yy), var_0.x)), false);
    let var_4 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(~var_2.x, global0.x >> (1u % 32u)), global0.x)), select(vec3<u32>(4294967295u, var_2.x, ~var_2.x), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, global0.x), vec3<u32>(61723u, 1u, 4294967295u)), !vec3<bool>(var_3.x, true, false)) ^ select(firstTrailingBit(vec3<u32>(global0.x, var_2.x, var_2.x) << (vec3<u32>(global0.x, 4294967295u, var_2.x) % vec3<u32>(32u))), vec3<u32>(global0.x, 29019u, _wgslsmith_div_u32(4294967295u, var_2.x)), vec3<bool>(true, var_3.x, false)));
    return 30642u & var_4;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: f32) -> Struct_4 {
    global0 = vec3<u32>(firstLeadingBit(_wgslsmith_div_u32(reverseBits(arg_1.x), ~7334u)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 1u, global0.x), arg_1.wxx)), 1u) | vec3<u32>(~79924u, ~(~max(5766u, 39690u)), ~(~1u) & _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.x, 0u, arg_0), arg_1.xwx));
    let var_0 = min(u_input.d, vec4<i32>(min(~min(u_input.b.x, u_input.a.x), min(-u_input.b.x, -1512i)), ~(-2147483647i), -7320i, u_input.e.x));
    let var_1 = Struct_4(vec2<bool>(true, true));
    let var_2 = arg_2.c;
    let var_3 = -var_2.a;
    return var_1;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec4<bool>, arg_3: u32) -> Struct_2 {
    var var_0 = func_4(reverseBits(65067u << (1u % 32u)), min(vec4<u32>(firstLeadingBit(arg_0), abs(1u), 0u, func_2(Struct_2(-18734i))), vec4<u32>(global0.x, 42487u, 4294967295u, ~(~11742u))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - 103f) + arg_1), Struct_2(_wgslsmith_sub_i32(max(u_input.d.x, u_input.b.x), min(u_input.c.x, 0i))), Struct_2(u_input.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -195f, -854f) - vec3<f32>(2771f, arg_1, 780f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1011f, arg_1, arg_1) - vec3<f32>(-178f, 604f, 137f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))))));
    var var_1 = Struct_3(1000f, Struct_2(-_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-35808i, 13288i, u_input.d.x), firstTrailingBit(-12223i))), Struct_2(~u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(arg_1 - arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1, -135f)), _wgslsmith_f_op_f32(arg_1 - arg_1)), 1000f)));
    let var_2 = Struct_4(var_0.a);
    let var_3 = vec4<i32>(~31365i, -select(var_1.c.a, 23392i, all(!vec4<bool>(arg_2.x, arg_2.x, var_2.a.x, false))), -2147483647i, u_input.c.x);
    var var_4 = -6461i;
    return Struct_2(firstTrailingBit((_wgslsmith_sub_i32(var_1.b.a, 0i) >> (~arg_3 % 32u)) ^ u_input.c.x));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<bool>) -> StorageBuffer {
    global1 = array<Struct_1, 20>();
    var var_0 = true;
    global0 = reverseBits(select(~min(vec3<u32>(0u, 1u, global0.x), reverseBits(vec3<u32>(20815u, 0u, global0.x))), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 4294967295u, 4294967295u), ~vec3<u32>(57341u, global0.x, 89578u)), vec3<u32>(global0.x, _wgslsmith_div_u32(global0.x, global0.x), _wgslsmith_clamp_u32(66619u, 0u, global0.x))), !vec3<bool>(arg_0.b.a >= -14111i, true, true)));
    global1 = array<Struct_1, 20>();
    let var_1 = Struct_4(vec2<bool>(!(!func_4(global0.x, vec4<u32>(28342u, 40610u, global0.x, 7497u), arg_1, arg_0.d.x).a.x), false));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1511f)), _wgslsmith_f_op_f32(-arg_0.d.x)), arg_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1650f, 641f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    let var_1 = vec2<f32>(-288f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-345f, -680f)));
    global1 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = func_5(Struct_3(409f, func_1(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -410f), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), ~(~global0.x)), Struct_2(-(~0i)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-365f, 790f, var_1.x)))))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-751f, 209f)) * _wgslsmith_f_op_f32(var_1.x - var_1.x))), Struct_2(~_wgslsmith_div_i32(u_input.b.x, var_0)), Struct_2(~_wgslsmith_add_i32(386i, -2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1230f, var_1.x, var_1.x), vec3<f32>(-2551f, 1000f, 299f), vec3<bool>(true, false, false)))))), !vec2<bool>(func_4(_wgslsmith_sub_u32(1u, global0.x), reverseBits(vec4<u32>(global0.x, global0.x, 1u, 19524u)), Struct_3(var_1.x, Struct_2(-2147483647i), Struct_2(-35640i), vec3<f32>(var_1.x, var_1.x, 807f)), var_1.x).a.x, _wgslsmith_f_op_f32(round(var_1.x)) >= _wgslsmith_f_op_f32(var_1.x * var_1.x)));
}

