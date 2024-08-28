struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
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

var<private> global0: array<Struct_2, 32>;

var<private> global1: array<vec4<u32>, 19>;

var<private> global2: array<i32, 14> = array<i32, 14>(i32(-2147483648), 1i, 0i, 67364i, 1i, 1i, -25098i, 19524i, -1i, 48402i, 18438i, -26393i, 7i, -56829i);

var<private> global3: array<vec3<i32>, 25>;

var<private> global4: vec4<f32> = vec4<f32>(601f, -1490f, -833f, 914f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_2(all(select(!select(vec4<bool>(arg_0.a, false, false, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, false, true), false), !vec4<bool>(true, false, false, arg_0.a), arg_0.a)), -859f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.xzy) - _wgslsmith_f_op_vec3_f32(global4.xzx + global4.ywz))), _wgslsmith_f_op_vec3_f32(exp2(global4.wzx))), vec3<i32>(-2147483647i, u_input.b.x | _wgslsmith_div_i32(-1i, global2[_wgslsmith_index_u32(abs(u_input.a), 14u)]), abs(global2[_wgslsmith_index_u32(68356u, 14u)])));
    var var_1 = Struct_2(true, global4.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.c, _wgslsmith_f_op_vec3_f32(round(var_0.c)), u_input.d >= abs(var_0.d.x)))), var_0.d);
    global1 = array<vec4<u32>, 19>();
    var var_2 = var_1.c.xx;
    var var_3 = ~abs(_wgslsmith_mod_u32(~4294967295u, 24822u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.a, ~4294967295u), 1u, ~u_input.a, _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(u_input.a ^ u_input.c, 19u)], ~global1[_wgslsmith_index_u32(5525u, 19u)])), _wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(32757u, 19u)], ~firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 1u, 0u)))) % 32u);
    return ~(u_input.a >> (~u_input.a % 32u));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> vec3<i32> {
    global3 = array<vec3<i32>, 25>();
    var var_0 = _wgslsmith_div_vec2_u32(select(~(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(27327u, u_input.a)) | max(vec2<u32>(u_input.a, 3972u), vec2<u32>(22030u, 4294967295u))), vec2<u32>(u_input.a, u_input.a | func_3(Struct_1(arg_1.a))), select(vec2<bool>(arg_0, true), select(select(vec2<bool>(arg_1.a, false), vec2<bool>(arg_1.a, true), vec2<bool>(true, false)), !vec2<bool>(true, arg_0), arg_1.a), select(select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(true, arg_1.a), vec2<bool>(true, true)), !vec2<bool>(arg_1.a, arg_1.a), !arg_1.a))), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(u_input.a, u_input.c)), 1u), abs(~vec2<u32>(37565u, u_input.a))) | ~(~countOneBits(vec2<u32>(1u, u_input.a))));
    var var_1 = Struct_2((~(~global2[_wgslsmith_index_u32(0u, 14u)]) <= (u_input.d >> (u_input.a % 32u))) && select(select(true, arg_0, arg_1.a) || (arg_2.x == arg_2.x), true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - global4.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_1.c), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-841f))), _wgslsmith_f_op_f32(round(-1057f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))))), vec3<i32>(-1i & u_input.b.x, -23675i, global2[_wgslsmith_index_u32(var_0.x, 14u)]));
    global0 = array<Struct_2, 32>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.c.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - var_1.b))));
    return arg_1.d;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -531f)), arg_0.b) - _wgslsmith_f_op_f32(-global4.x)), global4.xyx, arg_0.d);
    global3 = array<vec3<i32>, 25>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.c, 32u)];
    var_1 = Struct_2(any(vec3<bool>(true, true, arg_0.a)), global4.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c)), func_2(true, Struct_2(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1467f) + 1010f), _wgslsmith_f_op_vec3_f32(max(global4.xww, vec3<f32>(-1942f, var_1.b, var_1.c.x))), ~(~vec3<i32>(u_input.d, var_1.d.x, global2[_wgslsmith_index_u32(1u, 14u)]))), vec2<i32>(countOneBits(2147483647i), 1671i) >> ((~vec2<u32>(u_input.c, u_input.a) ^ ~vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u))));
    var var_2 = arg_0;
    return Struct_1(all(vec3<bool>(!select(false, arg_0.a, false), select(var_2.a, var_0.a, all(vec3<bool>(false, arg_0.a, false))), var_1.a)));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mult_i32(13442i, 16151i);
    global1 = array<vec4<u32>, 19>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1594f, 1000f, 1559f, -1050f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, arg_0, 1355f, 142f) - vec4<f32>(arg_0, -501f, global4.x, 1411f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -956f, arg_0) + vec4<f32>(arg_0, -969f, -2379f, global4.x))))));
    let var_2 = u_input.d;
    global3 = array<vec3<i32>, 25>();
    return ~u_input.c;
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2) -> u32 {
    let var_0 = arg_2;
    global1 = array<vec4<u32>, 19>();
    let var_1 = _wgslsmith_div_u32(~arg_0, firstTrailingBit(~_wgslsmith_clamp_u32(4294967295u, 0u, arg_0) >> (~arg_0 % 32u)));
    let var_2 = _wgslsmith_add_i32(global2[_wgslsmith_index_u32(0u, 14u)], ~_wgslsmith_mult_i32(func_2(any(vec4<bool>(arg_2.a, arg_2.a, false, arg_2.a)), Struct_2(false, var_0.b, arg_2.c, vec3<i32>(global2[_wgslsmith_index_u32(var_1, 14u)], global2[_wgslsmith_index_u32(26213u, 14u)], 0i)), arg_2.d.xx).x, 7347i));
    let var_3 = Struct_1(!(any(vec3<bool>(true, true, true)) && var_0.a));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 19>();
    global0 = array<Struct_2, 32>();
    var var_0 = Struct_1(false);
    global3 = array<vec3<i32>, 25>();
    let var_1 = _wgslsmith_f_op_f32(ceil(-1756f));
    var_0 = Struct_1(false);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.c, func_5(func_4(_wgslsmith_div_f32(-519f, var_1), func_1(global0[_wgslsmith_index_u32(u_input.a, 32u)])), vec3<f32>(_wgslsmith_div_f32(-349f, 457f), _wgslsmith_f_op_f32(var_1 - global4.x), _wgslsmith_f_op_f32(-1010f * var_1)), global0[_wgslsmith_index_u32(~(0u << (u_input.c % 32u)), 32u)]), ~(~u_input.a | _wgslsmith_sub_u32(u_input.a, u_input.a))));
}

