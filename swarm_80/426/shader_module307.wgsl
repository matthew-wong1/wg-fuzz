struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: bool) -> bool {
    let var_0 = select(_wgslsmith_mod_vec2_u32(abs(u_input.b.yy), abs(u_input.b.zx)), ~vec2<u32>(arg_1.x << (arg_1.x % 32u), 8520u) >> (arg_1 % vec2<u32>(32u)), vec2<bool>(false && !(!arg_0), arg_2));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1204f, 2689f, 400f)))))), vec4<f32>(1f, 1f, 1f, 1f))), i32(-1i) * -u_input.c.x, select(!(!(!vec3<bool>(false, arg_2, arg_2))), vec3<bool>(true, false || all(vec3<bool>(arg_2, false, false)), !arg_2 || !arg_0), !any(!vec3<bool>(false, arg_0, arg_2))), Struct_1(vec2<i32>(_wgslsmith_mod_i32(~u_input.c.x, u_input.c.x << (4294967295u % 32u)), abs(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c)))));
    var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(trunc(var_1.a)), var_1.b, vec3<bool>(arg_2, all(vec4<bool>(true, any(vec4<bool>(true, true, true, arg_0)), true, any(vec3<bool>(arg_2, arg_0, arg_0)))), -50839i < _wgslsmith_add_i32(var_1.b ^ -26403i, u_input.c.x)), var_1.d);
    var var_2 = u_input.c.x;
    let var_3 = reverseBits(var_1.b);
    return arg_2;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<bool>, arg_3: i32) -> vec4<bool> {
    var var_0 = u_input.a;
    var var_1 = any(vec4<bool>(true, func_3(all(!vec4<bool>(arg_2.x, false, arg_2.x, false)), ~u_input.b.yz, (-9598i ^ arg_3) > u_input.c.x), arg_2.x, !(u_input.c.x <= -49755i)));
    var_0 = ~(~(~u_input.a));
    var var_2 = _wgslsmith_dot_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(max(u_input.a, 1u), ~u_input.b.x, ~u_input.d, 0u), vec4<u32>(select(u_input.b.x, 5806u, arg_2.x), 8680u, min(18071u, 1u), select(u_input.a, u_input.d, false)), ~vec4<u32>(47598u, 13818u, 1u, u_input.a) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, 25650u, 30914u), vec4<u32>(u_input.b.x, 0u, 0u, u_input.a)))), min(vec4<u32>(u_input.d, 1u, u_input.a, u_input.d), vec4<u32>(u_input.a, 1u, ~u_input.b.x, ~_wgslsmith_add_u32(36511u, u_input.b.x))));
    var var_3 = u_input.c;
    return select(select(vec4<bool>(arg_2.x, true, all(arg_2), !arg_2.x), select(select(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(false, false, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x)), !vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), select(true, false, arg_2.x)), vec4<bool>(true, !arg_2.x, false, all(vec3<bool>(arg_2.x, true, false))), false), vec4<bool>(true, true, false, arg_2.x & false)), !select(select(!vec4<bool>(false, true, true, arg_2.x), !vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(false, false, arg_2.x, arg_2.x)), !select(vec4<bool>(true, true, arg_2.x, arg_2.x), vec4<bool>(false, false, true, arg_2.x), true), select(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), !vec4<bool>(false, arg_2.x, true, true), select(vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(true, arg_2.x, arg_2.x, false), arg_2.x))), select(!select(!vec4<bool>(arg_2.x, false, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(arg_2.x, true, false, arg_2.x), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)), true), !select(select(vec4<bool>(true, arg_2.x, arg_2.x, false), vec4<bool>(true, arg_2.x, false, false), arg_2.x), !vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), any(vec4<bool>(true, false, true, false))), arg_2.x));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = all(!(!select(func_2(507f, -906f, vec2<bool>(true, true), -1i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), true)));
    var var_1 = all(select(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-220f - 2195f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2333f + 482f), 1592f)), vec2<bool>(true, true), ~u_input.c.x).yxz, select(vec3<bool>(u_input.d <= 95731u, true, true), func_2(2102f, 543f, vec2<bool>(true, false), u_input.c.x).zxw, false), 0u < ~(~arg_0)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-127f, 831f, -1600f, 689f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1523f, -1596f, 635f, -829f)), vec4<bool>(false, false, false, false)))))));
    var_0 = true & all(vec2<bool>(466f >= var_2.x, any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))));
    var_1 = true;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), !vec4<bool>(all(vec4<bool>(true, false, true, true)), true, true, true)), 49266u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(390f, _wgslsmith_f_op_f32(func_1(u_input.b.x)), _wgslsmith_f_op_f32(-877f + -596f), _wgslsmith_f_op_f32(round(804f))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -834f), -269f, 927f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(563f, -1000f, -746f, 277f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -187f, -180f, -1040f))))))), _wgslsmith_f_op_f32(-250f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-749f * -310f))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.c.zwy)) * vec3<f32>(370f, 1259f, var_0.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.d, 1412f)), var_0.a.zyx)))));
    var var_2 = Struct_4(var_0.c, max(~(-u_input.c.x) >> (4294967295u % 32u), i32(-1i) * -u_input.c.x), var_0.a.yzz, Struct_1(abs(u_input.c.wx)));
    let var_3 = -var_2.d.a.x;
    var var_4 = Struct_3(select(vec4<bool>(!var_0.a.x, false, any(var_0.a.wz), !var_2.c.x), var_0.a, vec4<bool>(var_2.c.x && true, _wgslsmith_div_f32(var_1.a.x, var_2.a.x) == -1000f, true, all(!vec3<bool>(var_0.a.x, true, var_0.a.x)))), _wgslsmith_clamp_u32(var_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(14542u, var_0.b)), 25544u)), countOneBits(_wgslsmith_sub_u32(u_input.b.x, u_input.d) << (~u_input.b.x % 32u))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(var_0.c, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(var_0.c, var_2.a)))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1934f), -528f, _wgslsmith_f_op_f32(sign(var_0.d))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1118f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a.x)) * _wgslsmith_f_op_f32(func_1(0u))), _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_div_f32(-1686f, 380f)))));
    var_4 = Struct_3(var_0.a, ~var_4.b & 1u, var_4.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-615f)), var_2.a.x));
    var_4 = Struct_3(vec4<bool>(true, true, true, true), firstTrailingBit(~(~var_4.b | _wgslsmith_sub_u32(var_4.b, 4294967295u))), _wgslsmith_div_vec4_f32(var_4.c, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(758f, var_4.d), var_2.a.x, var_4.d, var_2.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_2.a))))), 1040f);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b);
}

