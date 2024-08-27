struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(26244i, i32(-2147483648), 2147483647i, -20350i), vec4<i32>(i32(-2147483648), -41591i, -1i, 0i), vec4<i32>(5807i, -42417i, -41646i, 23356i), vec4<i32>(-3361i, -1i, 17516i, -3792i), vec4<i32>(-2869i, 32170i, i32(-2147483648), 56634i), vec4<i32>(1i, 1i, 2147483647i, -47686i), vec4<i32>(2147483647i, 1i, 0i, -10960i), vec4<i32>(-43583i, -13982i, i32(-2147483648), -8874i), vec4<i32>(1i, 906i, -1i, -54478i), vec4<i32>(0i, 0i, 0i, -22432i), vec4<i32>(-16538i, 2147483647i, 2147483647i, 32929i), vec4<i32>(21923i, 1i, 2147483647i, 4734i), vec4<i32>(i32(-2147483648), -20844i, 9471i, -46793i), vec4<i32>(-1i, 3235i, -17017i, 2147483647i), vec4<i32>(24812i, 0i, -28547i, 12054i), vec4<i32>(0i, -37261i, -62000i, 7395i), vec4<i32>(-1i, 5970i, -76612i, -1i), vec4<i32>(21987i, -53306i, 2147483647i, 2147483647i), vec4<i32>(-41091i, -4240i, 1i, 65996i), vec4<i32>(-6641i, 2147483647i, -1i, -55377i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(54021i, 45445i, -1i, -29195i), vec4<i32>(4846i, 29522i, -44491i, 2147483647i), vec4<i32>(-22191i, -57229i, 2147483647i, 0i), vec4<i32>(8492i, 0i, -78113i, 35683i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -1i));

var<private> global1: array<vec2<i32>, 12>;

var<private> global2: vec4<u32>;

var<private> global3: array<vec4<u32>, 14>;

var<private> global4: vec4<u32> = vec4<u32>(0u, 15666u, 1u, 1u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    var var_0 = Struct_1(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), all(vec2<bool>(false, false))), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(847f, -1050f, 136f, 1333f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1088f, 319f, 296f, 1000f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-393f, 1256f, -1206f, -327f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1023f, -1000f, -1588f, 793f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-497f, -1273f, -244f, 1239f), vec4<f32>(210f, 1133f, 576f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(862f, 784f, 417f, -247f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-312f, -171f, -850f, 574f), vec4<f32>(-127f, 473f, -735f, 1371f))))))));
    let var_1 = global4.wx;
    global0 = array<vec4<i32>, 26>();
    let var_2 = Struct_1(vec4<bool>(all(!var_0.a.zwz), select(false, (var_0.a.x || var_0.a.x) && var_0.a.x, all(select(vec3<bool>(var_0.a.x, true, var_0.a.x), var_0.a.wxx, vec3<bool>(var_0.a.x, var_0.a.x, false)))), false, all(var_0.a.xy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, 1435f, var_0.b.x, -1383f), vec4<f32>(var_0.b.x, -762f, -599f, var_0.b.x), vec4<bool>(true, true, var_0.a.x, var_0.a.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x) + var_0.b))));
    var var_3 = all(var_0.a.xy);
    return any(select(vec4<bool>(false, var_2.a.x, var_2.a.x, var_2.a.x), var_0.a, var_2.a));
}

fn func_2() -> u32 {
    global1 = array<vec2<i32>, 12>();
    var var_0 = !(true != all(vec3<bool>(true, true, true))) && func_3(~vec2<u32>(17377u, _wgslsmith_mod_u32(1599u, 55121u)));
    global3 = array<vec4<u32>, 14>();
    let var_1 = abs(1i);
    var_0 = true;
    return abs(u_input.c.x);
}

fn func_1(arg_0: i32, arg_1: bool) -> f32 {
    global2 = _wgslsmith_clamp_vec4_u32(countOneBits(~reverseBits(max(global3[_wgslsmith_index_u32(4294967295u, 14u)], vec4<u32>(4294967295u, global4.x, global4.x, 0u)))), vec4<u32>(~1u ^ ~_wgslsmith_mult_u32(global4.x, 16505u), func_2(), u_input.b.x & (~u_input.c.x ^ 85459u), 55646u), vec4<u32>(~global4.x, 4294967295u, min(~func_2(), 24298u), global2.x));
    var var_0 = !vec4<bool>(true, any(vec2<bool>(true, true)), func_3(vec2<u32>(global4.x, 39449u)), false);
    let var_1 = Struct_1(!vec4<bool>(~global2.x > _wgslsmith_mult_u32(u_input.c.x, 44887u), true, true, var_0.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -769f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(396f, -586f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-855f, _wgslsmith_div_f32(-105f, 315f), all(vec4<bool>(false, false, var_0.x, false)))) * _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-533f - 512f), var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -121f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-936f)) + _wgslsmith_f_op_f32(select(-1224f, -486f, var_0.x)))));
    global3 = array<vec4<u32>, 14>();
    global3 = array<vec4<u32>, 14>();
    return -1745f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(181f, -657f, true)))) + -390f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(2147483647i, true)), -762f)))));
    global3 = array<vec4<u32>, 14>();
    global1 = array<vec2<i32>, 12>();
    global1 = array<vec2<i32>, 12>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), var_0.x, _wgslsmith_f_op_f32(floor(var_0.x)));
    global1 = array<vec2<i32>, 12>();
    global3 = array<vec4<u32>, 14>();
    let var_2 = Struct_1(vec4<bool>(any(vec2<bool>(true, all(vec3<bool>(false, false, false)))), true, true, true), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1.x, -733f, var_1.x))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(484f, 1000f, var_0.x, -792f), vec4<f32>(var_0.x, var_1.x, 423f, var_0.x))))))))));
    let x = u_input.a;
    s_output = StorageBuffer((-u_input.a.x & (i32(-1i) * -19521i)) | (_wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -16110i, 35195i, u_input.a.x), global0[_wgslsmith_index_u32(0u, 26u)])) ^ min(~u_input.a.x, 4735i)), var_2.b.x, 1i ^ _wgslsmith_sub_i32(1805i, ~(~u_input.a.x)), vec4<u32>(~14337u, _wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, _wgslsmith_div_u32(5305u, 10604u)), select(~vec2<u32>(4294967295u, 4294967295u), select(global4.zz, global4.zy, true), true)), ~_wgslsmith_sub_u32(global2.x, 30346u), firstLeadingBit(~(~1u))));
}

