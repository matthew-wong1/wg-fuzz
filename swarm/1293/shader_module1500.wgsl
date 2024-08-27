struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<u32>(1u, 1u, 1u, 46489u), vec3<i32>(38992i, 2147483647i, 1i), vec3<bool>(true, true, false));

var<private> global1: Struct_5;

var<private> global2: array<vec3<u32>, 2>;

var<private> global3: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(1u, 26958u));

var<private> global4: array<f32, 18>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec3<u32>) -> f32 {
    let var_0 = Struct_3(vec4<bool>(arg_0, true, false, true), arg_0, Struct_2(vec2<i32>(global0.b.x, _wgslsmith_dot_vec2_i32(countOneBits(global0.b.xx), abs(vec2<i32>(u_input.d.x, u_input.c)))), _wgslsmith_f_op_f32(f32(-1f) * -443f), _wgslsmith_div_vec3_u32(global0.a.yzy, _wgslsmith_div_vec3_u32(global2[_wgslsmith_index_u32(7106u, 2u)], max(u_input.a, global2[_wgslsmith_index_u32(55451u, 2u)]))), vec2<u32>(~(~arg_1.x), ~(~18560u)), false), 102f);
    global4 = array<f32, 18>();
    let var_1 = 1f;
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.c.b, var_1), _wgslsmith_f_op_f32(ceil(969f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_1))))))));
    let var_3 = vec3<bool>(!((firstTrailingBit(27351i) < _wgslsmith_mod_i32(14575i, -1i)) & !all(global0.c.xz)), false, any(select(vec4<bool>(var_0.c.e || true, false, true, true), select(vec4<bool>(var_0.b, var_0.c.e, var_0.b, global0.c.x), !vec4<bool>(false, true, true, global0.c.x), false), false)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - -840f) + 599f));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: i32) -> vec3<bool> {
    global4 = array<f32, 18>();
    global1 = Struct_5(_wgslsmith_f_op_f32(func_3(global0.c.x, global0.a.ywy)));
    global1 = Struct_5(-273f);
    let var_0 = Struct_5(global1.a);
    var var_1 = Struct_5(-812f);
    return select(vec3<bool>(false, !global0.c.x, global0.c.x), select(!vec3<bool>(true, global0.c.x, global0.c.x), !select(select(global0.c, global0.c, false), global0.c, !global0.c.x), true), select(vec3<bool>(_wgslsmith_f_op_f32(arg_1 * -1219f) <= _wgslsmith_f_op_f32(max(-2159f, 142f)), true && any(global0.c), !all(global0.c.yy)), !global0.c, vec3<bool>(global0.c.x, global0.b.x > min(u_input.d.x, global0.b.x), true)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> Struct_5 {
    global0 = Struct_4(u_input.e, u_input.d.yzw, select(global0.c, !global0.c, global0.c.x));
    var var_0 = true;
    global0 = Struct_4(~(~vec4<u32>(arg_2.x & arg_2.x, _wgslsmith_clamp_u32(u_input.e.x, global0.a.x, 4294967295u), select(0u, 28994u, global0.c.x), _wgslsmith_div_u32(u_input.e.x, global0.a.x))), vec3<i32>(-firstLeadingBit(u_input.c), u_input.c, 1i), func_2(4294967295u, -2350f, global0.b.x));
    let var_1 = ~global0.a;
    let var_2 = _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_2.x, var_1.x), min(~select(var_1.x, firstLeadingBit(86u), global0.c.x), _wgslsmith_dot_vec3_u32(abs(global0.a.yxw), vec3<u32>(firstLeadingBit(4294967295u), 22853u, 9891u))));
    return Struct_5(-684f);
}

fn func_4(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: Struct_5) -> vec3<u32> {
    var var_0 = min(4294967295u, ~global0.a.x);
    global1 = Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_0.a, -286f, all(!vec4<bool>(true, global0.c.x, false, global0.c.x)))))));
    global0 = Struct_4(u_input.e, abs(~u_input.d.yww), vec3<bool>(true, func_2(u_input.e.x, _wgslsmith_f_op_f32(ceil(1794f)), 39303i).x, (global0.c.x & false) || func_2(~67610u, -985f, 1i).x));
    let var_1 = global4[_wgslsmith_index_u32(~(~(~_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, global0.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 1u), global0.a.yw)))), 18u)];
    let var_2 = vec4<bool>(true, !global0.c.x, global0.c.x, true);
    return ~vec3<u32>(reverseBits(~20575u), select(select(abs(global0.a.x), ~u_input.b.x, func_2(9651u, 606f, 17438i).x), u_input.b.x, false), global0.a.x);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<u32>) -> bool {
    global4 = array<f32, 18>();
    global3 = array<vec2<u32>, 1>();
    var var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(reverseBits(u_input.b.zx), ~_wgslsmith_sub_vec2_u32(abs(u_input.b.zw), func_4(Struct_5(1996f), u_input.d.zy, Struct_5(-519f), Struct_5(966f)).yz)), ~(~firstLeadingBit(1u << (global0.a.x % 32u))), 86186u);
    var var_1 = Struct_2(~firstTrailingBit(u_input.d.zw), global1.a, arg_1, arg_0, !global0.c.x);
    global1 = Struct_5(_wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(-global1.a))));
    return global0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(global0.a.x, 18u)], -670f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 18u)], -676f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(525f, _wgslsmith_f_op_f32(1213f + var_0.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-134f, global4[_wgslsmith_index_u32(24479u, 18u)]), vec2<f32>(-1000f, global1.a), vec2<bool>(global0.c.x, true)))))));
    var var_2 = func_5(global0.a.ww, func_4(func_1(-12292i, false, vec3<u32>(1u, _wgslsmith_mult_u32(1u, 18288u), 2853u)), _wgslsmith_clamp_vec2_i32(countOneBits(countOneBits(global0.b.yz)), ~vec2<i32>(u_input.c, -46569i), global0.b.xx), func_1(~_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(global0.b.x, u_input.c, -2147483647i, 44221i)), global0.c.x, ~u_input.e.yww), func_1(max(u_input.d.x, countOneBits(0i)), !(-337f > var_0.x), reverseBits(select(vec3<u32>(global0.a.x, global0.a.x, 4294967295u), global2[_wgslsmith_index_u32(global0.a.x, 2u)], global0.c)))));
    let var_3 = Struct_1(global1.a, vec2<i32>(u_input.d.x, abs(u_input.c)));
    let var_4 = vec4<bool>(all(vec4<bool>(!global0.c.x, all(global0.c), !func_2(0u, global4[_wgslsmith_index_u32(1u, 18u)], -22920i).x, global0.c.x)), !(func_2(~global0.a.x, var_3.a, -32761i).x | global0.c.x), func_5(vec2<u32>(global0.a.x, u_input.a.x), global0.a.zzz), all(global0.c.zy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1309f, 188f, global4[_wgslsmith_index_u32(2253u, 18u)], -1000f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1686f, global4[_wgslsmith_index_u32(u_input.b.x, 18u)], var_3.a, var_1.x)))), vec4<f32>(var_0.x, func_1(global0.b.x, false, vec3<u32>(55257u, 0u, 4294967295u)).a, _wgslsmith_f_op_f32(func_3(global0.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 2u)])), _wgslsmith_f_op_f32(max(1797f, 1119f)))), vec4<f32>(var_3.a, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(1000f + 458f)), func_1(_wgslsmith_clamp_i32(2147483647i, var_3.b.x, var_3.b.x), all(vec3<bool>(var_4.x, var_4.x, false)), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.a.x, u_input.e.x, global0.a.x), global0.a.wyw)).a)), var_3.b);
}

