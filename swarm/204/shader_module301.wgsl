struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>) -> u32 {
    global0 = array<i32, 21>();
    var var_0 = arg_1;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-230f, 173f) * -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-318f * -255f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(678f)), _wgslsmith_f_op_f32(trunc(360f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-765f + -986f) + 1f)), all(vec2<bool>(true, arg_0.a.x == 1u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(718f, -899f)) * _wgslsmith_f_op_f32(floor(179f))), -1967f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -293f)))));
    let var_2 = vec4<bool>(false, _wgslsmith_clamp_i32(abs(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(47490u, 40583u), 21u)]), 2147483647i, -5844i) >= u_input.b.x, var_0.c.x != (0u <= (66146u | arg_1.a.a.x)), all(arg_1.a.b.zwy));
    var_0 = Struct_2(Struct_1(~u_input.a, select(vec4<bool>(any(arg_1.c), true, !var_0.c.x, !var_0.a.b.x), vec4<bool>(arg_0.b.x | arg_1.c.x, var_0.a.b.x, any(var_0.b.b.wx), any(vec3<bool>(var_2.x, var_0.c.x, arg_0.b.x))), vec4<bool>(true | arg_1.b.b.x, true, var_2.x, true))), var_0.a, vec3<bool>(select(true, var_2.x, any(arg_0.b)), !select(arg_0.b.x && false, var_2.x, var_1.x <= var_1.x), !(true | select(false, var_2.x, arg_0.b.x))));
    return 1u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: f32, arg_3: bool) -> Struct_1 {
    let var_0 = abs(1i);
    return Struct_1(_wgslsmith_add_vec4_u32(u_input.a, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, ~65930u, ~u_input.a.x, func_3(Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x), vec4<bool>(true, false, arg_1.x, false)), Struct_2(Struct_1(vec4<u32>(5621u, 52412u, 51074u, 0u), vec4<bool>(false, arg_1.x, false, arg_1.x)), Struct_1(vec4<u32>(4294967295u, 3209u, 25418u, 4294967295u), vec4<bool>(arg_1.x, true, true, false)), vec3<bool>(arg_1.x, arg_3, arg_1.x)), u_input.a)), ~(~vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, 33791u)))), !select(select(select(vec4<bool>(true, arg_3, true, arg_1.x), vec4<bool>(false, arg_3, arg_3, arg_1.x), vec4<bool>(true, true, true, false)), vec4<bool>(true, arg_3, true, true), true), select(!vec4<bool>(arg_1.x, true, true, true), !vec4<bool>(arg_1.x, arg_3, false, arg_3), u_input.a.x != 0u), vec4<bool>(false, all(vec4<bool>(arg_1.x, arg_3, true, arg_1.x)), select(arg_3, arg_1.x, false), true)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec3<u32>) -> vec4<bool> {
    var var_0 = select(!arg_0.b, arg_0.b, !select(arg_0.b, arg_0.b, arg_0.b.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_2)), arg_2)) + arg_1));
    global0 = array<i32, 21>();
    let var_2 = Struct_3(Struct_2(func_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, var_1, 711f))), !select(var_0.wy, vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true)), arg_2, any(vec2<bool>(var_0.x, false))), Struct_1(~(~vec4<u32>(0u, 4294967295u, 43343u, u_input.c.x)), arg_0.b), var_0.zzz));
    var var_3 = -_wgslsmith_div_i32(~_wgslsmith_mult_i32(0i, ~(-22568i)), (global0[_wgslsmith_index_u32(arg_0.a.x, 21u)] >> (arg_0.a.x % 32u)) ^ _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, -21346i, -592i, u_input.b.x)), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(var_2.a.b.a.x, 21u)], -39845i, 1i)));
    return var_2.a.b.b;
}

fn func_1() -> bool {
    var var_0 = Struct_1(u_input.a, !func_4(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-508f, -373f, 1322f) - vec3<f32>(-1000f, -413f, -1228f)), vec2<bool>(true, true), _wgslsmith_f_op_f32(670f * -101f), select(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -213f)), 400f, _wgslsmith_div_vec3_u32(u_input.a.wxx, u_input.a.zxx)));
    var var_1 = true && any(!vec2<bool>(false, var_0.b.x));
    global0 = array<i32, 21>();
    var var_2 = true;
    var var_3 = all(!vec3<bool>(var_0.b.x || var_0.b.x, all(vec3<bool>(true, var_0.b.x, var_0.b.x)), var_0.b.x & true)) | (_wgslsmith_add_u32(var_0.a.x, u_input.c.x) >= _wgslsmith_clamp_u32(~(~u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a.zww, var_0.a.zzx) | var_0.a.x, var_0.a.x));
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec3<bool>(u_input.c.x != ~(~0u), true, any(vec4<bool>(select(false, false, false), true, func_1(), false))));
    let var_1 = Struct_2(Struct_1(~(~(~vec4<u32>(u_input.c.x, 0u, 58286u, 1u))), vec4<bool>(true && any(vec4<bool>(true, true, var_0, true)), any(vec3<bool>(var_0, var_0, var_0)), var_0 != var_0, var_0)), func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-320f))), _wgslsmith_f_op_f32(f32(-1f) * -1430f), 1249f), !select(!vec2<bool>(var_0, false), vec2<bool>(var_0, true), func_2(vec3<f32>(255f, -439f, 979f), vec2<bool>(var_0, true), 364f, var_0).b.yw), 920f, any(vec2<bool>(true, true))), select(vec3<bool>(all(vec4<bool>(var_0, false, false, false)), false, false), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(414f, 593f, -1003f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(340f, -202f, 1000f)))), !vec2<bool>(var_0, false), _wgslsmith_f_op_f32(min(680f, _wgslsmith_f_op_f32(342f * 924f))), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-491f, -1000f, -2072f) + vec3<f32>(-1082f, -1000f, 206f)), select(vec2<bool>(false, true), vec2<bool>(var_0, true), vec2<bool>(false, var_0)), _wgslsmith_f_op_f32(min(-985f, -670f)), !var_0).b.x).b.wwz, func_4(func_2(vec3<f32>(1311f, -1000f, 249f), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), var_0), 1378f, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -859f)) + -676f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1435f, 554f))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 92028u), u_input.a.xzx))).xyy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -570f)), -644f) - _wgslsmith_f_op_f32(-174f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(829f, -118f))))), var_1.b.a & vec4<u32>(0u, abs(~var_1.b.a.x), ~(var_1.a.a.x | 0u), var_1.b.a.x), 2147483647i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1603f, -1409f, 1132f, -1920f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1386f, 991f, -546f, 1320f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-472f, -530f, -1938f, 405f))))), func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-350f, 1675f, -1825f), vec3<f32>(285f, 691f, -155f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(448f, -448f, -597f) - vec3<f32>(121f, -1045f, 584f)), var_1.c)), select(var_1.b.b.ww, var_1.c.yy, true), 887f, all(vec2<bool>(true, true))).b)));
}

