struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(441f, 2515f), vec2<f32>(-446f, -387f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-111f, -342f))) - vec2<f32>(-337f, 1231f))))));
    var var_1 = vec2<f32>(var_0.x, 479f);
    let var_2 = vec4<i32>(~2770i << (abs(~arg_3) % 32u), ~0i, -_wgslsmith_dot_vec2_i32(vec2<i32>(~2147483647i, ~u_input.a.x), select(u_input.a.zx | vec2<i32>(11406i, arg_2.a), ~u_input.a.zz, all(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)))), ~0i);
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(max(1162f, 1000f)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -1288f), 1356f))), vec2<f32>(_wgslsmith_f_op_f32(step(-1159f, 544f)), 488f))));
    let var_3 = -3078f;
    return ~_wgslsmith_div_u32(36125u, arg_3);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<u32>, arg_3: vec3<u32>) -> vec4<f32> {
    var var_0 = Struct_2(~abs(_wgslsmith_sub_i32(u_input.c, 2147483647i)));
    let var_1 = u_input.a.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(step(224f, arg_0.x)));
    let var_3 = func_3(-arg_1, vec2<bool>(false, true), Struct_2(arg_1), 4294967295u);
    var_0 = Struct_2(var_1);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1016f - var_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.a, var_2.a, false)) - -934f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(845f * var_2.a)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1564f, 1019f, 894f, arg_0.x)) + vec4<f32>(-1640f, arg_0.x, 1530f, var_2.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2724f, -1913f, var_2.a, var_2.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(565f, -1765f, arg_0.x, 143f))))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<f32>) -> vec4<u32> {
    let var_0 = max(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 0u, 1u, 2731u)), ~77069u | _wgslsmith_clamp_u32(0u, 0u, 1u)), ~(0u << (func_3(0i, vec2<bool>(arg_0, arg_0), Struct_2(u_input.b), 13833u) % 32u))), _wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 20495u), firstTrailingBit(vec2<u32>(65337u, 1u))), vec2<u32>(13159u, ~(~81741u))));
    let var_1 = Struct_2(countOneBits(1i));
    let var_2 = select(vec2<bool>(true, true), vec2<bool>(arg_0, false), select(select(select(vec2<bool>(arg_0, true), select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0)), vec2<bool>(true, arg_0)), vec2<bool>(true, arg_0), select(!vec2<bool>(true, arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), true), all(vec2<bool>(arg_0, arg_0)))), !select(vec2<bool>(false, true), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), false), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-701f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))));
    let var_3 = true != var_2.x;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-944f, _wgslsmith_f_op_f32(f32(-1f) * -701f), !var_3 | true)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1210f, arg_2.x)))))));
    return vec4<u32>(max(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, var_0.x, 4294967295u), firstLeadingBit(vec3<u32>(var_0.x, 17405u, 0u))), firstLeadingBit(vec3<u32>(0u, 52498u, 6514u) >> (vec3<u32>(0u, 30391u, var_0.x) % vec3<u32>(32u)))), 1u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, var_0.x, var_0.x)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 51021u, var_0.x), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, var_0.x, 118994u), vec3<u32>(var_0.x, 0u, 4294967295u)))), _wgslsmith_add_u32(var_0.x, ~1u)), ~59728u, 42485u >> (~max(_wgslsmith_sub_u32(4294967295u, 1u), 31953u) % 32u));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    var var_0 = vec4<u32>(1u, 0u, 1u, ~min(0u, abs(0u)));
    var_0 = _wgslsmith_clamp_vec4_u32(func_4(all(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-774f, -1087f) - vec2<f32>(126f, -190f))), 31588i, vec4<u32>(var_0.x, ~var_0.x, var_0.x, 1u), vec3<u32>(4294967295u | var_0.x, 66203u, 0u & var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-411f - 289f)), _wgslsmith_f_op_f32(-1239f * _wgslsmith_f_op_f32(max(722f, 753f))))), max(vec4<u32>(var_0.x, ~var_0.x, reverseBits(9690u), var_0.x & 4294967295u), vec4<u32>(_wgslsmith_mod_u32(var_0.x, var_0.x), 1u, _wgslsmith_div_u32(1u, 1u), 1u)) << (~(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 44030u, 19786u, 45288u), vec4<u32>(50837u, 30116u, 21964u, 39226u)) ^ select(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, 7918u, var_0.x, 1u), vec4<bool>(false, true, false, false))) % vec4<u32>(32u)), vec4<u32>(var_0.x, var_0.x, 4294967295u, ~(0u ^ var_0.x)) >> (vec4<u32>(_wgslsmith_mult_u32(4294967295u, var_0.x), ~(var_0.x ^ 0u), 10432u, func_4(select(false, false, false), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(600f, 314f, 1426f, -282f), vec4<f32>(-2104f, -637f, 1147f, 778f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(158f, -230f) + vec2<f32>(-1000f, 798f))).x) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(372f)), -902f)) - _wgslsmith_f_op_f32(floor(192f))))));
    var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, abs(82465u), _wgslsmith_mult_u32(var_0.x, 1u)), func_4(all(vec4<bool>(var_0.x > 4294967295u, true, true, arg_0 < u_input.a.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(608f, var_1, var_1, 272f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, var_1, var_1, var_1), vec4<f32>(var_1, var_1, -1423f, 236f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(300f, var_1, 1970f, var_1)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-614f, var_1), vec2<f32>(-285f, -1560f), false))))));
    var var_2 = Struct_2(-min(_wgslsmith_mult_i32(arg_0, -46250i), ~u_input.c));
    return StorageBuffer(var_0.x, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(1i);
}

