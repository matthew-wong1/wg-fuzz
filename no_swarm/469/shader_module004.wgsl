struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    global0 = array<bool, 20>();
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-724f - -1471f)))), -(~(u_input.c & u_input.c)) <= 55793i, countOneBits(max(-max(u_input.a.zzx, vec3<i32>(u_input.c, 6037i, 6636i)), -_wgslsmith_sub_vec3_i32(u_input.a.zzy, u_input.a.zzz))));
    var var_1 = any(!select(select(!vec2<bool>(var_0.b, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)]), true), select(select(vec2<bool>(true, true), vec2<bool>(false, global0[_wgslsmith_index_u32(38011u, 20u)]), vec2<bool>(false, true)), vec2<bool>(var_0.b, global0[_wgslsmith_index_u32(u_input.b, 20u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(76760u, 20u)], var_0.b), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], true), global0[_wgslsmith_index_u32(0u, 20u)])), true));
    let var_2 = select(!vec4<bool>(true, all(vec4<bool>(false, false, true, false)), true, any(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(968u, 20u)], var_0.b))), select(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 29148u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 16021u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.b, u_input.b))), 20u)], global0[_wgslsmith_index_u32(~u_input.b >> (~u_input.b % 32u), 20u)], all(vec2<bool>(var_0.b, global0[_wgslsmith_index_u32(83136u, 20u)])), any(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 20u)], true), vec4<bool>(true, true, true, var_0.b), true))), select(select(!vec4<bool>(var_0.b, var_0.b, true, false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b, 20u)], false), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 20u)], false, true, global0[_wgslsmith_index_u32(0u, 20u)]), vec4<bool>(false, var_0.b, true, var_0.b), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], false, var_0.b, global0[_wgslsmith_index_u32(15691u, 20u)]))), select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)], false, true), vec4<bool>(true, var_0.b, true, global0[_wgslsmith_index_u32(u_input.b, 20u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], var_0.b, var_0.b, global0[_wgslsmith_index_u32(u_input.b, 20u)])), select(vec4<bool>(true, var_0.b, var_0.b, global0[_wgslsmith_index_u32(24457u, 20u)]), vec4<bool>(false, true, var_0.b, true), vec4<bool>(false, false, false, var_0.b)), !vec4<bool>(true, var_0.b, false, global0[_wgslsmith_index_u32(0u, 20u)])), all(!vec4<bool>(false, var_0.b, global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(45989u, 20u)]))), select(vec4<bool>(global0[_wgslsmith_index_u32(16150u, 20u)] || var_0.b, global0[_wgslsmith_index_u32(u_input.b, 20u)], false & global0[_wgslsmith_index_u32(6690u, 20u)], 1000f <= var_0.a), select(vec4<bool>(false, global0[_wgslsmith_index_u32(11968u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], false), select(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(u_input.b, 20u)]), vec4<bool>(var_0.b, global0[_wgslsmith_index_u32(31147u, 20u)], var_0.b, true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 20u)], var_0.b, global0[_wgslsmith_index_u32(u_input.b, 20u)])), !vec4<bool>(global0[_wgslsmith_index_u32(46091u, 20u)], global0[_wgslsmith_index_u32(32476u, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)])), vec4<bool>(all(vec3<bool>(var_0.b, var_0.b, false)), global0[_wgslsmith_index_u32(u_input.b, 20u)], var_0.b, true))), !select(select(!vec4<bool>(var_0.b, true, var_0.b, var_0.b), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], true, var_0.b, true), any(vec4<bool>(false, true, false, true))), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 20u)], var_0.b, global0[_wgslsmith_index_u32(u_input.b, 20u)]), vec4<bool>(false, true, true, false), any(vec2<bool>(false, false))), vec4<bool>(true, true, false, select(true, var_0.b, global0[_wgslsmith_index_u32(u_input.b, 20u)]))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), -190f);
    return _wgslsmith_f_op_f32(ceil(-318f));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(func_3())) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.a, arg_2.a)))), any(!select(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 20u)], arg_1), vec2<bool>(false, false), false), !vec2<bool>(arg_0, arg_2.b), select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, false), global0[_wgslsmith_index_u32(28011u, 20u)]))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(30466i, firstLeadingBit(arg_2.c.x)), -u_input.d), -48585i, u_input.a.x));
    global0 = array<bool, 20>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a, var_0.a, -1769f, -1000f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, 899f, arg_2.a, arg_2.a), vec4<f32>(842f, -387f, var_0.a, 340f), false))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, var_0.a, 407f, arg_2.a) * vec4<f32>(553f, 1030f, var_0.a, var_0.a)), vec4<f32>(arg_2.a, arg_2.a, var_0.a, var_0.a))))) + vec4<f32>(arg_2.a, -725f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(361f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a * 129f)))), _wgslsmith_f_op_f32(func_3())));
    let var_2 = -2147483647i;
    global0 = array<bool, 20>();
    return 1u;
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    return min(func_2(true, global0[_wgslsmith_index_u32(~u_input.b, 20u)] & global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, arg_0), 20u)], Struct_1(arg_1.x, 0i < u_input.d, vec3<i32>(2147483647i, -1i, -2147483647i))), arg_0) >> (~_wgslsmith_mult_u32(arg_0, 0u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.b, u_input.b), min(u_input.a, (u_input.a << (vec4<u32>(33357u, u_input.b, u_input.b, 4294967295u) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), vec4<u32>(0u, 0u, 17633u, u_input.b)), _wgslsmith_mult_u32(4294967295u, u_input.b), func_1(u_input.b, vec3<f32>(565f, 1798f, 529f)), func_2(global0[_wgslsmith_index_u32(u_input.b, 20u)], false, Struct_1(961f, global0[_wgslsmith_index_u32(4294967295u, 20u)], u_input.a.wxz))) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-688f, -293f) + vec2<f32>(241f, -449f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1000f) - vec2<f32>(-2512f, 489f))))))));
}

