struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 29786u), arg_1.yx) & ~arg_1.xz;
    var_0 = vec2<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1.x, var_0.x, var_0.x), vec3<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(arg_1.zz, arg_1.yz), _wgslsmith_mult_u32(u_input.b.x, 1u))), var_0.x), arg_1.x);
    let var_1 = var_0.x;
    var_0 = vec2<u32>(arg_1.x, firstTrailingBit(53144u));
    let var_2 = _wgslsmith_mult_u32(var_0.x, abs(27399u));
    return vec3<bool>(select(true, select(true, false, false) != all(vec2<bool>(false, false)), all(vec3<bool>(true, true, true))) | !all(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), false, false);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = Struct_2(select(vec2<bool>(all(select(vec2<bool>(arg_1.a.x, arg_1.a.x), vec2<bool>(arg_1.a.x, false), vec2<bool>(arg_1.a.x, true))), false), arg_1.a.yx, arg_1.a.yx), -1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-864f, _wgslsmith_div_f32(1779f, 323f), _wgslsmith_f_op_f32(select(-934f, arg_0.a.x, true)), 1000f))), 1126f, !select(!select(arg_1.a, vec3<bool>(arg_1.a.x, true, false), arg_1.a.x), func_3(_wgslsmith_mod_i32(-27531i, -1i), vec3<u32>(3461u, u_input.c, u_input.b.x)), func_3(_wgslsmith_clamp_i32(-46962i, 14980i, u_input.a), vec3<u32>(0u, 5401u, u_input.b.x))));
    var var_1 = arg_0;
    let var_2 = vec3<bool>(arg_1.a.x, true, (all(vec2<bool>(var_0.e.x, var_0.e.x)) || true) == var_0.e.x);
    var var_3 = -u_input.a;
    var_1 = arg_0;
    return var_0.c;
}

fn func_1() -> bool {
    var var_0 = 1000f;
    let var_1 = Struct_2(vec2<bool>(!(u_input.a >= _wgslsmith_clamp_i32(u_input.a, u_input.a, 1i)), true), -839f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-957f, -1763f, -1000f)))), Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false))))), 464f, vec3<bool>(false, (true && all(vec2<bool>(false, true))) | (1u <= (u_input.b.x ^ 61334u)), true));
    var var_2 = Struct_1(!(!(!select(var_1.e, vec3<bool>(false, var_1.a.x, false), true))));
    let var_3 = false || var_2.a.x;
    return func_3(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a | u_input.a, 2147483647i, u_input.a, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a, 41400i, 0i), abs(vec4<i32>(-1i, u_input.a, -1i, 2147483647i)))), -(~_wgslsmith_div_i32(u_input.a, u_input.a))), u_input.b >> ((u_input.b >> ((u_input.b | u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u))).x;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<bool>) -> vec3<f32> {
    var var_0 = 603u;
    var var_1 = -(min(vec2<i32>(u_input.a, arg_1) >> (u_input.b.xx % vec2<u32>(32u)), vec2<i32>(42691i, arg_1)) & ~(~vec2<i32>(77232i, arg_1))) ^ vec2<i32>(4206i, arg_1);
    var var_2 = arg_0.e.x;
    var_0 = u_input.b.x;
    let var_3 = ~(~u_input.b.x >> (~1u % 32u));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-119f - 113f) * 1f), _wgslsmith_f_op_f32(ceil(arg_0.c.x)), arg_0.d) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.d - 333f), _wgslsmith_f_op_f32(403f - 1753f))), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-333f - _wgslsmith_f_op_f32(-arg_0.b)))), arg_0.c.wzz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(vec2<bool>(true, false), _wgslsmith_f_op_f32(-1f), vec4<f32>(_wgslsmith_f_op_f32(1000f - -1517f), _wgslsmith_f_op_f32(f32(-1f) * -823f), 1f, _wgslsmith_f_op_f32(step(599f, -203f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1631f) - -1134f), vec3<bool>(true, func_1(), any(vec2<bool>(true, true)))), i32(-1i) * -13829i, !(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))))));
    var var_1 = vec3<bool>(func_3(u_input.a, ~vec3<u32>(u_input.b.x, 0u, 322u) << (~vec3<u32>(4294967295u, 46247u, 4294967295u) % vec3<u32>(32u))).x, u_input.a < -(~abs(u_input.a)), true);
    var var_2 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(1i, ~2525i), vec4<i32>(-u_input.a, _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a), _wgslsmith_dot_vec3_i32(~vec3<i32>(12337i, 0i, u_input.a), vec3<i32>(33141i, -1i, u_input.a)), ~(-2147483647i & u_input.a)) & _wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), ~vec4<i32>(u_input.a, u_input.a, 0i, -2147483647i), true), vec4<i32>(i32(-1i) * -16642i, ~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2316i, 0i), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)), 1i)));
}

