struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 4>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: f32) -> bool {
    global1 = array<f32, 4>();
    return arg_0.b.x;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    global1 = array<f32, 4>();
    var var_0 = vec3<u32>(u_input.b, 23803u, 25726u) << (abs(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4045u, u_input.a.x), abs(vec3<u32>(1u, 2976u, u_input.a.x))), vec3<u32>(~u_input.a.x, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.b), vec3<u32>(10053u, 0u, u_input.b))))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_div_u32(4294967295u, var_0.x);
    global0 = _wgslsmith_f_op_f32(-arg_1.a);
    global1 = array<f32, 4>();
    return global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(countOneBits(vec3<u32>(4294967295u, 1u, 0u))), ~abs(vec3<u32>(var_1, var_1, 85697u)), countOneBits(~vec3<u32>(u_input.b, var_0.x, u_input.a.x))), abs(vec3<u32>(select(62299u, 0u, arg_1.b.x), ~0u, _wgslsmith_clamp_u32(1u, 4294967295u, u_input.a.x)))), 4u)];
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(0u ^ u_input.b, 4u)])), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~2988u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 80174u), vec3<u32>(arg_0.x, 4294967295u, arg_0.x))) ^ u_input.a.x, 4u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.x, 4u)])), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(arg_0.x, 4u)], global1[_wgslsmith_index_u32(u_input.b, 4u)]))) - vec4<f32>(-1845f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.b, 4u)]))))), 1485f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b, u_input.b)), vec2<u32>(7201u, _wgslsmith_add_u32(arg_0.x, arg_0.x))), 4u)]));
    global1 = array<f32, 4>();
    let var_1 = Struct_1(427f, !vec4<bool>(true, all(vec2<bool>(true, true)) & all(vec4<bool>(false, true, true, true)), true, !func_2(Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], vec4<bool>(true, false, false, false), 36471i, -2147483647i, 933i), global1[_wgslsmith_index_u32(arg_0.x, 4u)], arg_0.yz, var_0.x)), (_wgslsmith_mult_i32(abs(-1i), countOneBits(2147483647i)) << (_wgslsmith_clamp_u32(~arg_0.x, arg_0.x, abs(arg_0.x)) % 32u)) | -1i, countOneBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(54153i, 6399i, 45970i, 75672i), vec4<i32>(1i, 1i, 1i, 1i)) & _wgslsmith_dot_vec4_i32(-vec4<i32>(-14841i, 49826i, 0i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i))), 0i);
    let var_2 = (~vec3<i32>(max(9114i, var_1.c), -var_1.e, var_1.e) | (vec3<i32>(var_1.e >> (8622u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d, var_1.e), vec2<i32>(var_1.c, 0i)), 1i) | _wgslsmith_div_vec3_i32(-vec3<i32>(-2147483647i, -1i, -11961i), _wgslsmith_mod_vec3_i32(vec3<i32>(-9394i, 1i, 2147483647i), vec3<i32>(-2147483647i, var_1.c, var_1.e))))) | ~(~(~(~vec3<i32>(var_1.e, -2147483647i, -5767i))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(func_3(2147483647i, Struct_1(-1191f, vec4<bool>(!var_1.b.x, var_1.b.x, !var_1.b.x, true), _wgslsmith_clamp_i32(var_2.x >> (arg_0.x % 32u), _wgslsmith_mult_i32(var_2.x, 24436i), select(var_2.x, 2147483647i, var_1.b.x)), countOneBits(-var_1.d), 16405i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -282f))))) + 998f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(389f)) + -1248f), _wgslsmith_div_f32(713f, var_1.a)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -591f), 1000f))), var_1.b, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(var_2.x), var_1.c), _wgslsmith_div_vec2_i32(vec2<i32>(~var_2.x, 20378i), vec2<i32>(-1i) * -vec2<i32>(var_1.e, -157i))), _wgslsmith_div_i32(36686i, countOneBits(1287i)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_2(func_1(~_wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.a.x, 39182u, 1u)), ~vec3<u32>(u_input.b, u_input.b, u_input.a.x))), !vec4<bool>(arg_0.b.x, all(!vec2<bool>(arg_0.b.x, false)), all(!vec3<bool>(arg_1.x, false, arg_0.b.x)), true), _wgslsmith_clamp_i32(-9376i, 0i, arg_0.d) ^ arg_0.c);
    global0 = -1000f;
    let var_1 = u_input.a ^ (u_input.a ^ u_input.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1[_wgslsmith_index_u32(32083u, 4u)], arg_0.a, -308f))) + vec3<f32>(223f, var_0.a.a, global1[_wgslsmith_index_u32(min(38392u, 0u), 4u)]))));
    global0 = 512f;
    return Struct_1(1673f, var_0.a.b, (func_1(max(vec3<u32>(0u, u_input.a.x, 1u), vec3<u32>(var_1.x, 4294967295u, 0u))).c & -abs(var_0.a.d)) | arg_0.e, ~func_1(abs(min(vec3<u32>(u_input.b, var_1.x, var_1.x), vec3<u32>(u_input.a.x, var_1.x, var_1.x)))).d, arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 4>();
    let var_0 = func_4(func_1(countOneBits(vec3<u32>(46653u ^ u_input.b, u_input.a.x, ~u_input.a.x))), select(vec4<bool>(all(vec3<bool>(true, true, true)), true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(true, false, true)), true, true), !any(vec3<bool>(true, false, true))), true));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(var_0.e, -2147483647i, func_1(vec3<u32>(u_input.b, u_input.b, u_input.b)).c | -var_0.c), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(-10317i, 51729i, -1i), vec3<i32>(var_0.d, 0i, 17941i)) >> (~vec3<u32>(1u, 32984u, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(var_0.d, var_0.c, 1i), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_0.c, var_0.e), vec3<i32>(var_0.d, -2147483647i, var_0.c))))));
}

