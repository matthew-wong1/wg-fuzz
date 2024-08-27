struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(Struct_2(1u), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -593f))), u_input.c.x));
    global0 = array<vec2<u32>, 20>();
    var var_1 = var_0.a;
    var var_2 = ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(~87678u, 11664u), reverseBits(u_input.a.x));
    global0 = array<vec2<u32>, 20>();
    return 2208f;
}

fn func_2() -> vec2<bool> {
    global0 = array<vec2<u32>, 20>();
    var var_0 = abs(countOneBits(firstTrailingBit(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x))));
    let var_1 = Struct_3(Struct_2(u_input.a.x), Struct_1(_wgslsmith_f_op_f32(func_3()), u_input.c.x | -10173i));
    var var_2 = 12445u;
    let var_3 = vec4<u32>(firstLeadingBit(~_wgslsmith_div_u32(~u_input.a.x, 12945u)), 61936u, ~_wgslsmith_mod_u32(1u, var_1.a.a) | firstTrailingBit(_wgslsmith_add_u32(select(2438u, var_1.a.a, false), u_input.a.x)), 1u);
    return vec2<bool>(any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1645f, var_1.b.a, true)), _wgslsmith_f_op_f32(sign(-1341f))))) > -2316f);
}

fn func_4(arg_0: vec2<bool>, arg_1: f32) -> vec3<u32> {
    var var_0 = select(arg_0, !func_2(), arg_0);
    return _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(firstTrailingBit(1u ^ u_input.a.x), ~(~68724u), u_input.a.x), _wgslsmith_dot_vec4_u32(~abs(u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 41193u, 0u, u_input.a.x), u_input.a)), 1u), u_input.a.zzz);
}

fn func_5(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<u32>) -> Struct_3 {
    global0 = array<vec2<u32>, 20>();
    var var_0 = Struct_3(Struct_2(abs(abs(29140u & u_input.a.x))), Struct_1(771f, abs(u_input.c.x)));
    let var_1 = u_input.a.www;
    global0 = array<vec2<u32>, 20>();
    var_0 = Struct_3(var_0.a, var_0.b);
    return Struct_3(var_0.a, var_0.b);
}

fn func_1(arg_0: f32, arg_1: f32) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(arg_1 * arg_1), ~(-1i));
    let var_1 = vec2<i32>(select(-8167i << (_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(27477u, 48771u)) % 32u), u_input.b, true) ^ u_input.b, _wgslsmith_clamp_i32(min(i32(-1i) * -31961i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, var_0.b, u_input.b, u_input.b), u_input.c)), var_0.b, -(abs(-78141i) & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_0.b), u_input.c.zz))));
    global0 = array<vec2<u32>, 20>();
    var var_2 = func_5(true, select(u_input.c, u_input.c, true), func_4(select(vec2<bool>(false, false), vec2<bool>(45254u <= u_input.a.x, true), func_2()), -1559f));
    let var_3 = ~vec3<u32>(countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(var_2.a.a, u_input.a.x, u_input.a.x, 0u)), u_input.a)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.a.a, 36218u, u_input.a.x), u_input.a)), u_input.a.x);
    return StorageBuffer(-1i, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(~u_input.a.x | ~u_input.a.x), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-316f, _wgslsmith_f_op_f32(f32(-1f) * -934f))))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-3426i, -16800i), u_input.b)));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1153f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1053f, 451f)))))), _wgslsmith_f_op_f32(-276f * _wgslsmith_f_op_f32(-var_0.b.a)));
}

