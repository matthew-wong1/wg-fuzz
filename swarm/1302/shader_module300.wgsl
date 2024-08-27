struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(21138u, 186f, -34352i, vec3<i32>(13710i, i32(-2147483648), 2147483647i), 84969u);

var<private> global1: array<u32, 28> = array<u32, 28>(25974u, 36188u, 6058u, 20966u, 0u, 1u, 24853u, 19896u, 0u, 4294967295u, 1u, 1u, 37883u, 6127u, 0u, 27884u, 34010u, 12606u, 4294967295u, 42821u, 0u, 1u, 17635u, 0u, 4294967295u, 1u, 12573u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> u32 {
    global1 = array<u32, 28>();
    var var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_sub_u32(1u, u_input.a.x) >= _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 65u, global0.a), vec3<u32>(0u, 1u, 3561u))));
    global1 = array<u32, 28>();
    var var_1 = _wgslsmith_dot_vec3_i32(-(-select(vec3<i32>(global0.d.x, -2147483647i, -2147483647i), vec3<i32>(18053i, -1i, u_input.b.x), var_0.x) & vec3<i32>(-1i, ~u_input.b.x, u_input.b.x | -27918i)), -reverseBits(~vec3<i32>(global0.c, -34939i, -2147483647i)));
    var var_2 = global0.c;
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~arg_0.e) << (u_input.a.x % 32u), 63856u), 28u)] ^ ~0u;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(~4577u, ~1u | (arg_0 | u_input.a.x)), _wgslsmith_div_u32(4290u, ~0u >> (~global0.e % 32u)), ~(~func_2(Struct_1(1u, 434f, -57130i, vec3<i32>(1i, -1i, u_input.b.x), 26399u))), 1011u) & vec4<u32>(firstTrailingBit(max(65144u, u_input.a.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], u_input.a.x, arg_0, u_input.a.x), vec4<u32>(9145u, u_input.a.x, 0u, 1u)) % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(30373u, _wgslsmith_div_u32(4294967295u, u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, 4294967295u)), ~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global0.a, u_input.a.x)), (~arg_0 | firstLeadingBit(1u)) ^ countOneBits(~global1[_wgslsmith_index_u32(arg_0, 28u)]), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 28u)], 1u), vec3<u32>(global0.a, arg_0, u_input.a.x)), vec3<u32>(2479u, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 0u)));
    let var_1 = vec2<f32>(-1724f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * global0.b)))));
    let var_2 = Struct_1(u_input.a.x << (_wgslsmith_sub_u32(~global0.e & var_0.x, max(0u, global0.a << (u_input.a.x % 32u))) % 32u), global0.b, select(~(_wgslsmith_mod_i32(u_input.c.x, global0.c) >> (global0.a % 32u)), 28200i, true), vec3<i32>(-37944i, ~(-17825i), _wgslsmith_mult_i32(u_input.c.x, global0.c)), 0u);
    global1 = array<u32, 28>();
    global1 = array<u32, 28>();
    return var_2;
}

fn func_3() -> vec2<bool> {
    global0 = Struct_1(27530u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-111f, 1239f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(2213f))))) + _wgslsmith_f_op_f32(sign(global0.b))), ~(~global0.c), countOneBits((vec3<i32>(u_input.c.x, 0i, 2147483647i) ^ vec3<i32>(u_input.c.x, global0.d.x, -51029i)) ^ (-vec3<i32>(u_input.b.x, u_input.c.x, u_input.b.x) | firstTrailingBit(vec3<i32>(global0.c, -1i, u_input.b.x)))), 1u);
    var var_0 = vec2<i32>(u_input.c.x, ~u_input.b.x);
    var_0 = abs(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(6450i, u_input.b.x), global0.c), abs(abs(u_input.c)))) ^ vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(u_input.c.x, 2147483647i, -24539i)), vec3<i32>(38762i, global0.d.x, global0.d.x) >> (vec3<u32>(0u, 0u, 0u) % vec3<u32>(32u))) | countOneBits(u_input.c.x), 0i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global0.b, global0.b), vec3<f32>(101f, 1000f, -899f), vec3<bool>(true, false, true)))))) * vec3<f32>(-800f, 849f, _wgslsmith_f_op_f32(f32(-1f) * -686f))));
    global1 = array<u32, 28>();
    return !(!vec2<bool>(!all(vec3<bool>(false, true, true)), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~(min(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(67005u, 22831u, 82293u, u_input.a.x), vec4<u32>(global1[_wgslsmith_index_u32(global0.e, 28u)], global0.e, 1u, 33976u))) << (1u % 32u)));
    global0 = func_1(_wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(1u, ~1u)));
    global0 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.a, select(u_input.a, ~vec2<u32>(66682u, global0.a), func_3())), global0.b, _wgslsmith_mod_i32(firstTrailingBit(u_input.b.x), -_wgslsmith_sub_i32(-29298i, global0.c)) & u_input.b.x, reverseBits(vec3<i32>(_wgslsmith_mod_i32(func_1(1u).d.x, -u_input.b.x), -2147483647i, global0.c)), ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 46723u, 29139u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(13632u, 4294967295u, 0u, u_input.a.x), vec4<u32>(1u, 120937u, u_input.a.x, 4739u), vec4<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 28u)], 31363u, global0.e)), select(vec4<u32>(global0.e, u_input.a.x, global0.a, global1[_wgslsmith_index_u32(18115u, 28u)]), ~vec4<u32>(81716u, u_input.a.x, global0.e, 47922u), select(false, true, false))), 28u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(sign(global0.b)))));
    let var_2 = func_1(select(u_input.a.x, global0.a, any(vec3<bool>(func_3().x, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(abs(func_2(var_2)), _wgslsmith_mult_u32(u_input.a.x, var_2.a)), global1[_wgslsmith_index_u32(countOneBits(global0.e), 28u)], ~(~vec4<u32>(_wgslsmith_mult_u32(1u, global0.e), 1u, u_input.a.x, ~2901u)), var_1.x);
}

