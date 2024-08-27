struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: u32,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32, arg_1: i32) -> i32 {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1343f)), -289f, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -222f) + _wgslsmith_f_op_f32(538f - 1000f))) >= 1618f, false);
    var_0 = vec2<bool>(true, var_0.x);
    let var_1 = _wgslsmith_add_u32(~28092u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, u_input.a.x, 0u, u_input.d)), vec4<u32>(1u, 1u, ~u_input.a.x, min(4294967295u, 1690u))) | 26523u);
    var_0 = select(select(!(!vec2<bool>(var_0.x, var_0.x)), select(select(vec2<bool>(true, true), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(false, false)), select(vec2<bool>(var_0.x, false), vec2<bool>(false, false), var_0.x)), vec2<bool>(true, true), any(vec2<bool>(true, false))), any(vec2<bool>(true, true))), vec2<bool>(false, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-955f)) * 1139f)) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-251f * -944f), _wgslsmith_f_op_f32(1276f - -221f))));
    let var_2 = Struct_2(min(_wgslsmith_dot_vec4_i32(-(vec4<i32>(2147483647i, 7467i, -1i, arg_0) << (vec4<u32>(var_1, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), vec4<i32>(max(-2225i, u_input.b.x), -arg_1, arg_1, arg_1)), _wgslsmith_sub_i32(~min(2147483647i, -13185i), countOneBits(~(-1i)))));
    return u_input.c >> (u_input.d % 32u);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> vec3<f32> {
    let var_0 = Struct_4(Struct_2(func_3(-9281i, _wgslsmith_div_i32(-1i, ~0i))), vec3<bool>(arg_1, !all(vec3<bool>(arg_1, false, arg_1)), _wgslsmith_f_op_f32(sign(-170f)) < arg_3.x), u_input.a, select(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1), false), !vec2<bool>(true, arg_1), _wgslsmith_f_op_f32(-arg_3.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(374f + 525f) - -1030f)), firstTrailingBit(firstTrailingBit(vec3<i32>(-23757i, 2147483647i, -2147483647i) & vec3<i32>(0i, 2147483647i, u_input.b.x))) & -select(countOneBits(arg_2.b), vec3<i32>(u_input.c, -35105i, arg_2.c), vec3<bool>(arg_1, arg_1, true)));
    var var_1 = vec4<bool>(var_0.b.x, false, true == any(select(!vec4<bool>(var_0.b.x, true, var_0.d.x, var_0.b.x), select(vec4<bool>(true, arg_1, arg_1, var_0.d.x), vec4<bool>(arg_1, arg_1, false, var_0.d.x), false), true)), !var_0.b.x);
    var var_2 = Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_3.x))))), abs(-u_input.b), _wgslsmith_clamp_i32(-42155i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-38536i, arg_2.c, 5681i, arg_2.b.x), vec4<i32>(-1i, var_0.a.a, -11060i, 16916i)), vec4<i32>(arg_2.d.x, arg_2.b.x, 6886i, -1i)), func_3(var_0.e.x, arg_2.d.x) | _wgslsmith_mult_i32(u_input.c, -1i)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-41538i, var_0.a.a, arg_2.b.x), -arg_2.d), ~vec3<i32>(arg_2.b.x, 1i, var_0.a.a))));
    let var_3 = Struct_3(var_2.a, ~u_input.e);
    var var_4 = Struct_5(Struct_1(arg_3.x, firstLeadingBit(vec3<i32>(-26460i, 22748i, 2147483647i)), var_2.a.d.x, ~(~(vec3<i32>(var_3.a.d.x, 0i, 0i) << (vec3<u32>(arg_0, 25911u, var_0.c.x) % vec3<u32>(32u))))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a), -453f, var_4.a.a));
}

fn func_1(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_u32(u_input.d, u_input.d);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(~(~(~4294967295u)), false, arg_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1237f, 900f, arg_0.a.a, arg_0.a.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a, arg_0.a.a, 2085f, arg_0.a.a)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a.a, arg_0.a.a, arg_0.a.a, arg_0.a.a)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.a, arg_0.a.a, arg_0.a.a) + vec3<f32>(-682f, arg_0.a.a, arg_0.a.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(195f, arg_0.a.a, arg_0.a.a) - vec3<f32>(-558f, 951f, 835f))), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))))));
    var var_2 = var_1;
    let var_3 = arg_0;
    let var_4 = var_0;
    return !select(!vec3<bool>(any(vec2<bool>(false, false)), true, true), vec3<bool>(true, true, true), !all(vec3<bool>(true, true, true)) || true);
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<bool>, arg_3: u32) -> Struct_2 {
    return Struct_2(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_4(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1155f) - _wgslsmith_f_op_f32(-1598f + -154f)) + 185f), func_1(Struct_3(Struct_1(-1819f, vec3<i32>(2147483647i, u_input.c, u_input.e), -2147483647i, u_input.b), _wgslsmith_mod_i32(35440i, -24868i))), _wgslsmith_div_u32(~u_input.a.x, abs(u_input.a.x))), vec3<bool>(true, !(!any(vec2<bool>(true, false))), false), u_input.a, func_1(Struct_3(Struct_1(_wgslsmith_f_op_f32(-1047f - -2319f), vec3<i32>(u_input.b.x, 2147483647i, u_input.c), u_input.b.x, ~u_input.b), u_input.b.x)).xy, _wgslsmith_clamp_vec3_i32(-_wgslsmith_add_vec3_i32(~vec3<i32>(-1i, 4152i, u_input.c), ~u_input.b), u_input.b, ~u_input.b & u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~select(vec4<u32>(u_input.d, 0u, countOneBits(u_input.d), u_input.a.x << (u_input.a.x % 32u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c.x, u_input.a.x, var_0.c.x, 1u), vec4<u32>(u_input.a.x, var_0.c.x, var_0.c.x, 51655u)), all(vec4<bool>(var_0.b.x, false, false, var_0.d.x))), vec2<i32>(-var_0.a.a, -2147483647i & (-2147483647i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(23374u, 4294967295u, u_input.d, 0u), vec4<u32>(var_0.c.x, 1u, 1u, u_input.a.x)) % 32u))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(362f * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(629f + -1020f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(352f, -1232f, var_0.d.x)) + _wgslsmith_f_op_f32(645f * 1551f)), _wgslsmith_f_op_f32(-445f * _wgslsmith_div_f32(-1433f, -1635f)))), max(u_input.d, ~1u));
}

