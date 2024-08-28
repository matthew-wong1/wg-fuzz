struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: f32 = -641f;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(511f * 1f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(364f)) * -1333f), Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(3954u, 105511u, global0.x, u_input.b), vec4<u32>(u_input.b, 47524u, u_input.b, 45727u)) >> (~(~global0.x) % 32u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(681f)) * _wgslsmith_f_op_f32(-332f * -658f)), true, u_input.b, ~vec3<u32>(global0.x, 33194u, 0u))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b.a) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-228f))))))));
    global1 = _wgslsmith_f_op_f32(func_2(vec4<u32>(~49878u, u_input.b, 105738u, 22664u) | reverseBits(_wgslsmith_add_vec4_u32(min(vec4<u32>(20630u, global0.x, var_0.b.a, 71161u), vec4<u32>(var_0.b.b.d.x, 0u, var_0.b.b.c, 1u)), vec4<u32>(11291u, 1u, var_0.b.a, 0u) >> (vec4<u32>(u_input.b, 4294967295u, global0.x, 15155u) % vec4<u32>(32u))))));
    global0 = select(var_0.b.b.d.zy, _wgslsmith_div_vec2_u32(var_0.b.b.d.yx >> (var_0.b.b.d.xz % vec2<u32>(32u)), select(~(~vec2<u32>(15877u, 1u)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, var_0.b.b.c), vec2<u32>(u_input.b, 4294967295u)), u_input.a.x != ~2147483647i)), vec2<bool>(all(!select(vec2<bool>(var_0.b.b.b, var_0.b.b.b), vec2<bool>(var_0.b.b.b, false), vec2<bool>(false, false))), var_0.b.b.b));
    var var_1 = select(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -abs(u_input.a.x), u_input.a.x, -3708i), vec4<i32>(i32(-1i) * -49973i, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -11810i, -2147483647i), -vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 3980i)), u_input.a.x)), vec4<i32>(countOneBits(_wgslsmith_clamp_i32(-5497i, u_input.a.x, u_input.a.x)), 1i, u_input.a.x, 2147483647i), vec4<bool>(true, 2147483647i == u_input.a.x, !any(!vec3<bool>(false, false, var_0.b.b.b)), !(!all(vec3<bool>(false, false, var_0.b.b.b)))));
    return -426f;
}

fn func_1(arg_0: vec4<i32>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.b, 1u, 75167u, 62062u))) + -345f))));
    var var_1 = u_input.a.x;
    let var_2 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_add_u32(abs(global0.x), ~75937u), max(_wgslsmith_add_u32(1u, u_input.b), ~71403u), 12049u), ~vec3<u32>(28343u, global0.x, _wgslsmith_clamp_u32(select(4294967295u, global0.x, true), ~0u, _wgslsmith_mult_u32(global0.x, 53414u))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1287f, _wgslsmith_f_op_f32(-var_0)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(func_3())) - _wgslsmith_div_vec2_f32(vec2<f32>(-453f, _wgslsmith_div_f32(564f, 1795f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(907f, var_0)))));
    var var_4 = 419f;
    return Struct_5(var_3.x, Struct_2(26012u, Struct_1(var_3.x, !all(vec2<bool>(false, false)), abs(36168u), _wgslsmith_sub_vec3_u32(vec3<u32>(28159u, var_2, var_2), ~vec3<u32>(global0.x, 1u, var_2)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_5) -> Struct_2 {
    let var_0 = arg_0.x;
    let var_1 = countOneBits(arg_2.b.b.d.xx) << ((vec2<u32>(~arg_2.b.b.d.x ^ 47461u, 0u) | (arg_2.b.b.d.xx ^ min(arg_2.b.b.d.xz >> (vec2<u32>(1u, global0.x) % vec2<u32>(32u)), arg_2.b.b.d.zz & vec2<u32>(10352u, 4294967295u)))) % vec2<u32>(32u));
    var var_2 = 755f;
    var var_3 = !arg_0.yx;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_2.b.b.a)), 808f, arg_2.b.b.a))) * vec3<f32>(-1556f, -910f, arg_2.b.b.a));
    return arg_2.b;
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3) -> vec3<u32> {
    global0 = min(~(~arg_0.b.b.d.zy), arg_0.b.b.d.yx);
    let var_0 = vec3<u32>(~(~0u), 0u, ~4294967295u);
    global0 = arg_0.b.b.d.yy;
    let var_1 = Struct_1(arg_0.a, false, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, global0.x | 4294967295u), u_input.b), var_0);
    global0 = vec2<u32>(~arg_0.b.a, _wgslsmith_mod_u32(_wgslsmith_div_u32(~global0.x, u_input.b) | 104832u, 11990u));
    return vec3<u32>(~select(~func_4(vec3<bool>(false, true, var_1.b), -1i, Struct_5(825f, Struct_2(u_input.b, arg_0.b.b))).b.c, _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_0.b.a, var_1.c, var_0.x), var_0, vec3<bool>(var_1.b, false, var_1.b)), vec3<u32>(4294967295u, 71802u, 9719u)), true), _wgslsmith_sub_u32(var_1.d.x, var_1.d.x), ~_wgslsmith_div_u32(reverseBits(1u), (global0.x ^ 6917u) | 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(vec2<u32>(abs(u_input.b), 1u) << (vec2<u32>(abs(1u), _wgslsmith_mod_u32(~u_input.b, u_input.b)) % vec2<u32>(32u)));
    var var_0 = u_input.a;
    var var_1 = max(func_5(Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -979f)), func_4(vec3<bool>(true, true, true), max(var_0.x, 1i), func_1(vec4<i32>(var_0.x, var_0.x, -1i, -2147483647i)))), Struct_3(vec4<i32>(u_input.a.x & -4412i, ~var_0.x, u_input.a.x, ~var_0.x), u_input.a.x, 2703u)), vec3<u32>(_wgslsmith_sub_u32(select(global0.x, u_input.b, true), ~global0.x) & _wgslsmith_div_u32(8651u, global0.x), ~_wgslsmith_sub_u32(global0.x | 1u, ~4294967295u), _wgslsmith_mod_u32(abs(firstLeadingBit(0u)), 4294967295u)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-1f));
    var_1 = reverseBits(vec3<u32>(select(~(40737u << (0u % 32u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, var_1.x, var_1.x), ~vec3<u32>(global0.x, 53584u, 8484u)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), false))), ~_wgslsmith_clamp_u32(firstLeadingBit(4294967295u), ~34757u, 1u), _wgslsmith_dot_vec4_u32(firstTrailingBit(max(vec4<u32>(0u, 1u, 1u, global0.x), vec4<u32>(0u, global0.x, 0u, var_1.x))), _wgslsmith_mod_vec4_u32(~vec4<u32>(53820u, 39749u, 52968u, 49423u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, u_input.b, 4093u, u_input.b), vec4<u32>(var_1.x, 1u, global0.x, global0.x))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-857f, 1461f, -1311f, -866f) - vec4<f32>(-200f, -502f, 1289f, -1221f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-661f, 1113f, -953f, -330f)))))))));
    var var_3 = Struct_1(var_2.x, all(vec2<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(false, false, true, false)))), var_1.x, firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(1u, u_input.b), ~(~4294967295u), _wgslsmith_clamp_u32(min(global0.x, global0.x), u_input.b, u_input.b))));
    var_3 = Struct_1(var_3.a, !all(vec4<bool>(false, true, false, var_3.b)) | func_1(-_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, -15318i, 24183i, -21245i), vec4<i32>(u_input.a.x, 0i, 2147483647i, -1i))).b.b.b, func_5(func_1(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, u_input.a.x, -34019i, -2147483647i), reverseBits(vec4<i32>(-2147483647i, var_0.x, -49129i, 2147483647i)))), Struct_3(vec4<i32>(var_0.x, -1i, var_0.x, 17736i) << (abs(vec4<u32>(1u, var_3.d.x, global0.x, global0.x)) % vec4<u32>(32u)), var_0.x, abs(var_1.x) >> (global0.x % 32u))).x, ~(~vec3<u32>(1u, 4294967295u, firstLeadingBit(var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(var_2.yzw, var_2.wwx)), 1i);
}

