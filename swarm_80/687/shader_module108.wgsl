struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4) -> u32 {
    let var_0 = countOneBits(vec4<u32>(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0.a.zwx)), _wgslsmith_clamp_u32(27146u, ~u_input.c, firstLeadingBit(0u)), arg_0.a.x, ~83215u));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1404f, arg_1.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, arg_1.a) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, arg_1.a) * vec2<f32>(-350f, 1542f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, 1245f) - vec2<f32>(177f, arg_1.a)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-263f, arg_1.a))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1231f, arg_1.a))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-857f, arg_1.a))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-608f, arg_1.a))), true))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1135f, -648f) + vec2<f32>(arg_1.a, 1521f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, arg_1.a) * vec2<f32>(arg_1.a, arg_1.a)))))));
    let var_2 = !arg_0.b;
    var var_3 = _wgslsmith_mult_i32(~(-28950i), max(2147483647i, min(~u_input.a.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(59100i, 2147483647i, u_input.a.x), u_input.a.www))));
    var_3 = -1i;
    return ~4294967295u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-15675i, min(~(-arg_0.a), -11255i)), -(~vec2<i32>(~u_input.a.x, select(-21832i, u_input.b.x, arg_0.d.x))), ~(~_wgslsmith_div_vec2_i32(u_input.a.wx, u_input.a.ww)) >> (min(arg_0.b.xz, arg_0.b.yz) % vec2<u32>(32u)));
    let var_1 = ~(~(~vec4<i32>(1i, -30374i, _wgslsmith_add_i32(-24624i, -30931i), select(-1i, -40884i, false))));
    var var_2 = u_input.b.ywx;
    let var_3 = Struct_3(~(~(~_wgslsmith_dot_vec2_u32(arg_0.b.xy, vec2<u32>(4294967295u, 0u)))), arg_0.d.xxx, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_2), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1442f, -223f, arg_0.d.x)), arg_2.x, arg_2.x, -159f) - arg_2), vec4<bool>(false, arg_0.d.x && true, select(true, arg_0.d.x, arg_0.d.x) && (arg_0.d.x || false), arg_0.d.x))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.c.x, arg_2.x), _wgslsmith_f_op_vec2_f32(select(arg_2.zz, vec2<f32>(-708f, 951f), arg_0.d.x)), !arg_0.d.x)) - arg_0.c.xz), ~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, var_1), vec4<i32>(var_2.x, 2147483647i, 11401i, var_2.x))), _wgslsmith_f_op_vec4_f32(-arg_2));
    let var_4 = -1291f;
    return abs(abs(_wgslsmith_div_u32(_wgslsmith_mod_u32(37901u, func_2(Struct_5(vec4<u32>(4294967295u, arg_0.b.x, 0u, 38046u), vec3<bool>(arg_0.d.x, arg_0.d.x, false)), arg_1)), 4294967295u)));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = min(u_input.a.x, max(~1i, -u_input.a.x)) >> ((func_2(Struct_5(firstLeadingBit(vec4<u32>(arg_0, 1u, u_input.c, u_input.c)), vec3<bool>(true, true, true)), Struct_4(_wgslsmith_f_op_f32(sign(-730f)))) >> ((~20437u >> (func_3(Struct_1(1i, vec3<u32>(10760u, 40274u, 15565u), vec4<f32>(-2331f, 864f, -925f, -1250f), vec4<bool>(false, true, true, true)), Struct_4(-1163f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1248f, 221f, -1029f, 1099f) - vec4<f32>(309f, 1252f, 151f, -1000f))) % 32u)) % 32u)) % 32u);
    return Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1085f - -186f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(853f)), 881f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(552f, -1000f) * _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -432f), vec2<f32>(159f, 468f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(196f, 684f), vec2<f32>(-1161f, 1551f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1566f, -201f)))))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = func_1(u_input.c);
    var_1 = func_1(var_0);
    var var_2 = Struct_4(var_1.a.x);
    let var_3 = -(~(-_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-35278i, 0i, var_1.b.x, var_1.b.x), u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a.x, var_1.b.x, 77102i), var_1.b))));
    let var_4 = Struct_1(0i, min(~_wgslsmith_mult_vec3_u32(select(vec3<u32>(12576u, 1u, var_0), vec3<u32>(0u, 0u, var_0), true), min(vec3<u32>(0u, 1u, 1u), vec3<u32>(var_0, 1u, 104829u))), abs(min(vec3<u32>(u_input.c, 4294967295u, 1u), countOneBits(vec3<u32>(var_0, u_input.c, 47501u))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-665f, var_2.a, var_2.a, var_2.a), vec4<f32>(var_1.a.x, var_2.a, var_1.a.x, var_1.a.x), false)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(831f, 1517f, var_1.a.x, var_1.a.x))), vec4<f32>(var_1.a.x, var_2.a, -869f, 244f))))), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), true))), select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), false), !vec4<bool>(select(true, true, true), true, all(vec4<bool>(false, false, true, false)), true), !vec4<bool>(var_1.a.x != var_1.a.x, true, true, true)));
    var var_5 = var_4.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_4.c.x - -826f), 735f))))), vec4<u32>(26073u, 1u, func_3(Struct_1(1i, vec3<u32>(u_input.c, u_input.c, u_input.c), vec4<f32>(-425f, -749f, 1821f, var_2.a), vec4<bool>(var_4.d.x, var_4.d.x, false, var_4.d.x)), Struct_4(-879f), _wgslsmith_f_op_vec4_f32(floor(var_4.c))) >> (var_4.b.x % 32u), ~(~(~79574u))));
}

