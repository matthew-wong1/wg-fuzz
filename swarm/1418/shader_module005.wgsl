struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -15620i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = vec4<u32>(35038u, ~(~(~u_input.a)), u_input.a, firstTrailingBit(_wgslsmith_mod_u32(u_input.a, 14999u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3))))), vec3<i32>(-_wgslsmith_add_i32(_wgslsmith_mod_i32(36020i, arg_2.a.b.x), -16425i), arg_2.a.b.x, _wgslsmith_mult_i32(firstTrailingBit(arg_0.b.x), max(arg_2.a.b.x, arg_2.e.b.x)) ^ (i32(-1i) * -2147483647i)));
    var var_2 = false;
    var var_3 = arg_0;
    var_2 = false;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~var_0.xww, vec3<u32>(1u, _wgslsmith_mult_u32(14560u, 32042u), select(~u_input.a, u_input.a, select(arg_2.b, arg_2.b, false)))), var_0.xww);
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = arg_0.e.b.x;
    global0 = i32(-1i) * -37621i;
    let var_1 = vec4<bool>(false, false | ((~82591u < func_3(arg_0.a, arg_0.a.b.yz, arg_0, arg_0.a.a)) | (arg_0.b && !arg_0.b)), false && any(select(select(vec4<bool>(true, arg_0.b, false, false), vec4<bool>(false, arg_0.b, false, false), vec4<bool>(true, arg_0.b, true, false)), select(vec4<bool>(false, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(false, arg_0.b, false, arg_0.b), vec4<bool>(false, arg_0.b, arg_0.b, true)), true)), arg_0.b);
    let var_2 = arg_0;
    global0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a.b.x, -34359i, -11769i, 1i), vec4<i32>(arg_0.e.b.x, -23838i, arg_0.a.b.x, 27528i), vec4<i32>(var_2.e.b.x, var_2.e.b.x, -2147483647i, var_2.e.b.x)), vec4<i32>(arg_0.a.b.x, -14731i, var_2.a.b.x, 2147483647i) & vec4<i32>(-12212i, 0i, var_2.a.b.x, 7739i))), select(~vec4<i32>(0i, var_2.e.b.x, var_2.e.b.x, var_2.a.b.x), -vec4<i32>(arg_0.a.b.x, arg_0.e.b.x, -1i, 0i) >> (vec4<u32>(u_input.a, 3556u, 25571u, 4294967295u) % vec4<u32>(32u)), false)), arg_0.a.b.x);
    return vec3<bool>(var_1.x, all(!select(var_1.ywx, !vec3<bool>(var_1.x, var_1.x, arg_0.b), !var_1.x)), all(!var_1.zx));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    global0 = max(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.x, -(~arg_1.b.x), 2147483647i), ~(-arg_1.b)), ~countOneBits(max(-2147483647i, arg_1.b.x)));
    var var_0 = Struct_2(arg_0, arg_3.x, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1891f, arg_1.a, arg_3.x)))), _wgslsmith_f_op_f32(arg_1.a + 696f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(293f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - arg_2.a) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_0.a)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1268f + -316f), _wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.a)) + 1459f), arg_1.a), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(floor(244f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a * 1333f))), vec3<i32>(~select(arg_2.b.x, arg_1.b.x, false), -19030i, _wgslsmith_clamp_i32(arg_0.b.x, _wgslsmith_dot_vec3_i32(arg_1.b, vec3<i32>(arg_2.b.x, arg_1.b.x, arg_2.b.x)), -31886i))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_1.a), arg_2.b), var_0.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.c + var_0.d), var_0.c, arg_3)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(526f, -1658f, 718f))))))), _wgslsmith_f_op_vec3_f32(-var_0.c), Struct_1(_wgslsmith_f_op_f32(-107f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a * 1000f)))), min(arg_0.b, arg_0.b)));
    var var_2 = vec3<i32>(-(~_wgslsmith_add_i32(-2147483647i, _wgslsmith_mod_i32(1i, -2147483647i))), arg_1.b.x, max(arg_0.b.x, _wgslsmith_clamp_i32(var_0.e.b.x, _wgslsmith_sub_i32(arg_0.b.x, 9154i >> (u_input.a % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.x, -32913i) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), -vec2<i32>(-61899i, -2147483647i)))));
    var_0 = Struct_2(var_0.a, true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a, -1000f, 3612f) - _wgslsmith_f_op_vec3_f32(var_1.c * var_1.c)))), var_0.d, arg_0);
    return 0u;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32) -> i32 {
    global0 = 55291i;
    var var_0 = vec4<u32>(u_input.a, 43926u, u_input.a, ~_wgslsmith_add_u32(~28760u, min(0u, u_input.a))) & (_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u)), vec4<u32>(0u, 0u, u_input.a, 3247u)), _wgslsmith_mod_vec4_u32(vec4<u32>(24600u, u_input.a, 20822u, 64613u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, 27045u)) & ~vec4<u32>(58658u, 4294967295u, u_input.a, u_input.a)) ^ vec4<u32>(u_input.a, ~(9014u & u_input.a), 1087u, firstLeadingBit(51661u)));
    global0 = _wgslsmith_div_i32(0i, -2147483647i);
    var_0 = vec4<u32>(~1u, func_4(Struct_1(680f, ~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.a.b.x, arg_1.a.b.x, 14550i), vec3<i32>(arg_1.a.b.x, -10142i, arg_1.a.b.x))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_2, 1424f)), 1f)), ~vec3<i32>(arg_1.a.b.x, 1i, -9832i)), Struct_1(_wgslsmith_f_op_f32(abs(arg_1.d.x)), arg_1.e.b >> (select(vec3<u32>(4294967295u, 0u, 61368u), vec3<u32>(u_input.a, 0u, 0u), arg_0.x) % vec3<u32>(32u))), func_2(arg_1)), firstLeadingBit(~0u), 25558u);
    var_0 = vec4<u32>(16578u, min(u_input.a, _wgslsmith_sub_u32(~var_0.x, ~1u)), ~(~(~firstTrailingBit(var_0.x))), u_input.a);
    return _wgslsmith_dot_vec4_i32(~(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.b.x, -57511i, -31242i, arg_1.e.b.x), -vec4<i32>(-1i, 2147483647i, 0i, arg_1.a.b.x))), abs(firstLeadingBit(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(2147483647i, -2147483647i, 27929i, -29631i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.e.b.x, -24059i, arg_1.e.b.x, 1i), vec4<i32>(-2147483647i, arg_1.a.b.x, arg_1.a.b.x, 1i), vec4<i32>(arg_1.a.b.x, 1i, -2147483647i, 29631i))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = ~vec3<i32>(var_0, var_0, 2147483647i << (((u_input.a << (u_input.a % 32u)) & u_input.a) % 32u));
    let var_2 = 27893u ^ _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, 4294967295u), 44100u);
    var var_3 = Struct_1(-1000f, -vec3<i32>(~(~var_1.x), ~func_1(vec4<bool>(false, false, true, true), Struct_2(Struct_1(580f, vec3<i32>(-3892i, var_0, 6135i)), false, vec3<f32>(139f, -311f, -623f), vec3<f32>(-393f, 1000f, 639f), Struct_1(167f, vec3<i32>(-1i, 2147483647i, var_1.x))), -514f), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs((i32(-1i) * -2147483647i) << (u_input.a % 32u))));
}

