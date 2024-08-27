struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = vec4<bool>(all(vec3<bool>(true, arg_0, u_input.a.x != 53621u)) || true, any(!select(!vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, false), vec2<bool>(false, arg_0)))), arg_0, false);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(175f)), -191f, 718f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1137f, -1282f)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) * var_1.x));
    let var_3 = var_0.x;
    var_2 = var_1.x;
    return _wgslsmith_clamp_i32(u_input.b.x, abs(-14300i ^ ~reverseBits(u_input.b.x)), 2147483647i);
}

fn func_3(arg_0: vec3<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1105f, -1000f)), _wgslsmith_f_op_f32(-726f * 1000f))), _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-440f, _wgslsmith_f_op_f32(abs(540f)), -502f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-314f, -742f, 741f))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(-1196f, _wgslsmith_f_op_f32(376f * 586f), 2039f), vec3<bool>(true, true, true))))));
    var var_1 = i32(-1i) * -1i;
    var var_2 = vec4<bool>(!all(vec2<bool>(true, true)), false, any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(vec3<bool>(true, true, true)))), !any(vec2<bool>(any(vec2<bool>(false, false)), true)));
    var_2 = vec4<bool>(var_0.x == var_0.x, var_2.x, true, !var_2.x);
    var_2 = !(!(!(!vec4<bool>(var_2.x, var_2.x, true, false))));
    return _wgslsmith_add_vec4_u32(vec4<u32>(39782u, ~(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1u, u_input.a.x, u_input.d))), ~0u, abs(max(46004u, 0u)) << (~arg_0.x % 32u)), _wgslsmith_mult_vec4_u32(~(~(vec4<u32>(24029u, 6320u, 0u, arg_0.x) ^ vec4<u32>(arg_0.x, u_input.d, arg_0.x, 0u))), vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, 4294967295u) >> (41376u % 32u), ~1u, _wgslsmith_dot_vec3_u32(u_input.a, arg_0), 0u)));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_1(func_3(vec3<u32>(_wgslsmith_mult_u32(65261u, 767u), ~56140u, ~3145u) & ~vec3<u32>(u_input.d, u_input.a.x, 0u)), arg_0.b.b, arg_0.b.a);
    var var_1 = Struct_3(arg_0.a, Struct_1(_wgslsmith_clamp_vec4_u32(max(reverseBits(vec4<u32>(1u, 28172u, arg_0.b.a.x, var_0.c.x)), vec4<u32>(var_0.a.x, 0u, 4294967295u, 114147u) | vec4<u32>(0u, u_input.a.x, u_input.d, u_input.d)), _wgslsmith_mod_vec4_u32(arg_0.b.c, vec4<u32>(arg_0.b.a.x, 4294967295u, var_0.c.x, var_0.a.x)), arg_0.b.c), arg_0.b.b, ~(~_wgslsmith_sub_vec4_u32(arg_0.b.a, vec4<u32>(53894u, 45985u, 1u, arg_0.b.c.x)))));
    var var_2 = -40934i;
    var var_3 = _wgslsmith_dot_vec3_i32(u_input.b, var_1.a.xxy) >> (0u % 32u);
    var var_4 = vec2<bool>(true, false);
    return Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x & arg_0.a.x, firstLeadingBit(2473i), _wgslsmith_div_i32(~arg_1, func_1(arg_0.b.b))), var_1.a.xyy));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    let var_0 = !select(vec2<bool>(true, true), !vec2<bool>(arg_1.b.b, all(vec2<bool>(arg_1.b.b, arg_1.b.b))), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(arg_1.b.b | false, arg_1.b.b != false)));
    let var_1 = Struct_3(vec4<i32>(0i, _wgslsmith_sub_i32(abs(u_input.b.x), arg_1.a.x), 12280i, _wgslsmith_add_i32(-1i, arg_1.a.x)) & _wgslsmith_mod_vec4_i32(-(~arg_1.a), vec4<i32>(-1i) * -arg_1.a), Struct_1(arg_1.b.a, true, firstTrailingBit(max(countOneBits(arg_1.b.c), vec4<u32>(arg_1.b.c.x, u_input.a.x, 55008u, arg_1.b.a.x)))));
    var var_2 = true;
    var_2 = true;
    let var_3 = Struct_2(u_input.c.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-332f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(func_2(Struct_3(vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.c.x), Struct_1(vec4<u32>(u_input.a.x, u_input.d, 0u, u_input.d), true, vec4<u32>(u_input.a.x, 249u, u_input.a.x, u_input.d))), func_1(false), firstLeadingBit(u_input.c.x)), Struct_3(vec4<i32>(var_0, -2147483647i, u_input.b.x, 0i), Struct_1(vec4<u32>(u_input.d, u_input.d, 55395u, u_input.a.x), false, vec4<u32>(u_input.d, 34720u, u_input.d, 1u))))), 348f, true)), _wgslsmith_f_op_f32(sign(1490f)));
    let var_2 = 1054f;
    var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1116f, -357f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, 1019f)))));
    let var_3 = vec2<i32>(firstTrailingBit(var_0), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(-var_2), 381f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-126f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, 608f, var_2, var_2))))))), vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.a.x, ~(~u_input.d), 0u), -1i | ~(-var_0));
}

