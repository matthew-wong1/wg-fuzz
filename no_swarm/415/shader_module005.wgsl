struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-1000f, -589f, 1000f, 1353f, 1961f, -1487f, 325f, -1670f, 758f, -1097f, -122f, -835f, 786f, -549f, 1000f, 1661f, -257f, 1000f, -1095f, -824f, -1476f, -1197f, 777f, 1948f, -123f, 1000f, 208f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    var var_0 = 313f;
    var var_1 = false;
    var var_2 = any(!(!vec3<bool>(any(vec3<bool>(true, true, true)), false, true)));
    return !(!(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> f32 {
    global0 = array<f32, 27>();
    let var_0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(~arg_0, arg_0) << (~(~vec2<u32>(1u, 50063u)) % vec2<u32>(32u)), vec2<u32>(1u, arg_0));
    let var_1 = any(vec4<bool>(true, !((var_0.x & 76504u) == 0u), any(func_3()), true));
    var var_2 = !func_3();
    var var_3 = firstTrailingBit(~1u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -383f), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32((_wgslsmith_clamp_u32(9140u, 1u, arg_0) ^ ~16177u) & ~4294967295u, 27u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1382f)) + -987f))));
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~arg_0, 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(318f - global0[_wgslsmith_index_u32(0u, 27u)])), -1065f > _wgslsmith_f_op_f32(func_2(arg_0, Struct_1(vec4<bool>(true, true, false, false)), true, -29089i)))))) * global0[_wgslsmith_index_u32(max(~_wgslsmith_add_u32(~arg_0, 0u), select(~arg_0 << (arg_0 % 32u), 3522u, any(func_3().zwz))), 27u)]);
    return Struct_3(~arg_0, arg_0, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~arg_0, 27u)] - 204f), global0[_wgslsmith_index_u32(arg_0, 27u)]), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-426f, -378f))))), true)), abs(max(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, arg_0, 4294967295u), vec3<u32>(arg_0, 7604u, 1u))), reverseBits(vec3<u32>(arg_0, arg_0, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!vec4<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false)), !(u_input.a < 15679i), u_input.c > firstTrailingBit(-1i), true));
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    var var_1 = func_1(0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(-select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 0i, -41420i), vec3<i32>(-9850i, -8899i, u_input.d.x)), abs(vec3<i32>(-1i, 10321i, 2147483647i)), all(var_0.a.zyy)), ~(~(-vec3<i32>(u_input.d.x, u_input.b, u_input.a)))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~var_1.b, select(var_1.a, 0u, false), 1u >> (var_1.d.x % 32u), 61404u), ~vec4<u32>(0u, 4294967295u, var_1.b, var_1.a) | vec4<u32>(0u, 39401u, 118526u, var_1.a), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.a, var_1.b, var_1.b, var_1.a), vec4<u32>(var_1.d.x, 13577u, var_1.a, var_1.a) ^ vec4<u32>(36405u, var_1.d.x, var_1.d.x, 1u))), ~(~(~vec4<u32>(30728u, 1u, 32313u, var_1.b)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2267f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.d.x, 27u)]), _wgslsmith_f_op_f32(314f - 2043f), 413f))))), min(~u_input.d, min(select(-vec2<i32>(u_input.c, -44212i), ~vec2<i32>(24051i, u_input.c), !var_0.a.yz), -reverseBits(u_input.d))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c.x, global0[_wgslsmith_index_u32(var_1.a, 27u)], var_1.c.x, 720f)))))))));
}

