struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = arg_0;
    global0 = _wgslsmith_f_op_f32(max(1053f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3))))))));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(446f))));
    var var_1 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(4294967295u ^ u_input.a, abs(arg_0.a.a)), _wgslsmith_mod_u32(~var_0.a.b, arg_2.b), arg_2.a, var_0.a.a), (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a, arg_2.a, 35480u, var_0.a.b), vec4<u32>(1u, var_0.a.b, 72778u, arg_0.a.b)) >> (vec4<u32>(0u, u_input.a, 145844u, arg_2.a) % vec4<u32>(32u))) << ((~vec4<u32>(arg_2.b, arg_2.b, 73259u, 881u) << (vec4<u32>(4294967295u, var_0.a.b, 40105u, 10048u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a), countOneBits(vec4<u32>(70334u, arg_0.a.a, u_input.a, 0u))), arg_2.a, firstLeadingBit(arg_2.a), 11585u));
    let var_2 = _wgslsmith_f_op_f32(step(arg_3, 305f));
    return arg_2.b;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(u_input.a, ~(~4294967295u));
    var_0 = Struct_1(u_input.a, ~abs(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, 0u), _wgslsmith_div_u32(u_input.a, 0u))));
    let var_1 = vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(firstTrailingBit(u_input.a & var_0.a), 1u)), reverseBits(~firstTrailingBit(~u_input.a)), ~102348u << (_wgslsmith_sub_u32(1u, func_3(Struct_2(Struct_1(u_input.a, u_input.a)), -2147483647i, Struct_1(u_input.a, u_input.a), -579f)) % 32u), 0u);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(367f, 1523f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-765f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_0 = Struct_1(var_0.a >> (~_wgslsmith_mult_u32(var_0.b, ~var_1.x) % 32u), 2133u);
    return Struct_2(Struct_1(u_input.a, firstTrailingBit(_wgslsmith_mult_u32(~u_input.a, 82271u))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: f32) -> i32 {
    var var_0 = func_2().a;
    var var_1 = reverseBits(~(-vec4<i32>(-arg_0.x, abs(arg_0.x), arg_0.x ^ 0i, -18670i)));
    var_1 = ~min(~(-(vec4<i32>(arg_0.x, 0i, -6993i, arg_0.x) | vec4<i32>(-6060i, var_1.x, arg_0.x, arg_0.x))), max(-vec4<i32>(-1i, arg_0.x, -1i, 16690i) << (~vec4<u32>(4294967295u, 1u, var_0.a, 12579u) % vec4<u32>(32u)), vec4<i32>(var_1.x, arg_0.x, var_1.x, _wgslsmith_sub_i32(arg_0.x, arg_0.x))));
    global0 = 1000f;
    var_0 = Struct_1(_wgslsmith_add_u32(reverseBits(reverseBits(arg_1.a.a) << (var_0.b % 32u)), 88900u), ~0u);
    return arg_0.x & 1813i;
}

fn func_1() -> i32 {
    let var_0 = vec4<i32>(1820i, -(func_4(vec2<i32>(-34919i, -19062i), func_2(), _wgslsmith_f_op_f32(-145f - -608f)) ^ -5109i), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-783i, _wgslsmith_clamp_i32(abs(35923i), 27662i, countOneBits(2147483647i)), 1i), vec3<i32>(_wgslsmith_div_i32(1i, ~(-54449i)), -2147483647i | (-2i << (u_input.a % 32u)), 1i)));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1247f + -1000f))), -442f), -1131f));
    let var_1 = true;
    let var_2 = 1000f;
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2, var_2))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(2864f)), _wgslsmith_f_op_f32(max(var_2, var_2)))))));
    return max(-23089i, select(~1i, _wgslsmith_add_i32(-var_0.x ^ -39460i, 2147483647i), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec3<i32>(select(firstTrailingBit(var_0), var_0, u_input.a == u_input.a) | select(countOneBits(var_0), var_0, select(true, false, true)), ~3497i, 1i), 1i, _wgslsmith_sub_i32(-32801i & _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 7329i), -vec2<i32>(1i, -2147483647i)), firstTrailingBit(_wgslsmith_div_i32(~1i, abs(var_0)))), _wgslsmith_f_op_f32(round(-2523f)));
}

