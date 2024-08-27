struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = u_input.b.x;
    let var_1 = -(countOneBits(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x)) & -1i) >> (4294967295u % 32u);
    var var_2 = Struct_1(-748f, arg_0.b, select(vec2<bool>(arg_0.c.x, arg_0.c.x & true), arg_0.c, vec2<bool>(countOneBits(arg_0.b.x) < 9398u, !(!arg_0.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 1478f)))) * vec2<f32>(1000f, _wgslsmith_f_op_f32(ceil(-570f)))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(350f, arg_0.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.d - arg_0.d))))));
    let var_3 = var_2.d.x;
    var var_4 = vec3<u32>(5554u, ~41298u, ~var_2.b.x);
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> vec4<i32> {
    var var_0 = select(select(vec3<bool>(true, true, true), vec3<bool>(!arg_0.c.x, all(arg_0.c), arg_3), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(828f * -1797f))) <= arg_0.d.x), !(!vec3<bool>(any(arg_0.c), true, true)), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, arg_1.c.x, true), vec3<bool>(arg_0.c.x, false, false)), select(vec3<bool>(arg_3, arg_1.c.x, false), vec3<bool>(true, false, true), 25749u <= arg_0.b.x), true), select(vec3<bool>(func_3(arg_1), false, true), vec3<bool>(arg_1.c.x, true, true), arg_3), true && !(!arg_1.c.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -573f), arg_0.d.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-915f, arg_0.d.x, -478f))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.d.x, -997f, arg_0.a))))));
    var var_2 = arg_2;
    var var_3 = arg_1.b.x;
    var_1 = vec3<f32>(var_1.x, -118f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.a, _wgslsmith_div_f32(arg_1.d.x, _wgslsmith_f_op_f32(289f + arg_1.d.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.d.x, 1000f)), -1027f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_0.a, 663f))))))));
    return _wgslsmith_sub_vec4_i32(-vec4<i32>(-84152i << (1u % 32u), -firstLeadingBit(-1290i), u_input.b.x, -7966i << (1u % 32u)), vec4<i32>(2147483647i, firstTrailingBit(-(~1i)), _wgslsmith_dot_vec2_i32(u_input.b.xz, ~abs(u_input.b.zx)), 37678i));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> f32 {
    let var_0 = ~select(_wgslsmith_clamp_vec4_u32((vec4<u32>(0u, u_input.a, u_input.a, 0u) << (vec4<u32>(1u, 0u, 1u, u_input.a) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 0u)), min(firstTrailingBit(vec4<u32>(0u, 22546u, u_input.a, u_input.a)), firstLeadingBit(vec4<u32>(u_input.a, 69592u, 0u, u_input.a))), firstLeadingBit(~vec4<u32>(u_input.a, 1u, 59801u, 4294967295u))), ~((vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u) & vec4<u32>(u_input.a, u_input.a, 126102u, u_input.a)) ^ vec4<u32>(4294967295u, 1u, u_input.a, 0u)), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(true, true, true, false)), !(!vec4<bool>(arg_1, arg_1, arg_1, true)), true));
    var var_1 = _wgslsmith_f_op_vec3_f32(-arg_0);
    var var_2 = Struct_2(-16860i, u_input.b.x, 44362u);
    let var_3 = _wgslsmith_add_vec4_i32(func_4(Struct_1(arg_0.x, var_0.wz, vec2<bool>(var_2.c < var_0.x, true), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(-2030f, -180f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), vec2<u32>(countOneBits(68803u), ~var_0.x), vec2<bool>(false, func_3(Struct_1(arg_0.x, vec2<u32>(var_2.c, var_2.c), vec2<bool>(arg_1, arg_1), vec2<f32>(arg_0.x, 481f)))), var_1.zx), Struct_2(-1i, 54074i, reverseBits(0u ^ u_input.a)), !(!arg_1)), vec4<i32>(max(-32346i, u_input.b.x), -38010i, _wgslsmith_dot_vec2_i32(u_input.b.xy, max(vec2<i32>(31459i, u_input.b.x), u_input.b.yx) << (vec2<u32>(20234u, var_2.c) % vec2<u32>(32u))), var_2.b));
    return 698f;
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1617f, -567f, -632f)), arg_0 == arg_0)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<f32>(997f, -948f, 1101f), false))), 185f, select(true, true, all(vec3<bool>(true, true, true))))), -1155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1086f * 1000f) + _wgslsmith_f_op_f32(select(-211f, 685f, true)))))));
    var var_1 = true;
    var var_2 = Struct_1(1744f, vec2<u32>(u_input.a, _wgslsmith_mult_u32(~45361u, min(~u_input.a, ~u_input.a))), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-372f, _wgslsmith_f_op_f32(-var_0.x)) * vec2<f32>(752f, _wgslsmith_f_op_f32(floor(-423f))))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(120f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1314f, _wgslsmith_f_op_f32(-var_2.d.x)))), (_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, var_2.b.x), vec2<u32>(var_2.b.x, 24128u)) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(var_2.b.x, var_2.b.x) ^ var_2.b)) & reverseBits(reverseBits(vec2<u32>(var_2.b.x, 23512u) & var_2.b)), select(!(!var_2.c), vec2<bool>(var_2.c.x, any(vec2<bool>(var_2.c.x, var_2.c.x))), var_2.c.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.d)), vec2<f32>(_wgslsmith_f_op_f32(abs(2529f)), -988f))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-186f * 127f), var_2.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -1012f) - _wgslsmith_div_f32(1379f, var_2.a))))));
    var_2 = var_3;
    return Struct_2(u_input.b.x, 1i, _wgslsmith_mod_u32(_wgslsmith_mult_u32((var_3.b.x | 0u) >> (57433u % 32u), ~u_input.a), 42189u));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(381f - _wgslsmith_f_op_f32(412f - -735f)))), vec2<u32>(arg_3.c, arg_1.c) << (vec2<u32>(_wgslsmith_clamp_u32(arg_3.c, 4110u, 4294967295u), ~1u) % vec2<u32>(32u)), select(vec2<bool>(!(true || arg_0), true), vec2<bool>(false, true), (all(vec3<bool>(arg_0, arg_2, arg_2)) && arg_2) & false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1582f), _wgslsmith_f_op_f32(round(-428f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1202f, 1005f) * vec2<f32>(-1905f, -1000f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1993f, 1192f), vec2<f32>(1223f, 1000f))), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(110f, 1000f)))))));
    let var_1 = arg_2;
    var_0 = Struct_1(-471f, ~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~var_0.b, ~var_0.b), ~min(vec2<u32>(u_input.a, 63659u), vec2<u32>(0u, var_0.b.x))), select(var_0.c, vec2<bool>(!all(var_0.c), true), select(select(var_0.c, !var_0.c, arg_0), select(vec2<bool>(false, var_0.c.x), !vec2<bool>(var_1, arg_0), !arg_0), vec2<bool>(false, all(vec4<bool>(false, var_1, arg_2, true))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -448f)) - var_0.d))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_0.a)))), ~var_0.b, select(var_0.c, select(vec2<bool>(true, false), !(!vec2<bool>(arg_0, false)), !(!vec2<bool>(arg_0, var_0.c.x))), var_0.c), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.d, var_0.d))))))));
    var var_2 = Struct_2(arg_3.a, arg_3.b, func_1(~(~(-2147483647i))).c);
    return _wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(568f, -551f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_div_i32(-_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b.x, 1i), -1i), -18774i), 1i);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1026f)), _wgslsmith_f_op_f32(556f - -1859f))) + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(273f)), _wgslsmith_f_op_f32(abs(-2106f)))), -3024f)) + vec2<f32>(-591f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(false, Struct_2(1i, u_input.b.x, u_input.a), true, func_1(1i))))));
    let var_3 = vec3<i32>(~u_input.b.x, 1i, ~(-(var_1 & u_input.b.x))) >> (~(firstLeadingBit(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 0u))) ^ vec3<u32>(u_input.a, u_input.a, 4294967295u)) % vec3<u32>(32u));
    let var_4 = Struct_1(-482f, ~(select(vec2<u32>(u_input.a, 1u), vec2<u32>(38030u, 1u), vec2<bool>(false, false)) << (vec2<u32>(66621u ^ u_input.a, ~u_input.a) % vec2<u32>(32u))), !select(vec2<bool>(var_2.x >= -188f, any(vec3<bool>(true, false, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, false)), any(vec2<bool>(true, true))), _wgslsmith_div_vec2_f32(var_2, var_2));
    var_0 = ~_wgslsmith_mod_u32(var_4.b.x, 91973u);
    var_0 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, var_4.b.x, var_4.b.x), vec4<u32>(4294967295u, var_4.b.x, 4294967295u, var_4.b.x)) | (vec4<u32>(1u, 27701u, var_4.b.x, u_input.a) | vec4<u32>(var_4.b.x, u_input.a, 40840u, var_4.b.x)), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(1u, 0u, u_input.a, u_input.a)), vec4<u32>(1u, u_input.a, var_4.b.x, 0u) & vec4<u32>(0u, 40351u, u_input.a, var_4.b.x))), u_input.a);
    let var_5 = func_1(~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, 1i), vec2<i32>(-1i, 18405i), var_4.c), select(u_input.b.yy, var_3.xy, var_4.c)), _wgslsmith_dot_vec3_i32(~vec3<i32>(-21972i, var_1, var_1), vec3<i32>(2205i, u_input.b.x, -31959i))));
    let var_6 = firstTrailingBit(~_wgslsmith_add_u32(firstTrailingBit(firstTrailingBit(var_4.b.x)), _wgslsmith_mod_u32(~4294967295u, var_4.b.x & var_4.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(firstLeadingBit(29939u), min(var_4.b.x, 53061u), ~(1u | var_5.c), _wgslsmith_add_u32(u_input.a << (4505u % 32u), 0u)), firstLeadingBit(firstTrailingBit(firstTrailingBit(vec3<u32>(37263u, 4294967295u, 18202u)))) | ~firstTrailingBit(vec3<u32>(u_input.a, 4294967295u, var_4.b.x)), ~var_3.x, ~_wgslsmith_mod_u32(~var_5.c >> (var_4.b.x % 32u), var_4.b.x), ~var_4.b);
}

