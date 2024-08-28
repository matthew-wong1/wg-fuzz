struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.e.a, _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.a.x, -1087f), arg_0.a.a), !arg_0.c)));
    let var_2 = ~firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(var_0.d.x, 1u), abs(u_input.c.x), 4294967295u, 15245u) << (vec4<u32>(abs(0u), countOneBits(var_0.d.x), _wgslsmith_dot_vec3_u32(var_0.d.yyz, var_0.d.wxx), _wgslsmith_clamp_u32(u_input.a, var_0.d.x, u_input.b)) % vec4<u32>(32u)));
    var var_3 = vec2<u32>(~(~arg_0.d.x), 0u);
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(294f, var_1.x, -1535f, 1000f) + _wgslsmith_div_vec4_f32(vec4<f32>(-135f, -391f, var_1.x, -1581f), vec4<f32>(var_0.a.a.x, 330f, 1000f, var_1.x))))))), vec4<f32>(var_0.e.a.x, arg_0.a.a.x, _wgslsmith_f_op_f32(min(var_1.x, 218f)), _wgslsmith_f_op_f32(step(-1941f, _wgslsmith_f_op_f32(-var_0.e.a.x)))), !vec4<bool>(true, true, !var_0.a.d == any(arg_0.e.c), select(false, all(vec2<bool>(true, false)), false))));
    return !all(vec3<bool>(any(!arg_0.a.c), !(true | var_0.a.b), !(var_0.b.a.x > 1i)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(Struct_1(vec2<f32>(-1043f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1360f, -576f) - _wgslsmith_f_op_f32(-1257f + -1000f))), all(vec2<bool>(false, any(vec4<bool>(true, true, true, true)))), select(vec3<bool>(true, true, any(vec3<bool>(false, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, false, false)), func_3(Struct_3(Struct_1(vec2<f32>(-242f, -205f), false, vec3<bool>(true, false, true), false), Struct_2(vec4<i32>(1i, 0i, -1i, 1i), 16119i), false, vec4<u32>(u_input.a, u_input.c.x, 1u, 1u), Struct_1(vec2<f32>(531f, 334f), true, vec3<bool>(false, true, true), false)))), false), Struct_2(~reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), -(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-1i, 0i)))), !any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false))) != false, ~firstLeadingBit(vec4<u32>(~15421u, min(u_input.b, u_input.c.x), max(0u, u_input.c.x), u_input.c.x)), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f + -805f), 169f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1395f, 1090f) - vec2<f32>(1432f, -682f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-938f, -938f) - vec2<f32>(132f, -1241f)), vec2<bool>(true, true)))), false, vec3<bool>(any(vec2<bool>(false, true)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)), true), true));
    let var_1 = var_0.b;
    let var_2 = 0u;
    var var_3 = var_0.e.c.zz;
    var var_4 = Struct_1(vec2<f32>(var_0.a.a.x, 1825f), true, var_0.a.c, -2069i <= var_1.a.x);
    return Struct_1(var_4.a, any(vec4<bool>(var_3.x, !select(true, var_0.e.b, var_0.a.d), any(select(var_0.e.c.zx, vec2<bool>(var_3.x, var_0.c), var_4.b)), var_0.a.d)), !(!vec3<bool>(true, var_0.e.b, !var_3.x)), countOneBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-53252i, var_0.b.a.x, var_1.b, 1i), var_0.b.a), ~var_1.a.x, i32(-1i) * -1i)) <= var_0.b.b);
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = func_2();
    var var_1 = -(arg_0 & arg_0);
    var_1 = _wgslsmith_mod_i32(arg_0, 2147483647i);
    let var_2 = _wgslsmith_mod_u32(~u_input.a, max(u_input.b, ~27624u));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1576f, -666f, var_0.a.x))))) + vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(trunc(-823f))))));
    return -1404f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1004f, -285f)) * -205f), _wgslsmith_f_op_f32(max(1942f, _wgslsmith_f_op_f32(480f - -238f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(9817i))))))), func_3(Struct_3(func_2(), Struct_2(vec4<i32>(2147483647i, -2147483647i, 27998i, -35573i) >> (vec4<u32>(10190u, u_input.a, u_input.c.x, u_input.a) % vec4<u32>(32u)), _wgslsmith_add_i32(-13180i, 6611i)), select(true, false, false), ~(~vec4<u32>(4294967295u, u_input.a, u_input.c.x, u_input.a)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-471f, -1217f)), false, vec3<bool>(true, true, true), true))), !select(select(func_2().c, vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec4<bool>(true, false, false, false)), true), true), true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-28351i, 1i), vec2<i32>(43346i, -2147483647i)), _wgslsmith_clamp_i32(1i, i32(-1i) * -1726i, countOneBits(-2147483647i)), 1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-65453i, 7769i << (u_input.c.x % 32u), 3027i), vec3<i32>(_wgslsmith_mult_i32(0i, -1i), ~(-27307i), 2147483647i)) << (max(firstLeadingBit(vec3<u32>(u_input.b, u_input.a, 12545u)) & (vec3<u32>(u_input.a, 53673u, u_input.a) | vec3<u32>(u_input.a, u_input.a, u_input.b)), ~(~vec3<u32>(6925u, u_input.c.x, 27116u))) % vec3<u32>(32u)));
}

