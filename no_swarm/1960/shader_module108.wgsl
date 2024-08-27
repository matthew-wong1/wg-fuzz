struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> vec2<bool> {
    let var_0 = arg_0.a;
    let var_1 = arg_0.a.c.x;
    var var_2 = true;
    var_2 = all(select(select(vec2<bool>(var_0.d.x, var_0.d.x), select(select(var_0.d, vec2<bool>(var_0.d.x, var_0.d.x), false), !vec2<bool>(arg_0.a.d.x, true), true), select(select(vec2<bool>(arg_0.a.d.x, arg_0.a.d.x), vec2<bool>(true, arg_0.a.d.x), vec2<bool>(arg_0.a.d.x, var_0.d.x)), !var_0.d, arg_0.a.d.x)), select(vec2<bool>(true, true), !(!vec2<bool>(arg_0.a.d.x, true)), select(select(vec2<bool>(arg_0.a.d.x, false), vec2<bool>(var_0.d.x, var_0.d.x), var_0.d.x), var_0.d, true)), select(var_0.d, !var_0.d, false)));
    let var_3 = ~110324u;
    return vec2<bool>(all(select(vec3<bool>(!var_0.d.x, select(false, arg_0.a.d.x, false), arg_0.d.x <= 905f), select(!vec3<bool>(false, var_0.d.x, false), select(vec3<bool>(var_0.d.x, false, false), vec3<bool>(arg_0.a.d.x, true, true), vec3<bool>(false, var_0.d.x, var_0.d.x)), select(vec3<bool>(arg_0.a.d.x, var_0.d.x, arg_0.a.d.x), vec3<bool>(true, var_0.d.x, arg_0.a.d.x), false)), u_input.a != 1u)), all(vec2<bool>(true, false)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(firstLeadingBit(4294967295u) >> (min(u_input.a, 79055u) % 32u), 7802u, _wgslsmith_dot_vec3_u32(u_input.b.zxy, vec3<u32>(2728u, u_input.b.x, arg_1.b)), 1u), vec4<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.b.xw), vec2<u32>(4294967295u, 0u)) ^ ~(arg_1.b ^ 60483u), 8523u, ~(~(~55978u)), 0u));
    var_0 = vec4<u32>(reverseBits(arg_1.b), _wgslsmith_dot_vec3_u32(~firstTrailingBit(select(var_0.xyw, var_0.zxw, vec3<bool>(arg_0.d.x, arg_1.a.d.x, true))), ~u_input.b.wyw), 0u << (~select(7811u, u_input.b.x, false) % 32u), var_0.x);
    var var_1 = arg_0.b.x;
    let var_2 = vec4<i32>(1i, _wgslsmith_div_i32(0i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-arg_1.a.b.x, 1i), arg_0.b.x)), 1i, abs(40699i));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.a.e, arg_1.a.a.x, arg_0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1298f)) * _wgslsmith_f_op_f32(arg_0.e * arg_1.a.e))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(409f, 459f, arg_1.a.e, arg_1.a.a.x), vec4<f32>(1811f, -101f, -299f, 1157f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e, arg_1.a.a.x, arg_1.a.a.x, 1658f) + vec4<f32>(arg_1.a.a.x, arg_0.a.x, arg_0.e, arg_1.a.a.x))))))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a.x), arg_1.a.a.x))), _wgslsmith_f_op_f32(-arg_1.a.e), arg_0.e), !(!(!(!vec4<bool>(true, arg_0.d.x, arg_1.a.d.x, arg_0.d.x))))));
    return vec2<i32>(~0i, arg_0.c.x) | arg_0.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<u32>, arg_3: vec2<u32>) -> u32 {
    let var_0 = select(vec2<i32>(1i, arg_0.x), func_4(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-855f, -212f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-504f, 576f))), arg_0, _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-13980i, 0i, 39757i, arg_0.x)), vec4<i32>(2147483647i, -54611i, arg_0.x, 0i)), func_3(Struct_2(Struct_1(vec2<f32>(2306f, -519f), vec2<i32>(arg_0.x, arg_0.x), vec4<i32>(arg_0.x, 1i, 16743i, -1i), vec2<bool>(arg_1, arg_1), 153f), 17816u, 405f, vec4<f32>(1000f, 1093f, -1000f, -787f)), vec2<u32>(arg_3.x, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(355f)))), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-599f, -176f))), -vec2<i32>(30829i, arg_0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(0i, arg_0.x, arg_0.x, arg_0.x)), vec2<bool>(true, true), 1962f), _wgslsmith_div_u32(_wgslsmith_add_u32(0u, arg_3.x), firstLeadingBit(0u)))), !vec2<bool>(!arg_1, true));
    let var_1 = select(func_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-761f, -2350f))), var_0, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, -2147483647i, -1i, 43900i), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), !vec2<bool>(arg_1, false), _wgslsmith_f_op_f32(select(431f, 746f, arg_1))), _wgslsmith_mult_u32(arg_2.x | 83160u, 1u), _wgslsmith_f_op_f32(abs(-2192f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(704f, 342f, -1000f, -317f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 1000f, -238f, -775f))))), countOneBits(vec2<u32>(u_input.b.x, 17642u))).x, !(!arg_1), any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, arg_1, false), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, false, false), false)), select(!vec3<bool>(arg_1, arg_1, true), !vec3<bool>(true, false, arg_1), !vec3<bool>(arg_1, arg_1, arg_1)), !vec3<bool>(true, arg_1, true))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(124f, 976f)), _wgslsmith_f_op_f32(1000f * -1000f), _wgslsmith_f_op_f32(-750f + -1893f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(148f, 944f, -760f, -343f) - vec4<f32>(235f, 613f, -315f, -1118f))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-875f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) + 108f)) - _wgslsmith_f_op_f32(-1337f - _wgslsmith_f_op_f32(f32(-1f) * -1337f)));
    let var_4 = (vec3<i32>(-1i) * -(~vec3<i32>(var_0.x, arg_0.x, var_0.x))) >> (u_input.b.zzy % vec3<u32>(32u));
    return _wgslsmith_div_u32(~firstTrailingBit(~u_input.b.x), ~(arg_2.x | u_input.a)) | 13725u;
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_0.d.x, -1000f)), _wgslsmith_div_f32(-344f, arg_0.a.a.x))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var var_1 = 11222i;
    let var_2 = vec3<bool>(!(func_2(arg_0.a.c.yw, arg_0.a.d.x & arg_0.a.d.x, _wgslsmith_mult_vec2_u32(u_input.b.yw, vec2<u32>(u_input.b.x, 71167u)), countOneBits(u_input.b.zy)) == _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), vec4<u32>(0u, arg_0.b, 23320u, 0u))), func_3(Struct_2(arg_0.a, ~(u_input.b.x | u_input.a), _wgslsmith_f_op_f32(-arg_1), vec4<f32>(760f, _wgslsmith_f_op_f32(exp2(arg_0.a.e)), _wgslsmith_f_op_f32(arg_1 * -351f), arg_0.c)), ~_wgslsmith_add_vec2_u32(u_input.b.zx, ~u_input.b.zz)).x, arg_0.a.d.x);
    var var_3 = select(!var_2, var_2, !select(vec3<bool>(false, !var_2.x, true), !vec3<bool>(arg_0.a.d.x, var_2.x, var_2.x), !any(vec3<bool>(var_2.x, var_2.x, false))));
    let var_4 = any(func_3(arg_0, vec2<u32>(u_input.a, ~0u)));
    return -14751i | arg_0.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-334f, -1271f), vec2<f32>(128f, 1697f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2051f, 1826f), vec2<f32>(726f, 1445f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1560f, -658f)), true))) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(-2072f * _wgslsmith_f_op_f32(f32(-1f) * -2026f)))), firstLeadingBit(vec2<i32>(-func_1(Struct_2(Struct_1(vec2<f32>(-774f, 1108f), vec2<i32>(36181i, 2147483647i), vec4<i32>(52185i, -1i, -35902i, 2147483647i), vec2<bool>(true, false), 377f), u_input.a, -2021f, vec4<f32>(-1928f, 929f, -1408f, -806f)), 1051f), -62483i)), -_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(74297i, 0i, -7154i, 1i) << (u_input.b % vec4<u32>(32u))), ~vec4<i32>(-1i, 0i, 2147483647i, -2147483647i), -firstLeadingBit(vec4<i32>(-1i, 2147483647i, -48550i, -2147483647i))), !select(vec2<bool>(true, all(vec3<bool>(true, true, false))), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1172f) + _wgslsmith_f_op_f32(1183f - -907f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -728f))));
    let var_1 = Struct_1(var_0.a, abs(~(reverseBits(var_0.c.xy) << (u_input.b.zx % vec2<u32>(32u)))), (min(vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, 15963i), var_0.c) ^ vec4<i32>(14541i, 1i, 25981i ^ var_0.c.x, 2147483647i >> (u_input.a % 32u))) & vec4<i32>(2147483647i, -(~0i), _wgslsmith_mult_i32(-17913i, var_0.c.x), -func_1(Struct_2(Struct_1(var_0.a, var_0.c.wz, var_0.c, vec2<bool>(false, true), -925f), 0u, 1376f, vec4<f32>(var_0.e, var_0.a.x, var_0.a.x, 1000f)), 164f)), vec2<bool>(func_3(Struct_2(Struct_1(var_0.a, vec2<i32>(0i, 34289i), vec4<i32>(-39322i, -1i, var_0.c.x, 10021i), vec2<bool>(false, true), var_0.e), u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1065f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.x, -370f, -810f, var_0.e)))), ~vec2<u32>(u_input.b.x, 1u) ^ firstLeadingBit(u_input.b.xx)).x, var_0.d.x), _wgslsmith_f_op_f32(1016f + _wgslsmith_f_op_f32(-var_0.a.x)));
    var var_2 = var_0.d.x;
    let var_3 = Struct_3(var_1, 4294967295u);
    var_2 = all(select(select(vec4<bool>(var_1.d.x | var_0.d.x, true, any(vec4<bool>(var_1.d.x, var_1.d.x, false, var_0.d.x)), var_3.a.d.x), select(vec4<bool>(false, false, true, var_1.d.x), select(vec4<bool>(false, true, true, true), vec4<bool>(var_3.a.d.x, var_0.d.x, var_1.d.x, false), vec4<bool>(var_1.d.x, var_0.d.x, false, false)), var_1.d.x), var_0.d.x), !select(vec4<bool>(true, var_1.d.x, var_1.d.x, true), vec4<bool>(true, var_1.d.x, false, false), true), select(vec4<bool>(true, all(vec4<bool>(true, true, true, var_3.a.d.x)), true, var_0.d.x), vec4<bool>(true, func_3(Struct_2(Struct_1(vec2<f32>(var_3.a.a.x, -2968f), vec2<i32>(5464i, var_0.c.x), vec4<i32>(-2147483647i, var_1.c.x, 1i, -21014i), vec2<bool>(var_0.d.x, false), 935f), 15214u, var_3.a.e, vec4<f32>(var_3.a.e, 1000f, -836f, var_3.a.e)), u_input.b.xz).x, !var_3.a.d.x, var_1.d.x), vec4<bool>(false, -1841f > var_3.a.a.x, true, all(vec2<bool>(true, false))))));
    let var_4 = Struct_3(var_3.a, u_input.b.x);
    var var_5 = _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32((vec2<i32>(-1i) * -var_0.b) & (var_1.c.zx ^ -vec2<i32>(-36633i, var_1.c.x)), var_0.b << (_wgslsmith_sub_vec2_u32(min(u_input.b.zw, u_input.b.zw), ~vec2<u32>(u_input.b.x, 8926u)) % vec2<u32>(32u))), -vec2<i32>(50360i, func_1(Struct_2(Struct_1(var_3.a.a, var_0.b, var_1.c, vec2<bool>(var_4.a.d.x, var_4.a.d.x), var_0.a.x), var_4.b, 1775f, vec4<f32>(-955f, var_0.a.x, -1000f, -1000f)), 735f) & -1i));
    let x = u_input.a;
    s_output = StorageBuffer(1093f, 1u);
}

