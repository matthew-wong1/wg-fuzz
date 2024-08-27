struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> bool {
    var var_0 = 2147483647i;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f + -241f))), !select(all(vec2<bool>(true, true)), true, true));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1191f, 609f)));
    var_0 = abs(i32(-1i) * -2147483647i);
    var var_3 = _wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(u_input.a, u_input.a), abs(vec4<i32>((u_input.e >> (u_input.d.x % 32u)) | _wgslsmith_div_i32(-25412i, 2147483647i), abs(~u_input.b), 1i, u_input.b)));
    return any(vec4<bool>(_wgslsmith_f_op_f32(-var_2) < _wgslsmith_f_op_f32(f32(-1f) * -794f), any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(var_1.b, var_1.b))), (var_1.a >= var_2) && (false & var_1.b), !all(vec3<bool>(var_1.b, var_1.b, false)))) || (~(~max(var_3.x, 39692i)) < _wgslsmith_div_i32(-9143i, u_input.e));
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = !vec4<bool>(false, func_3(~(vec3<u32>(0u, 69037u, 56194u) << (vec3<u32>(u_input.d.x, 26349u, 0u) % vec3<u32>(32u)))), false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    let var_1 = vec2<bool>(!(var_0.x || select(select(true, var_0.x, false), var_0.x, var_0.x & var_0.x)), func_3(vec3<u32>(~0u, 0u, u_input.d.x)));
    let var_2 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(3881u, 0u, u_input.d.x, u_input.d.x), ~max(vec4<u32>(29522u, u_input.d.x, u_input.d.x, 4294967295u), vec4<u32>(32561u, u_input.d.x, 52962u, u_input.d.x))), select(vec4<u32>(~0u, u_input.d.x, 0u, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(0u, u_input.d.x))), vec4<u32>(~u_input.d.x, min(u_input.d.x, 25268u), 43089u, u_input.d.x), all(vec2<bool>(false, var_0.x))));
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(764f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(166f, 590f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1450f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(329f)))))), _wgslsmith_f_op_f32(f32(-1f) * -452f));
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-511f, -1283f, 1001f) * vec3<f32>(-981f, var_3.x, -979f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_3.x, var_3.x) + vec3<f32>(-858f, var_3.x, var_3.x))))));
    return Struct_2(Struct_1(1034f, any(!var_0.wxz) | var_0.x), !(!(!(!var_1.x))));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(~(~u_input.a.x), _wgslsmith_mult_i32(-30130i, _wgslsmith_sub_i32(1i, 0i)), -(1i << (u_input.d.x % 32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b | -24994i, select(1i, 0i, true), -47579i ^ u_input.b), select(-u_input.a.wyz, vec3<i32>(u_input.a.x, 27080i, -45480i) << (vec3<u32>(u_input.d.x, 0u, 68775u) % vec3<u32>(32u)), all(vec3<bool>(true, false, false))))));
    var var_1 = Struct_3(var_0.a, func_2(1i).a, 15685u, true & all(vec4<bool>(true, true, true, true)));
    var_1 = Struct_3(Struct_1(-942f, true && all(vec2<bool>(true, true))), Struct_1(584f, ~(u_input.a.x & u_input.b) >= 2147483647i), var_1.c, true);
    var_1 = Struct_3(Struct_1(-1366f, -276f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), func_2(_wgslsmith_dot_vec3_i32(u_input.a.xwx, ~(-vec3<i32>(-1i, 2147483647i, 0i)))).a, ~select(u_input.d.x, ~21424u, true), var_1.d);
    var_1 = Struct_3(func_2(firstTrailingBit(_wgslsmith_add_i32(u_input.b & 1i, ~0i))).a, Struct_1(1328f, !all(vec4<bool>(false, var_0.a.b, var_0.b, var_1.b.b))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.c, var_1.c), vec2<u32>(var_1.c, u_input.d.x)), ~u_input.d), abs(~(~u_input.d.x)), abs(_wgslsmith_mod_u32(1u, var_1.c) >> (~0u % 32u))), !any(select(select(vec2<bool>(var_1.d, false), vec2<bool>(true, var_1.a.b), vec2<bool>(var_1.b.b, true)), select(vec2<bool>(var_1.d, var_0.a.b), vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_1.d, false)), true)));
    return abs(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~0u ^ _wgslsmith_add_u32(u_input.d.x | u_input.d.x, func_1(285f))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1103f), !(0u == u_input.d.x));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-var_1.a))) * var_1.a)), false);
    let var_2 = func_2(_wgslsmith_mod_i32(~u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-1208i, -4221i), u_input.c.x, u_input.e, 1i), u_input.a)));
    var_0 = 53111u;
    var_1 = func_2(u_input.c.x).a;
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(51186i & u_input.c.x, u_input.e), ~u_input.e, u_input.c.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.b), -1i) | _wgslsmith_mod_i32(abs(u_input.b), u_input.c.x), 17872i, u_input.c.x));
}

