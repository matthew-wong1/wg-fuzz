struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec2<f32>) -> vec3<i32> {
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = Struct_1(vec2<bool>(false, abs(u_input.a ^ u_input.a) <= 4294967295u));
    var var_2 = Struct_1(var_1.a);
    var_2 = var_1;
    var_2 = Struct_1(!var_1.a);
    return vec3<i32>(reverseBits(_wgslsmith_sub_i32(-10978i ^ select(-1i, 48149i, var_1.a.x), ~min(-8968i, 0i))), 1i, _wgslsmith_mod_i32(0i, ~(~1i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1367f * -1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1015f - -560f), _wgslsmith_f_op_f32(round(573f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_f_op_f32(select(1000f, -403f, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -919f), -937f))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1042f, -477f)))), _wgslsmith_f_op_f32(f32(-1f) * -1496f), _wgslsmith_f_op_f32(f32(-1f) * -487f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(550f, -513f))))) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1168f * 2105f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1839f)), -207f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-639f, 391f)) - _wgslsmith_f_op_f32(floor(1273f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -642f))));
    var var_1 = select(!vec4<bool>(false, true, true, select(true, u_input.a <= 1u, true)), !vec4<bool>(any(vec2<bool>(true, true)), true | (u_input.a != u_input.a), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true))), true), true);
    var_1 = select(select(select(!(!vec4<bool>(var_1.x, false, true, var_1.x)), select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(false, true, var_1.x, var_1.x), true), !select(vec4<bool>(false, var_1.x, true, true), vec4<bool>(var_1.x, true, true, true), vec4<bool>(false, false, true, false))), select(vec4<bool>(any(var_1.wzz), all(var_1.xwz), all(vec4<bool>(var_1.x, true, true, var_1.x)), false), !(!vec4<bool>(var_1.x, false, false, var_1.x)), var_1.x), any(vec4<bool>(all(vec3<bool>(var_1.x, false, var_1.x)), var_1.x, var_1.x, false))), vec4<bool>(false, select(all(select(var_1.wy, vec2<bool>(var_1.x, var_1.x), var_1.zz)), any(vec3<bool>(true, false, var_1.x)), var_1.x), (false & var_1.x) && !any(vec4<bool>(true, true, true, var_1.x)), false), select(select(select(select(vec4<bool>(var_1.x, true, false, true), vec4<bool>(var_1.x, true, true, var_1.x), true), !vec4<bool>(var_1.x, var_1.x, var_1.x, false), !var_1.x), select(!vec4<bool>(var_1.x, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, var_1.x, false, var_1.x)), _wgslsmith_f_op_f32(abs(var_0.x)) < var_0.x), select(vec4<bool>(!var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, select(var_1.x, true, var_1.x), select(var_1.x, var_1.x, false), true), true != var_1.x), vec4<bool>(true, !(!var_1.x), !(!var_1.x), all(!vec3<bool>(false, var_1.x, false)))));
    let var_2 = Struct_1(vec2<bool>(var_1.x, true));
    var_1 = select(!(!select(select(vec4<bool>(var_1.x, false, var_2.a.x, false), vec4<bool>(false, true, var_2.a.x, var_2.a.x), vec4<bool>(false, true, var_1.x, false)), vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(false, var_2.a.x, var_2.a.x, var_2.a.x))), select(!(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_2.a.x, var_1.x), vec4<bool>(true, true, var_2.a.x, true))), !select(!vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_2.a.x, var_1.x, false, false), true), any(var_1.xz)), vec4<bool>(select(true, true & var_2.a.x, var_0.x <= var_0.x) && true, (any(vec4<bool>(false, var_1.x, true, true)) | true) && all(vec3<bool>(false, var_2.a.x, false)), true, select(!var_1.x | (var_2.a.x || true), var_2.a.x, true)));
    return select(vec4<bool>(true && !(!var_1.x), true, var_2.a.x, any(!(!vec3<bool>(var_1.x, true, var_2.a.x)))), vec4<bool>(var_2.a.x, var_1.x, var_2.a.x, true), select(vec4<bool>(var_2.a.x & var_2.a.x, (u_input.a & 88603u) < abs(u_input.a), var_1.x, all(!var_1.wxy)), vec4<bool>(any(vec3<bool>(var_1.x, false, true)), !var_1.x, true, true), any(vec2<bool>(false, false))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> vec3<f32> {
    let var_0 = -select(abs(min(-vec4<i32>(arg_0.x, arg_0.x, 1i, arg_0.x), ~vec4<i32>(-1i, arg_0.x, arg_0.x, arg_0.x))), vec4<i32>(arg_0.x ^ arg_0.x, -(arg_0.x & arg_0.x), -(arg_0.x << (4294967295u % 32u)), arg_0.x), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true), func_3()));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(745f * arg_1.x))), arg_1.x, 262f), _wgslsmith_div_vec3_f32(arg_1.zww, arg_1.zzw))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.xyw)) - _wgslsmith_f_op_vec3_f32(floor(arg_1.yww))), _wgslsmith_f_op_vec3_f32(ceil(arg_1.zxy)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_2.a);
    var var_1 = ~select(select(-1i, select(countOneBits(-10849i), _wgslsmith_sub_i32(-4648i, 0i), arg_2.a.x), false), -_wgslsmith_sub_i32(i32(-1i) * -50135i, _wgslsmith_add_i32(6139i, 1i)), var_0.a.x);
    var_1 = countOneBits(select((_wgslsmith_sub_i32(1461i, -16170i) & _wgslsmith_clamp_i32(1i, 15907i, 0i)) & -2147483647i, (_wgslsmith_clamp_i32(-36956i, -19687i, 2705i) | _wgslsmith_sub_i32(2147483647i, 1i)) | 1i, !var_0.a.x));
    let var_2 = var_0.a;
    let var_3 = max(vec3<u32>(37425u, _wgslsmith_add_u32(0u, 32950u | u_input.a), u_input.a) ^ select(~vec3<u32>(12000u, u_input.a, 0u), ~(~vec3<u32>(4057u, u_input.a, 2977u)), arg_2.a.x), select(max(vec3<u32>(53210u, u_input.a & u_input.a, max(4294967295u, 15157u)), firstTrailingBit(vec3<u32>(7897u, u_input.a, 23232u)) & (vec3<u32>(34103u, 0u, u_input.a) | vec3<u32>(10642u, u_input.a, 4294967295u))), vec3<u32>(min(0u, 23852u) ^ u_input.a, 2353u, _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_sub_u32(u_input.a, 0u))), !vec3<bool>(arg_2.a.x | arg_2.a.x, var_2.x, arg_2.a.x)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true), false));
    var var_1 = Struct_1(select(vec2<bool>(var_0.x, var_0.x), var_0.xw, vec2<bool>(any(!vec2<bool>(var_0.x, false)), all(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)))));
    let var_2 = 1583f;
    var_1 = Struct_1(!vec2<bool>(false, !(!var_1.a.x)));
    let var_3 = func_4(Struct_1(var_1.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(func_1(vec2<f32>(var_2, 884f)) ^ ~vec3<i32>(-1i, -21458i, -35493i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-341f, 1679f, 378f, var_2) + vec4<f32>(var_2, var_2, 1413f, var_2)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, var_2, var_2))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, 979f, var_2), vec3<f32>(var_2, -206f, var_2), true)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2, 749f, var_2), vec3<f32>(-897f, var_2, 629f)))))), var_0.yzy)), Struct_1(var_0.zw));
    var_1 = Struct_1(select(func_3().ww, !func_3().xz, select(var_3.a, !vec2<bool>(var_3.a.x, var_3.a.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<u32>(u_input.a, max(u_input.a, u_input.a), 1u) ^ ~_wgslsmith_add_vec3_u32(vec3<u32>(21983u, 24118u, 48378u), vec3<u32>(53768u, u_input.a, u_input.a)));
}

