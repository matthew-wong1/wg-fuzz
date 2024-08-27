struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1287f + -999f)), -1092f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-452f)), 210f), _wgslsmith_f_op_f32(-1001f + -657f)))));
    let var_1 = abs(_wgslsmith_mult_vec4_u32(~(vec4<u32>(988u, 4294967295u, arg_2.b.d.x, arg_2.b.d.x) & vec4<u32>(arg_2.b.c.x, 0u, arg_0, arg_0)), vec4<u32>(_wgslsmith_div_u32(arg_0, arg_0), arg_2.a.x << (0u % 32u), arg_0, 1u)) >> ((~(~vec4<u32>(11438u, arg_0, 0u, arg_0)) | reverseBits(~vec4<u32>(11930u, arg_0, arg_0, 6013u))) % vec4<u32>(32u)));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(sign(-1908f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-539f, var_0.x) * vec2<f32>(1967f, 743f))))))));
    let var_2 = vec2<bool>(arg_1, arg_1 && all(!vec3<bool>(arg_1, arg_1, arg_1)));
    return arg_2.b.d.x;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<u32> {
    var var_0 = Struct_2(-121f);
    let var_1 = Struct_4(vec3<u32>(30384u, ~(~arg_0.c.x), _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0.c.x, 1u), arg_0.c.x << (0u % 32u)) ^ 104516u), arg_0, ~u_input.a);
    var var_2 = 24111i;
    return select(vec3<u32>(~_wgslsmith_add_u32(~arg_0.d.x, _wgslsmith_dot_vec2_u32(var_1.a.yy, var_1.b.d.zy)), countOneBits(_wgslsmith_sub_u32(arg_0.d.x, 0u) >> ((1u | arg_0.c.x) % 32u)), 1u), _wgslsmith_sub_vec3_u32(~vec3<u32>(32371u, arg_0.d.x, var_1.a.x), var_1.b.d >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_0.d.x, 138910u), vec3<u32>(10860u, 0u, arg_0.d.x)), ~vec3<u32>(316u, 16561u, 29548u), reverseBits(vec3<u32>(arg_0.d.x, 4294967295u, 0u))) % vec3<u32>(32u))), vec3<bool>(select(any(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, false, false), arg_1)), _wgslsmith_mod_i32(arg_0.b, -2147483647i) != -18345i, !arg_1), arg_1, all(!vec3<bool>(arg_1, true, true)) & all(select(vec2<bool>(arg_1, true), vec2<bool>(false, false), arg_1))));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(reverseBits(-2147483647i), 1i, abs(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(5193u, 1u), vec2<u32>(1u, 1u)), vec2<u32>(0u, firstTrailingBit(1u)))), func_3(Struct_1(u_input.a.x, u_input.a.x, ~firstTrailingBit(vec2<u32>(19982u, 1u)), ~(~vec3<u32>(35117u, 37732u, 39524u))), !(_wgslsmith_sub_i32(u_input.a.x, -57948i) <= -u_input.a.x)));
    return select(countOneBits(var_0.a), _wgslsmith_sub_i32(_wgslsmith_div_i32(~firstLeadingBit(var_0.b), 1i), -23884i), !(!select(all(vec2<bool>(false, false)), all(vec4<bool>(true, true, false, false)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    let var_1 = Struct_1(u_input.b, ~_wgslsmith_add_i32(-19776i, abs(-2147483647i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(50665u, 0u, 34775u, 1u), vec4<u32>(1u, 0u, 38074u, 31625u)) % 32u)), vec2<u32>(1u, abs(_wgslsmith_div_u32(func_1(98992u, true, Struct_4(vec3<u32>(10926u, 37668u, 77019u), Struct_1(1i, -2147483647i, vec2<u32>(15964u, 42885u), vec3<u32>(12698u, 5758u, 37461u)), vec2<i32>(-13725i, u_input.b))), firstLeadingBit(31489u)))), _wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(1u), ~countOneBits(4294967295u), 0u), vec3<u32>(1u, 1u, 1u)));
    var_0 = -_wgslsmith_sub_i32(func_2(), u_input.b);
    var_0 = ~select(-1i, i32(-1i) * -_wgslsmith_mod_i32(u_input.c, u_input.b), any(vec4<bool>(true, true, true, true)));
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1127f * _wgslsmith_div_f32(1987f, -818f)) - _wgslsmith_f_op_f32(floor(-3848f)))), Struct_1(-5061i, 1i, select(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.d.x, 52919u), vec2<u32>(8451u, 36189u)), ~(~vec2<u32>(76366u, var_1.c.x)), true), ~vec3<u32>(~var_1.c.x, 28297u, _wgslsmith_dot_vec3_u32(var_1.d, var_1.d))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1542f)))), -533f)), _wgslsmith_f_op_f32(round(615f))));
    var var_3 = Struct_3(Struct_2(328f), var_1, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.a.a, -904f)) * _wgslsmith_f_op_f32(-481f - var_2.c.x))))));
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-584f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_2.a.a))))), 1587f));
    let var_5 = Struct_3(Struct_2(var_4), var_1, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_4, -1586f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2.b.c.x, var_5.b.d.x, min(var_2.b.c.x, ~1u)), var_5.b.c.x, abs(abs(-vec4<i32>(var_5.b.b, u_input.b, -1i, var_2.b.b) & vec4<i32>(var_5.b.b, -1i, var_5.b.b, var_1.b))));
}

