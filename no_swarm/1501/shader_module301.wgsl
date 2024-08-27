struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1273f * arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), arg_2));
    var var_1 = !(!vec2<bool>(all(!arg_0), all(!arg_0.zy)));
    var var_2 = Struct_3(Struct_2(~vec3<u32>(~4294967295u, 4294967295u, 1u), vec3<i32>(u_input.b, countOneBits(_wgslsmith_sub_i32(0i, u_input.b)), ~u_input.b)), true && any(!vec3<bool>(arg_2, true, false)), select(vec3<bool>(true, arg_2, true), select(vec3<bool>(any(arg_0.wx), var_0 >= -766f, !arg_2), select(arg_0.wyz, !arg_0.xwz, var_1.x), arg_0.www), arg_0.zyy));
    var var_3 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(509f)), _wgslsmith_f_op_f32(abs(-961f)))), arg_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_1.yx))))), !var_2.c.x, ~firstLeadingBit(var_2.a.b.x));
    var_2 = Struct_3(Struct_2(vec3<u32>(4294967295u, ~select(14037u, 14375u, var_1.x), ~(~27251u)), ~(~u_input.a.yzy)), var_2.b, select(select(select(select(vec3<bool>(true, var_1.x, true), arg_0.wzw, arg_0.x), select(var_2.c, var_2.c, vec3<bool>(var_3.b, false, var_1.x)), !arg_2), var_2.c, select(arg_0.x, false, var_2.a.b.x >= -40187i)), !var_2.c, arg_0.zzz));
    return _wgslsmith_mult_i32(abs(u_input.b), _wgslsmith_dot_vec3_i32(var_2.a.b, select(var_2.a.b, _wgslsmith_mult_vec3_i32(var_2.a.b, vec3<i32>(var_2.a.b.x, -1i, var_2.a.b.x)), all(arg_0))));
}

fn func_2(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(~func_3(vec4<bool>(true, false, arg_0.c.x, true), vec3<f32>(-579f, -1204f, 258f), arg_0.c.x) & func_3(vec4<bool>(arg_0.b, arg_0.b, true, false), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1441f, 1085f, 270f))), false), firstLeadingBit(~u_input.b)), countOneBits(u_input.a.x));
    var_0 = ~0i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -440f))))));
    var var_2 = ~u_input.a;
    var var_3 = select(abs(abs(abs(arg_0.a.a))), arg_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-324f, var_1, arg_0.c.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_1))) == _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(-164f + _wgslsmith_f_op_f32(var_1 - var_1)), arg_0.c.x & select(arg_0.b, true, false))));
    return arg_0.c;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(1u, 0u, ~1u, _wgslsmith_add_u32(arg_2.a.a.x, arg_2.a.a.x))), vec4<u32>(25700u, 69513u | ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.a.x, arg_2.a.a.x, 1u, 34012u), vec4<u32>(0u, 1u, 0u, 4190u)), reverseBits(15162u), arg_2.a.a.x));
    return func_2(arg_2);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = func_3(!(!select(select(vec4<bool>(false, arg_0, false, false), vec4<bool>(arg_0, arg_0, false, true), true), vec4<bool>(true, false, true, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(804f, -2786f), -805f, 626f))), any(!select(!vec3<bool>(true, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, arg_0))));
    var var_1 = ~(~firstTrailingBit(0u));
    let var_2 = Struct_2(vec3<u32>(116395u, 4294967295u, _wgslsmith_dot_vec3_u32((vec3<u32>(arg_2.a.x, 1u, 16129u) ^ arg_2.a) << (firstTrailingBit(arg_2.a) % vec3<u32>(32u)), ~max(arg_2.a, arg_2.a))), vec3<i32>(u_input.a.x, firstLeadingBit(1i), _wgslsmith_dot_vec3_i32(~(u_input.a.wyw << (arg_2.a % vec3<u32>(32u))), -(u_input.a.wzz << (vec3<u32>(arg_2.a.x, 48745u, arg_2.a.x) % vec3<u32>(32u))))));
    var var_3 = arg_0;
    let var_4 = vec4<u32>(arg_2.a.x ^ (var_2.a.x ^ (47288u & arg_2.a.x)), 0u, ~_wgslsmith_mod_u32(arg_2.a.x << (0u % 32u), 4294967295u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_2.a.x, 1u, 43060u, var_2.a.x)) & vec4<u32>(0u, arg_2.a.x, 4294967295u, 22103u), vec4<u32>(1u, 73748u, var_2.a.x, var_2.a.x))) | vec4<u32>(1u, 4294967295u, 51141u, 1u);
    return vec2<bool>(true, all(!vec4<bool>(false, any(vec2<bool>(arg_0, arg_0)), arg_0, arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(all(!func_1(_wgslsmith_f_op_f32(2033f - 454f), u_input.b, Struct_3(Struct_2(vec3<u32>(4294967295u, 4294967295u, 76090u), u_input.a.xyx), true, vec3<bool>(true, true, true)), 1i)), 851f, Struct_2(_wgslsmith_mult_vec3_u32(select(~vec3<u32>(23706u, 4294967295u, 0u), vec3<u32>(1u, 43996u, 1u), vec3<bool>(true, true, true)), vec3<u32>(~0u, 22384u, ~1u)), min(vec3<i32>(-24104i, ~u_input.b, _wgslsmith_sub_i32(u_input.b, 1i)), ~(vec3<i32>(u_input.b, 20497i, u_input.b) << (vec3<u32>(65299u, 4294967295u, 30685u) % vec3<u32>(32u))))));
    let var_1 = false;
    let var_2 = -_wgslsmith_dot_vec2_i32(u_input.a.xy, firstLeadingBit(~u_input.a.zw) | reverseBits(vec2<i32>(-2147483647i, u_input.b)));
    var var_3 = ~(~(~vec4<u32>(~25209u, select(0u, 4853u, var_1), 4294967295u, firstTrailingBit(11847u))));
    var_3 = vec4<u32>(1u, _wgslsmith_dot_vec2_u32(var_3.zz, ~var_3.xy) & var_3.x, var_3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, _wgslsmith_clamp_u32(~1u, ~1u, _wgslsmith_clamp_u32(var_3.x, 4294967295u, 9812u)), ~41449u ^ var_3.x, 4294967295u), vec4<u32>(var_3.x, min(var_3.x, 1u), _wgslsmith_sub_u32(var_3.x, firstTrailingBit(4294967295u)), var_3.x)));
    var var_4 = ~(~(~(~vec4<u32>(1u, var_3.x, 7685u, 4581u))) | _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(var_3.x, 68086u, 0u, var_3.x) & vec4<u32>(0u, var_3.x, 26569u, 4294967295u)), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(53097u, var_3.x, var_3.x, 43619u), vec4<u32>(var_3.x, 4294967295u, var_3.x, 4294967295u)))));
    var var_5 = vec2<bool>(true, all(vec3<bool>(!var_0.x, func_2(Struct_3(Struct_2(var_3.zxy, vec3<i32>(15127i, var_2, -14678i)), false, vec3<bool>(false, var_0.x, var_0.x))).x, !var_1)) || (~(~1u) != _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(54244u, var_4.x, 30037u, 4294967295u), vec4<u32>(76971u, var_4.x, var_4.x, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_4.x, 1u, var_4.x), vec4<u32>(0u, var_4.x, 1u, 6953u)))));
    var var_6 = Struct_2(_wgslsmith_mod_vec3_u32(firstTrailingBit(var_3.zxw), ~var_3.xww), u_input.a.wxy << (~var_3.zxw % vec3<u32>(32u)));
    var_4 = (abs(~vec4<u32>(1u, 60851u, var_6.a.x, 1u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(min(var_3.x, var_3.x), ~var_3.x, 1u, abs(var_4.x)), countOneBits(select(vec4<u32>(var_6.a.x, var_6.a.x, 4294967295u, var_3.x), vec4<u32>(var_6.a.x, var_4.x, 4294967295u, 61943u), var_0.x)), vec4<u32>(~24572u, 1u, select(0u, var_6.a.x, var_0.x), 24829u))) << (_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(abs(var_3.x), var_6.a.x, ~var_4.x, 0u), reverseBits(~vec4<u32>(4294967295u, var_4.x, var_3.x, var_6.a.x))), ~vec4<u32>(_wgslsmith_mod_u32(var_3.x, var_3.x), ~36374u, _wgslsmith_add_u32(0u, var_3.x), _wgslsmith_mult_u32(var_4.x, var_4.x))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(42288u, var_3.x) << (vec2<u32>(50849u, var_4.x) % vec2<u32>(32u)), abs(var_6.a.xx)), _wgslsmith_mod_u32(50814u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, var_6.a.x, var_4.x, var_3.x), vec4<u32>(var_4.x, 4294967295u, var_4.x, 14756u)))), ~_wgslsmith_clamp_u32(0u, reverseBits(4294967295u), countOneBits(var_6.a.x))), -700f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -505f), vec2<f32>(-960f, -102f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1193f, -327f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-246f, -289f) - vec2<f32>(-1379f, -1251f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(237f, -241f) + vec2<f32>(674f, 1029f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-857f, -222f, -314f, -1444f))) - vec4<f32>(-491f, _wgslsmith_f_op_f32(-1000f * -741f), _wgslsmith_f_op_f32(floor(-1936f)), _wgslsmith_f_op_f32(-1575f - 1000f)))));
}

