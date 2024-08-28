struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -42168i;

var<private> global1: array<Struct_2, 18>;

var<private> global2: bool;

var<private> global3: vec4<i32> = vec4<i32>(63110i, 29395i, 353i, 31239i);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(select(378f, 195f, true))))));
}

fn func_3() -> vec3<bool> {
    global2 = true;
    global3 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.e.x, u_input.d, u_input.b.x) >> (~vec4<u32>(0u, 50172u, 4114u, 97628u) % vec4<u32>(32u)), u_input.b), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 78998i, 23947i, u_input.a.x), vec4<i32>(global3.x, u_input.b.x, 0i, u_input.a.x)), u_input.b) & abs(select(u_input.b, vec4<i32>(global3.x, global3.x, u_input.b.x, u_input.b.x), true))) | u_input.b;
    global2 = false;
    let var_0 = ~_wgslsmith_dot_vec2_i32(select(_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, global3.zx & vec2<i32>(global3.x, u_input.a.x)), vec2<i32>(~1i, -26600i), true & select(false, false, true)), global3.ww);
    let var_1 = !(!select(vec2<bool>(true, false), vec2<bool>(true, any(vec3<bool>(false, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    return !(!(!vec3<bool>(true, true, select(true, var_1.x, var_1.x))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = abs(u_input.c) | 33120i;
    global1 = array<Struct_2, 18>();
    let var_1 = all(!select(!vec3<bool>(arg_2.x, false, arg_2.x), select(select(vec3<bool>(arg_2.x, false, true), vec3<bool>(arg_2.x, arg_2.x, false), arg_2.x), !vec3<bool>(arg_2.x, false, true), arg_2.x & arg_2.x), func_3()));
    let var_2 = 1207f;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -428f), 137f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2, 1427f), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -636f)), func_3().x))), arg_1);
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, 473f))))), var_3.a), firstTrailingBit(~_wgslsmith_mult_u32(arg_1, 46119u)) ^ _wgslsmith_mod_u32(~_wgslsmith_mod_u32(4294967295u, var_3.b), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), true)));
    var_0 = true;
    var var_1 = ~select(max(~(~vec3<u32>(12557u, 4294967295u, 52578u)), max(vec3<u32>(24510u, 16411u, 47891u), vec3<u32>(47764u, 1u, 60211u)) << (vec3<u32>(1u, 1u, 0u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 7453u, 0u), vec3<u32>(1u, 1u, 1u)) & vec3<u32>(select(0u, 0u, true), firstLeadingBit(77412u), ~0u), select(-384f != _wgslsmith_f_op_f32(trunc(430f)), true, false));
    let var_2 = func_2(func_1(~(_wgslsmith_add_i32(-15766i, u_input.c) >> (firstTrailingBit(var_1.x) % 32u)), vec3<i32>(-38738i, max(-1i, abs(u_input.b.x)), ~1i)), 64826u, !vec2<bool>(!(var_1.x > var_1.x), false));
    global3 = (vec4<i32>(65073i, 44189i, u_input.b.x, abs(u_input.a.x)) ^ -(~u_input.b | u_input.b)) & u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.a.x)) - var_2.a.x)), vec3<u32>(firstLeadingBit(~var_2.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, 29749u, var_2.b, 1u), vec4<u32>(var_1.x, 28201u, var_1.x, var_1.x)), ~_wgslsmith_add_u32(var_2.b, 0u)) >> (vec3<u32>(~(~var_1.x), var_1.x, _wgslsmith_mult_u32(var_1.x, ~35085u)) % vec3<u32>(32u)), 33934u);
}

