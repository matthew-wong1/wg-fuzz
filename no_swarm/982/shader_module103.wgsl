struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(0i, -1i, 1i, 7779i, 0i, i32(-2147483648), 1i, 1i, -7655i, -1i, -70347i, -13795i, 57759i, 46318i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> bool {
    let var_0 = ~firstLeadingBit(u_input.a.xy);
    return ~(~(_wgslsmith_mult_i32(0i, global0[_wgslsmith_index_u32(u_input.a.x, 14u)]) << (countOneBits(u_input.c) % 32u))) >= (-1i ^ global0[_wgslsmith_index_u32(94277u, 14u)]);
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> f32 {
    global0 = array<i32, 14>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.e.c, -473f, arg_1), vec3<f32>(548f, arg_1, arg_0.a), arg_0.c))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-388f, var_0.x, -846f), vec3<f32>(-928f, -916f, var_0.x)), vec3<f32>(-746f, arg_1, -925f)))));
    var var_1 = arg_0.c;
    let var_2 = select(vec3<i32>(589i, 1i, ~select(arg_0.e.e, global0[_wgslsmith_index_u32(1u, 14u)], arg_0.d)) << (abs(vec3<u32>(_wgslsmith_clamp_u32(34549u, 87446u, u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.e.d, arg_0.b.b.x), vec2<u32>(0u, arg_0.b.b.x)), _wgslsmith_clamp_u32(u_input.b, 4294967295u, 33074u))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(0i, arg_0.e.e, 2147483647i), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.e, 43358i, 0i), vec3<i32>(arg_0.b.e, -1i, arg_0.b.e)), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.e, -1i), vec2<i32>(-13997i, 19503i))), -abs(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 14u)], 11669i, arg_0.b.e))), ~(~vec3<i32>(1i, global0[_wgslsmith_index_u32(1u, 14u)], arg_0.b.e)) >> (vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(arg_0.e.b, vec3<u32>(arg_0.e.d, u_input.c, 24408u)), _wgslsmith_clamp_u32(arg_0.e.b.x, arg_0.b.b.x, arg_0.b.b.x)) % vec3<u32>(32u))), vec3<bool>(true, true, true));
    return _wgslsmith_f_op_f32(step(927f, -1268f));
}

fn func_1() -> f32 {
    global0 = array<i32, 14>();
    var var_0 = all(vec3<bool>(func_2(), true, select(all(vec3<bool>(false, true, true)), true, u_input.b == (4294967295u & u_input.b))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1240f * _wgslsmith_f_op_f32(trunc(174f))) * _wgslsmith_f_op_f32(f32(-1f) * -1274f))) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(685f - _wgslsmith_div_f32(1000f, 639f)), -787f), _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_f32(select(-480f, -1086f, true)), Struct_1(249f, vec3<u32>(u_input.b, u_input.c, 0u), 1311f, 0u, -75728i), true, true, Struct_1(-779f, u_input.a.zxw, -915f, u_input.c, 44614i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -645f)))), !any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global0 = array<i32, 14>();
    var var_1 = 2657i;
    var_1 = reverseBits(var_0);
    global0 = array<i32, 14>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), 470f));
    let var_3 = Struct_2(var_2, Struct_1(_wgslsmith_f_op_f32(-801f * _wgslsmith_f_op_f32(-1208f - _wgslsmith_f_op_f32(-var_2))), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 35054u, 0u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), u_input.a.zzw, u_input.a.zxx), -1000f, u_input.a.x >> (_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a) % 32u), -5673i), func_2(), !select(true, true, any(vec4<bool>(true, true, true, false))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(var_2, Struct_1(var_2, u_input.a.xwz, var_2, 43662u, var_0), false, false, Struct_1(885f, u_input.a.yzz, var_2, 4294967295u, 0i)), var_2)), -572f) - var_2), u_input.a.zzw, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_2(var_2, Struct_1(1147f, vec3<u32>(u_input.a.x, u_input.a.x, 65185u), var_2, u_input.a.x, var_0), false, true, Struct_1(1000f, u_input.a.yxw, var_2, u_input.c, var_0)), _wgslsmith_div_f32(163f, -1370f))), 431f)), ~(~(~u_input.b)), firstTrailingBit(global0[_wgslsmith_index_u32(max(70883u, ~u_input.c), 14u)])));
    let x = u_input.a;
    s_output = StorageBuffer(abs(1i), _wgslsmith_f_op_f32(var_2 - -1000f), ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_3.b.b.yy, vec2<u32>(4294967295u, var_3.b.d)), ~(~var_3.b.b.xx)));
}

