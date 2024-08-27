struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23>;

var<private> global1: vec4<f32> = vec4<f32>(177f, -965f, 1410f, -100f);

var<private> global2: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true));

var<private> global3: Struct_1;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> vec4<f32> {
    global2 = array<vec3<bool>, 18>();
    let var_0 = global3.d & false;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(538f, -454f, global1.x, global3.b) - vec4<f32>(global1.x, global3.b, 1000f, -2194f)) - _wgslsmith_div_vec4_f32(vec4<f32>(global3.b, -751f, -231f, -592f), vec4<f32>(-642f, global3.b, global3.b, global1.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-862f, 2235f, 861f, global1.x))))))));
    return vec4<f32>(global1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1000f, global3.b)))))), -1994f, true)), 1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)), 1000f)));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec4<f32> {
    global3 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_clamp_u32(64410u, global3.c, arg_0), 1u, ~_wgslsmith_mult_u32(global3.c, global3.c)), reverseBits(arg_1.b.a)), global3.b, max(_wgslsmith_clamp_u32(firstLeadingBit(max(22310u, arg_0)), _wgslsmith_add_u32(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.b.c, 0u, arg_0), vec4<u32>(108204u, u_input.d.x, arg_1.b.c, 34432u))), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.a.x, 1u, global3.c, arg_1.b.a.x) << (vec4<u32>(4294967295u, 75558u, global3.a.x, 41132u) % vec4<u32>(32u)), ~vec4<u32>(arg_1.b.c, 1u, arg_1.b.c, 37992u))), _wgslsmith_mult_u32(~(~15939u), 7851u)), false & (u_input.a.x > global3.e), global3.e);
    let var_0 = select(select(vec4<bool>(true, any(vec2<bool>(true, true)), all(!vec4<bool>(global3.d, arg_1.b.d, false, false)), all(global2[_wgslsmith_index_u32(global3.a.x & 67020u, 18u)])), select(select(vec4<bool>(arg_1.b.d, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(global3.d, global3.d, false, global3.d)), !vec4<bool>(global3.d, arg_1.b.d, false, arg_1.b.d), select(vec4<bool>(global3.d, arg_1.b.d, arg_1.b.d, global3.d), !vec4<bool>(false, false, true, global3.d), !vec4<bool>(true, global3.d, global3.d, false))), all(select(vec2<bool>(true, arg_1.b.d), select(vec2<bool>(true, global3.d), vec2<bool>(false, arg_1.b.d), vec2<bool>(arg_1.b.d, false)), !vec2<bool>(arg_1.b.d, arg_1.b.d)))), vec4<bool>(any(!global2[_wgslsmith_index_u32(~4294967295u, 18u)]), false, arg_1.b.d, false), !select(select(select(vec4<bool>(false, arg_1.b.d, global3.d, false), vec4<bool>(false, global3.d, false, arg_1.b.d), global3.d), !vec4<bool>(true, arg_1.b.d, arg_1.b.d, global3.d), vec4<bool>(global3.d, arg_1.b.d, global3.d, arg_1.b.d)), vec4<bool>(arg_0 != 61864u, global3.d, true, arg_1.b.d && arg_1.b.d), global3.d));
    let var_1 = Struct_3(u_input.c.x, arg_1.b);
    global2 = array<vec3<bool>, 18>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-350f, 341f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), arg_1.b.b));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> u32 {
    global2 = array<vec3<bool>, 18>();
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, global3.e >> (4294967295u % 32u)), -vec2<i32>(abs(u_input.c.x) ^ global3.e, -u_input.c.x), _wgslsmith_mult_vec2_i32(-u_input.a.xw, vec2<i32>(-22447i, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.e, -19375i, -1i), vec3<i32>(u_input.a.x, global3.e, -2147483647i)) << (_wgslsmith_sub_u32(1u, u_input.b) % 32u))));
    var var_1 = Struct_2(70128u >= _wgslsmith_sub_u32(~4294967295u, ~(~u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -832f, global1.x, global3.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(global3.c, Struct_3(-8709i, Struct_1(vec3<u32>(1u, arg_0, 4294967295u), 2090f, global3.c, global3.d, global3.e)))), _wgslsmith_f_op_vec4_f32(func_1(46726i, vec4<i32>(-32777i, -53849i, -1i, 1i)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(~14026u, Struct_3(-6934i, Struct_1(u_input.d, global3.b, u_input.d.x, true, -13749i)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1000f, 1000f, -780f) * vec4<f32>(global3.b, 372f, global1.x, -1383f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1240f, global3.b, -282f, global3.b))))), _wgslsmith_f_op_f32(-global1.x), firstLeadingBit(_wgslsmith_sub_u32(countOneBits(0u ^ u_input.d.x), 0u)));
    let var_2 = vec3<bool>(!(!(!(false || arg_1.x))), !all(select(arg_1, arg_1, !vec2<bool>(false, global3.d))), var_1.a & (true && global3.d));
    var_1 = Struct_2(!var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 1243f, var_1.b.x, global3.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b)), !select(vec4<bool>(var_1.a, false, var_1.a, false), vec4<bool>(var_1.a, var_1.a, var_2.x, var_2.x), false)))), global3.b, ~global3.c);
    return u_input.b;
}

fn func_4(arg_0: vec4<u32>) -> Struct_3 {
    global2 = array<vec3<bool>, 18>();
    var var_0 = 15908i;
    var var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(-vec3<i32>(u_input.c.x, 28451i, 1i) & countOneBits(u_input.a.wxw)), -vec3<i32>(_wgslsmith_mult_i32(0i, -8676i), 25473i, _wgslsmith_dot_vec2_i32(vec2<i32>(-33294i, -35775i), vec2<i32>(u_input.c.x, -22760i)))), vec3<i32>(-1i) * -(~vec3<i32>(global3.e, u_input.c.x, global3.e)));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b))), _wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.b)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1495f + 550f), global3.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) + 524f)), 679f);
    var_1 = vec3<i32>(var_1.x, max(max(-26402i, var_1.x), 1i), u_input.a.x << (0u % 32u));
    return Struct_3(_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(u_input.c.zxx, max(vec3<i32>(2147483647i, -25146i, var_1.x), vec3<i32>(0i, var_1.x, u_input.c.x)))), firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(1i, var_1.x, 2147483647i, -1i)), u_input.c.x, reverseBits(u_input.a.x)))), Struct_1(arg_0.zwx, _wgslsmith_div_f32(global3.b, 892f), _wgslsmith_mod_u32(arg_0.x, firstLeadingBit(0u >> (u_input.d.x % 32u))), !(!select(false, global3.d, true)), ~(-91617i | select(global3.e, -2147483647i, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 18>();
    var var_0 = Struct_3((i32(-1i) * -2147483647i) >> (~(~(~u_input.d.x)) % 32u), Struct_1(select(vec3<u32>(global3.a.x, global3.c, 4294967295u) << (vec3<u32>(u_input.d.x, global3.a.x, 38864u) % vec3<u32>(32u)), vec3<u32>(4294967295u, u_input.b, global3.a.x), global3.d) | vec3<u32>(1u, 38498u, 14563u), global1.x, (_wgslsmith_add_u32(global3.c, u_input.b) >> ((4294967295u ^ global3.c) % 32u)) | _wgslsmith_mod_u32(0u, 104702u), _wgslsmith_dot_vec2_u32(~u_input.d.yx, ~vec2<u32>(u_input.b, global3.a.x)) >= global3.a.x, global3.e));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(2147483647i, u_input.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 480f, var_0.b.b, global3.b)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b, 1421f, -185f, 365f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1940f, -915f, -246f, 304f), vec4<f32>(-1121f, global1.x, -1143f, 2597f)))) - vec4<f32>(-1292f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1034f)), global1.x, 305f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, 599f, 502f, global1.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-375f, -363f, global3.b, global3.b) - vec4<f32>(899f, var_0.b.b, global1.x, -1006f)))), vec4<f32>(var_0.b.b, global1.x, _wgslsmith_div_f32(-257f, var_0.b.b), global1.x)));
    var var_2 = func_4(~vec4<u32>(func_2(_wgslsmith_add_u32(1u, 1u), select(vec2<bool>(false, global3.d), vec2<bool>(var_0.b.d, true), vec2<bool>(global3.d, true))), 1u, (0u ^ var_0.b.a.x) >> (1u % 32u), ~_wgslsmith_sub_u32(global3.a.x, var_0.b.a.x)));
    var var_3 = _wgslsmith_div_vec3_i32(~_wgslsmith_clamp_vec3_i32(~u_input.c.zyy, -u_input.c.xyx << (vec3<u32>(1u, var_2.b.a.x, global3.a.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b.e, 46277i, 34672i), ~vec3<i32>(u_input.a.x, var_0.b.e, -2147483647i))), vec3<i32>(u_input.a.x, var_2.b.e, 18812i ^ select(-6952i, global3.e, !global3.d)));
    var var_4 = !vec3<bool>(any(!(!vec4<bool>(var_0.b.d, false, var_0.b.d, true))), true, all(!(!vec4<bool>(var_2.b.d, true, var_0.b.d, global3.d))));
    let x = u_input.a;
    s_output = StorageBuffer(~(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_2.b.a, var_2.b.a), 23u)] >> ((var_0.b.a.yx ^ ~vec2<u32>(31188u, 0u)) % vec2<u32>(32u))));
}

