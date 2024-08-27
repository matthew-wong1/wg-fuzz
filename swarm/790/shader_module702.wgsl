struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 23>;

var<private> global1: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: u32) -> vec2<f32> {
    let var_0 = false;
    var var_1 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - 1290f)), arg_1.x, arg_1.x), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(243f, arg_1.x), arg_1.x)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), -334f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x * -384f)))), vec2<bool>((u_input.a.x > arg_0.b.x) && false, true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) * arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - arg_1.x)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(744f)), _wgslsmith_f_op_f32(1665f - -1226f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, 1725f)));
    var_1 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1202f, var_1.a.x) * _wgslsmith_f_op_f32(391f + 1340f)))), 1882f), var_1.b);
    let var_2 = u_input.b.x;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(-150f, _wgslsmith_f_op_f32(trunc(arg_1.x))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-900f, arg_1.x), arg_1.xx, vec2<bool>(var_1.b.c.x, var_1.b.c.x)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) - _wgslsmith_f_op_vec2_f32(exp2(var_1.b.d.zz)))))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1345f, arg_0) * vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, 953f))) * _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<i32>(0i, 13385i), u_input.a), vec3<f32>(arg_0, 614f, 1109f), 4294967295u, u_input.b.x))))));
    var var_1 = -(~(~max(-43339i, _wgslsmith_mod_i32(2147483647i, arg_2))));
    let var_2 = u_input.a.zzw;
    var var_3 = Struct_1(u_input.a.xy, select(vec4<i32>(countOneBits(arg_2 << (u_input.b.x % 32u)), _wgslsmith_clamp_i32(firstLeadingBit(var_2.x), select(0i, var_2.x, arg_1), var_2.x), ~(-1i), ~_wgslsmith_add_i32(u_input.c, var_2.x)), u_input.a, !select(!vec4<bool>(false, arg_1, false, true), select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(false, false, false, false), vec4<bool>(true, arg_1, arg_1, false)), arg_1 && arg_1)));
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_0))));
    return any(select(vec2<bool>(true, var_3.b.x <= arg_2), vec2<bool>((true || arg_1) || arg_1, (arg_1 || arg_1) || true), select(select(vec2<bool>(arg_1, false), vec2<bool>(true, false), arg_1 & arg_1), !(!vec2<bool>(false, arg_1)), select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, false), vec2<bool>(true, arg_1)), !vec2<bool>(arg_1, arg_1), arg_1))));
}

fn func_1(arg_0: Struct_4) -> vec2<bool> {
    global0 = array<vec3<u32>, 23>();
    var var_0 = vec4<f32>(-2417f, 467f, _wgslsmith_f_op_f32(-arg_0.b.e), -580f);
    var var_1 = -(u_input.a.yy | (vec2<i32>(-1i) * -u_input.a.xx));
    let var_2 = ~u_input.b.wx;
    var_0 = vec4<f32>(var_0.x, 155f, _wgslsmith_f_op_f32(arg_0.b.d.x + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-886f - var_0.x))));
    return vec2<bool>(false, select(func_2(var_0.x, !arg_0.b.c.x, firstLeadingBit(36300i)), 43568u >= _wgslsmith_dot_vec2_u32(~u_input.b.ww, u_input.b.zz), true));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<bool>, arg_3: bool) -> Struct_4 {
    global0 = array<vec3<u32>, 23>();
    var var_0 = Struct_1(arg_0, firstLeadingBit(~_wgslsmith_sub_vec4_i32(min(vec4<i32>(4410i, arg_0.x, 1i, u_input.c), u_input.a), _wgslsmith_div_vec4_i32(u_input.a, u_input.a))));
    var_0 = Struct_1(vec2<i32>(i32(-1i) * -select(28977i, u_input.a.x, false), 0i), -vec4<i32>(1i, ~arg_0.x ^ reverseBits(-1i), _wgslsmith_div_i32(-6730i << (u_input.b.x % 32u), _wgslsmith_div_i32(1i, arg_0.x)), u_input.a.x << (u_input.b.x % 32u)));
    global0 = array<vec3<u32>, 23>();
    let var_1 = ~firstLeadingBit(countOneBits(min(vec4<u32>(u_input.b.x, 0u, 5287u, 0u), u_input.b) & (vec4<u32>(0u, 16824u, u_input.b.x, u_input.b.x) & u_input.b)));
    return Struct_4(Struct_2(_wgslsmith_f_op_f32(1000f - -123f), vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -436f)), vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(793f, 261f, -1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(527f, -1467f, -2204f) * vec3<f32>(564f, 917f, -864f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1496f, 809f, -729f), vec3<f32>(-1000f, 1561f, 268f), arg_2.x)))))), 1253f), Struct_2(-1268f, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-268f + 2229f), _wgslsmith_f_op_f32(-1000f + 443f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(288f, 1931f), vec2<f32>(662f, -1068f), arg_3)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-952f, 1298f))))), !select(arg_2, !vec2<bool>(arg_3, arg_3), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-169f, 1781f, 1000f)))), _wgslsmith_f_op_f32(-1729f * _wgslsmith_f_op_f32(413f - _wgslsmith_f_op_f32(step(-897f, 1029f))))), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.a.zz, any(select(vec2<bool>(false, all(vec3<bool>(true, true, false))), !func_1(Struct_4(Struct_2(435f, vec2<f32>(-531f, -907f), vec2<bool>(false, false), vec3<f32>(-198f, 566f, -434f), 487f), Struct_2(-901f, vec2<f32>(-1000f, -863f), vec2<bool>(true, false), vec3<f32>(216f, 475f, -333f), -1668f), true)), vec2<bool>(any(vec4<bool>(true, true, true, true)), true))), !(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), func_2(-1000f, false, -2006i))), func_2(712f, !any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), u_input.c));
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1842f, 954f, var_0.a.b.x) * var_0.b.d), var_0.b.d) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.b.d)))), func_4(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(-2147483647i, -1i)) | -13226i, abs(_wgslsmith_mod_i32(u_input.a.x, 10969i))), any(vec4<bool>(all(vec4<bool>(var_0.a.c.x, var_0.a.c.x, var_0.c, true)), false && var_0.a.c.x, !var_0.b.c.x, var_0.c)), func_4(reverseBits(u_input.a.zz ^ vec2<i32>(28370i, 2147483647i)), func_2(var_0.b.a, false, -1i), var_0.b.c, var_0.a.c.x).a.c, true).a);
    var var_2 = Struct_3(Struct_1(u_input.a.xw, u_input.a));
    var var_3 = var_0.b;
    var_2 = Struct_3(Struct_1(select(vec2<i32>(1i, 1i), u_input.a.zx, var_3.c), countOneBits(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.a.b.x, u_input.a.x, 0i, u_input.c), var_2.a.b, u_input.a)))));
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_i32(2147483647i, -_wgslsmith_mod_i32(1i, var_2.a.a.x)), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(9427u, 48731u, 4568u, 0u)), vec4<u32>(countOneBits(1u), countOneBits(u_input.b.x), u_input.b.x, u_input.b.x)), -161f, vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~u_input.a.xzx, _wgslsmith_add_vec3_i32(vec3<i32>(-39199i, 14488i, u_input.c), vec3<i32>(u_input.a.x, u_input.c, u_input.a.x)), u_input.a.xxy), -(u_input.a.wxz | vec3<i32>(1i, 0i, var_2.a.b.x))), ~(-22379i), -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(-45864i, -28691i), vec2<i32>(var_2.a.b.x, -10061i)), min(vec2<i32>(8944i, -2147483647i), u_input.a.xw))), vec3<u32>(47365u, ~u_input.b.x, 31247u));
}

