struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(99055u, 48865u, 46089u, 1u), vec4<u32>(0u, 37512u, 4294967295u, 2665u), vec4<u32>(38004u, 43522u, 47509u, 0u), vec4<u32>(1740u, 37086u, 4294967295u, 1u), vec4<u32>(25315u, 36709u, 36324u, 79356u), vec4<u32>(4294967295u, 85357u, 0u, 73121u), vec4<u32>(25986u, 4294967295u, 1u, 148u), vec4<u32>(56255u, 0u, 0u, 1u), vec4<u32>(4294967295u, 6858u, 1u, 70245u), vec4<u32>(5916u, 40293u, 49835u, 4294967295u), vec4<u32>(1u, 0u, 11952u, 12558u), vec4<u32>(40718u, 0u, 1u, 97905u), vec4<u32>(53736u, 0u, 1u, 18270u), vec4<u32>(99354u, 4294967295u, 92046u, 1u), vec4<u32>(4294967295u, 1u, 47148u, 0u), vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(52905u, 1u, 30180u, 0u), vec4<u32>(50524u, 46722u, 20323u, 26975u), vec4<u32>(71017u, 1u, 33439u, 4294967295u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2127f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(896f + -420f), 860f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(174f - 542f))) - _wgslsmith_f_op_f32(f32(-1f) * -604f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2359f) + 806f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f) + -1464f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -170f))))));
    var var_1 = vec3<i32>(~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.d.x, u_input.d.x, u_input.c.x), vec4<i32>(u_input.d.x, 0i, 14803i, -56112i), vec4<i32>(69016i, u_input.c.x, u_input.d.x, u_input.c.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 0i, 45905i, u_input.c.x))) | u_input.d.x, max(-1i, abs(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-4863i, -2147483647i, u_input.c.x), u_input.c)))), -1i);
    let var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-408f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - -1648f))), _wgslsmith_f_op_f32(f32(-1f) * -127f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-641f, -1236f, -597f) * vec3<f32>(-258f, 1000f, -2127f))))), 2147483647i);
    var var_3 = vec3<u32>(26023u, u_input.b.x, u_input.e);
    var var_4 = true;
    return Struct_2(21274i, _wgslsmith_f_op_vec2_f32(-var_2.a.xx));
}

fn func_3(arg_0: vec3<f32>) -> vec4<f32> {
    let var_0 = all(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), false), vec3<bool>(any(vec2<bool>(false, true)), all(vec3<bool>(false, true, false)), true), !any(vec2<bool>(true, true))), select(vec3<bool>(true, true, any(vec2<bool>(false, false))), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), all(vec4<bool>(true, false, true, false))));
    var var_1 = 0u;
    var_1 = 46133u;
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 1000f, arg_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-146f, 766f, arg_0.x, -296f) - vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))) + vec4<f32>(_wgslsmith_f_op_f32(min(-332f, arg_0.x)), _wgslsmith_f_op_f32(trunc(231f)), -145f, 197f))));
    let var_3 = true;
    return var_2.a.a;
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(var_0.b.x, var_0.b.x, -1045f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-926f, -1597f, var_0.b.x, var_0.b.x)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(620f, 118f, -2424f, arg_0)), vec4<f32>(723f, var_0.b.x, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1295f, 436f, var_0.b.x)) - _wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(arg_0, arg_0, arg_0))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1019f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(423f - -238f)), _wgslsmith_f_op_f32(-941f + _wgslsmith_f_op_f32(286f - arg_0)), -1580f))));
    var var_2 = select(select(vec3<bool>(true & any(vec2<bool>(true, false)), (41701u > u_input.e) || false, true), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), select(vec3<bool>(select(false, false, true), any(vec4<bool>(true, false, false, false)), any(vec2<bool>(false, false))), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true)))), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false))), false);
    var_2 = vec3<bool>(true, var_2.x, false);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(select(-298f, -1029f, true)), 478f, var_1.x);
    return _wgslsmith_clamp_u32(abs(_wgslsmith_div_u32(~u_input.a, ~25616u)), 0u, _wgslsmith_add_u32(~firstTrailingBit(u_input.e), 4294967295u) << (_wgslsmith_mult_u32(u_input.b.x, 1851u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 19>();
    let var_0 = 45521u;
    let var_1 = select(~func_1(_wgslsmith_f_op_f32(452f * -1078f)) > 82494u, false, false);
    let var_2 = vec3<bool>(any(select(select(select(vec2<bool>(var_1, true), vec2<bool>(true, true), vec2<bool>(true, false)), !vec2<bool>(var_1, var_1), vec2<bool>(true, var_1)), !vec2<bool>(var_1, true), !all(vec4<bool>(var_1, var_1, var_1, false)))), var_1, var_1);
    let var_3 = !var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, -23400i, ~_wgslsmith_div_i32(abs(u_input.d.x), max(2147483647i, u_input.c.x))), _wgslsmith_div_vec4_i32(firstLeadingBit(select(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.d.x) | vec4<i32>(1i, 36476i, 2147483647i, u_input.d.x), firstLeadingBit(vec4<i32>(0i, u_input.d.x, u_input.d.x, u_input.c.x)), false)), abs(min(~vec4<i32>(u_input.d.x, u_input.c.x, u_input.d.x, 0i), ~vec4<i32>(-1i, u_input.d.x, -4884i, u_input.d.x)))));
}

