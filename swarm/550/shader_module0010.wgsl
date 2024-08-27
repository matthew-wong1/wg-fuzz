struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: f32,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: i32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_2(41580u, all(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), true)), -1361f, Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-758f, -474f))), vec2<f32>(_wgslsmith_f_op_f32(2119f - -987f), _wgslsmith_f_op_f32(f32(-1f) * -809f)))), ~abs(_wgslsmith_sub_u32(4294967295u, 17332u))), ~vec2<u32>(~firstTrailingBit(4294967295u), ~_wgslsmith_add_u32(1u, 0u)));
    var var_1 = select(!(!(!vec4<bool>(true, true, var_0.b, var_0.b))), select(!(!(!vec4<bool>(true, var_0.b, false, true))), select(select(vec4<bool>(false, var_0.b, true, false), select(vec4<bool>(var_0.b, false, true, false), vec4<bool>(false, var_0.b, var_0.b, var_0.b), true), select(vec4<bool>(var_0.b, var_0.b, true, false), vec4<bool>(true, false, var_0.b, true), var_0.b)), vec4<bool>(true, any(vec2<bool>(false, false)), var_0.b, false), !vec4<bool>(true, var_0.b, var_0.b, var_0.b)), !vec4<bool>(false, var_0.b == var_0.b, true, var_0.b | false)), !select(!select(vec4<bool>(false, var_0.b, var_0.b, true), vec4<bool>(false, var_0.b, true, false), true), vec4<bool>(var_0.b | true, false, var_0.b, true), true));
    var_1 = !(!vec4<bool>(any(vec3<bool>(var_0.b, false, false)), all(vec2<bool>(true, true)), var_1.x, any(!vec4<bool>(var_1.x, true, var_0.b, var_1.x))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.a.x + var_0.d.a.x)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.a), var_0.d.a) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_0.c) - vec2<f32>(-944f, var_0.d.a.x)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(var_0.d.a, var_0.d.a)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -1624f)), vec2<f32>(-1286f, 161f))), !var_0.b))), _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(29900u, 1u, var_0.d.b, 0u) | vec4<u32>(var_0.d.b, var_0.e.x, 34931u, 1u)), ~vec4<u32>(4294967295u, ~4294967295u, var_0.a, 1u ^ var_0.d.b)));
    return min(~(~vec4<u32>(24803u, max(var_0.e.x, 35061u), abs(var_3.b), 1u)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 1u, var_0.a), vec4<u32>(var_3.b, 69177u, 10950u, var_0.a)) ^ firstTrailingBit(min(vec4<u32>(var_0.a, var_3.b, 18780u, 60408u), vec4<u32>(var_0.a, 14810u, var_3.b, 0u)))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<i32>(-36306i, -48567i ^ u_input.a, 61144i);
    let var_1 = (vec4<i32>(countOneBits(~7385i), u_input.a << (48386u % 32u), -1i, u_input.b << (1u % 32u)) >> (vec4<u32>(~reverseBits(1u), ~22769u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(4927u, 10539u, 0u)), ~vec3<u32>(1u, 20037u, 15032u)), ~_wgslsmith_mod_u32(4294967295u, 3452u)) % vec4<u32>(32u))) ^ -(-(vec4<i32>(u_input.a, var_0.x, u_input.a, 0i) << (vec4<u32>(4294967295u, 19512u, 64816u, 41339u) % vec4<u32>(32u))) << (reverseBits(func_3()) % vec4<u32>(32u)));
    let var_2 = vec2<u32>(~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(56531u, 4294967295u, 0u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), ~1u);
    return Struct_1(vec2<f32>(1f, 1f), ~0u);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = vec4<u32>(0u, var_0.b, ~min(~(arg_0.b >> (4294967295u % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, var_0.b, 1u, 1u), vec4<u32>(1u, var_0.b, var_0.b, var_0.b))), var_0.b);
    let var_2 = all(vec3<bool>(true, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.b, -6762i), _wgslsmith_mult_vec3_i32(vec3<i32>(-1699i, u_input.a, u_input.b), vec3<i32>(19133i, -2147483647i, u_input.a))) > _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 2147483647i, u_input.b, -1i), ~vec4<i32>(2147483647i, 1i, u_input.b, 1i)), select(!(512f == arg_0.a.x), true, !(arg_0.b < arg_0.b))));
    var var_3 = var_1.x;
    let var_4 = Struct_2(~1u >> (arg_0.b % 32u), any(vec4<bool>(true, true, true, true)), var_0.a.x, var_0, ~vec2<u32>(countOneBits(var_0.b << (17756u % 32u)), arg_0.b));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-938f, _wgslsmith_div_f32(374f, -485f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-881f, -639f))) - _wgslsmith_div_vec2_f32(vec2<f32>(-1276f, 1102f), vec2<f32>(1000f, 163f))))), firstTrailingBit(~_wgslsmith_mod_u32(13116u, 21684u))));
    var_0 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.c)) + func_1(var_0.d).d.a), var_0.e.x));
    var_0 = func_1(Struct_1(var_0.d.a, 53598u));
    var var_1 = Struct_2(_wgslsmith_mult_u32(var_0.e.x, ~var_0.e.x), !any(!(!vec4<bool>(var_0.b, true, var_0.b, var_0.b))), _wgslsmith_f_op_f32(trunc(-1614f)), func_2(), _wgslsmith_add_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a, 4294967295u), vec2<u32>(52924u, var_0.a)), var_0.e | var_0.e, all(vec4<bool>(true, true, true, var_0.b))) | var_0.e, ~(max(var_0.e, var_0.e) & (var_0.e << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))))));
    var var_2 = func_2();
    var_0 = Struct_2(var_2.b & min(~10248u, abs(~var_0.a)), !var_1.b, var_2.a.x, func_2(), vec2<u32>(_wgslsmith_div_u32(14760u, abs(countOneBits(4294967295u))), var_2.b));
    var var_3 = func_1(var_1.d);
    var var_4 = -134f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(76757i, u_input.a) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)), ~vec2<i32>(-67610i, u_input.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, -22665i))), ~vec2<i32>(u_input.a, u_input.a)) << ((var_1.e & ~reverseBits(var_3.e)) % vec2<u32>(32u)), var_3.d.a, _wgslsmith_sub_i32(u_input.b, -33521i), var_3.a, firstLeadingBit(~(u_input.a << (var_3.e.x % 32u))));
}

