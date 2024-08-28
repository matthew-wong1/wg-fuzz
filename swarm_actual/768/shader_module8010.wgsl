struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<i32, 26>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> f32 {
    let var_0 = 389i == _wgslsmith_dot_vec2_i32(reverseBits(~(-vec2<i32>(arg_0.x, -35918i))), arg_0.zy);
    let var_1 = var_0;
    var var_2 = global1[_wgslsmith_index_u32(0u, 7u)];
    var var_3 = Struct_2(global1[_wgslsmith_index_u32(u_input.d.x, 7u)]);
    global0 = !(_wgslsmith_f_op_f32(-arg_1) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -249f)));
    return _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-arg_1));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global2 = array<i32, 26>();
    global0 = (true && arg_2.a.c.x) != true;
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-177f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1586f + arg_0) + -145f), _wgslsmith_f_op_f32(-arg_0))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-226f - -286f) + arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-928f - -1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(global2[_wgslsmith_index_u32(42882u, 26u)], global2[_wgslsmith_index_u32(arg_1.a.b.x, 26u)], 48603i, global2[_wgslsmith_index_u32(4294967295u, 26u)]), 2874f))))))));
    let var_1 = arg_1;
    global2 = array<i32, 26>();
    return _wgslsmith_mult_u32(0u, arg_2.a.d);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(_wgslsmith_mod_u32(u_input.e.x, u_input.b), reverseBits(u_input.b), _wgslsmith_div_u32(u_input.b, 4294967295u), _wgslsmith_clamp_u32(arg_1.x, arg_1.x, u_input.a))), vec4<u32>(_wgslsmith_add_u32(~37053u, countOneBits(_wgslsmith_mult_u32(arg_1.x, u_input.a))), ~((u_input.d.x | 17027u) ^ _wgslsmith_mult_u32(1u, 5351u)), ~(~_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(arg_1.x, 0u, arg_1.x, arg_1.x))), ~42511u));
    let var_1 = firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(func_4(_wgslsmith_f_op_f32(func_3(vec4<i32>(4789i, 7712i, 53646i, u_input.c.x), -1187f)), Struct_2(Struct_1(40812u, vec4<u32>(4294967295u, u_input.a, u_input.e.x, 72898u), vec2<bool>(true, true), arg_1.x)), Struct_2(global1[_wgslsmith_index_u32(arg_1.x, 7u)])), _wgslsmith_add_u32(1u, 0u), ~1u, func_4(_wgslsmith_f_op_f32(step(414f, 2192f)), Struct_2(global1[_wgslsmith_index_u32(arg_1.x, 7u)]), Struct_2(Struct_1(4294967295u, vec4<u32>(0u, var_0, var_0, arg_1.x), vec2<bool>(arg_0, false), arg_1.x)))), select(select(u_input.e, vec4<u32>(0u, var_0, arg_1.x, 1u), vec4<bool>(arg_0, arg_0, true, true)), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 0u), all(vec2<bool>(true, false))) | ~u_input.e));
    global2 = array<i32, 26>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -724f)) + -186f);
    global2 = array<i32, 26>();
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(sign(-738f)))), Struct_2(global1[_wgslsmith_index_u32(26937u, 7u)]), Struct_2(Struct_1(~select(u_input.a, arg_1.x, arg_0), vec4<u32>(var_0 & u_input.d.x, 92686u, var_1.x, var_0 << (43034u % 32u)), !vec2<bool>(true, arg_0), (var_1.x ^ u_input.d.x) | ~var_0)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = arg_3.a.b.zwx;
    var var_1 = Struct_2(Struct_1(48948u, (~vec4<u32>(u_input.b, u_input.b, u_input.b, 15330u) & ~u_input.e) | u_input.e, !select(arg_3.a.c, !vec2<bool>(arg_1, arg_0), arg_3.a.c.x), 4294967295u));
    let var_2 = ~firstTrailingBit(arg_2) << (~_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, var_0.x << (u_input.e.x % 32u)), func_2(true, vec3<u32>(7547u, 4294967295u, arg_2))) % 32u);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-883f * -809f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1727f + 585f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(970f, -264f)))))));
    let var_4 = arg_3;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-136f, 362f) * vec2<f32>(-583f, 180f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-325f, 918f) - vec2<f32>(590f, 309f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-783f, 375f)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2152f) + _wgslsmith_f_op_f32(915f + -801f)), _wgslsmith_f_op_f32(trunc(-811f))))), select(select(vec2<bool>(any(arg_3.a.c), false), !(!var_4.a.c), !var_1.a.c.x), arg_3.a.c, vec2<bool>(true, !arg_3.a.c.x & all(vec4<bool>(false, arg_0, true, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e.x;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(488f * _wgslsmith_f_op_f32(ceil(237f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -149f))));
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(false, true && all(vec4<bool>(true, true, true, true)), ~(_wgslsmith_dot_vec3_u32(u_input.d, u_input.e.wyw) << (~48361u % 32u)), Struct_2(Struct_1(~4294967295u, vec4<u32>(u_input.b, u_input.e.x, u_input.d.x, 9314u), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), 13352u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1518f, _wgslsmith_f_op_f32(f32(-1f) * -1509f))))), all(vec2<bool>(u_input.b <= ~u_input.e.x, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false))))));
    let var_2 = global1[_wgslsmith_index_u32(~0u, 7u)];
    let var_3 = min(1i, -_wgslsmith_mod_i32(-2147483647i, max(549i, 46290i)));
    global0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(1u, 26u)], var_3), vec3<i32>(~var_3, u_input.c.x, global2[_wgslsmith_index_u32(13432u, 26u)] & 1i)), ~(~(~u_input.c))), -705f, reverseBits(firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.zz, vec2<u32>(1u, u_input.d.x)), firstLeadingBit(vec2<u32>(4294967295u, u_input.d.x))))), vec4<u32>(var_2.b.x, 17636u, select(9449u, 68669u, select(var_2.c.x, var_1.x == 1267f, false)), _wgslsmith_sub_u32(max(28568u, u_input.d.x | var_2.b.x), 26853u)));
}

