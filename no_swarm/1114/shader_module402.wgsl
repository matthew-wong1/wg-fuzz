struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<i32>, 20>;

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(true, vec2<bool>(false, false)), vec3<bool>(true, true, false)), Struct_2(Struct_1(true, vec2<bool>(false, false)), vec3<bool>(true, false, false)), Struct_2(Struct_1(false, vec2<bool>(false, false)), vec3<bool>(true, true, false)), Struct_2(Struct_1(true, vec2<bool>(true, true)), vec3<bool>(true, true, false)), Struct_2(Struct_1(true, vec2<bool>(false, false)), vec3<bool>(true, false, false)), Struct_2(Struct_1(true, vec2<bool>(false, false)), vec3<bool>(false, true, true)), Struct_2(Struct_1(false, vec2<bool>(false, true)), vec3<bool>(false, true, false)), Struct_2(Struct_1(true, vec2<bool>(true, true)), vec3<bool>(false, true, false)), Struct_2(Struct_1(true, vec2<bool>(true, true)), vec3<bool>(false, true, true)), Struct_2(Struct_1(false, vec2<bool>(true, true)), vec3<bool>(false, true, true)), Struct_2(Struct_1(false, vec2<bool>(true, true)), vec3<bool>(true, false, false)), Struct_2(Struct_1(false, vec2<bool>(false, true)), vec3<bool>(true, true, false)), Struct_2(Struct_1(true, vec2<bool>(false, true)), vec3<bool>(false, false, true)), Struct_2(Struct_1(false, vec2<bool>(true, false)), vec3<bool>(false, false, true)), Struct_2(Struct_1(true, vec2<bool>(true, true)), vec3<bool>(true, false, false)), Struct_2(Struct_1(false, vec2<bool>(true, true)), vec3<bool>(false, false, true)), Struct_2(Struct_1(true, vec2<bool>(false, true)), vec3<bool>(true, true, true)), Struct_2(Struct_1(true, vec2<bool>(true, false)), vec3<bool>(true, true, true)), Struct_2(Struct_1(true, vec2<bool>(true, false)), vec3<bool>(false, true, true)), Struct_2(Struct_1(true, vec2<bool>(true, true)), vec3<bool>(true, false, true)), Struct_2(Struct_1(true, vec2<bool>(true, false)), vec3<bool>(true, true, true)), Struct_2(Struct_1(true, vec2<bool>(true, false)), vec3<bool>(false, true, true)));

var<private> global3: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(-108f, -787f), vec2<f32>(-502f, 1885f), vec2<f32>(-1065f, 1127f), vec2<f32>(-578f, 350f), vec2<f32>(295f, -1093f), vec2<f32>(-679f, -321f), vec2<f32>(557f, 2080f), vec2<f32>(840f, 1906f), vec2<f32>(682f, -201f), vec2<f32>(614f, -1121f), vec2<f32>(-1000f, 497f), vec2<f32>(-295f, 1000f), vec2<f32>(-664f, -863f), vec2<f32>(-253f, 1008f), vec2<f32>(-1213f, -343f), vec2<f32>(507f, 989f), vec2<f32>(-820f, -1000f), vec2<f32>(-2015f, 2838f), vec2<f32>(726f, -1587f), vec2<f32>(-676f, 711f), vec2<f32>(425f, 844f), vec2<f32>(-458f, 419f), vec2<f32>(208f, 1132f), vec2<f32>(-1596f, -2173f), vec2<f32>(-1233f, -426f), vec2<f32>(-1007f, 599f), vec2<f32>(-1100f, -686f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec3<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(abs(1000f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -314f) * 222f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global0.x)), 440f)), global0.x, select(!arg_1.a.b.x, u_input.a == 0i, true))));
    global1 = array<vec3<i32>, 20>();
    var var_1 = vec4<i32>(u_input.a, arg_2.x, -56372i, -min(-1i, u_input.a ^ _wgslsmith_add_i32(0i, -54670i)));
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(114f, _wgslsmith_f_op_f32(-1738f * 313f), -298f, _wgslsmith_f_op_f32(global0.x + global0.x)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1105f, -124f, -475f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(984f, global0.x, -1000f, 746f) * vec4<f32>(global0.x, -405f, global0.x, 110f)) - vec4<f32>(1000f, global0.x, global0.x, global0.x)))))));
    let var_2 = global0.wxz;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, var_2.x, -890f, var_2.x), vec4<f32>(var_2.x, var_2.x, var_2.x, global0.x), false))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, 506f, -146f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1064f, 759f, 984f, -1788f)))) - vec4<f32>(-1186f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.x, global0.x)) - _wgslsmith_f_op_f32(global0.x - var_2.x)), -1786f, var_2.x)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: u32, arg_3: vec4<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -876f), _wgslsmith_f_op_f32(trunc(arg_1.x)))))));
    var var_1 = 47527i;
    global2 = array<Struct_2, 22>();
    var var_2 = (u_input.b.x >> (u_input.b.x % 32u)) | arg_2;
    let var_3 = any(!vec2<bool>(any(select(arg_0.b, arg_0.b, true)), any(vec3<bool>(arg_0.a.a, arg_0.b.x, true))));
    return vec2<u32>(39746u, _wgslsmith_mod_u32(70709u, ~58691u));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: i32) -> vec4<f32> {
    global2 = array<Struct_2, 22>();
    var var_0 = arg_0;
    let var_1 = global2[_wgslsmith_index_u32(4294967295u, 22u)];
    let var_2 = ~((_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 14214u), func_3(Struct_2(Struct_1(true, vec2<bool>(arg_1.x, true)), var_1.b), vec3<f32>(arg_0, 1000f, -580f), 0u, vec4<f32>(global0.x, global0.x, 3139f, global0.x))) >> (_wgslsmith_clamp_u32(countOneBits(u_input.b.x), u_input.b.x, u_input.b.x) % 32u)) | 42853u);
    let var_3 = Struct_1(arg_1.x, !select(select(arg_1.zx, vec2<bool>(true, true), all(vec2<bool>(false, arg_1.x))), var_1.b.zy, !(!arg_1.xy)));
    return _wgslsmith_f_op_vec4_f32(func_1(((1i << (var_2 % 32u)) & (-u_input.a ^ _wgslsmith_add_i32(30467i, -2147483647i))) < _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, min(arg_2, -57308i), _wgslsmith_mod_i32(39423i, u_input.a), -arg_2), vec4<i32>(-5074i, 2147483647i, arg_2, arg_2) << (~vec4<u32>(1u, u_input.b.x, var_2, 4294967295u) % vec4<u32>(32u))), Struct_2(var_3, select(!arg_1, var_1.b, false)), global1[_wgslsmith_index_u32(~1u, 20u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(false, true, false))), ((u_input.b.x != 0u) == true) | (firstTrailingBit(1i) < select(u_input.a, u_input.a, false)), select(true, false, false) || true, false);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, -1080f, global0.x, 777f))), _wgslsmith_f_op_vec4_f32(func_1(true, Struct_2(Struct_1(var_0.x, vec2<bool>(var_0.x, false)), var_0.wxw), global1[_wgslsmith_index_u32(0u, 20u)])))), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(abs(global0.x)), var_0.wwx, u_input.a ^ -15906i)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1086f, global0.x, global0.x) * vec4<f32>(-490f, global0.x, -837f, global0.x)) - _wgslsmith_f_op_vec4_f32(func_1(var_0.x, Struct_2(Struct_1(var_0.x, vec2<bool>(true, false)), vec3<bool>(var_0.x, var_0.x, true)), global1[_wgslsmith_index_u32(26483u, 20u)]))), _wgslsmith_div_vec4_f32(vec4<f32>(-274f, -347f, global0.x, 1096f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1000f, global0.x, 502f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-261f, _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(trunc(1000f))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(369f, global0.x, -991f, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 205f, global0.x, global0.x)))))));
    let var_1 = !select(!vec4<bool>(var_0.x, !var_0.x, var_0.x, all(vec4<bool>(var_0.x, true, true, true))), !vec4<bool>(var_0.x, any(var_0.ww), var_0.x | var_0.x, true), !any(!var_0));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), 1u)), global0.x, -1i, _wgslsmith_f_op_f32(-435f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-517f, -809f, -124f), global0.zxx, true)) - vec3<f32>(921f, 225f, global0.x)))) + _wgslsmith_f_op_vec3_f32(global0.xxx - _wgslsmith_f_op_vec3_f32(global0.yzz - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, global0.x, -1161f)))))));
}

