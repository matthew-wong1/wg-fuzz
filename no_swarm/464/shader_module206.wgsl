struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_3,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = -u_input.b;
    let var_1 = Struct_4(arg_1.d.c.x, 23736u, Struct_3(~5286u), arg_1, vec4<u32>(max(1u, ~1u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_1.e, vec2<u32>(u_input.a, arg_0.x)), arg_1.e.x) << (arg_0.x % 32u), ~(~abs(arg_0.x)), max(reverseBits(~u_input.a), 0u)));
    let var_2 = arg_2;
    var_0 = vec2<i32>(arg_1.c.d.x, -_wgslsmith_dot_vec2_i32(var_2.d.xz, max(u_input.c, -vec2<i32>(-2147483647i, var_2.b.x))));
    var_0 = -(var_1.d.c.b ^ ~arg_1.c.d.zx);
    return 1012u;
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_4 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1240f)), arg_0);
    let var_1 = ~_wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_1, 0u, 1u, u_input.a) | ~vec4<u32>(u_input.a, 30491u, 13981u, arg_1)), vec4<u32>(~(~35294u), ~func_3(vec4<u32>(arg_1, u_input.a, u_input.a, arg_1), Struct_2(vec2<bool>(true, true), vec2<i32>(2147483647i, u_input.c.x), Struct_1(-1451f, u_input.c, vec3<bool>(false, true, true), vec3<i32>(u_input.c.x, 35703i, u_input.b.x)), Struct_1(var_0.x, u_input.c, vec3<bool>(true, false, true), vec3<i32>(u_input.c.x, u_input.b.x, u_input.c.x)), vec2<u32>(2020u, u_input.a)), Struct_1(-202f, vec2<i32>(u_input.b.x, u_input.b.x), vec3<bool>(true, true, true), vec3<i32>(u_input.b.x, u_input.b.x, u_input.c.x))), 24538u, u_input.a | ~u_input.a));
    var var_2 = -38980i;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-604f + -1000f), vec2<i32>(_wgslsmith_div_i32(u_input.c.x, ~_wgslsmith_sub_i32(u_input.b.x, u_input.c.x)), countOneBits(-u_input.b.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, all(vec3<bool>(false, false, false))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), select(true | (0u > u_input.a), true && all(vec4<bool>(false, false, true, true)), !(u_input.b.x > u_input.b.x))), vec3<i32>(abs(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.c.x, -20700i))), -2147483647i, -1i >> ((~var_1 >> (var_1 % 32u)) % 32u)));
    var var_4 = Struct_3(arg_1);
    return Struct_4(any(!vec3<bool>(var_3.c.x, false, var_3.c.x)) & false, ~(~var_1), Struct_3(~0u), Struct_2(!select(select(var_3.c.yx, vec2<bool>(true, var_3.c.x), var_3.c.x), select(vec2<bool>(true, var_3.c.x), var_3.c.xz, var_3.c.x), var_3.c.x), vec2<i32>(-var_3.b.x, -2147483647i), var_3, Struct_1(1000f, var_3.b, var_3.c, _wgslsmith_mod_vec3_i32(var_3.d, vec3<i32>(-77602i, -32685i, u_input.b.x) | var_3.d)), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 11069u), ~vec2<u32>(var_4.a, arg_1)) >> (vec2<u32>(21400u, 1u) % vec2<u32>(32u))), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 50439u, 4294967295u, var_1), vec4<u32>(0u, var_1, var_1, var_1)), _wgslsmith_clamp_u32(30494u, var_4.a, u_input.a), ~41432u, var_1), ~vec4<u32>(45638u, 0u, 44767u, 58657u) | ~vec4<u32>(0u, 21440u, 51623u, u_input.a), reverseBits(~vec4<u32>(var_4.a, 4294967295u, var_1, var_4.a))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_1, 4294967295u, 0u), vec4<u32>(49030u, 0u, 27743u, var_1)))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = arg_0.c;
    var var_1 = vec4<f32>(var_0.a, _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(338f)), _wgslsmith_f_op_f32(f32(-1f) * -905f))), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.x * -300f))), arg_2.x)), _wgslsmith_f_op_f32(-542f - arg_1)));
    let var_2 = var_1.xw;
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1018f)))), _wgslsmith_clamp_u32(~arg_0.e.x, 77813u, 0u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec3<u32>) -> f32 {
    let var_0 = false;
    return 1584f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 336f >= _wgslsmith_f_op_f32(min(-856f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-640f, 440f)) * _wgslsmith_f_op_f32(sign(1553f))) + _wgslsmith_f_op_f32(func_4(Struct_2(vec2<bool>(false, false), u_input.c, Struct_1(-613f, u_input.b, vec3<bool>(true, true, true), vec3<i32>(-995i, u_input.c.x, 0i)), Struct_1(2168f, vec2<i32>(u_input.c.x, -2147483647i), vec3<bool>(true, false, false), vec3<i32>(-1i, 34254i, u_input.b.x)), vec2<u32>(27270u, u_input.a)), func_1(Struct_2(vec2<bool>(false, true), u_input.c, Struct_1(222f, vec2<i32>(u_input.c.x, u_input.b.x), vec3<bool>(true, true, true), vec3<i32>(2147483647i, 1i, u_input.c.x)), Struct_1(-174f, vec2<i32>(-30900i, u_input.c.x), vec3<bool>(false, true, false), vec3<i32>(0i, u_input.b.x, u_input.b.x)), vec2<u32>(u_input.a, 12395u)), 1750f, vec3<f32>(1000f, 1043f, -878f)), select(vec4<u32>(35098u, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), false), abs(vec3<u32>(u_input.a, u_input.a, u_input.a)))))));
    var var_1 = _wgslsmith_add_i32(min(u_input.b.x & -1i, 1i), min(2147483647i, _wgslsmith_add_i32(-29372i, _wgslsmith_sub_i32(~1i, u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-1207f * -653f), -868f)))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.a, 65597u, 25569u, 24277u)), vec4<u32>(4294967295u, 1u, 96141u, 44260u), ~vec4<u32>(u_input.a, u_input.a, 42316u, 4294967295u)), ~select(vec4<u32>(1u, 1u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, 29696u), false)), ~((_wgslsmith_mult_u32(u_input.a, u_input.a) ^ 1u) & firstLeadingBit(u_input.a)));
}

