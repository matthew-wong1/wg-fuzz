struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(arg_1.a.zx, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), ~(arg_0.wz | vec2<i32>(arg_1.a.x, arg_0.x)))), _wgslsmith_div_i32(-select(arg_1.a.x, _wgslsmith_mod_i32(arg_0.x, 2147483647i), false), i32(-1i) * -arg_1.a.x), ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_1.a.x, 2147483647i, arg_1.b)), vec3<i32>(arg_0.x, arg_1.b, arg_1.a.x)), -(~arg_1.a.x)), -1i);
    let var_1 = 37590u;
    var var_2 = !select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, all(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, false))), true), vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), false, true), vec3<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), true));
    var_2 = select(vec3<bool>(0u < u_input.a.x, true, !(var_2.x | var_2.x)), !select(!vec3<bool>(var_2.x, true, false), vec3<bool>(true, all(vec4<bool>(true, var_2.x, false, var_2.x)), var_0.x < -2147483647i), all(select(vec4<bool>(var_2.x, false, var_2.x, false), vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(false, false, var_2.x, false)))), !(!(!vec3<bool>(true, var_2.x, false))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(161f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1064f))))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * -990f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1033f)), all(vec2<bool>(var_2.x, false)) | true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-767f)))), _wgslsmith_f_op_f32(ceil(-2282f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -552f)))), var_2.x));
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    let var_0 = 265f;
    var var_1 = Struct_1(-(countOneBits(firstTrailingBit(vec3<i32>(-2147483647i, -57826i, 1i))) ^ -max(vec3<i32>(0i, -1i, 14307i), vec3<i32>(31431i, 1i, -1i))), abs(-(~1i)));
    var var_2 = _wgslsmith_f_op_f32(trunc(arg_0.x));
    var var_3 = 1i;
    var_1 = Struct_1(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.a.x, var_1.b, -80608i) ^ -vec3<i32>(var_1.b, var_1.a.x, var_1.b), var_1.a)), var_1.a.x);
    return _wgslsmith_f_op_f32(func_3(vec4<i32>(-26462i, ~_wgslsmith_dot_vec3_i32(var_1.a, var_1.a), -2147483647i, abs(var_1.b)), Struct_1(var_1.a, _wgslsmith_clamp_i32(var_1.b, var_1.a.x, -8918i))));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> f32 {
    let var_0 = arg_0 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-547f, -1000f, 1084f, 612f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1411f, arg_0, -938f, arg_0))))));
    var var_1 = _wgslsmith_add_u32(17184u, 1u);
    var_1 = max(130229u | _wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_1.x, 6183u, arg_1.x, 55400u), _wgslsmith_div_vec4_u32(arg_1, vec4<u32>(1u, 50553u, 1u, 51615u))), vec4<u32>(u_input.a.x, max(4294967295u, 1u), ~u_input.a.x, ~1u)), 4294967295u);
    let var_2 = Struct_1(vec3<i32>(-(~_wgslsmith_mult_i32(-41963i, 1i)), ~17609i, 2147483647i), 1i);
    let var_3 = _wgslsmith_f_op_f32(-arg_0);
    return 1000f;
}

fn func_4(arg_0: vec4<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -512f));
    var var_1 = Struct_1(~vec3<i32>(abs(abs(-2147483647i)), -50816i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-16781i, -8014i), vec2<i32>(11896i, -2147483647i))), abs(64089i) << (~_wgslsmith_mult_u32(select(u_input.a.x, 0u, true), ~u_input.a.x) % 32u));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(347f))));
    let var_3 = u_input.a.x;
    let var_4 = !(!any(vec2<bool>(true, true)));
    return !vec3<bool>(all(!(!vec4<bool>(true, true, var_4, var_4))), var_4, !(!select(var_4, false, var_4)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = vec4<i32>(min(_wgslsmith_add_i32(-54959i, -(~arg_1.a.x)), firstTrailingBit(~firstTrailingBit(1i))), 20924i, -1i, -48730i);
    var var_1 = arg_1;
    var var_2 = arg_1.a.yx << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x << (u_input.a.x % 32u), 37551u), _wgslsmith_add_vec2_u32((u_input.a.zx >> (vec2<u32>(102382u, 1u) % vec2<u32>(32u))) ^ ~vec2<u32>(4294967295u, u_input.a.x), u_input.a.xy)) % vec2<u32>(32u));
    var_1 = arg_1;
    var var_3 = vec3<u32>(u_input.a.x, u_input.a.x & countOneBits(u_input.a.x), 4294967295u & u_input.a.x);
    return select((_wgslsmith_div_vec3_i32(-vec3<i32>(arg_1.a.x, -35301i, arg_1.b), arg_1.a) & -arg_1.a) << (u_input.a.yzz % vec3<u32>(32u)), vec3<i32>(0i, select(_wgslsmith_clamp_i32(var_0.x | var_1.a.x, _wgslsmith_clamp_i32(-17051i, 14205i, 0i), 28850i), -var_2.x ^ reverseBits(arg_1.a.x), all(vec3<bool>(true, true, true))), firstLeadingBit(-(~var_1.b))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(-_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -19460i, 72433i, -35503i), vec4<i32>(-2147483647i, 19213i, 0i, -1i) >> (u_input.a % vec4<u32>(32u))), ~(-25336i)));
    let var_1 = Struct_1(func_5(func_4(vec4<f32>(-862f, _wgslsmith_f_op_f32(func_1(1000f, vec4<u32>(u_input.a.x, 39012u, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(sign(163f)), _wgslsmith_f_op_f32(f32(-1f) * -1440f))), Struct_1(reverseBits(vec3<i32>(var_0, var_0, 908i) | vec3<i32>(45565i, 0i, -25810i)), var_0)), 41279i);
    var var_2 = -2147483647i;
    var var_3 = _wgslsmith_add_u32(~2312u, u_input.a.x);
    let var_4 = _wgslsmith_clamp_vec3_i32(var_1.a, var_1.a, -(~reverseBits(countOneBits(var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
}

