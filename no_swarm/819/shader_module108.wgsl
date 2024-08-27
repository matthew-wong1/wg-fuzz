struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = 268f;
    let var_1 = Struct_1(select(arg_2.a.a, -(vec3<i32>(arg_2.a.a.x, 49346i, 32239i) & vec3<i32>(arg_2.a.c, -1i, 65359i)), false), arg_2.a.b, arg_2.a.c);
    let var_2 = -537f;
    var var_3 = any(!(!(!select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, false), vec2<bool>(arg_1, false)))));
    var_3 = any(vec2<bool>(arg_1, true));
    return !vec2<bool>(((arg_1 || arg_1) && all(vec3<bool>(false, arg_1, true))) != any(!vec2<bool>(arg_1, arg_1)), true);
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-277f, 600f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1431f, 1000f), vec2<f32>(620f, 1089f)))))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1405f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 1514f))))), Struct_2(Struct_1(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2543f, 787f, true)) - _wgslsmith_f_op_f32(f32(-1f) * -1456f)), 1i)));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(var_0.a)), Struct_2(Struct_1(-reverseBits(vec3<i32>(var_0.b.a.c, var_0.b.a.c, -8770i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1851f))), -12631i)));
    var var_1 = true;
    var var_2 = Struct_2(var_0.b.a);
    var var_3 = var_0.b.a;
    return select(func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-161f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1475f))))), all(vec3<bool>(true, true, true)), Struct_2(var_0.b.a)), func_3(_wgslsmith_f_op_f32(trunc(var_2.a.b)), true | all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), Struct_2(var_2.a)), vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, false)))), any(vec4<bool>(any(vec4<bool>(false, true, true, false)), all(vec2<bool>(true, false)), all(vec4<bool>(false, true, true, false)), true))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = -(~select(u_input.b.yy, u_input.b.xz, select(vec2<bool>(true, true), func_2(), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)))));
    let var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, u_input.d, 12491u), ~vec4<u32>(u_input.a, u_input.d, 4294967295u, 77610u)), _wgslsmith_sub_vec4_u32((vec4<u32>(u_input.c.x, u_input.d, u_input.c.x, u_input.d) ^ vec4<u32>(u_input.a, 1u, u_input.a, 19149u)) << (min(vec4<u32>(u_input.d, 82791u, u_input.a, 24466u), vec4<u32>(u_input.a, 4294967295u, 6606u, u_input.d)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c.x, 43185u, u_input.c.x, 15720u)), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.d) & vec4<u32>(u_input.a, u_input.d, 32802u, 0u)))), vec4<u32>(~(~_wgslsmith_mult_u32(64202u, u_input.a)), countOneBits(_wgslsmith_mod_u32(u_input.d, u_input.a) & 0u), 4294967295u, abs(4294967295u)));
    let var_2 = var_1.x >> (((4294967295u ^ _wgslsmith_div_u32(4294967295u, 39146u >> (var_1.x % 32u))) >> (4294967295u % 32u)) % 32u);
    var var_3 = _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(~var_0.x, 0i, -u_input.b.x) << ((_wgslsmith_add_u32(1u, var_2) & abs(var_1.x)) % 32u), i32(-1i) * -68162i), arg_0.c);
    let var_4 = _wgslsmith_f_op_f32(step(1195f, -1444f));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1620f, arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(581f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -404f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2244f + -580f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(u_input.b, -1971f, u_input.e))))));
    var_0 = _wgslsmith_f_op_f32(1149f * _wgslsmith_f_op_f32(-632f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-444f))))));
    let var_1 = ~u_input.c;
    var var_2 = vec2<bool>(false, false);
    var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-318f, -393f, 530f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(10369i, 20013i, _wgslsmith_dot_vec3_i32(-select(vec3<i32>(u_input.b.x, u_input.e, -60863i), u_input.b, vec3<bool>(false, var_2.x, true)), u_input.b), max(_wgslsmith_add_i32(-16967i, 1i), u_input.b.x & ~u_input.b.x)), ~max(max(vec4<i32>(u_input.b.x, -2147483647i, 7790i, 10353i) | vec4<i32>(u_input.e, 1i, u_input.b.x, 1i), vec4<i32>(11174i, 1i, u_input.e, u_input.e)), max(~vec4<i32>(u_input.b.x, u_input.e, 2147483647i, u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.e, 27533i, u_input.b.x), vec4<i32>(-1i, u_input.b.x, 2147483647i, 0i)))), _wgslsmith_div_vec2_f32(var_3.zy, var_3.yy), countOneBits(abs(~(~vec4<i32>(2147483647i, u_input.e, 10128i, u_input.b.x)))));
}

