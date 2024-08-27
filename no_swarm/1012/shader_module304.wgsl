struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: u32) -> vec3<u32> {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(arg_0.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -451f), 1000f), 974f)), !all(vec4<bool>(var_0.d.x, true, arg_2.d.x, select(var_0.d.x, false, false)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a));
    let var_3 = Struct_2(arg_2, -657f, select(vec2<bool>(select(var_0.d.x, true, arg_2.d.x) || true, !any(vec2<bool>(var_0.d.x, arg_2.d.x))), arg_2.d.yw, true), ~var_0.c);
    return ~_wgslsmith_div_vec3_u32(abs(~vec3<u32>(0u, u_input.a, 34527u)), ~var_3.d.xyw);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(max(4294967295u, 88849u), u_input.b) >> (vec2<u32>(1u, ~9265u) % vec2<u32>(32u)), ~select(max(vec2<u32>(0u, u_input.b), vec2<u32>(4294967295u, u_input.b)), vec2<u32>(0u, u_input.b), select(vec2<bool>(true, false), vec2<bool>(true, false), true))), firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4582u, 1u, 21512u, 78089u), vec4<u32>(24386u, 2938u, u_input.b, 27852u)) << (_wgslsmith_add_u32(4294967295u, u_input.a) % 32u), u_input.a)));
    var var_1 = Struct_3(Struct_2(Struct_1(-1593f, vec3<u32>(var_0.x, u_input.a, var_0.x) << (func_3(vec3<f32>(-843f, -2081f, 759f), vec2<u32>(var_0.x, u_input.b), Struct_1(-965f, vec3<u32>(112003u, u_input.a, var_0.x), vec4<u32>(var_0.x, u_input.b, 1u, var_0.x), vec4<bool>(true, false, true, true)), var_0.x) % vec3<u32>(32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, u_input.b, 32595u, 90184u), vec4<u32>(u_input.b, u_input.a, 11151u, u_input.b)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-297f))))), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), _wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a, var_0.x, u_input.b, 55089u)), min(~vec4<u32>(var_0.x, 0u, u_input.a, 38967u), ~vec4<u32>(u_input.b, u_input.b, 58449u, 1u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(308f, 885f, -1163f, -1489f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1595f, 541f, -1022f, 1011f), vec4<f32>(-521f, -451f, 1000f, 1959f)))))), ~u_input.b, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.x, var_0.x, u_input.a) | ~vec4<u32>(u_input.a, u_input.b, u_input.b, 1u), vec4<u32>(abs(var_0.x), ~1u, ~4294967295u, firstLeadingBit(u_input.b))), abs(~(~var_0.x))), 0i);
    var var_2 = max(vec4<u32>(var_0.x, ~var_0.x, 14003u, ~var_1.d.x), var_1.a.d) ^ ~(~max(vec4<u32>(var_1.d.x, u_input.a, var_1.c, 1u), ~vec4<u32>(u_input.b, 4294967295u, var_0.x, u_input.a)));
    var var_3 = var_1.a;
    var_2 = ~var_1.a.a.c;
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-445f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_1.b.x, -343f))))))), var_3.d.zxy, ~vec4<u32>(~reverseBits(1u), 4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_1.a.d.yyx, var_1.a.a.c.xyz), func_3(var_1.b.xzy, vec2<u32>(u_input.b, u_input.a), var_3.a, 0u).x), ~func_3(var_1.b.www, var_1.a.d.yx, var_3.a, 28249u).x), vec4<bool>(false, var_1.a.a.d.x || (_wgslsmith_f_op_f32(-var_1.b.x) > _wgslsmith_f_op_f32(ceil(var_3.a.a))), any(var_3.a.d.xwx), !any(!var_3.c)));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_2();
    var_0 = Struct_1(-1887f, ~(~var_0.b) >> ((~vec3<u32>(u_input.b, u_input.b, 31459u) >> (~arg_3.c.xxx % vec3<u32>(32u))) % vec3<u32>(32u)), ~reverseBits(arg_3.c), !vec4<bool>(true, any(vec3<bool>(false, true, true)) && any(arg_2.a.c), _wgslsmith_dot_vec2_i32(vec2<i32>(26723i, u_input.d), vec2<i32>(u_input.d, 1i)) < u_input.c, any(vec2<bool>(false, var_0.d.x)) | true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b.b.x, -1094f));
    var var_2 = vec2<u32>(u_input.a, var_0.b.x);
    var_0 = arg_2.a.a;
    return arg_3;
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = vec3<bool>(false, false, (!func_1(arg_0.a.a, vec3<u32>(arg_0.d.x, 1u, 1u), Struct_4(Struct_2(arg_0.a, 462f, arg_0.a.d.xy, vec4<u32>(32123u, 0u, arg_0.d.x, arg_0.a.c.x)), Struct_3(Struct_2(Struct_1(-1324f, vec3<u32>(arg_0.d.x, 30628u, 4294967295u), arg_0.d, vec4<bool>(false, true, arg_0.a.d.x, arg_0.c.x)), -495f, vec2<bool>(true, arg_0.c.x), vec4<u32>(31192u, u_input.a, u_input.a, 4294967295u)), vec4<f32>(1000f, -665f, 2306f, -208f), 29252u, arg_0.d.yx, 2147483647i)), arg_0.a).d.x | arg_0.c.x) && arg_0.a.d.x);
    var_0 = arg_0.a.d.yyx;
    var_0 = vec3<bool>(true, !(_wgslsmith_f_op_f32(step(903f, _wgslsmith_f_op_f32(min(685f, 487f)))) == arg_0.b), true);
    var_0 = vec3<bool>(false, func_2().d.x, false == arg_0.a.d.x);
    var_0 = arg_0.a.d.wzw;
    return Struct_3(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(step(arg_0.b, arg_0.b)), -396f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1704f, -582f, arg_0.a.a, arg_0.a.a), vec4<f32>(2438f, arg_0.b, arg_0.b, -418f))))), func_1(_wgslsmith_f_op_f32(floor(arg_0.b)), vec3<u32>(arg_0.a.c.x, u_input.b, 4294967295u), Struct_4(Struct_2(arg_0.a, arg_0.b, var_0.yz, vec4<u32>(u_input.b, arg_0.a.c.x, 1u, 51555u)), Struct_3(arg_0, vec4<f32>(1054f, arg_0.a.a, -1218f, arg_0.a.a), 57471u, arg_0.d.wz, -1i)), Struct_1(-491f, vec3<u32>(arg_0.a.c.x, u_input.b, 4294967295u), vec4<u32>(u_input.b, 29165u, arg_0.d.x, 1u), vec4<bool>(true, true, true, false))).d))), ~firstLeadingBit(29348u), vec2<u32>(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a.a, -1745f, false)) * _wgslsmith_f_op_f32(-257f - -115f)), firstLeadingBit(vec3<u32>(u_input.b, 4551u, arg_0.a.b.x)), Struct_4(Struct_2(arg_0.a, 1777f, vec2<bool>(true, var_0.x), arg_0.a.c), Struct_3(Struct_2(arg_0.a, arg_0.a.a, vec2<bool>(true, false), arg_0.a.c), vec4<f32>(arg_0.b, -148f, arg_0.b, arg_0.b), 9168u, arg_0.a.c.wy, 17642i)), Struct_1(arg_0.a.a, ~vec3<u32>(arg_0.a.c.x, u_input.b, 1u), vec4<u32>(0u, 12846u, 4294967295u, 72633u) | vec4<u32>(u_input.a, 6786u, 24849u, arg_0.a.c.x), arg_0.a.d)).c.x, firstLeadingBit(u_input.a)), ~(~u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(func_1(_wgslsmith_f_op_f32(-762f - _wgslsmith_f_op_f32(1071f * 182f)), min(~vec3<u32>(26562u, 1u, 36742u), vec3<u32>(60129u, u_input.b, 0u) | vec3<u32>(u_input.a, 1u, 64470u)), Struct_4(Struct_2(Struct_1(-181f, vec3<u32>(4294967295u, 24582u, 65836u), vec4<u32>(u_input.a, 30242u, 0u, u_input.b), vec4<bool>(true, true, true, false)), -674f, vec2<bool>(true, true), vec4<u32>(0u, u_input.a, 1u, 1u)), Struct_3(Struct_2(Struct_1(928f, vec3<u32>(4294967295u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 1106u, 10148u), vec4<bool>(false, true, true, true)), -496f, vec2<bool>(true, true), vec4<u32>(47653u, 9006u, 1u, 1u)), vec4<f32>(-1383f, 776f, -418f, 975f), 1u, vec2<u32>(5421u, 4294967295u), 6966i)), Struct_1(250f, vec3<u32>(u_input.b, 1u, u_input.b), ~vec4<u32>(u_input.b, u_input.a, u_input.a, 2702u), vec4<bool>(false, false, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1390f, 1247f, false)) * _wgslsmith_f_op_f32(ceil(-576f)))), vec2<bool>(true, true), _wgslsmith_add_vec4_u32(min(vec4<u32>(48359u, 4294967295u, 4294967295u, 80628u), vec4<u32>(31688u, u_input.b, 14731u, 11038u)), vec4<u32>(~u_input.b, 14267u, _wgslsmith_div_u32(u_input.b, u_input.a), u_input.a))));
    var var_1 = var_0.b.x;
    let var_2 = var_0.a.a.d;
    let var_3 = (firstLeadingBit(_wgslsmith_dot_vec2_u32(var_0.a.a.c.yx, var_0.d)) < func_2().c.x) | var_0.a.c.x;
    var_1 = var_0.b.x;
    var_1 = var_0.b.x;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-351f, 1339f, true)) + _wgslsmith_f_op_f32(-var_0.a.a.a)) + _wgslsmith_f_op_f32(abs(1155f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(910f))))));
    var var_5 = _wgslsmith_f_op_f32(998f + _wgslsmith_f_op_f32(floor(-1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4), ~(~min(vec2<u32>(var_0.c, u_input.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), var_0.d, vec2<u32>(var_0.c, u_input.a)))), max((vec4<i32>(var_0.e, -37120i, u_input.c, u_input.c) ^ vec4<i32>(65119i, var_0.e, 23081i, u_input.c)) >> (vec4<u32>(4294967295u, var_0.a.a.c.x, u_input.b, 4294967295u) % vec4<u32>(32u)), ~countOneBits(vec4<i32>(-38320i, u_input.d, -9153i, u_input.c))) ^ abs(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.c, 53753i), vec4<i32>(23757i, var_0.e, 26734i, var_0.e)), vec4<i32>(-14502i, -1i, 16552i, u_input.c))));
}

