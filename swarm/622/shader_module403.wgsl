struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 31>;

var<private> global2: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(575f, 223f), vec2<f32>(1000f, 1722f), vec2<f32>(166f, -719f), vec2<f32>(-1000f, -931f), vec2<f32>(-677f, -876f), vec2<f32>(1000f, 359f), vec2<f32>(572f, -1000f), vec2<f32>(-1140f, 479f), vec2<f32>(-705f, 334f), vec2<f32>(-1000f, 1000f), vec2<f32>(-666f, -206f), vec2<f32>(-2336f, -2118f), vec2<f32>(560f, -718f), vec2<f32>(-1000f, -905f), vec2<f32>(1370f, 569f), vec2<f32>(-540f, 2265f), vec2<f32>(-379f, 406f), vec2<f32>(2681f, -291f), vec2<f32>(302f, -1298f), vec2<f32>(878f, 147f), vec2<f32>(1018f, -1273f), vec2<f32>(-101f, 651f), vec2<f32>(-1004f, 1975f), vec2<f32>(-728f, 1503f), vec2<f32>(-982f, 660f));

var<private> global3: Struct_2 = Struct_2(0u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = false;
    let var_1 = !vec4<bool>(select(true, true, ~arg_1.a <= 33309u), true, !all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true);
    let var_2 = ~vec3<u32>(firstLeadingBit(min(43261u, _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(1u, 1u, 1u)))), abs(firstTrailingBit(u_input.d.x)) | max(global3.a << (u_input.e.x % 32u), ~u_input.d.x), u_input.e.x);
    global0 = any(vec3<bool>(true, ~u_input.a > ~select(1i, u_input.a, false), var_1.x));
    var var_3 = Struct_2(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(~36597u, 27481u), _wgslsmith_add_u32(0u, _wgslsmith_div_u32(global3.a, 2942u))));
    return !select(select(select(!vec2<bool>(false, var_1.x), vec2<bool>(true, true), false), vec2<bool>(true, true), var_2.x > select(arg_1.a, 0u, var_1.x)), select(var_1.zw, vec2<bool>(true, true), true & var_1.x), select(select(var_1.xy, select(vec2<bool>(true, var_1.x), vec2<bool>(false, true), var_1.ww), !vec2<bool>(false, var_1.x)), vec2<bool>(false, true), select(vec2<bool>(var_1.x, var_1.x), !var_1.wz, vec2<bool>(var_1.x, var_1.x))));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: f32, arg_3: u32) -> Struct_1 {
    let var_0 = func_3(u_input.d, global1[_wgslsmith_index_u32(u_input.e.x, 31u)]);
    let var_1 = global1[_wgslsmith_index_u32(arg_3, 31u)];
    let var_2 = Struct_1(select(~(~vec2<u32>(0u, arg_3)), ~vec2<u32>(69483u, 4294967295u), var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * arg_2))), _wgslsmith_sub_vec2_u32(u_input.c.xy, u_input.d.zz), (-106f <= _wgslsmith_f_op_f32(exp2(arg_2))) & any(vec2<bool>(true, true)), _wgslsmith_clamp_i32(44742i, ~(min(0i, u_input.b.x) & _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, 7555i), vec2<i32>(u_input.a, arg_1.x))), 1i));
    var var_3 = !vec3<bool>(any(select(vec3<bool>(var_0.x, var_0.x, var_2.d), !vec3<bool>(var_0.x, var_2.d, false), select(vec3<bool>(true, var_2.d, true), vec3<bool>(var_2.d, var_0.x, false), var_2.d))), all(func_3(u_input.e, global1[_wgslsmith_index_u32(firstTrailingBit(28923u), 31u)])), all(vec4<bool>(var_2.d, false, var_0.x, var_2.d)) && true);
    global2 = array<vec2<f32>, 25>();
    return var_2;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> u32 {
    let var_0 = ~(~reverseBits(abs(reverseBits(u_input.e))));
    let var_1 = func_2(_wgslsmith_div_u32(max(1u, ~33527u), ~arg_1.a), -firstLeadingBit(u_input.b.zx), arg_0.x, 42344u);
    var var_2 = vec3<i32>(var_1.e, -reverseBits(select(-2467i << (u_input.e.x % 32u), 1i, var_1.d)), 16502i);
    var_2 = ~(u_input.b.zwx | (u_input.b.xzw << ((u_input.d << (u_input.e % vec3<u32>(32u))) % vec3<u32>(32u))));
    global3 = Struct_2(43215u << (~(~_wgslsmith_dot_vec2_u32(var_0.yy, vec2<u32>(4294967295u, global3.a))) % 32u));
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-477f + -161f))));
    var var_1 = -669f;
    global3 = Struct_2(func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(785f, 509f, -1929f, -680f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2708f, -604f, -1019f, 311f)), vec4<bool>(true, true, true, true))), global1[_wgslsmith_index_u32(8499u, 31u)]) & global3.a);
    var var_2 = any(!vec2<bool>(_wgslsmith_f_op_f32(floor(-1252f)) != _wgslsmith_div_f32(-1655f, 631f), true));
    let var_3 = global1[_wgslsmith_index_u32(1u, 31u)];
    var_2 = !(4294967295u > var_3.a);
    let var_4 = ~global3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-218f, 300f, -613f) * vec3<f32>(1000f, -188f, 1994f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-745f, -644f, -370f) * vec3<f32>(1235f, -589f, 525f)))), vec3<f32>(_wgslsmith_f_op_f32(512f + _wgslsmith_f_op_f32(max(-1000f, -1792f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1768f * -176f))), _wgslsmith_f_op_f32(-1204f + -987f))), firstLeadingBit(u_input.d.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.b.xxw & u_input.b.yxy, countOneBits(-vec3<i32>(0i, u_input.b.x, u_input.b.x))), _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a, -31860i), _wgslsmith_div_i32(u_input.b.x, u_input.b.x), _wgslsmith_add_i32(1053i, u_input.a)))), ~(-2428i));
}

