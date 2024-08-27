struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: i32,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(47726u, 24560u, 0u, 1u), vec4<u32>(86822u, 69021u, 2482u, 11587u), vec4<u32>(0u, 14937u, 2758u, 1u), vec4<u32>(15082u, 63347u, 53853u, 0u), vec4<u32>(2279u, 0u, 4294967295u, 0u), vec4<u32>(30788u, 35282u, 1u, 4294967295u), vec4<u32>(0u, 16686u, 8290u, 57298u));

var<private> global1: Struct_1 = Struct_1(-2338f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: vec4<bool>) -> f32 {
    global0 = array<vec4<u32>, 7>();
    var var_0 = select(vec2<bool>(true, arg_1.a.d), !arg_3.wz, true);
    var_0 = select(select(!vec2<bool>(var_0.x, true), !arg_1.d, !(!arg_1.a.d || arg_3.x)), vec2<bool>(var_0.x, (arg_3.x != var_0.x) & true), true);
    var var_1 = Struct_2(arg_1.a.a, arg_1.a.b, arg_2.xz, select(any(select(!arg_3, arg_3, select(vec4<bool>(arg_1.a.d, arg_1.d.x, var_0.x, false), vec4<bool>(false, arg_3.x, true, true), false))), false, !any(select(arg_3.xxz, vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, true, false)))));
    var_1 = Struct_2(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i & u_input.b, var_1.a, -2147483647i, ~(-2147483647i)), vec4<i32>(-1i) * -vec4<i32>(13147i, 2147483647i, -54608i, u_input.b)), _wgslsmith_sub_i32(2147483647i, u_input.b)), var_1.b, ~(~var_1.c), any(select(select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(arg_1.a.d, true, arg_1.a.d, true), true || arg_1.a.d), select(arg_3, vec4<bool>(true, true, arg_1.d.x, arg_1.d.x), all(arg_3)), select(vec4<bool>(var_1.d, var_1.d, false, true), select(arg_3, vec4<bool>(var_1.d, arg_1.a.d, arg_3.x, arg_1.d.x), arg_1.a.d), var_1.d))));
    return _wgslsmith_f_op_f32(-1260f * -378f);
}

fn func_2(arg_0: u32) -> i32 {
    global0 = array<vec4<u32>, 7>();
    global0 = array<vec4<u32>, 7>();
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(step(-1706f, 198f)), Struct_4(Struct_2(-7479i, vec2<i32>(-22217i, -2147483647i), u_input.a.zx, false), vec3<f32>(-116f, 1440f, global1.a), u_input.b, vec2<bool>(false, false), global1.a), ~vec3<u32>(24375u, 1u, 4294967295u), vec4<bool>(false, true, false, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1839f + 1740f))))));
    global1 = Struct_1(1722f);
    var var_0 = Struct_2(u_input.b, select(_wgslsmith_clamp_vec2_i32(-(vec2<i32>(-60248i, u_input.b) >> (vec2<u32>(u_input.a.x, arg_0) % vec2<u32>(32u))), reverseBits(vec2<i32>(u_input.b, -8170i)) ^ select(vec2<i32>(u_input.b, 54915i), vec2<i32>(u_input.b, u_input.b), false), abs(~vec2<i32>(47829i, 58124i))), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 2147483647i) & vec2<i32>(u_input.b, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, 0i))), firstTrailingBit(vec2<i32>(40649i, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -946f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(762f)) + _wgslsmith_f_op_f32(f32(-1f) * -282f))), u_input.a.yy, any(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), false))));
    return i32(-1i) * -abs((31984i >> (u_input.a.x % 32u)) << (~22133u % 32u));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec4<u32>) -> u32 {
    var var_0 = arg_1.b.b;
    var var_1 = arg_1;
    var var_2 = arg_1;
    var var_3 = vec3<f32>(global1.a, global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a))) * _wgslsmith_f_op_f32(-1314f * _wgslsmith_f_op_f32(global1.a - global1.a))) * 892f));
    var var_4 = true;
    return 1u;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(u_input.b ^ u_input.b, -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2499i, 2147483647i, -1520i), ~vec4<i32>(5209i, u_input.b, u_input.b, -5099i)), 1i), ~u_input.a.yz, !(!all(vec2<bool>(true, true))));
    var var_1 = vec2<i32>(u_input.b, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, -2147483647i, u_input.b, var_0.b.x), ~abs(vec4<i32>(var_0.b.x, u_input.b, 0i, -10604i)))) ^ vec2<i32>(-(~(-var_0.a)), -var_0.b.x);
    var var_2 = firstTrailingBit(func_4(func_2(0u) ^ u_input.b, Struct_3(~1i, Struct_2(1i, ~vec2<i32>(0i, var_0.b.x), var_0.c, var_0.d), vec3<bool>(any(vec4<bool>(var_0.d, var_0.d, false, false)), false, any(vec2<bool>(var_0.d, var_0.d)))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 16337u, u_input.a.x) | u_input.a, _wgslsmith_add_vec4_u32(min(vec4<u32>(0u, 0u, var_0.c.x, 67241u), global0[_wgslsmith_index_u32(60577u, 7u)]), global0[_wgslsmith_index_u32(var_0.c.x | u_input.a.x, 7u)]))));
    var var_3 = 605f;
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.a, global1.a, global1.a)))))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.a, _wgslsmith_f_op_f32(-global1.a), -333f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2474f, -762f, 1082f), vec3<f32>(global1.a, -1970f, -1131f), vec3<bool>(var_0.d, false, var_0.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-742f, global1.a, global1.a)), select(vec3<bool>(true, var_0.d, var_0.d), vec3<bool>(true, var_0.d, var_0.d), vec3<bool>(true, var_0.d, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1641f, global1.a, global1.a))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(549f, global1.a, 1378f)))), true)));
    return Struct_2(-9187i, ~_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.b, -32736i), var_0.b), u_input.a.xw, true);
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> Struct_4 {
    let var_0 = vec4<u32>(~_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1.b.c.x, ~u_input.a.x), arg_1.b.c.x), ~1u ^ reverseBits(u_input.a.x), _wgslsmith_sub_u32(~arg_1.b.c.x, u_input.a.x) << (u_input.a.x % 32u), firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.c.x, 1u, arg_1.b.c.x, arg_1.b.c.x), u_input.a) << (u_input.a.x % 32u)));
    global0 = array<vec4<u32>, 7>();
    let var_1 = ~(~vec4<u32>(~_wgslsmith_mod_u32(u_input.a.x, 6483u), abs(~4294967295u), _wgslsmith_sub_u32(firstTrailingBit(4294967295u), _wgslsmith_mod_u32(arg_1.b.c.x, 87545u)), _wgslsmith_add_u32(abs(var_0.x), _wgslsmith_add_u32(var_0.x, 5789u))));
    let var_2 = Struct_4(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(445f, 763f, 1245f) - vec3<f32>(153f, global1.a, 786f)) * vec3<f32>(global1.a, -672f, 914f)))), ~min(2147483647i, arg_0), arg_1.c.yz, 520f);
    let var_3 = Struct_1(global1.a);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(global1.a));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = func_5(u_input.b, Struct_3(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), -vec2<i32>(-75724i, u_input.b)), -12962i), func_1(), select(vec3<bool>(all(vec3<bool>(true, true, true)), true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.c, ~(~(~var_2.a.c.x)));
}

