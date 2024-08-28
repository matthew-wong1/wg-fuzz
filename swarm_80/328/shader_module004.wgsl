struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: bool = true;

var<private> global2: f32 = 747f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = 1i;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_1.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_1.b))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1.b))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, false))))));
    var_1 = Struct_2(vec4<f32>(-107f, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(-var_1.b.x)), arg_1.a.x), _wgslsmith_f_op_vec2_f32(var_1.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(169f, var_1.a.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1525f, arg_1.a.x) - vec2<f32>(var_1.a.x, arg_1.a.x))))));
    var var_2 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(~min(29405u, 44257u), reverseBits(8666u)), ~1u, reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(44409u, 30984u, 4294967295u, 0u), vec4<u32>(19703u, 83672u, 4294967295u, 0u)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b.x, -2078f), var_1.a.wz)), vec2<u32>(1u, 1u) >> (~vec2<u32>(1u, firstTrailingBit(4294967295u)) % vec2<u32>(32u)));
    let var_3 = Struct_3(any(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(false, false)))), false, _wgslsmith_add_u32(min(abs(_wgslsmith_clamp_u32(1u, var_2.c.x, 80026u)), 36219u | var_2.c.x), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(countOneBits(var_2.c.x), countOneBits(1u)), 1u, _wgslsmith_mult_u32(1u, 31159u))), arg_1);
    return select(!select(select(vec2<bool>(false, var_3.b), vec2<bool>(true, true), !vec2<bool>(var_3.a, var_3.b)), select(!vec2<bool>(var_3.a, true), vec2<bool>(false, true), !var_3.b), vec2<bool>(true, var_3.b)), vec2<bool>(false, true & select(var_3.c <= var_2.c.x, var_3.a == false, false)), true);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_3(!all(select(func_3(vec2<i32>(44589i, -9887i), Struct_2(vec4<f32>(-1000f, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec2<f32>(-1428f, -1000f))), vec2<bool>(true, true), true)), (~min(u_input.a.x, u_input.a.x) << (((1u << (arg_0.x % 32u)) & 4978u) % 32u)) >= u_input.a.x, (((arg_1.a.x >> (1u % 32u)) ^ max(arg_1.a.x, arg_0.x)) << (arg_1.c.x % 32u)) | select(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(arg_0.x, arg_0.x, arg_1.c.x, 4294967295u)), firstLeadingBit(38788u)), max(~arg_1.a.x, 18861u), true), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1016f, arg_1.b.x, arg_1.b.x, -506f))) + vec4<f32>(_wgslsmith_f_op_f32(step(-646f, arg_1.b.x)), _wgslsmith_f_op_f32(arg_1.b.x + -1679f), -276f, -1237f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(arg_1.b.x * -668f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1142f, arg_1.b.x)), arg_1.b))));
    let var_1 = var_0;
    var var_2 = Struct_2(var_0.d.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.b.x) - -933f), -1000f)));
    let var_3 = Struct_1(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(6908u, arg_0.x << (var_1.c % 32u), arg_0.x, ~var_0.c), ~max(vec4<u32>(var_1.c, 0u, 33070u, 1u), vec4<u32>(arg_1.a.x, arg_0.x, 0u, 0u))), var_1.c), vec2<f32>(arg_1.b.x, var_0.d.a.x), ~vec2<u32>(abs(31367u), reverseBits(arg_1.a.x)));
    global0 = all(!select(!vec4<bool>(true, var_1.b, var_1.a, var_1.a), !vec4<bool>(var_1.b, var_1.b, var_1.a, false), vec4<bool>(false, var_1.b, var_1.b, true))) && ((true && !var_0.a) || var_0.b);
    return 257f;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_4) -> f32 {
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<u32>(0u, 0u, 73920u), Struct_1(vec3<u32>(0u, arg_2.a, 4294967295u), vec2<f32>(1121f, -165f), vec2<u32>(0u, 9121u)))) - 776f) - 930f) * -598f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1912f)) + _wgslsmith_f_op_f32(1903f * _wgslsmith_f_op_f32(floor(2920f)))));
    global2 = -170f;
    global0 = !(~firstLeadingBit(_wgslsmith_add_u32(arg_2.a, 45437u)) > select(arg_2.a, arg_1, false));
    let var_0 = Struct_3(all(select(select(arg_2.c, vec3<bool>(arg_2.c.x, false, true), select(arg_2.c, arg_2.c, vec3<bool>(arg_2.c.x, true, false))), select(!vec3<bool>(false, arg_2.c.x, true), !arg_2.c, vec3<bool>(arg_2.c.x, true, arg_2.c.x)), vec3<bool>(!arg_2.c.x, true, arg_2.c.x))), any(!arg_2.c) == select(any(!vec4<bool>(arg_2.c.x, true, arg_2.c.x, arg_2.c.x)), any(select(vec4<bool>(false, arg_2.c.x, arg_2.c.x, arg_2.c.x), vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x, arg_2.c.x), false)), true != all(vec2<bool>(false, arg_2.c.x))), arg_0.x, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-678f + 103f), _wgslsmith_div_f32(-154f, -211f), 1f, -1000f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-564f, -1991f, 958f, -618f) * vec4<f32>(-390f, -516f, 460f, 1124f)), _wgslsmith_div_vec4_f32(vec4<f32>(-572f, -472f, 1236f, -637f), vec4<f32>(1125f, 1856f, -1517f, -317f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-522f, -909f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(925f, 1000f))))))));
    let var_1 = arg_2;
    return 931f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1541f, 1406f, -982f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-887f + -1019f)), _wgslsmith_f_op_f32(1269f + -594f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -436f) + 105f))) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<u32>(39985u, 4294967295u), 1u, Struct_4(21135u, 1i, vec3<bool>(true, false, true)))) - -2321f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1036f + -111f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -340f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global1 = true;
    let var_1 = !all(select(vec4<bool>(true, true, u_input.b.x == 1i, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true))));
    let var_2 = select(!select(vec4<bool>(true, var_1 && var_1, var_1, true), vec4<bool>(var_1 != true, var_1, func_3(vec2<i32>(-2147483647i, 0i), Struct_2(vec4<f32>(852f, 2644f, 1000f, var_0.x), vec2<f32>(-147f, var_0.x))).x, any(vec4<bool>(var_1, var_1, true, true))), select(any(vec2<bool>(var_1, false)), true, var_1)), vec4<bool>(true, all(!(!vec3<bool>(false, var_1, true))), var_1, var_1), !vec4<bool>(any(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, false, false), vec3<bool>(var_1, false, var_1))), all(!vec2<bool>(var_1, true)), false, true));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, 1000f)) - var_0.x), _wgslsmith_div_f32(-2191f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)), 1000f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-835f, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, 555f, 598f, var_0.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(479f, var_0.x, 1002f, var_0.x), vec4<f32>(-3027f, -688f, var_0.x, 281f))), vec4<f32>(_wgslsmith_f_op_f32(max(var_0.x, 743f)), _wgslsmith_f_op_f32(f32(-1f) * -857f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(var_0.x))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_0.x), vec2<f32>(_wgslsmith_f_op_f32(1348f - var_0.x), _wgslsmith_f_op_f32(-1254f * var_0.x))) * vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -768f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-444f, var_0.x, false)))))));
    var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(var_3.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_3.b.x, -151f, var_0.x), var_3.a)) * _wgslsmith_f_op_vec4_f32(min(var_3.a, vec4<f32>(-1000f, 1758f, var_3.b.x, var_0.x))))), vec2<f32>(var_0.x, var_3.a.x));
    global2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(abs(select(vec4<u32>(36556u, 122830u, 24829u, 0u), vec4<u32>(1131u, 1u, 17335u, 4294967295u), var_2)), vec4<u32>(reverseBits(~34915u), 1u, 46990u, select(4294967295u, 1u, true | var_1)), vec4<u32>(1u, firstLeadingBit(25114u), 17078u, ~(~4294967295u))), max(vec4<i32>(~(~0i), _wgslsmith_mod_i32(~35522i, abs(-7835i)), _wgslsmith_div_i32(45777i, _wgslsmith_mult_i32(4121i, u_input.a.x)), 30793i), -(vec4<i32>(-3237i, -2147483647i, u_input.a.x, u_input.a.x) << (vec4<u32>(20738u, 8444u, 4294967295u, 1u) % vec4<u32>(32u))) | vec4<i32>(1i << (1u % 32u), u_input.c, reverseBits(1i), -u_input.b.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(exp2(var_0.x))), -1881f))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x + 444f))))));
}

