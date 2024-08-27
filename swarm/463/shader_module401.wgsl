struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec4<u32> {
    let var_0 = vec3<u32>(u_input.b.x, ~(_wgslsmith_div_u32(u_input.b.x & 7307u, firstLeadingBit(44637u)) ^ ~u_input.a.x), u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(455f, -1000f))))))));
    let var_2 = true;
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-643f)), 2213f)))), _wgslsmith_f_op_f32(-var_1.x));
    var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(399f - _wgslsmith_f_op_f32(round(-1103f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))))))));
    return vec4<u32>(_wgslsmith_clamp_u32(1u, reverseBits(~_wgslsmith_add_u32(33867u, 0u)), var_0.x), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.b.xz, u_input.a.xz), vec2<u32>(~47090u, u_input.a.x)), 51920u, ~1u);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec2<i32>) -> f32 {
    let var_0 = vec4<bool>(arg_1.x, true, false, arg_0.x <= 0u);
    let var_1 = var_0;
    var var_2 = select(!(!((true & var_0.x) | arg_1.x)), var_0.x, true);
    var_2 = false;
    let var_3 = any(select(var_1.yxw, vec3<bool>(var_1.x, true, false), any(var_1.zzx)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-757f)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1889f, 1235f) - 589f))))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(arg_0.xy, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(func_4(func_3(), vec2<bool>(true, true), vec2<i32>(-27131i, -12681i)))), vec3<f32>(_wgslsmith_f_op_f32(abs(718f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1361f), -315f)), arg_0.x)));
    var_0 = Struct_2(Struct_1(arg_0.zz, 969f, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.a.x, var_0.a.b, -554f), vec3<f32>(arg_0.x, arg_0.x, 562f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1689f, var_0.a.a.x, arg_0.x))))));
    let var_1 = reverseBits(vec2<i32>(2147483647i, ~0i | _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(0i, 95857i))));
    var_0 = Struct_2(var_0.a);
    var var_2 = select(vec4<u32>(1u, ~(~43061u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(57517u, 61876u)), u_input.b.x << (31879u % 32u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 54543u, 1u, u_input.b.x), select(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 32517u), vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.b.x), false))), ~vec4<u32>(~u_input.b.x, u_input.b.x, abs(14064u), ~39820u), true) | vec4<u32>(~4294967295u, _wgslsmith_clamp_u32(~1u, ~u_input.a.x, u_input.a.x), 4294967295u, 20833u);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1171f)))), arg_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, -235f, 1000f), vec3<f32>(_wgslsmith_f_op_f32(var_0.a.b * 823f), var_0.a.c.x, _wgslsmith_div_f32(var_0.a.a.x, -2479f)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: i32, arg_3: f32) -> f32 {
    let var_0 = Struct_3(Struct_2(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_3, arg_3, 1446f) * vec4<f32>(-1719f, 1167f, arg_3, arg_3)) - vec4<f32>(575f, 253f, arg_3, arg_3)))), max(-(-arg_2 & firstLeadingBit(arg_2)), ~(-arg_2)));
    var var_1 = abs(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-var_0.b, abs(-43653i)), ~vec2<i32>(1i, 0i))));
    var_1 = -arg_2;
    let var_2 = vec2<u32>(_wgslsmith_mult_u32(~(11948u << (_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(31206u, u_input.b.x, 25718u)) % 32u)), _wgslsmith_mult_u32(firstLeadingBit(arg_1.x), ~35118u) | firstTrailingBit(u_input.a.x)), _wgslsmith_clamp_u32(u_input.a.x, countOneBits(~reverseBits(u_input.b.x)), _wgslsmith_add_u32((arg_1.x >> (4294967295u % 32u)) | ~arg_1.x, countOneBits(~0u))));
    let var_3 = select(vec3<bool>(all(!vec3<bool>(arg_0.x, true, false)), u_input.a.x < 0u, true || select(all(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), !arg_0.x, !arg_0.x)), !vec3<bool>(true && arg_0.x, any(vec2<bool>(arg_0.x, false)), true), all(!(!arg_0)));
    return 111f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-198f, -1265f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-256f)) * 1f))), 470f, -2311f, 1083f);
    var_0 = vec4<f32>(-2161f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), vec3<u32>(4294967295u, 0u, u_input.a.x), 2858i, var_0.x)), _wgslsmith_f_op_f32(-157f + var_0.x))), _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(-414f - -1632f), var_0.x);
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -549f, -1942f) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 915f, var_0.x, var_0.x), vec4<f32>(1200f, 1000f, -1104f, 486f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1658f, var_0.x, -2220f)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true))))) * vec4<f32>(-1479f, _wgslsmith_f_op_f32(1151f + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(183f, var_0.x)) * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(112f + var_0.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 1000f, 1845f, var_0.x), vec4<f32>(var_0.x, var_0.x, 1994f, 1525f)) + vec4<f32>(var_0.x, var_0.x, var_0.x, -509f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-339f, var_0.x, -621f, 570f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 745f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-349f, var_0.x, 267f, -153f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-279f, var_0.x, 1000f, var_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 819f, -861f, -158f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(274f, -1429f, -211f, var_0.x) + vec4<f32>(1027f, 778f, var_0.x, -437f)) - vec4<f32>(var_0.x, var_0.x, var_0.x, 209f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(793f + 748f), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(367f, var_0.x) + _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-851f, var_1.x, var_0.x, var_1.x))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x * -1385f), _wgslsmith_div_f32(818f, -576f), -797f)))));
    var var_2 = _wgslsmith_sub_i32(firstLeadingBit(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, -1i, 18872i), vec4<i32>(12950i, 20144i, -1i, 2147483647i)))) | ~(-42881i), reverseBits(~((2147483647i << (u_input.a.x % 32u)) | 1i)));
    var_2 = -min(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 32398i), min(vec2<i32>(-2147483647i, -1i), vec2<i32>(75806i, 6992i))), _wgslsmith_add_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 26037i, 1i), vec3<i32>(-2383i, 10516i, 14596i)) ^ 65384i));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yyx);
}

