struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 7>;

var<private> global1: array<vec3<u32>, 29>;

var<private> global2: f32 = 1000f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: i32) -> f32 {
    let var_0 = select(vec2<bool>(any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)))), _wgslsmith_div_u32(1u, 34251u) > ~_wgslsmith_mult_u32(0u, u_input.b.x)), !vec2<bool>(countOneBits(18783i) >= -arg_2, false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(true, false, false, true))), true), true));
    let var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(140f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(715f - -645f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1366f)) + -228f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(616f)), _wgslsmith_f_op_f32(-1000f * -439f)))) - _wgslsmith_f_op_f32(exp2(1f))));
    var var_3 = vec2<i32>(~_wgslsmith_mod_i32(arg_2, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_add_i32(var_1, u_input.a.x))), firstTrailingBit(1i));
    global2 = var_2;
    return 967f;
}

fn func_2(arg_0: vec2<bool>) -> vec4<bool> {
    var var_0 = 2147483647i;
    let var_1 = Struct_1(24289u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1477f, 675f, 292f, 860f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(183f, -646f, -599f, -636f), vec4<f32>(-1437f, 126f, 649f, -1702f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1362f, _wgslsmith_f_op_f32(trunc(-2495f)), -600f, -1951f))));
    var var_2 = Struct_1(0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(768f, _wgslsmith_div_f32(-1356f, var_1.b.x), _wgslsmith_f_op_f32(trunc(567f)), _wgslsmith_f_op_f32(-var_1.b.x)) * vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x - var_1.b.x), _wgslsmith_f_op_f32(-1115f + -141f), _wgslsmith_f_op_f32(var_1.b.x - 617f), _wgslsmith_div_f32(1478f, -1895f)))));
    var_0 = -u_input.a.x;
    var var_3 = _wgslsmith_f_op_f32(func_3(abs(76044u), _wgslsmith_div_u32(min(var_1.a, _wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(var_1.a, 71502u, u_input.b.x, 13461u))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a, 4294967295u, 0u), u_input.b.xxz, u_input.b.wwx), countOneBits(u_input.b.xwy)), 10789u)), 0i));
    return select(select(!vec4<bool>(arg_0.x, any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), true || arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, true, all(vec4<bool>(false, arg_0.x, true, false)), true), !(!select(vec4<bool>(false, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, true, false), vec4<bool>(true, true, arg_0.x, arg_0.x)))), select(!select(!vec4<bool>(false, false, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, false, false), !vec4<bool>(true, false, true, arg_0.x)), vec4<bool>(all(vec3<bool>(arg_0.x, false, false)), arg_0.x, any(!vec2<bool>(arg_0.x, true)), all(arg_0) & arg_0.x), !select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0.x, false, true, false), true)), vec4<bool>(true, arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -811f))) == _wgslsmith_f_op_f32(_wgslsmith_div_f32(1025f, var_1.b.x) - _wgslsmith_f_op_f32(-var_1.b.x)), true));
}

fn func_1() -> Struct_2 {
    let var_0 = any(select(vec4<bool>(false, true == any(vec2<bool>(true, false)), false, true), func_2(vec2<bool>(true, true)), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_1 = -((u_input.a.x << (~10099u % 32u)) ^ u_input.a.x) >> ((u_input.b.x ^ u_input.b.x) % 32u);
    global0 = array<Struct_5, 7>();
    let var_2 = u_input.a.x;
    let var_3 = ~u_input.b.zxw;
    return Struct_2(var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 7>();
    let var_0 = func_1();
    let var_1 = vec3<bool>(all(vec2<bool>(func_2(vec2<bool>(true, true)).x, _wgslsmith_div_u32(var_0.a, 4294967295u) < 14008u)), any(vec4<bool>(!all(vec2<bool>(false, true)), !any(vec3<bool>(true, true, true)), false, true)), all(!func_2(vec2<bool>(false, false))));
    var var_2 = _wgslsmith_f_op_f32(204f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_3 = func_1();
    var var_4 = Struct_5(Struct_4(~(~(global1[_wgslsmith_index_u32(var_0.a, 29u)] >> (u_input.b.xwz % vec3<u32>(32u)))), _wgslsmith_clamp_i32(~1i, -firstTrailingBit(0i), u_input.a.x), select(var_1, func_2(vec2<bool>(var_1.x, false)).zxz, !var_1)), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a, var_3.a, 21390u, u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, 1u, 0u, u_input.b.x), u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-258f + 1058f), _wgslsmith_f_op_f32(488f + -901f), false)), 1631f, _wgslsmith_f_op_f32(f32(-1f) * -795f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1644f))))), Struct_2(~(func_1().a >> (min(var_3.a, var_3.a) % 32u))), Struct_1(var_3.a | _wgslsmith_mod_u32(~0u, var_0.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2874f, -2325f, -402f, 965f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(779f, 147f, 444f, -578f) - vec4<f32>(-531f, 1728f, 459f, -183f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-576f, -325f, 1478f, -506f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(278f, 467f, 201f, 723f) - vec4<f32>(-1000f, -812f, 183f, 420f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(var_4.b.b, vec4<f32>(_wgslsmith_f_op_f32(var_4.d.b.x - 340f), _wgslsmith_f_op_f32(floor(-1460f)), _wgslsmith_f_op_f32(max(var_4.d.b.x, var_4.b.b.x)), -965f))))), var_4.b.b.yxy);
}

