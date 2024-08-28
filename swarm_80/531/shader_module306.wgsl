struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    var var_0 = ~u_input.d;
    let var_1 = arg_1;
    let var_2 = vec4<bool>(!(!(!global0.x)), all(select(vec4<bool>(any(vec4<bool>(global0.x, false, global0.x, false)), true, any(global0.xzz), arg_0.a < -228f), vec4<bool>(global0.x, true, true, true), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 92912i, 33924i), vec3<i32>(u_input.a, 0i, 27202i)) == arg_1.x)), 1u <= u_input.c, true);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.a)), arg_0.a, _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(round(-1289f))), _wgslsmith_f_op_f32(arg_0.a + -765f));
    var var_4 = -firstLeadingBit(~_wgslsmith_div_i32(-arg_1.x, 2147483647i));
    return ~(-8498i);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<f32>) -> vec2<bool> {
    var var_0 = vec4<i32>(-1i, _wgslsmith_sub_i32(~func_3(Struct_1(760f), -vec2<i32>(u_input.a, arg_0)), -(~u_input.a)), _wgslsmith_clamp_i32(u_input.a, i32(-1i) * -arg_0, ~(-arg_0) << (_wgslsmith_sub_u32(arg_2.x, ~0u) % 32u)), abs(-u_input.a));
    var var_1 = 0i;
    return select(!global0.zw, vec2<bool>(true || !(arg_3.x <= arg_3.x), false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_3.x)), -1181f)), arg_3.x) > -1184f);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = select(select(vec2<bool>(false, true), !global0.yy, global0.x), !(!select(vec2<bool>(true, global0.x), func_2(-70478i, global0.x, vec3<u32>(u_input.b.x, 55072u, u_input.c), vec2<f32>(arg_0.x, arg_0.x)), func_2(42823i, global0.x, vec3<u32>(0u, u_input.c, u_input.c), vec2<f32>(-578f, -1000f)))), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_0);
    var var_2 = Struct_2(min(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(21432i, -2147483647i, -23071i, -2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(u_input.d, u_input.c, u_input.b.x, u_input.c) % vec4<u32>(32u))), min(vec4<i32>(-19001i, 50015i, 1i, u_input.a), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)) << (vec4<u32>(4294967295u, u_input.d, 3259u, u_input.b.x) % vec4<u32>(32u))), ~vec4<i32>(5486i, u_input.a, -9506i, -1i) ^ ~(vec4<i32>(u_input.a, 1i, 0i, -1i) | vec4<i32>(0i, u_input.a, -10308i, u_input.a))), u_input.a, global0.wz, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -694f, -640f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-950f, -1109f, arg_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -137f, -268f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(405f, 1000f, arg_0.x) + vec3<f32>(arg_0.x, var_1.x, var_1.x)))), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 710f, var_1.x) + vec3<f32>(arg_0.x, var_1.x, var_1.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, var_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -714f))))));
    var_0 = global0.yz;
    var_0 = var_2.c;
    return Struct_1(arg_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    let var_0 = vec2<u32>(~0u, _wgslsmith_sub_u32(arg_2.x & u_input.d, min(~arg_2.x, _wgslsmith_dot_vec2_u32(max(vec2<u32>(42010u, 774u), vec2<u32>(u_input.d, 24723u)), u_input.b.zx))));
    global0 = select(select(!vec4<bool>(all(vec4<bool>(global0.x, global0.x, false, global0.x)), true | global0.x, select(global0.x, global0.x, true), true), !select(!vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, true, true, true), global0.x), all(select(select(global0.xwz, vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false)), global0.zzz, true))), !vec4<bool>(global0.x, !all(global0.zwx), true, false), true);
    let var_1 = Struct_2(-(vec4<i32>(-1i, 1i, ~27796i, i32(-1i) * -49501i) << (vec4<u32>(arg_2.x, firstTrailingBit(28994u), 1u, 1u) % vec4<u32>(32u))), min((-16611i ^ abs(u_input.a)) | ~select(u_input.a, u_input.a, false), -18602i), vec2<bool>(select(any(!vec2<bool>(global0.x, global0.x)), 1f <= _wgslsmith_f_op_f32(-arg_1.a), select(true & global0.x, global0.x, true)), true), vec3<f32>(-1194f, _wgslsmith_f_op_f32(-arg_0.a), arg_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, -1073f, 169f), vec3<f32>(328f, arg_0.a, arg_1.a)))) - vec3<f32>(477f, arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -639f)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a));
    let var_3 = !func_2(-1i & ~(-u_input.a), 20919i > (_wgslsmith_clamp_i32(var_1.a.x, var_1.b, -58597i) | firstTrailingBit(2147483647i)), vec3<u32>(~(~arg_2.x), 7870u, ~var_0.x | select(1u, var_0.x, global0.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, -1186f) * vec2<f32>(735f, 239f)), vec2<f32>(-346f, -419f), vec2<bool>(var_1.c.x, var_1.c.x))))));
    return _wgslsmith_f_op_f32(350f - arg_0.a);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: vec2<i32>) -> Struct_3 {
    return Struct_3(_wgslsmith_sub_u32(4294967295u, u_input.d), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(706f, arg_1.a.e.x) + arg_0.yw))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(arg_0.wx, arg_0.yy))))), abs(min(u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.d, 4294967295u, u_input.d), vec4<u32>(42682u, u_input.d, u_input.b.x, u_input.b.x)))) & 82905u, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<f32>(_wgslsmith_f_op_f32(ceil(420f)), -205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(738f - 723f))), _wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1519f, -574f), vec2<f32>(1170f, 1431f)))), func_1(vec2<f32>(139f, 1465f)), select(u_input.b.xx & u_input.b.xz, ~u_input.b.xz, global0.zw)))), Struct_4(Struct_2(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, -5665i), vec4<i32>(2147483647i, 0i, -10155i, u_input.a)), vec4<i32>(11349i, 1i, u_input.a, u_input.a)), firstTrailingBit(abs(u_input.a)), global0.xy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(156f, 1199f, -863f))) * vec3<f32>(-645f, 2486f, -616f)), vec3<f32>(_wgslsmith_f_op_f32(-1000f - -1311f), 924f, _wgslsmith_div_f32(-1776f, 471f))), global0.x), vec2<i32>(u_input.a << (u_input.b.x % 32u), ~(-574i)));
    global0 = select(select(select(vec4<bool>(global0.x, !global0.x, all(global0.wzz), global0.x), !(!vec4<bool>(global0.x, false, global0.x, true)), vec4<bool>(true, global0.x, global0.x, any(global0.yy))), vec4<bool>(all(vec2<bool>(true, global0.x)), true, true, false), false), vec4<bool>(any(select(!vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), !vec4<bool>(false, false, true, global0.x))), global0.x, all(global0.yxy), any(vec4<bool>(global0.x, all(global0.xx), global0.x | global0.x, true))), true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b.a - -456f), func_5(vec4<f32>(var_0.b.a, var_0.b.a, var_0.b.a, var_0.b.a), Struct_4(Struct_2(vec4<i32>(1i, u_input.a, 1i, var_0.d), var_0.d, global0.wy, vec3<f32>(-934f, -1000f, -244f), vec3<f32>(var_0.b.a, var_0.b.a, var_0.b.a)), true), vec2<i32>(-18833i, -3745i)).b.a)), var_0.b.a) - -1000f) * var_0.b.a);
    let var_2 = ~var_0.a;
    var var_3 = func_1(_wgslsmith_div_vec2_f32(vec2<f32>(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1284f, 979f))).a, _wgslsmith_f_op_f32(step(-1137f, var_0.b.a))), vec2<f32>(var_1, _wgslsmith_f_op_f32(-var_1))));
    var_0 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(102f, var_0.b.a, -677f, var_3.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(161f, -1061f, var_3.a, var_0.b.a) * vec4<f32>(var_1, -775f, var_1, var_0.b.a)))))), Struct_4(Struct_2(_wgslsmith_div_vec4_i32(-vec4<i32>(-1i, 0i, 1i, 1i), vec4<i32>(1i, -65204i, u_input.a, -4988i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_0.d), countOneBits(vec2<i32>(41135i, -2147483647i))), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.a, -567f, 692f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_3.a, var_0.b.a) + vec3<f32>(var_0.b.a, var_1, -1501f)), vec3<bool>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1311f, 1002f, -1897f)))), true), ~max(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 1i), ~vec2<i32>(u_input.a, -39968i)), -(~vec2<i32>(u_input.a, var_0.d))));
    global0 = select(!vec4<bool>(global0.x, false, any(select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, false, global0.x, false), vec4<bool>(global0.x, false, false, global0.x))), !any(global0.wy)), !(!vec4<bool>(false || global0.x, global0.x, true, !global0.x)), !select(select(vec4<bool>(false, false, global0.x, false), !vec4<bool>(false, true, global0.x, true), global0.x), select(vec4<bool>(true, true, false, true), !vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(false, false, false, global0.x)), vec4<bool>(any(vec2<bool>(global0.x, global0.x)), false, false, any(global0.wy))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 60963u, var_2)), ~(~0u), select(1u, ~u_input.c, true)), vec3<i32>(-7578i, u_input.a, u_input.a), u_input.d, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(668f, var_0.b.a)))))))));
}

