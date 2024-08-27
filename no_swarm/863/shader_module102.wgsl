struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: array<f32, 22>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], all(vec2<bool>(all(arg_0.a.yz), all(vec3<bool>(false, arg_0.a.x, arg_0.a.x)))), !any(vec2<bool>(true, false))));
    var var_1 = Struct_1(!arg_0.a, _wgslsmith_f_op_vec2_f32(-arg_0.b), arg_0.c, ((arg_0.d >> ((vec2<u32>(8799u, u_input.b.x) & vec2<u32>(u_input.b.x, u_input.b.x)) % vec2<u32>(32u))) >> (~abs(u_input.b.yw) % vec2<u32>(32u))) | ~vec2<i32>(-37146i, abs(-2147483647i)));
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    let var_2 = -1000f;
    return arg_0.c.x;
}

fn func_2() -> bool {
    global0 = array<bool, 32>();
    let var_0 = select(vec4<bool>(!(global0[_wgslsmith_index_u32(abs(u_input.b.x), 32u)] | true), select(global0[_wgslsmith_index_u32(abs(u_input.b.x & 42388u), 32u)], (u_input.b.x < u_input.b.x) && global0[_wgslsmith_index_u32(~66018u, 32u)], true), any(vec3<bool>(any(vec2<bool>(false, true)), true, true)), u_input.b.x < ~firstTrailingBit(u_input.b.x)), vec4<bool>(global0[_wgslsmith_index_u32(96723u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true, true), select(!select(!vec4<bool>(global0[_wgslsmith_index_u32(23357u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]), func_3(Struct_1(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true), vec2<f32>(global1[_wgslsmith_index_u32(15436u, 22u)], -344f), vec4<bool>(global0[_wgslsmith_index_u32(25225u, 32u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec2<i32>(u_input.a, 24653i)))), !select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(105192u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)]), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(5809u, 32u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(global0[_wgslsmith_index_u32(70816u, 32u)], global0[_wgslsmith_index_u32(24637u, 32u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)])), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(63776u, 32u)], false), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true))), !(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)])))));
    global0 = array<bool, 32>();
    var var_1 = max(vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(firstTrailingBit(~vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a, abs(2147483647i)))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 0i) & vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)) ^ vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(35887i, -84075i), vec2<i32>(-23507i, u_input.a))), -13006i));
    return !func_3(Struct_1(var_0, vec2<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 22u)])), _wgslsmith_f_op_f32(max(-1000f, global1[_wgslsmith_index_u32(u_input.b.x, 22u)]))), !vec4<bool>(true, var_0.x, true, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec2<i32>(2147483647i, 2147483647i) | abs(vec2<i32>(u_input.a, 2147483647i))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: f32) -> Struct_1 {
    global0 = array<bool, 32>();
    let var_0 = -countOneBits(vec2<i32>(u_input.a, -2147483647i));
    let var_1 = firstTrailingBit(-2147483647i);
    var var_2 = u_input.a;
    var var_3 = firstTrailingBit(firstLeadingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(-39568i, -2147483647i, u_input.a, 2147483647i), firstTrailingBit(vec4<i32>(4919i, u_input.a, var_0.x, u_input.a)))));
    return Struct_1(select(select(!vec4<bool>(false, true, arg_0.x, true), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], true, true), vec4<bool>(arg_0.x, arg_0.x, false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(arg_0.x, false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true)), func_2()), !vec4<bool>(true, false, any(arg_0), true), func_3(Struct_1(!vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 32u)], false, false), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1757f, global1[_wgslsmith_index_u32(0u, 22u)]), vec2<f32>(global1[_wgslsmith_index_u32(arg_1.x, 22u)], arg_2))), vec4<bool>(true, true, true, true), firstTrailingBit(vec2<i32>(var_0.x, -14517i))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -283f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(ceil(-652f))))), select(vec4<bool>(all(select(vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, global0[_wgslsmith_index_u32(arg_1.x, 32u)], true, false), false)), all(vec4<bool>(arg_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false, false)), !global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true), select(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(56263u, 32u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(78077u, 32u)], true, global0[_wgslsmith_index_u32(arg_1.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), global0[_wgslsmith_index_u32(15724u, 32u)]), select(select(vec4<bool>(global0[_wgslsmith_index_u32(25635u, 32u)], global0[_wgslsmith_index_u32(arg_1.x, 32u)], arg_0.x, true), vec4<bool>(false, true, true, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), vec4<bool>(arg_0.x, false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true), false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)] == true, false, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.x, arg_1.x, arg_1.x), 32u)])), select(!(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(57900u, 32u)])), !vec4<bool>(arg_0.x, true, global0[_wgslsmith_index_u32(6120u, 32u)], arg_0.x), _wgslsmith_mod_i32(var_0.x, u_input.a) >= _wgslsmith_mod_i32(34109i, var_0.x))), var_0);
}

fn func_1() -> Struct_1 {
    global1 = array<f32, 22>();
    let var_0 = func_4(select(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), !select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(26303u, 32u)], false), global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), true), vec2<bool>(true, true | global0[_wgslsmith_index_u32(20703u, 32u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 22u)] + 1338f)) <= _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(min(2179u, 4294967295u), 22u)] + -508f)), vec4<u32>(4770u >> (u_input.b.x % 32u), select(u_input.b.x, u_input.b.x, func_2()), 38631u, ~u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1047f)), _wgslsmith_f_op_f32(f32(-1f) * -1926f), !global0[_wgslsmith_index_u32(u_input.b.x, 32u)]))) + _wgslsmith_f_op_f32(-1989f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x << (u_input.b.x % 32u), 22u)] - _wgslsmith_f_op_f32(-784f - global1[_wgslsmith_index_u32(u_input.b.x, 22u)])))));
    global0 = array<bool, 32>();
    let var_1 = u_input.b;
    let var_2 = ~vec3<u32>(~0u, u_input.b.x, _wgslsmith_mod_u32(22844u, 8256u));
    return Struct_1(!var_0.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-611f, 1225f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-470f)), -2607f))), var_0.c, _wgslsmith_sub_vec2_i32(abs(var_0.d), vec2<i32>(-2147483647i, u_input.a)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<bool> {
    global0 = array<bool, 32>();
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + global1[_wgslsmith_index_u32(16040u, 22u)]) - -1672f)), 974f, -2229f) - arg_3);
    let var_2 = u_input.b.x;
    global1 = array<f32, 22>();
    return vec4<bool>(any(func_1().c), !arg_0.c.x, !(!(~1u >= _wgslsmith_div_u32(4294967295u, var_2))), arg_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 828f;
    global0 = array<bool, 32>();
    let var_1 = Struct_1(func_5(func_1(), Struct_1(vec4<bool>(func_1().a.x, true, true, true), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(-499f, -229f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(288f, -542f), vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], -225f), global0[_wgslsmith_index_u32(1u, 32u)])))), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), ~vec2<i32>(u_input.a, 0i)), func_1(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(1052f, 195f, global1[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec3<f32>(1274f, global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)])))) + _wgslsmith_div_vec3_f32(vec3<f32>(542f, global1[_wgslsmith_index_u32(u_input.b.x, 22u)], 791f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, global1[_wgslsmith_index_u32(6331u, 22u)], 656f) - vec3<f32>(global1[_wgslsmith_index_u32(1u, 22u)], -1678f, 471f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, 319f), vec2<f32>(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(4294967295u, 22u)])), _wgslsmith_div_f32(-817f, 1000f)))), func_1().c, func_1().d);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(trunc(-912f)), _wgslsmith_f_op_f32(f32(-1f) * -1075f), 1517f))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 22u)]), _wgslsmith_f_op_f32(-1618f + var_0), global1[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 22u)]), _wgslsmith_f_op_f32(floor(487f)), _wgslsmith_f_op_f32(-var_0)))) - vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(select(1u, 41833u, var_1.c.x), 0u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 47176u, u_input.b.x), u_input.b.xyw)), 22u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(52481u, 22u)]), _wgslsmith_f_op_f32(-func_1().b.x), !all(var_1.c.yzx))), _wgslsmith_f_op_f32(sign(var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, -abs(~var_1.d.x) << (u_input.b.x % 32u), min(u_input.b.wy, u_input.b.yx));
}

