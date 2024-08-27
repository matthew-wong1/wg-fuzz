struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_4(Struct_2(arg_0.a, _wgslsmith_div_vec3_i32(abs(vec3<i32>(1i, -49019i, arg_0.b.x)), -reverseBits(arg_0.b)), arg_0.c), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-652f, 1000f, -644f, 147f), vec4<f32>(355f, -613f, -416f, 1000f), vec4<bool>(true, arg_0.a.c.x, arg_0.a.a, arg_0.a.d))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-483f, -865f, 1079f, 145f) + vec4<f32>(-213f, -687f, -1094f, 828f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-350f, 1480f, -341f, -236f), vec4<f32>(582f, 334f, -301f, -1000f)))), ~(arg_0.c.xyz << ((arg_0.c.yyx ^ vec3<u32>(arg_0.a.b.x, 4294967295u, arg_0.a.b.x)) % vec3<u32>(32u))), arg_0.a));
    var var_1 = arg_0.b.yx << (max(_wgslsmith_add_vec2_u32(~(~var_0.b.c.b), arg_0.c.xy), vec2<u32>(~1u, _wgslsmith_add_u32(var_0.a.c.x, 4294967295u)) >> (_wgslsmith_mod_vec2_u32(max(arg_0.a.b, vec2<u32>(arg_0.c.x, u_input.a.x)), vec2<u32>(18830u, var_0.b.b.x)) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~arg_0.c, arg_0.c), vec4<u32>(~firstTrailingBit(23610u), u_input.a.x ^ 30201u, var_0.a.c.x, ~var_0.a.a.b.x)), firstTrailingBit(var_0.a.a.b.x), firstLeadingBit(~10316u));
    var var_3 = max(u_input.a, _wgslsmith_mod_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_sub_u32(var_2.x, 26458u), ~50596u), var_0.b.b)) & vec3<u32>(var_0.a.c.x, ~7658u | _wgslsmith_div_u32(4294967295u, 21314u >> (var_0.b.b.x % 32u)), ~(~(~37360u)));
    var_3 = select(vec3<u32>(~var_0.a.c.x, min(7718u << (_wgslsmith_mod_u32(var_0.a.c.x, var_3.x) % 32u), (var_0.a.c.x & 0u) >> (1u % 32u)), 70137u), ~abs(select(arg_0.c.ywx, abs(var_0.b.b), true)), select(!select(select(var_0.b.c.c.wzw, arg_0.a.c.yxw, var_0.b.c.c.wzy), vec3<bool>(arg_0.a.a, arg_0.a.d, var_0.a.a.c.x), !var_0.a.a.c.zyy), select(arg_0.a.c.yzw, arg_0.a.c.xyx, !var_0.b.c.c.yxw), !(_wgslsmith_clamp_u32(0u, 0u, 42089u) == ~var_3.x)));
    return var_1.x;
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_4(Struct_2(Struct_1(true && any(vec4<bool>(false, true, true, true)), ~select(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x), false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), !select(true, false, true)), -vec3<i32>(-6328i, func_3(Struct_2(Struct_1(false, vec2<u32>(35418u, 4294967295u), vec4<bool>(false, false, true, false), false), vec3<i32>(2147483647i, 12795i, -2922i), vec4<u32>(4294967295u, u_input.a.x, 21599u, u_input.a.x))), ~2147483647i), _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 32567u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 25467u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 44334u, u_input.a.x) >> (vec4<u32>(14476u, 1u, 0u, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(81616u, 0u, 6838u, u_input.a.x)))), Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1344f, -1740f, -1121f, 266f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1555f, -223f, -1000f, 471f))), true)), vec3<u32>(u_input.a.x, ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 45251u), Struct_1(true, vec2<u32>(abs(56920u), 4294967295u << (0u % 32u)), vec4<bool>(any(vec2<bool>(false, false)), any(vec2<bool>(true, true)), true, true), any(select(vec2<bool>(false, true), vec2<bool>(true, true), false)))));
    var var_1 = Struct_1(false, select(~(_wgslsmith_clamp_vec2_u32(var_0.b.b.zx, var_0.b.c.b, var_0.b.b.xy) << ((u_input.a.xz | var_0.a.a.b) % vec2<u32>(32u))), ~var_0.a.c.xy >> (~abs(var_0.a.c.ww) % vec2<u32>(32u)), var_0.a.a.c.x), vec4<bool>(true, var_0.b.c.d, false, all(select(vec3<bool>(true, false, true), var_0.a.a.c.xzy, var_0.b.c.d))), false);
    let var_2 = var_0.a.a;
    var var_3 = ~vec3<i32>(countOneBits(abs(func_3(Struct_2(var_0.b.c, var_0.a.b, vec4<u32>(var_2.b.x, u_input.a.x, var_1.b.x, u_input.a.x))))), _wgslsmith_mult_i32(82296i | var_0.a.b.x, var_0.a.b.x), 36550i ^ _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.b.x, 2147483647i), vec2<i32>(55008i, var_0.a.b.x)), 2147483647i));
    var_0 = Struct_4(var_0.a, var_0.b);
    return -_wgslsmith_mult_vec2_i32(select(select(vec2<i32>(-35795i, var_0.a.b.x), firstTrailingBit(var_0.a.b.zz), any(var_1.c.xx)), countOneBits(vec2<i32>(var_3.x, -838i)) ^ var_0.a.b.yx, var_1.d), vec2<i32>(-var_0.a.b.x, i32(-1i) * -51421i));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>) -> vec2<i32> {
    return max(func_2(), -(abs(vec2<i32>(-4378i, 1i)) | _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 0i) >> (vec2<u32>(0u, arg_0.c.b.x) % vec2<u32>(32u)), vec2<i32>(2147483647i, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1546f * 1f), -152f, -848f));
    let var_1 = -reverseBits(func_1(Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1000f, var_0.x, -541f), vec4<f32>(var_0.x, -2105f, -1402f, 871f)), firstLeadingBit(vec3<u32>(20666u, 1u, 79236u)), Struct_1(true, vec2<u32>(u_input.a.x, 9055u), vec4<bool>(true, false, true, false), false)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -757f), 160f, _wgslsmith_f_op_f32(round(666f)), _wgslsmith_f_op_f32(-var_0.x))));
    let var_2 = _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1072f))));
    let var_3 = abs(select(_wgslsmith_sub_vec4_i32(~vec4<i32>(-1i, -12079i, 43969i, var_1.x), vec4<i32>(~11923i, var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_1.x), var_1), var_1.x ^ 0i)), firstLeadingBit(vec4<i32>(-var_1.x, i32(-1i) * -55443i, func_2().x, _wgslsmith_mult_i32(var_1.x, var_1.x))), false));
    var var_4 = ~2271u;
    var_4 = 1u;
    var var_5 = Struct_2(Struct_1(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), true))), u_input.a.zy, !vec4<bool>(true, true, true, var_2 >= 1987f), all(vec4<bool>(true, true, true, true))), ~vec3<i32>(~max(52604i, var_3.x), 21869i, _wgslsmith_clamp_i32(var_1.x, var_3.x, var_3.x) << (_wgslsmith_clamp_u32(u_input.a.x, 16626u, 1u) % 32u)), vec4<u32>(4294967295u, 1u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_add_u32(0u, max(u_input.a.x, u_input.a.x))) ^ _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(17386u, u_input.a.x, 31705u, 47007u), vec4<u32>(u_input.a.x, u_input.a.x, 90270u, 42717u)), vec4<u32>(u_input.a.x, 4294967295u, 26825u, u_input.a.x)), min(vec4<u32>(u_input.a.x, u_input.a.x, 3757u, 93605u), ~vec4<u32>(u_input.a.x, u_input.a.x, 15457u, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(max(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 21632u, var_5.a.b.x, 4294967295u), vec4<u32>(1u, 0u, 7708u, var_5.c.x))), ~u_input.a.x));
}

