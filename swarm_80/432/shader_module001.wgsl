struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    var var_0 = all(vec2<bool>(!select(select(true, false, false), any(vec3<bool>(false, true, true)), false), select(~u_input.b <= 1u, true, any(vec3<bool>(true, true, true)))));
    let var_1 = firstTrailingBit(firstLeadingBit(firstLeadingBit(~_wgslsmith_div_vec2_u32(vec2<u32>(2280u, 4294967295u), vec2<u32>(u_input.b, u_input.b)))));
    var var_2 = _wgslsmith_mod_i32(0i, -10713i) != u_input.a;
    global0 = array<Struct_1, 27>();
    let var_3 = 1i;
    return max(select(vec3<u32>(35166u, _wgslsmith_clamp_u32(4294967295u, 21254u, u_input.b) << (var_1.x % 32u), firstLeadingBit(~u_input.b)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 120909u, var_1.x), vec3<u32>(var_1.x, 1u, var_1.x)) ^ vec3<u32>(u_input.b, 33469u, 1u)), true), abs(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, 68394u, 21690u), vec3<u32>(52937u, 62668u, 28636u)), select(vec3<u32>(u_input.b, 4294967295u, var_1.x), vec3<u32>(u_input.b, u_input.b, 0u), true)), firstTrailingBit(_wgslsmith_add_u32(u_input.b, 67226u)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(54966u, var_1.x, 1u, u_input.b), vec4<u32>(u_input.b, var_1.x, 30210u, 47206u)), vec4<u32>(6570u, u_input.b, var_1.x, 34990u)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 27>();
    var var_0 = Struct_2(select(vec3<bool>(true, true, true), select(!select(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, arg_1.a), arg_1.a), vec3<bool>(any(vec4<bool>(true, false, true, arg_1.a)), !arg_1.a, all(vec4<bool>(false, arg_1.a, false, false))), vec3<bool>(true, true, true)), select(true, !arg_1.a, arg_1.a)), ~func_3(), arg_1, arg_1);
    global0 = array<Struct_1, 27>();
    var var_1 = vec2<u32>(~74245u, 47893u);
    var_1 = var_0.b.xy;
    return u_input.b;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    global0 = array<Struct_1, 27>();
    let var_0 = -160f;
    let var_1 = 1103u;
    global0 = array<Struct_1, 27>();
    var var_2 = Struct_2(select(!select(vec3<bool>(false, arg_0.a, arg_1.x), vec3<bool>(arg_0.a, arg_0.a, true), arg_1.xzx), select(vec3<bool>(arg_0.a, true, true), !vec3<bool>(true, true, arg_0.a), arg_1.wxz), !(!arg_1.ywx)), vec3<u32>(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -448f) - _wgslsmith_f_op_f32(floor(667f))), Struct_1(true)), var_1, 273u), global0[_wgslsmith_index_u32(38258u, 27u)], Struct_1(!arg_0.a));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    var var_0 = Struct_1((!select(true, true, true) | true) != true);
    let var_1 = func_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.b, 67104u, 21577u, 4294967295u), vec4<u32>(6630u, u_input.b, 1u, 0u)), ~vec4<u32>(u_input.b, 0u, 47089u, 4294967295u)) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(152449u, u_input.b, 4294967295u, 1u), vec4<u32>(60672u, u_input.b, u_input.b, u_input.b)) % 32u), ~firstTrailingBit(u_input.b)), 27u)], !(!vec4<bool>(!var_0.a, true, true, var_0.a)));
    let var_2 = global0[_wgslsmith_index_u32(u_input.b, 27u)];
    global0 = array<Struct_1, 27>();
    var var_3 = Struct_1(any(vec4<bool>(func_1(Struct_1(false), vec4<bool>(var_2.a, var_1.a, true, false)).a, var_1.a, false, true & var_2.a)) & false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(max(vec2<i32>(-339i, _wgslsmith_div_i32(u_input.a, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -2147483647i)) ^ vec2<i32>(-1i, 2147483647i)), ~(~vec2<i32>(u_input.a, u_input.a)) & -firstLeadingBit(vec2<i32>(u_input.a, 48284i))), u_input.b & ~(~1u), select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -u_input.a), ~vec2<i32>(1i, u_input.a)), _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, 46i), select(vec2<i32>(0i, -24628i), abs(vec2<i32>(1i, 8082i)), true)), any(vec4<bool>(var_3.a, false, var_1.a, var_3.a)) || true));
}

