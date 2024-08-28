struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1>;

var<private> global1: array<i32, 12>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: vec3<i32>) -> f32 {
    let var_0 = arg_0;
    let var_1 = arg_3 ^ arg_3;
    global0 = array<vec3<u32>, 1>();
    var var_2 = abs(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(1u, 23164u) ^ vec2<u32>(u_input.a, u_input.a)), reverseBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a, 40367u)))));
    let var_3 = u_input.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + _wgslsmith_f_op_f32(-112f - _wgslsmith_f_op_f32(max(2268f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, 1174f))))));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1982f)), _wgslsmith_f_op_f32(arg_1.x - -1070f), any(vec3<bool>(false, false, false)))))), -510f, _wgslsmith_f_op_f32(func_3(arg_2, 44789i, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), abs(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], 1i, 9828i))))), -292f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_1, arg_1))) * arg_1));
}

fn func_1() -> Struct_2 {
    let var_0 = -983f;
    let var_1 = -1i;
    var var_2 = false;
    var var_3 = func_2(_wgslsmith_f_op_f32(select(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), 1080f), false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(929f * _wgslsmith_f_op_f32(-730f + 2227f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(var_0, var_0))))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-671f - 1218f), -1000f, var_0, _wgslsmith_f_op_f32(488f + 766f)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 860f, 662f, var_0))))), _wgslsmith_f_op_f32(-312f * -273f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1137f, -1686f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))))));
    var var_4 = vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -76848i) | vec2<i32>(1i, var_1), -vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], 0i)), min(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 29995u, 29565u)), 12u)], ~reverseBits(global1[_wgslsmith_index_u32(0u, 12u)])), _wgslsmith_div_i32(abs(firstLeadingBit(1i)), global1[_wgslsmith_index_u32(~(35898u >> (u_input.a % 32u)), 12u)]), _wgslsmith_add_i32(var_1, ~13710i) ^ global1[_wgslsmith_index_u32(~(~u_input.a), 12u)]) & vec4<i32>(~1i, var_1, 5053i, -2147483647i);
    return Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) * -2521f) + var_0), vec2<f32>(_wgslsmith_f_op_f32(round(-227f)), -263f), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(-762f)), -672f, _wgslsmith_f_op_f32(var_0 * var_3.c.x), 1980f), _wgslsmith_f_op_f32(step(1527f, -570f)), var_3.c)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = arg_1.a.a.xww;
    var var_1 = -(~0i);
    global1 = array<i32, 12>();
    global1 = array<i32, 12>();
    var var_2 = ~_wgslsmith_mult_vec3_u32(abs(~reverseBits(global0[_wgslsmith_index_u32(u_input.a, 1u)])), ~(~global0[_wgslsmith_index_u32(min(u_input.a, 52766u), 1u)]));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 12>();
    global1 = array<i32, 12>();
    var var_0 = Struct_2(func_4(func_1(), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-992f, -510f, -1477f, -133f)), -675f, vec2<f32>(-1000f, -1000f))), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), vec2<bool>(false, true), all(vec2<bool>(true, true)))));
    global1 = array<i32, 12>();
    global0 = array<vec3<u32>, 1>();
    let var_1 = vec4<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(~u_input.a, ~u_input.a, reverseBits(0u), 1u)), select(vec4<u32>(46932u, firstLeadingBit(u_input.a), 37333u, u_input.a), max(countOneBits(vec4<u32>(u_input.a, 7940u, u_input.a, 15872u)), countOneBits(vec4<u32>(0u, u_input.a, u_input.a, 0u))), any(vec4<bool>(true, true, true, true)))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, ~_wgslsmith_add_u32(1u, 71420u)), ~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 0u) >> (vec2<u32>(u_input.a, 2347u) % vec2<u32>(32u)))), max(u_input.a, 5540u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a.x, vec2<u32>(select(select(_wgslsmith_div_u32(17686u, var_1.x), var_1.x, any(vec4<bool>(true, true, false, true))), 0u, select(true, false, true)), _wgslsmith_clamp_u32(~(~0u), u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_1.x), var_1.zw) << (u_input.a % 32u))));
}

