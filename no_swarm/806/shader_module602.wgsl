struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    let var_0 = 2147483647i;
    let var_1 = firstLeadingBit(56332u);
    var var_2 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -326f), -761f)), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(1263f, -1060f)), _wgslsmith_f_op_f32(693f + 1180f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1259f, 674f) * vec2<f32>(115f, 757f)), vec2<f32>(-1686f, -2472f))))), vec4<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(33156u, 62401u, var_1), vec3<u32>(43527u, 1618u, 18149u))), 47618u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b, 0u), vec3<u32>(0u, 4294967295u, 12173u)), vec3<u32>(u_input.b, var_1, 4294967295u)), u_input.b), ~(~var_1)));
    var_2 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(-831f, 1649f, true)), _wgslsmith_div_f32(1372f, _wgslsmith_f_op_f32(step(var_2.a.a.x, -2306f))))), Struct_1(var_2.b.a), var_2.c);
    var var_3 = Struct_2(var_2.b, var_2.b, var_2.c);
    return reverseBits(vec2<i32>(firstTrailingBit(var_0 << (1u % 32u)), var_0));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-831f, -883f), vec2<f32>(603f, 574f))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1115f, 143f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1304f, -399f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1132f, -452f), vec2<f32>(461f, -167f), vec2<bool>(true, true))) * vec2<f32>(-1292f, -1655f)))), ~(~vec4<u32>(30504u, 0u, 1u, 1u) >> (~vec4<u32>(60086u, 0u, u_input.b, u_input.b) % vec4<u32>(32u))) | ~_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.b, 27796u, u_input.b, 0u), vec4<u32>(1u, u_input.b, 1u, 1u), true), vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) ^ vec4<u32>(29074u, 30485u, u_input.b, 1u)));
    var_0 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(516f, -510f)))), var_0.a.a)), Struct_1(var_0.a.a), ~(~(var_0.c & max(var_0.c, vec4<u32>(1u, 40081u, var_0.c.x, 0u)))));
    var var_1 = func_3();
    var_1 = reverseBits(abs(abs(select(_wgslsmith_mod_vec2_i32(vec2<i32>(26740i, -27931i), vec2<i32>(var_1.x, 27594i)), vec2<i32>(11657i, u_input.d.x), false))));
    let var_2 = var_0.a.a.x;
    return var_0.a;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.a.x;
    return func_2(u_input.a.x);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !vec2<bool>(!(!any(vec4<bool>(true, false, true, true))), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)));
    var_0 = select(vec2<bool>(true, !(!(u_input.b == 0u))), !select(select(vec2<bool>(true, true), !vec2<bool>(var_0.x, var_0.x), any(vec3<bool>(true, false, true))), vec2<bool>(true, true), false & all(vec2<bool>(true, true))), all(select(vec3<bool>(all(vec4<bool>(var_0.x, false, var_0.x, false)), u_input.a.x >= u_input.a.x, all(vec3<bool>(false, true, var_0.x))), vec3<bool>(var_0.x, any(vec4<bool>(true, true, true, var_0.x)), true), all(vec4<bool>(true, true, true, true)))));
    let var_1 = ~(~abs(vec3<u32>(_wgslsmith_add_u32(0u, 1u), u_input.b, firstTrailingBit(102763u))));
    var var_2 = ~_wgslsmith_div_i32(~(-18938i), 1i);
    var var_3 = ~(~u_input.d);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1168f, arg_0.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(609f, -166f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(160f, 441f) + vec2<f32>(-1170f, 303f))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(func_1(Struct_1(vec2<f32>(510f, -1624f))).a.x, func_2(u_input.d.x).a.x))))));
    var var_2 = 42997u;
    var_2 = _wgslsmith_div_u32(4294967295u, 4294967295u);
    var_2 = _wgslsmith_dot_vec2_u32(abs(~(~max(vec2<u32>(0u, u_input.b), vec2<u32>(37157u, u_input.b)))), _wgslsmith_mult_vec2_u32(firstLeadingBit((vec2<u32>(0u, 0u) & vec2<u32>(0u, u_input.b)) >> (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 74881u), vec2<u32>(8783u, 0u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 29990u), firstTrailingBit(vec2<u32>(1u, 6373u)), ~vec2<u32>(u_input.b, 1u)))));
    var_2 = _wgslsmith_mod_u32(0u, firstLeadingBit(u_input.b));
    var_1 = var_0;
    var var_3 = Struct_2(Struct_1(var_0.a), func_1(var_0), reverseBits(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 0u, 4294967295u, u_input.b), reverseBits(vec4<u32>(16666u, u_input.b, u_input.b, u_input.b))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)) ^ firstTrailingBit(vec4<u32>(48591u, 12604u, 17647u, u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x, u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x) + _wgslsmith_f_op_f32(select(var_1.a.x, var_1.a.x, true)))))));
}

