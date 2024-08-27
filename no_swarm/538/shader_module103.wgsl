struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 27> = array<i32, 27>(2147483647i, 7131i, -1i, i32(-2147483648), -1915i, i32(-2147483648), 26503i, -14583i, 0i, -24267i, 28190i, 2147483647i, -27604i, -5871i, 15580i, -12606i, i32(-2147483648), 1i, 2147483647i, 0i, 2147483647i, -40332i, 1i, i32(-2147483648), 19004i, i32(-2147483648), 0i);

var<private> global2: array<bool, 10>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: u32, arg_3: u32) -> bool {
    global0 = Struct_2(!(!(!global0.a)));
    var var_0 = global0.a.x;
    return !arg_0;
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = vec4<bool>(!func_3(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1577f, 1974f))), 20904u, min(0u, ~4294967295u)), true, true, true);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1630f, _wgslsmith_f_op_f32(1266f * -1806f), _wgslsmith_f_op_f32(min(-102f, -527f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-314f, 570f, -338f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(105f, -2369f, -1451f) + vec3<f32>(-1829f, 1794f, 2115f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(931f, -1000f, -825f))))))));
    let var_2 = select(vec4<bool>(arg_0.a.x, false, var_0.x, false), vec4<bool>(!var_0.x, any(select(vec4<bool>(true, global0.a.x, var_0.x, var_0.x), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 10u)], false, var_0.x, global0.a.x), !vec4<bool>(true, var_0.x, true, arg_0.a.x))), true, arg_0.a.x & var_0.x), all(vec4<bool>(true, arg_0.a.x, true, true)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(313f, var_1.x, arg_0.a.x))))) * vec3<f32>(350f, var_1.x, 1115f)));
    let var_3 = arg_0;
    return min(abs(u_input.a.x), -1i);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: f32) -> u32 {
    var var_0 = vec2<u32>(~1u, _wgslsmith_add_u32(0u, select(~_wgslsmith_dot_vec4_u32(vec4<u32>(32330u, 22905u, 1u, 1796u), vec4<u32>(41903u, 24428u, 1u, 4294967295u)), ~1u, global0.a.x)));
    var var_1 = 15127i;
    var var_2 = i32(-1i) * -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a.x, reverseBits(u_input.c)), func_2(Struct_2(vec2<bool>(arg_0.x, false))), ~_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(26760u, 27u)], arg_1.x));
    let var_3 = vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-16669i, abs(~(-27495i)), u_input.c)), u_input.c, ~(-2147483647i));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global0.a.x;
    let var_1 = vec3<u32>(min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, func_1(vec3<bool>(global2[_wgslsmith_index_u32(48538u, 10u)], global0.a.x, true), u_input.a, -1227f), countOneBits(4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)), 4294967295u), 1u, _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(1u, ~min(4577u, 98062u))));
    var var_2 = select(true, false, global2[_wgslsmith_index_u32(var_1.x, 10u)]);
    let var_3 = (182f <= _wgslsmith_f_op_f32(644f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -562f) - _wgslsmith_f_op_f32(sign(-389f))))) == !(var_1.x >= 7540u);
    global1 = array<i32, 27>();
    let var_4 = ~var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(countOneBits(~var_4), 27u)], _wgslsmith_dot_vec3_i32(firstTrailingBit(-u_input.a), firstTrailingBit(u_input.a)), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1243f * _wgslsmith_f_op_f32(-731f - 112f)), 859f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1183f * 882f), _wgslsmith_f_op_f32(abs(1196f))))))));
}

