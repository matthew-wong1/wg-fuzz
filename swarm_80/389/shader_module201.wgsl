struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<f32, 16>;

var<private> global2: array<i32, 27>;

var<private> global3: f32;

var<private> global4: array<Struct_1, 26>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 16u)], 16u)], 16u)])))), !vec2<bool>(any(vec4<bool>(false, arg_0, true, false)) && false, arg_0));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<u32, 16>();
    var var_0 = _wgslsmith_div_vec2_f32(arg_0.zy, _wgslsmith_f_op_vec2_f32(floor(arg_0.xy)));
    global2 = array<i32, 27>();
    global0 = array<u32, 16>();
    global2 = array<i32, 27>();
    return Struct_1(_wgslsmith_div_f32(-321f, _wgslsmith_f_op_f32(-var_0.x)), arg_1.b);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b.x, -1340f)) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 16u)] * arg_1.c.a)) * global1[_wgslsmith_index_u32(4294967295u, 16u)]))), _wgslsmith_f_op_f32(arg_1.b.x - arg_1.c.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_1.b * arg_1.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.b, arg_1.b) + _wgslsmith_f_op_vec2_f32(-arg_1.b)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.b.x, 1000f)))), vec2<bool>(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -667f, global1[_wgslsmith_index_u32(34593u, 16u)])), Struct_1(global1[_wgslsmith_index_u32(1u, 16u)], arg_1.c.b)).b.x, arg_1.d))) + arg_1.b);
    var var_2 = 634f;
    global2 = array<i32, 27>();
    var var_3 = u_input.a;
    return Struct_3(func_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -942f, global1[_wgslsmith_index_u32(arg_1.a.x, 16u)])))))), Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(61889u, 0u, global0[_wgslsmith_index_u32(8216u, 16u)], u_input.e)), 16u)], vec2<bool>(false, arg_1.d))).b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 3303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(772f - -584f))) * vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1000f, -2500f)), _wgslsmith_f_op_f32(round(var_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1124f * -1220f), _wgslsmith_f_op_f32(ceil(-2252f))), 513f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    global4 = array<Struct_1, 26>();
    var var_0 = func_4(any(!select(!vec3<bool>(arg_1.b.x, true, true), select(vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x), vec3<bool>(true, arg_1.b.x, arg_1.b.x), vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x)), vec3<bool>(true, true, true))), Struct_2(vec3<u32>(~(~u_input.d.x), global0[_wgslsmith_index_u32(2623u, 16u)], ~1u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49139u, 16u)], 16u)], arg_0.x))), vec2<f32>(1198f, arg_1.a)))), func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.a, global1[_wgslsmith_index_u32(1u, 16u)], arg_1.a), vec3<f32>(-499f, arg_0.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)]))), vec3<f32>(-194f, 359f, arg_1.a), arg_1.b.x || true)), func_2(!arg_1.b.x)), true));
    let var_1 = u_input.c.x ^ _wgslsmith_mod_i32(reverseBits(2147483647i) << (1u % 32u), global2[_wgslsmith_index_u32(~54009u, 27u)]);
    global2 = array<i32, 27>();
    var var_2 = Struct_2(max(_wgslsmith_sub_vec3_u32(u_input.d, abs(u_input.b.xyy)), u_input.b.zzx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, arg_0.x), _wgslsmith_f_op_vec2_f32(var_0.b.yy + vec2<f32>(arg_0.x, 1900f))), vec2<f32>(606f, -1352f), arg_1.b.x)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -545f) + arg_0), _wgslsmith_f_op_vec2_f32(-var_0.b.xx))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, -875f) * vec2<f32>(arg_0.x, 873f)))), any(vec4<bool>(var_0.a, false, true, true))))), func_2(!(!arg_1.b.x)), true);
    return any(var_2.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(u_input.b) & select(_wgslsmith_mod_vec4_u32(reverseBits(u_input.b), u_input.b), ~vec4<u32>(reverseBits(global0[_wgslsmith_index_u32(u_input.d.x, 16u)]), ~global0[_wgslsmith_index_u32(4294967295u, 16u)], ~u_input.e, global0[_wgslsmith_index_u32(1u, 16u)]), vec4<bool>(select(true, false, true), !func_1(vec2<f32>(-673f, global1[_wgslsmith_index_u32(0u, 16u)]), Struct_1(-572f, vec2<bool>(false, true))), u_input.a.x == u_input.c.x, true));
    global2 = array<i32, 27>();
    let var_1 = _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 16u)], 4294967295u), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b.x, ~u_input.b.x), _wgslsmith_mult_u32(~var_0.x, 1u)), ~(1u << (1u % 32u))), 16u)], firstTrailingBit(4294967295u));
    var_0 = u_input.b;
    let var_2 = _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(firstTrailingBit(var_1), 16u)]), 16u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(~var_1), ~(~global0[_wgslsmith_index_u32(u_input.b.x, 16u)]) ^ (select(global0[_wgslsmith_index_u32(60471u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], false) | _wgslsmith_sub_u32(var_0.x, u_input.d.x)), max(16747u, ~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(15612u, 16u)], global0[_wgslsmith_index_u32(var_1, 16u)]))), 16u)], _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~firstTrailingBit(global0[_wgslsmith_index_u32(15846u, 16u)]), 16u)])) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(30347u, 16u)] * global1[_wgslsmith_index_u32(1u, 16u)]) * _wgslsmith_div_f32(156f, global1[_wgslsmith_index_u32(var_0.x, 16u)]))))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(51263u | ~(~global0[_wgslsmith_index_u32(4294967295u, 16u)]), 16u)])), !select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), !(596f < var_2)));
    global0 = array<u32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2, -214f), 1669f))))));
}

