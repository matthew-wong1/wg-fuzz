struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

var<private> global1: Struct_1;

var<private> global2: vec2<u32> = vec2<u32>(0u, 23142u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>) -> vec2<u32> {
    global0 = array<vec4<f32>, 8>();
    let var_0 = !vec2<bool>(any(select(arg_0, !vec3<bool>(true, arg_0.x, false), vec3<bool>(true, arg_0.x, arg_0.x))), false);
    var var_1 = _wgslsmith_f_op_f32(min(global1.b.x, global1.b.x));
    let var_2 = ~firstLeadingBit(global1.c);
    var var_3 = Struct_2(Struct_1(~var_2, global0[_wgslsmith_index_u32(var_2.x, 8u)], vec2<u32>(min(max(1u, var_2.x), 1u), ~1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(max(23324u, global1.a.x), 8u)])) - vec4<f32>(_wgslsmith_div_f32(global1.b.x, global1.b.x), 1672f, _wgslsmith_div_f32(global1.b.x, global1.b.x), global1.d.x))), vec2<bool>(var_0.x || true, any(!select(vec4<bool>(arg_0.x, var_0.x, arg_0.x, false), vec4<bool>(var_0.x, false, var_0.x, arg_0.x), vec4<bool>(false, false, false, false)))), Struct_1(vec2<u32>(min(abs(1u), ~u_input.b.x), 0u), global0[_wgslsmith_index_u32(1u, 8u)], global1.a, _wgslsmith_f_op_vec4_f32(max(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(0u, var_2.x), 8u)], _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(var_2.x, 8u)]))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 8u)])))));
    return global1.a;
}

fn func_2() -> u32 {
    global2 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, ~reverseBits(32830u)), min(~vec2<u32>(1u, global2.x), global1.a), _wgslsmith_add_vec2_u32(func_3(vec3<bool>(true, true, true)), u_input.b));
    let var_0 = u_input.d;
    var var_1 = select(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), all(vec2<bool>(true, true))), select(vec3<bool>(all(vec2<bool>(true, true)), global1.b.x < global1.d.x, select(true, false, true)), vec3<bool>(any(vec4<bool>(true, false, true, true)), true, true), global2.x > _wgslsmith_div_u32(global1.c.x, 4294967295u))), !vec3<bool>(true, any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), true), u_input.d.x <= (i32(-1i) * -2147483647i));
    return u_input.b.x << (1u % 32u);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-arg_2.c.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(623f + -1000f) - _wgslsmith_f_op_f32(-arg_0.x)))) * _wgslsmith_div_vec3_f32(arg_0.xyx, _wgslsmith_f_op_vec3_f32(-global1.d.wxz)));
    let var_2 = arg_2.a;
    var var_3 = vec3<i32>(_wgslsmith_sub_i32(-1i, u_input.a) >> (4294967295u % 32u), var_0, arg_1.x);
    var_3 = ~u_input.d;
    return arg_2.a;
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2(), _wgslsmith_mod_u32(4294967295u, 1u)), 8u)]))), vec4<i32>(~u_input.d.x, u_input.a, _wgslsmith_div_i32(-_wgslsmith_add_i32(u_input.c.x, 9558i), _wgslsmith_div_i32(-u_input.a, firstLeadingBit(u_input.d.x))), 1i), Struct_2(Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u) | u_input.b, _wgslsmith_mod_vec2_u32(global1.a, vec2<u32>(0u, 45982u))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(24395u, 8u)], vec4<f32>(global1.b.x, -225f, global1.d.x, global1.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, -1002f, global1.b.x, -567f) * vec4<f32>(298f, 364f, global1.d.x, -433f))), abs(vec2<u32>(u_input.b.x, global1.c.x)) << (_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(1u, u_input.b.x)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-562f, global1.b.x, 113f, global1.d.x)))), select(vec2<bool>(any(arg_0), all(arg_0.xz)), !arg_0.zx, select(select(vec2<bool>(arg_0.x, arg_0.x), arg_0.xx, false), vec2<bool>(arg_0.x, false), !vec2<bool>(false, arg_0.x))), Struct_1(_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(0u, 7135u)) ^ vec2<u32>(53373u, u_input.b.x), _wgslsmith_div_vec4_f32(global1.b, global1.b), vec2<u32>(13050u, u_input.b.x) << (global1.a % vec2<u32>(32u)), global0[_wgslsmith_index_u32(select(max(0u, global1.a.x), global1.c.x << (global1.a.x % 32u), all(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x))), 8u)]), global0[_wgslsmith_index_u32(func_3(arg_0).x, 8u)]));
    var var_1 = 41767u;
    let var_2 = ~(-u_input.a);
    var_0 = Struct_1(vec2<u32>(17891u, _wgslsmith_dot_vec2_u32(var_0.c, ~vec2<u32>(var_0.c.x, 1u))), _wgslsmith_div_vec4_f32(global1.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1974f, 674f, -1577f, var_0.d.x), var_0.d, !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))), vec2<u32>(func_2(), _wgslsmith_dot_vec2_u32(u_input.b, ~var_0.a)), global1.d);
    global2 = vec2<u32>(_wgslsmith_sub_u32(18854u, global1.c.x), 76983u);
    return Struct_3(~global2.x);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = u_input.d.x;
    var_0 = 51179i;
    var var_1 = Struct_1(u_input.b, _wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(7465u, 8u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.d) + vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + 380f), global1.d.x, _wgslsmith_div_f32(-852f, 536f), arg_0.x))), _wgslsmith_sub_vec2_u32(~u_input.b, u_input.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(func_4(vec4<f32>(global1.d.x, global1.d.x, arg_0.x, 916f), vec4<i32>(u_input.c.x, -2147483647i, -8438i, u_input.d.x), Struct_2(Struct_1(u_input.b, vec4<f32>(arg_0.x, 778f, 1000f, global1.d.x), u_input.b, global0[_wgslsmith_index_u32(global2.x, 8u)]), vec2<bool>(true, true), Struct_1(vec2<u32>(13341u, 0u), global1.d, vec2<u32>(82902u, u_input.b.x), global1.b), vec4<f32>(-331f, 483f, -1457f, arg_0.x))).b)) + _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(77972u, 8u)] - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-227f, arg_0.x, -1000f, arg_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(arg_1.a, 8u)]) + vec4<f32>(505f, -1000f, arg_0.x, arg_0.x)) + func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, arg_0.x, global1.b.x, 1404f) + global0[_wgslsmith_index_u32(global1.a.x, 8u)]), vec4<i32>(-4932i, -1i, u_input.a, -27232i), Struct_2(Struct_1(u_input.b, global1.d, vec2<u32>(4294967295u, arg_1.a), vec4<f32>(arg_0.x, global1.d.x, global1.d.x, 1000f)), vec2<bool>(false, false), Struct_1(vec2<u32>(u_input.b.x, arg_1.a), global0[_wgslsmith_index_u32(0u, 8u)], global1.c, vec4<f32>(796f, arg_0.x, 1071f, 205f)), vec4<f32>(global1.b.x, global1.d.x, global1.d.x, -1000f))).d)));
    let var_2 = _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(40714u, u_input.b.x)), vec2<u32>(func_3(vec3<bool>(true, true, any(vec2<bool>(false, true)))).x, var_1.a.x));
    global0 = array<vec4<f32>, 8>();
    return Struct_2(Struct_1(var_2, _wgslsmith_f_op_vec4_f32(-var_1.d), func_3(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), u_input.b.x > u_input.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, 316f, arg_0.x, 227f) - _wgslsmith_f_op_vec4_f32(-global1.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(601f, 871f, var_1.b.x, var_1.d.x)))))), !select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, false, true)), any(vec2<bool>(true, false))), true), func_4(var_1.b, -vec4<i32>(u_input.d.x, u_input.d.x, -1i, 0i) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, global1.c.x, 0u, 33580u), ~vec4<u32>(global2.x, 4294967295u, var_2.x, arg_1.a), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 11294u), vec4<u32>(u_input.b.x, global2.x, 8967u, 19662u))) % vec4<u32>(32u)), Struct_2(Struct_1(~vec2<u32>(arg_1.a, 1u), vec4<f32>(922f, global1.d.x, global1.b.x, arg_0.x), ~var_2, global1.d), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), Struct_1(~vec2<u32>(4294967295u, 4294967295u), global1.b, vec2<u32>(var_1.a.x, 44995u), global1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b * vec4<f32>(1000f, global1.d.x, global1.d.x, 713f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, var_1.b.x, 771f, 916f) + global1.d), _wgslsmith_mod_vec4_i32(vec4<i32>(-64055i, -32348i, 0i, 0i), vec4<i32>(u_input.c.x, u_input.a, 39303i, -5775i)), Struct_2(Struct_1(var_2, vec4<f32>(global1.b.x, 311f, -107f, -716f), var_1.c, vec4<f32>(arg_0.x, -385f, global1.d.x, 132f)), vec2<bool>(false, true), Struct_1(vec2<u32>(arg_1.a, arg_1.a), vec4<f32>(var_1.b.x, var_1.d.x, global1.d.x, var_1.b.x), vec2<u32>(var_1.a.x, var_2.x), vec4<f32>(arg_0.x, arg_0.x, var_1.d.x, -1355f)), global0[_wgslsmith_index_u32(u_input.b.x, 8u)])).d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.d - vec4<f32>(arg_0.x, 573f, arg_0.x, var_1.b.x)), _wgslsmith_f_op_vec4_f32(-global1.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b.yyz), vec3<f32>(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), -1282f)), func_1(!vec3<bool>(u_input.c.x == u_input.d.x, true, true)));
    global1 = func_5(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global1.d.zyx * var_0.c.d.xzz), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(var_0.a.b.yxy, _wgslsmith_div_vec3_f32(var_0.a.d.yxx, var_0.c.d.xyw)))))), Struct_3(max(_wgslsmith_sub_u32(u_input.b.x, 85463u), u_input.b.x) ^ u_input.b.x)).a;
    var_0 = func_5(var_0.a.d.yyw, func_1(select(!(!vec3<bool>(true, true, var_0.b.x)), vec3<bool>(true, var_0.b.x || false, var_0.b.x), vec3<bool>(all(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), true, false))));
    var var_1 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.a.b.xzy))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(605f, -363f, -1884f)))), Struct_3(~u_input.b.x >> (~0u % 32u)));
    var var_2 = 4168u;
    var var_3 = _wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, var_0.c.c.x), vec3<u32>(var_0.c.a.x, var_1.a.a.x, 4294967295u)), func_3(vec3<bool>(true, false, false)).x, func_4(global1.b, u_input.c, Struct_2(var_0.a, var_1.b, Struct_1(vec2<u32>(30802u, 4294967295u), var_0.d, vec2<u32>(var_0.a.c.x, 1u), vec4<f32>(-115f, var_1.a.d.x, var_1.c.b.x, 1000f)), global1.d)).a.x, var_1.c.c.x), vec4<u32>(~53022u, u_input.b.x, 29811u, 46477u) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a.x, 66330u, global2.x, var_1.a.a.x), vec4<u32>(4294967295u, 39532u, var_1.c.a.x, 1u), vec4<u32>(1u, var_1.a.a.x, 4294967295u, global2.x))) & vec4<u32>(1u | ~u_input.b.x, 0u ^ ~select(39136u, 30249u, true), 1u | _wgslsmith_dot_vec2_u32(u_input.b, func_5(vec3<f32>(-977f, var_1.a.b.x, -424f), Struct_3(u_input.b.x)).c.c), 0u);
    global1 = var_0.c;
    var var_4 = 502f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(51152u, 4294967295u, abs(1u), ~global1.a.x));
}

