struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec3<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(391f, -1000f, -216f, 1673f, -810f, 2350f, 255f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_3, arg_3: vec4<f32>) -> vec3<u32> {
    global0 = array<f32, 7>();
    var var_0 = arg_2.a.a.xx;
    var var_1 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1136f));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(u_input.a.x | u_input.a.x), 7u)]) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.c - -634f))) + -443f)), _wgslsmith_f_op_f32(sign(-334f)), -1274f);
    let var_3 = any(!arg_2.a.a);
    return vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, min(4294967295u, u_input.a.x), ~u_input.a.x, 60891u << (u_input.a.x % 32u)), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, 6508u, 0u, 4294967295u)), firstTrailingBit(vec4<u32>(49797u, 9193u, 949u, u_input.a.x)))), ~u_input.a.x, u_input.a.x);
}

fn func_2(arg_0: vec3<f32>) -> vec2<f32> {
    let var_0 = ~11713u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -150f));
    var var_2 = select(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~(vec3<u32>(58649u, u_input.a.x, u_input.a.x) ^ vec3<u32>(0u, var_0, 0u)), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(1u, u_input.a.x, u_input.a.x)), vec3<u32>(u_input.a.x, u_input.a.x, 1u))), ~func_3(var_1, true, Struct_3(Struct_1(vec4<bool>(false, true, true, true)), vec2<bool>(true, true), var_1), vec4<f32>(335f, var_1, -1004f, 1001f))), abs(firstTrailingBit(vec3<u32>(10872u, 0u, u_input.a.x))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(4294967295u), u_input.a.x ^ 15889u, u_input.a.x), ~vec3<u32>(0u, var_0, 0u)) % vec3<u32>(32u)), select(!any(vec3<bool>(true, true, true)), 5745i != (u_input.b.x & u_input.b.x), true));
    var var_3 = Struct_3(Struct_1(select(vec4<bool>(select(false, true, true), any(vec4<bool>(false, true, true, true)), false, u_input.b.x < u_input.b.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), false)), select(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)), select(vec2<bool>(any(vec2<bool>(true, false)), false), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))), vec2<bool>(true, (u_input.b.x == 0i) | true)), _wgslsmith_f_op_f32(-var_1));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.xz)) * arg_0.xy);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = vec2<u32>(~(~0u), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_add_u32(4294967295u, 0u)));
    let var_1 = arg_3.a;
    var var_2 = vec2<i32>(_wgslsmith_mult_i32(select(1i, -63388i, true), u_input.b.x) & u_input.b.x, 7563i);
    global0 = array<f32, 7>();
    var var_3 = _wgslsmith_add_u32(arg_0.x, arg_0.x);
    return 57458u;
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> u32 {
    let var_0 = arg_0;
    global0 = array<f32, 7>();
    var var_1 = select(!(!(!vec4<bool>(false, false, arg_2.b.x, false))), var_0.a.a, arg_2.a.a.x);
    let var_2 = var_0;
    let var_3 = arg_0;
    return 41623u >> (_wgslsmith_mult_u32(func_4(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, 1u, 47362u), vec4<u32>(55033u, 4294967295u, 37330u, 1u)), 48369u), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, -118f) - _wgslsmith_f_op_vec2_f32(func_2(vec3<f32>(arg_0.c, var_0.c, 819f)))), true, Struct_1(vec4<bool>(var_0.a.a.x, var_3.b.x, false, arg_0.b.x))), ~u_input.a.x) % 32u);
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> i32 {
    let var_0 = !(arg_0.b.x | !(select(true, arg_0.b.x, arg_0.b.x) & true));
    let var_1 = Struct_2(any(vec3<bool>(false, var_0, var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(140f, -234f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]) * vec2<f32>(-433f, -1444f))))), ~vec3<u32>(func_1(arg_0, 1u, Struct_3(Struct_1(vec4<bool>(true, true, arg_0.b.x, true)), vec2<bool>(true, var_0), global0[_wgslsmith_index_u32(1u, 7u)])), _wgslsmith_dot_vec3_u32(vec3<u32>(13553u, arg_1, arg_1), vec3<u32>(arg_1, 1u, 33782u) ^ vec3<u32>(4294967295u, arg_1, arg_1)), 1u), arg_0.a, 14297u);
    let var_2 = -32449i;
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    return max(1i, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    let var_0 = 73229i;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(func_5(Struct_3(Struct_1(vec4<bool>(true, false, true, true)), vec2<bool>(true, true), _wgslsmith_f_op_f32(abs(-195f))), func_1(Struct_3(Struct_1(vec4<bool>(true, true, true, true)), vec2<bool>(false, false), global0[_wgslsmith_index_u32(1u, 7u)]), 25868u, Struct_3(Struct_1(vec4<bool>(false, true, true, true)), vec2<bool>(false, true), -284f)))), vec3<u32>(~58317u, ~(~(~u_input.a.x)), _wgslsmith_clamp_u32(u_input.a.x, ~0u, u_input.a.x) ^ ~u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~45999u, 7u)], _wgslsmith_f_op_f32(-1289f * global0[_wgslsmith_index_u32(u_input.a.x, 7u)])))))), _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a.x, ~u_input.a.x), vec2<u32>(5773u, 47633u)));
}

