struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(107f, _wgslsmith_f_op_f32(arg_0.x * -175f))));
    var var_1 = Struct_2(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)), vec3<bool>(true, u_input.b.x != u_input.b.x, true), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false))), select(all(vec4<bool>(true, true, true, true)), false, false)));
    var var_2 = ~(firstTrailingBit(vec3<u32>(u_input.b.x, u_input.b.x >> (79298u % 32u), ~u_input.b.x)) | vec3<u32>(firstLeadingBit(u_input.b.x), 1u, reverseBits(u_input.b.x)));
    let var_3 = Struct_2(select(var_1.a, vec3<bool>(any(!vec4<bool>(true, var_1.a.x, false, var_1.a.x)), !var_1.a.x, _wgslsmith_f_op_f32(-arg_0.x) > _wgslsmith_f_op_f32(arg_0.x - -1067f)), any(vec4<bool>(all(var_1.a.zx), !var_1.a.x, var_1.a.x, true))));
    let var_4 = vec3<i32>(_wgslsmith_mult_i32(-u_input.a.x, -(~u_input.a.x)), ~(-abs(u_input.a.x)) >> (1u % 32u), abs(u_input.a.x));
    return true && !(~(-u_input.a.x) >= _wgslsmith_dot_vec3_i32(u_input.a.zww, vec3<i32>(var_4.x, var_4.x, -6923i) >> (vec3<u32>(var_2.x, var_2.x, 63690u) % vec3<u32>(32u))));
}

fn func_2() -> Struct_2 {
    let var_0 = !vec2<bool>(!func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(795f, -201f) * vec2<f32>(-820f, -1000f))), all(vec3<bool>(any(vec3<bool>(true, true, false)), select(false, false, false), true)));
    let var_1 = u_input.b.x >= ~(~(u_input.b.x << (u_input.b.x % 32u)));
    var var_2 = all(select(!vec2<bool>(u_input.a.x >= u_input.a.x, !var_0.x), vec2<bool>(false, func_3(vec2<f32>(575f, 444f))), true));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-793f, -216f)) - -920f) - _wgslsmith_f_op_f32(max(-1658f, _wgslsmith_f_op_f32(trunc(706f))))))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-138f, 1218f))), 580f, !var_0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-465f, -1000f)) * 1000f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1425f, -833f))));
    var_2 = select(false, var_1, any(vec2<bool>(any(vec4<bool>(var_1, true, true, true)) | (var_0.x & var_0.x), select(var_1, var_0.x, func_3(var_3.yy)))));
    return Struct_2(select(vec3<bool>(true, true, any(var_0)), vec3<bool>(!(false && var_1), false, !var_1), func_3(vec2<f32>(var_3.x, var_3.x))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> i32 {
    let var_0 = ~(u_input.b.x & ~(~select(54309u, 1u, false)));
    return ~(-firstTrailingBit(~0i) << (~var_0 % 32u));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = u_input.a.wx;
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~u_input.a, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(5767i, arg_1), u_input.a.zw), u_input.a.x, var_0.x, -arg_0)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1858i, -8628i, arg_0 & u_input.a.x, -2147483647i), ~(-vec4<i32>(u_input.a.x, -1i, arg_1, -1i)))), vec4<i32>(0i, -(i32(-1i) * -1i), -48988i, _wgslsmith_mult_i32(~var_0.x, arg_0) | -abs(var_0.x)));
    let var_2 = -u_input.a.yzw;
    var_1 = reverseBits(-(_wgslsmith_add_i32(arg_0, 0i) | _wgslsmith_div_i32(2147483647i, u_input.a.x)) | firstLeadingBit(var_2.x));
    var var_3 = firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, var_0.x, var_0.x) << (vec3<u32>(u_input.b.x, u_input.b.x, 49279u) % vec3<u32>(32u)), ~vec3<i32>(12276i, arg_0, u_input.a.x)) >> (((vec3<u32>(1u, u_input.b.x, u_input.b.x) << (vec3<u32>(43779u, u_input.b.x, 13391u) % vec3<u32>(32u))) & (vec3<u32>(u_input.b.x, 0u, 0u) >> (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u)))) % vec3<u32>(32u)), abs(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, -1i, 18392i), ~u_input.a.yzx))));
    return -202f;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(arg_2.a, _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(round(arg_2.a.x)), 295f), arg_1.a))));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(arg_1.a.x * 859f), _wgslsmith_f_op_f32(func_5(func_4(func_2(), -2147483647i, func_2()), arg_0.x, !func_2().a.xy, arg_2))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.yz) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x))))) + var_1.a.xx));
    var var_3 = u_input.b;
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(719f, var_2.x));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(firstTrailingBit(u_input.b.x), select(22273u, u_input.b.x << (reverseBits(~1u) % 32u), true), u_input.b.x, _wgslsmith_div_u32(0u, _wgslsmith_add_u32(~(~u_input.b.x), ~(~u_input.b.x))));
    var_0 = vec4<u32>(~(_wgslsmith_clamp_u32(var_0.x ^ u_input.b.x, ~u_input.b.x, 4294967295u) << (func_1(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -21053i) >> (vec4<u32>(u_input.b.x, var_0.x, 32166u, var_0.x) % vec4<u32>(32u)), Struct_1(vec3<f32>(-292f, -1121f, -697f)), Struct_1(vec3<f32>(-343f, -2022f, 1164f))) % 32u)), firstTrailingBit(var_0.x), select(abs(~abs(var_0.x)), 4294967295u, false), select(u_input.b.x, 1u, func_2().a.x));
    var_0 = ~vec4<u32>(var_0.x & 68422u, ~(~u_input.b.x) >> (~min(u_input.b.x, 102804u) % 32u), _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(var_0.x, u_input.b.x, u_input.b.x), _wgslsmith_div_u32(reverseBits(u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.b.x), u_input.b)), u_input.b.x), var_0.x >> (_wgslsmith_dot_vec2_u32(select(u_input.b, vec2<u32>(var_0.x, var_0.x), false), max(vec2<u32>(43132u, var_0.x), vec2<u32>(1u, u_input.b.x))) % 32u));
    let var_1 = u_input.a;
    var_0 = ~vec4<u32>(u_input.b.x, ~43442u, ~_wgslsmith_clamp_u32(reverseBits(var_0.x), ~4294967295u, 47612u), var_0.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-768f, -1000f, 327f))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~var_1.x), vec2<i32>(~(-2147483647i) << ((u_input.b.x ^ u_input.b.x) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(18397i, var_1.x, ~1i), var_1.xzz)));
}

