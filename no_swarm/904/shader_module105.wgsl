struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10>;

var<private> global1: array<vec4<f32>, 25>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: vec3<i32> = vec3<i32>(-29454i, 0i, i32(-2147483648));

var<private> global4: Struct_3 = Struct_3(vec3<f32>(712f, -1085f, 1204f), Struct_1(vec2<f32>(501f, 1153f), 20926u, vec4<u32>(0u, 4294967295u, 4294967295u, 59016u), vec2<f32>(1000f, 2216f)), 1631f, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> bool {
    global1 = array<vec4<f32>, 25>();
    global1 = array<vec4<f32>, 25>();
    global0 = array<vec2<u32>, 10>();
    global1 = array<vec4<f32>, 25>();
    let var_0 = vec4<bool>(global4.d, select(global4.d, any(select(!vec2<bool>(global4.d, global2.x), select(vec2<bool>(false, false), vec2<bool>(global4.d, global4.d), vec2<bool>(true, global2.x)), select(global4.d, true, global4.d))), global2.x), true, !global2.x);
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = Struct_2(global4.b, global4.b, _wgslsmith_div_f32(1496f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c - arg_1.a.x))), u_input.c.zw, vec2<bool>(all(arg_0.xz) || !select(false, true, true), true));
    global0 = array<vec2<u32>, 10>();
    var var_1 = !var_0.e.x;
    global0 = array<vec2<u32>, 10>();
    var var_2 = _wgslsmith_f_op_vec3_f32(global4.a + _wgslsmith_f_op_vec3_f32(floor(global4.a)));
    return arg_1.c;
}

fn func_2(arg_0: f32, arg_1: f32) -> vec3<i32> {
    var var_0 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 906f) - _wgslsmith_div_vec2_f32(global4.b.d, global4.a.yz)), _wgslsmith_add_u32(_wgslsmith_sub_u32(global4.b.b, global4.b.c.x), global4.b.b & 63987u), ~(~vec4<u32>(u_input.e, u_input.e, u_input.a.x, u_input.a.x)), global4.a.zz), Struct_1(_wgslsmith_div_vec2_f32(global4.a.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c, -1569f))), u_input.d.x, countOneBits(select(global4.b.c, vec4<u32>(0u, global4.b.b, 4294967295u, 70018u), global2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c, global4.b.d.x)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1514f, global4.a.x))))), -364f, u_input.c.xw, !vec2<bool>(true, !global2.x)), Struct_4(u_input.c.x), global4.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-459f - global4.b.a.x), 1055f, _wgslsmith_div_f32(123f, arg_0), _wgslsmith_f_op_f32(-global4.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global1[_wgslsmith_index_u32(global4.b.c.x, 25u)])) - global1[_wgslsmith_index_u32(1u, 25u)])) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(4294967295u, 25u)] * global1[_wgslsmith_index_u32(var_0.c.b, 25u)]))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(reverseBits(1u), 25u)])), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(0u, 25u)] + vec4<f32>(arg_0, global4.b.d.x, 218f, 677f)))))))));
    let var_2 = func_4(select(!(!vec4<bool>(false, var_0.a.e.x, global2.x, false)), vec4<bool>(!global4.d, global2.x, global4.d | func_3(var_1.www, vec4<f32>(arg_1, arg_0, arg_1, var_0.c.d.x), Struct_1(var_0.c.a, 45642u, vec4<u32>(u_input.a.x, u_input.d.x, 1u, 43u), vec2<f32>(-2359f, arg_0)), u_input.c), true), global2.x & true), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.c.d.x, var_0.c.a.x))) - _wgslsmith_f_op_vec2_f32(global4.a.xy - vec2<f32>(-393f, 1000f))) - vec2<f32>(793f, _wgslsmith_div_f32(var_0.a.b.d.x, 742f))), ~1u, min(vec4<u32>(min(global4.b.c.x, 1u), firstTrailingBit(u_input.d.x), reverseBits(84172u), abs(0u)), global4.b.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(773f, arg_0)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.c.d))))));
    let var_3 = ~var_2.zx;
    global0 = array<vec2<u32>, 10>();
    return u_input.c.wyw;
}

fn func_1() -> bool {
    var var_0 = ~(vec3<i32>(-2147483647i, -global3.x, -1i) | u_input.c.wzy);
    var var_1 = u_input.c;
    let var_2 = !vec3<bool>(global4.d, global2.x, ~(-12445i) > (37534i | global3.x));
    var var_3 = ~func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1760f, 1350f)) + global4.b.d.x)), 655f);
    let var_4 = global4.b.c.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(false, func_1(), global4.d), select(!(!vec3<bool>(false, true, global2.x)), vec3<bool>(global3.x < 28806i, global2.x, !global2.x), true), true);
    global0 = array<vec2<u32>, 10>();
    var var_1 = vec4<u32>(max(35040u, ~(~abs(global4.b.c.x))), 1u, _wgslsmith_clamp_u32(4294967295u >> ((~global4.b.b << (_wgslsmith_dot_vec4_u32(vec4<u32>(global4.b.c.x, u_input.e, global4.b.b, u_input.e), global4.b.c) % 32u)) % 32u), (global4.b.b & ~u_input.a.x) << (4294967295u % 32u), ~(u_input.d.x | 32617u)), _wgslsmith_add_u32(u_input.e, ~6539u));
    global0 = array<vec2<u32>, 10>();
    var var_2 = 1u ^ (func_4(select(select(vec4<bool>(global4.d, global4.d, global2.x, global2.x), vec4<bool>(true, var_0.x, true, false), true), !vec4<bool>(false, false, var_0.x, true), !vec4<bool>(true, var_0.x, global2.x, global4.d)), global4.b).x << (~_wgslsmith_dot_vec4_u32(func_4(vec4<bool>(var_0.x, true, var_0.x, var_0.x), global4.b), global4.b.c) % 32u));
    var var_3 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1730f, 315f))))), ~u_input.e, ~global4.b.c ^ global4.b.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.a.xx * vec2<f32>(global4.c, -1823f)))), global4.b, _wgslsmith_f_op_f32(-1002f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -820f))), func_2(global4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1392f, 693f)))).zz, var_0.yz), Struct_4(-global3.x), global4.b);
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.b.d) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global4.c, var_3.c.a.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(var_3.a.b.d)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.c, var_3.a.b.a.x)))), ~(~u_input.d.x | (var_3.c.c.x << (45588u % 32u))) ^ max(global4.b.c.x & global4.b.c.x, _wgslsmith_mod_u32(var_3.c.b, var_1.x) << ((u_input.a.x ^ 1u) % 32u)), ~(~select(vec4<u32>(var_1.x, u_input.a.x, var_1.x, 28056u) & vec4<u32>(0u, var_1.x, global4.b.b, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, global4.b.c.x, u_input.e, var_1.x), global4.b.c, vec4<u32>(var_3.c.b, 29996u, 24883u, var_3.a.a.b)), vec4<bool>(global4.d, global4.d, false, global4.d))), vec2<f32>(var_3.a.a.d.x, global4.a.x));
    global0 = array<vec2<u32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(~(-2147483647i), reverseBits(11386i), 15251i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f)))), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(-2147483647i, -14045i, 0i, 348i))), -u_input.c), var_3.a.d.x));
}

