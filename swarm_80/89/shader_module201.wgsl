struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_2(firstLeadingBit(countOneBits(vec2<u32>(25132u, 1u))), Struct_1(-u_input.b.x, _wgslsmith_div_u32(reverseBits(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_u32(firstTrailingBit(u_input.a), u_input.a ^ 109283u))), Struct_1(~(-20924i), u_input.a));
    let var_1 = -628f;
    var var_2 = vec3<f32>(-763f, 648f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(f32(-1f) * -401f)))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x))), -1223f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1))))));
    let var_3 = -216f;
    return 61237u;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1458f, _wgslsmith_f_op_f32(1000f - 1220f), _wgslsmith_f_op_f32(-1000f - 485f), -1000f))))));
    var var_1 = Struct_3(abs(arg_2.x) >> (~func_3(true) % 32u), select(!vec4<bool>(arg_1, var_0.x < -1785f, false, !arg_1), select(select(select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, false, arg_1), all(vec3<bool>(arg_1, arg_1, true))), vec4<bool>(arg_1, true, any(vec4<bool>(true, arg_1, arg_1, false)), any(vec2<bool>(arg_1, false))), vec4<bool>(true, !arg_1, true, true)), !vec4<bool>(true, arg_1 == false, u_input.a > arg_2.x, arg_1)), Struct_1(9601i | (1i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), u_input.b.yy)), arg_2.x));
    var var_2 = var_1.c;
    let var_3 = var_0.x;
    var var_4 = firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(50648u, var_1.a), vec2<u32>(var_2.b, 76058u)), u_input.a >> (u_input.a % 32u)), ~(1u >> (firstLeadingBit(49479u) % 32u))));
    return Struct_1(-38329i, ~(_wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_2.x, var_1.a), max(arg_0, 4294967295u), var_2.b) << (var_2.b % 32u)));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<u32>) -> f32 {
    let var_0 = 250f;
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_1 - vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-186f, arg_1.x), vec2<f32>(-429f, 1695f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1436f, arg_1.x)))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(var_0 - -237f)))))));
    var var_2 = Struct_2(_wgslsmith_mod_vec2_u32(abs(arg_2), ~select(~vec2<u32>(43390u, arg_2.x), vec2<u32>(arg_2.x, 6516u) & arg_2, any(vec3<bool>(true, false, false)))), func_2(1u, true, arg_2), Struct_1(_wgslsmith_add_i32(firstTrailingBit(1i), abs(u_input.b.x | u_input.b.x)), arg_2.x));
    var var_3 = ~u_input.b;
    var var_4 = Struct_4(Struct_3(_wgslsmith_mod_u32(60865u, firstTrailingBit(59039u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec2<bool>(false, false)), 31326i >= var_3.x), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))), func_2(abs(var_2.c.b), true, ~reverseBits(vec2<u32>(arg_0, arg_0)))), var_2.c, Struct_2(_wgslsmith_mult_vec2_u32(select(firstLeadingBit(vec2<u32>(44761u, var_2.b.b)), ~var_2.a, all(vec2<bool>(false, false))), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_2.c.b), arg_2)), var_2.b, var_2.b), 2147483647i | -(~u_input.b.x), Struct_2(vec2<u32>(max(func_3(false), var_2.c.b), countOneBits(~arg_0)), Struct_1(_wgslsmith_sub_i32(max(-1i, var_2.b.a), 1i), firstLeadingBit(var_2.a.x)), func_2(firstLeadingBit(_wgslsmith_dot_vec2_u32(var_2.a, arg_2)), _wgslsmith_f_op_f32(ceil(-764f)) > -633f, min(var_2.a >> (arg_2 % vec2<u32>(32u)), vec2<u32>(u_input.a, arg_0)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(858f - arg_1.x)) + -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1764f, _wgslsmith_f_op_f32(func_1(~u_input.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 1499f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(106f, 811f))))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(36747u, 1u))))))) - -305f);
    var_0 = 2715f;
    let var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 25082u), vec2<u32>(u_input.a, u_input.a) << (~vec2<u32>(0u, u_input.a) % vec2<u32>(32u))) ^ (~firstTrailingBit(102604u) & 1u);
    let var_2 = Struct_4(Struct_3(4294967295u, !vec4<bool>(true, true, u_input.b.x >= 2147483647i, true), func_2(37519u, all(vec3<bool>(false, false, true)) | true, vec2<u32>(79356u << (u_input.a % 32u), var_1))), func_2(60812u, true, vec2<u32>(0u, ~9172u | abs(var_1))), Struct_2(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(u_input.a, var_1)), select(vec2<u32>(11110u, u_input.a), vec2<u32>(0u, u_input.a), vec2<bool>(false, true))) >> (firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(17470u, 74195u))) % vec2<u32>(32u)), func_2(30075u, any(vec3<bool>(true, false, true)), vec2<u32>(1u, 4294967295u)), func_2(~(~u_input.a), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true)), vec2<u32>(1u, var_1))), i32(-1i) * -31335i, Struct_2(~(firstTrailingBit(vec2<u32>(u_input.a, u_input.a)) >> (~vec2<u32>(var_1, u_input.a) % vec2<u32>(32u))), Struct_1(u_input.b.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, 42112u, u_input.a, 57142u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, var_1, 4294967295u, u_input.a), vec4<u32>(var_1, 4294967295u, 0u, var_1)))), func_2(_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, 1u), u_input.a), true, vec2<u32>(~25953u, 45647u))));
    let var_3 = select(var_2.a.b, select(vec4<bool>(var_2.a.b.x && true, _wgslsmith_f_op_f32(step(1418f, -1280f)) != -1568f, var_2.a.c.a <= min(var_2.e.b.a, -2147483647i), false || all(var_2.a.b)), var_2.a.b, vec4<bool>(u_input.b.x > u_input.b.x, true, true, any(select(var_2.a.b.yyy, var_2.a.b.ywz, var_2.a.b.x)))), vec4<bool>(any(!(!vec3<bool>(false, var_2.a.b.x, var_2.a.b.x))), false, any(select(select(var_2.a.b.ywy, vec3<bool>(var_2.a.b.x, false, false), var_2.a.b.wzz), var_2.a.b.wyy, var_2.a.b.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(494f)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(30831u, _wgslsmith_div_u32(var_1, 4294967295u)), ~vec2<u32>(11286u, u_input.a)));
}

