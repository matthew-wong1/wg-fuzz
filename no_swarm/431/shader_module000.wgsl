struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    let var_0 = firstTrailingBit(max(min(abs(vec2<u32>(4294967295u, 58407u)), vec2<u32>(23828u, 26344u)), ~select(vec2<u32>(12188u, 15369u), vec2<u32>(700u, 0u), vec2<bool>(true, false)))) | ~_wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(23825u, 1u), vec2<u32>(4294967295u, 6505u)), select(vec2<u32>(1u, 1u), min(vec2<u32>(10767u, 1u), vec2<u32>(5159u, 39889u)), select(vec2<bool>(true, false), vec2<bool>(false, true), false)));
    var var_1 = vec4<bool>(true, true, true, true);
    global0 = array<vec3<bool>, 16>();
    var var_2 = Struct_2(firstLeadingBit(u_input.a.x), false, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -583f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(772f, -1000f)), 719f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-366f, -2059f)))), _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_0, vec2<u32>(var_0.x, 4294967295u)), var_0.x), 0u), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(38333u, var_0.x, var_0.x)), vec3<u32>(var_0.x, 1u, 27999u)) ^ select(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, 4294967295u), vec3<u32>(22852u, 1u, var_0.x)), vec3<u32>(var_0.x, 11756u, 24886u), global0[_wgslsmith_index_u32(31230u, 16u)])), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(137f, 699f, -1307f, 568f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-155f, 347f, -696f, 279f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1368f, 632f, 317f, -1586f) - vec4<f32>(-1035f, 411f, 340f, -1211f))), any(select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, true), var_1.x)))), var_0.x ^ _wgslsmith_dot_vec2_u32(~var_0, var_0), min(_wgslsmith_sub_vec3_u32(vec3<u32>(27995u, var_0.x, var_0.x) | vec3<u32>(37432u, var_0.x, var_0.x), min(vec3<u32>(1u, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, 1u))), select(vec3<u32>(var_0.x, var_0.x, 4406u), ~vec3<u32>(2569u, var_0.x, 66305u), select(vec3<bool>(true, true, var_1.x), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(var_0.x, 16u)])))));
    global0 = array<vec3<bool>, 16>();
    return u_input.a.x;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -102f)));
    var var_1 = Struct_2(-21632i & _wgslsmith_mod_i32(func_3(), -51285i), !(!any(vec2<bool>(false, true))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -395f, var_0) - vec4<f32>(var_0, var_0, var_0, var_0)), vec4<f32>(var_0, var_0, 1415f, -505f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(756f, -1129f, var_0, -1010f))))), 1u, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, ~14737u), max(abs(vec3<u32>(4294967295u, 35737u, 24202u)), vec3<u32>(13465u, 59699u, 20442u)))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-280f, _wgslsmith_f_op_f32(trunc(var_0)), var_0, -328f)), ~(~(~40408u)), vec3<u32>(1u, 1u, 1u)));
    global0 = array<vec3<bool>, 16>();
    var var_2 = select(!select(vec4<bool>(!var_1.b, var_1.b, any(vec2<bool>(var_1.b, var_1.b)), -1i > var_1.a), select(!vec4<bool>(false, var_1.b, var_1.b, true), vec4<bool>(true, var_1.b, var_1.b, false), true), all(!vec4<bool>(false, true, false, var_1.b))), select(!select(!vec4<bool>(var_1.b, false, true, var_1.b), select(vec4<bool>(var_1.b, var_1.b, false, var_1.b), vec4<bool>(false, var_1.b, var_1.b, var_1.b), false), !vec4<bool>(true, false, var_1.b, var_1.b)), !select(vec4<bool>(true, false, var_1.b, false), vec4<bool>(var_1.b, false, true, var_1.b), false), var_1.b), true);
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1250f * var_0), _wgslsmith_f_op_f32(-var_1.d.a.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(378f * var_1.c.a.x) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-192f))))))), !var_2.x));
    return var_1.d.b;
}

fn func_1() -> bool {
    let var_0 = 104989u;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-518f, -228f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1246f, 642f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -1158f))), 1f))), var_0, vec3<u32>((_wgslsmith_add_u32(var_0, 33200u) & ~var_0) & 26088u, ~var_0, func_2()));
    global0 = array<vec3<bool>, 16>();
    let var_2 = -39091i;
    global0 = array<vec3<bool>, 16>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(1758f, -1006f, _wgslsmith_f_op_f32(f32(-1f) * -148f));
    let var_1 = u_input.a;
    var var_2 = vec4<bool>(false, true || ((false | func_1()) || func_1()), all(vec2<bool>(true, true)) | false, _wgslsmith_f_op_f32(select(var_0.x, -1464f, true)) >= var_0.x);
    global0 = array<vec3<bool>, 16>();
    global0 = array<vec3<bool>, 16>();
    global0 = array<vec3<bool>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(var_1.x, _wgslsmith_div_i32(var_1.x, ~6982i)));
}

