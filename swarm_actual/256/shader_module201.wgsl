struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<Struct_2, 3>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> vec3<f32> {
    global0 = array<Struct_2, 28>();
    var var_0 = vec2<i32>(1i, ~(~(~_wgslsmith_add_i32(64142i, 15980i))));
    var var_1 = arg_0.c;
    global0 = array<Struct_2, 28>();
    return _wgslsmith_f_op_vec3_f32(trunc(var_1.c));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<i32>) -> f32 {
    var var_0 = 1i;
    var_0 = ~2147483647i;
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, arg_0.c.x, arg_0.a.x) * vec3<f32>(-1037f, 1380f, arg_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-445f, 1000f, 2245f)))), !vec4<bool>(any(arg_0.b.zwz), false, any(arg_0.b), !arg_0.b.x), arg_0.a), arg_0, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1548f, arg_0.c.x, 760f))) + _wgslsmith_f_op_vec3_f32(func_3(global0[_wgslsmith_index_u32(~u_input.a.x, 28u)], vec3<bool>(true, arg_0.b.x, false)))), select(vec4<bool>(!arg_0.b.x, true, all(arg_0.b.wzy), true), select(vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x), !arg_0.b, arg_2.x >= 1i), (arg_2.x << (27498u % 32u)) > -43979i), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(abs(1002f)), _wgslsmith_f_op_f32(-arg_0.a.x)) - vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.x)), arg_1.x, _wgslsmith_f_op_f32(step(276f, 673f))))), -208f);
    var_0 = min(_wgslsmith_mod_i32(-2147483647i, arg_2.x & countOneBits(-71330i)), arg_2.x);
    let var_2 = 1000f;
    return arg_0.a.x;
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_2, 28>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-351f, _wgslsmith_f_op_f32(abs(429f)), _wgslsmith_f_op_f32(-809f + -160f), -1971f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2094f, 1815f, -1556f, 1659f) * vec4<f32>(-1067f, 601f, 1697f, 1210f)), vec4<f32>(338f, 1226f, -2508f, -1053f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(-325f, -754f, true)), _wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(-1025f, 405f, -878f), vec4<bool>(false, true, false, true), vec3<f32>(-121f, 1649f, -425f)), vec2<f32>(974f, -1559f), vec3<i32>(491i, 24426i, 16807i))), _wgslsmith_f_op_f32(f32(-1f) * -368f), 1234f), _wgslsmith_div_vec4_f32(vec4<f32>(-490f, -1518f, -170f, 910f), _wgslsmith_div_vec4_f32(vec4<f32>(-1337f, -451f, -2430f, 318f), vec4<f32>(119f, 1000f, -1860f, 2127f))), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true), true)))));
    let var_1 = global1[_wgslsmith_index_u32(abs(~1u), 3u)];
    var var_2 = var_1.a;
    var var_3 = ~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(~0i, _wgslsmith_mod_i32(-1i, -14357i), -2147483647i)), -vec3<i32>(_wgslsmith_mod_i32(-6397i, -24368i), 1i, _wgslsmith_add_i32(0i, 30774i)));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.c.a.x + 1588f))) * -748f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-643f))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(ceil(var_1.a.c.x))), all(vec4<bool>(var_2.b.x, true, var_1.a.b.x, var_2.b.x)))), -1162f), !select(!select(var_2.b, var_2.b, var_1.b.b), var_1.a.b, select(!var_2.b, !vec4<bool>(var_1.a.b.x, false, false, true), var_1.c.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(391f - -101f), var_0.x, _wgslsmith_f_op_f32(abs(380f)))), vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-722f * -1091f) * var_0.x), -135f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!(firstTrailingBit(1u) < u_input.e.x), !(!((u_input.a.x ^ u_input.a.x) == (u_input.e.x >> (93057u % 32u)))));
    var var_1 = Struct_2(func_1(), func_1(), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1277f, 573f, 806f) + vec3<f32>(-448f, 263f, -421f)))) * vec3<f32>(_wgslsmith_f_op_f32(-822f + -155f), -1510f, _wgslsmith_f_op_f32(f32(-1f) * -2641f))), func_1().b, _wgslsmith_f_op_vec3_f32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.e.x, 61752u), vec4<u32>(0u, 1u, u_input.a.x, 4294967295u)) ^ firstLeadingBit(120628u), 28u)], !func_1().b.zxw))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1187f + -153f)))));
    var_1 = Struct_2(var_1.b, var_1.a, var_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.c.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    global0 = array<Struct_2, 28>();
    var_1 = global0[_wgslsmith_index_u32(11007u, 28u)];
    var var_2 = vec4<u32>(46326u, _wgslsmith_dot_vec4_u32(~(~(~u_input.e)), abs(vec4<u32>(select(10603u, 11901u, var_1.a.b.x), u_input.a.x << (61615u % 32u), ~u_input.c.x, min(1u, 40184u)))), u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(u_input.b.x, u_input.c.x, u_input.b.x, 11443u))), u_input.d, 0u), firstTrailingBit(u_input.e.xwy)));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~min(vec2<u32>(u_input.d, u_input.e.x), u_input.b.ww), ~(~abs(vec2<u32>(1u, 36655u)))), select(u_input.a, _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.e.x, var_2.x), vec2<u32>(countOneBits(24337u), ~1u)), var_1.c.b.wy)), 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_add_i32(select(55127i, 1i, var_0.x), abs(16888i))), u_input.b.ywx);
}

