struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<f32>) -> vec2<bool> {
    global0 = Struct_1(!select(vec2<bool>(all(vec4<bool>(global0.a.x, false, global0.b, global0.a.x)), true), vec2<bool>(true, true), true), !(!global0.a.x), _wgslsmith_f_op_f32(trunc(-117f)), ~u_input.a);
    let var_0 = !global0.a;
    let var_1 = vec4<i32>(max(~_wgslsmith_mult_i32(u_input.b.x, -1i), select(~u_input.b.x, max(u_input.b.x, u_input.b.x ^ -1i), !(u_input.b.x < u_input.b.x))), 1i, u_input.b.x, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 15433i, -1i) | vec3<i32>(u_input.b.x, 2147483647i, -2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.b.x), vec3<i32>(0i, -3176i, -1i), vec3<i32>(31394i, -2147483647i, -25570i))) ^ u_input.b.x));
    global0 = Struct_1(!vec2<bool>(all(select(vec3<bool>(global0.b, false, false), vec3<bool>(var_0.x, global0.a.x, false), true)), true), !global0.a.x, arg_0.x, global0.d);
    global0 = Struct_1(!vec2<bool>(true, !any(vec3<bool>(global0.a.x, global0.a.x, true))), select(var_1.x < 0i, var_0.x, false) & (-538f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1562f, global0.c)))), _wgslsmith_f_op_f32(max(arg_0.x, 1621f)), u_input.a);
    return vec2<bool>(var_0.x, (global0.b && var_0.x) || !global0.a.x);
}

fn func_3() -> vec4<u32> {
    global0 = Struct_1(vec2<bool>(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.c, -100f), vec2<f32>(global0.c, global0.c)))).x, (_wgslsmith_f_op_f32(global0.c * global0.c) <= global0.c) && all(vec2<bool>(global0.a.x, true))), global0.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-937f, _wgslsmith_f_op_f32(step(-827f, 263f)))), _wgslsmith_f_op_f32(-global0.c)))), ~(~vec4<u32>(1u, ~18153u, 21762u, global0.d.x)));
    var var_0 = true & all(select(vec2<bool>(any(global0.a), global0.b & global0.a.x), vec2<bool>(false, all(vec4<bool>(global0.b, global0.b, global0.b, false))), vec2<bool>(true, true)));
    global0 = Struct_1(!select(vec2<bool>(!global0.a.x, true), func_2(vec2<f32>(global0.c, -1525f)), func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1481f, 1000f))))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(847f, global0.c), vec2<f32>(global0.c, 1947f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(672f, global0.c))), select(vec2<bool>(false, true), vec2<bool>(false, global0.b), global0.a))))).x, -407f, global0.d);
    var_0 = true;
    let var_1 = _wgslsmith_sub_vec4_u32(max(global0.d, vec4<u32>(36630u | _wgslsmith_mod_u32(global0.d.x, global0.d.x), 1u, ~61355u, 4294967295u)), ~vec4<u32>(_wgslsmith_mult_u32(u_input.c, _wgslsmith_clamp_u32(3621u, 82158u, 1u)), ~global0.d.x & (u_input.e.x << (global0.d.x % 32u)), 76085u, 44506u));
    return ~(~countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.d.x, global0.d.x, u_input.e.x), u_input.a)) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 9899u, 45367u, var_1.x), vec4<u32>(_wgslsmith_mod_u32(var_1.x, global0.d.x), firstTrailingBit(global0.d.x), ~4294967295u, _wgslsmith_clamp_u32(38773u, u_input.e.x, global0.d.x))) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    let var_0 = select(!vec2<bool>((global0.d.x <= u_input.e.x) && select(global0.a.x, true, global0.a.x), !(false && global0.b)), func_2(vec2<f32>(404f, global0.c)), vec2<bool>(global0.b, false));
    global0 = Struct_1(global0.a, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1781f, _wgslsmith_f_op_f32(1077f - global0.c)))).x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(global0.c - -374f)))), u_input.a);
    let var_1 = u_input.a;
    global0 = Struct_1(vec2<bool>((_wgslsmith_div_u32(4294967295u, arg_0.x) <= 16854u) && global0.a.x, !var_0.x), global0.a.x, -1468f, ~_wgslsmith_add_vec4_u32(~vec4<u32>(global0.d.x, arg_0.x, global0.d.x, 4294967295u), func_3() | ~vec4<u32>(4294967295u, 58126u, 4294967295u, var_1.x)));
    global0 = Struct_1(!global0.a, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(714f, 1008f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c - 1065f), _wgslsmith_f_op_f32(-global0.c)))), vec4<u32>(~(arg_0.x ^ 4294967295u), reverseBits(_wgslsmith_dot_vec4_u32(~var_1, var_1)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, var_1), _wgslsmith_sub_vec4_u32(vec4<u32>(709u, arg_0.x, 40599u, 11625u), var_1)) >> (4294967295u % 32u), ~global0.d.x));
    return StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-582f, _wgslsmith_f_op_f32(min(global0.c, -1234f))) + 1379f))), 1000f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -1207f), -675f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-1i);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1731f), _wgslsmith_f_op_f32(-1834f - global0.c), _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-220f - 1446f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.c, global0.c, 133f, 1000f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, -729f, global0.c, -1174f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2007f, 803f, -854f, 1071f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, -594f, _wgslsmith_f_op_f32(1887f * 106f), _wgslsmith_f_op_f32(-global0.c)))));
    let x = u_input.a;
    s_output = func_1(u_input.a.wwy);
}

