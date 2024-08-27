struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
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

var<private> global0: f32 = 428f;

var<private> global1: bool = true;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> bool {
    let var_0 = Struct_3(~min(~(~vec4<u32>(arg_1.b.a, u_input.a.x, u_input.a.x, 37835u)), vec4<u32>(~3131u, u_input.a.x, 0u, 1u)), !select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), countOneBits(12268u) >= (83086u ^ arg_1.b.d)));
    var var_1 = Struct_3(_wgslsmith_clamp_vec4_u32(~max(var_0.a, vec4<u32>(24380u, 1u, 4000u, 25192u)), vec4<u32>(22126u, firstTrailingBit(37656u), 1u, _wgslsmith_clamp_u32(var_0.a.x, var_0.a.x ^ 0u, _wgslsmith_clamp_u32(14839u, 1u, u_input.a.x))), var_0.a), vec2<bool>(false, all(vec4<bool>(!var_0.b.x, 1i < arg_1.e, true, any(vec3<bool>(var_0.b.x, true, var_0.b.x))))));
    global0 = -1000f;
    global0 = -340f;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-151f, arg_1.a.x, arg_1.a.x, -1000f), vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, -671f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(1324f - arg_1.a.x), _wgslsmith_f_op_f32(select(arg_1.a.x, 1655f, true)), _wgslsmith_f_op_f32(-arg_1.a.x)))));
    return var_1.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> u32 {
    let var_0 = true;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
    global1 = all(select(select(vec2<bool>(any(vec4<bool>(var_0, false, var_0, true)), func_3(Struct_1(u_input.e.x), Struct_4(vec2<f32>(arg_1, -1002f), arg_0, arg_0.c.x, u_input.c.x, u_input.b))), !select(vec2<bool>(var_0, var_0), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(var_0, false), vec2<bool>(var_0, true), var_0)), !select(!vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), true), select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), true)), false));
    let var_1 = _wgslsmith_add_u32(u_input.c.x, 4294967295u);
    global1 = true & var_0;
    return select(min(~u_input.c.x, _wgslsmith_add_u32(arg_0.c.x, select(13087u, 106214u, false))), _wgslsmith_div_u32(0u, ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_0.a, 22088u, u_input.c.x), vec4<u32>(u_input.a.x, var_1, arg_0.d, 21438u)), _wgslsmith_clamp_u32(var_1, u_input.a.x, arg_0.c.x), select(var_0, var_0, true))), any(!(!(!vec3<bool>(false, true, var_0)))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: i32) -> Struct_1 {
    let var_0 = 0u < func_2(Struct_2(1u, vec4<i32>(select(-2147483647i, -1171i, false), 5722i, abs(-36007i), arg_0), reverseBits(firstLeadingBit(vec3<u32>(u_input.c.x, u_input.a.x, u_input.c.x))), _wgslsmith_add_u32(firstTrailingBit(u_input.a.x), abs(4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-363f, _wgslsmith_f_op_f32(f32(-1f) * -949f)))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(288f, 360f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-215f, arg_1) * vec2<f32>(-992f, arg_1)))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(984f, _wgslsmith_f_op_f32(select(866f, arg_1, true)))))), Struct_2(u_input.a.x, _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, 16174i, -9732i, u_input.d), ~vec4<i32>(arg_0, arg_0, 2147483647i, -48168i)), vec4<i32>(52599i, u_input.b, 36328i, 9932i) | vec4<i32>(0i, -2147483647i, 19582i, u_input.b)), abs(~_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(0u, 6436u, 121u))), ~(firstTrailingBit(u_input.a.x) ^ ~61380u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 70807u, u_input.a.x, 76924u), vec4<u32>(17573u, 20106u, u_input.c.x, u_input.c.x)), vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, u_input.a.x) << (vec4<u32>(60835u, u_input.a.x, 1u, 0u) % vec4<u32>(32u))), vec4<u32>(~u_input.c.x, _wgslsmith_sub_u32(u_input.a.x, 6840u), _wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.a), u_input.a.x << (37553u % 32u))) >> (firstLeadingBit(49795u) % 32u), u_input.c.x, -_wgslsmith_div_i32(select(-40363i, 1i, true), 7688i) | -45006i);
    return Struct_1(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(abs(u_input.e.x), 1039f, u_input.b);
    var var_1 = Struct_3(~(~firstLeadingBit(vec4<u32>(23744u, u_input.a.x, 78987u, 62568u))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, func_3(Struct_1(8179i), Struct_4(vec2<f32>(316f, 738f), Struct_2(4998u, vec4<i32>(var_0.a, 42477i, u_input.d, -41883i), u_input.c, 4386u), u_input.a.x, u_input.a.x, 66532i))), vec2<bool>(any(vec2<bool>(false, false)), all(vec4<bool>(false, false, false, false)))));
    var var_2 = Struct_3(vec4<u32>(~reverseBits(abs(u_input.a.x)), min(~var_1.a.x, _wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(u_input.c.x, u_input.c.x, 0u, 9221u))) << (123876u % 32u), u_input.a.x, select(var_1.a.x, 100242u, var_1.b.x)), vec2<bool>(any(var_1.b), 0u < abs(_wgslsmith_clamp_u32(20154u, 3574u, 29964u))));
    var var_3 = -2528f;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1292f, 1094f, 1606f, 2190f)))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-150f, 1515f, -1595f, -1000f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(767f, -970f, -205f, -1095f), vec4<f32>(-1000f, -1574f, 2391f, -1110f), vec4<bool>(true, false, var_2.b.x, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(firstTrailingBit(max(vec4<i32>(var_0.a, u_input.d, u_input.d, 8181i) ^ vec4<i32>(u_input.d, -1i, u_input.b, var_0.a), firstLeadingBit(vec4<i32>(u_input.b, 1i, u_input.e.x, var_0.a)))), _wgslsmith_mod_vec4_i32(countOneBits(-vec4<i32>(u_input.e.x, u_input.b, u_input.e.x, u_input.b)), vec4<i32>(-var_0.a, -u_input.d, 0i, abs(-19363i)))));
}

