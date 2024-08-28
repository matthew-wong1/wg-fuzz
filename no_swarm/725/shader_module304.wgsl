struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-292f, true, 4294967295u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> i32 {
    let var_0 = arg_1.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1001f, -2262f)), false, ~max(~firstTrailingBit(4294967295u), select(global0.c & global0.c, 3654u, true)));
    var var_2 = _wgslsmith_f_op_f32(-global0.a);
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, 2662f) * -915f) * 417f), global0.a, -2147483647i <= u_input.a.x)), var_0));
    let var_3 = Struct_1(var_1.a, false, _wgslsmith_div_u32(7860u >> (_wgslsmith_clamp_u32(4294967295u & global0.c, 13901u ^ global0.c, var_1.c) % 32u), _wgslsmith_sub_u32(1u, var_1.c & var_1.c) & var_1.c));
    return 1i;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0.a;
    var_0 = global0.a;
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.a), true, ~(~5200u));
    var_0 = arg_0.a;
    var var_1 = Struct_1(arg_0.a, 37328i < ~(-func_3(false, vec2<f32>(global0.a, -335f))), global0.c);
    return arg_0;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = 10270i == abs(-60566i & u_input.a.x);
    let var_1 = func_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -750f), _wgslsmith_f_op_f32(-132f + _wgslsmith_f_op_f32(887f - -398f))), arg_3.c >= global0.c, ~28475u));
    var var_2 = 1740u;
    var_2 = 69080u;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_1.a), arg_3.b, arg_2.c);
    return -firstTrailingBit(_wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.a.x, u_input.a.x, -1i) & vec3<i32>(1986i, -2147483647i, -18278i), min(vec3<i32>(8890i, u_input.a.x, u_input.a.x), u_input.a), !vec3<bool>(var_0, true, arg_1.b)), ~u_input.a ^ u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(vec3<u32>(global0.c & 94617u, _wgslsmith_div_u32(global0.c, ~51509u), global0.c), ~(~(~vec3<u32>(24238u, 56553u, global0.c))));
    var var_1 = countOneBits(~abs(-func_1(vec4<f32>(-686f, global0.a, global0.a, -943f), Struct_1(-1587f, true, 91171u), Struct_1(584f, false, 136572u), Struct_1(1812f, global0.b, 1u))));
    var_1 = u_input.a;
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.a), true, var_0.x);
    var_1 = vec3<i32>(1i, -max(-1i, _wgslsmith_dot_vec2_i32(var_1.zz, _wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.a.x), vec2<i32>(0i, var_1.x)))), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, 506f, -1000f)), Struct_1(global0.a, all(select(vec3<bool>(false, global0.b, false), vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(false, true, global0.b))), ~var_0.x & countOneBits(global0.c)), func_2(Struct_1(_wgslsmith_f_op_f32(-global0.a), global0.b, func_2(Struct_1(-1000f, true, var_0.x)).c)), func_2(Struct_1(_wgslsmith_f_op_f32(step(-1294f, global0.a)), global0.a == global0.a, _wgslsmith_mult_u32(global0.c, global0.c)))).x);
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.a), false, 0u);
    let var_2 = func_2(func_2(Struct_1(-1125f, select(false, global0.b, false) && true, global0.c)));
    var_1 = vec3<i32>((-2147483647i ^ ~var_1.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-11462i, -2147483647i, -2147483647i, -2147483647i), vec4<i32>(0i, u_input.a.x, u_input.a.x, var_1.x))), var_1.x, u_input.a.x) & -vec3<i32>(2147483647i, (var_1.x & 24129i) ^ _wgslsmith_div_i32(u_input.a.x, var_1.x), -4708i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(countOneBits(vec2<u32>(var_0.x, 4285u)))), _wgslsmith_sub_vec2_u32(~vec2<u32>(global0.c, firstTrailingBit(1u)), select(var_0.zz, ~vec2<u32>(var_2.c, 4294967295u), vec2<bool>(true, true)) ^ vec2<u32>(4131u, ~33735u)), u_input.a);
}

