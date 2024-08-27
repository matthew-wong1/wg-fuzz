struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: bool;

var<private> global2: f32 = -961f;

var<private> global3: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(18156i, -51984i, 25021i, -1i), vec4<i32>(-843i, 2147483647i, 23818i, 2147483647i), vec4<i32>(1i, 1i, -1i, 2147483647i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -1i), vec4<i32>(1i, 1i, 18798i, -1i), vec4<i32>(23430i, -45450i, 1i, 10566i), vec4<i32>(1i, 0i, -2348i, -36416i), vec4<i32>(0i, -9898i, 33561i, i32(-2147483648)), vec4<i32>(0i, 6663i, -1i, i32(-2147483648)), vec4<i32>(-9165i, -40631i, 0i, 24868i), vec4<i32>(i32(-2147483648), -1i, -9017i, 1i), vec4<i32>(33227i, 0i, 10728i, -35878i), vec4<i32>(25541i, 0i, i32(-2147483648), 62183i), vec4<i32>(-6031i, -1i, -63760i, i32(-2147483648)), vec4<i32>(16109i, -73619i, 24856i, 2147483647i), vec4<i32>(-6338i, 1i, i32(-2147483648), 2147483647i), vec4<i32>(i32(-2147483648), 12934i, -57708i, -10353i), vec4<i32>(i32(-2147483648), 2685i, -9742i, -1i), vec4<i32>(0i, 0i, 1i, 0i), vec4<i32>(24473i, 0i, i32(-2147483648), -11629i), vec4<i32>(0i, 1i, -1i, 28937i), vec4<i32>(2147483647i, 66530i, 1i, -30936i), vec4<i32>(-1i, -1i, -32009i, 1i), vec4<i32>(-1i, -20351i, 21870i, i32(-2147483648)), vec4<i32>(0i, 50961i, 1i, -748i), vec4<i32>(2147483647i, -15255i, 13607i, i32(-2147483648)), vec4<i32>(2147483647i, -27775i, 29410i, -41300i), vec4<i32>(-1i, -10532i, 2147483647i, 29785i), vec4<i32>(0i, 2147483647i, -1i, -41598i), vec4<i32>(-1i, -1i, 2147483647i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2804i, i32(-2147483648)), vec4<i32>(18189i, 44725i, 2147483647i, 1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    global3 = array<vec4<i32>, 32>();
    global3 = array<vec4<i32>, 32>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-883f - -3402f), -350f))) - 439f));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-607f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - -769f)))))));
    var var_0 = ~76072u;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1052f + 1347f), 1407f), _wgslsmith_f_op_f32(-1363f + _wgslsmith_f_op_f32(413f * 268f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1006f) * 1f))), vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], u_input.b.x), arg_2, global3[_wgslsmith_index_u32(~4294967295u, 32u)], -vec3<i32>(u_input.b.x, 2147483647i, ~(~global0[_wgslsmith_index_u32(0u, 26u)])));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(194f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_0.a, 374f, true)), _wgslsmith_f_op_f32(f32(-1f) * -166f), !arg_0.c)), all(select(vec2<bool>(arg_0.c, false), vec2<bool>(arg_0.c, arg_0.c), true))))));
    let var_1 = !select(vec2<bool>(true, true), vec2<bool>(true, true), (true && all(vec3<bool>(arg_0.c, false, false))) && (19865u > arg_2.x));
    let var_2 = Struct_1(arg_0.a, arg_0.e.xx, u_input.b.x < (arg_0.d.x >> (~arg_1 % 32u)), -vec4<i32>(u_input.b.x, func_2(vec2<i32>(u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 26u)]), vec4<bool>(false, arg_0.c, var_1.x, arg_0.c), !var_1.x, min(vec3<i32>(arg_0.d.x, 26105i, global0[_wgslsmith_index_u32(1u, 26u)]), arg_0.e)).d.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(arg_0.d, arg_0.d), global0[_wgslsmith_index_u32(arg_2.x & arg_2.x, 26u)]), select(-18362i, arg_0.d.x, arg_0.c)), ~(~arg_0.d.yxy));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-128f, 744f, arg_0.a), vec3<f32>(-428f, -1000f, -994f)))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-356f, var_2.a, 1177f) - vec3<f32>(-2080f, -438f, var_0.x)))))));
    var var_4 = 1f;
    return _wgslsmith_f_op_f32(-var_3.x);
}

fn func_1() -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(5918u, ~4294967295u, 7317u), 26u)];
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-291f, 509f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -967f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(func_2(u_input.b, vec4<bool>(true, false, true, false), true, vec3<i32>(u_input.b.x, 0i, u_input.b.x)), 0u, vec4<u32>(25702u, u_input.d.x, u_input.d.x, u_input.c.x)))))));
    var var_2 = true;
    return select(select(vec4<bool>(4294967295u < _wgslsmith_mult_u32(u_input.c.x, u_input.d.x), all(vec4<bool>(true, true, true, true)), true, _wgslsmith_f_op_f32(var_1.x * -260f) >= _wgslsmith_f_op_f32(var_1.x * -1000f)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)), !all(vec4<bool>(false, true, false, false))), func_2(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, -36841i), u_input.b, u_input.b), vec4<bool>(true, true, true, true), true, vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, 2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 26u)])).c), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true)) != (true & all(vec2<bool>(true, true))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(step(1805f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-204f, 1000f)), _wgslsmith_f_op_f32(func_3(func_2(vec2<i32>(-2147483647i, 0i), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), arg_2.x, vec3<i32>(u_input.b.x, 0i, -31291i)), 32134u, vec4<u32>(u_input.d.x, 4294967295u, u_input.c.x, 0u))), true)))));
    let var_1 = ~4294967295u == arg_1.x;
    var var_2 = -u_input.b;
    let var_3 = func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(abs(firstTrailingBit(-1i)), u_input.b.x), u_input.b), func_1(), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_1.wxy ^ vec3<u32>(4294967295u, u_input.d.x, u_input.d.x), ~vec3<u32>(18568u, 13655u, arg_1.x)), u_input.c) >= ~(~arg_1.x | ~4294967295u), -(vec3<i32>(max(-13671i, 42986i), _wgslsmith_add_i32(67411i, var_2.x), var_2.x << (57375u % 32u)) | ~vec3<i32>(-1i, -2147483647i, -22789i)));
    var var_4 = func_2(arg_0, vec4<bool>(var_3.c, false, !var_3.c, true), all(func_1()), countOneBits(-_wgslsmith_sub_vec3_i32(~vec3<i32>(5037i, var_2.x, -2147483647i), var_3.d.wwz)));
    return func_2(select(_wgslsmith_sub_vec2_i32(vec2<i32>(-var_2.x, abs(1i)), -max(vec2<i32>(-9744i, global0[_wgslsmith_index_u32(1u, 26u)]), vec2<i32>(-20928i, 1i))), vec2<i32>(-var_2.x, 0i), _wgslsmith_dot_vec3_i32(abs(var_3.e), _wgslsmith_div_vec3_i32(var_4.e, var_4.e)) >= 32699i), !select(vec4<bool>(false, var_4.c || var_1, true & var_4.c, var_4.c), select(select(arg_2, arg_2, vec4<bool>(false, arg_2.x, false, false)), select(arg_2, vec4<bool>(true, false, true, false), arg_2), func_1()), !arg_2), var_1, vec3<i32>(0i, _wgslsmith_sub_i32(var_3.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, global0[_wgslsmith_index_u32(1u, 26u)], 41922i), vec4<i32>(-9494i, arg_3, u_input.b.x, global0[_wgslsmith_index_u32(arg_1.x, 26u)]) << (vec4<u32>(arg_1.x, arg_1.x, 11587u, 1u) % vec4<u32>(32u)))), arg_3)).d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(4294967295u << (u_input.a.x % 32u), ~u_input.a.x) >> (~57243u % 32u);
    var var_1 = func_4(u_input.b, ~abs(firstTrailingBit(u_input.a)), func_1(), -u_input.b.x) > ((u_input.b.x & global0[_wgslsmith_index_u32(u_input.a.x, 26u)]) >> (_wgslsmith_dot_vec3_u32((vec3<u32>(u_input.c.x, 21390u, u_input.d.x) >> (u_input.a.wwz % vec3<u32>(32u))) | max(u_input.c, u_input.a.xwy), firstLeadingBit(~u_input.a.zxw)) % 32u));
    var var_2 = u_input.d.x;
    global0 = array<i32, 26>();
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(395f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_f32(-478f - -270f));
    var var_4 = select(u_input.b, _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(~(-u_input.b), u_input.b), vec2<i32>(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_div_i32(u_input.b.x, -25618i)), u_input.b.x)), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_4.x, u_input.b.x, global0[_wgslsmith_index_u32(~u_input.d.x, 26u)]), _wgslsmith_clamp_vec2_u32(u_input.c.yx, u_input.a.xy, firstLeadingBit(~(~vec2<u32>(4294967295u, 4294967295u)))));
}

