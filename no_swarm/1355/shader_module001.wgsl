struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<Struct_1, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = !select(vec2<bool>(true, true), vec2<bool>(false, true), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true)));
    var var_1 = Struct_2(Struct_1(vec2<bool>(var_0.x, any(select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, false, true), false)))), Struct_1(!select(!vec2<bool>(var_0.x, var_0.x), select(var_0, vec2<bool>(false, true), var_0), !var_0)), !vec3<bool>(select(all(vec3<bool>(true, false, false)), true, true), true, true));
    let var_2 = ~countOneBits(u_input.c.x >> (35259u % 32u));
    let var_3 = ~102997u;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    return vec3<bool>(false, !(!(_wgslsmith_f_op_f32(min(var_4.x, var_4.x)) != var_4.x)), true);
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.b, 7u)], Struct_1(!select(vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, true), select(vec2<bool>(arg_0.x, true), vec2<bool>(true, arg_0.x), vec2<bool>(true, arg_0.x)))), select(func_3(), vec3<bool>(true, true, all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)) & !arg_0.x), select(arg_0.x, any(!vec4<bool>(false, false, true, arg_0.x)), all(select(vec4<bool>(false, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(arg_0.x, true, true, false))))));
    global0 = array<Struct_2, 16>();
    global1 = array<Struct_1, 7>();
    var var_1 = vec3<u32>(~_wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(u_input.c.x, 0u)), u_input.b, ~select(6532u, 1u, var_0.b.a.x) ^ u_input.c.x) & ~abs(max(vec3<u32>(48612u, 64850u, u_input.c.x) & vec3<u32>(4294967295u, u_input.a, u_input.a), select(vec3<u32>(0u, 0u, u_input.b), vec3<u32>(0u, 4294967295u, u_input.c.x), false)));
    var_0 = global0[_wgslsmith_index_u32(u_input.a, 16u)];
    return Struct_2(Struct_1(!(!vec2<bool>(arg_0.x, arg_0.x))), var_0.b, vec3<bool>(true | !arg_0.x, true && var_0.b.a.x, arg_0.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec2<i32>) -> bool {
    var var_0 = Struct_2(Struct_1(!(!arg_1.a.a)), arg_0.a, !(!select(arg_1.c, func_3(), arg_0.c)));
    global1 = array<Struct_1, 7>();
    var var_1 = u_input.c;
    var_0 = Struct_2(func_2(select(select(select(arg_0.c.yx, arg_1.a.a, false), vec2<bool>(arg_1.a.a.x, var_0.a.a.x), !vec2<bool>(arg_1.b.a.x, false)), var_0.b.a, !arg_1.b.a)).b, Struct_1(!vec2<bool>(arg_2.x >= arg_2.x, arg_0.c.x)), var_0.c);
    var_0 = arg_0;
    return true;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    var var_0 = -425f;
    let var_1 = vec2<bool>(func_4(Struct_2(arg_1, arg_1, select(vec3<bool>(arg_1.a.x, true, arg_1.a.x), vec3<bool>(arg_1.a.x, false, arg_1.a.x), arg_1.a.x)), func_2(!arg_1.a), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(857f, -981f, -1000f))))), countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, -2449i), vec2<i32>(-50696i, arg_0)))) || (-39542i != _wgslsmith_dot_vec3_i32(vec3<i32>(29772i, -4242i, arg_0), min(vec3<i32>(0i, 14292i, arg_0), vec3<i32>(27266i, arg_0, -30726i)))), !all(vec2<bool>(all(arg_1.a), func_2(vec2<bool>(false, false)).c.x)));
    global0 = array<Struct_2, 16>();
    var var_2 = global0[_wgslsmith_index_u32(u_input.a, 16u)];
    let var_3 = func_2(func_3().xy);
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(reverseBits(u_input.a)), 18154u, _wgslsmith_div_u32(u_input.b ^ 0u, ~105196u) >> (_wgslsmith_sub_u32(~u_input.c.x, 4294967295u) % 32u)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(0u & u_input.c.x, arg_2, 14572u), ~(vec3<u32>(82495u, u_input.a, arg_2) | vec3<u32>(arg_2, 47825u, 50412u))), ~vec3<u32>(~arg_2, u_input.b & arg_2, u_input.b), var_3.b.a.x)), 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 7>();
    let var_0 = true;
    global1 = array<Struct_1, 7>();
    var var_1 = global0[_wgslsmith_index_u32(~u_input.b, 16u)];
    var var_2 = func_1(28585i, Struct_1(vec2<bool>(!var_0, u_input.c.x == u_input.a)), reverseBits(firstLeadingBit(_wgslsmith_div_u32(u_input.b, u_input.b))));
    var_2 = func_2(vec2<bool>(all(!var_1.a.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-435f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1409f)))));
    global0 = array<Struct_2, 16>();
    var_1 = Struct_2(func_1(1i, func_2(var_2.b.a).a, _wgslsmith_clamp_u32(~u_input.b, 1u, reverseBits(0u))).b, var_2.b, !vec3<bool>(!(u_input.c.x < u_input.b), !var_2.b.a.x | true, var_1.c.x));
    var_2 = global0[_wgslsmith_index_u32(~5579u, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-944f - -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -373f)))));
}

