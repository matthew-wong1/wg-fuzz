struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(38363u, false), Struct_1(25211u, true), vec4<i32>(1i, 2147483647i, 2147483647i, -24127i));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1() -> Struct_1 {
    return global0.b;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec2<f32>, arg_3: vec2<bool>) -> u32 {
    let var_0 = Struct_3(i32(-1i) * -2147483647i, arg_2.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-511f * arg_2.x), arg_2.x), 119f));
    let var_1 = Struct_4(reverseBits(4294967295u), _wgslsmith_f_op_f32(-var_0.b));
    let var_2 = var_1;
    var var_3 = Struct_2(Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, var_2.a), vec2<u32>(25375u, 4294967295u)), firstLeadingBit(global0.a.a)) ^ reverseBits(var_1.a), true), func_1(), global0.c & -vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, arg_0, -1i), -arg_1, u_input.a.x, u_input.a.x));
    var var_4 = ~var_2.a;
    return ~_wgslsmith_add_u32(~_wgslsmith_mult_u32(global0.a.a, 37686u), 17376u);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = false;
    var var_1 = Struct_3((i32(-1i) * -firstLeadingBit(-53277i)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(5795u, global0.b.a, 85060u) & ~vec3<u32>(46479u, 1u, 4084u), vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0, arg_0), func_3(global0.c.x, -19787i, vec2<f32>(-310f, 835f), arg_1.xz), arg_0.x)) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -777f), _wgslsmith_div_f32(2217f, 2106f));
    global0 = Struct_2(global0.a, global0.b, global0.c);
    var var_2 = func_1();
    return Struct_2(func_1(), func_1(), _wgslsmith_mult_vec4_i32(select(-vec4<i32>(global0.c.x, -1i, var_1.a, u_input.a.x), select(global0.c, global0.c, true), false) << (firstLeadingBit(~vec4<u32>(arg_0.x, 4294967295u, 0u, var_2.a)) % vec4<u32>(32u)), vec4<i32>(global0.c.x, 24311i, -7545i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, global0.c.x), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_1.a), vec2<i32>(-1i, u_input.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = func_2(min(vec2<u32>(~select(1778u, 0u, global0.a.b), _wgslsmith_mod_u32(var_0.a, global0.a.a) ^ 15585u), reverseBits(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a, 4294967295u), vec2<u32>(4294967295u, var_0.a)))), vec4<bool>(select(all(!vec4<bool>(true, var_0.b, true, global0.b.b)), var_0.b, any(select(vec2<bool>(false, var_0.b), vec2<bool>(global0.a.b, var_0.b), global0.a.b))), !all(select(vec3<bool>(var_0.b, global0.a.b, var_0.b), vec3<bool>(true, var_0.b, true), var_0.b)), any(select(select(vec2<bool>(global0.b.b, false), vec2<bool>(true, true), vec2<bool>(var_0.b, var_0.b)), vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, var_0.b))), any(!(!vec3<bool>(global0.b.b, false, global0.a.b)))));
    var var_1 = Struct_4(_wgslsmith_div_u32(_wgslsmith_div_u32(func_2(~vec2<u32>(var_0.a, var_0.a), vec4<bool>(global0.a.b, false, var_0.b, var_0.b)).b.a, global0.a.a), 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-226f, 1000f)) * -867f)), 119f));
    var var_2 = _wgslsmith_sub_vec3_u32(~vec3<u32>(~57464u | func_2(vec2<u32>(var_0.a, global0.a.a), vec4<bool>(false, var_0.b, false, true)).b.a, ~var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.a, 22295u, global0.a.a), countOneBits(vec4<u32>(1u, var_0.a, global0.a.a, 4294967295u)))), vec3<u32>(9199u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, var_0.a, 0u), vec3<u32>(global0.b.a, var_1.a, 11645u))), func_2(~vec2<u32>(global0.b.a, global0.b.a), vec4<bool>(false, var_0.b, true, global0.b.b)).a.a));
    var_1 = Struct_4(~4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(1497f + var_1.b), var_0.b)), -197f)) + -664f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-766f, _wgslsmith_f_op_f32(exp2(var_1.b)))) - -104f), -2636f)));
}

