struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> vec3<u32> {
    var var_0 = -2147483647i;
    var_0 = 11328i;
    var_0 = firstLeadingBit(firstTrailingBit(abs(1i >> ((u_input.a.x | u_input.a.x) % 32u))));
    var_0 = -2147483647i;
    var_0 = countOneBits(_wgslsmith_clamp_i32(4488i, (~2147483647i | firstTrailingBit(-1i)) | _wgslsmith_add_i32(~20718i, ~(-1i)), _wgslsmith_clamp_i32(-(~18709i), 1i, 18286i << ((0u | u_input.a.x) % 32u))));
    return vec3<u32>(~0u, ~abs(u_input.a.x), ~(22075u ^ (~u_input.a.x << (~34673u % 32u))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(trunc(arg_0.x))))), arg_2, _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -38695i, 2147483647i), vec3<i32>(-2147483647i, arg_2.a, 1i))), firstLeadingBit(~vec3<i32>(55371i, 8286i, 1i))) >> (firstLeadingBit(~arg_2.b.x) % 32u), u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1024f, _wgslsmith_f_op_f32(ceil(arg_0.x)))))));
    var_0 = Struct_2(_wgslsmith_div_f32(-414f, 410f), Struct_1(6428i, _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(var_0.d, arg_1.x, 0u, var_0.b.b.x)), vec4<u32>(0u, var_0.b.b.x, u_input.a.x, arg_1.x) ^ _wgslsmith_div_vec4_u32(vec4<u32>(arg_2.b.x, 44909u, var_0.b.b.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 1u, 0u)))), ~reverseBits(i32(-1i) * -66228i), abs(36998u));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(abs(arg_0.x)), Struct_1(_wgslsmith_div_i32(0i, -_wgslsmith_add_i32(arg_2.a, arg_2.a)), _wgslsmith_div_vec4_u32(select(vec4<u32>(4294967295u, arg_2.b.x, var_0.b.b.x, 0u) >> (arg_2.b % vec4<u32>(32u)), vec4<u32>(u_input.a.x, u_input.a.x, var_0.d, arg_2.b.x) ^ vec4<u32>(1u, 1u, arg_2.b.x, 76628u), true), arg_2.b)), -8978i | (6454i & select(min(1i, var_0.c), -19441i & var_0.b.a, all(vec2<bool>(false, false)))), u_input.a.x);
    var var_3 = Struct_2(arg_0.x, Struct_1(select(~var_0.b.a, var_2.c, true), vec4<u32>(var_0.b.b.x, var_0.b.b.x, ~u_input.a.x, abs(35604u)) ^ vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_sub_u32(var_0.b.b.x, var_2.d), 6729u)), arg_2.a, ~(~1u));
    return max(arg_1, vec3<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(39785u, 15810u), _wgslsmith_sub_vec2_u32(arg_2.b.ww, var_3.b.b.zx)), 1u, ~_wgslsmith_add_u32(_wgslsmith_mult_u32(44887u, var_2.b.b.x), _wgslsmith_add_u32(u_input.a.x, var_3.d))));
}

fn func_2() -> bool {
    let var_0 = ~func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1493f, 1527f, -941f, 837f), vec4<f32>(-347f, 1047f, 479f, 181f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-541f, 979f, -920f, -774f), vec4<f32>(1327f, 910f, -1625f, -200f)))))), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, 86693u, 0u)), ~func_3(false)), Struct_1(1i, ~firstLeadingBit(vec4<u32>(5186u, 18071u, 0u, 24525u))));
    var var_1 = 929f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -965f) * _wgslsmith_f_op_f32(step(412f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1013f) + 1206f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(660f, _wgslsmith_f_op_f32(199f + -1288f), 1000f, _wgslsmith_f_op_f32(-163f - 1000f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), -1885f, _wgslsmith_f_op_f32(f32(-1f) * -582f), 264f)));
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-131f, var_2.x)) + -1609f))));
    return false;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: vec4<i32>) -> vec3<bool> {
    let var_0 = arg_0.b.b.x;
    let var_1 = Struct_3(true, vec4<f32>(-1000f, -529f, 1151f, arg_0.a), vec3<u32>(17291u, ~19919u, arg_0.d), Struct_1(reverseBits(-arg_0.c), abs(_wgslsmith_mod_vec4_u32(arg_0.b.b, vec4<u32>(arg_0.b.b.x, u_input.a.x, var_0, var_0)))), arg_0.b);
    var var_2 = _wgslsmith_mod_vec3_u32(~countOneBits(~u_input.a), vec3<u32>(~_wgslsmith_sub_u32(var_1.e.b.x ^ 0u, 4294967295u), _wgslsmith_clamp_u32(var_1.e.b.x, ~0u, 1u), u_input.a.x));
    var var_3 = Struct_2(arg_0.a, var_1.d, var_1.e.a, 4294967295u);
    var var_4 = select(arg_1.zz, arg_1.yy, func_2());
    return vec3<bool>(!var_4.x, true, any(select(!(!arg_1), select(select(arg_1, arg_1, vec3<bool>(true, false, false)), vec3<bool>(true, var_4.x, true), true), !select(arg_1, arg_1, var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = !select(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, var_0), true), func_1(Struct_2(1082f, Struct_1(1i, vec4<u32>(u_input.a.x, 51946u, 1u, 24998u)), 57667i, u_input.a.x), vec3<bool>(true, var_0, var_0), vec3<i32>(-2147483647i, -46238i, -46220i), vec4<i32>(-12336i, 1i, -48441i, -40082i)), !vec3<bool>(false, true, var_0)), !(!vec3<bool>(var_0, var_0, var_0)), select(!vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, var_0, true), func_1(Struct_2(2598f, Struct_1(-804i, vec4<u32>(4294967295u, 1u, 0u, 44458u)), 1i, 0u), vec3<bool>(var_0, var_0, true), vec3<i32>(20130i, 33363i, -33914i), vec4<i32>(1i, -25791i, -7328i, -33196i)))), vec3<bool>(false, true, var_0), var_0);
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(-293f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(-749f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1105f, 1265f, -1199f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_f_op_f32(f32(-1f) * -749f), 1134f), true)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-633f, 858f, -521f))))));
    let var_3 = -firstLeadingBit(~firstTrailingBit(~vec4<i32>(-42621i, 0i, -29383i, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, var_2.x, reverseBits(~firstLeadingBit(-var_3.yyz)));
}

