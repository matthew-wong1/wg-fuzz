struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<f32>, 10>;

var<private> global2: u32 = 41102u;

var<private> global3: array<vec4<bool>, 30>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(322f, _wgslsmith_f_op_f32(sign(-969f)), 1087f < arg_0)), _wgslsmith_div_f32(-620f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-arg_0));
    var var_1 = -vec3<i32>(u_input.a.x, 1i, reverseBits(_wgslsmith_div_i32(u_input.a.x, 1i)));
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(31042u, 1u), ~vec2<u32>(~select(34041u, 49376u, true), ~1u));
    let var_3 = global3[_wgslsmith_index_u32(max(firstTrailingBit(~(~var_2.x) << ((_wgslsmith_add_u32(0u, var_2.x) | 1u) % 32u)), var_2.x), 30u)];
    var var_4 = vec3<f32>(-342f, arg_0, _wgslsmith_f_op_f32(abs(-433f)));
    return 4294967295u;
}

fn func_3(arg_0: vec4<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-664f + -1000f) + _wgslsmith_f_op_f32(-1041f - _wgslsmith_f_op_f32(680f - -432f))) * 1218f));
    let var_1 = Struct_2(Struct_1(~(-(~arg_0.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-619f, -298f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1531f + 601f), _wgslsmith_f_op_f32(1359f - 381f))))), Struct_1(arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(715f, 1015f) - vec2<f32>(-868f, -430f))))));
    var var_2 = Struct_1(-(i32(-1i) * -28492i) << (min(min(0u, 8283u), _wgslsmith_clamp_u32(47291u, ~19757u, ~1u)) % 32u), vec2<f32>(-935f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(237f - -978f))));
    let var_3 = vec3<u32>(0u, reverseBits(func_1(_wgslsmith_f_op_f32(-261f + var_2.b.x))) & _wgslsmith_sub_u32(~44739u, ~(~0u)), _wgslsmith_mult_u32(~1u, ~(~abs(0u))));
    var var_4 = ~1u != var_3.x;
    return select(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))), vec2<bool>(select(true, false, false), all(vec3<bool>(true, true, true))), any(vec2<bool>(!all(vec3<bool>(true, false, true)), any(vec3<bool>(false, false, true)))));
}

fn func_2() -> vec3<u32> {
    var var_0 = any(vec2<bool>(any(func_3(vec4<i32>(0i, -1i, u_input.a.x, 0i) & vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i))), true));
    global0 = u_input.a.x;
    global0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -225f), _wgslsmith_f_op_f32(trunc(1259f)))), -1130f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1054f) * _wgslsmith_f_op_f32(237f + 1679f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(44661u, 10u)], vec4<f32>(_wgslsmith_f_op_f32(-658f - -1000f), -1455f, _wgslsmith_f_op_f32(abs(842f)), _wgslsmith_f_op_f32(f32(-1f) * -1644f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -327f, 821f, 2271f))))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1131f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)) * _wgslsmith_f_op_f32(max(259f, -1615f))), var_1.x) + var_1.zxy), var_1.xxz));
    return ~firstTrailingBit(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 20005u, 1u), vec3<u32>(1u, 0u, 62004u)), 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4025u, 52867u), ~vec2<u32>(4294967295u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_1(-1061f), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(24620u, 96355u, 42514u)), firstLeadingBit(vec3<u32>(1u, 0u, 16928u)), ~vec3<u32>(10497u, 30574u, 126260u)), ~func_2()) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 1u, 4294967295u, 33818u)), reverseBits(firstLeadingBit(36271u))) % 32u));
}

