struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-278f, -775f, -1753f, -1540f) + vec4<f32>(-378f, 182f, -994f, 834f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-221f, -461f, -390f, -968f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-875f, -456f, -815f, -101f))))), ~vec3<u32>(15505u, ~15392u, 4294967295u ^ u_input.b) << (vec3<u32>(~(~u_input.b), _wgslsmith_sub_u32(4294967295u, u_input.b), firstTrailingBit(1u)) % vec3<u32>(32u)), vec2<u32>(u_input.b, u_input.b), Struct_1(u_input.b, false), Struct_1(~countOneBits(~u_input.b), !(-490f != _wgslsmith_f_op_f32(step(525f, -552f)))));
    var var_1 = ~(~vec4<u32>(var_0.e.a, reverseBits(_wgslsmith_dot_vec2_u32(var_0.c, var_0.b.zz)), firstLeadingBit(min(61432u, u_input.b)), u_input.b));
    var var_2 = var_0.d;
    let var_3 = select(select(!(!select(vec2<bool>(true, false), vec2<bool>(true, var_0.e.b), var_0.d.b)), select(vec2<bool>(var_2.b, all(vec4<bool>(var_0.e.b, var_2.b, true, false))), vec2<bool>(true, false), !(u_input.a.x < u_input.a.x)), all(vec3<bool>(var_2.b, any(vec4<bool>(true, true, var_2.b, var_0.e.b)), var_0.e.b))), !vec2<bool>(_wgslsmith_f_op_f32(-1368f * var_0.a.x) >= 292f, true), true);
    var var_4 = Struct_1(4294967295u << (0u % 32u), (any(!vec3<bool>(false, false, var_0.d.b)) | var_0.d.b) & var_2.b);
    return vec3<u32>(40540u, ~(~1u), ~var_1.x);
}

fn func_4(arg_0: Struct_2) -> u32 {
    let var_0 = select(select(!(!(!vec4<bool>(arg_0.d.b, arg_0.d.b, false, arg_0.e.b))), vec4<bool>(true, arg_0.d.b, arg_0.e.b, !any(vec2<bool>(arg_0.d.b, false))), true), !select(vec4<bool>(!arg_0.d.b, any(vec3<bool>(true, false, arg_0.d.b)), arg_0.d.b, true), select(!vec4<bool>(arg_0.d.b, arg_0.d.b, true, arg_0.e.b), !vec4<bool>(arg_0.e.b, arg_0.d.b, arg_0.d.b, true), vec4<bool>(arg_0.d.b, true, true, arg_0.d.b)), !arg_0.d.b), vec4<bool>(true, true, all(!(!vec4<bool>(false, arg_0.e.b, arg_0.d.b, arg_0.e.b))), arg_0.e.b));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)) * vec4<f32>(_wgslsmith_f_op_f32(1104f - 1146f), arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), -1000f)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.a.x)), arg_0.a.x), 1201f, arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-179f, arg_0.a.x)))), false)), reverseBits(arg_0.b), select(vec2<u32>(u_input.b, _wgslsmith_sub_u32(36361u, arg_0.b.x ^ arg_0.d.a)), arg_0.b.yy, arg_0.a.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1549f, 487f, false)) - arg_0.a.x)), Struct_1(~arg_0.b.x, !(!(arg_0.e.a >= 37313u))), arg_0.d);
    var_1 = arg_0;
    var_1 = arg_0;
    let var_2 = arg_0;
    return (firstLeadingBit(_wgslsmith_div_u32(select(20483u, arg_0.b.x, var_1.d.b), 1u)) | 4294967295u) | _wgslsmith_dot_vec2_u32(~reverseBits(max(var_2.c, vec2<u32>(4294967295u, 28740u))), max(reverseBits(var_1.b.zz) >> (~var_1.c % vec2<u32>(32u)), ~(arg_0.b.xx >> (arg_0.b.yy % vec2<u32>(32u)))));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = 1623f;
    var var_1 = true;
    var_1 = all(vec2<bool>(any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), _wgslsmith_f_op_f32(-1f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 120f, false)))));
    var var_2 = vec2<bool>(true, !(arg_0 < 1u));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -291f), -522f);
    return func_4(Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-987f, var_3.x, 115f, var_3.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(845f, -1507f, 1493f, var_3.x))))), select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, arg_0, 0u), vec3<u32>(0u, 1u, 0u)), func_3(), !all(vec3<bool>(var_2.x, true, false))), min(min(~vec2<u32>(0u, arg_0), ~vec2<u32>(arg_0, 4294967295u)), vec2<u32>(1u, 1u)), Struct_1(1u, var_2.x == !var_2.x), Struct_1(func_3().x, u_input.a.x <= _wgslsmith_sub_i32(-61606i, u_input.a.x))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = vec2<f32>(108f, -1655f);
    let var_1 = select(vec2<i32>(-4888i, -11293i << (func_2(u_input.b) % 32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(firstLeadingBit(u_input.a.x), 2147483647i), u_input.a.yx, -vec2<i32>(-38855i, 16547i) & _wgslsmith_mod_vec2_i32(u_input.a.wy, u_input.a.yx)), arg_1.b) & abs(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), max(21274i, u_input.a.x)), u_input.a.x));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(619f - 1758f), var_0.x)), var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x)), ~(~func_3()), func_3().yz, Struct_1(49446u, true), arg_1);
    var var_3 = arg_1;
    let var_4 = vec4<bool>(true, false & arg_1.b, !(~_wgslsmith_mod_u32(u_input.b, 68524u) == func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, arg_0, var_3.a), var_2.b))), var_2.d.b);
    return _wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0, u_input.b), max(vec2<u32>(4294967295u, u_input.b), var_2.b.xz) << (~var_2.b.xz % vec2<u32>(32u)), vec2<bool>(any(var_4), var_4.x || false)) | vec2<u32>(firstTrailingBit(~22991u), 13128u), var_2.b.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -709f), -674f, _wgslsmith_f_op_f32(549f * 733f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1340f, 2003f, -1368f, 2107f) * vec4<f32>(386f, 690f, 992f, 1982f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-507f, -159f, -198f, 374f) * vec4<f32>(317f, -926f, 808f, -1192f)))))), ~(~vec3<u32>(func_1(0u, Struct_1(u_input.b, true)), abs(u_input.b), reverseBits(20430u))), select(firstLeadingBit(vec2<u32>(u_input.b, u_input.b) | vec2<u32>(u_input.b, 4294967295u)) & vec2<u32>(1u, 1u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(26413u, u_input.b) | vec2<u32>(1u, 1u), ~vec2<u32>(u_input.b, u_input.b)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), Struct_1(u_input.b, ~(~u_input.b) <= firstLeadingBit(u_input.b >> (1u % 32u))), Struct_1(~u_input.b, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))));
    let var_1 = select(false, !(u_input.a.x < ~(-u_input.a.x)), !all(select(!vec2<bool>(var_0.e.b, true), !vec2<bool>(var_0.d.b, var_0.e.b), any(vec3<bool>(var_0.e.b, var_0.e.b, var_0.e.b)))));
    var_0 = Struct_2(vec4<f32>(var_0.a.x, 1000f, _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, -898f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1388f)))), _wgslsmith_add_vec3_u32(~(vec3<u32>(4294967295u, 39434u, u_input.b) & ~var_0.b), var_0.b), select(_wgslsmith_add_vec2_u32(~(vec2<u32>(4294967295u, var_0.d.a) ^ vec2<u32>(4265u, 51575u)), var_0.c), vec2<u32>(1u, ~(~81917u)), select(!vec2<bool>(false, var_0.e.b), select(select(vec2<bool>(var_1, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), vec2<bool>(false, true))), Struct_1(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(641f, 1000f, var_0.a.x, -1343f) - var_0.a), max(vec3<u32>(47568u, u_input.b, var_0.b.x), vec3<u32>(48892u, var_0.e.a, 1u)), vec2<u32>(11613u, var_0.d.a), Struct_1(u_input.b, var_1), var_0.e)), ~(~u_input.a.x) > max(-u_input.a.x, countOneBits(15325i))), var_0.e);
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.a.yyx))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(var_0.a.xxy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-143f, 921f, 1099f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yxw, 1305f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(956f + var_0.a.x), 1286f)), _wgslsmith_f_op_vec3_f32(max(var_3, var_0.a.zyx)))), vec2<i32>(~19330i, ~u_input.a.x | firstTrailingBit(firstLeadingBit(12279i))), vec3<i32>(reverseBits(firstLeadingBit(-28908i)), -firstLeadingBit(u_input.a.x), -1i));
}

