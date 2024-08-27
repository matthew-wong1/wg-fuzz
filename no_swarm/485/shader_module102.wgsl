struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: vec3<f32> = vec3<f32>(-804f, -946f, -502f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -713f, 402f) * vec3<f32>(-1673f, global1.x, global1.x)), vec3<f32>(-437f, global1.x, global1.x), vec3<bool>(false, true, true))))));
    global0 = array<Struct_1, 30>();
    global1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-249f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(select(-1194f, 212f, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1108f, -421f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1542f, global1.x, 456f) - vec3<f32>(global1.x, -1348f, -268f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, -201f, 1086f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), global1.x, _wgslsmith_f_op_f32(-global1.x))) * vec3<f32>(global1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x - 838f), -108f)), _wgslsmith_f_op_f32(min(-945f, -234f))))));
    var var_0 = 15217i;
    let var_1 = ~_wgslsmith_add_i32(_wgslsmith_div_i32(abs(abs(arg_0.a.x)), ~(~50924i)), -(_wgslsmith_mod_i32(41568i, -2377i) << (u_input.b.x % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-935f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> f32 {
    global0 = array<Struct_1, 30>();
    let var_0 = true;
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-369f, _wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(arg_1 - -340f)) * _wgslsmith_f_op_vec3_f32(arg_0.yyz * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_0.x, 1459f), arg_0.ywz, false))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(74505u, 30u)])), _wgslsmith_f_op_f32(sign(-649f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1200f + _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(arg_1 - arg_1)), global1.x)));
}

fn func_4(arg_0: f32, arg_1: u32) -> u32 {
    global0 = array<Struct_1, 30>();
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(243f, global1.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -1038f), 1183f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(684f, global1.x, arg_0) * vec3<f32>(global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-303f, -1579f, 671f))), all(vec4<bool>(true, false, false, false))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1224f, global1.x, global1.x) - vec3<f32>(-1523f, global1.x, 1166f))))))));
    var var_0 = firstLeadingBit(u_input.c) | u_input.c;
    global0 = array<Struct_1, 30>();
    let var_1 = true;
    return ~arg_1;
}

fn func_1() -> bool {
    global1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 189f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1204f, 530f, global1.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-588f, -439f, global1.x) + vec3<f32>(328f, global1.x, 1917f)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) - _wgslsmith_f_op_f32(957f * global1.x)), -274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1012f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1762f, global1.x), vec3<f32>(-188f, -145f, global1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -275f, -314f))))))));
    let var_0 = _wgslsmith_mult_vec3_u32(min(vec3<u32>(~19558u, 12749u, func_4(_wgslsmith_f_op_f32(func_2(vec4<f32>(global1.x, 886f, 174f, global1.x), global1.x)), 1u)), u_input.b), ~u_input.b);
    var var_1 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c) << (vec2<u32>(_wgslsmith_mult_u32(0u, 60897u), _wgslsmith_add_u32(var_0.x, u_input.b.x)) % vec2<u32>(32u)), ~(~vec2<i32>(-49129i, u_input.c)) & (vec2<i32>(-1i) * -vec2<i32>(u_input.c, u_input.c))));
    let var_2 = vec2<i32>(~u_input.c, u_input.c) ^ var_1.a;
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(var_0.x), 4294967295u | var_0.x), 30u)];
    return (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(65352u, u_input.a.x, var_0.x, 38249u)), vec4<u32>(u_input.a.x, var_0.x, min(u_input.b.x, u_input.b.x), abs(37820u))) | func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(748f * global1.x))), select(var_0.x, var_0.x >> (var_0.x % 32u), true))) <= firstTrailingBit(0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, select(true, false, true)), vec2<bool>(func_1(), all(vec4<bool>(false, true, true, false)))));
    var var_1 = vec3<bool>(all(vec3<bool>((var_0.x | var_0.x) | var_0.x, 1038f > global1.x, var_0.x)), !var_0.x, !(!var_0.x) | false);
    var var_2 = var_0.x;
    var var_3 = max(_wgslsmith_mod_u32(countOneBits(~u_input.a.x), _wgslsmith_div_u32(u_input.a.x, firstTrailingBit(u_input.a.x)) >> (~(~u_input.a.x) % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(max(u_input.b | vec3<u32>(1u, 0u, 86006u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 21624u), vec3<u32>(47298u, 0u, u_input.b.x), u_input.b)), ~(~u_input.a), ~(~u_input.a)), ~firstTrailingBit(u_input.a)));
    var var_4 = !var_0.x;
    let var_5 = global0[_wgslsmith_index_u32(~1u, 30u)];
    var var_6 = min(vec3<u32>(~countOneBits(1u) | u_input.b.x, 9422u, ~(~u_input.b.x)), _wgslsmith_add_vec3_u32(~vec3<u32>(countOneBits(34002u), ~1u, 53288u), u_input.b));
    var var_7 = global0[_wgslsmith_index_u32(countOneBits(370u), 30u)];
    var_0 = var_1.xy;
    let x = u_input.a;
    s_output = StorageBuffer(~var_6.x);
}

