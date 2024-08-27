struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: bool,
    d: f32,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(-965f, -577f, 896f, 500f, -159f);

var<private> global1: vec4<i32> = vec4<i32>(50008i, -36287i, 2147483647i, -24728i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(697f, 2594f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(314f, global0[_wgslsmith_index_u32(1u, 5u)]))))) + vec2<f32>(123f, _wgslsmith_f_op_f32(-112f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 5u)] - global0[_wgslsmith_index_u32(0u, 5u)])))), ~abs(vec3<u32>(select(u_input.a, 0u, false), ~u_input.b, u_input.a)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-987f, global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)]) + vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], -1000f, global0[_wgslsmith_index_u32(4294967295u, 5u)])))))))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, var_0.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, global0[_wgslsmith_index_u32(31314u, 5u)]) * var_0.a), vec2<bool>(false, true))))), var_0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(var_0.c, vec3<f32>(181f, -836f, -1526f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.c, vec3<f32>(-1300f, -1177f, -1462f)))))));
    var var_2 = u_input.a;
    let var_3 = Struct_3(~_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, -2147483647i >> (var_0.b.x % 32u), _wgslsmith_div_i32(global1.x, global1.x), max(global1.x, 41642i)), vec4<i32>(~(-2147483647i), firstLeadingBit(arg_0.a.x), arg_0.a.x, global1.x)));
    var_0 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 5u)]) - global0[_wgslsmith_index_u32(max(var_1.a.b.x, u_input.a), 5u)]), 1000f), _wgslsmith_div_vec2_f32(var_1.a.c.xz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(796f, 110f) - var_0.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(2063f, var_1.a.c.x) + var_0.c.zy)))), ~vec3<u32>(~var_0.b.x, _wgslsmith_mult_u32(min(4294967295u, 17302u), abs(1u)), var_1.a.b.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(291f, -1536f)) - _wgslsmith_f_op_f32(-var_1.a.a.x)), 300f, 423f));
    return ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, var_1.a.b.x), var_0.b.yy), u_input.b), u_input.a, 9848u), ~(~vec4<u32>(var_0.b.x, 0u, 11246u, u_input.a)) >> ((~vec4<u32>(4294967295u, 1u, var_0.b.x, u_input.b) & vec4<u32>(24599u, var_0.b.x, 4294967295u, u_input.b)) % vec4<u32>(32u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: bool) -> vec4<f32> {
    var var_0 = global0[_wgslsmith_index_u32(~1u, 5u)];
    var var_1 = Struct_5(arg_1, _wgslsmith_div_vec4_u32(~vec4<u32>(0u, 1u, _wgslsmith_clamp_u32(75634u, 15277u, 1u), 34376u), min(vec4<u32>(u_input.a, 1u, arg_1.x, u_input.b) | ~arg_1, arg_1)), !arg_2, arg_0.x, Struct_4(abs(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 0u), arg_1.wzz)) >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1.x, 4294967295u, 45305u), vec3<u32>(4294967295u, arg_1.x, arg_1.x)) % vec3<u32>(32u)), !(!select(vec4<bool>(arg_2, true, true, arg_2), vec4<bool>(true, arg_2, true, arg_2), vec4<bool>(true, false, false, true))), _wgslsmith_dot_vec4_u32(~min(arg_1, vec4<u32>(arg_1.x, 4294967295u, arg_1.x, 14320u)), func_3(Struct_3(vec4<i32>(447i, u_input.c, global1.x, u_input.c)))), _wgslsmith_f_op_f32(f32(-1f) * -1614f)));
    let var_2 = -(~2570i & global1.x) & u_input.c;
    let var_3 = -(~global1.xwz) & vec3<i32>(_wgslsmith_mod_i32(~max(global1.x, -39842i), ~var_2 & 0i), _wgslsmith_mult_i32(2176i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -36623i, u_input.c, 1i), vec4<i32>(var_2, var_2, var_2, u_input.c)), ~vec4<i32>(var_2, global1.x, 2228i, u_input.c))), var_2 << (~(~arg_1.x) % 32u));
    var var_4 = var_1.e.a;
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_0)));
}

fn func_4(arg_0: vec4<f32>) -> Struct_4 {
    var var_0 = Struct_1(arg_0.xz, vec3<u32>(u_input.b, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(66852u, 40560u, 11707u, 28553u)), vec4<u32>(0u << (u_input.a % 32u), 4294967295u, 47800u, 0u ^ u_input.b)), ~(~(u_input.a >> (u_input.b % 32u)))), arg_0.zxx);
    return Struct_4(_wgslsmith_sub_vec3_u32(var_0.b, var_0.b & ~var_0.b), !select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, any(vec3<bool>(false, true, true)), select(true, false, true)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(func_3(Struct_3(vec4<i32>(global1.x, 2147483647i, u_input.c, global1.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, 57740u, 5861u), vec4<u32>(25987u, var_0.b.x, 0u, 68882u)), vec4<u32>(94289u, 5409u, u_input.b, 1u)) | vec4<u32>(~var_0.b.x, firstTrailingBit(u_input.b), u_input.b, 28549u), ~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(30887u, 27735u, 4294967295u, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.a), vec4<u32>(1u, var_0.b.x, 1u, 0u)), ~vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, u_input.a), vec4<bool>(true, true, true, true))), global0[_wgslsmith_index_u32(7643u, 5u)]);
}

fn func_1() -> i32 {
    var var_0 = 1u;
    global0 = array<f32, 5>();
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-263f, -1032f, 136f, global0[_wgslsmith_index_u32(u_input.b, 5u)]) + vec4<f32>(-358f, -2214f, 677f, global0[_wgslsmith_index_u32(u_input.b, 5u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1191f, global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)], -836f))), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-824f, global0[_wgslsmith_index_u32(20892u, 5u)], global0[_wgslsmith_index_u32(5584u, 5u)], -107f))), vec4<u32>(27130u, 1u, 3474u, u_input.b) >> (vec4<u32>(u_input.b, 4294967295u, 1u, u_input.a) % vec4<u32>(32u)), true))))));
    return ~_wgslsmith_div_i32(-73666i | (u_input.c ^ ~global1.x), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-3603i ^ _wgslsmith_sub_i32(_wgslsmith_mod_i32(24881i, u_input.c), global1.x), 46017i, func_1());
    global0 = array<f32, 5>();
    var var_1 = (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, u_input.a), ~vec2<u32>(0u, u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.a) ^ vec2<u32>(u_input.b, 9487u), vec2<u32>(5315u, u_input.a))) | u_input.a) & 0u;
    var var_2 = -1082f;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-117f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(491f)), -833f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], 506f)))), ~vec3<u32>(~u_input.a, ~max(0u, 39630u), _wgslsmith_add_u32(~u_input.b, ~u_input.a)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(332f, global0[_wgslsmith_index_u32(24382u, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)])))) + vec3<f32>(global0[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 5u)] - global0[_wgslsmith_index_u32(u_input.b, 5u)]), global0[_wgslsmith_index_u32(u_input.a ^ u_input.b, 5u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(85137u, 5u)], -2380f, 1117f))))))));
    let var_4 = select(select(!vec2<bool>(true, any(vec4<bool>(false, false, true, true))), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), true), true), vec2<bool>(select(true, true, false), _wgslsmith_sub_i32(var_0.x, -1i) >= -1i), true);
    var_1 = 65838u;
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.x)), _wgslsmith_f_op_f32(1993f + global0[_wgslsmith_index_u32(~42949u, 5u)]), _wgslsmith_f_op_f32(f32(-1f) * -1412f), _wgslsmith_f_op_f32(f32(-1f) * -1515f)) - _wgslsmith_div_vec4_f32(vec4<f32>(304f, _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(var_3.c.x + 2288f), _wgslsmith_f_op_f32(1661f + 999f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.c.x, -347f, -1119f, var_3.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(42536u, u_input.a) << (vec2<u32>(14527u, u_input.a) % vec2<u32>(32u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.b))), ~(~4294967295u)), _wgslsmith_mod_vec2_u32(abs(var_3.b.xz), ~var_3.b.zz), _wgslsmith_clamp_vec2_u32((min(var_3.b.yx, var_3.b.yz) & firstLeadingBit(vec2<u32>(8483u, var_3.b.x))) >> (~vec2<u32>(var_3.b.x, 4294967295u) % vec2<u32>(32u)), var_3.b.yz, ~var_3.b.yy), var_3.b.x);
}

