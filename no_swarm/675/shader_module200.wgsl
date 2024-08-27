struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(50210u, 0u, 7519u), vec3<u32>(55957u, 1u, 4294967295u), vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 9148u, 0u), vec3<u32>(43578u, 4294967295u, 1u), vec3<u32>(38733u, 109385u, 27299u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(7915u, 4294967295u, 60980u), vec3<u32>(1u, 68959u, 19068u), vec3<u32>(4294967295u, 15134u, 4294967295u), vec3<u32>(0u, 1u, 0u));

var<private> global2: vec3<u32> = vec3<u32>(0u, 4294967295u, 4294967295u);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<bool>) -> vec3<u32> {
    global2 = _wgslsmith_sub_vec3_u32(min(vec3<u32>(~global2.x, 30514u, 0u), ~(~global1[_wgslsmith_index_u32(0u, 11u)] ^ countOneBits(vec3<u32>(1u, global2.x, 0u)))), ~global1[_wgslsmith_index_u32(9080u, 11u)]);
    global0 = true;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -486f) * _wgslsmith_f_op_f32(min(-1352f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))));
    global1 = array<vec3<u32>, 11>();
    let var_1 = -u_input.c;
    return vec3<u32>(0u, _wgslsmith_add_u32(42541u, 27521u), global2.x);
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = -u_input.c;
    let var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b.x, u_input.a.x, -u_input.b.x)), vec3<i32>(_wgslsmith_div_i32(0i, min(-2147483647i, 0i)), -(arg_0.a.x ^ arg_0.b), 11596i)), arg_0.a.x, arg_0.b | u_input.d.x, 10018i);
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-419f, -1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(789f)))), -364f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1000f, 1058f)), _wgslsmith_div_f32(-645f, 274f), _wgslsmith_f_op_f32(trunc(-164f)), _wgslsmith_f_op_f32(abs(1440f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-827f, -821f, 290f, -787f), vec4<f32>(-1000f, -298f, 896f, 1126f))), vec4<f32>(1f, 1f, 1f, 1f))), select(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(false, all(vec3<bool>(true, true, false)), true)), vec3<bool>(false & all(vec2<bool>(false, false)), true, any(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true)));
    let var_3 = -2147483647i;
    let var_4 = global2.x;
    return true;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = false;
    var_0 = true;
    var var_1 = arg_0;
    var_0 = func_3(Struct_3(vec3<i32>(var_1.a.x, var_1.a.x, 0i), firstTrailingBit(-22063i)));
    var var_2 = global2.x;
    return Struct_1(1f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-125f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -899f) + -1168f)), -734f, -2133f, _wgslsmith_f_op_f32(min(-109f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(624f))))))), !select(vec3<bool>(true, 1i >= u_input.a.x, all(vec4<bool>(false, false, false, true))), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), true));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec3<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(-1131f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a))))), arg_0.b.x, 1833f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f) * _wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_f_op_f32(-1249f + _wgslsmith_f_op_f32(-arg_0.b.x))))));
    global2 = max(global1[_wgslsmith_index_u32(global2.x, 11u)], ~_wgslsmith_clamp_vec3_u32(~global1[_wgslsmith_index_u32(~global2.x, 11u)], global1[_wgslsmith_index_u32(global2.x & ~global2.x, 11u)], vec3<u32>(global2.x, 0u, 4294967295u)));
    global0 = true;
    let var_1 = ~(~(vec3<u32>(1u, 4294967295u, 4294967295u) >> (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 326u), global2.zx), 11u)] % vec3<u32>(32u)))) ^ ~_wgslsmith_mult_vec3_u32(global1[_wgslsmith_index_u32(global2.x, 11u)], ~global1[_wgslsmith_index_u32(global2.x, 11u)] & vec3<u32>(0u, 1674u, global2.x));
    global0 = arg_1;
    return vec3<u32>(_wgslsmith_mod_u32(global2.x, firstLeadingBit(1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, var_1.x), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(global2.xy, ~vec2<u32>(var_1.x, 4294967295u), reverseBits(vec2<u32>(0u, 1u))), _wgslsmith_div_vec2_u32(vec2<u32>(global2.x, var_1.x), ~var_1.xx))), global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 181f;
    global0 = false;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(-var_0), var_0) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0, 808f, 2216f, -152f), vec4<f32>(-773f, var_0, var_0, 1417f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, 1184f, var_0, var_0), vec4<f32>(var_0, 1113f, 790f, 238f)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, var_0, var_0, -850f), vec4<f32>(var_0, 146f, -1521f, var_0))))))));
    global2 = ~(global1[_wgslsmith_index_u32(global2.x, 11u)] >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.x, 79752u, 82695u) ^ vec3<u32>(1u, 1u, global2.x), func_1(vec2<bool>(false, true)), _wgslsmith_mult_vec3_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], vec3<u32>(global2.x, global2.x, 17276u))) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(-1166f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2312f, var_0)), _wgslsmith_f_op_f32(round(-1641f))))));
    global0 = true;
    global2 = ~func_4(func_2(Struct_3(vec3<i32>(2094i, -25988i, u_input.d.x) & vec3<i32>(2831i, 1i, u_input.c), ~u_input.d.x)), any(vec3<bool>(true, false, 21840i >= u_input.a.x)));
    let var_3 = _wgslsmith_f_op_f32(exp2(var_1.x)) <= var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_0, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(floor(var_1.x)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-1497f * 784f)))), var_2, var_2), vec2<u32>(_wgslsmith_mod_u32(36733u, 1u), 4294967295u), -countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), u_input.a), _wgslsmith_mod_i32(-1i, -42132i), i32(-1i) * -2147483647i, countOneBits(-1980i))));
}

