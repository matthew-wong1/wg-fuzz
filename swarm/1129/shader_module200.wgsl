struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(29233i, -72034i), vec2<i32>(1i, 24887i), vec2<i32>(0i, 2147483647i), vec2<i32>(35601i, 2147483647i), vec2<i32>(2147483647i, 0i), vec2<i32>(-46806i, -34127i), vec2<i32>(2147483647i, 0i), vec2<i32>(21644i, -11373i), vec2<i32>(-1i, -12221i), vec2<i32>(568i, 63613i), vec2<i32>(36115i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(0i, 2147483647i), vec2<i32>(40059i, 2147483647i), vec2<i32>(-1i, -11363i), vec2<i32>(-7143i, 2147483647i), vec2<i32>(-1i, 0i), vec2<i32>(-1i, -14220i), vec2<i32>(1i, -49522i), vec2<i32>(19305i, -17076i), vec2<i32>(1i, 26519i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), -5146i), vec2<i32>(-60445i, 0i), vec2<i32>(1i, 58933i), vec2<i32>(0i, -3721i), vec2<i32>(5476i, 5664i), vec2<i32>(2147483647i, -7974i), vec2<i32>(-39985i, i32(-2147483648)), vec2<i32>(35204i, 47527i), vec2<i32>(-49001i, 0i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = !vec4<bool>(false, !(true | (arg_0.a.x == 43490u)), any(vec3<bool>(true, true, true)) & select(false, true, true), !(true & any(vec3<bool>(true, true, true))));
    var var_1 = var_0.x & (902f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1094f)))) - _wgslsmith_f_op_f32(-1f)));
    var_0 = !vec4<bool>(!(false & var_0.x) | true, true, false, true);
    global1 = array<vec2<i32>, 32>();
    var_0 = select(!select(!(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)), vec4<bool>(true, true, true, true), true), !select(select(vec4<bool>(true, false, false, var_0.x), !vec4<bool>(var_0.x, var_0.x, true, false), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, false, false))), !(!vec4<bool>(false, false, true, var_0.x)), var_0.x | true), all(!(!select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, false, var_0.x, false)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-787f, -200f)), _wgslsmith_f_op_f32(496f - -287f), -279f, _wgslsmith_f_op_f32(f32(-1f) * -834f)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1077f, -1551f, -1151f, 476f)), vec4<f32>(257f, -128f, 867f, 1230f))))));
}

fn func_2() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-864f, 1372f, -2199f, -1309f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2756f, 478f, 953f, 233f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<u32>(69570u, 70215u, 1u, 3673u)))) * vec4<f32>(2327f, -1000f, -2188f, 156f)))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<u32>(1u, 1u, 1u, 1u)))), min(~(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 1u, ~0u))), _wgslsmith_mod_u32(~_wgslsmith_mod_u32(firstTrailingBit(38900u), ~100886u), abs(countOneBits(1u))), _wgslsmith_add_vec4_i32(select(u_input.a & -vec4<i32>(-2995i, u_input.a.x, -8313i, 1i), vec4<i32>(u_input.b, -5610i, 17335i, abs(u_input.b)), vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec4_i32(min(u_input.a, u_input.a), max(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), u_input.a), _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(u_input.b, u_input.b, -2147483647i, -2147483647i))))));
    var var_1 = var_0.a.x;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-230f - -1723f))))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.yww), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.zww + var_0.b.xzx)), vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * 1673f), var_0.b.x, -284f), all(vec3<bool>(true, true, true))))) * _wgslsmith_f_op_vec3_f32(var_0.b.zzw - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x + 1533f), _wgslsmith_f_op_f32(-var_0.a.x), 1000f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, var_0.b.x) + vec3<f32>(516f, var_0.a.x, var_0.b.x)) * vec3<f32>(100f, 790f, -1687f)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1516f * var_0.a.x) * var_0.a.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(-569f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), -774f))));
    let var_1 = any(!select(vec3<bool>(true, true, false), vec3<bool>(arg_0.x >= 4849i, false, true), select(true, true, true)));
    global0 = array<Struct_2, 29>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(172f, _wgslsmith_f_op_f32(floor(-212f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1676f, 208f))), _wgslsmith_f_op_f32(-742f + _wgslsmith_f_op_f32(-208f * -651f)), true)))));
    global1 = array<vec2<i32>, 32>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 29>();
    global1 = array<vec2<i32>, 32>();
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(-6233i ^ (_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(u_input.b, u_input.a.x)) & (i32(-1i) * -2147483647i)), u_input.b), u_input.b, u_input.a.x, select(2889i, 2147483647i, any(vec3<bool>(true, all(vec3<bool>(true, false, true)), func_1(vec2<i32>(2147483647i, u_input.b), Struct_1(vec4<u32>(4294967295u, 4294967295u, 98906u, 0u)))))));
    var var_1 = Struct_1(abs(vec4<u32>(4294967295u, _wgslsmith_add_u32(16526u, 1u), min(abs(8453u), _wgslsmith_sub_u32(4294967295u, 18119u)), 1u)));
    var var_2 = 96997u;
    let var_3 = u_input.a;
    var var_4 = Struct_4(-1211f, ((firstLeadingBit(var_3.wxz) >> (var_1.a.wzz % vec3<u32>(32u))) & var_0.yxz) & _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b, u_input.b, 0i), ~u_input.a.xzz & _wgslsmith_sub_vec3_i32(var_0.zzy, var_3.zxx)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(512f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-698f + -140f) * _wgslsmith_div_f32(330f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1760f), _wgslsmith_f_op_f32(f32(-1f) * -1023f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(459f - -1458f), _wgslsmith_f_op_f32(f32(-1f) * -805f))))), select(!any(vec4<bool>(true, true, true, true)), true, _wgslsmith_f_op_f32(min(-508f, -582f)) >= _wgslsmith_f_op_f32(round(1008f))), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    let var_5 = -773f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, _wgslsmith_add_u32(var_1.a.x | var_1.a.x, 4294967295u >> (var_1.a.x % 32u)), var_1.a.x), select(select(vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x), firstLeadingBit(var_1.a.zwz), false), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 19390u, 77990u), vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x)), var_1.a.zxx << (var_1.a.yxw % vec3<u32>(32u))), !(!vec3<bool>(false, var_4.d, var_4.d)))), vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_4.c - -170f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5) + _wgslsmith_f_op_f32(func_2()))))), _wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(7785i | var_4.b.x, -15150i, 2147483647i)));
}

