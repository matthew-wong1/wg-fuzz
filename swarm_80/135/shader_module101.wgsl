struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 + arg_0) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1269f, -633f, arg_0.x) + vec4<f32>(-1293f, arg_0.x, arg_0.x, global0.x))))) + arg_0) + vec4<f32>(-1016f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-577f + _wgslsmith_f_op_f32(f32(-1f) * -1148f)), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-global0.x))));
    return ~0u;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = -_wgslsmith_div_i32(31233i, firstLeadingBit(firstTrailingBit(~(-1i))));
    var var_1 = Struct_1(-vec4<i32>(firstLeadingBit(var_0), firstTrailingBit(max(var_0, 25446i)), -2147483647i, 0i), all(!(!select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, false, arg_0.b), vec3<bool>(arg_1, arg_0.b, true)))));
    let var_2 = firstTrailingBit(vec2<i32>(u_input.b | max(-54894i, 1i), -arg_0.a.x));
    var var_3 = Struct_2(Struct_1((select(var_1.a, var_1.a, var_1.b) | _wgslsmith_mod_vec4_i32(vec4<i32>(-2321i, 52610i, 11254i, 0i), vec4<i32>(2147483647i, -1i, var_1.a.x, var_2.x))) | vec4<i32>(var_0, 1i, arg_0.a.x >> (99109u % 32u), -3993i), arg_0.b), ~vec4<u32>(u_input.a, ~_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(17174u, 75835u, u_input.c.x, u_input.a), vec4<u32>(u_input.c.x, u_input.c.x, 1u, 42327u))), 34095u), _wgslsmith_sub_u32(abs(max(~u_input.a, u_input.a)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, 1u), u_input.a << (1u % 32u))));
    var var_4 = 1207f;
    return ~(~(-min(u_input.b, _wgslsmith_add_i32(var_0, var_3.a.a.x))));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    let var_0 = arg_1.wzw;
    var var_1 = Struct_1(vec4<i32>(u_input.b, u_input.b, -33025i, -2147483647i), true);
    var var_2 = Struct_2(Struct_1(reverseBits(vec4<i32>(func_3(Struct_1(vec4<i32>(var_1.a.x, -1i, u_input.b, 0i), var_1.b), arg_2), ~u_input.b, ~2147483647i, firstLeadingBit(-1i))), select(_wgslsmith_f_op_f32(max(global0.x, 192f)) == global0.x, arg_2, all(vec3<bool>(var_1.b, false, var_1.b)) || true)), (~arg_1 << (vec4<u32>(var_0.x, arg_1.x, _wgslsmith_mod_u32(0u, 1982u), firstLeadingBit(0u)) % vec4<u32>(32u))) ^ firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, arg_1.x, 4294967295u), vec4<u32>(1u, 16424u, 4294967295u, arg_0), arg_1 & arg_1)), var_0.x);
    var_2 = Struct_2(Struct_1(~(-vec4<i32>(1566i, 9630i, u_input.b, var_1.a.x)) >> (countOneBits(var_2.b) % vec4<u32>(32u)), any(select(vec2<bool>(true, var_1.b), vec2<bool>(var_1.b, true), false))), select(vec4<u32>(~arg_0, func_1(vec4<f32>(-2558f, global0.x, global0.x, global0.x), Struct_2(var_2.a, var_2.b, arg_1.x)), u_input.a | 19235u, ~7390u), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(37620u, u_input.c.x, 29179u, var_0.x), vec4<u32>(1u, 33376u, arg_0, arg_0), arg_1), firstLeadingBit(arg_1)), false) | ~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, arg_0, 1u, arg_1.x), vec4<u32>(0u, arg_1.x, var_2.c, var_0.x)), _wgslsmith_dot_vec2_u32(arg_1.wx, var_2.b.yy));
    global0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(283f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -890f), _wgslsmith_f_op_f32(-global0.x), -1042f)));
    return 837f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-vec4<i32>(-1i ^ reverseBits(u_input.b), u_input.b, 33236i, -1i), false);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1537f) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1009f))), -426f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-504f - 503f) * global0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1449f, -1000f, global0.x, 301f)))))));
    let var_1 = abs(u_input.b);
    let var_2 = true;
    let var_3 = any(!vec2<bool>(true, var_2)) | var_0.b;
    global0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1147f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -422f)))), global0.x, _wgslsmith_f_op_f32(-global0.x))));
    let var_4 = vec3<u32>(~(~1302u) | _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 73636u), ~vec3<u32>(u_input.c.x, u_input.a, 4294967295u)), firstLeadingBit(min(vec3<u32>(u_input.c.x, 26254u, u_input.a), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(func_1(vec4<f32>(153f, -1235f, global0.x, global0.x), Struct_2(var_0, vec4<u32>(85667u, u_input.a, 8783u, u_input.a), 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(48001u, u_input.a, 0u), vec3<u32>(49649u, 5510u, u_input.c.x)), _wgslsmith_clamp_u32(1u, u_input.a, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 35969u, u_input.a), ~vec3<u32>(34294u, 4294967295u, u_input.a))), select(vec3<u32>(1u, ~u_input.c.x, 7766u), firstLeadingBit(~vec3<u32>(1u, 927u, 0u)), 1791i >= -var_0.a.x)), u_input.c.x << ((u_input.a & u_input.c.x) % 32u));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_div_f32(global0.x, 1000f), _wgslsmith_f_op_f32(global0.x + 251f), global0.x) + vec4<f32>(984f, _wgslsmith_f_op_f32(-395f * -1532f), _wgslsmith_f_op_f32(func_2(var_4.x, vec4<u32>(74855u, 1u, var_4.x, u_input.c.x), true)), _wgslsmith_f_op_f32(min(-507f, -791f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-457f, -1000f, global0.x, global0.x), vec4<f32>(global0.x, -1000f, 886f, global0.x), vec4<bool>(var_3, var_0.b, var_3, var_2))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-482f, 1134f, global0.x, -746f))))));
    let var_5 = Struct_2(var_0, max(abs(~(~vec4<u32>(1u, u_input.c.x, var_4.x, u_input.c.x))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, var_4.x, var_4.x, 1u), vec4<u32>(u_input.a, 0u, 6487u, 89030u)))), min(abs(~firstTrailingBit(9724u)), ~(u_input.a | u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(sign(-248f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2077f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(func_2(var_4.x, _wgslsmith_add_vec4_u32(vec4<u32>(27060u, u_input.a, 24280u, 0u), select(var_5.b, vec4<u32>(u_input.a, 4294967295u, 0u, 1u), true)), true))), ~_wgslsmith_div_i32(2147483647i, abs(~var_0.a.x)), -2147483647i, 0i);
}

