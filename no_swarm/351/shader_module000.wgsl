struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = vec2<u32>(_wgslsmith_clamp_u32(arg_0.d.x, ~_wgslsmith_mult_u32(arg_0.d.x, firstLeadingBit(0u)), arg_0.d.x), min(~44278u, arg_0.d.x));
    var_0 = vec2<u32>(arg_0.d.x, arg_0.d.x);
    let var_1 = arg_0;
    let var_2 = Struct_3(arg_0.d);
    var_0 = abs(vec2<u32>(var_1.d.x, 1u));
    return vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(var_2.a.yx), vec2<u32>(var_2.a.x, var_0.x >> (var_0.x % 32u))), 56195u, 80517u, 0u);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> vec4<u32> {
    return ~abs(func_3(Struct_1(true, true, true, _wgslsmith_mult_vec3_u32(arg_0.a, vec3<u32>(50212u, 39546u, arg_2)), vec3<f32>(-1237f, -1928f, -1131f))));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_3(vec3<u32>(_wgslsmith_clamp_u32(~arg_0, max(71775u, 103146u), ~arg_0), firstLeadingBit(32380u) >> (_wgslsmith_sub_u32(arg_0, 37922u) % 32u), 36677u >> (_wgslsmith_div_u32(0u, arg_0) % 32u)) << (_wgslsmith_sub_vec3_u32(~max(vec3<u32>(arg_0, 0u, 25862u), vec3<u32>(arg_0, 4294967295u, 107167u)), vec3<u32>(func_3(Struct_1(arg_1.x, true, false, vec3<u32>(21131u, 49983u, 0u), vec3<f32>(-506f, -1386f, -438f))).x, arg_0, ~arg_0)) % vec3<u32>(32u)));
    var var_1 = Struct_3(~countOneBits(vec3<u32>(51145u, 1662u, arg_0)) | (vec3<u32>(1u, 0u, ~1u) << (vec3<u32>(var_0.a.x, ~4294967295u, 4294967295u) % vec3<u32>(32u))));
    var var_2 = -1854f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1474f, _wgslsmith_f_op_f32(f32(-1f) * -631f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1067f))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1098f, 754f)), _wgslsmith_f_op_f32(1119f * 585f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(658f, 933f)))))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-333f, -478f, -789f, 2198f)) * vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(705f, 349f, -1186f, -663f) * vec4<f32>(1181f, -939f, 725f, -1001f))))))), select(arg_1, arg_1, arg_1), ~_wgslsmith_mult_u32(var_0.a.x << (var_1.a.x % 32u), var_1.a.x & 19862u));
    return Struct_1(_wgslsmith_add_i32(-1i, i32(-1i) * -2147483647i) > u_input.a.x, true, all(var_3.b), var_1.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_3.a.yyx), var_3.a.yzw)))))));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = !any(vec2<bool>(!(arg_1 || arg_1), true & all(vec2<bool>(arg_1, arg_1))));
    let var_1 = func_4(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(arg_0.a.x, 4294967295u, 1u), 42509u, 1u, _wgslsmith_mod_u32(arg_0.a.x, 36432u)), func_2(Struct_3(abs(vec3<u32>(4294967295u, arg_2.x, 43527u))), arg_0, arg_2.x)), vec4<bool>(var_0, arg_1, !select(false, true, arg_1), select(!all(vec4<bool>(arg_1, false, arg_1, true)), any(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, var_0), true)), false)));
    var var_2 = _wgslsmith_f_op_vec3_f32(var_1.e * var_1.e);
    let var_3 = u_input.a.xz;
    return Struct_3(var_1.d);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_div_u32(4294967295u, arg_0.a.x);
    var_0 = func_2(arg_1, func_1(func_1(func_1(arg_1, true, arg_0.a.xx), true, _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_1.a.x, arg_1.a.x), _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.a.x, arg_0.a.x), vec2<u32>(arg_0.a.x, 1u)))), true, _wgslsmith_div_vec2_u32(~arg_0.a.zx, arg_1.a.yx)), ~_wgslsmith_mod_u32(~arg_0.a.x, arg_0.a.x)).x;
    var var_1 = func_1(arg_0, func_4(~4294967295u, vec4<bool>(true, true, true, true)).b, _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(func_2(arg_1, arg_0, 3887u).x, arg_1.a.x), _wgslsmith_mult_u32(~48296u, ~arg_1.a.x)), vec2<u32>(abs(arg_0.a.x), 76384u)));
    var_1 = arg_1;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(598f, -415f, -1639f, 223f) - vec4<f32>(1535f, 548f, -1454f, 187f))))), select(!vec4<bool>(all(vec2<bool>(true, true)), true, true, arg_1.a.x >= arg_0.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), all(vec4<bool>(false, false, true, false)))), true), _wgslsmith_sub_u32(15751u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(4294967295u, arg_1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, arg_0.a.x, var_1.a.x, arg_0.a.x), vec4<u32>(44120u, var_1.a.x, var_1.a.x, var_1.a.x))), var_1.a.xy)));
    return var_2;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: i32) -> vec2<bool> {
    let var_0 = Struct_3(~vec3<u32>(arg_0.c, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(42671u, 1u, 1u)), vec3<u32>(arg_0.c, arg_0.c, arg_0.c)), func_5(func_1(Struct_3(vec3<u32>(4294967295u, arg_0.c, arg_0.c)), false, vec2<u32>(0u, arg_0.c)), func_1(Struct_3(vec3<u32>(arg_0.c, arg_0.c, arg_0.c)), arg_2.x, vec2<u32>(arg_0.c, arg_0.c))).c));
    let var_1 = vec3<u32>(1u, ~arg_0.c, ~(~(~0u)));
    var var_2 = func_4(33722u >> (var_0.a.x % 32u), select(!select(!vec4<bool>(arg_0.b.x, arg_0.b.x, arg_2.x, arg_0.b.x), !vec4<bool>(false, arg_2.x, false, true), select(vec4<bool>(arg_2.x, arg_0.b.x, true, true), vec4<bool>(arg_2.x, arg_0.b.x, true, true), false)), arg_0.b, arg_0.b));
    var var_3 = func_1(var_0, arg_2.x, select(vec2<u32>(~1u, _wgslsmith_mod_u32(14474u, reverseBits(22441u))), ~vec2<u32>(arg_0.c, var_0.a.x), func_5(Struct_3(var_0.a), func_1(var_0, var_2.a, var_0.a.xx)).b.x | (arg_0.b.x && any(arg_2.zz))));
    return vec2<bool>(arg_2.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_6(func_5(func_1(Struct_3(vec3<u32>(3514u, 4294967295u, 4294967295u)), select(true, true, true), vec2<u32>(28820u, 19504u)), func_1(func_1(Struct_3(vec3<u32>(1u, 4294967295u, 4294967295u)), true, vec2<u32>(4294967295u, 50355u)), true, ~vec2<u32>(16755u, 1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(214f, -524f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(286f, 1128f)))), vec3<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(false, true)), !select(false, true, false)), u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(sign(-133f));
    let var_2 = func_1(func_1(func_1(Struct_3(vec3<u32>(1u, 1u, 1u)), true, abs(abs(vec2<u32>(34685u, 25093u)))), 9436i < (u_input.a.x << (firstLeadingBit(0u) % 32u)), vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(48787u, 19708u, 42779u), vec3<u32>(4294967295u, 4294967295u, 66349u)) | 1u)), var_0.x, _wgslsmith_sub_vec2_u32(~func_1(func_1(Struct_3(vec3<u32>(8591u, 8586u, 67785u)), true, vec2<u32>(0u, 1u)), any(vec2<bool>(false, true)), max(vec2<u32>(1u, 22090u), vec2<u32>(4294967295u, 1u))).a.xy, vec2<u32>(97564u, abs(~4294967295u))));
    var var_3 = func_1(Struct_3(select(vec3<u32>(~1u, abs(0u), 7860u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), var_2.a), !vec3<bool>(true, var_0.x, false))), var_0.x || any(!select(vec2<bool>(var_0.x, true), var_0, false)), ~_wgslsmith_mult_vec2_u32(var_2.a.xy, _wgslsmith_div_vec2_u32(vec2<u32>(var_2.a.x, 4294967295u), var_2.a.xz) << (vec2<u32>(25298u, var_2.a.x) % vec2<u32>(32u))));
    let var_4 = all(func_5(func_1(func_1(Struct_3(vec3<u32>(12274u, var_3.a.x, 23736u)), true, _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.a.x, 28282u), var_2.a.zz, var_3.a.xz)), true, func_4(~35438u, select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x), false)).d.zz), var_2).b.xxz);
    let var_5 = vec4<u32>(~(~(~0u) ^ abs(var_2.a.x)), 1u, 15647u, ~101742u);
    var_3 = func_1(var_2, false, _wgslsmith_mult_vec2_u32(var_3.a.xz, ~_wgslsmith_sub_vec2_u32(var_3.a.yy, ~var_3.a.xx)));
    var_3 = Struct_3(var_3.a ^ var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(15589i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-151f, var_1)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, 874f), vec2<f32>(var_1, var_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(869f, 426f) * vec2<f32>(var_1, var_1)))))), _wgslsmith_add_i32(u_input.a.x, -(0i ^ ~u_input.a.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1, var_1, 1418f, -732f), vec4<f32>(var_1, var_1, var_1, var_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1, var_1, -882f, var_1))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-662f, var_1, 1663f, var_1))))))), vec4<f32>(var_1, 1751f, _wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(var_1 + 1f)));
}

