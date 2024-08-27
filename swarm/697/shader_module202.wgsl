struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(~select(_wgslsmith_clamp_i32(u_input.b, -10492i, 2147483647i), -1i, true), arg_1.x, arg_1.x, 2147483647i));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-314f - _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1577f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1421f, 1155f))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = vec4<u32>(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), ~(u_input.a.x >> (u_input.e % 32u)), u_input.e), ~22582u, select(~(~abs(4294967295u)), u_input.e, !(any(vec2<bool>(arg_0.d, false)) | all(vec3<bool>(arg_0.a, arg_3.a, arg_3.a)))), u_input.e);
    let var_1 = u_input.a;
    var var_2 = Struct_1(min(6628u, ~var_1.x), _wgslsmith_clamp_u32(~select(4294967295u, var_1.x, false | arg_3.d), _wgslsmith_dot_vec2_u32(var_1.yy, ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0.x), var_0.zw)), var_1.x), (u_input.d.x | select(arg_3.b.x, _wgslsmith_dot_vec3_i32(arg_3.b.wxy, vec3<i32>(8000i, -1i, 3783i)), false)) << (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_0.x, 0u, var_1.x, 4294967295u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 71385u, u_input.e, var_0.x), _wgslsmith_div_vec4_u32(vec4<u32>(41208u, u_input.a.x, var_0.x, var_1.x), vec4<u32>(var_0.x, 0u, 0u, u_input.a.x)))) % 32u));
    var_0 = firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(1u, 9045u), 4294967295u, 65077u, (_wgslsmith_sub_u32(var_2.b, 4294967295u) >> (2669u % 32u)) ^ ~(~u_input.e)));
    var var_3 = Struct_1(4294967295u, ~_wgslsmith_sub_u32(~var_2.b, ~26849u), 2147483647i);
    return vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(var_3.c, -1i, -71825i, -10610i)), -1i, -4426i, -var_2.c), u_input.d), _wgslsmith_clamp_i32(reverseBits(arg_3.b.x), reverseBits(min(-2147483647i, -34768i)), u_input.b), -u_input.d.x << (_wgslsmith_mult_u32(max(firstTrailingBit(var_2.a), _wgslsmith_sub_u32(var_0.x, 1755u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, 23312u), _wgslsmith_mult_vec2_u32(u_input.a.zz, u_input.a.xz))) % 32u), var_2.c);
}

fn func_2(arg_0: vec2<f32>) -> vec4<i32> {
    var var_0 = Struct_2(false, func_3(Struct_2(all(vec3<bool>(true, true, true)), vec4<i32>(-2147483647i, _wgslsmith_add_i32(24908i, u_input.c.x), _wgslsmith_add_i32(-2147483647i, 1i), ~u_input.d.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-136f, -914f, arg_0.x, arg_0.x)))), true), vec4<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)), 422f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), 908f, -1i != u_input.b)), -851f), _wgslsmith_f_op_f32(-arg_0.x), Struct_2(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), u_input.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 1000f, -1806f) * vec4<f32>(-447f, -565f, 1328f, arg_0.x)))), true)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-135f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x * -1000f), 2956f))), true);
    let var_1 = Struct_1(firstTrailingBit(_wgslsmith_clamp_u32(1u, ~u_input.e, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(u_input.a.x, u_input.a.x)))), 18459u, -select(0i, ~(-14528i), var_0.d));
    var_0 = Struct_2(var_0.a, var_0.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_0.x)), -2346f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1177f)), _wgslsmith_f_op_f32(sign(var_0.c.x)))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1104f), _wgslsmith_f_op_f32(-var_0.c.x)))), var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -440f)), 43284u > ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 15475u), u_input.a.xx), _wgslsmith_add_u32(1u, u_input.a.x), any(vec3<bool>(var_0.a, var_0.a, false))));
    var var_2 = Struct_2(false, u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1247f, var_0.c.x, var_0.c.x, -386f)))))), var_0.c.x <= _wgslsmith_f_op_f32(f32(-1f) * -693f));
    let var_3 = var_1;
    return -var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(false, false), u_input.d.xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 833f), vec2<f32>(-1453f, 160f), true)))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1207f * 732f), _wgslsmith_f_op_f32(f32(-1f) * -1613f), false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-526f, -299f))))));
    let var_1 = Struct_2(true, firstLeadingBit(~func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(441f, -1570f, 1679f, -681f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, var_0.x, 180f))) + vec4<f32>(-1646f, var_0.x, 1056f, 1000f)), true)))), false);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(690f * -618f) + _wgslsmith_f_op_f32(var_0.x * var_0.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)));
    let var_3 = var_1;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-177f)) * _wgslsmith_f_op_f32(exp2(var_3.c.x))) + _wgslsmith_f_op_f32(f32(-1f) * -1045f));
    let var_4 = Struct_1(22452u, u_input.a.x, firstTrailingBit(-9381i));
    let var_5 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(126f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-763f - var_0.x) * _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.c.x, var_1.c.x, var_3.d))))), _wgslsmith_f_op_f32(f32(-1f) * -791f))));
    var_2 = _wgslsmith_f_op_f32(select(1414f, _wgslsmith_f_op_f32(ceil(var_5.x)), !var_3.d));
    var var_6 = Struct_2(true, func_3(Struct_2(var_1.d, -vec4<i32>(var_4.c, -11193i, -25186i, var_1.b.x), var_5, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -190f, 201f, var_1.c.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1121f, -770f, -639f, -864f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.c.x, -1096f, var_0.x, var_1.c.x))), select(vec4<bool>(var_3.d, true, var_1.d, var_1.d), !vec4<bool>(var_3.d, false, var_3.d, false), true))), var_3.c.x, Struct_2(true, u_input.c, var_1.c, all(vec4<bool>(var_1.d, false, false, var_3.d)) != true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-254f, 446f, var_1.c.x, var_5.x)))))))), true);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.e, 4294967295u, ~_wgslsmith_sub_u32(1u, u_input.a.x)), -((i32(-1i) * -24971i) & _wgslsmith_div_i32(var_4.c, -1i)) >> (_wgslsmith_clamp_u32(firstLeadingBit(~4294967295u), var_4.a, 4294967295u) % 32u), func_2(var_1.c.wz).x);
}

