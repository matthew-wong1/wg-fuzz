struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false));

var<private> global1: vec3<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = vec2<f32>(arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1255f))))), _wgslsmith_f_op_f32(sign(1260f)))));
    global1 = abs(min(firstLeadingBit(u_input.a), vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a & vec3<u32>(8101u, 0u, arg_0.x), arg_0), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, 4294967295u), 72457u), 0u)));
    global0 = array<vec3<bool>, 31>();
    var var_1 = vec3<bool>(!any(vec3<bool>(!arg_1, true, any(vec4<bool>(false, arg_1, arg_1, arg_1)))), all(select(select(!vec4<bool>(arg_1, false, arg_1, arg_1), !vec4<bool>(arg_1, true, true, arg_1), true), select(select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1), true), vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(false, arg_1, true, arg_1)), vec4<bool>(1078f <= var_0.x, true, true, global1.x != 1u))), any(!(!(!vec4<bool>(true, arg_1, arg_1, arg_1)))));
    var var_2 = Struct_3(Struct_2(-_wgslsmith_div_vec4_i32(-u_input.b, vec4<i32>(-68036i, 23548i, -13626i, 1i)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec4<u32>(28384u, global1.x, u_input.a.x, 4294967295u)) << (vec4<u32>(arg_0.x, global1.x, global1.x, arg_0.x) % vec4<u32>(32u)))), ~(vec4<u32>(1u, 1u, global1.x << (arg_0.x % 32u), 4294967295u) ^ ~(~vec4<u32>(global1.x, 46822u, arg_0.x, 1491u))), 1u, !(!arg_1) & !any(vec4<bool>(arg_1, true, arg_1, var_1.x)));
    return _wgslsmith_f_op_f32(-arg_2);
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    let var_0 = vec2<bool>(true, all(arg_0.ww));
    global0 = array<vec3<bool>, 31>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -946f))) * _wgslsmith_f_op_f32(func_3(~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(83017u, 6076u, 4294967295u), u_input.a, u_input.a), vec3<u32>(global1.x, global1.x, 4294967295u)), all(vec4<bool>(false | arg_0.x, var_0.x, true, u_input.a.x < u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1046f) - _wgslsmith_f_op_f32(1000f + -272f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(284f)) * _wgslsmith_f_op_f32(414f * 1300f))))));
    let var_2 = Struct_4(Struct_1(vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(16665u, 78914u, 0u, 0u)) < ~7531u, var_0.x), select(arg_0, select(arg_0, arg_0, select(arg_0, arg_0, arg_0)), !select(arg_0, arg_0, arg_0.x))));
    global0 = array<vec3<bool>, 31>();
    return -1539f;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -827f), 2205f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(143f + _wgslsmith_div_f32(795f, -881f)) + _wgslsmith_f_op_f32(func_2(vec4<bool>(true, false, arg_0.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-198f * -1362f) - _wgslsmith_f_op_f32(step(-455f, 1000f))))), 1000f);
    var var_1 = Struct_5(vec4<i32>(-firstLeadingBit(54324i) << (~u_input.a.x % 32u), u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 8393i), vec2<i32>(41182i, 36324i)), 2147483647i), _wgslsmith_div_i32(1i, -55940i)), Struct_3(arg_1, countOneBits(vec4<u32>(global1.x | arg_1.b.x, 4294967295u, global1.x, 1u)), 65763u, !any(vec4<bool>(true, true, false, arg_0.x))), abs(~(~arg_1.b.zxz | vec3<u32>(7402u, 26689u, arg_1.b.x))));
    let var_2 = Struct_2(reverseBits(vec4<i32>(var_1.b.a.a.x, 11927i, _wgslsmith_dot_vec3_i32(arg_1.a.yyz, arg_1.a.yyz) >> (1u % 32u), u_input.b.x)), vec4<u32>(arg_1.b.x, _wgslsmith_add_u32(global1.x, 37492u), 5463u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.a.b.x, 13558u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 35640u, 51850u, global1.x)), vec4<u32>(arg_1.b.x, 1u, u_input.a.x, var_1.b.a.b.x))));
    var var_3 = Struct_3(arg_1, ~(vec4<u32>(var_2.b.x, 1u, u_input.a.x, arg_1.b.x) & arg_1.b) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.b.x, var_1.c.x, 1u, global1.x) | vec4<u32>(global1.x, var_1.b.a.b.x, var_2.b.x, var_2.b.x), var_1.b.a.b), _wgslsmith_dot_vec2_u32(var_2.b.yx, ~arg_1.b.wz), !arg_0.x);
    var var_4 = var_1.b.a.b.xw;
    return countOneBits(~_wgslsmith_mod_u32(~u_input.a.x, ~_wgslsmith_mod_u32(4294967295u, var_2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 0u, abs(_wgslsmith_clamp_u32(u_input.a.x, global1.x, 1u))), vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) & u_input.a.x, u_input.a.x << (func_1(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], Struct_2(u_input.b, vec4<u32>(83563u, 101658u, 13009u, 68774u))) % 32u), 11870u)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1800f - -364f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(677f)), _wgslsmith_f_op_f32(round(192f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f * -671f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(164f + _wgslsmith_f_op_f32(-978f - -1649f)))) * -1396f), 1341f);
    global0 = array<vec3<bool>, 31>();
    var_0 = ~vec3<u32>(7344u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(var_0.x, 26309u), 78361u, reverseBits(2557u), abs(0u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(58844u, 111459u, u_input.a.x, 3998u), vec4<u32>(4294967295u, 46032u, global1.x, 28525u))), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global1.x, u_input.a.x, global1.x), vec4<u32>(15274u, 1u, 1u, 1u)), global1.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1));
    var_0 = u_input.a;
    let var_3 = var_1.x;
    let var_4 = Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(any(global0[_wgslsmith_index_u32(global1.x, 31u)]), all(vec2<bool>(false, false)))), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, var_3 >= -127f), -1257f < var_2.x)), select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(all(vec3<bool>(false, true, true)), any(vec2<bool>(true, true)), true, var_0.x <= 1u), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, select(var_1.x <= -469f, all(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, true))), false), vec4<bool>(any(vec2<bool>(false, true)), false, true || select(false, false, true), all(vec4<bool>(false, true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -818f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -365f) * _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-805f + var_2.x), var_4.b.x))), countOneBits(~_wgslsmith_mod_vec3_u32(u_input.a, abs(vec3<u32>(26401u, 1u, var_0.x)))), _wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, u_input.a.x), ~vec2<u32>(var_0.x, var_0.x)), abs(max(global1.zz, ~var_0.xy))));
}

