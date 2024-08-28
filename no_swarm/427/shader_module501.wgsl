struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: u32;

var<private> global1: array<u32, 3> = array<u32, 3>(0u, 42840u, 33270u);

var<private> global2: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(i32(-2147483648), -1i, -1i, 28793i), vec4<i32>(-19940i, 0i, 47901i, 2147483647i), vec4<i32>(i32(-2147483648), -1i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), 1i, 22547i, 19517i), vec4<i32>(67631i, -35533i, 19039i, 1i), vec4<i32>(-72908i, -63120i, 43548i, 36030i), vec4<i32>(0i, 24897i, 0i, -55471i), vec4<i32>(2147483647i, -1i, -1i, 6436i), vec4<i32>(-1i, -9639i, -1i, -1i), vec4<i32>(1i, i32(-2147483648), -59112i, -17305i), vec4<i32>(1i, -4106i, -1i, 25244i), vec4<i32>(-1i, 1i, -13477i, 3093i), vec4<i32>(-1i, i32(-2147483648), -73649i, 28087i), vec4<i32>(-1727i, i32(-2147483648), -15804i, i32(-2147483648)), vec4<i32>(1i, 1i, -65937i, -40366i), vec4<i32>(10282i, -17569i, -1i, 1i), vec4<i32>(i32(-2147483648), 0i, -32409i, -27745i), vec4<i32>(2147483647i, 1i, i32(-2147483648), 1i), vec4<i32>(2147483647i, -56121i, 1i, 18967i), vec4<i32>(-14070i, -10354i, -589i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -19217i, -40064i, 0i), vec4<i32>(1i, 1i, 1i, -50877i), vec4<i32>(0i, 2147483647i, 0i, i32(-2147483648)), vec4<i32>(1i, 2147483647i, 42625i, 1794i), vec4<i32>(i32(-2147483648), -1i, 1i, 6903i));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec3<f32> {
    global1 = array<u32, 3>();
    global2 = array<vec4<i32>, 25>();
    let var_0 = ~(-21261i);
    global1 = array<u32, 3>();
    global2 = array<vec4<i32>, 25>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1168f, -1000f), vec3<f32>(-170f, -251f, 2799f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(471f, -270f, 422f), vec3<f32>(831f, -576f, -1000f), vec3<bool>(false, false, true))))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(568f, 886f) - -408f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -428f), _wgslsmith_f_op_f32(floor(415f))), _wgslsmith_f_op_f32(round(-1000f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1190f, _wgslsmith_f_op_f32(ceil(-742f)), _wgslsmith_f_op_f32(1293f - -1000f)) * vec3<f32>(_wgslsmith_div_f32(-591f, -557f), _wgslsmith_f_op_f32(max(267f, -1000f)), 625f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-330f, _wgslsmith_f_op_f32(max(107f, 393f)), -1111f) - vec3<f32>(_wgslsmith_f_op_f32(-763f - -212f), _wgslsmith_f_op_f32(1005f * -762f), 1276f))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32) -> bool {
    let var_0 = -2147483647i;
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = select(~reverseBits(firstLeadingBit(~vec3<i32>(0i, u_input.b, 2147483647i))), abs(vec3<i32>(~u_input.a, 58077i >> (global1[_wgslsmith_index_u32(7557u ^ global1[_wgslsmith_index_u32(0u, 3u)], 3u)] % 32u), ~u_input.b ^ ~u_input.a)), func_4(Struct_1(u_input.b, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(func_3()), 237f));
    var var_1 = Struct_1(1i, vec3<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(1u, 3u)] < 4294967295u, any(vec4<bool>(true, false, false, true)), any(vec3<bool>(false, true, true)))), -1067f > _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1493f, -1286f))), u_input.b < firstLeadingBit(firstTrailingBit(-1i))));
    let var_2 = -18533i;
    let var_3 = -_wgslsmith_clamp_i32(firstLeadingBit(var_0.x), ~(-48425i), -15052i) << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33380u, 3u)], 3u)], 3u)])), _wgslsmith_mod_u32(4294967295u, reverseBits(~8871u))), 3u)], 3u)] % 32u);
    let var_4 = _wgslsmith_mult_i32(var_3 << (global1[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(~36823u, 3u)] << (global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(39475u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)]), 3u)] % 32u)), 3u)] % 32u), abs(abs(min(u_input.b, min(2147483647i, var_2)))));
    return Struct_1(_wgslsmith_mult_i32(abs(-_wgslsmith_sub_i32(var_4, var_2)), _wgslsmith_dot_vec2_i32(abs(var_0.zz), _wgslsmith_mult_vec2_i32(min(vec2<i32>(var_4, 24949i), vec2<i32>(var_0.x, 6238i)), var_0.yx))), var_1.b);
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    let var_0 = Struct_1(-firstTrailingBit(arg_2.a), vec3<bool>(arg_2.b.x, true, !(1u > _wgslsmith_dot_vec3_u32(vec3<u32>(33090u, global1[_wgslsmith_index_u32(4294967295u, 3u)], 4294967295u), vec3<u32>(18655u, 42626u, 101793u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(max(1783f, -1848f)), _wgslsmith_f_op_f32(step(arg_1.x, 458f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_1.x))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))) - _wgslsmith_f_op_f32(267f + _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(220f - -627f)))))));
    global0 = ~0u;
    let var_2 = vec4<i32>(firstLeadingBit(var_0.a), abs(u_input.a), ~618i, 1091i);
    let var_3 = var_0;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - arg_1.x))))));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(580f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x)))), _wgslsmith_f_op_f32(func_5(~0u, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 229f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.x, -280f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-468f, arg_0.x)))), func_2(), ~(~(vec2<u32>(4294967295u, 4294967295u) << (vec2<u32>(33678u, global1[_wgslsmith_index_u32(0u, 3u)]) % vec2<u32>(32u)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(ceil(-421f))) * _wgslsmith_f_op_f32(f32(-1f) * -490f)));
    let var_1 = abs(vec2<i32>(func_2().a & _wgslsmith_add_i32(2147483647i, -1i), i32(-1i) * -2147483647i) >> (abs(_wgslsmith_sub_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56285u, 3u)], 3u)], 3u)], 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 106337u) ^ vec2<u32>(40760u, 1u))) % vec2<u32>(32u)));
    let var_2 = true;
    let var_3 = Struct_1(~var_1.x, !vec3<bool>(var_2, true, var_1.x >= 2147483647i));
    var var_4 = !var_2;
    return global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, abs(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)])), 3u)], 3u)], 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 3>();
    let var_0 = global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~0u >> (countOneBits(~func_1(vec4<f32>(605f, -226f, -1659f, -391f))) % 32u), 3u)], 3u)];
    let var_1 = ((func_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(748f, -1330f, 1000f, -535f)))) >> (4294967295u % 32u)) ^ ~countOneBits(~7917u)) | 1u;
    var var_2 = ~_wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.b, u_input.b)), ~(~vec2<i32>(0i, -2147483647i))) >> (vec2<u32>(1u, var_1) % vec2<u32>(32u));
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(1742f, _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(6813u, 0u << (var_1 % 32u))), ~((vec2<u32>(global1[_wgslsmith_index_u32(var_1, 3u)], var_1) << (vec2<u32>(15006u, var_1) % vec2<u32>(32u))) ^ abs(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9859u, 3u)], 3u)], 18302u)))));
}

