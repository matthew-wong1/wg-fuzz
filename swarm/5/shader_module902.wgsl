struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec3<u32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<u32>) -> f32 {
    let var_0 = 4294967295u;
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1711f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-376f, -196f, any(vec3<bool>(false, true, true)))))), 1314f), countOneBits(firstLeadingBit(firstTrailingBit(~arg_2))), vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(4294967295u, arg_2.x) & 4294967295u), ~arg_1.x), select(!(!vec2<bool>(true, global0.x)), vec2<bool>(all(select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), global0.x)), global0.x), vec2<bool>(true, false)), arg_0);
    var var_2 = vec4<bool>(!(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -45056i, var_1.e), vec3<i32>(u_input.a, -1i, arg_0)), 0i) >= 1i), var_1.d.x, var_1.d.x, any(select(select(var_1.d, var_1.d, global0.x), var_1.d, vec2<bool>(any(var_1.d), false))));
    var var_3 = abs(1i);
    var var_4 = vec3<i32>(select(var_1.e, var_1.e, 1u != _wgslsmith_add_u32(var_0, global1.x)), ~(-56255i), _wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(arg_0, 12982i, 35525i)), min(vec3<i32>(359i, var_1.e, 2147483647i), vec3<i32>(26241i, 0i, u_input.a)) | ~vec3<i32>(u_input.a, var_1.e, 29948i))) & -abs(vec3<i32>(~31750i, _wgslsmith_mod_i32(arg_0, arg_0), u_input.a));
    return _wgslsmith_f_op_f32(-var_1.a.x);
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-151f * _wgslsmith_f_op_f32(1000f - -427f))))));
    let var_1 = _wgslsmith_f_op_f32(ceil(-619f));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1, 664f, var_1)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, var_1, var_1))), vec3<f32>(var_1, -108f, var_1))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-134f, 897f, 286f)))))))));
    var var_3 = vec3<bool>(true == all(!select(vec3<bool>(false, false, arg_0), vec3<bool>(false, arg_0, true), vec3<bool>(global0.x, arg_0, arg_0))), !(!any(vec3<bool>(true, true, false)) | (global0.x | global0.x)), arg_0 && false);
    var var_4 = vec4<i32>(0i & select(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), vec4<i32>(-7402i, -1i, u_input.a, u_input.a) | vec4<i32>(-1i, u_input.a, -14420i, -2147483647i)), any(!var_3.zy)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, -2147483647i, u_input.a), vec4<i32>(-29331i, 16804i, 2147483647i, 2147483647i)), 3424i), _wgslsmith_clamp_i32(27080i, -22930i, -u_input.a)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(2147483647i, u_input.a, -2147483647i)), countOneBits(vec3<i32>(u_input.a, 1924i, u_input.a))), u_input.a)), u_input.a & _wgslsmith_mod_i32(~(-58898i), u_input.a), u_input.a);
    return _wgslsmith_f_op_f32(func_3(firstTrailingBit(~u_input.a), global1.zx, ~_wgslsmith_mult_vec2_u32(vec2<u32>(firstLeadingBit(u_input.b.x), max(u_input.b.x, global1.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, global1.x), ~u_input.b.xw))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec3<u32>, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(314f, -572f, -919f, 289f)))))) - vec4<f32>(-1566f, -1508f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(all(vec4<bool>(false, false, false, global0.x)))), -685f), _wgslsmith_f_op_f32(select(757f, _wgslsmith_f_op_f32(round(-2447f)), true))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.yzx + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(769f - -204f), var_0.x, _wgslsmith_f_op_f32(1423f - var_0.x)))), reverseBits(global1.yx), _wgslsmith_add_vec2_u32(~vec2<u32>(~global1.x, global1.x), _wgslsmith_div_vec2_u32(vec2<u32>(arg_2.x, _wgslsmith_div_u32(10180u, arg_2.x)), ~(vec2<u32>(1u, arg_2.x) >> (vec2<u32>(28799u, u_input.b.x) % vec2<u32>(32u))))), select(vec2<bool>(true, global0.x), !select(vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, true), global0.x), (!global0.x == global0.x) == (!global0.x | global0.x)), firstTrailingBit(-2147483647i));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_1.a + _wgslsmith_f_op_vec3_f32(trunc(var_0.xwx))))))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(select(global1.yz, vec2<u32>(arg_2.x, var_1.c.x), var_1.d.x), arg_2.zy), firstTrailingBit(vec2<u32>(global1.x, arg_2.x))), min(~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.x, var_1.c.x), vec2<u32>(0u, 0u)), ~u_input.b.zz), ~u_input.b.xy << ((~u_input.b.yx ^ vec2<u32>(16067u, global1.x)) % vec2<u32>(32u))), vec2<bool>(true, var_1.d.x & !(1i <= var_1.e)), arg_3);
    let var_2 = Struct_1(vec3<f32>(-1327f, _wgslsmith_f_op_f32(-1200f + var_1.a.x), 1000f), _wgslsmith_clamp_vec2_u32(~u_input.b.zz, vec2<u32>(~(~38737u), var_1.c.x), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_2.x, 1u), ~arg_2.zx)), global1.yy, vec2<bool>(any(select(select(vec2<bool>(global0.x, var_1.d.x), vec2<bool>(false, false), global0.x), vec2<bool>(false, false), var_1.d)), false), abs(_wgslsmith_mult_i32(_wgslsmith_div_i32(countOneBits(2147483647i), select(u_input.a, -7718i, true)), -18387i)));
    var var_3 = vec3<i32>(arg_0, reverseBits(firstLeadingBit(min(arg_0 | -2147483647i, _wgslsmith_div_i32(var_2.e, 1i)))), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.e | 2147483647i, 0i), countOneBits(vec2<i32>(firstLeadingBit(var_1.e), reverseBits(arg_0)))));
    return Struct_1(var_1.a, ~arg_2.zx, reverseBits(var_2.c), select(!vec2<bool>(all(var_1.d), global0.x || false), var_2.d, var_1.d), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.zxw;
    let var_1 = select(vec3<bool>(true, all(!select(vec2<bool>(true, true), vec2<bool>(global0.x, true), vec2<bool>(false, false))), (global0.x & true) != all(vec3<bool>(global0.x, true, true))), vec3<bool>(!(37812u > u_input.b.x), !(!(!global0.x)), -(u_input.a & u_input.a) != 1i), vec3<bool>(true, all(select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x), any(vec4<bool>(global0.x, false, true, true)))), all(select(select(vec2<bool>(global0.x, true), vec2<bool>(true, false), vec2<bool>(global0.x, global0.x)), vec2<bool>(global0.x, global0.x), global0.x))));
    var var_2 = func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(3268i, -_wgslsmith_sub_i32(u_input.a, u_input.a)), ~(~select(vec2<i32>(43166i, -2147483647i), vec2<i32>(37648i, 2147483647i), true))), -_wgslsmith_div_i32(u_input.a, _wgslsmith_mod_i32(u_input.a, _wgslsmith_mult_i32(u_input.a, 62504i))), var_0, 0i);
    var var_3 = firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(34501i, ~u_input.a));
    global0 = vec2<bool>(!all(var_1), false);
    let var_4 = select(vec3<bool>(true, global0.x, !(!var_2.d.x)), vec3<bool>(any(var_2.d), func_1(var_2.e, _wgslsmith_mod_i32(var_2.e, u_input.a), vec3<u32>(var_2.c.x, u_input.b.x, 38810u), ~u_input.a).d.x || ((var_3.x <= -2147483647i) | !var_2.d.x), true), all(!select(!var_2.d, var_2.d, vec2<bool>(global0.x, false))));
    let var_5 = !(global0.x == false);
    let var_6 = countOneBits(select(vec3<i32>(-var_3.x, _wgslsmith_add_i32(func_1(-2147483647i, var_2.e, vec3<u32>(4294967295u, 1u, 25789u), 1i).e, _wgslsmith_sub_i32(u_input.a, var_2.e)), ~abs(var_2.e)), min(vec3<i32>(-5386i, 1i, _wgslsmith_mod_i32(-6519i, var_2.e)), vec3<i32>(-117i, -u_input.a, 1i)), var_4));
    let var_7 = vec4<bool>(true, !all(!select(vec2<bool>(global0.x, var_1.x), vec2<bool>(true, var_5), var_1.x)), false, false);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x << ((~105284u | firstTrailingBit(~var_0.x)) % 32u), vec4<f32>(-1186f, 1000f, var_2.a.x, var_2.a.x), _wgslsmith_f_op_vec2_f32(trunc(func_1(var_6.x, 1i, ~(~vec3<u32>(4294967295u, 1496u, var_2.b.x)), ~var_2.e).a.yz)), vec2<i32>((firstTrailingBit(u_input.a) ^ _wgslsmith_clamp_i32(57733i, u_input.a, var_2.e)) >> (var_2.b.x % 32u), _wgslsmith_add_i32(func_1(1i, 1i, firstLeadingBit(vec3<u32>(26118u, global1.x, 4294967295u)), ~(-2147483647i)).e, -7251i)));
}

