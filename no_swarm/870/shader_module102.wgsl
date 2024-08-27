struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(7230i, 0i, 26115i, i32(-2147483648), 0i, 2147483647i, 16309i, 0i, i32(-2147483648), -4458i, -1i, 16365i, 29995i, -1i, 0i, -55066i, 31210i, 34303i, 0i, -56558i, -1i, i32(-2147483648), -30960i, 6956i, -34021i, i32(-2147483648));

var<private> global1: i32;

var<private> global2: vec3<u32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.d)) + _wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a)))));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<f32>) -> f32 {
    global2 = ~(~vec3<u32>(4294967295u, firstLeadingBit(u_input.c.x), reverseBits(u_input.d)) >> (~(~vec3<u32>(global2.x, global2.x, 1u)) % vec3<u32>(32u)));
    global0 = array<i32, 26>();
    global1 = _wgslsmith_div_i32(countOneBits(countOneBits(u_input.a)) | (arg_0 & -31131i), 1i) << (0u % 32u);
    let var_0 = Struct_1(-1563f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-398f, arg_2.x, arg_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1456f, arg_2.x, 641f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.x, -751f, -238f)))))), _wgslsmith_mult_vec3_i32(~(~vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], -1i, u_input.b)), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, -18126i, 5257i), vec3<i32>(arg_0, arg_0, 30082i)), _wgslsmith_mult_vec3_i32(vec3<i32>(32594i, 31159i, -1i), vec3<i32>(-5650i, -14989i, -1i))), -reverseBits(vec3<i32>(global0[_wgslsmith_index_u32(10506u, 26u)], 12179i, arg_0)))), arg_2.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.b, var_0.b)));
    return var_0.d;
}

fn func_2() -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(747f, 509f)), _wgslsmith_f_op_f32(-1974f * 105f), false)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(33932i, global2.zz, vec2<f32>(1079f, 155f))), 374f)) + -1366f), 1224f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(390f, 1568f)) + _wgslsmith_f_op_f32(386f * -589f)) + _wgslsmith_f_op_f32(round(-1031f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -427f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1509f)))));
    let var_1 = vec4<u32>(_wgslsmith_sub_u32(~(global2.x << (global2.x % 32u)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, global2.x, global2.x), vec3<u32>(0u, u_input.c.x, u_input.c.x), vec3<bool>(true, true, true)), ~vec3<u32>(u_input.d, global2.x, global2.x))), firstTrailingBit(0u), abs(~select(u_input.d, u_input.c.x, true)), global2.x) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 43076u, u_input.c.x, 1u), vec4<u32>(u_input.c.x, 21809u, 4294967295u, 1u), vec4<u32>(33508u, global2.x, 0u, global2.x)), _wgslsmith_add_vec4_u32(vec4<u32>(global2.x, u_input.d, 0u, 65639u), vec4<u32>(global2.x, 94238u, u_input.d, u_input.c.x))), ~abs(vec4<u32>(107730u, global2.x, global2.x, 8140u))), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 6578u, 18726u, u_input.c.x), vec4<u32>(global2.x, u_input.d, u_input.d, 4294967295u)) ^ vec4<u32>(4294967295u, global2.x, 4294967295u, 14074u)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1192f), _wgslsmith_f_op_vec3_f32(var_0.yzy - var_0.zxx), -_wgslsmith_sub_vec3_i32(select(reverseBits(vec3<i32>(-44388i, 0i, 0i)), ~vec3<i32>(2147483647i, 1i, 39938i), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), vec3<i32>(global0[_wgslsmith_index_u32(91772u, 26u)], 2147483647i, u_input.a) << (_wgslsmith_mod_vec3_u32(vec3<u32>(6671u, var_1.x, 21591u), vec3<u32>(34093u, var_1.x, 1u)) % vec3<u32>(32u))), 2115f);
    let var_3 = var_2;
    var var_4 = reverseBits(vec4<u32>(~34442u ^ ~var_1.x, var_1.x >> (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(19153u, global2.x, 1u), global2.x) % 32u), ~max(~54520u, var_1.x), max(var_1.x, 60384u)));
    return ~_wgslsmith_sub_u32(~(~global2.x) & _wgslsmith_mod_u32(_wgslsmith_add_u32(57086u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 79623u), vec4<u32>(var_1.x, 9948u, u_input.d, 0u))), _wgslsmith_mult_u32(var_1.x, firstTrailingBit(select(global2.x, 29336u, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(-(~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global0[_wgslsmith_index_u32(u_input.d, 26u)]), vec2<i32>(0i, 77791i))) ^ select(vec2<i32>(-u_input.a, ~(-1i)), abs(abs(vec2<i32>(u_input.b, 21348i))), true));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_div_f32(647f, -863f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1204f, 614f, 321f)), vec3<i32>(var_0.x, 3754i, u_input.b), _wgslsmith_f_op_f32(min(353f, -847f))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(826f, -1000f)), _wgslsmith_f_op_f32(-637f + -289f))))));
    global1 = 1i;
    global2 = vec3<u32>(abs(~global2.x), func_2(), _wgslsmith_dot_vec4_u32(~min(countOneBits(vec4<u32>(59535u, 0u, global2.x, global2.x)), ~vec4<u32>(global2.x, global2.x, u_input.d, u_input.c.x)), countOneBits(~max(vec4<u32>(global2.x, u_input.c.x, global2.x, 4294967295u), vec4<u32>(global2.x, 4294967295u, 4051u, global2.x)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 150f))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 356f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(~global0[_wgslsmith_index_u32(92618u | global2.x, 26u)]));
}

