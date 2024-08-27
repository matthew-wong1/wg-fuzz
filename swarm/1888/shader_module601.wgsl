struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(-74135i, i32(-2147483648)), vec2<i32>(25099i, i32(-2147483648)), vec2<i32>(0i, 59923i), vec2<i32>(48973i, 67387i), vec2<i32>(-28056i, -42082i), vec2<i32>(0i, 0i), vec2<i32>(-1i, 37717i), vec2<i32>(1091i, 0i), vec2<i32>(-1i, 31693i), vec2<i32>(-1658i, 1904i), vec2<i32>(-39245i, i32(-2147483648)), vec2<i32>(-53400i, 54360i), vec2<i32>(-58506i, -1i), vec2<i32>(0i, -1i), vec2<i32>(-11093i, -16100i), vec2<i32>(-1i, 1i), vec2<i32>(-30090i, 2147483647i), vec2<i32>(36464i, 1i), vec2<i32>(1i, -1i));

var<private> global1: array<u32, 24> = array<u32, 24>(36503u, 4294967295u, 0u, 0u, 4294967295u, 0u, 42752u, 31232u, 31655u, 34177u, 65769u, 0u, 32439u, 19844u, 40177u, 0u, 35263u, 41143u, 1u, 4294967295u, 4294967295u, 1u, 4294967295u, 10571u);

var<private> global2: u32 = 1u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>) -> bool {
    global2 = 4294967295u;
    var var_0 = !select(!(!arg_0.xz), vec2<bool>(arg_0.x, any(arg_0.wy)), !select(select(vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, true)), !vec2<bool>(arg_0.x, true), vec2<bool>(false, arg_0.x)));
    var var_1 = global1[_wgslsmith_index_u32(~(~1u), 24u)];
    global0 = array<vec2<i32>, 19>();
    let var_2 = var_0.x;
    return all(!(!arg_0));
}

fn func_3() -> i32 {
    var var_0 = firstTrailingBit(76970u);
    var var_1 = Struct_2(Struct_1(!vec4<bool>(true, false, true, any(vec3<bool>(false, false, true))), firstLeadingBit(max(_wgslsmith_div_i32(2147483647i, -1i), _wgslsmith_mod_i32(61892i, 15539i)))), 2147483647i);
    var var_2 = 76145u;
    var var_3 = Struct_1(var_1.a.a, abs(reverseBits((var_1.a.b & -1i) << (min(global1[_wgslsmith_index_u32(1u, 24u)], u_input.a) % 32u))));
    let var_4 = ~_wgslsmith_clamp_vec3_u32(u_input.b.xxz, u_input.b.yyy, ~u_input.b.zyy);
    return _wgslsmith_mod_i32(-2147483647i, var_1.a.b);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: i32, arg_3: vec2<u32>) -> u32 {
    global2 = _wgslsmith_add_u32((~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(7183u, 24u)], 4294967295u), 24u)] ^ abs(countOneBits(16707u))) & (arg_3.x >> (u_input.b.x % 32u)), 4294967295u);
    global1 = array<u32, 24>();
    let var_0 = Struct_2(Struct_1(vec4<bool>(true, true, true, true), ~1i ^ func_3()), 14070i);
    var var_1 = u_input.a;
    global2 = 1u;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(true, func_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1326f, -494f, 2069f)))), func_2(vec3<f32>(-988f, 209f, 525f), -941f, 0i, vec2<u32>(0u, 9767u)) >= abs(1u)), vec3<bool>(false, true, func_1(vec4<bool>(true, true, true, false), vec3<f32>(-1000f, -1056f, -115f)) & true), select(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), vec3<bool>(all(vec4<bool>(false, true, false, false)), any(vec4<bool>(false, false, true, true)), all(vec4<bool>(true, true, true, false))), true));
    var var_1 = vec4<bool>(115f <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1040f)), _wgslsmith_f_op_f32(-416f - 1316f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-417f)))), var_0.x, var_0.x, !all(var_0.yz));
    let var_2 = !vec3<bool>(true, !(!(var_0.x | false)), true);
    var_1 = !select(!(!vec4<bool>(var_1.x, var_0.x, false, var_2.x)), select(select(vec4<bool>(var_0.x, true, false, true), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_0.x, var_0.x, var_1.x, var_0.x), false), !vec4<bool>(false, false, var_2.x, true)), select(!vec4<bool>(false, true, var_1.x, false), vec4<bool>(false, true, var_2.x, var_1.x), !vec4<bool>(var_2.x, true, true, false)), false), var_1.x);
    global0 = array<vec2<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2312f), _wgslsmith_f_op_f32(sign(-578f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(273f, 1020f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -565f) * _wgslsmith_f_op_f32(max(-627f, -482f))) + -1162f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(128f))))), _wgslsmith_f_op_f32(-965f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(908f, _wgslsmith_f_op_f32(-398f - 2298f))))));
}

